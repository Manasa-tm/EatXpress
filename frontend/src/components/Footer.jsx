import { Link } from "react-router-dom";

export default function Footer() {
  const year = new Date().getFullYear();

  return (
    <footer className="footer">
      <div className="footer-inner">
        <div className="footer-brand">
          <Link to="/" className="logo">
            Eat<span>Xpress</span>
          </Link>
          <p>
            Bengaluru's favorite way to order from local kitchens and national
            chains alike — sorted by craving, delivered fast.
          </p>
          <div className="footer-socials">
            <a href="#" aria-label="Instagram">
              <img src="/images/insta.png" alt="Instagram" />
            </a>
            <a href="#" aria-label="Threads">
              <img src="/images/threads.png" alt="Threads" />
            </a>
            <a href="#" aria-label="Facebook">
              <img src="/images/fb.png" alt="Facebook" />
            </a>
          </div>
        </div>

        <div className="footer-col">
          <h4>Company</h4>
          <ul>
            <li>
              <Link to="/about">About us</Link>
            </li>
          </ul>
        </div>

        <div className="footer-col">
          <h4>Learn more</h4>
          <ul>
            <li>
              <Link to="/privacy">Privacy</Link>
            </li>
            <li>
              <Link to="/terms">Terms</Link>
            </li>
            <li>
              <Link to="/help-center">Help center</Link>
            </li>
          </ul>
        </div>
      </div>

      <div className="footer-bottom">
        <span>© {year} EatXpress. All rights reserved.</span>
        <span>Made for late-night cravings in Bengaluru.</span>
      </div>
    </footer>
  );
}
