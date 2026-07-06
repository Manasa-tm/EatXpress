import { Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import RestaurantMenu from './pages/RestaurantMenu';
import Cart from './pages/Cart';
import Login from './pages/Login';
import Register from './pages/Register';
import About from './pages/About';
import Privacy from './pages/Privacy';
import Terms from './pages/Terms';
import HelpCenter from './pages/HelpCenter';
import Payment from './pages/Payment';
import OrderTracking from './pages/OrderTracking';

export default function App() {
  return (
    <div className="app-shell">
      <Navbar />
      <main className="page-main">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/restaurant/:slug" element={<RestaurantMenu />} />
          <Route path="/cart" element={<Cart />} />
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
          <Route path="/about" element={<About />} />
          <Route path="/privacy" element={<Privacy />} />
          <Route path="/terms" element={<Terms />} />
          <Route path="/help-center" element={<HelpCenter />} />
          <Route path="/payment" element={<Payment />} />
          <Route path="/order-tracking" element={<OrderTracking />} />
        </Routes>
      </main>
      <Footer />
    </div>
  );
}