import { Link, useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { useCart } from '../context/CartContext';

export default function Navbar() {
  const { user, logout } = useAuth();
  const { totalCount } = useCart();
  const navigate = useNavigate();

  function handleLogout() {
    logout();
    navigate('/');
  }

  return (
    <nav className="navbar">
      <div className="navbar-inner">
        <Link to="/" className="logo">Eat<span>Xpress</span></Link>
        <ul className="nav-links">
          <li><Link to="/">Home</Link></li>
          <li>
            <Link to="/cart">Cart {totalCount > 0 && <span className="cart-badge">{totalCount}</span>}</Link>
          </li>
          {user ? (
            <>
              <li style={{ color: 'var(--muted)', fontSize: '0.85rem' }}>Hi, {user.name.split(' ')[0]}</li>
              <li><button onClick={handleLogout}>Logout</button></li>
            </>
          ) : (
            <li><Link to="/login">Login</Link></li>
          )}
        </ul>
      </div>
    </nav>
  );
}