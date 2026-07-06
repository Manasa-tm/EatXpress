import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { useCart } from '../context/CartContext';
import { cartApi } from '../api/api';

function formatCardNumber(value) {
  const digits = value.replace(/\D/g, '').slice(0, 16);
  return digits.replace(/(.{4})/g, '$1 ').trim();
}

function formatExpiry(value) {
  const digits = value.replace(/\D/g, '').slice(0, 4);
  if (digits.length <= 2) return digits;
  return `${digits.slice(0, 2)}/${digits.slice(2)}`;
}

export default function Payment() {
  const { items, totalPrice, refreshCart } = useCart();
  const navigate = useNavigate();

  const [name, setName] = useState('');
  const [cardNumber, setCardNumber] = useState('');
  const [expiry, setExpiry] = useState('');
  const [cvv, setCvv] = useState('');
  const [error, setError] = useState('');
  const [processing, setProcessing] = useState(false);

  if (items.length === 0 && !processing) {
    return (
      <div className="empty-state">
        <p>There's nothing to pay for yet.</p>
        <Link to="/" style={{ color: 'var(--lavender-dim)', fontWeight: 600 }}>Browse restaurants →</Link>
      </div>
    );
  }

  async function handlePay(e) {
    e.preventDefault();
    setError('');

    const digitsOnly = cardNumber.replace(/\s/g, '');
    if (!name.trim()) return setError('Enter the name on the card.');
    if (digitsOnly.length !== 16) return setError('Card number must be 16 digits.');
    if (!/^\d{2}\/\d{2}$/.test(expiry)) return setError('Expiry must be in MM/YY format.');
    if (!/^\d{3,4}$/.test(cvv)) return setError('CVV must be 3 or 4 digits.');

    setProcessing(true);

    // Simulated payment processing — this is a demo checkout, no real
    // payment gateway is involved. Clears the cart, then hands off to
    // the order tracking page with a randomized ETA.
    await new Promise((resolve) => setTimeout(resolve, 1600));

    try {
      const orderSummary = {
        itemCount: items.reduce((sum, i) => sum + i.quantity, 0),
        total: totalPrice,
        eta: Math.floor(Math.random() * 16) + 22, // 22–37 mins
      };

      await Promise.all(items.map((i) => cartApi.removeItem(i.menu_item_id)));
      await refreshCart();

      navigate('/order-tracking', { state: orderSummary });
    } catch (err) {
      setProcessing(false);
      setError('Something went wrong placing your order. Please try again.');
    }
  }

  return (
    <div className="auth-wrap">
      <div className="auth-card" style={{ maxWidth: 440 }}>
        <h2>Payment</h2>
        <p className="sub">This is a demo checkout — enter any dummy card details.</p>

        {error && <div className="form-error">{error}</div>}

        <div
          style={{
            background: 'var(--lavender-pale)',
            borderRadius: 10,
            padding: '12px 16px',
            marginBottom: 20,
            display: 'flex',
            justifyContent: 'space-between',
            fontSize: '0.9rem',
            color: 'var(--ink)',
          }}
        >
          <span>{items.reduce((sum, i) => sum + i.quantity, 0)} items</span>
          <strong>₹{totalPrice}</strong>
        </div>

        <form onSubmit={handlePay}>
          <div className="field">
            <label htmlFor="name">Name on card</label>
            <input id="name" type="text" value={name} onChange={(e) => setName(e.target.value)} disabled={processing} required />
          </div>
          <div className="field">
            <label htmlFor="card">Card number</label>
            <input
              id="card"
              type="text"
              inputMode="numeric"
              placeholder="1234 5678 9012 3456"
              value={cardNumber}
              onChange={(e) => setCardNumber(formatCardNumber(e.target.value))}
              disabled={processing}
              required
            />
          </div>
          <div style={{ display: 'flex', gap: 12 }}>
            <div className="field" style={{ flex: 1 }}>
              <label htmlFor="expiry">Expiry</label>
              <input
                id="expiry"
                type="text"
                placeholder="MM/YY"
                value={expiry}
                onChange={(e) => setExpiry(formatExpiry(e.target.value))}
                disabled={processing}
                required
              />
            </div>
            <div className="field" style={{ flex: 1 }}>
              <label htmlFor="cvv">CVV</label>
              <input
                id="cvv"
                type="password"
                inputMode="numeric"
                placeholder="123"
                value={cvv}
                onChange={(e) => setCvv(e.target.value.replace(/\D/g, '').slice(0, 4))}
                disabled={processing}
                required
              />
            </div>
          </div>

          <button className="submit-btn" type="submit" disabled={processing}>
            {processing ? 'Processing payment…' : `Pay ₹${totalPrice}`}
          </button>
        </form>
      </div>
    </div>
  );
}