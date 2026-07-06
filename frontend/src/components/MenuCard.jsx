import { useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { useCart } from '../context/CartContext';

// Inline SVG shown when a menu item's image_url 404s, so the DB is always
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

export default function MenuCard({ item }) {
  const { user } = useAuth();
  const { items, addItem, updateQuantity } = useCart();
  const navigate = useNavigate();

  const cartLine = items.find((i) => i.menu_item_id === item.id);
  const quantity = cartLine ? cartLine.quantity : 0;

  function handleAdd() {
    if (!user) {
      navigate('/login');
      return;
    }
    addItem(item, 1);
  }

  return (
    <div className="card">
      <img src={item.image_url} alt={item.name} onError={handleImgError} />
      <h2>{item.name}</h2>
      <p>{item.description}</p>
      <span className="price">₹{item.price}</span>

      {quantity === 0 ? (
        <button className="add-btn" onClick={handleAdd}>Add to Cart</button>
      ) : (
        <div className="qty-control">
          <button onClick={() => updateQuantity(item.id, quantity - 1)}>−</button>
          <span>{quantity}</span>
          <button onClick={() => updateQuantity(item.id, quantity + 1)}>+</button>
        </div>
      )}
    </div>
  );
}