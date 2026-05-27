-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Isäntä: 127.0.0.1:3306
-- Luontiaika: 27.05.2026 klo 10:20
-- Palvelimen versio: 8.4.7
-- PHP-versio 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Tietokanta: `our_store`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Tuotteen tunniste',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tuotekuvan tiedostonimi',
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tuotteen nimi',
  `price` float NOT NULL COMMENT 'Tuotteen hinta',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tuotteen kuvaus',
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tuotekategoria',
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hakukonekuvaus',
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hakusanat',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vedos taulusta `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `price`, `description`, `category`, `meta_description`, `meta_keywords`) VALUES
(1, 'batlefield.jpg', 'M4 Tank Brigade\r\n', 49.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'games\r\n', 'product description\r\n', 'product keywords\r\n'),
(2, 'coding.jpg', 'Coding All-in-One For Dummies\r\n', 19.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'books\r\n', 'product description\r\n', 'product keywords\r\n'),
(3, 'farcry.jpg', 'Far Cry Primal - PC Standard Edition\r\n', 34.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'games\r\n', 'product description\r\n', 'product keywords\r\n'),
(4, 'javasript.jpg', 'Learn JavaScript Quickly: A Complete Beginner’s Guide to Learning JavaScript\r\n', 15.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'books\r\n', 'product description\r\n', 'product keywords\r\n'),
(5, 'machine-learning.jpg', 'JavaScript from Beginner to Professional: Learn JavaScript quickly\r\n', 34.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'books\r\n', 'product description\r\n', 'product keywords\r\n'),
(6, 'mic-1.jpg', 'Rode PodMic Cardioid Dynamic Broadcast Microphone\r\n', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'microphones\r\n', 'product description\r\n', 'product keywords\r\n'),
(7, 'mic-2.jpg', 'Audio-Technica AT2020 Cardioid\r\n', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'microphones\r\n', 'product description\r\n', 'product keywords\r\n'),
(8, 'mic-3.jpg', 'Elgato Wave:3 - Premium Studio Quality USB \r\n', 149.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'microphones\r\n', 'product description\r\n', 'product keywords\r\n'),
(9, 'mic-4.jpg', 'Razer Seiren X USB Streaming Microphone: Professional Grade\r\n', 59, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'microphones\r\n', 'product description\r\n', 'product keywords\r\n'),
(10, 'node.jpg', 'Node.js: Novice to Ninja 1st Edition\r\n', 39.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'books\r\n', 'product description\r\n', 'product keywords\r\n'),
(11, 'phone-1.jpg', 'SAMSUNG Galaxy S22 Ultra Cell Phone,\r\n', 1.136, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'phones\r\n', 'product description\r\n', 'product keywords\r\n'),
(12, 'phone-2.jpg', 'Apple iPhone 12 Pro, 512GB\r\n', 919.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'phones\r\n', 'product description\r\n', 'product keywords\r\n'),
(14, 'phone-3.jpg', 'Moto G Power | 2021 | 3-Day battery\r\n', 160.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'phones\r\n', 'product description\r\n', 'product keywords\r\n'),
(15, 'phone-4.jpg', 'Moto G7 Plus | Unlocked | Made for US by Motorola\r\n', 201, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'phones\r\n', 'product description\r\n', 'product keywords\r\n'),
(16, 'star-wars.jpg', 'Star Wars Squadrons\r\n', 39.99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', '\r\ngames\r\n', 'product description\r\n\r\n', 'product keywords\r\n'),
(17, 'tablet-1.jpg', 'SAMSUNG SM-T290NZKAXAR, Galaxy Tab A 8.0 32 GB\r\n', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'tablets\r\n', 'product description\r\n', 'product keywords\r\n'),
(18, 'tablet-2.jpg', 'Lectrus Tablet Customized Cover, Android 9.0\r\n', 119, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'tablets\r\n', 'product description\r\n', 'product keywords\r\n'),
(19, 'tablet-3.jpg', '10 Inch Tablet and Tablet Case Bundle, Android 9.0 Tablet 2GB RAM\r\n', 149.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'tablets\r\n', 'product description\r\n', 'product keywords\r\n'),
(20, 'tablet-4.jpg', 'Lenovo IdeaTab A2109 9-Inch 16 GB Tablet\r\n', 199, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'tablets\r\n', 'product description\r\n', 'product keywords\r\n'),
(21, 'tank.jpg', 'M4 Tank Brigade\r\n', 14.95, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione eligendi quas eius quod.\r\n', 'games\r\n', 'product description\r\n', 'product keywords\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
