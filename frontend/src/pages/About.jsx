import { Link } from 'react-router-dom';
import TrainBanner from '../components/TrainBanner';

const STATS = [
  { icon: '🍽️', value: '23', label: 'Restaurant partners' },
  { icon: '🍜', value: '500+', label: 'Dishes to explore' },
  { icon: '⚡', value: '18 min', label: 'Fastest delivery' },
  { icon: '⭐', value: '4.6', label: 'Average rating' },
];

const WHAT_WE_DO = [
  {
    icon: '🍽️',
    title: 'What we do',
    text: "EatXpress connects you with the best local kitchens and national favorites across Bengaluru, from biryani institutions to your go-to coffee run. We handle the ordering and delivery so you can focus on the important part — deciding what you're craving.",
  },
  {
    icon: '⚡',
    title: 'Why EatXpress',
    text: "Fast ETAs, honest ratings, and a menu experience that's actually easy to search and filter. No clutter, no guesswork — just food, sorted.",
  },
  {
    icon: '🤝',
    title: 'For restaurant partners',
    text: "We're always looking to bring more kitchens onto the platform. If you run a restaurant and want to reach more hungry customers, we'd love to hear from you.",
  },
];

const PEOPLE = [
  {
    icon: '👨‍🍳',
    title: 'Our kitchen partners',
    text: 'Every dish on EatXpress comes from a real kitchen we trust — from family-run biryani institutions to national chains, each partner is vetted for quality and consistency.',
  },
  {
    icon: '🛵',
    title: 'Our delivery partners',
    text: "The people behind every 'arriving in 18 mins' — trained, tracked, and committed to getting your order to you hot and on time.",
  },
];

const JOURNEY = [
  { year: '2023', text: 'The idea takes shape: ordering food nearby shouldn\'t take longer than eating it.' },
  { year: '2024', text: 'First kitchens onboarded, first orders delivered across Bengaluru.' },
  { year: '2025', text: 'Grew to dozens of restaurant partners spanning biryani, pizza, cafes, and desserts.' },
  { year: '2026', text: 'Today — sorting cravings for a growing community, one order at a time.' },
];

export default function About() {
  return (
    <>
      <section className="hero" style={{ paddingBottom: 40 }}>
        <TrainBanner />
        <span className="hero-eyebrow">Our story</span>
        <h1>Built for <em>real cravings.</em></h1>
        <p>EatXpress started as a simple idea: finding great food nearby shouldn't take longer than eating it.</p>
      </section>

      <div className="white-area">
        <div className="promo-strip" style={{ marginTop: -34 }}>
          {STATS.map((s) => (
            <div className="promo-card" key={s.label}>
              <div className="icon-badge">{s.icon}</div>
              <div className="promo-value">{s.value}</div>
              <p className="promo-sub">{s.label}</p>
            </div>
          ))}
        </div>

        <section className="quote-band">
          <p>"We got tired of scrolling ten apps just to find dinner — so we built the one that sorts it for you."</p>
        </section>

        <section className="container" style={{ padding: '50px 24px 10px', maxWidth: 900 }}>
          <div className="icon-card-grid">
            {WHAT_WE_DO.map((item) => (
              <div className="promo-card icon-card" key={item.title}>
                <div className="icon-badge">{item.icon}</div>
                <h3 style={{ fontSize: '1.1rem', margin: '4px 0 8px', color: 'var(--bg-deep)' }}>{item.title}</h3>
                <p style={{ color: 'var(--muted)', lineHeight: 1.6, fontSize: '0.92rem' }}>{item.text}</p>
              </div>
            ))}
          </div>
        </section>

        <section className="container" style={{ padding: '40px 24px 10px', maxWidth: 900 }}>
          <h2 style={{ textAlign: 'center', fontSize: '1.6rem', marginBottom: 28, color: 'var(--bg-deep)' }}>
            The people behind every order
          </h2>
          <div className="icon-card-grid" style={{ gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))' }}>
            {PEOPLE.map((item) => (
              <div className="promo-card icon-card" key={item.title}>
                <div className="icon-badge icon-badge-green">{item.icon}</div>
                <h3 style={{ fontSize: '1.1rem', margin: '4px 0 8px', color: 'var(--bg-deep)' }}>{item.title}</h3>
                <p style={{ color: 'var(--muted)', lineHeight: 1.6, fontSize: '0.92rem' }}>{item.text}</p>
              </div>
            ))}
          </div>
        </section>

        <section className="container" style={{ padding: '50px 24px 10px', maxWidth: 700 }}>
          <h2 style={{ textAlign: 'center', fontSize: '1.6rem', marginBottom: 32, color: 'var(--bg-deep)' }}>
            Our journey
          </h2>
          <div className="timeline">
            {JOURNEY.map((item) => (
              <div className="timeline-item" key={item.year}>
                <span className="timeline-dot" />
                <span className="timeline-year">{item.year}</span>
                <p className="timeline-text">{item.text}</p>
              </div>
            ))}
          </div>
        </section>

        <section className="container" style={{ padding: '50px 24px 70px', maxWidth: 700 }}>
          <div className="cta-band">
            <h3>Hungry already?</h3>
            <p>Browse restaurants near you and get your cravings sorted in a tap.</p>
            <Link to="/" className="add-btn" style={{ display: 'inline-block', textDecoration: 'none', marginTop: 12 }}>
              Browse restaurants
            </Link>
          </div>
        </section>
      </div>
    </>
  );
}