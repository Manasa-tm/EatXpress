import { useEffect, useMemo, useRef, useState } from 'react';
import { Link } from 'react-router-dom';
import { menuApi } from '../api/api';
import TrainBanner from '../components/TrainBanner';

// A handful of cuisine tags pulled from the seed data, used to build filter chips.
const CUISINE_TAGS = [
  'All', 'Burger', 'Pizza', 'Biryani', 'Chinese', 'South Indian',
  'Desserts', 'Beverages', 'Fast Food', 'BBQ',
];

// Inline SVG shown when a restaurant's image_url 404s, so the DB is always
// the source of truth for what image shows — never a random stock photo.
const FALLBACK_IMG =
  "data:image/svg+xml;utf8," +
  encodeURIComponent(
    `<svg xmlns='http://www.w3.org/2000/svg' width='400' height='300'>
      <rect width='100%' height='100%' fill='#392A5C'/>
      <text x='50%' y='52%' font-size='40' text-anchor='middle' dominant-baseline='middle'>🍽️</text>
    </svg>`
  );

function handleImgError(e) {
  e.currentTarget.onerror = null;
  e.currentTarget.src = FALLBACK_IMG;
}

// Icons pinned along the edges of the white area — large, in the margins,
// never overlapping the card grid.
const EDGE_ICONS = [
  { icon: '🍕', top: '2%',  left: '1%',  size: '4.8rem', delay: '0s',   duration: '5s' },
  { icon: '🍔', top: '2%',  left: '93%', size: '5rem',   delay: '1.2s', duration: '5.6s' },
  { icon: '🥤', top: '30%', left: '1.5%', size: '4rem',  delay: '2.4s', duration: '4.8s' },
  { icon: '🛵', top: '33%', left: '92%', size: '4.4rem', delay: '0.6s', duration: '6s' },
  { icon: '🍩', top: '66%', left: '1.5%', size: '4.2rem', delay: '3s',  duration: '5.2s' },
  { icon: '🍜', top: '68%', left: '91%', size: '4.4rem', delay: '1.8s', duration: '5.4s' },
  { icon: '🍦', top: '92%', left: '3%',  size: '4.2rem', delay: '0.9s', duration: '4.6s' },
  { icon: '🌮', top: '92%', left: '89%', size: '4rem',   delay: '2.1s', duration: '5.8s' },
];

// Smaller icons scattered through the interior — pure background layer,
// sit BEHIND the card grid (z-index below it) so they never shift or cover
// any card; they only show up where they land in the natural gaps between
// cards. The grid itself is never touched, so row layout stays exact.
const INTERIOR_ICONS = [
  { icon: '🧋', top: '18%', left: '35%', size: '2.4rem', delay: '1.5s', duration: '5s' },
  { icon: '🍟', top: '46%', left: '58%', size: '2.4rem', delay: '2.7s', duration: '5.4s' },
  { icon: '🍪', top: '74%', left: '44%', size: '2.2rem', delay: '0.3s', duration: '4.9s' },
  { icon: '🍰', top: '30%', left: '76%', size: '2.2rem', delay: '3.4s', duration: '5.1s' },
  { icon: '🥨', top: '58%', left: '20%', size: '2.2rem', delay: '1.1s', duration: '4.7s' },
];

// A little "goods train" made of food-container wagons, chugging along the
// bottom of the hero — fills the otherwise-empty banner space with a bit
// of brand personality. Purely decorative, looped seamlessly via CSS.
const TRAIN_CARS = [
  { type: 'engine', className: 'engine' },
  { type: 'wagon', className: 'wagon-1', icon: '🍕' },
  { type: 'wagon', className: 'wagon-2', icon: '🍔' },
  { type: 'wagon', className: 'wagon-3', icon: '🥤' },
  { type: 'wagon', className: 'wagon-1', icon: '🍩' },
];

export default function Home() {
  const [restaurants, setRestaurants] = useState([]);
  const [loading, setLoading] = useState(true);
  const [query, setQuery] = useState('');
  const [activeTag, setActiveTag] = useState('All');

  const whiteAreaRef = useRef(null);
  const iconRefs = useRef([]);

  useEffect(() => {
    menuApi
      .getRestaurants()
      .then(setRestaurants)
      .catch((err) => console.error(err))
      .finally(() => setLoading(false));
  }, []);

  // Cursor-avoidance: icons push away from the mouse and ease back when it moves off.
  useEffect(() => {
    const container = whiteAreaRef.current;
    if (!container) return;

    const RADIUS = 190;
    const MAX_PUSH = 100;

    function handleMove(e) {
      iconRefs.current.forEach((el) => {
        if (!el) return;
        const rect = el.getBoundingClientRect();
        const cx = rect.left + rect.width / 2;
        const cy = rect.top + rect.height / 2;
        const dx = cx - e.clientX;
        const dy = cy - e.clientY;
        const dist = Math.hypot(dx, dy) || 1;

        if (dist < RADIUS) {
          const strength = (RADIUS - dist) / RADIUS;
          const push = strength * MAX_PUSH;
          el.style.transform = `translate(${(dx / dist) * push}px, ${(dy / dist) * push}px)`;
        } else {
          el.style.transform = 'translate(0px, 0px)';
        }
      });
    }

    function handleLeave() {
      iconRefs.current.forEach((el) => {
        if (el) el.style.transform = 'translate(0px, 0px)';
      });
    }

    container.addEventListener('mousemove', handleMove);
    container.addEventListener('mouseleave', handleLeave);
    return () => {
      container.removeEventListener('mousemove', handleMove);
      container.removeEventListener('mouseleave', handleLeave);
    };
  }, []);

  const fastest = useMemo(() => {
    if (restaurants.length === 0) return null;
    return [...restaurants].sort((a, b) => a.eta_mins - b.eta_mins)[0];
  }, [restaurants]);

  const topRated = useMemo(() => {
    if (restaurants.length === 0) return null;
    return [...restaurants].sort((a, b) => b.rating - a.rating)[0];
  }, [restaurants]);

  const filtered = restaurants.filter((r) => {
    const matchesQuery =
      r.name.toLowerCase().includes(query.toLowerCase()) ||
      r.cuisine.toLowerCase().includes(query.toLowerCase());
    const matchesTag = activeTag === 'All' || r.cuisine.toLowerCase().includes(activeTag.toLowerCase());
    return matchesQuery && matchesTag;
  });

  const allIcons = [...EDGE_ICONS, ...INTERIOR_ICONS];

  return (
    <>
      <section className="hero">
        <TrainBanner />
        <span className="hero-eyebrow">Bengaluru · Delivering now</span>
        <h1>Cravings, <em>sorted.</em></h1>
        <p>Search {restaurants.length || '20+'} restaurants, filter by what you're craving, order in a tap.</p>

        <div className="search-bar">
          <input
            type="text"
            placeholder="Search restaurants or cuisines…"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            aria-label="Search restaurants or cuisines"
          />
        </div>

        <div className="chip-row">
          {CUISINE_TAGS.map((tag) => (
            <button
              key={tag}
              className={`chip ${activeTag === tag ? 'chip-active' : ''}`}
              onClick={() => setActiveTag(tag)}
            >
              {tag}
            </button>
          ))}
        </div>

        {fastest && (
          <p className="fastest-tag">
            ⚡ Fastest right now: <strong>{fastest.name}</strong> · {fastest.eta_mins} mins
          </p>
        )}

      </section>

      <div className="white-area" ref={whiteAreaRef}>
        <div className="floating-icons" aria-hidden="true">
          {allIcons.map((item, idx) => (
            <span
              key={idx}
              ref={(el) => (iconRefs.current[idx] = el)}
              className="floating-icon"
              style={{ top: item.top, left: item.left }}
            >
              <span
                className="icon-bob"
                style={{
                  fontSize: item.size,
                  animationDelay: item.delay,
                  animationDuration: item.duration,
                }}
              >
                {item.icon}
              </span>
            </span>
          ))}
        </div>

        {!loading && restaurants.length > 0 && (
          <div className="promo-strip">
            <div className="promo-card">
              <span className="promo-label">On the map</span>
              <div className="promo-value">{restaurants.length} restaurants</div>
              <p className="promo-sub">Live in Bengaluru right now</p>
            </div>
            {fastest && (
              <div className="promo-card">
                <span className="promo-label">Fastest delivery</span>
                <div className="promo-value">{fastest.eta_mins} mins</div>
                <p className="promo-sub">{fastest.name}</p>
              </div>
            )}
            {topRated && (
              <div className="promo-card">
                <span className="promo-label">Top rated</span>
                <div className="promo-value">⭐ {topRated.rating}</div>
                <p className="promo-sub">{topRated.name}</p>
              </div>
            )}
          </div>
        )}

        {loading ? (
          <p style={{ textAlign: 'center', color: 'var(--muted)', padding: '40px 0' }}>Loading restaurants…</p>
        ) : filtered.length === 0 ? (
          <p style={{ textAlign: 'center', color: 'var(--muted)', padding: '40px 0' }}>
            No restaurants match "{query || activeTag}". Try a different search.
          </p>
        ) : (
          <section className="restaurant-container">
            {filtered.map((r) => (
              <Link to={`/restaurant/${r.slug}`} key={r.id} className="restaurant-card">
                <img src={r.image_url} alt={r.name} className="imagelogo" onError={handleImgError} />
                <h3>{r.name}</h3>
                <p>{r.cuisine}</p>
                <p>⭐ {r.rating} | ⏱ {r.eta_mins} mins</p>
                <span className="hover-tag">View Menu</span>
              </Link>
            ))}
          </section>
        )}
      </div>
    </>
  );
}