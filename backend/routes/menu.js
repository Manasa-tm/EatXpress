const express = require('express');
const pool = require('../config/db');

const router = express.Router();

// GET /api/restaurants
router.get('/restaurants', async (req, res) => {
  try {
    const [rows] = await pool.query('SELECT * FROM restaurants');
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Could not load restaurants' });
  }
});

// GET /api/restaurants/:slug/menu
router.get('/restaurants/:slug/menu', async (req, res) => {
  try {
    const { slug } = req.params;
    const [restaurantRows] = await pool.query('SELECT * FROM restaurants WHERE slug = ?', [slug]);
    if (restaurantRows.length === 0) {
      return res.status(404).json({ message: 'Restaurant not found' });
    }
    const restaurant = restaurantRows[0];
    const [items] = await pool.query('SELECT * FROM menu_items WHERE restaurant_id = ?', [restaurant.id]);
    res.json({ restaurant, items });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Could not load menu' });
  }
});

module.exports = router;
