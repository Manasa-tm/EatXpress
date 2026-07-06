import TrainBanner from '../components/TrainBanner';

const TOPICS = ['Orders', 'Payments', 'Account', 'Delivery', 'Restaurants'];

const FAQS = [
  {
    icon: '📦',
    q: 'Where is my order?',
    a: "Once you place an order, the restaurant's estimated delivery time is shown on the menu page. If it's running significantly late, reach out to the restaurant directly for the latest update.",
  },
  {
    icon: '🛒',
    q: 'How do I change items in my cart?',
    a: 'Open the Cart page from the top navigation. You can adjust quantity with the +/- controls or remove an item entirely.',
  },
  {
    icon: '🔑',
    q: 'I forgot my password. What do I do?',
    a: "Password resets aren't available yet in this version of EatXpress — for now, reach out through the contact options below and we'll help you regain access.",
  },
  {
    icon: '🍽️',
    q: 'Can I order from multiple restaurants at once?',
    a: "Right now, each cart is tied to a single restaurant's menu. Complete your current order before starting a new one from a different restaurant.",
  },
  {
    icon: '🤝',
    q: 'How do I add my restaurant to EatXpress?',
    a: "We're always looking to onboard new partners — send us a note through the contact options below and our team will follow up.",
  },
];

const CONTACT_OPTIONS = [
  { icon: '📧', title: 'Email support', detail: 'support@eatxpress.example', href: 'mailto:support@eatxpress.example', active: true },
  { icon: '💬', title: 'Live chat', detail: 'Coming soon', href: null, active: false },
  { icon: '📞', title: 'Call us', detail: 'Coming soon', href: null, active: false },
];

export default function HelpCenter() {
  return (
    <>
      <section className="hero" style={{ paddingBottom: 40 }}>
        <TrainBanner />
        <span className="hero-eyebrow">Support</span>
        <h1>Help <em>Center</em></h1>
        <p>Answers to common questions, and how to reach us if you need more.</p>

        <div className="chip-row">
          {TOPICS.map((t) => (
            <span key={t} className="chip">{t}</span>
          ))}
        </div>
      </section>

      <div className="white-area">
        <section className="container" style={{ padding: '40px 24px 10px', maxWidth: 780 }}>
          <div style={{ display: 'grid', gap: 20 }}>
            {FAQS.map((item) => (
              <div className="promo-card faq-card" key={item.q}>
                <div className="icon-badge icon-badge-sm">{item.icon}</div>
                <div>
                  <span className="promo-label">{item.q}</span>
                  <p style={{ color: 'var(--muted)', marginTop: 10, lineHeight: 1.6 }}>{item.a}</p>
                </div>
              </div>
            ))}
          </div>
        </section>

        <section className="container" style={{ padding: '30px 24px 70px', maxWidth: 780 }}>
          <h2 style={{ textAlign: 'center', fontSize: '1.4rem', marginBottom: 20, color: 'var(--bg-deep)' }}>
            Still stuck? Reach out
          </h2>
          <div className="icon-card-grid" style={{ gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))' }}>
            {CONTACT_OPTIONS.map((opt) => (
              <div className="promo-card icon-card" key={opt.title} style={{ opacity: opt.active ? 1 : 0.6 }}>
                <div className="icon-badge icon-badge-green">{opt.icon}</div>
                <h3 style={{ fontSize: '1rem', margin: '4px 0 6px', color: 'var(--bg-deep)' }}>{opt.title}</h3>
                {opt.active ? (
                  <a href={opt.href} style={{ color: 'var(--lavender-dim)', fontWeight: 600, fontSize: '0.88rem' }}>
                    {opt.detail}
                  </a>
                ) : (
                  <p style={{ color: 'var(--muted)', fontSize: '0.88rem' }}>{opt.detail}</p>
                )}
              </div>
            ))}
          </div>
        </section>
      </div>
    </>
  );
}