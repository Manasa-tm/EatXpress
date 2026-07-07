import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { menuApi } from '../api/api';
import MenuCard from '../components/MenuCard';
import { MenuCardSkeleton } from '../components/Skeletons';

export default function RestaurantMenu() {
  const { slug } = useParams();
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState('');

  useEffect(() => {
    setLoading(true);
    menuApi
      .getMenu(slug)
      .then(setData)
      .catch((err) => setError(err.message))
      .finally(() => setLoading(false));
  }, [slug]);

  if (loading) {
    return (
      <>
        <section className="hero" style={{ paddingBottom: 10 }} />
        <div className="menu">
          {Array.from({ length: 8 }).map((_, i) => (
            <MenuCardSkeleton key={i} />
          ))}
        </div>
      </>
    );
  }

  if (error) return <p style={{ textAlign: 'center', padding: '60px', color: 'var(--coral)' }}>{error}</p>;

  return (
    <>
      <section className="hero" style={{ paddingBottom: 10 }}>
        <h1>{data.restaurant.name}</h1>
        <p>{data.restaurant.cuisine}</p>
      </section>
      <div className="menu">
        {data.items.map((item) => (
          <MenuCard item={item} key={item.id} />
        ))}
      </div>
    </>
  );
}