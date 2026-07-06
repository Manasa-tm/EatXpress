// Decorative animated "goods train" for the empty space at the top of hero
// sections — a locomotive pulling food-container cars, looping slowly along
// a dashed rail line. Sized to fit inside the hero's top padding band, so it
// never overlaps search bars, chips, or headings regardless of hero height.
// Purely visual: pointer-events disabled, hidden on small screens, respects
// prefers-reduced-motion.
export default function TrainBanner() {
  return (
    <div className="train-banner" aria-hidden="true">
      <div className="train-track" />
      <svg className="train-svg" viewBox="0 0 460 70" xmlns="http://www.w3.org/2000/svg">
        {/* Locomotive */}
        <rect x="10" y="15" width="80" height="35" rx="8" fill="none" stroke="var(--lavender-soft)" strokeWidth="2.5" />
        <rect x="18" y="3" width="30" height="15" rx="3" fill="none" stroke="var(--lavender-soft)" strokeWidth="2.5" />
        <circle cx="28" cy="58" r="7" fill="var(--lavender-soft)" />
        <circle cx="72" cy="58" r="7" fill="var(--lavender-soft)" />

        <line x1="90" y1="32" x2="108" y2="32" stroke="var(--lavender-soft)" strokeWidth="2.5" />

        {/* Container 1 */}
        <rect x="108" y="15" width="100" height="35" rx="6" fill="none" stroke="var(--lavender-soft)" strokeWidth="2.5" />
        <text x="158" y="33" fontSize="20" textAnchor="middle" dominantBaseline="central">🍕</text>
        <circle cx="126" cy="58" r="7" fill="var(--lavender-soft)" />
        <circle cx="190" cy="58" r="7" fill="var(--lavender-soft)" />

        <line x1="208" y1="32" x2="226" y2="32" stroke="var(--lavender-soft)" strokeWidth="2.5" />

        {/* Container 2 */}
        <rect x="226" y="15" width="100" height="35" rx="6" fill="none" stroke="var(--lavender-soft)" strokeWidth="2.5" />
        <text x="276" y="33" fontSize="20" textAnchor="middle" dominantBaseline="central">🍔</text>
        <circle cx="244" cy="58" r="7" fill="var(--lavender-soft)" />
        <circle cx="308" cy="58" r="7" fill="var(--lavender-soft)" />

        <line x1="326" y1="32" x2="344" y2="32" stroke="var(--lavender-soft)" strokeWidth="2.5" />

        {/* Container 3 */}
        <rect x="344" y="15" width="100" height="35" rx="6" fill="none" stroke="var(--lavender-soft)" strokeWidth="2.5" />
        <text x="394" y="33" fontSize="20" textAnchor="middle" dominantBaseline="central">🥤</text>
        <circle cx="362" cy="58" r="7" fill="var(--lavender-soft)" />
        <circle cx="426" cy="58" r="7" fill="var(--lavender-soft)" />
      </svg>
    </div>
  );
}