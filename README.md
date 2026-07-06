# EatXpress — Full-Stack Food Delivery App

React (Vite) frontend + Node/Express + MySQL backend. Login/Register with JWT auth,
restaurant menus, and a fully dynamic cart backed by the database (not localStorage).

## Project structure
```
food-delivery-app/
├── backend/     Express API + MySQL
└── frontend/    React (Vite) app
```

## Prerequisites
- Node.js 18+ and npm
- MySQL Server running locally (or a remote instance)
- Git

---

## 1. Set up the database

Open a MySQL shell and run:
```bash
mysql -u root -p < backend/schema.sql
mysql -u root -p < backend/seed.sql
```
This creates the `eatxpress` database with `users`, `restaurants`, `menu_items`, and `cart_items` tables, plus sample Burger King and KFC menu data.

## 2. Run the backend

```bash
cd backend
npm install
cp .env.example .env
```
Open `.env` and set `DB_PASSWORD` to your MySQL password, and set `JWT_SECRET` to any random string.

```bash
npm run dev
```
API runs at `http://localhost:5000`. Test it: `curl http://localhost:5000` should return "EatXpress API is running".

## 3. Run the frontend

Open a **new terminal**:
```bash
cd frontend
npm install
cp .env.example .env
npm run dev
```
App runs at `http://localhost:5173`. Vite is already configured to proxy `/api` calls to the backend.

## 4. Try it out
1. Go to `http://localhost:5173`
2. Click **Register**, create an account
3. Open a restaurant, click **Add to Cart**, adjust quantities with `+`/`−`
4. Go to **Cart** — items are pulled live from the database per logged-in user
5. Log out and back in — the cart persists because it's stored server-side, not in the browser

---

## 5. Push to GitHub

From the `food-delivery-app` root folder:

```bash
git init
git add .
git commit -m "Initial commit: EatXpress full-stack food delivery app"
```

Create a new empty repository on GitHub (via github.com → New repository), then:

```bash
git branch -M main
git remote add origin https://github.com/<your-username>/eatxpress.git
git push -u origin main
```

To make future changes:
```bash
git add .
git commit -m "Describe your change"
git push
```

> `.env` files are gitignored, so your DB password and JWT secret never get pushed. Anyone cloning your repo just needs to copy `.env.example` to `.env` and fill in their own values.

## Notes for your resume
This project demonstrates: React.js (hooks, context, routing), RESTful API design, JWT authentication, MySQL schema design, and full-stack integration — directly matching your listed skills (React.js, Java/PHP background, MySQL, RESTful APIs, OOP).
