-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Gegenereerd op: 15 apr 2024 om 12:46
-- Serverversie: 8.3.0
-- PHP-versie: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sale_order`
--

CREATE TABLE `sale_order` (
                              `id` int NOT NULL,
                              `customer_id` int DEFAULT NULL,
                              `name` varchar(255) DEFAULT NULL,
                              `email` varchar(255) DEFAULT NULL,
                              `street` varchar(255) DEFAULT NULL,
                              `number` varchar(10) DEFAULT NULL,
                              `number_add` varchar(6) DEFAULT NULL,
                              `city` varchar(255) DEFAULT NULL,
                              `postal` varchar(255) DEFAULT NULL,
                              `country` varchar(255) DEFAULT NULL,
                              `is_completed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sale_order_item`
--

CREATE TABLE `sale_order_item` (
                                   `id` int NOT NULL,
                                   `sale_order_id` int NOT NULL,
                                   `product_id` int DEFAULT NULL,
                                   `article_number` varchar(255) DEFAULT NULL,
                                   `description` varchar(255) DEFAULT NULL,
                                   `price` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `sale_order`
--
ALTER TABLE `sale_order`
    ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sale_order_item`
--
ALTER TABLE `sale_order_item`
    ADD PRIMARY KEY (`id`),
    ADD KEY `sale_order_id` (`sale_order_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `sale_order`
--
ALTER TABLE `sale_order`
    MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `sale_order_item`
--
ALTER TABLE `sale_order_item`
    MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `sale_order_item`
--
ALTER TABLE `sale_order_item`
    ADD CONSTRAINT `sale_order_item_ibfk_1` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
