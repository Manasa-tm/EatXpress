USE eatxpress;

UPDATE restaurants SET image_url = '/images/dominos.png' WHERE slug='dominos';
UPDATE restaurants SET image_url = '/images/pizzahut.png' WHERE slug='pizza-hut';
UPDATE restaurants SET image_url = '/images/mcdonalds.png' WHERE slug='mcdonalds';
UPDATE restaurants SET image_url = '/images/biryaniblues.png' WHERE slug='biryani-blues';
UPDATE restaurants SET image_url = '/images/meghnas.png' WHERE slug='meghana-foods';
UPDATE restaurants SET image_url = '/images/truffles.jpg' WHERE slug='truffles';
UPDATE restaurants SET image_url = '/images/nandanapalace.png' WHERE slug='nandana-palace';
UPDATE restaurants SET image_url = '/images/californiaburrito.png' WHERE slug='california-burrito';
UPDATE restaurants SET image_url = '/images/subway.png' WHERE slug='subway';
UPDATE restaurants SET image_url = '/images/starbucks.png' WHERE slug='starbucks';
UPDATE restaurants SET image_url = '/images/chai-point.png' WHERE slug='chai-point';
UPDATE restaurants SET image_url = '/images/wow-momo.png' WHERE slug='wow-momo';
UPDATE restaurants SET image_url = '/images/behrouz-biryani.png' WHERE slug='behrouz-biryani';
UPDATE restaurants SET image_url = '/images/baskin-robbins.png' WHERE slug='baskin-robbins';
UPDATE restaurants SET image_url = '/images/krispykreme.png' WHERE slug='krispy-kreme';
UPDATE restaurants SET image_url = '/images/faasos.png' WHERE slug='faasos';
UPDATE restaurants SET image_url = '/images/box8.png' WHERE slug='box8';
UPDATE restaurants SET image_url = '/images/freshmenu.png' WHERE slug='freshmenu';
UPDATE restaurants SET image_url = '/images/absolute-barbecues.png' WHERE slug='absolute-barbecues';
UPDATE restaurants SET image_url = '/images/empire-restaurant.png' WHERE slug='empire-restaurant';
UPDATE restaurants SET image_url = '/images/belgium-waffles.png' WHERE slug='belgium-waffles';

SELECT slug, image_url FROM restaurants;
