import { useEffect, useState } from 'react';
import { Link, useLocation } from 'react-router-dom';

const STAGES = ['Order placed', 'Preparing', 'On the way', 'Delivered'];

export default function OrderTracking() {
  const { state } = useLocation();

  // Fall back to reasonable demo values if this page is opened directly
  // (e.g. a refresh) without the order summary passed through navigation.
  const eta = state?.eta ?? 28;
  const itemCount = state?.itemCount ?? 1;
  const total = state?.total ?? 0;

  const [secondsLeft, setSecondsLeft] = useState(eta * 60);

  useEffect(() => {
    if (secondsLeft <= 0) return undefined;
    const timer = setInterval(() => {
      setSecondsLeft((s) => Math.max(0, s - 1));
    }, 1000);
    return () => clearInterval(timer);
  }, [secondsLeft > 0]);

  const totalSeconds = eta * 60;
  const elapsed = totalSeconds - secondsLeft;
  const progress = Math.min(1, elapsed / totalSeconds);

  const delivered = secondsLeft <= 0;
  const stageIndex = delivered
    ? 3
    : progress < 0.15
    ? 0
    : progress < 0.45
    ? 1
    : 2;

  const mins = Math.floor(secondsLeft / 60);
  const secs = secondsLeft % 60;

  return (
    <>
      <section className="hero" style={{ paddingBottom: 40 }}>
        <span className="hero-eyebrow">Order status</span>
        <h1>{delivered ? 'Delivered!' : <>Arriving in <em>{mins}:{secs.toString().padStart(2, '0')}</em></>}</h1>
        <p>{delivered ? 'Enjoy your meal!' : `${itemCount} item${itemCount > 1 ? 's' : ''} · ₹${total} · on its way to you`}</p>
      </section>

      <div className="white-area" style={{ maxWidth: 780, margin: '0 auto', padding: '30px 24px 60px' }}>
        <div className="promo-card" style={{ marginBottom: 24 }}>
          <div className="order-steps">
            {STAGES.map((stage, idx) => (
              <div key={stage} className={`order-step ${idx <= stageIndex ? 'order-step-done' : ''}`}>
                <span className="order-step-dot">{idx < stageIndex || delivered && idx === 3 ? '✓' : idx + 1}</span>
                <span className="order-step-label">{stage}</span>
              </div>
            ))}
          </div>
        </div>

        <div className="promo-card">
          <span className="promo-label">Live tracking</span>
          <div className="tracking-map">
            <svg viewBox="0 0 400 220" className="tracking-map-svg">
              <path id="deliveryRoute" d="M 40 180 C 120 40, 280 200, 360 40" />
              <circle cx="40" cy="180" r="8" fill="var(--lavender-dim)" />
              <text x="40" y="205" textAnchor="middle" fontSize="12" fill="var(--muted)">Restaurant</text>
              <circle cx="360" cy="40" r="8" fill="var(--green)" />
              <text x="360" y="26" textAnchor="middle" fontSize="12" fill="var(--muted)">You</text>
            </svg>
            {!delivered && (
              <div className="delivery-rider" aria-hidden="true">🛵</div>
            )}
            {delivered && <div className="delivery-rider delivery-rider-arrived" aria-hidden="true">📦</div>}
          </div>
          <p className="promo-sub" style={{ textAlign: 'center', marginTop: 8 }}>
            {delivered ? 'Your delivery partner has arrived.' : 'Your delivery partner is on the way.'}
          </p>
        </div>

        <div style={{ textAlign: 'center', marginTop: 24 }}>
          <Link to="/" style={{ color: 'var(--lavender-dim)', fontWeight: 600 }}>← Back to home</Link>
        </div>
      </div>
    </>
  );
}