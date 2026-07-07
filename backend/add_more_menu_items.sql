USE defaultdb;

-- Tops up every restaurant to at least 10 menu items.
-- Safe to re-run: relies on the unique_menu_item key
-- (restaurant_id, name) added in cleanup_duplicate_menu_items.sql,
-- so re-running this will just skip items that already exist.

-- burger-king
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Burger', 'Crispy veggie patty with lettuce and mayo.', 149, 'https://b.zmtcdn.com/data/dish_photos/499/bd7c3ce2ea5e97861f516c893cb63499.jpg'
FROM restaurants WHERE slug = 'burger-king';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Nuggets', 'Six pieces of golden fried chicken nuggets.', 159, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT02cyQTPS5aFTzvWjPNTZVFN5nwodBCFmhhKlhql5HrwETZ8M4m4ifyFFZ&s=10'
FROM restaurants WHERE slug = 'burger-king';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Onion Rings', 'Crunchy battered onion rings.', 119, 'https://content.jwplatform.com/thumbs/IJ8CmoyT-720.jpg'
FROM restaurants WHERE slug = 'burger-king';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Crispy Veg Wrap', 'Crispy veg patty wrapped with fresh veggies.', 139, 'https://dineout-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_600,h_468/v1693168408/42df548a9ad2ba50c2719963a5c71e00.jpg'
FROM restaurants WHERE slug = 'burger-king';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Lava Cake', 'Warm chocolate cake with a molten center.', 99, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6JwkhNYmK3LJR1EPrqPtZgXZRLIDwsT80MJDQ1XPb7IGhh706oDuAIeM&s=10'
FROM restaurants WHERE slug = 'burger-king';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Iced Tea', 'Chilled lemon iced tea.', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd6JUBQnHttNsIrM3cf6jXWPr3-CaUSAm89CUg2LHBzFaIVZZxD6FzRKs&s=10'
FROM restaurants WHERE slug = 'burger-king';

-- kfc
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hot Wings', 'Six spicy fried chicken wings.', 219, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpDlfT_zL-0TjSiF-RppCkdPcSOI81enD4yHBpy-7ZVZSww8Rqod7uBI0&s=10'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Popcorn Chicken', 'Bite-sized crispy chicken poppers.', 179, 'https://us2guntur.com/images//10024img/popcorn_B_300525.jpg'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Twister Wrap', 'Crispy chicken strips wrapped with sauce and veggies.', 189, 'https://www.allrecipes.com/thmb/8ifLyyC0CemP4ksAKkd4Klr_ceU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AR-KFCTwister-a6843b4e0c1b44ffab973352b046735b.jpg'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Peri Peri Fries', 'Fries tossed in peri peri seasoning.', 109, 'https://m.media-amazon.com/images/I/819DW3IJfuL._AC_UF350,350_QL80_.jpg'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Zinger Burger', 'Signature crispy chicken fillet burger with lettuce and mayo.', 249, 'https://blog.mikelegal.com/wp-content/uploads/2023/04/zinger.jpeg'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Bucket (6 pcs)', 'Six pieces of KFC''s signature crispy fried chicken.', 699, 'https://orderserv-kfc-assets.yum.com/15895bb59f7b4bb588ee933f8cd5344a/images/items/xl/D-PR00000373.jpg?ver=16.58'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Strips', 'Tender crispy chicken strips served with dip.', 199, 'https://www.thesun.co.uk/wp-content/uploads/2021/02/KFC_10_FOR_10_MINIFILLETS-on-Wood-150dpi.jpg?strip=all&w=960'
FROM restaurants WHERE slug = 'kfc';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chocolate Lava Cake', 'Warm chocolate cake with a gooey molten center.', 129, 'https://i1.zopping.com/zopsmart-media/5693/images/originals/20260418/a733930a-62f8-43b5-af79-15f7a2ae0d13-Chocolavas1.webp'
FROM restaurants WHERE slug = 'kfc';

-- dominos
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Margherita Pizza', 'Classic cheese and tomato pizza.', 219, 'https://www.dominos.com.au/ManagedAssets/AU/product/P301/AU_P301_en_hero_4055.jpg?v-1013096145'
FROM restaurants WHERE slug = 'dominos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veggie Paradise', 'Loaded with capsicum, onion, and corn.', 289, 'https://images.dominos.co.in/new_veggie_paradise.jpg'
FROM restaurants WHERE slug = 'dominos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Dominator', 'Double chicken toppings on a cheesy base.', 359, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTgh1LuHgNhVvthoAajZpxatUdlY4kbrFiKlo5SiS3CCOqi8KPEjw9pL0&s=10'
FROM restaurants WHERE slug = 'dominos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Lava Cake', 'Warm chocolate cake with molten center.', 99, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxLRkTlMVHZsrcOpCgmUB7FMP-9dUwSjmBZIxh_mcPQQ&s=10'
FROM restaurants WHERE slug = 'dominos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cheesy Dip', 'Melted cheese dip for sides.', 49, 'https://media.zoopindia.com/items-images/cheesy-dip.jpg'
FROM restaurants WHERE slug = 'dominos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Coke', 'Chilled 500ml Coca-Cola.', 60, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOh47LyWLL4UFsaWc_VP8JIYMHfmef1cbETiwfMxo5jMRiZ4w_7O6aeLD3&s=10'
FROM restaurants WHERE slug = 'dominos';

-- pizza-hut
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Peppy Paneer Pizza', 'Paneer cubes, capsicum, and red pepper.', 349, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_dnDIbtiD7pXY2BcnaXupVVPC2rcE4IY_NmIaGwtiSw&s=10'
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Supreme', 'Loaded with chicken toppings and cheese.', 399, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5NIUDQtqal9MOJcSfbbDi-1hJJMIRjLikpzuVmksLrWevqUFlLYsPM80f&s=10'
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Garlic Bread Sticks', 'Warm garlic-buttered bread sticks.', 149, 'https://api.pizzahut.io/v1/content/en-in/in-1/images/side/garlic-bread-stix.9e2e44ff5ce42a76165bf96ccc6c9466.1.jpg'
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Fudge Cake', 'Rich chocolate fudge dessert.', 129, 'https://api.pizzahut.io/v1/content/en-in/in-1/images/dessert/brow-wow-nie-single.af07c0805f1b335d9a66c9f906c355ec.1.jpg'
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Nachos', 'Crispy nachos with cheese dip.', 159, 'https://www.tupperware.com/cdn/shop/articles/tupperware-ww-st-2312-12005.jpg?v=1707153290&width=1100'
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cold Coffee', 'Chilled blended coffee.', 99, 'https://media.istockphoto.com/id/673742908/photo/iced-caramel-latte-coffee-in-a-tall-glass.jpg?s=612x612&w=0&k=20&c=L5vH2S7jFqzOM8qGIK-iLKrUfSGGGf68ZPmR5xrdAKU='
FROM restaurants WHERE slug = 'pizza-hut';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Loaded Pizza', 'Fully loaded with seasonal vegetables.', 329, 'https://api.pizzahut.io/v1/content/en-in/in-1/images/pizza/overloaded-veggies-crafted-flatzz-oval-10in.29dd3437a0bc0c9634e8ddbe2b8c2008.1.jpg'
FROM restaurants WHERE slug = 'pizza-hut';

-- mcdonalds
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'McVeggie Burger', 'Crispy veggie patty burger.', 149, 'https://www.sidechef.com/recipe/b4496acb-32b7-4b27-8d91-b6e7a3c21218.jpg?d=1408x1120'
FROM restaurants WHERE slug = 'mcdonalds';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'McChicken', 'Classic chicken patty burger.', 169, 'https://images.immediate.co.uk/production/volatile/sites/30/2025/04/Crispiest-buttermilk-fried-chicken-burgers-90854e5.jpg'
FROM restaurants WHERE slug = 'mcdonalds';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hot Fudge Sundae', 'Vanilla soft serve with hot fudge.', 89, 'https://static01.nyt.com/images/2017/06/12/dining/00Icecream11/00Icecream11-jumbo.jpg'
FROM restaurants WHERE slug = 'mcdonalds';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cheesy Fries', 'Fries topped with cheese sauce.', 129, 'https://www.emborg.com/app/uploads/2023/06/1200x1200px_Cheesy_Fries.png'
FROM restaurants WHERE slug = 'mcdonalds';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cold Coffee', 'Chilled sweetened coffee.', 109, 'https://cdn.shopify.com/s/files/1/0838/4525/files/Everything_You_Need_To_Know_About_McDonald_s_Iced_Coffees_7c0e124c-0fd0-465d-970f-0610bc89342d_1024x1024.jpg?v=1709493055'
FROM restaurants WHERE slug = 'mcdonalds';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken McNuggets', 'Six piece chicken nuggets.', 149, 'https://s7d1.scene7.com/is/image/mcdonalds/20260107_Product-Hero_2120_822x822px:product-header-mobile?wid=822&hei=822&dpr=off'
FROM restaurants WHERE slug = 'mcdonalds';

-- biryani-blues
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Dum Biryani', 'Fragrant basmati rice with mixed vegetables.', 229, 'https://cdn4.singleinterface.com/files/banner_images/93115/211_1729166077_vegbiryani.png'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken 65', 'Spicy deep-fried chicken bites.', 219, 'https://b.zmtcdn.com/data/dish_photos/a01/1f6200141425c0c11b91af06f1a29a01.jpeg'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Tikka', 'Char-grilled marinated paneer cubes.', 229, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGpsMuW90BQTC8OB06rJvDZn1O4hPVb1eXyfbEBYBwLg&s=10'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Raita', 'Cooling yogurt with cucumber and spices.', 49, 'https://img.magnific.com/free-photo/cold-soup-with-fresh-cucumbers-radishes-potato-sausage-with-yoghurt-bowl_2829-10692.jpg?semt=ais_hybrid&w=740&q=80'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Double Ka Meetha', 'Traditional bread pudding dessert.', 99, 'https://mykitchendiaries.com/wp-content/uploads/2025/08/Whisk_8d75ca4c18.webp'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Boti Kebab', 'Tender marinated mutton kebabs.', 289, 'https://static01.nyt.com/images/2025/06/03/multimedia/KA-Beef-Boti-tzcp/KA-Beef-Boti-tzcp-jumbo.jpg'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Egg Biryani', 'Dum biryani with boiled eggs.', 209, 'https://b.zmtcdn.com/data/dish_photos/cfb/81760c341c3d02a324a7dd60442c8cfb.jpeg'
FROM restaurants WHERE slug = 'biryani-blues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Gulab Jamun', 'Warm sweet milk dumplings in syrup.', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwk0Hk9tEZd2kre2lnWrkjBEFDoOQvlgjvnUPxHHchgYP5EaaDYrq7F5s&s=10'
FROM restaurants WHERE slug = 'biryani-blues';

-- meghana-foods
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Andhra Mutton Biryani', 'Spicy Andhra-style mutton biryani.', 289, 'https://img.magnific.com/premium-photo/fast-food-poster_946288-29552.jpg?w=360'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken 65', 'Deep-fried spicy chicken bites.', 219, 'https://www.shutterstock.com/image-photo/indian-cuisene-tandoori-spicy-chicken-260nw-2554457433.jpg'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Gongura Chicken', 'Tangy sorrel-leaf chicken curry.', 259, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9H5kijvqO2npJy0jyyyTaojTTUu5An1MmTYRG2wKBDNEcsdmDsFLvRFI&s=10'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Dragon Chicken', 'Crispy fried chicken tossed in a spicy Indo-Chinese dragon sauce.', 269, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/6/6/afcfcd0a-0c90-4285-a6f6-a1c879a78e48_6fe37626-cae5-49d9-b003-7c4e8976020c.jpg'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Biryani', 'Aromatic biryani with paneer.', 199, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQ7k-WXtSzrZ6L9Ev9MDneS97_dCG8SqhBwRYcR8MShdOM3NciU0hL89E&s=10'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Andhra Meals', 'Traditional thali with rice, curries, and pickle.', 249, 'https://content.jdmagicbox.com/v2/comp/chennai/l9/044pxx44.xx44.200129211455.w1l9/catalogue/raju-andhra-meals-chennai-restaurants-0hj8vqkjhy.jpg'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Curd Rice', 'Comforting rice tempered with curry leaves.', 99, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7wwm_OagNX30d9F041F85Mzhvo7ElxCVo6ZFsErH3hMbUT5BOV2rGceI&s=10'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Rasam', 'Tangy South Indian soup.', 59, 'https://static.vecteezy.com/system/resources/thumbnails/061/061/397/small/tomato-rasam-tangy-broth-with-fresh-herbs-south-indian-soup-in-vibrant-traditional-high-res-photo.jpg'
FROM restaurants WHERE slug = 'meghana-foods';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Curry', 'Home-style spicy chicken curry.', 229, 'https://b.zmtcdn.com/data/dish_photos/725/43ba305667923343b538224c7d598725.png'
FROM restaurants WHERE slug = 'meghana-foods';


-- nandana-palace
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Biryani', 'Fragrant rice with mixed vegetables.', 199, 'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/12/veg-biryani-vegetable-biryani.jpg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Manchurian', 'Indo-Chinese chicken in tangy sauce.', 239, 'https://kitchens-at.com/sk_admin//images/dishes/1649411230.jpeg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Butter Naan', 'Soft leavened bread brushed with butter.', 49, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/rs1jhrzxoxvrynca2b2k'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Egg Curry', 'Boiled eggs in a spiced onion-tomato gravy.', 169, 'https://www.whiskaffair.com/wp-content/uploads/2019/03/Chettinad-Egg-Curry-2-3.jpg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Biryani', 'Aromatic basmati rice cooked with tender chicken and traditional spices.', 269, 'https://b.zmtcdn.com/data/pictures/2/55862/4f2824c6d45be59b06cda68736c9bd6f_o2_featured_v2.jpg?fit=around|750:500&crop=750:500;*,*'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mutton Biryani', 'Flavorful dum biryani prepared with succulent mutton and fragrant spices.', 349, 'https://b.zmtcdn.com/data/pictures/3/50713/e986c39807052dd6e5521e71e3e45e24.jpg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Nandana Special Chicken Kabab', 'Juicy chicken kebabs marinated in house spices and grilled to perfection.', 289, 'https://nandhanarestaurants.com/wp-content/uploads/2023/04/Chicken-Sholay-kebab-scaled-1-768x1024.jpeg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken 65', 'Deep-fried boneless chicken tossed with curry leaves and green chilies.', 249, 'https://nandhanarestaurants.com/wp-content/uploads/2022/11/Egg-Sholay.jpg'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Andhra Chicken Curry', 'Spicy Andhra-style chicken curry made with traditional masalas.', 259, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjcdeYUvSnhu5FKMWHUZqzr8j7B1L_MMa9Zp-KXuxkFVOxpMgJatEb2h8&s=10'
FROM restaurants WHERE slug = 'nandana-palace';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Gulab Jamun', 'Warm sweet milk dumplings in syrup.', 69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpiHHjtKW7Xkfb8hqpTznpL97v6czhpjOL5QmBos_jidYrSi8M89ES1jxE&s=10'
FROM restaurants WHERE slug = 'nandana-palace';


-- california-burrito
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Burrito', 'Rice, beans, and grilled veggies wrapped in a tortilla.', 229, 'https://images.slurrp.com/prod/recipe_images/transcribe/snack/California-Burrito.webp?impolicy=slurrp-20210601&width=1200&height=675'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Quesadilla', 'Grilled tortilla stuffed with chicken and cheese.', 239, 'https://b.zmtcdn.com/data/dish_photos/9b6/9ee60572e176b074c694d48f6a0be9b6.jpeg'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Guac & Chips', 'Fresh guacamole with tortilla chips.', 169, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTat12xVCBFT3jhUhibuvhXniu7RSuSXjGs-FnrANVOVFNsrrPhHEqnwcwE&s=10'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Churros', 'Cinnamon sugar churros with chocolate dip.', 139, 'https://www.shutterstock.com/image-photo/spanish-churros-cinnamon-sugar-chocolate-600w-2731543901.jpg'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mexican Rice Bowl', 'Spiced rice with beans and salsa.', 219, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQeZi17oj8X2bLoXBAgUwlc_Wxmeg29LMDYkh43fsa7HygOPmE-OJ5XRA&s=10'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Tacos', 'Soft tacos with grilled chicken and salsa.', 219, 'https://deltaco.com/files/menu/item/bft-chicken-hero-2.png'
FROM restaurants WHERE slug = 'california-burrito';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Salsa Fries', 'Fries topped with salsa and cheese.', 159, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHKJY6_0G3X-M-Xinnhsp5ogO_jjREJugtAaA7qV-r7f5jYIn8zoyT96ZP&s=10'
FROM restaurants WHERE slug = 'california-burrito';

-- subway
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Tikka Sub', 'Footlong chicken tikka with fresh veggies.', 259, 'https://snapcalorie-webflow-website.s3.us-east-2.amazonaws.com/media/food_pics_v2/medium/subway_footlong_chicken_tikka_sandwich.jpg'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Tikka Sub', 'Grilled paneer tikka with veggies.', 229, 'https://static.vecteezy.com/system/resources/thumbnails/002/267/769/small/isolated-close-up-of-a-sub-sandwich-with-paneer-lettuce-and-vegetables-and-delicious-sauces-free-photo.jpg'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Tuna Sub', 'Classic tuna mayo footlong sub.', 269, 'https://www.mashed.com/img/gallery/the-truth-about-subways-tuna-sandwiches/intro-slide-1612287032.jpg'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Chip Cookie', 'Freshly baked choco chip cookie.', 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvhJYXxES2LvziVhzY3t2KFs0zqqqKL1_SLl-JHkn2TcNBPyEFjvM5hpj&s=10'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hash Browns', 'Crispy golden potato hash browns.', 89, 'https://pbs.twimg.com/media/DqwCSVPX0AAUbds.jpg'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Egg Mayo Sub', 'Boiled egg and mayo footlong sub.', 199, 'https://snapcalorie-webflow-website.s3.us-east-2.amazonaws.com/media/food_pics_v2/medium/subway_egg_mayo.jpg'
FROM restaurants WHERE slug = 'subway';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Iced Tea', 'Chilled lemon iced tea.', 79, 'https://www.subway.co.id/wp-content/uploads/2025/11/lemon-tea.png'
FROM restaurants WHERE slug = 'subway';

-- starbucks
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cappuccino', 'Espresso topped with steamed milk foam.', 230, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO5z5kkk_LAMzsO2cgpcjbH0mVbPes-byZGaJ3qxlkkGc6BSvSRq2RCIE&s=10'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Americano', 'Espresso with hot water.', 210, 'https://www.bbassets.com/media/uploads/p/xl/40337946_2-starbucks-coffee-iced-americano-grande.jpg'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cold Brew', 'Slow-steeped smooth cold coffee.', 260, 'https://media1.popsugar-assets.com/files/thumbor/LcyhWxWWfX3NR9c2Yj9sa6fqF0M=/fit-in/792x1188/filters:format_auto():upscale()/2018/04/30/138/n/1922195/tmp_b4GFOH_533ec234d70d6d4b_Triple_Mocha_Frappuccino.jpg'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chocolate Croissant', 'Buttery croissant with chocolate filling.', 195, 'https://t3.ftcdn.net/jpg/15/92/32/54/360_F_1592325462_99WN98qZp3jeuIcxFXxWHVA1fn456UJW.jpg'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'New York Cheesecake', 'Rich and creamy baked cheesecake.', 265, 'https://www.backtomysouthernroots.com/wp-content/uploads/2019/07/IMG_2190-1024x731.jpg'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Java Chip Frappuccino', 'Blended coffee with chocolate chips.', 275, 'https://www.bbassets.com/media/uploads/p/xl/40337956_2-starbucks-coffee-java-chip-frappuccino-grande.jpg'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Green Tea', 'Freshly brewed green tea.', 190, 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2024/03/12/FN_Starbucks-Luck-of-the-Matcha-Creme-Frappuccino_s4x3.jpg.rend.hgtvcom.1280.1280.85.suffix/1710267427321.webp'
FROM restaurants WHERE slug = 'starbucks';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hazelnut Cookie', 'Crunchy hazelnut butter cookie.', 149, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh9L1k-iIEfjuGuIOVgNRm6yQLXlAr7di41JjT5_5eNUxmjz5IcSJDvR2A&s=10'
FROM restaurants WHERE slug = 'starbucks';

-- chai-point
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Ginger Chai', 'Freshly brewed ginger-infused tea.', 55, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/6/23/8b70e002-4d53-4772-a0ff-1c2f0c67a13c_e9988a86-1112-422e-96fa-f7eb9859ccf3.jpg'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kulhad Chai', 'Traditional chai served in a clay cup.', 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZx9VohekSysjXu058MY2-ZhKXxkWetCMl-tqm5m8KoYtFBowG4qt9iQc&s=10'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Vada Pav', 'Spiced potato fritter in a soft bun.', 49, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ-Nuf45oaSCNI8heISM73AkWDCLDcfySPGcHe2b9c0dAn3mvR_czTQJI&s=10'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kachori', 'Crispy fried lentil-stuffed pastry.', 45, 'https://prashantcorner.com/cdn/shop/files/khastakachori11.webp?v=1774869978'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Bun Maska', 'Soft bun with butter, served with chai.', 55, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjgPbA4NPSdX7ef8v2-HYJnhV4vJiQZh3s7a0vWzwJ1z17MBZV-ibf98U&s=10'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Masala Chai', 'Spiced milk tea, freshly brewed.', 49, 'https://forktospoon.com/wp-content/uploads/2018/03/Instant-Pot-Spiced-Milk-Tea-Masala-Chai.jpg'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cutting Chai', 'Small strong tea, Mumbai style.', 29, 'https://media.assettype.com/gulfnews%2Fimport%2F2021%2F11%2F02%2FMasala-chai_17cdf16efb3_medium.jpg?w=1200&ar=40%3A21&auto=format%2Ccompress&ogImage=true&mode=crop&enlarge=true&overlay=false&overlay_position=bottom&overlay_width=100'
FROM restaurants WHERE slug = 'chai-point';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Aloo Bonda', 'Deep-fried spiced potato fritters.', 45, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToKqgqV__4iIC-zs4037pbyLqc5RNcu_PCOrhZz7rHSamZpvttn3bk-DU&s=10'
FROM restaurants WHERE slug = 'chai-point';

-- wow-momo
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Fried Momos', 'Pan-fried chicken momos with a crispy base.', 179, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/5/21/ecb9d68e-42f6-49aa-9448-c6b6c0a572a1_7788a5b0-35a0-47a0-ae83-23292803403b.png'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Steamed Momos', 'Soft steamed vegetable dumplings.', 129, 'https://cdn4.singleinterface.com/files/banner_images/261129/9594_1729578216_23.png'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cheese Corn Momos', 'Momos stuffed with cheese and corn.', 159, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQkUMO1M5cLR00W4lgz6m4Jm23elHlna9QBaq8Us7k7HK3tVVIavqgMERs&s=10'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chilli Momos', 'Pan-tossed momos in spicy chilli sauce.', 179, 'https://cdn4.singleinterface.com/files/banner_images/261129/5639_1729578398_12.png'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Momo Soup', 'Warm broth with momos and veggies.', 149, 'https://i0.wp.com/prasuma.com/wp-content/uploads/2020/11/Hot-Sour-Momo-Soup.png?fit=800%2C470&ssl=1'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Spring Rolls', 'Crispy vegetable spring rolls.', 139, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwN_E2USkZYqlXcP8bKX_rPIDybzsIktGS7brB0E5u-g&s=10'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Schezwan Momos', 'Momos tossed in fiery schezwan sauce.', 189, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/5/21/cac29f0e-e308-41a3-90d5-cb89c843e08e_425f91e5-b125-4151-bfe6-08c3b3feee4b.png_compressed'
FROM restaurants WHERE slug = 'wow-momo';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Momos', 'Steamed momos with spiced paneer filling.', 169, 'https://i0.wp.com/passion2cook.com/wp-content/uploads/2023/03/paneer-momos-1.jpg'
FROM restaurants WHERE slug = 'wow-momo';

-- behrouz-biryani
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hyderabadi Chicken Biryani', 'Classic dum-cooked chicken biryani.', 349, 'https://product-assets.faasos.io/production/product/splash_screen_image_1651827464526_BB.jpg'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Dum Biryani', 'Fragrant rice with mixed vegetables.', 279, 'https://www.bigbasket.com/media/uploads/recipe/w-l/1030_1.jpg'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken 65', 'Deep-fried spicy chicken bites.', 249, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLcLC34PtEuNQTsdUIbz4Fr3WU7sP0cfbIJTwKjKA8CHmV-hdNV-xzdotk&s=10'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kunda Kalakand', 'Rich milk-based sweet.', 99, 'https://myheartbeets.com/wp-content/uploads/2020/10/instant-pot-milk-cake-688x1024.jpg'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mirchi Ka Salan', 'Tangy chilli and peanut curry.', 89, 'https://i.ytimg.com/vi/Hhf5hRm6CCo/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLNyDJKA8Wh7BtpXpv4HcoL17lRw'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Raita', 'Cooling yogurt with cucumber.', 59, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYeUmsZaU5UIHJMKXsKkp_Ibg-0TBsNCG3fiBSIAefdFQaPwDvR66p8wjA&s=10'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kebab Platter', 'Assorted grilled kebabs.', 449, 'https://thumbs.dreamstime.com/b/assorted-kebab-grilled-chicken-platter-large-metal-features-variety-meats-vegetables-juicy-pieces-lamb-chops-seasoned-404801514.jpg'
FROM restaurants WHERE slug = 'behrouz-biryani';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Firni', 'Creamy rice pudding dessert.', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkF4FzKtrpJoN3Tn2zG04PTuhmvor2StJD1J6I-UmkJBFX0KY-wGgr0cON&s=10'
FROM restaurants WHERE slug = 'behrouz-biryani';

-- baskin-robbins
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Strawberry Cone', 'Fresh strawberry ice cream in a crisp cone.', 89, 'https://static.vecteezy.com/system/resources/previews/068/621/670/non_2x/delight-in-refreshing-taste-of-strawberry-ice-cream-served-in-crispy-cones-topped-with-fresh-strawberries-for-perfect-treat-png.png'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Butterscotch Tub', '500ml tub of butterscotch ice cream.', 349, 'https://www.bbassets.com/media/uploads/p/xl/40212485_3-baskin-robbins-hop-scotch-butterscotch-ribbon-ice-cream.jpg'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chocolate Shake', 'Thick chocolate ice cream shake.', 179, 'https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/NI_CATALOG/IMAGES/CIW/2025/5/29/e511290e-bf19-4740-b442-5788097a0eed_75935_1.png'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mango Sorbet', 'Refreshing mango fruit sorbet.', 129, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOu4vTnAJrwDKzjPS240aMifCbzfK_OKGj8iAFZbDBCeyKVbfTFuwJeITY&s=10'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Vanilla Cone', 'Classic vanilla ice cream cone.', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt95UPGNZwlVK85_dWtFe-DPF6jQ9Lvhzf2BOJXOdVIc2b0mxJZn9y2h0&s=10'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Brownie Sundae', 'Brownie topped with ice cream and syrup.', 199, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVvVZDM4LhAaHIyWyeYNfdx4Ueodyvif3evyS98m1ODK41bIWvHuHehVbm&s=10'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cookie Dough Scoop', 'Single scoop of cookie dough ice cream.', 109, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrkn4kre-jKQHJu2To99SX5TYSr2uuBy9FckEwWX-YVQ&s=10'
FROM restaurants WHERE slug = 'baskin-robbins';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Waffle Bowl Sundae', 'Ice cream served in a crisp waffle bowl.', 219, 'https://pbs.twimg.com/media/C2TAdJ-VQAER0fF.jpg'
FROM restaurants WHERE slug = 'baskin-robbins';

-- krispy-kreme
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Strawberry Sprinkle Doughnut', 'Glazed doughnut with strawberry icing and sprinkles.', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yPzOGyPrsZzLR3P29XDl8jc1nTsJnkFwqyEa61dveQ&s=10'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Biscoff Caramel Doughnut', 'Soft doughnut topped with caramel drizzle and biscoff cookies.', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzrkbKfQ39XFks3LxpJ-I_hpuBGGTXg8rB78yP2iW30Q&s'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Filter Coffee', 'Freshly brewed hot coffee.', 99, 'https://cdn.limetray.com/production/5963_krispy_kreme/product_5/1782478497867_masala_tea.jpg'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Blueberry Cheesecake Doughnut', 'Doughnut glazed with blueberry icing.', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNrT1AUSBktzeov-9JLx1zOfiDRGsHtDqIp677_ecNyjjLr1dOONRv9Bs&s=10'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hazelnut Doughnut', 'Doughnut filled with hazelnut cream.', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsMEdJ499KyssEuixJb-lC0aRbRGrP07N_4eHoLpLcthQ_g2ztsFHcFag&s=10'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mini Doughnut Box', 'Box of 6 assorted mini doughnuts.', 249, 'https://digitalcontent.api.tesco.com/v2/media/ghs/5ad9c53b-4e5b-4868-ae8d-c4205e4cb146/21f331ae-38b4-455a-a291-41617cc5af0a_1675723439.jpeg?h=960&w=960'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cold Coffee', 'Chilled sweetened coffee.', 129, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfXj9ekX8lXJkF0B_LAkk6_F9kmXWZ3gbPKiZ-hVOCTlrlSc3yuq2vWdA3&s=10'
FROM restaurants WHERE slug = 'krispy-kreme';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Hot Chocolate', 'Rich and creamy hot chocolate.', 149, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfaIcObw4_kVq8kCZpXlFUhVLn68s5nyUMlUz45qQ3yiZ9YmfznkmN_zpt&s=10'
FROM restaurants WHERE slug = 'krispy-kreme';

-- faasos
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Egg Roll', 'Spiced egg wrapped in a soft paratha.', 129, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/FOOD_CATALOG/IMAGES/CMS/2025/4/23/4b21ec58-6ab5-4a85-ac87-80d27d3f1415_4e5a44cc-c30f-46a7-8db7-6ead1a654969.jpeg'
FROM restaurants WHERE slug = 'faasos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Schezwan Chicken Wrap', 'Chicken tossed in schezwan sauce, wrapped fresh.', 179, 'https://b.zmtcdn.com/data/dish_photos/8f7/e2e144422866bfd388590b7f6bd668f7.jpeg'
FROM restaurants WHERE slug = 'faasos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Kathi Roll', 'Spiced vegetables wrapped in paratha.', 139, 'https://rp-media.faasos.io/catalog/images/F2HKM1VDWFFP.jpeg'
FROM restaurants WHERE slug = 'faasos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cheese Corn Wrap', 'Cheesy corn filling wrapped in paratha.', 149, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_300,h_300,c_fit/FOOD_CATALOG/IMAGES/CMS/2025/4/21/efa81ecd-c0f0-4272-bb11-1e9e3d7234ae_47323cc6-ba3d-4b59-8b53-af1af1da846b.jpeg'
FROM restaurants WHERE slug = 'faasos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'French Fries', 'Classic crispy salted fries.', 99, 'https://www.awesomecuisine.com/wp-content/uploads/2009/05/french-fries.jpg'
FROM restaurants WHERE slug = 'faasos';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Kathi Roll', 'Spiced chicken wrapped in flaky paratha.', 189, 'https://content.jdmagicbox.com/v2/comp/chennai/d7/044pxx44.xx44.220604031033.b6d7/catalogue/faasos-wraps-and-rolls-velacheri-chennai-fast-food-0m2k2lcoei.jpg'
FROM restaurants WHERE slug = 'faasos';

-- box8
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Tikka Rice Bowl', 'Grilled paneer tikka over spiced rice.', 219, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_400/RX_THUMBNAIL/IMAGES/VENDOR/2024/11/15/88a7a10c-a377-4ccc-80c2-36d09feb7680_475128.jpg'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Egg Curry Rice Bowl', 'Egg curry served over steamed rice.', 199, 'https://assets.box8.co.in/rectangle-19x10/xxhdpi/product/14848'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chilli Chicken Bowl', 'Indo-Chinese chilli chicken over fried rice.', 239, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/FOOD_CATALOG/IMAGES/CMS/2026/2/14/c8df5bad-aac5-4265-9120-0dec9583dd5a_718de210-2714-4f3f-8101-e104dd0d1e58.png'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Dal Makhani Bowl', 'Creamy dal makhani with jeera rice.', 189, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVId29hbTve4G7gg6GO0RwMSiKK7EpszP_dw7E8M-TdOCOFHskcWVKAH3e&s=10'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Biryani Bowl', 'Fragrant chicken biryani in a bowl.', 229, 'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/FOOD_CATALOG/IMAGES/CMS/2026/5/27/f95cab95-cb5a-4e22-ae19-c285593c1550_6dd756d5-fd69-4e5d-bbe5-446284fbff53.jpeg'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Thali', 'Assorted vegetarian curries with rice and roti.', 199, 'https://assets.box8.co.in/rectangle-19x10/xxhdpi/product/3943'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Gulab Jamun', 'Warm sweet milk dumplings in syrup.', 69, 'https://www.mishticue.com/wp-content/uploads/2025/06/mishticue-gulab-jamun-1024x683.png'
FROM restaurants WHERE slug = 'box8';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Masala Papad', 'Crispy papad topped with onion and spices.', 59, 'https://www.whiskaffair.com/wp-content/uploads/2020/09/Masala-Papad-2-2.jpg'
FROM restaurants WHERE slug = 'box8';

-- freshmenu
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Grilled Chicken Sandwich', 'Grilled chicken breast with fresh greens.', 229, 'https://i0.wp.com/www.freshtohome.com/blog/wp-content/uploads/2024/07/Screenshot-2024-07-18-155507.png?fit=494%2C325&ssl=1'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Quinoa Salad', 'Healthy quinoa salad with fresh vegetables.', 219, 'https://thekitchengirl.com/wp-content/uploads/vegetable-quinoa-salad-recipe-A_10-copy.jpg'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Pasta Primavera', 'Pasta tossed with seasonal vegetables.', 239, 'https://cdn.loveandlemons.com/wp-content/uploads/opengraph/2022/06/pasta-primavera-1.jpg'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Fresh Fruit Bowl', 'Assorted seasonal fresh fruits.', 249, 'https://thumbs.dreamstime.com/b/fresh-fruit-platter-featuring-colorful-assortment-seasonal-fruits-arranged-beautifully-vibrant-presented-round-plate-367556767.jpg'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Iced Tea', 'Chilled lemon iced tea.', 89, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrltYKoCZpjQvhSIxElN8BIGa9DU4XKLs_3N4wHS9Y9Q-iZD_bnkvd-jdP&s=10'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Wrap', 'Grilled paneer wrapped with fresh veggies.', 199, 'https://cdn.uengage.io/uploads/49314/image-118192-1723208395.jpeg'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Cold Coffee', 'Chilled sweetened coffee.', 129, 'https://homecookingshow.in/wp-content/uploads/2025/12/Cold-Coffee-copy-576x1024.webp'
FROM restaurants WHERE slug = 'freshmenu';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Brownie', 'Rich fudgy chocolate brownie.', 119, 'https://ovenandout.in/cdn/shop/files/ChocoBr-4.jpg?v=1769958936&width=1445'
FROM restaurants WHERE slug = 'freshmenu';

-- absolute-barbecues
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Tikka', 'Char-grilled marinated chicken tikka.', 289, 'https://greatcurryrecipes.net/wp-content/uploads/2024/02/Tikka2-720x405.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Mutton Seekh Kebab', 'Char-grilled minced mutton skewers.', 319, 'https://www.seriouseats.com/thmb/vJpsYKbw5uYbH-k1CoaLq1OVic4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2016__08__20160801-seekh-kebab-recipe-48-88b540f8649947d9a08ab3f7fab7b320.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Paneer Tikka', 'Char-grilled marinated paneer cubes.', 259, 'https://derafarms.com/cdn/shop/files/deraproducts_98.png?v=1719207044'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Grilled Fish', 'Char-grilled marinated fish fillet.', 349, 'https://i.ytimg.com/vi/V-CZyletT0Y/sddefault.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Corn on the Cob', 'Grilled corn with butter and spice.', 129, 'https://static01.nyt.com/images/2022/07/06/dining/01kenjirex/merlin_209008578_5f27eaaf-47ef-47a3-ba75-c4fc9c6bc791-jumbo.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Platter', 'Assorted grilled vegetable skewers.', 229, 'https://www.sipandsanity.com/wp-content/uploads/2025/05/FI-veggie-skewers.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Soup of the Day', 'Chef''s daily special soup.', 149, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJPzDWy3YXF6Rknrocsmg7qQQa1n9XvIC1jxUSO2uNZA&s=10'
FROM restaurants WHERE slug = 'absolute-barbecues';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Dessert Platter', 'Assorted mini desserts.', 399, 'https://thumbs.dreamstime.com/b/assorted-mini-dessert-delicious-desserts-cakes-180967908.jpg'
FROM restaurants WHERE slug = 'absolute-barbecues';

-- empire-restaurant
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Empire Mutton Biryani', 'Signature mutton biryani served with raita.', 289, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpwX9AV_4HLNAuWqAtKIXomrwgJZnu1HK09LJKdC6zHcWfWgER09eOUIU&s=10'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Kabab', 'Char-grilled spiced chicken kababs.', 249, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2ptdDvo9Uc1_caWHuBwwkU7Xyr0ZNeQLZLWPWZFpGtOiigI6LNvkKuYwy&s=10'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Veg Biryani', 'Fragrant biryani with mixed vegetables.', 199, 'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/12/veg-biryani-vegetable-biryani.jpg'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Butter Naan', 'Soft leavened bread brushed with butter.', 49, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0oj9f-1LQ6m7HYUs2pEfdEhQa3S-wcvWjVKGtCu3z_B0qRFnY5cxxRhaY&s=10'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Chicken Curry', 'Home-style spiced chicken curry.', 239, 'https://www.foodiaq.com/wp-content/uploads/2024/08/CHICKEN-CURRY.jpg'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Falafel', 'Crispy fried chickpea patties.', 149, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF0TUWpNjucwoBIuYSq1EH9eFFyPDSPU-E-9DUmHMUL75X-SFmTWqz7fI&s=10'
FROM restaurants WHERE slug = 'empire-restaurant';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kunafa', 'Middle Eastern cheese pastry dessert.', 189, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqgIepFiBycGNGjw_q7Oi4JGiqiq4_oBVPwohEF5cGag&s=10'
FROM restaurants WHERE slug = 'empire-restaurant';

-- belgium-waffles
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Naked Nutella Waffle',
'Classic crispy waffle with premium European choco hazelnut spread. Add banana if you like.',
195,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn6ri2PKUIR4hwxRiGBicgAsBOeF3Li7_TosHbnEv-Zg&s'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Choco Kunafa Waffle',
'Dark chocolate waffle loaded with creamy chocolate spread and crunchy pistachio kunafa.',
210,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBUQvHtUE-M1bwbOzw7xZjdwBmujCosdMEUzA-ckcdgzmcS3WiXXHWbAc&s=10'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'KitKat Waffle',
'Classic crispy waffle topped with Belgian white chocolate and crunchy KitKat bits.',
185,
'https://99pancakes.in/cdn/shop/products/KitKat_1.jpg?v=1755018688&width=480'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Coffee Mocha Waffle',
'Classic waffle with melted chocolate infused with coffee crumbs.',
170,
'https://content.jdmagicbox.com/v2/comp/mumbai/h7/022pxx22.xx22.170928162945.y8h7/catalogue/the-belgian-waffle-co-nilje-thane-waffle-centres-nc5lg9hzfh-250.jpg'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Butterscotch Crunch Waffle',
'Classic crispy waffle topped with crunchy butterscotch fudge.',
145,
'https://api.thebelgianwaffle.co/uploads/belgian_img/product/Almond_Cocoa_Butter_Waff-wich__1__ttcCEuQGI.jpg?tr=orig-true'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Blueberry Crème Waffle',
'Classic waffle layered with cheesecake filling and fresh blueberry compote.',
175,
'https://b.zmtcdn.com/data/dish_photos/13a/b83f672fd4fec7f18d91c78e14f7013a.jpg'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Biscoff Cheesecake Waffle',
'Creamy cheesecake filling with Lotus Biscoff spread and crunchy Biscoff crumbs.',
215,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmZ76PRy4oHPfobPnwoiM96LuZan4jc31qYcMvghmb_lmsayWt9jgP2xGo&s=10'
FROM restaurants WHERE slug = 'belgium-waffles';
INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Triple Chocolate Waffle',
'Chocolate waffle with milk, dark and white Belgian chocolate.',
210,
'https://b.zmtcdn.com/data/pictures/chains/5/18573295/f410a8bd4ccbe2d0febc882d0e2ef3f1.jpg?fit=around|960:500&crop=960:500;*,*'
FROM restaurants WHERE slug = 'belgium-waffles';

INSERT IGNORE INTO menu_items (restaurant_id, name, description, price, image_url)
SELECT id, 'Kiki & Oreo Waffle',
'Crispy waffle topped with cookies & cream, Oreo crumble and white chocolate.',
195,
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS88JMp5yOAthjTh9OwZBw1oGRgsZV6V6d_c_fnnzvwKt0mpdklvAA9ofJP&s=10'
FROM restaurants WHERE slug = 'belgium-waffles';

SELECT r.slug, COUNT(*) AS item_count
FROM restaurants r JOIN menu_items mi ON mi.restaurant_id = r.id
GROUP BY r.slug ORDER BY item_count;
