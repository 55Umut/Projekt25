-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 18. Jul 2025 um 14:37
-- Server-Version: 10.4.24-MariaDB
-- PHP-Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `burgershop`
--
CREATE DATABASE IF NOT EXISTS `burgershop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `burgershop`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `burgers`
--

CREATE TABLE `burgers` (
  `burger_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `burgers`
--

INSERT INTO `burgers` (`burger_id`, `order_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 7),
(11, 8),
(12, 8),
(13, 8),
(14, 9),
(15, 9),
(16, 9),
(17, 10),
(18, 10),
(19, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `burger_ingredients`
--

CREATE TABLE `burger_ingredients` (
  `burger_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `ingredient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `burger_ingredients`
--

INSERT INTO `burger_ingredients` (`burger_id`, `position`, `ingredient_id`) VALUES
(1, 2, 1),
(5, 2, 1),
(5, 3, 1),
(6, 2, 1),
(8, 2, 1),
(11, 2, 1),
(15, 2, 1),
(18, 2, 1),
(3, 2, 2),
(10, 2, 2),
(13, 2, 2),
(16, 2, 2),
(19, 2, 2),
(2, 2, 3),
(4, 2, 3),
(7, 2, 3),
(9, 2, 3),
(12, 2, 3),
(14, 2, 3),
(14, 3, 3),
(17, 2, 3),
(1, 3, 4),
(5, 4, 4),
(8, 3, 4),
(11, 3, 4),
(15, 4, 4),
(18, 3, 4),
(2, 3, 5),
(12, 3, 5),
(14, 4, 5),
(1, 4, 6),
(2, 4, 6),
(3, 4, 6),
(6, 4, 6),
(7, 3, 6),
(9, 4, 6),
(11, 4, 6),
(14, 5, 6),
(16, 3, 6),
(18, 4, 6),
(1, 5, 7),
(8, 5, 7),
(13, 4, 7),
(19, 4, 7),
(4, 4, 8),
(10, 4, 8),
(17, 4, 8),
(5, 5, 9),
(3, 3, 10),
(8, 4, 10),
(13, 3, 10),
(6, 3, 11),
(15, 3, 11),
(2, 5, 12),
(9, 3, 12),
(12, 4, 12),
(19, 3, 12),
(1, 1, 13),
(1, 7, 13),
(3, 1, 13),
(3, 6, 13),
(5, 1, 13),
(5, 7, 13),
(6, 1, 13),
(6, 6, 13),
(8, 1, 13),
(8, 7, 13),
(10, 1, 13),
(10, 6, 13),
(11, 1, 13),
(11, 6, 13),
(13, 1, 13),
(13, 6, 13),
(15, 1, 13),
(15, 6, 13),
(16, 1, 13),
(16, 5, 13),
(18, 1, 13),
(18, 6, 13),
(19, 1, 13),
(19, 6, 13),
(2, 1, 14),
(2, 7, 14),
(4, 1, 14),
(4, 6, 14),
(7, 1, 14),
(7, 5, 14),
(9, 1, 14),
(9, 6, 14),
(12, 1, 14),
(12, 6, 14),
(14, 1, 14),
(14, 7, 14),
(17, 1, 14),
(17, 6, 14),
(1, 6, 15),
(5, 6, 15),
(7, 4, 15),
(8, 6, 15),
(11, 5, 15),
(14, 6, 15),
(16, 4, 15),
(18, 5, 15),
(3, 5, 16),
(6, 5, 16),
(13, 5, 16),
(15, 5, 16),
(19, 5, 16),
(2, 6, 17),
(9, 5, 17),
(12, 5, 17),
(4, 5, 19),
(10, 5, 19),
(17, 5, 19),
(4, 3, 20),
(10, 3, 20),
(17, 3, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `is_vegan` tinyint(1) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `name`, `price`, `is_vegan`, `image_url`) VALUES
(1, 'Beef Patty', '3.50', 0, 'https://example.com/images/beef_patty.jpg'),
(2, 'Chicken Patty', '3.20', 0, 'https://example.com/images/chicken_patty.jpg'),
(3, 'Vegan Patty', '3.80', 1, 'https://example.com/images/vegan_patty.jpg'),
(4, 'Cheddar Cheese', '1.00', 0, 'https://example.com/images/cheddar.jpg'),
(5, 'Vegan Cheese', '1.20', 1, 'https://example.com/images/vegan_cheese.jpg'),
(6, 'Lettuce', '0.50', 1, 'https://example.com/images/lettuce.jpg'),
(7, 'Tomato', '0.60', 1, 'https://example.com/images/tomato.jpg'),
(8, 'Onion', '0.40', 1, 'https://example.com/images/onion.jpg'),
(9, 'Pickles', '0.50', 1, 'https://example.com/images/pickles.jpg'),
(10, 'Bacon', '1.50', 0, 'https://example.com/images/bacon.jpg'),
(11, 'Mushrooms', '0.80', 1, 'https://example.com/images/mushrooms.jpg'),
(12, 'Avocado', '1.30', 1, 'https://example.com/images/avocado.jpg'),
(13, 'Brioche Bun', '1.00', 0, 'https://example.com/images/brioche_bun.jpg'),
(14, 'Whole Wheat Bun', '1.00', 1, 'https://example.com/images/wheat_bun.jpg'),
(15, 'Ketchup', '0.30', 1, 'https://example.com/images/ketchup.jpg'),
(16, 'Mayonnaise', '0.40', 0, 'https://example.com/images/mayonnaise.jpg'),
(17, 'Vegan Mayo', '0.50', 1, 'https://example.com/images/vegan_mayo.jpg'),
(18, 'Mustard', '0.30', 1, 'https://example.com/images/mustard.jpg'),
(19, 'BBQ Sauce', '0.50', 1, 'https://example.com/images/bbq_sauce.jpg'),
(20, 'Jalapeños', '0.60', 1, 'https://example.com/images/jalapenos.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `street`, `city`, `postal_code`, `phone_number`, `total_price`) VALUES
(1, 'Anna Schmidt', 'Hauptstraße 12', 'Berlin', '10115', '+491234567890', '17.20'),
(2, 'Ben Müller', 'Schillerstraße 5', 'München', '80331', '+491987654321', '14.90'),
(3, 'Clara Weber', 'Goethestraße 25', 'Hamburg', '20253', '+491112223344', '18.00'),
(4, 'David Fischer', 'Bahnhofstraße 10', 'Köln', '50667', '+491555666777', '6.60'),
(5, 'Emma Braun', 'Lindenweg 3', 'Frankfurt', '60594', '+491777888999', '8.90'),
(6, 'Finn Hoffmann', 'Schillerpromenade 8', 'Stuttgart', '70173', '+491333444555', '8.10'),
(7, 'Greta Klein', 'Mozartstraße 15', 'Düsseldorf', '40210', '+491666777888', '6.70'),
(8, 'Henry Schulz', 'Beethovenweg 7', 'Leipzig', '04107', '+491999000111', '23.80'),
(9, 'Ida Becker', 'Wagnerstraße 20', 'Dresden', '01067', '+491444555666', '25.30'),
(10, 'Jonas Wagner', 'Kantstraße 30', 'Bremen', '28195', '+491222333444', '22.10');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `burgers`
--
ALTER TABLE `burgers`
  ADD PRIMARY KEY (`burger_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indizes für die Tabelle `burger_ingredients`
--
ALTER TABLE `burger_ingredients`
  ADD PRIMARY KEY (`burger_id`,`position`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indizes für die Tabelle `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `burgers`
--
ALTER TABLE `burgers`
  MODIFY `burger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `burgers`
--
ALTER TABLE `burgers`
  ADD CONSTRAINT `burgers_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints der Tabelle `burger_ingredients`
--
ALTER TABLE `burger_ingredients`
  ADD CONSTRAINT `burger_ingredients_ibfk_1` FOREIGN KEY (`burger_id`) REFERENCES `burgers` (`burger_id`),
  ADD CONSTRAINT `burger_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
