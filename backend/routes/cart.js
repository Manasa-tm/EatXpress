const express = require('express');
const pool = require('../config/db');
const requireAuth = require('../middleware/auth');

const router = express.Router();
router.use(requireAuth);

// GET /api/cart - dynamic cart for the logged-in user
router.get('/', async (req, res) => {
  try {
    const [rows] = await pool.query(
      `SELECT ci.id, ci.quantity, mi.id AS menu_item_id, mi.name, mi.price, mi.image_url
       FROM cart_items ci
       JOIN menu_items mi ON ci.menu_item_id = mi.id
       WHERE ci.user_id = ?`,
      [req.userId]
    );
    res.json(rows);
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Could not load cart' });
  }
});

// POST /api/cart  { menuItemId, quantity }
router.post('/', async (req, res) => {
  try {
    const { menuItemId, quantity } = req.body;
    if (!menuItemId || !quantity || quantity < 1) {
      return res.status(400).json({ message: 'menuItemId and a positive quantity are required' });
    }
    await pool.query(
      `INSERT INTO cart_items (user_id, menu_item_id, quantity)
       VALUES (?, ?, ?)
       ON DUPLICATE KEY UPDATE quantity = ?`,
      [req.userId, menuItemId, quantity, quantity]
    );
    res.status(201).json({ message: 'Cart updated' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Could not update cart' });
  }
});

// DELETE /api/cart/:menuItemId
router.delete('/:menuItemId', async (req, res) => {
  try {
    await pool.query('DELETE FROM cart_items WHERE user_id = ? AND menu_item_id = ?', [
      req.userId,
      req.params.menuItemId,
    ]);
    res.json({ message: 'Item removed' });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: 'Could not remove item' });
  }
});

module.exports = router;
