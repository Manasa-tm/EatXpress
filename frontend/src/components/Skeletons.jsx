export function RestaurantCardSkeleton() {
  return (
    <div className="restaurant-card skeleton-card">
      <div className="skeleton-img skeleton-shimmer" />
      <div className="skeleton-line skeleton-shimmer" style={{ width: '75%' }} />
      <div className="skeleton-line skeleton-line-sm skeleton-shimmer" style={{ width: '90%' }} />
      <div className="skeleton-line skeleton-line-sm skeleton-shimmer" style={{ width: '45%' }} />
      <div className="skeleton-tag skeleton-shimmer" />
    </div>
  );
}

export function MenuCardSkeleton() {
  return (
    <div className="card skeleton-card">
      <div className="skeleton-img skeleton-shimmer" />
      <div className="skeleton-line skeleton-shimmer" style={{ width: '65%', margin: '10px auto 8px' }} />
      <div className="skeleton-line skeleton-line-sm skeleton-shimmer" style={{ margin: '0 auto 6px' }} />
      <div className="skeleton-line skeleton-line-sm skeleton-shimmer" style={{ width: '40%', margin: '0 auto 12px' }} />
      <div className="skeleton-tag skeleton-shimmer" style={{ margin: '0 auto' }} />
    </div>
  );
}