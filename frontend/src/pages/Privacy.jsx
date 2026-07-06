import TrainBanner from '../components/TrainBanner';

const SECTIONS = [
  {
    icon: '📋',
    title: 'Information we collect',
    text: "When you create an account, we collect your name, email address, and order history so we can process orders and keep your cart in sync across sessions. We never collect more than we need to run the service.",
  },
  {
    icon: '🔍',
    title: 'How we use it',
    text: "Your information is used to process orders, show you relevant restaurants, and remember your cart between visits. We don't sell your data to advertisers or third parties.",
  },
  {
    icon: '🔒',
    title: 'Data security',
    text: 'Passwords are stored using industry-standard hashing, never in plain text. Your session is protected with a signed token that expires automatically after 7 days.',
  },
  {
    icon: '⚙️',
    title: 'Your choices',
    text: "You can log out at any time to end your session, and you're welcome to reach out through our Help Center if you'd like your account data reviewed or removed.",
  },
];

export default function Privacy() {
  return (
    <>
      <section className="hero" style={{ paddingBottom: 40 }}>
        <TrainBanner />
        <span className="hero-eyebrow">Legal</span>
        <h1>Privacy <em>Policy</em></h1>
        <p>How we collect, use, and protect your information on EatXpress.</p>
      </section>

      <div className="white-area">
        <section className="container" style={{ padding: '40px 24px 20px', maxWidth: 780 }}>
          <div style={{ textAlign: 'center', marginBottom: 28 }}>
            <span className="hero-eyebrow" style={{ background: 'var(--lavender-pale)', color: 'var(--lavender-dim)' }}>
              Last reviewed · 2026
            </span>
          </div>
          <div className="icon-card-grid" style={{ gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))' }}>
            {SECTIONS.map((item) => (
              <div className="promo-card icon-card" key={item.title}>
                <div className="icon-badge">{item.icon}</div>
                <h3 style={{ fontSize: '1.05rem', margin: '4px 0 8px', color: 'var(--bg-deep)' }}>{item.title}</h3>
                <p style={{ color: 'var(--muted)', lineHeight: 1.6, fontSize: '0.92rem' }}>{item.text}</p>
              </div>
            ))}
          </div>
        </section>

        <section className="container" style={{ padding: '20px 24px 70px', maxWidth: 700 }}>
          <div className="cta-band">
            <h3>Have questions about your data?</h3>
            <p>Our Help Center has answers, or you can reach out directly.</p>
            <a href="mailto:support@eatxpress.example" className="add-btn" style={{ display: 'inline-block', textDecoration: 'none', marginTop: 12 }}>
              Contact us
            </a>
          </div>
        </section>
      </div>
    </>
  );
}