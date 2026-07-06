import { Link, useNavigate } from 'react-router-dom';
import { useCart } from '../context/CartContext';
import { useAuth } from '../context/AuthContext';

export default function Cart() {
  const { user } = useAuth();
  const { items, updateQuantity, removeItem, totalPrice } = useCart();
  const navigate = useNavigate();

  if (!user) {
    return (
      <div className="empty-state">
        <p>Log in to view your cart.</p>
        <Link to="/login" style={{ color: 'var(--lavender-dim)', fontWeight: 600 }}>Go to login →</Link>
      </div>
    );
  }

  if (items.length === 0) {
    return (
      <div className="empty-state">
        <p>Your cart is empty.</p>
        <Link to="/" style={{ color: 'var(--lavender-dim)', fontWeight: 600 }}>Browse restaurants →</Link>
      </div>
    );
  }

  return (
    <div className="cart-page">
      <h1>Your Cart</h1>
      {items.map((item) => (
        <div className="cart-item" key={item.id}>
          <img src={item.image_url} alt={item.name} />
          <div className="cart-details">
            <h3>{item.name}</h3>
            <p>₹{item.price} × {item.quantity} = ₹{item.price * item.quantity}</p>
            <div className="qty-control" style={{ display: 'inline-flex', marginTop: 8 }}>
              <button onClick={() => updateQuantity(item.menu_item_id, item.quantity - 1)}>−</button>
              <span>{item.quantity}</span>
              <button onClick={() => updateQuantity(item.menu_item_id, item.quantity + 1)}>+</button>
            </div>
          </div>
          <button className="remove-btn" onClick={() => removeItem(item.menu_item_id)}>Remove</button>
        </div>
      ))}
      <div className="total">Total: ₹{totalPrice}</div>
      <button
        className="submit-btn"
        style={{ marginTop: 20 }}
        onClick={() => navigate('/payment')}
      >
        Place Order
      </button>
    </div>
  );
}