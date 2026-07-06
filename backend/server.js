const express = require('express');
const cors = require('cors');
require('dotenv').config();

const authRoutes = require('./routes/auth');
const menuRoutes = require('./routes/menu');
const cartRoutes = require('./routes/cart');

const app = express();
app.use(cors());
app.use(express.json());

app.use('/api/auth', authRoutes);
app.use('/api', menuRoutes);
app.use('/api/cart', cartRoutes);

app.get('/', (req, res) => res.send('EatXpress API is running'));

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on http://localhost:${PORT}`));
