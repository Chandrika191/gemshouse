CREATE TABLE product (
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(255),
description TEXT,
price INT,
image_url VARCHAR(255),
is_new BOOLEAN NOT NULL DEFAULT FALSE,
is_on_sale BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO product (id, name, description, price, image_url, is_new, is_on_sale)
VALUES
(01, 'Black Tourmaline Bracelet', 'Sheilds against negative energy', 1750, 'sale1.jpg', TRUE, FALSE),
(02, 'Pyrite Bracelet', 'Enhances mental clarity and focus', 1750, 'sale2.jpg', FALSE, TRUE),
(03, 'Citrine Bracelet', 'Boosts confidence, creativity & motivation', 1750, 'sale3.jpg', TRUE, FALSE),
(04, 'Jade Bracelet', 'Enhances wisdom & clarity', 2100, 'sale4.jpg', FALSE, TRUE),
(05, 'Rose Quartz Bracelet', 'Encouraging tranquility and inner healing', 1750, 'sale5.jpg', FALSE, TRUE),
(06, 'Lapis Lazuli Bracelet', 'Protecting against psychic attacks', 1750, 'sale6.jpg', TRUE, FALSE),
(07, 'Carnelian Bracelet', 'Enhances focus and concentration', 1750, 'sale7.jpg', TRUE, FALSE),
(08, 'Amethyst Bracelet', 'Enhances spiritual awareness and intuition', 1750, 'sale8.jpg', FALSE, TRUE),
(09, '5 Mukhi Rudraksha Combo', 'Spiritual growth & Balancing chakras', 1400, 'sale9.jpg', TRUE, FALSE),
(10, 'Dhan Yog Bracelet', 'For financial prosperity', 1400, 'bracelet001.jpg', FALSE, TRUE),
(11, '7 Chakra Crystal Bracelet', 'For astrology purpose', 2100, 'bracelet002.jpg', FALSE, TRUE),
(12, 'Navgraha Shanti Bracelet', 'Helps balance all 9 grahas', 1400, 'sale10.jpg', TRUE, FALSE),
(13, 'Sodalite Japa Mala', 'Brings emotional balance & calm panic attacks', 1750, 'garland1.jpg', TRUE, FALSE),
(14, 'Fire Agate Japa Mala', 'Help with spiritual advancement & progression', 1400, 'garland2.jpg', FALSE, TRUE),
(15, 'Natural Citrine Japa Mala', 'Enhances clarity & focus', 2100, 'garland3.jpg', FALSE, TRUE),
(16, 'Rudraksha Japa Mala', 'Enhances spiritual growth', 2100, 'garland4.jpg', TRUE, FALSE),
(17, 'Black Tourmaline Japa Mala', 'Protecting from negative energy', 1750, 'garland5.jpg', TRUE, FALSE),
(18, 'Rose Quartz Japa Mala', 'Promotes emotional healing', 1400, 'garland6.jpg', FALSE, TRUE),
(19, 'Amazonite Japa Mala', 'Soothes trauma & calms the mind', 2100, 'garland7.jpg', FALSE, TRUE),
(20, 'Rhodonite Crystal Japa Mala', 'For balancing the heart chakra', 2100, 'garland8.jpg', TRUE, FALSE),
(21, '7 Chakra Japa Mala', 'Boosting energy & vitality', 1750, 'garland9.jpg', TRUE, FALSE),
(22, 'Sphatik Japa Mala', 'For spirtual growth & healing', 1400, 'garland10.jpg', FALSE, TRUE),
(23, 'Indian Blood Japa Mala', 'Boosts creativity & revitalizing the mind and body', 2100, 'garland11.jpg', FALSE, TRUE),
(24, 'Tigers Eye Cyrstal Mala', 'Promotes a sense of inner peace', 2100, 'garland12.jpg', TRUE, FALSE),
(25, 'Vyapar Vridhhi Yantra Combo', 'For boosting business', 1000, 'yantra1.jpg', TRUE, FALSE),
(26, 'Safalta Prapti Yantra Combo', 'For achieving success', 1000, 'yantra2.jpg', FALSE, TRUE),
(27, 'Raksha Kavach Yantra Combo', 'Protecting from evil eye', 1000, 'yantra3.jpg', FALSE, TRUE),
(28, 'Parivar Raksha Yantra Combo', 'Protecting family', 1000, 'yantra4.jpg', TRUE, FALSE),
(29, 'Navgrah Shanti Yantra Combo', 'For balancing all 9 grahas', 1000, 'yantra5.jpg', TRUE, FALSE),
(30, 'Lakshmi Kuber Yantra Combo', 'For wealth & prosperity', 1000, 'yantra6.jpg', FALSE, TRUE),
(31, 'Ghar Samridhhi Yantra Combo', 'For health & wealth', 1000, 'yantra7.jpg', FALSE, TRUE),
(32, 'Dhan Sampatti Yantra Combo', 'For wealth & peace', 1000, 'yantra5.jpg', TRUE, FALSE),
(33, 'Natural Yellow Sapphire Gemstone: 10 Carat', 'For jupiter: knowledge & fortune', 24500, 'yellowsapphire.jpg', TRUE, FALSE),
(34, 'Natural Ruby (Manik) Gemstone: 10 Carat', 'For sun: boosting energy', 31500, 'ruby.jpg', FALSE, TRUE),
(35, 'Natural Blue Sapphire Gemstone: 10 Carat', 'For saturn: promotes mental stability', 35000, 'bluesapphire.jpg', FALSE, TRUE),
(36, 'Natural Emerald (Panna) Gemstone: 10 Carat', 'For mercury: promotes love, harmony & creativity', 31500, 'emarald.jpg', TRUE, FALSE),
(37, 'Natural Opal (Heated) Gemstone: 10 carat', 'For venus: improves health & mind', 14000, 'opal.jpg', TRUE, FALSE),
(38, 'Natural Pearl (Cultured) Gemstone: 10 carat', 'For moon: calms mind & improves sleep', 7000, 'pearl.jpg', FALSE, TRUE),
(39, 'Natural Coral (Redcoral) Gemstone: 10 carat', 'For mars: boosted confidence', 7000, 'redcoral.jpg', FALSE, TRUE),
(40, 'Natural CatsEye Gemstone: 10 carat', 'For ketu: help mitigate the negative effects', 11500, 'catseye.jpg', TRUE, FALSE);

SELECT * FROM product;

DROP TABLE product;

SELECT * FROM product;
 

CREATE TABLE new_product (
id BIGINT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(255),
description TEXT,
price INT,
image_url VARCHAR(255),
is_new BOOLEAN NOT NULL DEFAULT FALSE,
is_on_sale BOOLEAN NOT NULL DEFAULT FALSE
);

INSERT INTO new_product (id, name, description, price, image_url, is_new, is_on_sale)
VALUES
(101, 'Black Tourmaline Bracelet', 'Sheilds against negative energy', 1750, 'sale1.jpg', TRUE, FALSE),
(102, 'Pyrite Bracelet', 'Enhances mental clarity and focus', 1750, 'sale2.jpg', FALSE, TRUE),
(103, 'Citrine Bracelet', 'Boosts confidence, creativity & motivation', 1750, 'sale3.jpg', TRUE, FALSE),
(104, 'Jade Bracelet', 'Enhances wisdom & clarity', 2100, 'sale4.jpg', FALSE, TRUE),
(105, 'Rose Quartz Bracelet', 'Encouraging tranquility and inner healing', 1750, 'sale5.jpg', FALSE, TRUE),
(106, 'Lapis Lazuli Bracelet', 'Protecting against psychic attacks', 1750, 'sale6.jpg', TRUE, FALSE),
(107, 'Carnelian Bracelet', 'Enhances focus and concentration', 1750, 'sale7.jpg', TRUE, FALSE),
(108, 'Amethyst Bracelet', 'Enhances spiritual awareness and intuition', 1750, 'sale8.jpg', FALSE, TRUE),
(109, '5 Mukhi Rudraksha Combo', 'Spiritual growth & Balancing chakras', 1400, 'sale9.jpg', TRUE, FALSE),
(110, 'Dhan Yog Bracelet', 'For financial prosperity', 1400, 'bracelet001.jpg', FALSE, TRUE),
(111, '7 Chakra Crystal Bracelet', 'For astrology purpose', 2100, 'bracelet002.jpg', FALSE, TRUE),
(112, 'Navgraha Shanti Bracelet', 'Helps balance all 9 grahas', 1400, 'sale10.jpg', TRUE, FALSE),
(113, 'Sodalite Japa Mala', 'Brings emotional balance & calm panic attacks', 1750, 'garland1.jpg', TRUE, FALSE),
(114, 'Fire Agate Japa Mala', 'Help with spiritual advancement & progression', 1400, 'garland2.jpg', FALSE, TRUE),
(115, 'Natural Citrine Japa Mala', 'Enhances clarity & focus', 2100, 'garland3.jpg', FALSE, TRUE),
(116, 'Rudraksha Japa Mala', 'Enhances spiritual growth', 2100, 'garland4.jpg', TRUE, FALSE),
(117, 'Black Tourmaline Japa Mala', 'Protecting from negative energy', 1750, 'garland5.jpg', TRUE, FALSE),
(118, 'Rose Quartz Japa Mala', 'Promotes emotional healing', 1400, 'garland6.jpg', FALSE, TRUE),
(119, 'Amazonite Japa Mala', 'Soothes trauma & calms the mind', 2100, 'garland7.jpg', FALSE, TRUE),
(120, 'Rhodonite Crystal Japa Mala', 'For balancing the heart chakra', 2100, 'garland8.jpg', TRUE, FALSE),
(121, '7 Chakra Japa Mala', 'Boosting energy & vitality', 1750, 'garland9.jpg', TRUE, FALSE),
(122, 'Sphatik Japa Mala', 'For spirtual growth & healing', 1400, 'garland10.jpg', FALSE, TRUE),
(123, 'Indian Blood Japa Mala', 'Boosts creativity & revitalizing the mind and body', 2100, 'garland11.jpg', FALSE, TRUE),
(124, 'Tigers Eye Cyrstal Mala', 'Promotes a sense of inner peace', 2100, 'garland12.jpg', TRUE, FALSE),
(125, 'Vyapar Vridhhi Yantra Combo', 'For boosting business', 1000, 'yantra1.jpg', TRUE, FALSE),
(126, 'Safalta Prapti Yantra Combo', 'For achieving success', 1000, 'yantra2.jpg', FALSE, TRUE),
(127, 'Raksha Kavach Yantra Combo', 'Protecting from evil eye', 1000, 'yantra3.jpg', FALSE, TRUE),
(128, 'Parivar Raksha Yantra Combo', 'Protecting family', 1000, 'yantra4.jpg', TRUE, FALSE),
(129, 'Navgrah Shanti Yantra Combo', 'For balancing all 9 grahas', 1000, 'yantra5.jpg', TRUE, FALSE),
(130, 'Lakshmi Kuber Yantra Combo', 'For wealth & prosperity', 1000, 'yantra6.jpg', FALSE, TRUE),
(131, 'Ghar Samridhhi Yantra Combo', 'For health & wealth', 1000, 'yantra7.jpg', FALSE, TRUE),
(132, 'Dhan Sampatti Yantra Combo', 'For wealth & peace', 1000, 'yantra5.jpg', TRUE, FALSE),
(133, 'Natural Yellow Sapphire Gemstone: 10 Carat', 'For jupiter: knowledge & fortune', 24500, 'yellowsapphire.jpg', TRUE, FALSE),
(134, 'Natural Ruby (Manik) Gemstone: 10 Carat', 'For sun: boosting energy', 31500, 'ruby.jpg', FALSE, TRUE),
(135, 'Natural Blue Sapphire Gemstone: 10 Carat', 'For saturn: promotes mental stability', 35000, 'bluesapphire.jpg', FALSE, TRUE),
(136, 'Natural Emerald (Panna) Gemstone: 10 Carat', 'For mercury: promotes love, harmony & creativity', 31500, 'emarald.jpg', TRUE, FALSE),
(137, 'Natural Opal (Heated) Gemstone: 10 carat', 'For venus: improves health & mind', 14000, 'opal.jpg', TRUE, FALSE),
(138, 'Natural Pearl (Cultured) Gemstone: 10 carat', 'For moon: calms mind & improves sleep', 7000, 'pearl.jpg', FALSE, TRUE),
(139, 'Natural Coral (Redcoral) Gemstone: 10 carat', 'For mars: boosted confidence', 7000, 'redcoral.jpg', FALSE, TRUE),
(140, 'Natural CatsEye Gemstone: 10 carat', 'For ketu: help mitigate the negative effects', 11500, 'catseye.jpg', TRUE, FALSE);

SELECT * FROM new_product;

ALTER TABLE new_product ADD COLUMN category VARCHAR(50);

UPDATE new_product SET category = 'bracelet' WHERE id IN (101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112);
UPDATE new_product SET category = 'garland' WHERE id IN (113, 114, 115, 116, 117, 118, 119,120, 121, 122, 123, 124);
UPDATE new_product SET category = 'yantra' WHERE id IN (125, 126, 127, 128, 129, 130, 131, 132);
UPDATE new_product SET category = 'gemstone' WHERE id IN (133, 134, 135, 136, 137, 138, 139, 140);

SELECT * FROM new_product;

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
phone_number VARCHAR(20),
city VARCHAR(50),
country VARCHAR(50),
password VARCHAR(255)
);

ALTER TABLE users ADD COLUMN role VARCHAR(20) NOT NULL DEFAULT 'USER';

UPDATE users SET role = 'ADMIN' WHERE email = 'chandrika19194@gmail.com';

UPDATE users SET role = 'ADMIN' WHERE email = 'chandrika19194@gmail.com';

SELECT * FROM users;

UPDATE users SET role = 'ADMIN' WHERE email = 'chandrika19194@gmail.com';

SET SQL_SAFE_UPDATES = 0;
UPDATE users SET role = 'ADMIN' WHERE email = 'chandrika19194@gmail.com';
SET SQL_SAFE_UPDATES = 1;







