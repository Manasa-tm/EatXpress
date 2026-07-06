import TrainBanner from '../components/TrainBanner';

const SECTIONS = [
  {
    icon: '📱',
    title: 'Using the platform',
    text: 'EatXpress connects you with restaurants across Bengaluru. By creating an account and placing orders, you agree to provide accurate information and use the platform only for genuine orders.',
  },
  {
    icon: '💳',
    title: 'Orders and pricing',
    text: 'Menu prices, availability, and delivery times are set by individual restaurant partners and may change without notice. We display the most current information we have at the time you order.',
  },
  {
    icon: '👤',
    title: 'Account responsibility',
    text: "You're responsible for keeping your login credentials secure. Let us know right away through the Help Center if you suspect unauthorized access to your account.",
  },
  {
    icon: '🔄',
    title: 'Changes to these terms',
    text: 'We may update these terms as the platform evolves. Continued use of EatXpress after changes means you accept the updated terms.',
  },
];

export default function Terms() {
  return (
    <>
      <section className="hero" style={{ paddingBottom: 40 }}>
        <TrainBanner />
        <span className="hero-eyebrow">Legal</span>
        <h1>Terms of <em>Service</em></h1>
        <p>The basics of using EatXpress — please give this a quick read.</p>
      </section>

      <div className="white-area">
        <section className="container" style={{ padding: '40px 24px 20px', maxWidth: 780 }}>
          <div style={{ textAlign: 'center', marginBottom: 28 }}>
            <span className="hero-eyebrow" style={{ background: 'var(--lavender-pale)', color: 'var(--lavender-dim)' }}>
              Effective · 2026
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
            <h3>Questions about these terms?</h3>
            <p>We're happy to walk through anything that's unclear.</p>
            <a href="mailto:support@eatxpress.example" className="add-btn" style={{ display: 'inline-block', textDecoration: 'none', marginTop: 12 }}>
              Contact us
            </a>
          </div>
        </section>
      </div>
    </>
  );
}