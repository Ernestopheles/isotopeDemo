-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Oct 04, 2023 at 02:22 AM
-- Server version: 10.10.3-MariaDB-1:10.10.3+maria~ubu2204-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_isotopeDemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tl_article`
--

CREATE TABLE `tl_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inColumn` varchar(32) NOT NULL DEFAULT 'main',
  `keywords` text DEFAULT NULL,
  `showTeaser` char(1) NOT NULL DEFAULT '',
  `teaserCssID` varchar(255) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `printable` varchar(255) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `languageMain` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_article`
--

INSERT INTO `tl_article` (`id`, `pid`, `sorting`, `tstamp`, `title`, `alias`, `author`, `inColumn`, `keywords`, `showTeaser`, `teaserCssID`, `teaser`, `printable`, `customTpl`, `protected`, `groups`, `guests`, `cssID`, `published`, `start`, `stop`, `languageMain`) VALUES
(1, 3, 128, 1384418571, 'Linke Spalte', 'linke-spalte', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid6\";}', '1', '', '', 0),
(2, 4, 128, 1386577609, 'Left column', 'left-column', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid6\";}', '1', '', '', 0),
(3, 3, 256, 1384418593, 'Rechte Spalte', 'rechte-spalte', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid6\";}', '1', '', '', 0),
(4, 5, 128, 1386583473, 'Angebote', 'angebote', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(5, 6, 128, 1384437650, 'Specials', 'specials', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(6, 7, 128, 1384437707, 'Shop', 'shop', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(7, 8, 128, 1384437719, 'Shop', 'shop', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(8, 9, 128, 1384440867, 'Suche', 'suche', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(9, 10, 128, 1384440894, 'Search', 'search', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(10, 11, 128, 1384445454, 'Sitemap', 'sitemap', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(11, 12, 128, 1384445482, 'Sitemap', 'sitemap', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(12, 13, 128, 1384445524, 'Impressum', 'impressum', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(13, 14, 128, 1384445546, 'Legal notice', 'legal-notice', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(14, 15, 128, 1384446007, 'Über uns', 'ueber-uns', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(15, 16, 128, 1384446022, 'About us', 'about-us', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(16, 17, 128, 1384446081, 'Kontakt', 'kontakt', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(17, 18, 128, 1384446118, 'Contact', 'contact', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(20, 21, 128, 1384446677, 'Wie bestelle ich?', 'wie-bestelle-ich', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(21, 22, 128, 1384446699, 'How to place an order?', 'how-to-place-an-order', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(22, 23, 128, 1384446803, 'Lieferkonditionen', 'lieferkonditionen', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(23, 24, 128, 1384446821, 'Delivery conditions', 'delivery-conditions', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(24, 25, 128, 1384446838, 'Zahlungsmöglichkeiten', 'zahlungsmoeglichkeiten', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(25, 26, 128, 1384446863, 'Payment options', 'payment-options', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(26, 27, 128, 1384446905, 'AGB', 'agb', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(27, 28, 128, 1384446933, 'GTC', 'gtc', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(28, 29, 128, 1384446987, 'Datenschutz', 'datenschutz', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(29, 30, 128, 1384447012, 'Data protection', 'data-protection', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(32, 33, 128, 1384468970, 'Login', 'login-32', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(33, 34, 128, 1384468954, 'Login', 'login', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(34, 35, 128, 1384468424, 'Meine Bestellungen', 'meine-bestellungen', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(35, 36, 128, 1384468455, 'My order history', 'my-order-history', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(36, 37, 128, 1384468486, 'Logout', 'logout', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(37, 38, 128, 1384468506, 'Logout', 'logout', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(44, 46, 128, 1384952273, 'Warenkorb', 'warenkorb', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(45, 47, 128, 1384952325, 'Shopping cart', 'shopping-cart', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(46, 48, 128, 1384952358, 'Kasse', 'kasse', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(47, 49, 128, 1384952457, 'Checkout', 'checkout', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(48, 50, 128, 1384952608, 'Bestellzusammenfassung', 'bestellzusammenfassung', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(49, 51, 128, 1384952638, 'Order summary', 'order-summary', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(50, 52, 128, 1384955208, 'Bestelldetails', 'bestelldetails', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(51, 53, 128, 1384955257, 'Order details', 'order-details', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(52, 54, 128, 1384957327, 'Login', 'login-54', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(53, 55, 128, 1384957438, 'Login', 'shop-login', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(54, 4, 256, 1386577641, 'Right column', 'right-column', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid6\";}', '1', '', '', 0),
(56, 56, 128, 1386669409, 'CD', 'cd', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(57, 57, 128, 1386669428, 'CD', 'cd', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(60, 60, 128, 1386669564, 'Download', 'download', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(61, 61, 128, 1386669611, 'Download', 'download', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(62, 62, 128, 1386669627, 'T-Shirt', 't-shirt', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(63, 63, 128, 1386669654, 'T-Shirt', 't-shirt', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(66, 78, 128, 1388486859, 'Mark Lanegan', 'mark-lanegan', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(67, 78, 256, 1388588599, 'Primus', 'primus', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(68, 78, 384, 1388591859, 'RAK', 'rak', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(69, 78, 64, 1388592891, 'A Perfect Circle', 'a-perfect-circle', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(70, 78, 96, 1388593678, 'At The Drive In', 'at-the-drive-in', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(71, 78, 112, 1388594625, 'Isis', 'isis', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(72, 78, 104, 1388595384, 'dEUS', 'deus', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(73, 78, 120, 1388596171, 'Kinderzimmer Productions', 'kinderzimmer-productions', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(74, 78, 108, 1388645674, 'Fantômas', 'fantomas', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(75, 78, 110, 1388646615, 'Genesis', 'genesis', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(76, 78, 111, 1388647017, 'Helmet', 'helmet', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(77, 78, 192, 1388647611, 'Mogwai', 'mogwai', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(78, 78, 224, 1388649053, 'Nik Bärtsch\'s Ronin', 'nik-baertschs-ronin', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(79, 78, 512, 1388650436, 'Tool', 'tool', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(80, 78, 448, 1388651564, 'Sigur Rós', 'sigur-ros', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(81, 78, 240, 1388652231, 'Porcupine Tree', 'porcupine-tree', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(82, 78, 640, 1388652921, 'Tori Amos', 'tori-amos', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(83, 78, 320, 1388653630, 'Radiohead', 'radiohead', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(84, 78, 116, 1388655124, 'Johnny Cash', 'johnny-cash', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(85, 78, 480, 1388655585, 'The Chemical Brothers', 'the-chemical-brothers', 1, '', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(88, 82, 128, 1395210803, 'Sammelsurium', 'sammelsurium', 1, 'main', '', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 0),
(89, 83, 128, 1395211816, 'Salmagundi', 'salmagundi', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(92, 86, 128, 1421789691, 'Produkt-Filter', 'produkt-filter', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(93, 87, 128, 1421789753, 'Einschränkender Filter', 'einschraenkender-filter', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(94, 88, 128, 1421789831, 'Product Filter', 'product-filter', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(95, 89, 128, 1421789917, 'Cumulative Filter', 'cumulative-filter', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(99, 90, 128, 1478251152, 'Favoriten', 'favoriten', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(100, 91, 128, 1504876115, 'Favourites', 'favourites', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(101, 45, 128, 1504880061, 'Page not found', '404', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(102, 43, 128, 1504880088, 'Access denied', '403', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(103, 92, 128, 1566484936, 'Kategorie', 'kategorie', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(104, 93, 128, 1566550783, 'Category', 'category', 1, 'main', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, '', '', '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '1', '', '', 103),
(105, 94, 128, 1566565520, 'Leser', 'leser', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0),
(106, 95, 128, 1566565582, 'Reader', 'reader', 1, 'main', NULL, '', '', NULL, '', '', '', NULL, '', '', '1', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar`
--

CREATE TABLE `tl_calendar` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(32) NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(32) NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `master` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar_events`
--

CREATE TABLE `tl_calendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `addTime` char(1) NOT NULL DEFAULT '',
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `startDate` bigint(20) DEFAULT NULL,
  `endDate` bigint(20) DEFAULT NULL,
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `addImage` char(1) NOT NULL DEFAULT '',
  `overwriteMeta` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `imageTitle` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT 'above',
  `recurring` char(1) NOT NULL DEFAULT '',
  `repeatEach` varchar(64) NOT NULL DEFAULT '',
  `repeatEnd` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `recurrences` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob DEFAULT NULL,
  `source` varchar(32) NOT NULL DEFAULT 'default',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(2048) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `languageMain` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_calendar_feed`
--

CREATE TABLE `tl_calendar_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `calendars` blob DEFAULT NULL,
  `format` varchar(32) NOT NULL DEFAULT 'rss',
  `source` varchar(32) NOT NULL DEFAULT 'source_teaser',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT 25,
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `imgSize` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_comments`
--

CREATE TABLE `tl_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(128) NOT NULL DEFAULT '',
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `addReply` char(1) NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reply` text DEFAULT NULL,
  `published` char(1) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `notified` char(1) NOT NULL DEFAULT '',
  `notifiedReply` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_comments_notify`
--

CREATE TABLE `tl_comments_notify` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `source` varchar(32) NOT NULL DEFAULT '',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(2048) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `tokenRemove` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_content`
--

CREATE TABLE `tl_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'text',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptable` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `headline` varchar(255) NOT NULL DEFAULT 'a:2:{s:5:"value";s:0:"";s:4:"unit";s:2:"h2";}',
  `text` mediumtext DEFAULT NULL,
  `addImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `showPreview` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `inline` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `overwriteMeta` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `imageTitle` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `imagemargin` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `imageUrl` text DEFAULT NULL,
  `fullsize` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'above',
  `html` mediumtext DEFAULT NULL,
  `listtype` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `listitems` blob DEFAULT NULL,
  `tableitems` mediumblob DEFAULT NULL,
  `summary` varchar(255) NOT NULL DEFAULT '',
  `thead` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `tfoot` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `tleft` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sortable` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `sortIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sortOrder` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `mooHeadline` varchar(255) NOT NULL DEFAULT '',
  `mooStyle` varchar(255) NOT NULL DEFAULT '',
  `mooClasses` varchar(255) NOT NULL DEFAULT '',
  `highlight` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `markdownSource` varchar(12) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'sourceText',
  `code` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `target` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `overwriteLink` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `titleText` varchar(255) NOT NULL DEFAULT '',
  `linkTitle` varchar(255) NOT NULL DEFAULT '',
  `embed` varchar(255) NOT NULL DEFAULT '',
  `rel` varchar(64) NOT NULL DEFAULT '',
  `useImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `multiSRC` blob DEFAULT NULL,
  `orderSRC` blob DEFAULT NULL,
  `useHomeDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `perRow` smallint(5) UNSIGNED NOT NULL DEFAULT 4,
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sortBy` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `metaIgnore` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `galleryTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerSRC` blob DEFAULT NULL,
  `youtube` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `vimeo` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `posterSRC` binary(16) DEFAULT NULL,
  `playerSize` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerOptions` text DEFAULT NULL,
  `playerStart` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `playerStop` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `playerCaption` varchar(255) NOT NULL DEFAULT '',
  `playerAspect` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `splashImage` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerPreload` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `playerColor` varchar(6) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `youtubeOptions` text DEFAULT NULL,
  `vimeoOptions` text DEFAULT NULL,
  `sliderDelay` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sliderSpeed` int(10) UNSIGNED NOT NULL DEFAULT 300,
  `sliderStartSlide` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sliderContinuous` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `cteAlias` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `articleAlias` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `article` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `form` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `protected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `guests` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `invisible` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `start` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `stop` varchar(10) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `com_perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `com_moderate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_bbcode` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_requireLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_content`
--

INSERT INTO `tl_content` (`id`, `type`, `pid`, `ptable`, `sorting`, `tstamp`, `headline`, `text`, `addImage`, `showPreview`, `inline`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `markdownSource`, `code`, `url`, `target`, `overwriteLink`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `vimeo`, `posterSRC`, `playerSize`, `playerOptions`, `playerStart`, `playerStop`, `playerCaption`, `playerAspect`, `splashImage`, `playerPreload`, `playerColor`, `youtubeOptions`, `vimeoOptions`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `data`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`) VALUES
(2, 'accordionSingle', 3, 'tl_article', 128, 1386323724, '', '<p><strong>Benutzernamen</strong>: k.jones<br> <strong>Kennwort</strong>: kevinjones<br> <strong>Funktion</strong>: Backend-User und Administrator</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Zum Backend-Login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Kevin Jones</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(3, 'accordionSingle', 3, 'tl_article', 256, 1386323724, '', '<p><strong>Benutzernamen</strong>: h.lewis<br> <strong>Kennwort</strong>: helenlewis<br> <strong>Funktion</strong>: Backend-Userin</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Zum Backend-Login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Helen Lewis</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(4, 'accordionSingle', 3, 'tl_article', 384, 1386323724, '', '<p><strong>Benutzernamen</strong>: j.wilson<br> <strong>Kennwort</strong>: jameswilson<br> <strong>Funktion</strong>: Backend-User</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Zum Backend-Login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>James Wilson</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(5, 'accordionSingle', 3, 'tl_article', 512, 1386323724, '', '<p><strong>Benutzernamen</strong>: j.smith<br> <strong>Kennwort</strong>: johnsmith<br> <strong>Funktion</strong>: Frontend-User</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>John Smith</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(6, 'accordionSingle', 3, 'tl_article', 640, 1386323724, '', '<p><strong>Benutzernamen</strong>: d.evans<br> <strong>Kennwort</strong>: donnaevans<br> <strong>Funktion</strong>: Frontend-Userin</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Donna Evans</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(7, 'headline', 3, 'tl_article', 64, 1384418642, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:14:\"Benutzerkonten\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(9, 'module', 3, 'tl_article', 768, 1384468087, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 2, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(10, 'headline', 3, 'tl_article', 704, 1384469122, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(12, 'module', 8, 'tl_article', 128, 1384444361, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 12, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(13, 'module', 32, 'tl_article', 128, 1384964314, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 3, 0, 0, 2, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(14, 'module', 36, 'tl_article', 128, 1384469205, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 16, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(16, 'module', 6, 'tl_article', 128, 1384796159, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 19, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(17, 'headline', 1, 'tl_article', 64, 1384800523, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:23:\"Unsere neusten Produkte\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(20, 'module', 44, 'tl_article', 128, 1384953757, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 22, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(21, 'module', 34, 'tl_article', 128, 1384955583, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 24, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(22, 'module', 52, 'tl_article', 128, 1385541252, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 27, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(23, 'headline', 52, 'tl_article', 64, 1384959154, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(25, 'alias', 52, 'tl_article', 32, 1384959267, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 7, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(26, 'alias', 52, 'tl_article', 48, 1384959372, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 5, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(27, 'alias', 52, 'tl_article', 56, 1384959385, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 6, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(29, 'alias', 32, 'tl_article', 64, 1384964295, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 7, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(30, 'alias', 32, 'tl_article', 96, 1384964301, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 5, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(31, 'alias', 32, 'tl_article', 112, 1384959635, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 6, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(32, 'headline', 32, 'tl_article', 120, 1384964308, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(33, 'text', 52, 'tl_article', 256, 1386584794, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:29:\"Bestellung ohne Registrierung\";}', '<p>Sie können natürlich auch ohne Registrierung bestellen.</p>\n<p><a title=\"{{link_title::48}}\" href=\"{{link_url::48}}\">Jetzt bestellen</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(34, 'module', 46, 'tl_article', 128, 1384960754, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 26, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(35, 'headline', 46, 'tl_article', 64, 1384960804, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Kasse\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(36, 'module', 1, 'tl_article', 80, 1384962888, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 20, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(38, 'module', 48, 'tl_article', 128, 1385540442, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 25, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(39, 'module', 50, 'tl_article', 128, 1385455834, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 25, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(40, 'html', 52, 'tl_article', 192, 1385543343, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', '<div class=\"grid9\"><a class=\"button\" href=\"{{link_url::48}}\">Zur Kasse</a> <a class=\"button\" href=\"{{link_url::37}}\">Abmelden</a></div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', '', '', '', '', 'ascending', 0, '', '', '', '', ''),
(41, 'text', 14, 'tl_article', 128, 1385551244, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(42, 'text', 16, 'tl_article', 128, 1385551286, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(43, 'module', 10, 'tl_article', 128, 1385551354, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 32, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(50, 'text', 1, 'tl_article', 48, 1386681396, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:17:\"Isotope eCommerce\";}', '<p>Isotope eCommerce ist eine eCommerce-Lösung für Contao CMS. Weil jeder Webshop einzigartig ist, wurde Isotope mit Prioriät auf Flexibilität gebaut, so dass du alles auf deine individuellen Wünsche anpassen kannst.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(51, 'text', 20, 'tl_article', 128, 1386352161, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(52, 'text', 22, 'tl_article', 128, 1386352176, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(53, 'text', 24, 'tl_article', 128, 1386352203, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(54, 'text', 26, 'tl_article', 128, 1386352221, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(55, 'text', 28, 'tl_article', 128, 1386352237, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(56, 'text', 15, 'tl_article', 128, 1386352726, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(57, 'text', 17, 'tl_article', 128, 1386352743, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(58, 'text', 21, 'tl_article', 128, 1386352765, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(59, 'text', 23, 'tl_article', 128, 1386352780, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(60, 'text', 25, 'tl_article', 128, 1386352799, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(61, 'text', 27, 'tl_article', 128, 1386352818, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', '');
INSERT INTO `tl_content` (`id`, `type`, `pid`, `ptable`, `sorting`, `tstamp`, `headline`, `text`, `addImage`, `showPreview`, `inline`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `markdownSource`, `code`, `url`, `target`, `overwriteLink`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `vimeo`, `posterSRC`, `playerSize`, `playerOptions`, `playerStart`, `playerStop`, `playerCaption`, `playerAspect`, `splashImage`, `playerPreload`, `playerColor`, `youtubeOptions`, `vimeoOptions`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `data`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`) VALUES
(62, 'text', 29, 'tl_article', 128, 1386352833, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', '<p><strong>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</strong></p>\n<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(64, 'headline', 12, 'tl_article', 128, 1386574397, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(65, 'module', 11, 'tl_article', 128, 1386577354, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 50, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(66, 'headline', 13, 'tl_article', 128, 1386577387, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(70, 'headline', 33, 'tl_article', 512, 1386577459, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(71, 'module', 33, 'tl_article', 640, 1386577477, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 3, 0, 0, 48, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(72, 'headline', 54, 'tl_article', 64, 1386577664, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:13:\"User accounts\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(73, 'accordionSingle', 54, 'tl_article', 128, 1386682303, '', '<p><strong>Username</strong>: k.jones<br><strong>Password</strong>: kevinjones<br><strong>Role</strong>: Back end user and administrator</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Go to back end login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Kevin Jones</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(74, 'accordionSingle', 54, 'tl_article', 256, 1386682316, '', '<p><strong>Username</strong>: h.lewis<br><strong>Password</strong>: helenlewis<br><strong>Role</strong>: Back end user</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Go to back end login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Helen Lewis</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(75, 'accordionSingle', 54, 'tl_article', 384, 1386682331, '', '<p><strong>Username</strong>: j.wilson<br><strong>Password</strong>: jameswilson<br><strong>Role</strong>: Backend-User</p>\n<p><a href=\"{{env::path}}contao\" target=\"_blank\">Go to back end login</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>James Wilson</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(76, 'accordionSingle', 54, 'tl_article', 512, 1386578197, '', '<p><strong>Username</strong>: j.smith<br><strong>Password</strong>: johnsmith<br><strong>Role</strong>: Front end user</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>John Smith</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(77, 'accordionSingle', 54, 'tl_article', 640, 1386578340, '', '<p><strong>Username</strong>: d.evans<br><strong>Password</strong>: donnaevans<br><strong>Role</strong>: Front end user</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '<span>Donna Evans</span>', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(78, 'headline', 54, 'tl_article', 704, 1386682473, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(79, 'module', 54, 'tl_article', 768, 1386577683, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 48, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(80, 'alias', 33, 'tl_article', 256, 1386578406, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 72, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(81, 'alias', 33, 'tl_article', 384, 1386578454, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 76, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(82, 'alias', 33, 'tl_article', 448, 1386578471, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 77, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(83, 'module', 37, 'tl_article', 128, 1386578533, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 49, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(84, 'module', 35, 'tl_article', 128, 1386578689, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 54, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(85, 'module', 51, 'tl_article', 128, 1386578734, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 53, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(86, 'module', 9, 'tl_article', 128, 1386579469, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 51, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(87, 'headline', 2, 'tl_article', 128, 1386579595, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:16:\"Our new products\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(90, 'text', 2, 'tl_article', 96, 1386681299, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:17:\"Isotope eCommerce\";}', '<p>Isotope eCommerce is the premier eCommerce solution for Contao CMS. Because every online store is unique, Isotope has been designed with flexibility in mind, so that you can customize everything in your shop to your specific needs.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(92, 'module', 2, 'tl_article', 192, 1386584087, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 65, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(94, 'article', 1, 'tl_article', 112, 1386582814, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 4, 0, 0, 63, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(95, 'module', 4, 'tl_article', 128, 1386582591, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 63, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(98, 'module', 4, 'tl_article', 256, 1386582539, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(100, 'headline', 4, 'tl_article', 64, 1386583439, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:15:\"Unsere Angebote\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(102, 'headline', 5, 'tl_article', 128, 1386584031, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Our specials\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(103, 'module', 5, 'tl_article', 256, 1386584052, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 64, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(104, 'article', 2, 'tl_article', 288, 1386584116, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 5, 0, 0, 0, '', NULL, '', '', '', '', '', 'ascending', 0, '', '', '', '', ''),
(105, 'module', 7, 'tl_article', 128, 1421792144, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 80, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(108, 'module', 45, 'tl_article', 128, 1386584369, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 61, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(109, 'headline', 53, 'tl_article', 128, 1386584498, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(110, 'module', 53, 'tl_article', 256, 1386584516, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 56, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"box-1\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(111, 'html', 53, 'tl_article', 384, 1386584552, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', '<div class=\"grid9\"><a class=\"button\" href=\"{{link_url::49}}\">Zur Kasse</a> <a class=\"button\" href=\"{{link_url::38}}\">Abmelden</a></div>', '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', '', '', '', '', 'ascending', 0, '', '', '', '', ''),
(112, 'text', 53, 'tl_article', 512, 1386584763, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:26:\"Order without registration\";}', '<p>You also have the option to order without creating a customer account.</p>\n<p><a title=\"{{link_title::48}}\" href=\"{{link_url::49}}\">Order now</a></p>', '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(113, 'alias', 53, 'tl_article', 64, 1386584862, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 72, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(114, 'alias', 53, 'tl_article', 96, 1386584877, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 76, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(115, 'alias', 53, 'tl_article', 112, 1386584890, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 77, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(116, 'module', 47, 'tl_article', 128, 1386585021, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 55, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(117, 'module', 49, 'tl_article', 128, 1386585351, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 53, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(121, 'headline', 44, 'tl_article', 64, 1386605873, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(122, 'headline', 45, 'tl_article', 64, 1386605896, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(124, 'module', 62, 'tl_article', 128, 1386680048, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 68, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(125, 'headline', 62, 'tl_article', 64, 1386680090, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:7:\"T-Shirt\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(126, 'module', 62, 'tl_article', 256, 1386680309, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(127, 'headline', 60, 'tl_article', 128, 1386680371, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:8:\"Download\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(128, 'module', 60, 'tl_article', 256, 1386680362, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 68, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(129, 'module', 60, 'tl_article', 384, 1386680362, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(130, 'headline', 56, 'tl_article', 128, 1386680405, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:2:\"CD\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(131, 'module', 56, 'tl_article', 256, 1386680394, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 68, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(132, 'module', 56, 'tl_article', 384, 1386680394, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(133, 'headline', 57, 'tl_article', 128, 1386680455, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:2:\"CD\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(134, 'module', 57, 'tl_article', 256, 1386680470, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 69, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(135, 'module', 57, 'tl_article', 384, 1386680485, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(136, 'headline', 61, 'tl_article', 128, 1386680517, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:8:\"Download\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(137, 'module', 61, 'tl_article', 256, 1386680508, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 69, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(138, 'module', 61, 'tl_article', 384, 1386680508, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(139, 'headline', 63, 'tl_article', 128, 1386680550, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:7:\"T-Shirt\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(140, 'module', 63, 'tl_article', 256, 1386680541, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 69, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(141, 'module', 63, 'tl_article', 384, 1386680541, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(143, 'module', 62, 'tl_article', 384, 1386778683, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 71, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(144, 'module', 63, 'tl_article', 512, 1386838719, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 73, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(145, 'table', 66, 'tl_article', 128, 1388496189, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31333a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31343a224f6e652057617920537472656574223b693a323b733a343a22343a3138223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31343a224e6f204561737920416374696f6e223b693a323b733a343a22343a3030223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a373a224d697261636c65223b693a323b733a343a22313a3538223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31383a2250696c6c2048696c6c20536572656e616465223b693a323b733a343a22333a3237223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31353a22446f6e277420466f72676574204d65223b693a323b733a343a22333a3133223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a32303a224b696d696b6f277320447265616d20486f757365223b693a323b733a343a22353a3237223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31373a22526573757272656374696f6e20536f6e67223b693a323b733a343a22333a3333223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31303a224669656c6420536f6e67223b693a323b733a343a22323a3139223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a333a224c6f77223b693a323b733a343a22333a3133223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31313a22426c75657320466f722044223b693a323b733a343a22333a3336223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a31373a2253686520446f6e6520546f6f204d756368223b693a323b733a343a22313a3238223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a333a22466978223b693a323b733a343a22353a3439223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(148, 'table', 67, 'tl_article', 128, 1388588927, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31343a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a353a22496e74726f223b693a323b733a343a22303a3137223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31383a22456c65637472696320556e636c652053616d223b693a323b733a343a22323a3535223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31313a224e61747572616c204a6f65223b693a323b733a343a22343a3132223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31313a224c61717565722048656164223b693a323b733a343a22333a3439223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a373a22416e7469706f70223b693a323b733a343a22353a3333223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31373a2245636c656374696320456c656374726963223b693a323b733a343a22383a3334223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a32303a224772656574205468652053616372656420436f77223b693a323b733a343a22353a3130223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a32353a224d616d61204469646e2774205261697365204e6f20466f6f6c223b693a323b733a343a22353a3034223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31383a2244697274792044726f776e696e67204d616e223b693a323b733a343a22343a3438223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31393a2242616c6c6164204f6620426f646163696f7573223b693a323b733a343a22333a3238223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a393a22506f776572204d6164223b693a323b733a343a22333a3432223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a33303a2246696e616c20566f79616765204f6620546865204c697175696420536b79223b693a323b733a343a22353a3339223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a33373a22436f61747461696c73204f6620412044656164204d616e202d20546865204865636b6c6572223b693a323b733a343a22393a3537223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(149, 'table', 68, 'tl_article', 128, 1388592033, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a373a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a363a22417363656e74223b693a323b733a353a2231373a3434223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31323a22427265616b7468726f756768223b693a323b733a353a2231313a3037223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31343a22426f6f6b204f6620466c69676874223b693a323b733a353a2231323a3335223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a393a22446563657074696f6e223b693a323b733a353a2231303a3331223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a373a2244657363656e74223b693a323b733a343a22343a3536223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31333a224772656174204d616368696e65223b693a323b733a343a22373a3237223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(150, 'table', 69, 'tl_article', 128, 1388592726, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31333a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a373a225061636b616765223b693a323b733a343a22373a3430223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31383a225765616b20416e6420506f7765726c657373223b693a323b733a343a22333a3135223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a353a224e6f6f7365223b693a323b733a343a22343a3533223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a343a22426c7565223b693a323b733a343a22343a3133223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a393a2256616e697368696e67223b693a323b733a343a22343a3531223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a383a22537472616e676572223b693a323b733a343a22333a3132223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a383a224f75747369646572223b693a323b733a343a22343a3036223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a363a224372696d6573223b693a323b733a343a22323a3334223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31383a224e757273652057686f204c6f766564204d65223b693a323b733a343a22343a3034223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a333a22506574223b693a323b733a343a22343a3334223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a373a224c756c6c616279223b693a323b733a343a22323a3031223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a373a2247726176697479223b693a323b733a343a22353a3036223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(151, 'table', 70, 'tl_article', 128, 1388593948, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31333a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31303a22417263617273656e616c223b693a323b733a343a22323a3535223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a32303a225061747465726e20416761696e73742055736572223b693a323b733a343a22333a3138223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31373a224f6e652041726d65642053636973736f72223b693a323b733a343a22343a3230223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31383a22536c65657077616c6b2043617073756c6573223b693a323b733a343a22333a3237223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a32303a22496e76616c6964204c697474657220446570742e223b693a323b733a343a22363a3035223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31383a224d616e6e657175696e2052657075626c6963223b693a323b733a343a22333a3033223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a383a22456e66696c616465223b693a323b733a343a22353a3031223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31383a22526f6c6f6465782050726f706167616e6461223b693a323b733a343a22323a3535223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31313a2251756172616e74696e6564223b693a323b733a343a22353a3235223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a393a22436f736d6f6e617574223b693a323b733a343a22333a3233223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a32303a224e6f6e2d5a65726f20506f73736962696c697479223b693a323b733a343a22353a3334223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a393a2243617461636f6d6273223b693a323b733a343a22343a3134223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', '');
INSERT INTO `tl_content` (`id`, `type`, `pid`, `ptable`, `sorting`, `tstamp`, `headline`, `text`, `addImage`, `showPreview`, `inline`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `markdownSource`, `code`, `url`, `target`, `overwriteLink`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `vimeo`, `posterSRC`, `playerSize`, `playerOptions`, `playerStart`, `playerStop`, `playerCaption`, `playerAspect`, `splashImage`, `playerPreload`, `playerColor`, `youtubeOptions`, `vimeoOptions`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `data`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`) VALUES
(152, 'table', 71, 'tl_article', 128, 1388595010, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31303a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31353a22577269737473204f66204b696e6773223b693a323b733a343a22373a3435223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a32373a224e6f7420496e205269766572732c2042757420496e2044726f7073223b693a323b733a343a22373a3438223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a383a2244756c63696e6561223b693a323b733a343a22373a3130223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31393a224f76657220526f6f7420416e642054686f726e223b693a323b733a343a22383a3330223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31313a223130303020536861726473223b693a323b733a343a22363a3137223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a33313a22416c6c204f7574204f662054696d652c20416c6c20496e746f205370616365223b693a323b733a343a22333a3033223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31303a22486f6c79205465617273223b693a323b733a343a22373a3034223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31363a22466972646f757320452042617265656e223b693a323b733a343a22373a3530223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31353a2247617264656e204f66204c69676874223b693a323b733a343a22393a3137223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(153, 'table', 72, 'tl_article', 128, 1388595588, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31313a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a32333a225075742054686520467265616b732055702046726f6e74223b693a323b733a343a22353a3134223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31303a2253697374657220446577223b693a323b733a343a22353a3335223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31373a224f6e65204164766963652c205370616365223b693a323b733a343a22353a3436223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31303a224d6167696320486f7572223b693a323b733a343a22353a3233223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31313a22496465616c204372617368223b693a323b733a343a22353a3030223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31343a22496e7374616e7420537472656574223b693a323b733a343a22363a3135223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a393a224d616764616c656e61223b693a323b733a343a22343a3538223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31373a224576657279626f64792773205765697264223b693a323b733a343a22343a3531223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a32393a224c65742773205365652057686f20476f657320446f776e204669727374223b693a323b733a343a22363a3233223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31373a22447265616d2053657175656e6365202331223b693a323b733a343a22363a3331223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(154, 'table', 73, 'tl_article', 128, 1388596444, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31343a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a353a22496e74726f223b693a323b733a343a22323a3138223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31303a2244757263686272756368223b693a323b733a343a22343a3232223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a32333a225175617369204d6f646f204c6f737420436f6e74726f6c223b693a323b733a343a22333a3534223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a32333a22537461647420446965204573204e696368742047696274223b693a323b733a343a22333a3531223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a363a22416e64657265223b693a323b733a343a22323a3536223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31363a224ec3a463687374652053746174696f6e223b693a323b733a343a22333a3533223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31313a2254776f696e6f6e6574776f223b693a323b733a343a22363a3338223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31393a22536965204b72696567656e20556e73204e6965223b693a323b733a343a22333a3034223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a32303a224c7569732056756974746f6e7320546174746f6f223b693a323b733a343a22323a3437223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a393a224d6172696875616e61223b693a323b733a343a22343a3139223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a31323a224d696b726f666f6e666f726d223b693a323b733a343a22343a3230223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a32333a225769722053696e6420446120576f204f62656e20497374223b693a323b733a343a22343a3537223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a31333a2247657420496e204d7920556e6f223b693a323b733a343a22323a3436223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(155, 'table', 74, 'tl_article', 128, 1388646075, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31373a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31333a2254686520476f64666174686572223b693a323b733a343a22323a3436223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a393a2244657220476f6c656d223b693a323b733a343a22323a3338223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a32303a224578706572696d656e7420496e20546572726f72223b693a323b733a343a22323a3430223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31353a224f6e652053746570204265796f6e64223b693a323b733a343a22323a3538223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a32373a224e69676874204f66205468652048756e746572202852656d697829223b693a323b733a343a22303a3538223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a393a22436170652046656172223b693a323b733a343a22313a3438223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31353a22526f73656d61727927732042616279223b693a323b733a343a22333a3230223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a32373a2254686520446576696c205269646573204f7574202852656d697829223b693a323b733a343a22313a3338223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31313a225370696465722042616279223b693a323b733a343a22323a3236223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a32313a22546865204f6d656e202841766520536174616e6929223b693a323b733a343a22313a3439223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a33343a2248656e72793a20506f727472616974204f6620412053657269616c204b696c6c6572223b693a323b733a343a22333a3038223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a383a2256656e6465747461223b693a323b733a343a22313a3539223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a383a22556e7469746c6564223b693a323b733a343a22303a3034223b7d693a31343b613a333a7b693a303b733a333a2231342e223b693a313b733a34323a22496e7665737469676174696f6e204f66204120436974697a656e2041626f766520537573706963696f6e223b693a323b733a343a22343a3030223b7d693a31353b613a333a7b693a303b733a333a2231352e223b693a313b733a32393a225477696e205065616b733a20466972652057616c6b2057697468204d65223b693a323b733a343a22333a3238223b7d693a31363b613a333a7b693a303b733a333a2231362e223b693a313b733a373a2243686172616465223b693a323b733a343a22333a3034223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(156, 'table', 75, 'tl_article', 128, 1388646791, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a383a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31313a224d75736963616c20426f78223b693a323b733a353a2231303a3239223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31383a22466f7220416273656e7420467269656e6473223b693a323b733a343a22313a3437223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a32373a2252657475726e204f6620546865204769616e7420486f6777656564223b693a323b733a343a22383a3039223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31323a22536576656e2053746f6e6573223b693a323b733a343a22353a3038223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31373a224861726f6c64205468652042617272656c223b693a323b733a343a22333a3030223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a393a224861726c657175696e223b693a323b733a343a22323a3535223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a32303a22466f756e7461696e204f662053616c6d61636973223b693a323b733a343a22383a3031223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(157, 'table', 76, 'tl_article', 128, 1388647377, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31353a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31353a2257696c6d612773205261696e626f77223b693a323b733a343a22333a3533223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a363a2249204b6e6f77223b693a323b733a343a22333a3431223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31373a22426973637569747320466f7220536d7574223b693a323b733a343a22323a3533223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31313a224d696c717565746f617374223b693a323b733a343a22333a3533223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a333a22546963223b693a323b733a343a22333a3430223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a353a22526f6c6c6f223b693a323b733a343a22323a3338223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31313a225374726565742043726162223b693a323b733a343a22333a3331223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a353a22436c65616e223b693a323b733a343a22323a3236223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31313a2256616363696e6174696f6e223b693a323b733a343a22333a3034223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31343a2242656175746966756c204c6f7665223b693a323b733a343a22323a3033223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a31303a225370656563686c657373223b693a323b733a343a22323a3538223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a31353a2253696c76657220486177616969616e223b693a323b733a343a22323a3038223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a393a224f7665727261746564223b693a323b733a343a22323a3430223b7d693a31343b613a333a7b693a303b733a333a2231342e223b693a313b733a383a2253616d2048656c6c223b693a323b733a343a22323a3039223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(158, 'table', 77, 'tl_article', 128, 1388647977, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31313a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31383a2253757065726865726f6573204f6620426d78223b693a323b733a343a22383a3035223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31363a224e6f7720596f752772652054616b656e223b693a323b733a343a22373a3030223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a393a2253746572656f646565223b693a323b733a353a2231333a3339223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31303a22586d6173205374657073223b693a323b733a353a2231313a3134223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31303a22526f6c6c657262616c6c223b693a323b733a343a22333a3437223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a33323a22536d616c6c204368696c6472656e20496e20546865204261636b67726f756e64223b693a323b733a343a22363a3531223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31353a225374616e6c6579204b75627269636b223b693a323b733a343a22343a3139223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31343a224368726973746d617320536f6e67223b693a323b733a343a22333a3236223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a32303a224275726e204769726c2050726f6d20517565656e223b693a323b733a343a22383a3333223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a393a22526167653a204d616e223b693a323b733a343a22353a3033223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(161, 'table', 78, 'tl_article', 128, 1388649240, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a373a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a383a224d6f64756c203432223b693a323b733a343a22363a3237223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31313a224d6f64756c2034315f3137223b693a323b733a353a2231343a3531223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31303a224d6f64756c2033395f38223b693a323b733a343a22373a3539223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a383a224d6f64756c203436223b693a323b733a343a22373a3136223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a383a224d6f64756c203435223b693a323b733a343a22393a3431223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a383a224d6f64756c203434223b693a323b733a343a22393a3233223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(162, 'table', 79, 'tl_article', 128, 1388650722, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31343a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a363a22477275646765223b693a323b733a343a22383a3336223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31393a22456f6e20426c75652041706f63616c79707365223b693a323b733a343a22313a3034223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a373a2250617469656e74223b693a323b733a343a22373a3133223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a363a224d616e747261223b693a323b733a343a22313a3132223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a363a2253636869736d223b693a323b733a343a22363a3437223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a373a2250617261626f6c223b693a323b733a343a22333a3034223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a383a2250617261626f6c61223b693a323b733a343a22363a3033223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31353a225469636b732026204c656563686573223b693a323b733a343a22383a3130223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a393a224c61746572616c6973223b693a323b733a343a22393a3234223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31313a22446973706f736974696f6e223b693a323b733a343a22343a3436223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a31303a225265666c656374696f6e223b693a323b733a353a2231313a3037223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a353a225472696164223b693a323b733a343a22383a3436223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a31333a224661616970204465204f696164223b693a323b733a343a22323a3339223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(163, 'module', 56, 'tl_article', 512, 1388651055, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 71, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(166, 'module', 57, 'tl_article', 512, 1388651134, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 73, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(167, 'table', 80, 'tl_article', 128, 1388651926, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31313a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a353a22496e74726f223b693a323b733a343a22313a3336223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31343a22537665666e2d472d456e676c6172223b693a323b733a353a2231303a3034223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31303a2253746172c3a16c667572223b693a323b733a343a22363a3437223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31353a22466c7567756672656c736172696e6e223b693a323b733a343a22373a3438223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31323a224ec3bd20426174746572c3ad223b693a323b733a343a22383a3131223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31353a22486a61727461c3b02048616d617374223b693a323b733a343a22373a3130223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a32373a225669c3b07261722056656c2054696c204c6f6674c3a172c3a17361223b693a323b733a353a2231303a3138223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31313a224f6c73656e204f6c73656e223b693a323b733a343a22383a3033223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31353a22c38167c3a6746973204279726a756e223b693a323b733a343a22373a3536223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a363a224176616c6f6e223b693a323b733a343a22343a3034223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(168, 'table', 81, 'tl_article', 128, 1388652559, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31303a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a383a224465616477696e67223b693a323b733a343a22393a3436223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a373a225368616c6c6f6e223b693a323b733a343a22343a3137223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a373a224c617a61727573223b693a323b733a343a22343a3138223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a343a2248616c6f223b693a323b733a343a22343a3338223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a33333a224172726976616e6720536f6d6577686572652028427574204e6f74204865726529223b693a323b733a353a2231323a3032223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31373a224d656c6c6f74726f6e2053637261746368223b693a323b733a343a22363a3537223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a383a224f70616e20436172223b693a323b733a343a22333a3436223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a32383a225374617274204f6620536f6d657468696e672042656175746966756c223b693a323b733a343a22373a3339223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a32303a22476c6173732041726d2053686174746572696e67223b693a323b733a343a22363a3137223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(169, 'table', 82, 'tl_article', 128, 1388653322, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a32313a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31353a2250726563696f7573205468696e6773223b693a323b733a343a22343a3330223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a363a22416e67656c73223b693a323b733a343a22343a3238223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a32323a2253696c656e7420416c6c205468657365205965617273223b693a323b733a343a22343a3131223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a31343a22436f726e666c616b65204769726c223b693a323b733a343a22353a3036223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a343a224d617279223b693a323b733a343a22343a3432223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a333a22476f64223b693a323b733a343a22333a3534223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a363a2257696e746572223b693a323b733a343a22353a3433223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a353a22537061726b223b693a323b733a343a22343a3133223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a383a2257617920446f776e223b693a323b733a343a22313a3531223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31383a2250726f66657373696f6e616c205769646f77223b693a323b733a343a22333a3438223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a393a224d722e205a65627261223b693a323b733a343a22313a3036223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a373a2243727563696679223b693a323b733a343a22353a3031223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a31323a224d6520616e6420612047756e223b693a323b733a343a22333a3433223b7d693a31343b613a333a7b693a303b733a333a2231342e223b693a313b733a353a22426c697373223b693a323b733a343a22333a3335223b7d693a31353b613a333a7b693a303b733a333a2231352e223b693a313b733a31333a22506c6179626f79204d6f6d6d79223b693a323b733a343a22343a3036223b7d693a31363b613a333a7b693a303b733a333a2231362e223b693a313b733a31313a2242616b65722042616b6572223b693a323b733a343a22333a3133223b7d693a31373b613a333a7b693a303b733a333a2231372e223b693a313b733a31373a225465617220496e20596f75722048616e64223b693a323b733a343a22343a3339223b7d693a31383b613a333a7b693a303b733a333a2231382e223b693a313b733a31323a22537765657420447265616d73223b693a323b733a343a22333a3430223b7d693a31393b613a333a7b693a303b733a333a2231392e223b693a313b733a31373a224a61636b6965277320537472656e677468223b693a323b733a343a22343a3236223b7d693a32303b613a333a7b693a303b733a333a2232302e223b693a313b733a32353a22536e6f772043686572726965732046726f6d204672616e6365223b693a323b733a343a22323a3536223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(170, 'table', 83, 'tl_article', 128, 1388654811, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a393a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31393a22546865204e6174696f6e616c20416e7468656d223b693a323b733a343a22343a3538223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31363a2249204d696768742042652057726f6e67223b693a323b733a343a22343a3532223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31323a224d6f726e696e672042656c6c223b693a323b733a343a22343a3134223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a32303a224c696b65205370696e6e696e6720506c61746573223b693a323b733a343a22333a3437223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31303a224964696f746865717565223b693a323b733a343a22343a3235223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a32393a2245766572797468696e6720496e2049747320526967687420506c616365223b693a323b733a343a22373a3433223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31373a22446f6c6c61727320416e642043656e7473223b693a323b733a343a22353a3133223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a31353a2254757265204c6f7665205761697473223b693a323b733a343a22353a3032223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(171, 'table', 84, 'tl_article', 128, 1388655381, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31353a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31373a224920576f6e2774204261636b20446f776e223b693a323b733a343a22323a3039223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31323a22536f6c6974617279204d616e223b693a323b733a343a22323a3235223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31383a2254686174204c75636b79204f6c642053756e223b693a323b733a343a22323a3335223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a333a224f6e65223b693a323b733a343a22333a3533223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a363a224e6f626f6479223b693a323b733a343a22333a3134223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31363a2249205365652041204461726b6e657373223b693a323b733a343a22333a3432223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31303a224d657263792053656174223b693a323b733a343a22343a3335223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a32313a22576f756c6420596f75204c61792057697468204d65223b693a323b733a343a22323a3431223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31373a224669656c64204f66204469616d6f6e6473223b693a323b733a343a22333a3135223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31343a224265666f7265204d792054696d65223b693a323b733a343a22323a3535223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a31333a22436f756e747279205472617368223b693a323b733a343a22313a3437223b7d693a31323b613a333a7b693a303b733a333a2231322e223b693a313b733a32313a224d617279204f66205468652057696c64204d6f6f72223b693a323b733a343a22323a3332223b7d693a31333b613a333a7b693a303b733a333a2231332e223b693a313b733a31353a2249276d204c656176696e27204e6f77223b693a323b733a343a22333a3036223b7d693a31343b613a333a7b693a303b733a333a2231342e223b693a313b733a31383a22576179666172696e6720537472616e676572223b693a323b733a343a22333a3139223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(172, 'table', 85, 'tl_article', 128, 1388655821, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, 0x613a31323a7b693a303b613a333a7b693a303b733a303a22223b693a313b733a34353a227b7b69666c6e673a3a64657d7d546974656c7b7b69666c6e673a3a656e7d7d547261636b7b7b69666c6e677d7d223b693a323b733a34333a227b7b69666c6e673a3a64657d7d5a6569747b7b69666c6e673a3a656e7d7d54696d657b7b69666c6e677d7d223b7d693a313b613a333a7b693a303b733a323a22312e223b693a313b733a31393a22426c6f636b20526f636b696e27204265617473223b693a323b733a343a22353a3134223b7d693a323b613a333a7b693a303b733a323a22322e223b693a313b733a31373a2244696720596f7572204f776e20486f6c65223b693a323b733a343a22353a3237223b7d693a333b613a333a7b693a303b733a323a22332e223b693a313b733a31313a22456c656b74726f62616e6b223b693a323b733a343a22383a3139223b7d693a343b613a333a7b693a303b733a323a22342e223b693a313b733a343a2250696b75223b693a323b733a343a22343a3535223b7d693a353b613a333a7b693a303b733a323a22352e223b693a313b733a31313a2253657474696e672053756e223b693a323b733a343a22353a3239223b7d693a363b613a333a7b693a303b733a323a22362e223b693a313b733a31373a22497420446f65736e2774204d6174746572223b693a323b733a343a22363a3134223b7d693a373b613a333a7b693a303b733a323a22372e223b693a313b733a31393a22446f6e27742053746f702054686520526f636b223b693a323b733a343a22343a3530223b7d693a383b613a333a7b693a303b733a323a22382e223b693a313b733a32323a22476574205570204f6e204974204c696b652054686973223b693a323b733a343a22323a3437223b7d693a393b613a333a7b693a303b733a323a22392e223b693a313b733a31383a224c6f737420496e20546865204b2d486f6c65223b693a323b733a343a22333a3533223b7d693a31303b613a333a7b693a303b733a333a2231302e223b693a313b733a31363a22576865726520446f204920426567696e223b693a323b733a343a22363a3537223b7d693a31313b613a333a7b693a303b733a333a2231312e223b693a313b733a32383a2254686520507269766174652050737963686564656c6963205265656c223b693a323b733a343a22393a3231223b7d7d, '', '1', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(173, 'text', 44, 'tl_article', 256, 1393518454, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', '<p><strong>Gutscheincode:</strong> 123456789</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(174, 'text', 45, 'tl_article', 256, 1393518508, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', '<p><strong>Promotional Codes:</strong> 123456789</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(183, 'headline', 88, 'tl_article', 128, 1395210835, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Sammelsurium\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(184, 'module', 88, 'tl_article', 256, 1395210829, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 68, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(185, 'module', 88, 'tl_article', 384, 1395210829, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(187, 'headline', 89, 'tl_article', 128, 1395211859, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:10:\"Salmagundi\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(188, 'module', 89, 'tl_article', 256, 1395211847, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 69, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(189, 'module', 89, 'tl_article', 384, 1395211847, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(192, 'text', 12, 'tl_article', 256, 1396259036, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', '<p>Die Isotope-Demo baut auf dem Design der Contao Official Demo auf.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(193, 'text', 12, 'tl_article', 384, 1396271128, 'a:2:{s:4:\"unit\";s:2:\"h3\";s:5:\"value\";s:0:\"\";}', '<h3>Contao Official Demo</h3>\n<p>Für die Contao Official Demo gebührt der Dank folgenden Personen:</p>\n<p>Das Screendesign wurde von borowiakziehe KG gesponsort und von Hannes Oertel gestaltet.</p>\n<p>Umsetzung:</p>\n<ol>\n<li>Joe Ray Gregory | <a href=\"http://borowiakziehe.de/\" target=\"_blank\">borowiakziehe.de</a></li>\n<li>Sascha Müller | <a href=\"http://bytepuzzle.de/\" target=\"_blank\">bytepuzzle.de</a></li>\n<li>Felix Pfeiffer | <a href=\"http://www.felixpfeiffer.com/\" target=\"_blank\">www.felixpfeiffer.com</a></li>\n<li>Stefan Eipeltauer | <a href=\"http://www.craftandvalue.com/\" target=\"_blank\">www.craftandvalue.com</a></li>\n</ol>\n<p><strong>Helfer und Tester:</strong> Alexander[nbsp]Bröss, Christian[nbsp]de[nbsp]la[nbsp]Haye, Fabian[nbsp]Fauth, Carolina[nbsp]Köhn, Dolores[nbsp]Moser, Yanick[nbsp]Witschi, Marc[nbsp]Reimann, Lars[nbsp]Tubies, Stefan[nbsp]Lindecke, Oliver[nbsp]Lohoff und Marie[nbsp]Dietz.</p>\n<h3>Isotope eCommerce Demo</h3>\n<p>Umsetzung:</p>\n<ol>\n<li>Bjarke Ammann | <a href=\"http://www.netzarbeiter.ch/\" target=\"_blank\">netzarbeiter</a></li>\n</ol>\n<p>Die Daten für den CD-Bereich hat uns <a href=\"http://www.cede.ch/\" target=\"_blank\">cede.ch</a> zur Verfügung gestellt.</p>\n<p><a href=\"http://www.weitzeldesign.com/\" target=\"_blank\">Thomas Weitzel</a> hat mir in einer Nacht-und-Nebel-Aktion das T-Shirt auf den Leib geschneidert.</p>\n<p>Die Icons von <a href=\"http://fortawesome.github.io/Font-Awesome/\" target=\"_blank\">Font Awesome</a> runden das Design ab.</p>\n<p>Zu guter Letzt - ein riesiges Dankeschön an Leo Feyer und das Contao-Team für ein grossartiges <a href=\"https://contao.org/\" target=\"_blank\">CMS</a>.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(197, 'text', 13, 'tl_article', 256, 1396271943, 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', '<p>The Isotope Demo is based on the design of the Contao Official Demo.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(198, 'text', 13, 'tl_article', 384, 1396275233, 'a:2:{s:4:\"unit\";s:2:\"h3\";s:5:\"value\";s:0:\"\";}', '<h3>Contao Official Demo</h3>\n<p>Thank you to the following people who have worked on the Contao Official Demo:</p>\n<p>The screen design for the Contao Offical Demo is sponsored by borowiakziehe KG. It has been designed by Hannes Oertel whom we would like to thank for the great work.</p>\n<p>Implementation:</p>\n<ol>\n<li>Joe Ray Gregory | <a href=\"http://borowiakziehe.de/\" target=\"_blank\">borowiakziehe.de</a></li>\n<li>Sascha Müller | <a href=\"http://bytepuzzle.de/\" target=\"_blank\">bytepuzzle.de</a></li>\n<li>Felix Pfeiffer | <a href=\"http://www.felixpfeiffer.com/\" target=\"_blank\">www.felixpfeiffer.com</a></li>\n<li>Stefan Eipeltauer | <a href=\"http://www.craftandvalue.com/\" target=\"_blank\">www.craftandvalue.com</a></li>\n</ol>\n<p><strong>Helpers and tester:</strong> Alexander[nbsp]Bröss, Christian[nbsp]de[nbsp]la[nbsp]Haye, Fabian[nbsp]Fauth, Carolina[nbsp]Köhn, Dolores[nbsp]Moser, Yanick[nbsp]Witschi, Marc[nbsp]Reimann, Lars[nbsp]Tubies, Stefan[nbsp]Lindecke, Oliver[nbsp]Lohoff and Marie[nbsp]Dietz.</p>\n<h3>Isotope eCommerce Demo</h3>\n<p>Implementation</p>\n<ol>\n<li>Bjarke Ammann | <a href=\"http://www.netzarbeiter.ch/\" target=\"_blank\">netzarbeiter</a></li>\n</ol>\n<p><a href=\"http://www.cede.ch/\" target=\"_blank\">cede.ch</a> provided us with the data for the CD section.</p>\n<p><a href=\"http://www.weitzeldesign.com/\" target=\"_blank\">Thomas Weitzel</a> helped us out designing the t-shirt.</p>\n<p>The fancy icons are made with <a href=\"http://fortawesome.github.io/Font-Awesome/\" target=\"_blank\">Font Awesome</a>.</p>\n<p>Lust but not least - a big thank you to Leo Feyer and the Contao team for this great <a href=\"https://contao.org/\" target=\"_blank\">CMS</a>.</p>', '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(199, 'module', 5, 'tl_article', 384, 1401194629, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(202, 'module', 93, 'tl_article', 64, 1565597030, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 70, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(204, 'module', 92, 'tl_article', 128, 1421790546, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 66, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(206, 'module', 92, 'tl_article', 256, 1504878477, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 75, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(207, 'headline', 92, 'tl_article', 64, 1421791110, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:14:\"Produkt-Filter\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(208, 'module', 93, 'tl_article', 128, 1565597001, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 76, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', '');
INSERT INTO `tl_content` (`id`, `type`, `pid`, `ptable`, `sorting`, `tstamp`, `headline`, `text`, `addImage`, `showPreview`, `inline`, `overwriteMeta`, `singleSRC`, `alt`, `imageTitle`, `size`, `imagemargin`, `imageUrl`, `fullsize`, `caption`, `floating`, `html`, `listtype`, `listitems`, `tableitems`, `summary`, `thead`, `tfoot`, `tleft`, `sortable`, `sortIndex`, `sortOrder`, `mooHeadline`, `mooStyle`, `mooClasses`, `highlight`, `markdownSource`, `code`, `url`, `target`, `overwriteLink`, `titleText`, `linkTitle`, `embed`, `rel`, `useImage`, `multiSRC`, `orderSRC`, `useHomeDir`, `perRow`, `perPage`, `numberOfItems`, `sortBy`, `metaIgnore`, `galleryTpl`, `customTpl`, `playerSRC`, `youtube`, `vimeo`, `posterSRC`, `playerSize`, `playerOptions`, `playerStart`, `playerStop`, `playerCaption`, `playerAspect`, `splashImage`, `playerPreload`, `playerColor`, `youtubeOptions`, `vimeoOptions`, `sliderDelay`, `sliderSpeed`, `sliderStartSlide`, `sliderContinuous`, `data`, `cteAlias`, `articleAlias`, `article`, `form`, `module`, `protected`, `groups`, `guests`, `cssID`, `invisible`, `start`, `stop`, `com_order`, `com_perPage`, `com_moderate`, `com_bbcode`, `com_disableCaptcha`, `com_requireLogin`, `com_template`) VALUES
(209, 'headline', 94, 'tl_article', 128, 1421792287, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:14:\"Product Filter\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(210, 'module', 94, 'tl_article', 256, 1421792238, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 67, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(211, 'module', 94, 'tl_article', 384, 1504878503, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 79, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(213, 'module', 95, 'tl_article', 128, 1504878284, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 78, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(214, 'module', 44, 'tl_article', 384, 1421794464, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 81, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(215, 'module', 44, 'tl_article', 512, 1421794683, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 82, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(216, 'module', 45, 'tl_article', 384, 1421823978, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 83, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(217, 'module', 45, 'tl_article', 512, 1421823996, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 84, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(218, 'module', 99, 'tl_article', 128, 1504875960, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 86, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(219, 'module', 99, 'tl_article', 64, 1504876911, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 88, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(221, 'headline', 100, 'tl_article', 128, 1504877119, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:10:\"Favourites\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(222, 'module', 100, 'tl_article', 256, 1504876212, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 56, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(223, 'module', 100, 'tl_article', 384, 1504876205, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 87, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(224, 'alias', 99, 'tl_article', 48, 1504876936, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 7, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(225, 'alias', 99, 'tl_article', 56, 1504876928, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 5, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(226, 'alias', 99, 'tl_article', 60, 1504876921, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 6, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(227, 'headline', 99, 'tl_article', 62, 1504876898, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(228, 'headline', 99, 'tl_article', 96, 1504876886, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:9:\"Favoriten\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(229, 'alias', 100, 'tl_article', 64, 1504877022, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 72, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(230, 'alias', 100, 'tl_article', 96, 1504877028, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 76, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(231, 'alias', 100, 'tl_article', 112, 1504877038, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 77, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(232, 'headline', 100, 'tl_article', 116, 1504877101, 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:5:\"Login\";}', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 0, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(233, 'module', 100, 'tl_article', 120, 1504877067, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 89, '', NULL, '1', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(234, 'module', 95, 'tl_article', 64, 1504878304, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 77, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(236, 'module', 103, 'tl_article', 128, 1566542275, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 91, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(237, 'module', 103, 'tl_article', 256, 1566540772, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 92, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(238, 'module', 104, 'tl_article', 64, 1566550807, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 94, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(239, 'module', 104, 'tl_article', 128, 1566550821, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 95, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(241, 'module', 105, 'tl_article', 128, 1566574878, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 21, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', ''),
(242, 'module', 106, 'tl_article', 128, 1566574901, '', NULL, '', '', '', '', NULL, '', '', '', '', '', '', '', 'above', NULL, '', NULL, NULL, '', '', '', '', '', 0, 'ascending', '', '', '', '', 'sourceText', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', 4, 0, 0, '', '', '', '', NULL, '', '', NULL, '', NULL, 0, 0, '', 'none', '', '', '', NULL, NULL, 0, 300, 0, '', NULL, 0, 0, 0, 0, 57, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', '', 'ascending', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_crawl_queue`
--

CREATE TABLE `tl_crawl_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` char(128) NOT NULL,
  `uri` longtext NOT NULL,
  `uri_hash` char(40) NOT NULL,
  `found_on` longtext DEFAULT NULL,
  `level` smallint(6) NOT NULL,
  `processed` tinyint(1) NOT NULL,
  `tags` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_cron_job`
--

CREATE TABLE `tl_cron_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastRun` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_cron_job`
--

INSERT INTO `tl_cron_job` (`id`, `name`, `lastRun`) VALUES
(1, 'Contao\\CoreBundle\\Cron\\LegacyCron::onMinutely', '2023-10-04 02:13:00'),
(2, 'Contao\\CoreBundle\\Cron\\LegacyCron::onHourly', '2023-10-04 02:07:19'),
(3, 'Contao\\CoreBundle\\Cron\\LegacyCron::onDaily', '2023-10-04 02:07:19'),
(4, 'Contao\\CoreBundle\\Cron\\LegacyCron::onWeekly', '2023-10-04 02:07:19'),
(5, 'Contao\\CoreBundle\\Cron\\LegacyCron::onMonthly', '2023-10-04 02:07:19'),
(6, 'Contao\\CoreBundle\\Cron\\PurgeExpiredDataCron::onHourly', '2023-10-04 02:07:19'),
(7, 'Contao\\CoreBundle\\Cron\\PurgePreviewLinksCron', '2023-10-04 02:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `tl_faq`
--

CREATE TABLE `tl_faq` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answer` text DEFAULT NULL,
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `addImage` char(1) NOT NULL DEFAULT '',
  `overwriteMeta` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `imageTitle` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT 'above',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob DEFAULT NULL,
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `languageMain` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_faq_category`
--

CREATE TABLE `tl_faq_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(12) NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `master` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_files`
--

CREATE TABLE `tl_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` binary(16) DEFAULT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `uuid` binary(16) DEFAULT NULL,
  `type` varchar(16) NOT NULL DEFAULT '',
  `path` varchar(1022) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `extension` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `lastModified` int(10) UNSIGNED DEFAULT NULL,
  `found` char(1) NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `importantPartX` double UNSIGNED NOT NULL DEFAULT 0,
  `importantPartY` double UNSIGNED NOT NULL DEFAULT 0,
  `importantPartWidth` double UNSIGNED NOT NULL DEFAULT 0,
  `importantPartHeight` double UNSIGNED NOT NULL DEFAULT 0,
  `meta` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_files`
--

INSERT INTO `tl_files` (`id`, `pid`, `tstamp`, `uuid`, `type`, `path`, `extension`, `hash`, `lastModified`, `found`, `name`, `importantPartX`, `importantPartY`, `importantPartWidth`, `importantPartHeight`, `meta`) VALUES
(13, 0xb8a1c9d6a48511e392f3bc305b35679a, 1403685443, 0xf3e4483a528611e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/img/isotope_placeholder_image.png', 'png', 'a9d84b0cd9f2e69fb76574844244e678', NULL, '1', 'isotope_placeholder_image.png', 0, 0, 0, 0, NULL),
(17, 0xe56d022860d811e39eabbc305b35679a, 1403685442, 0x429c7be855a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/css/font-awesome.css', 'css', '1f9e9d1a5a1d347d945ef4b7727f2ea0', NULL, '1', 'font-awesome.css', 0, 0, 0, 0, NULL),
(18, 0xe56d023c60d811e39eabbc305b35679a, 1403685442, 0x429c7bca55a511e38a28bc305b35679a, 'folder', 'files/isotope-demo/theme/font-awesome/fonts', '', '0b95d3aa98f5fd0e9f7af9607205b64d', NULL, '1', 'fonts', 0, 0, 0, 0, NULL),
(19, 0x429c7bca55a511e38a28bc305b35679a, 1403685442, 0x429c7bac55a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/fonts/fontawesome-webfont.eot', 'eot', '8b27bc96115c2d24350f0d09e6a9433f', NULL, '1', 'fontawesome-webfont.eot', 0, 0, 0, 0, NULL),
(20, 0x429c7bca55a511e38a28bc305b35679a, 1403685442, 0x429c7b8e55a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/fonts/fontawesome-webfont.svg', 'svg', '0a799148a50bb02c6f380eabd8d97559', NULL, '1', 'fontawesome-webfont.svg', 0, 0, 0, 0, NULL),
(21, 0x429c7bca55a511e38a28bc305b35679a, 1403685442, 0x429c7b7055a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/fonts/fontawesome-webfont.ttf', 'ttf', 'dcb26c7239d850266941e80370e207c1', NULL, '1', 'fontawesome-webfont.ttf', 0, 0, 0, 0, NULL),
(22, 0x429c7bca55a511e38a28bc305b35679a, 1403685442, 0x429c7b5c55a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/fonts/fontawesome-webfont.woff', 'woff', '3293616ec0c605c7c2db25829a0a509e', NULL, '1', 'fontawesome-webfont.woff', 0, 0, 0, 0, NULL),
(23, 0x429c7bca55a511e38a28bc305b35679a, 1403685442, 0x429c7b3e55a511e38a28bc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/fonts/FontAwesome.otf', 'otf', '3f3a623e88cb5c62eaa2367195e98b67', NULL, '1', 'FontAwesome.otf', 0, 0, 0, 0, NULL),
(29, 0xe9f1e8ccbd0711e988c4c3bf7409cff3, 1386323030, 0xe96e3aa25e5a11e39eabbc305b35679a, 'file', 'files/isotope-demo/theme/css/contaodemo.css', 'css', 'd903483639ebcd94ccfcad0a14023517', NULL, '1', 'contaodemo.css', 0, 0, 0, 0, NULL),
(32, 0xb8a1c9d6a48511e392f3bc305b35679a, 1386323961, 0x13ff255e5e5d11e39eabbc305b35679a, 'file', 'files/isotope-demo/theme/img/btn_search.gif', 'gif', 'a00ce18652c69678332d27bd0ef558c2', NULL, '1', 'btn_search.gif', 0, 0, 0, 0, NULL),
(36, 0xb8a1c9f4a48511e392f3bc305b35679a, 1565617787, 0xe56d023c60d811e39eabbc305b35679a, 'folder', 'files/isotope-demo/theme/font-awesome', '', 'd7380387bdb5e5e259695eed3532436a', NULL, '1', 'font-awesome', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(37, 0x33360000000000000000000000000000, 1386597043, 0xe56d022860d811e39eabbc305b35679a, 'folder', 'files/isotope-demo/theme/font-awesome/css', '', 'afab770275054ff9a13e52e4289b6335', NULL, '1', 'css', 0, 0, 0, 0, NULL),
(38, 0x33370000000000000000000000000000, 1386597043, 0xe56d021e60d811e39eabbc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/css/font-awesome.min.css', 'css', 'fa6868c22ceca7f65191ec25c68a9bb5', NULL, '1', 'font-awesome.min.css', 0, 0, 0, 0, NULL),
(39, NULL, 1565618674, 0x9a9b2122611811e39eabbc305b35679a, 'folder', 'files/isotope-demo', '', '11ba72dca9437995f26dafacb712c345', NULL, '1', 'isotope-demo', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(40, 0xe9f1e8ccbd0711e988c4c3bf7409cff3, 1386624405, 0x9a9b210e611811e39eabbc305b35679a, 'file', 'files/isotope-demo/theme/css/isotopedemo.css', 'css', '0d7e8303a407d831b705d9933bd8fe95', NULL, '1', 'isotopedemo.css', 0, 0, 0, 0, NULL),
(79, 0x96d9cfc9bd0811e988c4c3bf7409cff3, 1393516238, 0xe76bfbd89fc611e392f3bc305b35679a, 'folder', 'files/isotope-demo/download/contao', '', '3ed502558752dfad9c50d8e8ea862d90', NULL, '1', 'contao', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(80, 0xe76bfbd89fc611e392f3bc305b35679a, 1423817538, 0x0a6765829fc711e392f3bc305b35679a, 'file', 'files/isotope-demo/download/contao/contao-3.4.4.zip', 'zip', '6b9b27d9cedc6e9282c0623f593e3a31', NULL, '1', 'contao-3.4.4.zip', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(83, 0xe76bfbd89fc611e392f3bc305b35679a, 1423817557, 0x0a6765469fc711e392f3bc305b35679a, 'file', 'files/isotope-demo/download/contao/contao-3.2.19.zip', 'zip', '1926cd3c153fbb2808843b11d3c05df0', NULL, '1', 'contao-3.2.19.zip', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(84, 0x9a9b2122611811e39eabbc305b35679a, 1565618680, 0xb8a1c9f4a48511e392f3bc305b35679a, 'folder', 'files/isotope-demo/theme', '', 'e6488bf2adfe17ca3d68279ef21ce499', NULL, '1', 'theme', 0, 0, 0, 0, 0x613a313a7b733a323a22656e223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(85, 0xb8a1c9f4a48511e392f3bc305b35679a, 1394037998, 0xb8a1c9d6a48511e392f3bc305b35679a, 'folder', 'files/isotope-demo/theme/img', '', 'db4d071b94b344b691320b33a4de1645', NULL, '1', 'img', 0, 0, 0, 0, NULL),
(86, 0xb8a1c9d6a48511e392f3bc305b35679a, 1394037998, 0xb8a1c9cca48511e392f3bc305b35679a, 'file', 'files/isotope-demo/theme/img/logo.png', 'png', '0510102603154721b083abcdd6bf7b70', NULL, '1', 'logo.png', 0, 0, 0, 0, NULL),
(107, 0xb8a1c9d6a48511e392f3bc305b35679a, 1395330113, 0x291ccff0b04611e392f3bc305b35679a, 'file', 'files/isotope-demo/theme/img/isotope_watermark_image.png', 'png', '35014bf718952f35d2caa19497e839f8', NULL, '1', 'isotope_watermark_image.png', 0, 0, 0, 0, NULL),
(137, 0xe76bfbd89fc611e392f3bc305b35679a, 1416921374, 0x132c4d8cea3011e3990abc305b35679a, 'file', 'files/isotope-demo/download/contao/contao-3.3.7.zip', 'zip', '1926cd3c153fbb2808843b11d3c05df0', NULL, '1', 'contao-3.3.7.zip', 0, 0, 0, 0, 0x613a313a7b733a323a226465223b613a333a7b733a353a227469746c65223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(138, 0xb8a1c9d6a48511e392f3bc305b35679a, 1403685442, 0xed387b84fc4311e3990abc305b35679a, 'folder', 'files/isotope-demo/theme/img/bg', '', '6c1c16c1a017ac3d4b9b14ce7f9d7dbc', NULL, '1', 'bg', 0, 0, 0, 0, NULL),
(139, 0xed387b84fc4311e3990abc305b35679a, 1403685442, 0xed387b7afc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/bg/body.png', 'png', '4896af3604f1842836af1babf5d89725', NULL, '1', 'body.png', 0, 0, 0, 0, NULL),
(140, 0xed387b84fc4311e3990abc305b35679a, 1403685442, 0xed387b66fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/bg/sitemap_first.png', 'png', '648784faa178225f4d84f9ebbdc45e41', NULL, '1', 'sitemap_first.png', 0, 0, 0, 0, NULL),
(141, 0xed387b84fc4311e3990abc305b35679a, 1403685442, 0xed387b5cfc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/bg/sitemap_last.png', 'png', '41beb1ede8fca9789207fcde81365acb', NULL, '1', 'sitemap_last.png', 0, 0, 0, 0, NULL),
(142, 0xed387b84fc4311e3990abc305b35679a, 1403685442, 0xed387b52fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/bg/sitemap_normal.png', 'png', '6919aa5f82a445da42dfca1444a46d6b', NULL, '1', 'sitemap_normal.png', 0, 0, 0, 0, NULL),
(143, 0xb8a1c9d6a48511e392f3bc305b35679a, 1403685442, 0xed387b48fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/btn_rss.gif', 'gif', 'e633adc24026e9b093846deb09a7b33a', NULL, '1', 'btn_rss.gif', 0, 0, 0, 0, NULL),
(144, 0xb8a1c9d6a48511e392f3bc305b35679a, 1403685442, 0xed387b3efc4311e3990abc305b35679a, 'folder', 'files/isotope-demo/theme/img/icons', '', '99ac0e65a078433318ccf46901350601', NULL, '1', 'icons', 0, 0, 0, 0, NULL),
(145, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed387b2afc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-bottom.png', 'png', '3eaec4cb41cf969b6f94d46ef4e53ab2', NULL, '1', 'icon_arrow-bottom.png', 0, 0, 0, 0, NULL),
(146, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed387b20fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-right-darkorange.png', 'png', '1234e8a168b299fad503b255427ba2b9', NULL, '1', 'icon_arrow-right-darkorange.png', 0, 0, 0, 0, NULL),
(147, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed387adafc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-right-grey.png', 'png', '0bbc697fa88b983d35f37b763ec7f5d4', NULL, '1', 'icon_arrow-right-grey.png', 0, 0, 0, 0, NULL),
(148, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed437098fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-right-orange.png', 'png', 'a8b89aaf80f8f220f2eecc2b95879a50', NULL, '1', 'icon_arrow-right-orange.png', 0, 0, 0, 0, NULL),
(149, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed43708efc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-small.png', 'png', '2433f5042b2565102b1ff3c32f69ddd1', NULL, '1', 'icon_arrow-small.png', 0, 0, 0, 0, NULL),
(150, 0xed387b3efc4311e3990abc305b35679a, 1403685442, 0xed43707afc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/icons/icon_arrow-top.png', 'png', '15ac4e650587413df1cdc9cbe4f12b7e', NULL, '1', 'icon_arrow-top.png', 0, 0, 0, 0, NULL),
(152, 0xb8a1c9d6a48511e392f3bc305b35679a, 1403685442, 0xed437066fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/img/nav_mobile.png', 'png', '7f546a33f7e468734a8276aaba27b42d', NULL, '1', 'nav_mobile.png', 0, 0, 0, 0, NULL),
(160, 0xe56d023c60d811e39eabbc305b35679a, 1403685442, 0xed6c25f6fc4311e3990abc305b35679a, 'folder', 'files/isotope-demo/theme/font-awesome/less', '', 'dc21da5b6ee10abd20bd3c6680acee84', NULL, '1', 'less', 0, 0, 0, 0, NULL),
(161, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c25e2fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/bordered-pulled.less', 'less', '5b3f3e1353ea7ab9d10fd7598fbd214b', NULL, '1', 'bordered-pulled.less', 0, 0, 0, 0, NULL),
(162, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c25cefc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/core.less', 'less', 'e0425dae16b4e10d439ef079bc75ea68', NULL, '1', 'core.less', 0, 0, 0, 0, NULL),
(163, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c25bafc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/fixed-width.less', 'less', '5e07ec001f8d21bd279c12ee542813f7', NULL, '1', 'fixed-width.less', 0, 0, 0, 0, NULL),
(164, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c259cfc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/font-awesome.less', 'less', '4201fdd32cc7a7d2f6ed2706800faf75', NULL, '1', 'font-awesome.less', 0, 0, 0, 0, NULL),
(165, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c2588fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/icons.less', 'less', 'cee820602539e69d61c4dd782536e1a0', NULL, '1', 'icons.less', 0, 0, 0, 0, NULL),
(166, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c2574fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/larger.less', 'less', '8cb65280c0f889daf72626c21a7c8628', NULL, '1', 'larger.less', 0, 0, 0, 0, NULL),
(167, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed6c24d4fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/list.less', 'less', '291fbd1d05eb7eba6172f738837794b6', NULL, '1', 'list.less', 0, 0, 0, 0, NULL),
(168, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed8e9d7afc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/mixins.less', 'less', '0193675166be1acb0da06df07c0aa14e', NULL, '1', 'mixins.less', 0, 0, 0, 0, NULL),
(169, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed8e9d66fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/path.less', 'less', 'baaf503b6821b49336f242445bcf26ca', NULL, '1', 'path.less', 0, 0, 0, 0, NULL),
(170, 0xed6c25f6fc4311e3990abc305b35679a, 1403685442, 0xed8e9d48fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/rotated-flipped.less', 'less', '09a3b97189c3c320ac7a1649dd6bbad9', NULL, '1', 'rotated-flipped.less', 0, 0, 0, 0, NULL),
(171, 0xed6c25f6fc4311e3990abc305b35679a, 1403685443, 0xed8e9d34fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/spinning.less', 'less', 'c4142d6d9e832fa1f6683f19c9799c06', NULL, '1', 'spinning.less', 0, 0, 0, 0, NULL),
(172, 0xed6c25f6fc4311e3990abc305b35679a, 1403685443, 0xed8e9d20fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/stacked.less', 'less', '518e2b2d263982d2caa1e6514b4b4eac', NULL, '1', 'stacked.less', 0, 0, 0, 0, NULL),
(173, 0xed6c25f6fc4311e3990abc305b35679a, 1403685443, 0xed8e9d0cfc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/less/variables.less', 'less', '82549d7e42c5d301b61c7a694d3a9dbd', NULL, '1', 'variables.less', 0, 0, 0, 0, NULL),
(174, 0xe56d023c60d811e39eabbc305b35679a, 1403685443, 0xed8e9cf8fc4311e3990abc305b35679a, 'folder', 'files/isotope-demo/theme/font-awesome/scss', '', 'b33587c379ba6a5ea8f3b27ced8284b6', NULL, '1', 'scss', 0, 0, 0, 0, NULL),
(175, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xed8e9ce4fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_bordered-pulled.scss', 'scss', 'e4f85472a1f6ed0e23a473b8e00ef071', NULL, '1', '_bordered-pulled.scss', 0, 0, 0, 0, NULL),
(176, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xed8e9cc6fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_core.scss', 'scss', '460139739224bc62d9957837978c4e22', NULL, '1', '_core.scss', 0, 0, 0, 0, NULL),
(177, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xed8e9c26fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_fixed-width.scss', 'scss', '9277ab6964a434d499873687b00be906', NULL, '1', '_fixed-width.scss', 0, 0, 0, 0, NULL),
(178, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda931f8fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_icons.scss', 'scss', '691e5398b8513cd310e847aae3112b27', NULL, '1', '_icons.scss', 0, 0, 0, 0, NULL),
(179, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda931e4fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_larger.scss', 'scss', 'e95931566f6fc6ad5685c4fa9802e206', NULL, '1', '_larger.scss', 0, 0, 0, 0, NULL),
(180, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda931d0fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_list.scss', 'scss', '7107e80b053928271d5fcf422dc29490', NULL, '1', '_list.scss', 0, 0, 0, 0, NULL),
(181, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda931bcfc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_mixins.scss', 'scss', 'd6c8e2fb73d626a27dc0c816a584432a', NULL, '1', '_mixins.scss', 0, 0, 0, 0, NULL),
(182, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda931a8fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_path.scss', 'scss', 'ac2a848f68cffed328272615bfca2500', NULL, '1', '_path.scss', 0, 0, 0, 0, NULL),
(183, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda93194fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_rotated-flipped.scss', 'scss', '9d894281a3b1c265abdd5abd11f9af5d', NULL, '1', '_rotated-flipped.scss', 0, 0, 0, 0, NULL),
(184, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda93180fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_spinning.scss', 'scss', '8e6c7988f40f123aedd96a668c56582a', NULL, '1', '_spinning.scss', 0, 0, 0, 0, NULL),
(185, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda9316cfc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_stacked.scss', 'scss', '5594237226aedfbca2fa1c7f4604c214', NULL, '1', '_stacked.scss', 0, 0, 0, 0, NULL),
(186, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda9314efc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/_variables.scss', 'scss', '9d4f23eacae6690aa140e51d42550e5b', NULL, '1', '_variables.scss', 0, 0, 0, 0, NULL),
(187, 0xed8e9cf8fc4311e3990abc305b35679a, 1403685443, 0xeda930c2fc4311e3990abc305b35679a, 'file', 'files/isotope-demo/theme/font-awesome/scss/font-awesome.scss', 'scss', '4201fdd32cc7a7d2f6ed2706800faf75', NULL, '1', 'font-awesome.scss', 0, 0, 0, 0, NULL),
(193, 0xb8a1c9f4a48511e392f3bc305b35679a, 1565596663, 0xdd28a846bcd611e98271e277adfcea9e, 'file', 'files/isotope-demo/theme/screenshot.png', 'png', '2190cc2982fa61a84c79a78030d3ca7d', NULL, '1', 'screenshot.png', 0, 0, 0, 0, NULL),
(194, 0xb8a1c9f4a48511e392f3bc305b35679a, 1565617729, 0xe9f1e8ccbd0711e988c4c3bf7409cff3, 'folder', 'files/isotope-demo/theme/css', '', '2748bc10600d5e8bd36b2307ff53f640', NULL, '1', 'css', 0, 0, 0, 0, 0x613a313a7b733a323a22656e223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d),
(196, 0x9a9b2122611811e39eabbc305b35679a, 1565618019, 0x96d9cfc9bd0811e988c4c3bf7409cff3, 'folder', 'files/isotope-demo/download', '', '207646b5a0007b3353d8cfd1ae9b3c3d', NULL, '1', 'download', 0, 0, 0, 0, 0x613a313a7b733a323a22656e223b613a343a7b733a353a227469746c65223b733a303a22223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a373a2263617074696f6e223b733a303a22223b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_form`
--

CREATE TABLE `tl_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sendViaEmail` char(1) NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) NOT NULL DEFAULT '',
  `recipient` varchar(1022) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `format` varchar(12) NOT NULL DEFAULT 'raw',
  `skipEmpty` char(1) NOT NULL DEFAULT '',
  `storeValues` char(1) NOT NULL DEFAULT '',
  `targetTable` varchar(64) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `method` varchar(12) NOT NULL DEFAULT 'POST',
  `novalidate` char(1) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `formID` varchar(64) NOT NULL DEFAULT '',
  `allowTags` char(1) NOT NULL DEFAULT '',
  `nc_notification` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_form`
--

INSERT INTO `tl_form` (`id`, `tstamp`, `title`, `alias`, `jumpTo`, `sendViaEmail`, `mailerTransport`, `recipient`, `subject`, `format`, `skipEmpty`, `storeValues`, `targetTable`, `customTpl`, `method`, `novalidate`, `attributes`, `formID`, `allowTags`, `nc_notification`) VALUES
(1, 1386583691, 'Suche', 'suche', 9, '', '', '', '', 'raw', '', '', '', '', 'GET', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', 0),
(2, 1386583706, 'Search', 'search', 10, '', '', '', '', 'raw', '', '', '', '', 'GET', '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_form_field`
--

CREATE TABLE `tl_form_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(64) NOT NULL DEFAULT 'text',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `text` text DEFAULT NULL,
  `html` text DEFAULT NULL,
  `options` blob DEFAULT NULL,
  `mandatory` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(32) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `customRgxp` varchar(255) NOT NULL DEFAULT '',
  `errorMsg` varchar(255) NOT NULL DEFAULT '',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxImageWidth` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxImageHeight` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minval` varchar(10) NOT NULL DEFAULT '',
  `maxval` varchar(10) NOT NULL DEFAULT '',
  `step` varchar(10) NOT NULL DEFAULT '',
  `size` varchar(255) NOT NULL DEFAULT 'a:2:{i:0;i:4;i:1;i:40;}',
  `multiple` char(1) NOT NULL DEFAULT '',
  `mSize` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `extensions` varchar(255) NOT NULL DEFAULT 'jpg,jpeg,gif,png,pdf,doc,docx,xls,xlsx,ppt,pptx',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `class` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `accesskey` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fSize` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `customTpl` varchar(64) NOT NULL DEFAULT '',
  `slabel` varchar(255) NOT NULL DEFAULT '',
  `imageSubmit` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `invisible` char(1) NOT NULL DEFAULT '',
  `conditionField` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_form_field`
--

INSERT INTO `tl_form_field` (`id`, `type`, `pid`, `sorting`, `tstamp`, `label`, `name`, `text`, `html`, `options`, `mandatory`, `rgxp`, `placeholder`, `customRgxp`, `errorMsg`, `minlength`, `maxlength`, `maxImageWidth`, `maxImageHeight`, `minval`, `maxval`, `step`, `size`, `multiple`, `mSize`, `extensions`, `storeFile`, `uploadFolder`, `useHomeDir`, `doNotOverwrite`, `class`, `value`, `accesskey`, `tabindex`, `fSize`, `customTpl`, `slabel`, `imageSubmit`, `singleSRC`, `invisible`, `conditionField`) VALUES
(1, 'text', 1, 128, 1386583761, '', 'keywords', NULL, NULL, NULL, '', '', 'Suche', '', '', 0, 0, 0, 0, '', '', '', 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', '', '', '', 0, 0, '', '', '', NULL, '', 0),
(2, 'submit', 1, 256, 1386577074, '', '', NULL, NULL, NULL, '', '', '', '', '', 0, 0, 0, 0, '', '', '', 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', '', '', '', 0, 0, '', 'Suche', '1', 0x13ff255e5e5d11e39eabbc305b35679a, '', 0),
(3, 'text', 2, 128, 1386583748, '', 'keywords', NULL, NULL, NULL, '', '', 'Search', '', '', 0, 0, 0, 0, '', '', '', 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', '', '', '', 0, 0, '', '', '', NULL, '', 0),
(4, 'submit', 2, 256, 1386577053, '', '', NULL, NULL, NULL, '', '', '', '', '', 0, 0, 0, 0, '', '', '', 'a:2:{i:0;i:4;i:1;i:40;}', '', 0, 'jpg,jpeg,gif,png,pdf,doc,xls,ppt', '', NULL, '', '', '', '', '', 0, 0, '', 'Search', '1', 0x13ff255e5e5d11e39eabbc305b35679a, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_image_size`
--

CREATE TABLE `tl_image_size` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `formats` varchar(1024) NOT NULL DEFAULT '',
  `skipIfDimensionsMatch` char(1) NOT NULL DEFAULT '',
  `lazyLoading` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_image_size_item`
--

CREATE TABLE `tl_image_size_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `media` varchar(255) NOT NULL DEFAULT '',
  `densities` varchar(255) NOT NULL DEFAULT '',
  `sizes` varchar(255) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `resizeMode` varchar(255) NOT NULL DEFAULT '',
  `zoom` int(11) DEFAULT NULL,
  `invisible` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_address`
--

CREATE TABLE `tl_iso_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gender` varchar(32) NOT NULL DEFAULT '',
  `salutation` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `vat_no` varchar(255) NOT NULL DEFAULT '',
  `street_1` varchar(255) NOT NULL DEFAULT '',
  `street_2` varchar(255) NOT NULL DEFAULT '',
  `street_3` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `subdivision` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `isDefaultBilling` char(1) NOT NULL DEFAULT '',
  `isDefaultShipping` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_address`
--

INSERT INTO `tl_iso_address` (`id`, `pid`, `tstamp`, `ptable`, `label`, `store_id`, `gender`, `salutation`, `firstname`, `lastname`, `dateOfBirth`, `company`, `vat_no`, `street_1`, `street_2`, `street_3`, `postal`, `city`, `subdivision`, `country`, `phone`, `email`, `isDefaultBilling`, `isDefaultShipping`) VALUES
(41, 1, 1386962177, 'tl_member', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(43, 132, 1387020393, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(44, 153, 1387661164, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(47, 166, 1387889494, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(48, 170, 1387889911, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(49, 189, 1393234052, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '1', ''),
(51, 2, 1393519094, 'tl_member', '', 0, '', '', 'Donna', 'Evans', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'd.evans@isotopeecommerce.org', '1', ''),
(69, 245, 1401894812, 'tl_iso_product_collection', '', 0, '', '', 'Donna', 'Evans', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'd.evans@isotopeecommerce.org', '1', ''),
(72, 254, 1421862973, 'tl_iso_product_collection', '', 0, '', '', 'Donna', 'Evans', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'd.evans@isotopeecommerce.org', '', ''),
(74, 262, 1467806331, 'tl_iso_product_collection', '', 0, '', '', 'Kevin', 'Jones', '', '', '', 'Siechenbach 1', '', '', '3250', 'Lyss', '', 'ch', '', 'k.jones@isotopeecommerce.org', '', ''),
(76, 267, 1467807403, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Siechenbach 1', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '', ''),
(78, 271, 1467808092, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Siechenbach 1', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '', ''),
(79, 275, 1488893913, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '', ''),
(80, 278, 1488900363, 'tl_iso_product_collection', '', 0, '', '', 'John', 'Smith', '', '', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', '', 'ch', '', 'j.smith@isotopeecommerce.org', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_attribute`
--

CREATE TABLE `tl_iso_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `legend` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `optionsSource` varchar(16) NOT NULL DEFAULT '',
  `options` blob DEFAULT NULL,
  `foreignKey` text DEFAULT NULL,
  `includeBlankOption` char(1) NOT NULL DEFAULT '',
  `blankOptionLabel` varchar(255) NOT NULL DEFAULT '',
  `variant_option` char(1) NOT NULL DEFAULT '',
  `be_search` char(1) NOT NULL DEFAULT '',
  `be_filter` char(1) NOT NULL DEFAULT '',
  `customer_defined` char(1) NOT NULL DEFAULT '',
  `mandatory` char(1) NOT NULL DEFAULT '',
  `fe_filter` char(1) NOT NULL DEFAULT '',
  `fe_search` char(1) NOT NULL DEFAULT '',
  `fe_sorting` char(1) NOT NULL DEFAULT '',
  `multiple` char(1) NOT NULL DEFAULT '',
  `size` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `chosen` char(1) NOT NULL DEFAULT '',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `rte` varchar(255) NOT NULL DEFAULT '',
  `multilingual` char(1) NOT NULL DEFAULT '',
  `rgxp` varchar(255) NOT NULL DEFAULT '',
  `placeholder` varchar(255) NOT NULL DEFAULT '',
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minval` varchar(10) NOT NULL DEFAULT '',
  `maxval` varchar(10) NOT NULL DEFAULT '',
  `step` varchar(10) NOT NULL DEFAULT '',
  `conditionField` varchar(30) NOT NULL DEFAULT '',
  `fieldType` varchar(8) NOT NULL DEFAULT '',
  `files` char(1) NOT NULL DEFAULT '',
  `filesOnly` char(1) NOT NULL DEFAULT '',
  `isGallery` char(1) NOT NULL DEFAULT '',
  `sortBy` varchar(32) NOT NULL DEFAULT '',
  `path` binary(16) DEFAULT NULL,
  `rootNodes` blob DEFAULT NULL,
  `checkoutRelocate` char(1) NOT NULL DEFAULT '',
  `checkoutTargetFolder` varchar(255) NOT NULL DEFAULT '',
  `checkoutTargetFile` varchar(255) NOT NULL DEFAULT '',
  `datepicker` char(1) NOT NULL DEFAULT '',
  `storeFile` char(1) NOT NULL DEFAULT '',
  `uploadFolder` binary(16) DEFAULT NULL,
  `useHomeDir` char(1) NOT NULL DEFAULT '',
  `doNotOverwrite` char(1) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_attribute`
--

INSERT INTO `tl_iso_attribute` (`id`, `tstamp`, `name`, `field_name`, `type`, `legend`, `description`, `optionsSource`, `options`, `foreignKey`, `includeBlankOption`, `blankOptionLabel`, `variant_option`, `be_search`, `be_filter`, `customer_defined`, `mandatory`, `fe_filter`, `fe_search`, `fe_sorting`, `multiple`, `size`, `chosen`, `extensions`, `rte`, `multilingual`, `rgxp`, `placeholder`, `minlength`, `maxlength`, `minval`, `maxval`, `step`, `conditionField`, `fieldType`, `files`, `filesOnly`, `isGallery`, `sortBy`, `path`, `rootNodes`, `checkoutRelocate`, `checkoutTargetFolder`, `checkoutTargetFile`, `datepicker`, `storeFile`, `uploadFolder`, `useHomeDir`, `doNotOverwrite`, `customTpl`) VALUES
(2, 1416419220, 'Colour', 'colour', 'select', 'pricing_legend', '', 'attribute', 0x613a383a7b693a303b613a323a7b733a353a2276616c7565223b733a303a22223b733a353a226c6162656c223b733a31333a22506c656173652073656c656374223b7d693a313b613a323a7b733a353a2276616c7565223b733a353a227768697465223b733a353a226c6162656c223b733a353a225768697465223b7d693a323b613a323a7b733a353a2276616c7565223b733a363a2279656c6c6f77223b733a353a226c6162656c223b733a363a2259656c6c6f77223b7d693a333b613a323a7b733a353a2276616c7565223b733a333a22726564223b733a353a226c6162656c223b733a333a22526564223b7d693a343b613a323a7b733a353a2276616c7565223b733a363a226f72616e6765223b733a353a226c6162656c223b733a363a224f72616e6765223b7d693a353b613a323a7b733a353a2276616c7565223b733a353a22677265656e223b733a353a226c6162656c223b733a353a22477265656e223b7d693a363b613a323a7b733a353a2276616c7565223b733a343a22626c7565223b733a353a226c6162656c223b733a343a22426c7565223b7d693a373b613a323a7b733a353a2276616c7565223b733a353a22626c61636b223b733a353a226c6162656c223b733a353a22426c61636b223b7d7d, '', '', '', '1', '', '', '', '', '1', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0x30000000000000000000000000000000, NULL, '', '', '', '', '', 0x00000000000000000000000000000000, '', '', ''),
(4, 1566480962, 'Size', 'size', 'select', 'pricing_legend', '', 'attribute', 0x613a353a7b693a303b613a323a7b733a353a2276616c7565223b733a303a22223b733a353a226c6162656c223b733a31333a22506c656173652073656c656374223b7d693a313b613a323a7b733a353a2276616c7565223b733a313a2253223b733a353a226c6162656c223b733a313a2253223b7d693a323b613a323a7b733a353a2276616c7565223b733a313a224d223b733a353a226c6162656c223b733a313a224d223b7d693a333b613a323a7b733a353a2276616c7565223b733a313a224c223b733a353a226c6162656c223b733a313a224c223b7d693a343b613a323a7b733a353a2276616c7565223b733a323a22584c223b733a353a226c6162656c223b733a323a22584c223b7d7d, '', '', '', '1', '', '', '', '', '1', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, '', '', ''),
(6, 1388498032, 'Tracks', 'tracks', 'text', 'general_legend', '', 'attribute', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', 'digit', '', 0, 4, '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', NULL, '', '', ''),
(8, 1388585312, 'Date', 'date', 'text', 'general_legend', '', 'attribute', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', 'date', '', 0, 0, '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '1', '', NULL, '', '', ''),
(10, 1416419248, 'Version', 'version', 'select', 'pricing_legend', '', 'attribute', 0x613a353a7b693a303b613a323a7b733a353a2276616c7565223b733a303a22223b733a353a226c6162656c223b733a31333a22506c656173652073656c656374223b7d693a313b613a323a7b733a353a2276616c7565223b733a373a22322e31312e3136223b733a353a226c6162656c223b733a31373a22436f6e74616f20434d5320322e31312e36223b7d693a323b613a323a7b733a353a2276616c7565223b733a353a22332e302e36223b733a353a226c6162656c223b733a31363a22436f6e74616f20434d5320332e302e36223b7d693a333b613a323a7b733a353a2276616c7565223b733a353a22332e312e35223b733a353a226c6162656c223b733a31363a22436f6e74616f20434d5320332e312e35223b7d693a343b613a323a7b733a353a2276616c7565223b733a353a22332e322e37223b733a353a226c6162656c223b733a31363a22436f6e74616f20434d5320332e322e37223b7d7d, '', '', '', '1', '', '', '', '', '1', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', 0x30000000000000000000000000000000, NULL, '', '', '', '', '', 0x00000000000000000000000000000000, '', '', ''),
(15, 1566481301, 'Contao-Versionen', 'contao', 'select', 'general_legend', '', 'table', NULL, NULL, '', '', '', '', '', '1', '', '', '', '', '', 5, '1', 'jpg,jpeg,gif,png', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', 'name_asc', NULL, NULL, '', 'files/orders/##document_number##/##product_position##__{{flag::##product_name##|standardize}}/##attribute_field##', '##file_target##', '', '', NULL, '', '', ''),
(16, 1566570979, '', '', 'text', 'options_legend', '', 'attribute', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', 5, '', 'jpg,jpeg,gif,png', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', 'name_asc', NULL, NULL, '', 'files/orders/##document_number##/##product_position##__{{flag::##product_name##|standardize}}/##attribute_field##', '##file_target##', '', '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_attribute_option`
--

CREATE TABLE `tl_iso_attribute_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ptable` varchar(64) NOT NULL DEFAULT '',
  `langPid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` varchar(5) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(8) NOT NULL DEFAULT '',
  `isDefault` char(1) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(16) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_attribute_option`
--

INSERT INTO `tl_iso_attribute_option` (`id`, `pid`, `sorting`, `tstamp`, `ptable`, `langPid`, `language`, `field_name`, `type`, `isDefault`, `label`, `price`, `cssClass`, `published`) VALUES
(1, 15, 128, 1566481120, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.0', '', '', '1'),
(2, 15, 256, 1566481131, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.1', '', '', '1'),
(3, 15, 384, 1566481140, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.2', '', '', '1'),
(4, 15, 512, 1566481151, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.3', '', '', '1'),
(5, 15, 640, 1566481160, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.4', '', '', '1'),
(6, 15, 768, 1566481172, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 3.5', '', '', '1'),
(7, 15, 896, 1566481183, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 4.0', '', '', '1'),
(8, 15, 1024, 1566481194, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 4.1', '', '', '1'),
(9, 15, 1152, 1566481205, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 4.2', '', '', '1'),
(10, 15, 1280, 1566481215, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 4.3', '', '', '1'),
(11, 15, 1408, 1566481225, 'tl_iso_attribute', 0, '', '', 'option', '', 'Contao 4.4', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_baseprice`
--

CREATE TABLE `tl_iso_baseprice` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `amount` varchar(32) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_baseprice`
--

INSERT INTO `tl_iso_baseprice` (`id`, `tstamp`, `name`, `amount`, `label`) VALUES
(2, 1395219182, 'Adams Äpfel', '100', '%s pro 100 g');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_config`
--

CREATE TABLE `tl_iso_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `vat_no` varchar(255) NOT NULL DEFAULT '',
  `street_1` varchar(255) NOT NULL DEFAULT '',
  `street_2` varchar(255) NOT NULL DEFAULT '',
  `street_3` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `subdivision` varchar(10) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `bankName` varchar(255) NOT NULL DEFAULT '',
  `bankAccount` varchar(34) NOT NULL DEFAULT '',
  `bankCode` varchar(16) NOT NULL DEFAULT '',
  `taxNumber` varchar(255) NOT NULL DEFAULT '',
  `address_fields` blob DEFAULT NULL,
  `billing_country` varchar(2) NOT NULL DEFAULT '',
  `shipping_country` varchar(2) NOT NULL DEFAULT '',
  `billing_countries` blob DEFAULT NULL,
  `shipping_countries` blob DEFAULT NULL,
  `limitMemberCountries` char(1) NOT NULL DEFAULT '',
  `vatNoValidators` blob DEFAULT NULL,
  `priceDisplay` varchar(8) NOT NULL DEFAULT '',
  `currencyFormat` varchar(20) NOT NULL DEFAULT '',
  `priceRoundPrecision` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `priceRoundIncrement` varchar(4) NOT NULL DEFAULT '',
  `cartMinSubtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `currencySymbol` char(1) NOT NULL DEFAULT '',
  `currencySpace` char(1) NOT NULL DEFAULT '',
  `currencyPosition` varchar(5) NOT NULL DEFAULT '',
  `priceCalculateFactor` varchar(16) NOT NULL DEFAULT '',
  `priceCalculateMode` varchar(3) NOT NULL DEFAULT '',
  `currencyAutomator` char(1) NOT NULL DEFAULT '',
  `currencyOrigin` varchar(3) NOT NULL DEFAULT '',
  `currencyProvider` varchar(32) NOT NULL DEFAULT '',
  `orderPrefix` varchar(255) NOT NULL DEFAULT '',
  `orderDigits` int(10) UNSIGNED NOT NULL DEFAULT 4,
  `orderstatus_new` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orderstatus_error` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orderDetailsModule` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `templateGroup` varchar(255) NOT NULL DEFAULT '',
  `newProductPeriod` varchar(255) NOT NULL DEFAULT '',
  `ga_enable` char(1) NOT NULL DEFAULT '',
  `ga_account` varchar(64) NOT NULL DEFAULT '',
  `ga_member` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_config`
--

INSERT INTO `tl_iso_config` (`id`, `tstamp`, `name`, `label`, `fallback`, `firstname`, `lastname`, `company`, `vat_no`, `street_1`, `street_2`, `street_3`, `postal`, `city`, `subdivision`, `country`, `phone`, `email`, `bankName`, `bankAccount`, `bankCode`, `taxNumber`, `address_fields`, `billing_country`, `shipping_country`, `billing_countries`, `shipping_countries`, `limitMemberCountries`, `vatNoValidators`, `priceDisplay`, `currencyFormat`, `priceRoundPrecision`, `priceRoundIncrement`, `cartMinSubtotal`, `currency`, `currencySymbol`, `currencySpace`, `currencyPosition`, `priceCalculateFactor`, `priceCalculateMode`, `currencyAutomator`, `currencyOrigin`, `currencyProvider`, `orderPrefix`, `orderDigits`, `orderstatus_new`, `orderstatus_error`, `orderDetailsModule`, `templateGroup`, `newProductPeriod`, `ga_enable`, `ga_account`, `ga_member`) VALUES
(5, 1566572548, 'CHF', 'CHF', '1', 'Kevin', 'Jones', 'Isotope eCommerce Demo', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', 'CH-BE', 'ch', '', 'demo@isotopeecommerce.org', '', '', '', '', 0x613a31393a7b733a353a226c6162656c223b613a343a7b733a343a226e616d65223b733a353a226c6162656c223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a303b7d733a363a2267656e646572223b613a343a7b733a343a226e616d65223b733a363a2267656e646572223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a313b7d733a31303a2273616c75746174696f6e223b613a343a7b733a343a226e616d65223b733a31303a2273616c75746174696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a323b7d733a373a22636f6d70616e79223b613a343a7b733a343a226e616d65223b733a373a22636f6d70616e79223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a333b7d733a393a2266697273746e616d65223b613a343a7b733a343a226e616d65223b733a393a2266697273746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a343b7d733a383a226c6173746e616d65223b613a343a7b733a343a226e616d65223b733a383a226c6173746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a353b7d733a31313a22646174654f664269727468223b613a343a7b733a343a226e616d65223b733a31313a22646174654f664269727468223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a363b7d733a363a227661745f6e6f223b613a343a7b733a343a226e616d65223b733a363a227661745f6e6f223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a373b7d733a383a227374726565745f31223b613a343a7b733a343a226e616d65223b733a383a227374726565745f31223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a383b7d733a383a227374726565745f32223b613a343a7b733a343a226e616d65223b733a383a227374726565745f32223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a393b7d733a383a227374726565745f33223b613a343a7b733a343a226e616d65223b733a383a227374726565745f33223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31303b7d733a363a22706f7374616c223b613a343a7b733a343a226e616d65223b733a363a22706f7374616c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31313b7d733a343a2263697479223b613a343a7b733a343a226e616d65223b733a343a2263697479223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31323b7d733a31313a227375626469766973696f6e223b613a343a7b733a343a226e616d65223b733a31313a227375626469766973696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31333b7d733a373a22636f756e747279223b613a343a7b733a343a226e616d65223b733a373a22636f756e747279223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31343b7d733a353a2270686f6e65223b613a343a7b733a343a226e616d65223b733a353a2270686f6e65223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a31353b7d733a353a22656d61696c223b613a343a7b733a343a226e616d65223b733a353a22656d61696c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31363b7d733a31363a22697344656661756c7442696c6c696e67223b613a343a7b733a343a226e616d65223b733a31363a22697344656661756c7442696c6c696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31373b7d733a31373a22697344656661756c745368697070696e67223b613a343a7b733a343a226e616d65223b733a31373a22697344656661756c745368697070696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31383b7d7d, '', '', NULL, NULL, '', NULL, 'net', '10\'000.00', 2, '0.05', '0.00', 'CHF', '', '', 'left', '1', 'mul', '', '', '', '', 4, 4, 8, 0, 'templates/isotope-demo', 'a:2:{s:4:\"unit\";s:5:\"years\";s:5:\"value\";s:2:\"10\";}', '', '', ''),
(6, 1566572558, 'EUR', 'EUR', '', 'Kevin', 'Jones', 'Isotope eCommerce Demo', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', 'CH-BE', 'ch', '', 'demo@isotopeecommerce.org', '', '', '', '', 0x613a31393a7b733a353a226c6162656c223b613a343a7b733a343a226e616d65223b733a353a226c6162656c223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a303b7d733a363a2267656e646572223b613a343a7b733a343a226e616d65223b733a363a2267656e646572223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a313b7d733a31303a2273616c75746174696f6e223b613a343a7b733a343a226e616d65223b733a31303a2273616c75746174696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a323b7d733a373a22636f6d70616e79223b613a343a7b733a343a226e616d65223b733a373a22636f6d70616e79223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a333b7d733a393a2266697273746e616d65223b613a343a7b733a343a226e616d65223b733a393a2266697273746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a343b7d733a383a226c6173746e616d65223b613a343a7b733a343a226e616d65223b733a383a226c6173746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a353b7d733a31313a22646174654f664269727468223b613a343a7b733a343a226e616d65223b733a31313a22646174654f664269727468223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a363b7d733a363a227661745f6e6f223b613a343a7b733a343a226e616d65223b733a363a227661745f6e6f223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a373b7d733a383a227374726565745f31223b613a343a7b733a343a226e616d65223b733a383a227374726565745f31223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a383b7d733a383a227374726565745f32223b613a343a7b733a343a226e616d65223b733a383a227374726565745f32223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a393b7d733a383a227374726565745f33223b613a343a7b733a343a226e616d65223b733a383a227374726565745f33223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31303b7d733a363a22706f7374616c223b613a343a7b733a343a226e616d65223b733a363a22706f7374616c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31313b7d733a343a2263697479223b613a343a7b733a343a226e616d65223b733a343a2263697479223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31323b7d733a31313a227375626469766973696f6e223b613a343a7b733a343a226e616d65223b733a31313a227375626469766973696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31333b7d733a373a22636f756e747279223b613a343a7b733a343a226e616d65223b733a373a22636f756e747279223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31343b7d733a353a2270686f6e65223b613a343a7b733a343a226e616d65223b733a353a2270686f6e65223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a31353b7d733a353a22656d61696c223b613a343a7b733a343a226e616d65223b733a353a22656d61696c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31363b7d733a31363a22697344656661756c7442696c6c696e67223b613a343a7b733a343a226e616d65223b733a31363a22697344656661756c7442696c6c696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31373b7d733a31373a22697344656661756c745368697070696e67223b613a343a7b733a343a226e616d65223b733a31373a22697344656661756c745368697070696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31383b7d7d, '', '', NULL, NULL, '', NULL, 'net', '10.000,00', 2, '0.01', '0.00', 'EUR', '1', '1', 'left', '1.0351966873706', 'mul', '1', 'CHF', 'ecb.int', '', 4, 4, 8, 0, 'templates/isotope-demo', 'a:2:{s:4:\"unit\";s:5:\"years\";s:5:\"value\";s:2:\"10\";}', '', '', ''),
(8, 1566572568, 'USD', 'USD', '', 'Kevin', 'Jones', 'Isotope eCommerce Demo', '', 'Sonnhalderain 15', '', '', '3250', 'Lyss', 'CH-BE', 'ch', '', 'demo@isotopeecommerce.org', '', '', '', '', 0x613a31393a7b733a353a226c6162656c223b613a343a7b733a343a226e616d65223b733a353a226c6162656c223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a303b7d733a363a2267656e646572223b613a343a7b733a343a226e616d65223b733a363a2267656e646572223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a313b7d733a31303a2273616c75746174696f6e223b613a343a7b733a343a226e616d65223b733a31303a2273616c75746174696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a323b7d733a373a22636f6d70616e79223b613a343a7b733a343a226e616d65223b733a373a22636f6d70616e79223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a333b7d733a393a2266697273746e616d65223b613a343a7b733a343a226e616d65223b733a393a2266697273746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a343b7d733a383a226c6173746e616d65223b613a343a7b733a343a226e616d65223b733a383a226c6173746e616d65223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a353b7d733a31313a22646174654f664269727468223b613a343a7b733a343a226e616d65223b733a31313a22646174654f664269727468223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a363b7d733a363a227661745f6e6f223b613a343a7b733a343a226e616d65223b733a363a227661745f6e6f223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a373b7d733a383a227374726565745f31223b613a343a7b733a343a226e616d65223b733a383a227374726565745f31223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a383b7d733a383a227374726565745f32223b613a343a7b733a343a226e616d65223b733a383a227374726565745f32223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a393b7d733a383a227374726565745f33223b613a343a7b733a343a226e616d65223b733a383a227374726565745f33223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31303b7d733a363a22706f7374616c223b613a343a7b733a343a226e616d65223b733a363a22706f7374616c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31313b7d733a343a2263697479223b613a343a7b733a343a226e616d65223b733a343a2263697479223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31323b7d733a31313a227375626469766973696f6e223b613a343a7b733a343a226e616d65223b733a31313a227375626469766973696f6e223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31333b7d733a373a22636f756e747279223b613a343a7b733a343a226e616d65223b733a373a22636f756e747279223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31343b7d733a353a2270686f6e65223b613a343a7b733a343a226e616d65223b733a353a2270686f6e65223b733a373a2262696c6c696e67223b733a373a22656e61626c6564223b733a383a227368697070696e67223b733a373a22656e61626c6564223b733a383a22706f736974696f6e223b693a31353b7d733a353a22656d61696c223b613a343a7b733a343a226e616d65223b733a353a22656d61696c223b733a373a2262696c6c696e67223b733a393a226d616e6461746f7279223b733a383a227368697070696e67223b733a393a226d616e6461746f7279223b733a383a22706f736974696f6e223b693a31363b7d733a31363a22697344656661756c7442696c6c696e67223b613a343a7b733a343a226e616d65223b733a31363a22697344656661756c7442696c6c696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31373b7d733a31373a22697344656661756c745368697070696e67223b613a343a7b733a343a226e616d65223b733a31373a22697344656661756c745368697070696e67223b733a373a2262696c6c696e67223b733a383a2264697361626c6564223b733a383a227368697070696e67223b733a383a2264697361626c6564223b733a383a22706f736974696f6e223b693a31383b7d7d, '', '', NULL, NULL, '', NULL, 'net', '10.000,00', 2, '0.01', '0.00', 'USD', '1', '1', 'left', '1.0837474120083', 'mul', '1', 'CHF', 'ecb.int', '', 4, 4, 8, 0, 'templates/isotope-demo', 'a:2:{s:4:\"unit\";s:5:\"years\";s:5:\"value\";s:2:\"10\";}', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_document`
--

CREATE TABLE `tl_iso_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `documentTitle` varchar(255) NOT NULL DEFAULT '',
  `fileTitle` varchar(255) NOT NULL DEFAULT '',
  `documentTpl` varchar(64) NOT NULL DEFAULT '',
  `collectionTpl` varchar(64) NOT NULL DEFAULT '',
  `orderCollectionBy` varchar(16) NOT NULL DEFAULT '',
  `gallery` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_document`
--

INSERT INTO `tl_iso_document` (`id`, `tstamp`, `name`, `type`, `documentTitle`, `fileTitle`, `documentTpl`, `collectionTpl`, `orderCollectionBy`, `gallery`) VALUES
(3, 1385373953, 'Invoice', 'standard', 'Invoice ##collection_document_number##', 'invoice_##collection_document_number##', 'iso_document_default', 'iso_collection_mini', 'asc_id', 0),
(4, 1396368511, 'Rechnung', 'standard', 'Rechnung ##collection_document_number##', 'rechnung_##collection_document_number##', 'iso_document_default', 'iso_collection_mini', 'asc_id', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_download`
--

CREATE TABLE `tl_iso_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `singleSRC` binary(16) DEFAULT NULL,
  `downloads_allowed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires` varchar(64) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_download`
--

INSERT INTO `tl_iso_download` (`id`, `pid`, `sorting`, `tstamp`, `singleSRC`, `downloads_allowed`, `expires`, `published`) VALUES
(2, 152, 640, 1416820132, 0x0a6765829fc711e392f3bc305b35679a, 0, 'a:2:{s:4:\"unit\";s:7:\"minutes\";s:5:\"value\";s:0:\"\";}', '1'),
(5, 152, 384, 1393522119, 0x0a6765469fc711e392f3bc305b35679a, 0, 'a:2:{s:4:\"unit\";s:7:\"minutes\";s:5:\"value\";s:0:\"\";}', '1'),
(6, 152, 512, 1401697849, 0x132c4d8cea3011e3990abc305b35679a, 0, 'a:2:{s:4:\"unit\";s:7:\"minutes\";s:5:\"value\";s:0:\"\";}', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_gallery`
--

CREATE TABLE `tl_iso_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `anchor` varchar(8) NOT NULL DEFAULT '',
  `placeholder` binary(16) DEFAULT NULL,
  `main_size` varchar(64) NOT NULL DEFAULT '',
  `gallery_size` varchar(64) NOT NULL DEFAULT '',
  `lightbox_template` blob DEFAULT NULL,
  `lightbox_size` varchar(64) NOT NULL DEFAULT '',
  `zoom_size` varchar(64) NOT NULL DEFAULT '',
  `zoom_windowSize` varchar(64) NOT NULL DEFAULT '',
  `zoom_position` varchar(64) NOT NULL DEFAULT '',
  `zoom_windowFade` varchar(64) NOT NULL DEFAULT '',
  `zoom_border` varchar(64) NOT NULL DEFAULT '',
  `main_watermark_image` binary(16) DEFAULT NULL,
  `main_watermark_position` varchar(16) NOT NULL DEFAULT '',
  `gallery_watermark_image` binary(16) DEFAULT NULL,
  `gallery_watermark_position` varchar(16) NOT NULL DEFAULT '',
  `lightbox_watermark_image` binary(16) DEFAULT NULL,
  `lightbox_watermark_position` varchar(16) NOT NULL DEFAULT '',
  `zoom_watermark_image` binary(16) DEFAULT NULL,
  `zoom_watermark_position` varchar(16) NOT NULL DEFAULT '',
  `customTpl` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_gallery`
--

INSERT INTO `tl_iso_gallery` (`id`, `tstamp`, `name`, `type`, `anchor`, `placeholder`, `main_size`, `gallery_size`, `lightbox_template`, `lightbox_size`, `zoom_size`, `zoom_windowSize`, `zoom_position`, `zoom_windowFade`, `zoom_border`, `main_watermark_image`, `main_watermark_position`, `gallery_watermark_image`, `gallery_watermark_position`, `lightbox_watermark_image`, `lightbox_watermark_position`, `zoom_watermark_image`, `zoom_watermark_position`, `customTpl`) VALUES
(4, 1385371812, 'Default gallery - &#35;2 Link to the product reader', 'standard', 'reader', 0xf3e4483a528611e38a28bc305b35679a, 'a:3:{i:0;s:3:\"100\";i:1;s:3:\"100\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"250\";i:1;s:3:\"250\";i:2;s:12:\"proportional\";}', NULL, '', '', '', '', '', '', 0x2c69d9ce55a511e38a28bc305b35679a, 'left_top', 0x2c69d9ce55a511e38a28bc305b35679a, 'left_top', NULL, '', NULL, '', ''),
(5, 1388595272, 'Default gallery - &#35;1 No link action', 'standard', 'none', NULL, 'a:3:{i:0;s:3:\"130\";i:1;s:3:\"130\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"250\";i:1;s:3:\"250\";i:2;s:12:\"proportional\";}', NULL, '', '', '', '', '', '', NULL, 'left_top', NULL, 'left_top', NULL, '', NULL, '', ''),
(7, 1386840446, 'Default gallery - &#35;3 Open lightbox/mediabox', 'standard', 'lightbox', NULL, 'a:3:{i:0;s:3:\"138\";i:1;s:3:\"138\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"100\";i:1;s:3:\"100\";i:2;s:12:\"proportional\";}', 0x613a313a7b693a303b733a31323a226d6f6f5f6d65646961626f78223b7d, 'a:3:{i:0;s:3:\"138\";i:1;s:3:\"138\";i:2;s:12:\"proportional\";}', '', '', '', '', '', NULL, 'left_top', NULL, 'left_top', NULL, 'left_top', NULL, '', ''),
(8, 1385371920, 'Inline gallery', 'inline', '', 0xf3e4483a528611e38a28bc305b35679a, 'a:3:{i:0;s:3:\"100\";i:1;s:3:\"100\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"250\";i:1;s:3:\"250\";i:2;s:12:\"proportional\";}', NULL, '', '', '', '', '', '', 0x2c69d9ce55a511e38a28bc305b35679a, 'left_top', 0x2c69d9ce55a511e38a28bc305b35679a, 'left_top', NULL, '', NULL, '', ''),
(10, 1387289412, 'T-Shirt', 'standard', 'lightbox', NULL, 'a:3:{i:0;s:3:\"138\";i:1;s:3:\"138\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}', 0x613a313a7b693a303b733a31323a226d6f6f5f6d65646961626f78223b7d, 'a:3:{i:0;s:3:\"500\";i:1;s:3:\"500\";i:2;s:12:\"proportional\";}', '', '', '', '', '', NULL, 'left_top', NULL, 'left_top', NULL, 'left_top', NULL, '', ''),
(11, 1393526349, 'Default gallery - &#35;4 Link to the product reader &#40;Cart&#41;', 'standard', 'reader', NULL, 'a:3:{i:0;s:2:\"40\";i:1;s:2:\"40\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"250\";i:1;s:3:\"250\";i:2;s:12:\"proportional\";}', NULL, '', '', '', '', '', '', NULL, 'left_top', NULL, 'left_top', NULL, '', NULL, '', ''),
(12, 1485244720, 'Backend', 'standard', 'none', NULL, 'a:3:{i:0;s:3:\"150\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}', 'a:3:{i:0;s:3:\"150\";i:1;s:0:\"\";i:2;s:12:\"proportional\";}', NULL, '', '', '', '', '', '', NULL, 'left_top', NULL, 'left_top', NULL, '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_group`
--

CREATE TABLE `tl_iso_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `product_type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_group`
--

INSERT INTO `tl_iso_group` (`id`, `pid`, `sorting`, `tstamp`, `name`, `product_type`) VALUES
(3, 0, 128, 1386670234, 'T-Shirt', 2),
(4, 0, 64, 1386684017, 'CD', 3),
(5, 0, 96, 1386684034, 'Download', 4),
(6, 0, 32, 1395211682, 'Sammelsurium', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_label`
--

CREATE TABLE `tl_iso_label` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` varchar(5) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `replacement` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_label`
--

INSERT INTO `tl_iso_label` (`id`, `tstamp`, `language`, `label`, `replacement`) VALUES
(2, 1386667541, 'de', 'Colour', 'Farbe'),
(3, 1386667559, 'de', 'Black', 'Schwarz'),
(4, 1386667575, 'de', 'White', 'Weiss'),
(5, 1386667601, 'de', 'Please select', 'Bitte auswählen'),
(6, 1386775929, 'de', 'Yellow', 'Gelb'),
(7, 1386775957, 'de', 'Red', 'Rot'),
(8, 1386775979, 'de', 'Green', 'Grün'),
(9, 1386775998, 'de', 'Blue', 'Blau'),
(11, 1393518773, 'en', 'Gutschein', 'Promotional Codes'),
(12, 1394902389, 'en', 'Ausstehend', 'Pending'),
(13, 1394902505, 'en', 'Wird verarbeitet', 'Processing'),
(14, 1394902536, 'en', 'Abgeschlossen', 'Complete'),
(15, 1394902561, 'en', 'In der Warteschleife', 'On Hold'),
(16, 1394902581, 'en', 'Storniert', 'Cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_orderstatus`
--

CREATE TABLE `tl_iso_orderstatus` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `paid` char(1) NOT NULL DEFAULT '',
  `welcomescreen` char(1) NOT NULL DEFAULT '',
  `notification` varchar(255) NOT NULL DEFAULT '',
  `saferpay_status` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_orderstatus`
--

INSERT INTO `tl_iso_orderstatus` (`id`, `pid`, `tstamp`, `sorting`, `name`, `color`, `paid`, `welcomescreen`, `notification`, `saferpay_status`) VALUES
(4, 0, 1488900461, 256, 'Ausstehend', 'ff0000', '1', '1', '0', ''),
(5, 0, 1394902430, 384, 'Wird verarbeitet', 'eeff00', '', '', '0', ''),
(6, 0, 1488900452, 512, 'Abgeschlossen', '008c15', '', '', '0', ''),
(7, 0, 1394902449, 640, 'In der Warteschleife', 'ff8400', '', '', '0', ''),
(8, 0, 1394902458, 768, 'Storniert', '000000', '', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_payment`
--

CREATE TABLE `tl_iso_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `note` text DEFAULT NULL,
  `new_order_status` int(11) NOT NULL DEFAULT 0,
  `price` varchar(16) DEFAULT NULL,
  `tax_class` int(11) NOT NULL DEFAULT 0,
  `allowed_cc_types` text DEFAULT NULL,
  `trans_type` varchar(8) NOT NULL DEFAULT '',
  `minimum_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `maximum_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quantity_mode` varchar(32) NOT NULL DEFAULT '',
  `minimum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maximum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `countries` blob DEFAULT NULL,
  `shipping_modules` blob DEFAULT NULL,
  `product_types` blob DEFAULT NULL,
  `product_types_condition` varchar(16) NOT NULL DEFAULT '',
  `config_ids` blob DEFAULT NULL,
  `paybyway_merchant_id` int(11) NOT NULL DEFAULT 0,
  `paybyway_private_key` varchar(255) NOT NULL DEFAULT '',
  `paypal_account` varchar(255) NOT NULL DEFAULT '',
  `paypal_client` varchar(128) NOT NULL DEFAULT '',
  `paypal_secret` varchar(128) NOT NULL DEFAULT '',
  `psp_pspid` varchar(255) NOT NULL DEFAULT '',
  `psp_http_method` varchar(4) NOT NULL DEFAULT '',
  `psp_hash_method` varchar(6) NOT NULL DEFAULT '',
  `psp_hash_in` varchar(128) NOT NULL DEFAULT '',
  `psp_hash_out` varchar(128) NOT NULL DEFAULT '',
  `psp_dynamic_template` varchar(128) NOT NULL DEFAULT '',
  `psp_payment_method` varchar(128) NOT NULL DEFAULT '',
  `datatrans_id` varchar(16) NOT NULL DEFAULT '',
  `datatrans_sign` varchar(128) NOT NULL DEFAULT '',
  `datatrans_hash_convert` char(1) NOT NULL DEFAULT '0',
  `datatrans_hash_method` char(6) NOT NULL DEFAULT 'md5',
  `vads_site_id` varchar(8) NOT NULL DEFAULT '',
  `vads_certificate` varchar(16) NOT NULL DEFAULT '',
  `sparkasse_paymentmethod` varchar(32) NOT NULL DEFAULT '',
  `sparkasse_sslmerchant` varchar(16) NOT NULL DEFAULT '',
  `sparkasse_sslpassword` varchar(255) NOT NULL DEFAULT '',
  `sparkasse_merchantref` varchar(255) NOT NULL DEFAULT '',
  `sofortueberweisung_user_id` varchar(16) NOT NULL DEFAULT '',
  `sofortueberweisung_project_id` varchar(16) NOT NULL DEFAULT '',
  `sofortueberweisung_project_password` varchar(255) NOT NULL DEFAULT '',
  `saferpay_accountid` varchar(16) NOT NULL DEFAULT '',
  `saferpay_username` varchar(32) NOT NULL DEFAULT '',
  `saferpay_password` varchar(32) NOT NULL DEFAULT '',
  `saferpay_description` varchar(255) NOT NULL DEFAULT '',
  `saferpay_vtconfig` varchar(255) NOT NULL DEFAULT '',
  `saferpay_paymentmethods` varchar(255) NOT NULL DEFAULT '',
  `expercash_popupId` varchar(10) NOT NULL DEFAULT '',
  `expercash_profile` int(11) NOT NULL DEFAULT 0,
  `expercash_popupKey` varchar(32) NOT NULL DEFAULT '',
  `expercash_paymentMethod` varchar(32) NOT NULL DEFAULT '',
  `expercash_css` binary(16) DEFAULT NULL,
  `epay_windowstate` char(1) NOT NULL DEFAULT '',
  `epay_merchantnumber` varchar(10) NOT NULL DEFAULT '',
  `epay_secretkey` varchar(64) NOT NULL DEFAULT '',
  `payone_clearingtype` varchar(3) NOT NULL DEFAULT '',
  `payone_aid` varchar(6) NOT NULL DEFAULT '',
  `payone_portalid` varchar(7) NOT NULL DEFAULT '',
  `payone_key` varchar(255) NOT NULL DEFAULT '',
  `worldpay_instId` int(11) NOT NULL DEFAULT 0,
  `worldpay_callbackPW` varchar(64) NOT NULL DEFAULT '',
  `worldpay_signatureFields` varchar(255) NOT NULL DEFAULT '',
  `worldpay_md5secret` varchar(64) NOT NULL DEFAULT '',
  `worldpay_description` varchar(255) NOT NULL DEFAULT '',
  `quickpay_merchantId` int(11) DEFAULT NULL,
  `quickpay_agreementId` int(11) DEFAULT NULL,
  `quickpay_apiKey` varchar(64) NOT NULL DEFAULT '',
  `quickpay_privateKey` varchar(64) NOT NULL DEFAULT '',
  `quickpay_paymentMethods` text DEFAULT NULL,
  `opp_entity_id` varchar(32) NOT NULL DEFAULT '',
  `opp_auth` varchar(8) NOT NULL DEFAULT '',
  `opp_token` text DEFAULT NULL,
  `opp_user_id` varchar(32) NOT NULL DEFAULT '',
  `opp_password` varchar(32) NOT NULL DEFAULT '',
  `opp_brands` blob DEFAULT NULL,
  `mpay24_merchant` varchar(5) NOT NULL DEFAULT '',
  `mpay24_password` varchar(32) NOT NULL DEFAULT '',
  `swissbilling_id` varchar(16) NOT NULL DEFAULT '',
  `swissbilling_pwd` varchar(32) NOT NULL DEFAULT '',
  `swissbilling_prescreening` char(1) NOT NULL DEFAULT '0',
  `swissbilling_b2b` char(1) NOT NULL DEFAULT '0',
  `requireCCV` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `debug` char(1) NOT NULL DEFAULT '',
  `logging` char(1) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_payment`
--

INSERT INTO `tl_iso_payment` (`id`, `tstamp`, `name`, `label`, `type`, `note`, `new_order_status`, `price`, `tax_class`, `allowed_cc_types`, `trans_type`, `minimum_total`, `maximum_total`, `quantity_mode`, `minimum_quantity`, `maximum_quantity`, `countries`, `shipping_modules`, `product_types`, `product_types_condition`, `config_ids`, `paybyway_merchant_id`, `paybyway_private_key`, `paypal_account`, `paypal_client`, `paypal_secret`, `psp_pspid`, `psp_http_method`, `psp_hash_method`, `psp_hash_in`, `psp_hash_out`, `psp_dynamic_template`, `psp_payment_method`, `datatrans_id`, `datatrans_sign`, `datatrans_hash_convert`, `datatrans_hash_method`, `vads_site_id`, `vads_certificate`, `sparkasse_paymentmethod`, `sparkasse_sslmerchant`, `sparkasse_sslpassword`, `sparkasse_merchantref`, `sofortueberweisung_user_id`, `sofortueberweisung_project_id`, `sofortueberweisung_project_password`, `saferpay_accountid`, `saferpay_username`, `saferpay_password`, `saferpay_description`, `saferpay_vtconfig`, `saferpay_paymentmethods`, `expercash_popupId`, `expercash_profile`, `expercash_popupKey`, `expercash_paymentMethod`, `expercash_css`, `epay_windowstate`, `epay_merchantnumber`, `epay_secretkey`, `payone_clearingtype`, `payone_aid`, `payone_portalid`, `payone_key`, `worldpay_instId`, `worldpay_callbackPW`, `worldpay_signatureFields`, `worldpay_md5secret`, `worldpay_description`, `quickpay_merchantId`, `quickpay_agreementId`, `quickpay_apiKey`, `quickpay_privateKey`, `quickpay_paymentMethods`, `opp_entity_id`, `opp_auth`, `opp_token`, `opp_user_id`, `opp_password`, `opp_brands`, `mpay24_merchant`, `mpay24_password`, `swissbilling_id`, `swissbilling_pwd`, `swissbilling_prescreening`, `swissbilling_b2b`, `requireCCV`, `guests`, `protected`, `groups`, `debug`, `logging`, `enabled`) VALUES
(2, 1384789910, 'Cash', 'Cash', 'cash', '', 4, NULL, 0, NULL, 'capture', '0.00', '0.00', '', 0, 0, '', '', '', 'onlyAvailable', NULL, 0, '', '', '', '', '', 'POST', 'sha1', '', '', '', '', '', '', '0', 'md5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 0x00000000000000000000000000000000, '', '', '', '', '', '', '', 0, '', 'instId:cartId:amount:currency', '', '', NULL, NULL, '', '', NULL, '', '', NULL, '', '', NULL, '', '', '', '', '0', '0', '', '', '', NULL, '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product`
--

CREATE TABLE `tl_iso_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` varchar(5) NOT NULL DEFAULT '',
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `orderPages` text DEFAULT NULL,
  `inherit` blob DEFAULT NULL,
  `fallback` char(1) NOT NULL DEFAULT '',
  `alias` varchar(128) NOT NULL DEFAULT '',
  `gtin` varchar(14) NOT NULL DEFAULT '',
  `sku` varchar(128) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `baseprice` varchar(255) NOT NULL DEFAULT '',
  `shipping_weight` varchar(255) NOT NULL DEFAULT '',
  `shipping_exempt` char(1) NOT NULL DEFAULT '',
  `shipping_pickup` char(1) NOT NULL DEFAULT '',
  `shipping_price` decimal(9,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `images` blob DEFAULT NULL,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `guests` char(1) NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `contao` int(11) NOT NULL DEFAULT 0,
  `version` varchar(64) NOT NULL DEFAULT '',
  `date` varchar(255) NOT NULL DEFAULT '',
  `tracks` varchar(4) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `colour` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product`
--

INSERT INTO `tl_iso_product` (`id`, `pid`, `gid`, `tstamp`, `language`, `dateAdded`, `type`, `orderPages`, `inherit`, `fallback`, `alias`, `gtin`, `sku`, `name`, `teaser`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `baseprice`, `shipping_weight`, `shipping_exempt`, `shipping_pickup`, `shipping_price`, `images`, `protected`, `groups`, `guests`, `cssID`, `published`, `start`, `stop`, `contao`, `version`, `date`, `tracks`, `size`, `colour`) VALUES
(15, 14, 0, 1386574499, '', 0, 0, NULL, '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, '', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:1:\"1\";}', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', '', 'blue'),
(16, 14, 0, 1386574499, '', 0, 0, NULL, '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, '', 'a:2:{s:4:\"unit\";s:2:\"mg\";s:5:\"value\";s:1:\"1\";}', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', '', 'red'),
(20, 0, 3, 1505132035, '', 1386670331, 2, 'a:6:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:1:\"5\";i:3;s:1:\"6\";i:4;s:2:\"87\";i:5;s:2:\"89\";}', NULL, '', 'wuerzburg-2008', '', '', '2008 Würzburg', 'T-Shirt', '<p>Würzburg</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323030382d772d77686974652e706e67223b733a333a22616c74223b733a31343a22323030382057c3bc727a62757267223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323030382057c3bc727a62757267223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(29, 0, 3, 1504880882, '', 1386672049, 2, 'a:6:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:1:\"5\";i:3;s:1:\"6\";i:4;s:2:\"87\";i:5;s:2:\"89\";}', NULL, '', 'frankfurt-am-main-2009', '', '', '2009 Frankfurt', 'T-Shirt', '<p>Frankfurt am Main</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323030392d662d7265642e706e67223b733a333a22616c74223b733a31343a2232303039204672616e6b66757274223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a2232303039204672616e6b66757274223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(30, 0, 3, 1504880882, '', 1386672084, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'essen-2010', '', '', '2010 Essen', 'T-Shirt', '<p>Essen</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031302d652d626c75652e706e67223b733a333a22616c74223b733a31303a223230313020457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313020457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(31, 0, 3, 1504880882, '', 1386672145, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'bad-soden-2011', '', '', '2011 Bad Soden', 'T-Shirt', '<p>Bad Soden</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031312d622d77686974652e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(32, 0, 3, 1504880882, '', 0, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'bad-soden-2012', '', '', '2012 Bad Soden', 'T-Shirt', '<p>Bad Soden</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031322d622d677265656e2e706e67223b733a333a22616c74223b733a31343a22323031322042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031322042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(34, 0, 3, 1504880882, '', 1386672412, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'halle-2013', '', '', '2013 Halle', 'T-Shirt', '<p>Halle</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323031332d682d7265642e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(35, 0, 3, 1504880882, '', 0, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'essen-2011', '', '', '2011 Essen', 'T-Shirt', '<p>Essen</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031312d652d79656c6c6f772e706e67223b733a333a22616c74223b733a31303a223230313120457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313120457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(36, 0, 3, 1504880882, '', 0, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'essen-2012', '', '', '2012 Essen', 'T-Shirt', '<p>Essen</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031322d652d6f72616e67652e706e67223b733a333a22616c74223b733a31303a223230313220457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(37, 0, 3, 1504880882, '', 0, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'muenchen-2013', '', '', '2013 München', 'T-Shirt', '<p>München</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031332d6d2d79656c6c6f772e706e67223b733a333a22616c74223b733a31333a2232303133204dc3bc6e6368656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31333a2232303133204dc3bc6e6368656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(39, 20, 3, 1495898780, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2008-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'white'),
(40, 20, 3, 1495898780, '', 0, 0, NULL, 0x613a333a7b693a333b733a333a22736b75223b693a353b733a363a22636f6c6f7572223b693a363b733a343a2273697a65223b7d, '', '', '', '2008-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323030382d772d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323030382057c3bc727a62757267223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323030382057c3bc727a62757267223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'S', 'yellow'),
(41, 20, 3, 1495898780, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2008-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'white'),
(42, 20, 3, 1495898780, '', 0, 0, NULL, '', '', '', '', '2008-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323030382d772d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323030382057c3bc727a62757267223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323030382057c3bc727a62757267223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'yellow'),
(43, 20, 3, 1495898780, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2008-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'white'),
(44, 20, 3, 1495898780, '', 0, 0, NULL, '', '', '', '', '2008-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323030382d772d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323030382057c3bc727a62757267223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323030382057c3bc727a62757267223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'yellow'),
(45, 20, 3, 1495898780, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2008-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'white'),
(46, 20, 3, 1495898780, '', 0, 0, NULL, '', '', '', '', '2008-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323030382d772d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323030382057c3bc727a62757267223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323030382057c3bc727a62757267223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'yellow'),
(48, 29, 0, 1387291423, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2009-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', 'S', 'red'),
(49, 29, 0, 1387288153, '', 0, 0, NULL, '', '', '', '', '2009-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323030392d662d677265656e2e706e67223b733a333a22616c74223b733a31343a2232303039204672616e6b66757274223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a2232303039204672616e6b66757274223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'green'),
(50, 29, 0, 1387291429, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2009-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'red'),
(51, 29, 0, 1387288153, '', 0, 0, NULL, '', '', '', '', '2009-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323030392d662d677265656e2e706e67223b733a333a22616c74223b733a31343a2232303039204672616e6b66757274223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a2232303039204672616e6b66757274223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'M', 'green'),
(52, 29, 0, 1387291435, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2009-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'red'),
(53, 29, 0, 1387288153, '', 0, 0, NULL, '', '', '', '', '2009-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323030392d662d677265656e2e706e67223b733a333a22616c74223b733a31343a2232303039204672616e6b66757274223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a2232303039204672616e6b66757274223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'L', 'green'),
(54, 29, 0, 1387291440, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2009-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'red'),
(55, 29, 0, 1387288153, '', 0, 0, NULL, '', '', '', '', '2009-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323030392d662d677265656e2e706e67223b733a333a22616c74223b733a31343a2232303039204672616e6b66757274223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a2232303039204672616e6b66757274223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'green'),
(56, 30, 0, 1387291474, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2010-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'blue'),
(57, 30, 0, 1387288336, '', 0, 0, NULL, '', '', '', '', '2010-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031302d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a223230313020457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313020457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'black'),
(58, 30, 0, 1387291480, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2010-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'blue'),
(59, 30, 0, 1387288359, '', 0, 0, NULL, '', '', '', '', '2010-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031302d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a223230313020457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313020457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'black'),
(60, 30, 0, 1387291486, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2010-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'blue'),
(61, 30, 0, 1387288381, '', 0, 0, NULL, '', '', '', '', '2010-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031302d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a223230313020457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313020457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'black'),
(62, 30, 0, 1387291492, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2010-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'blue'),
(63, 30, 0, 1387288405, '', 0, 0, NULL, '', '', '', '', '2010-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031302d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a223230313020457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313020457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'black'),
(64, 31, 0, 1387291323, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'white'),
(65, 31, 0, 1387291135, '', 0, 0, NULL, '', '', '', '', '2011-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031312d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'yellow'),
(66, 31, 0, 1387291323, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'white'),
(67, 31, 0, 1387291158, '', 0, 0, NULL, '', '', '', '', '2011-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031312d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'yellow'),
(68, 31, 0, 1387291323, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'white'),
(69, 31, 0, 1387291179, '', 0, 0, NULL, '', '', '', '', '2011-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031312d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'yellow'),
(70, 31, 0, 1387291323, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'white'),
(71, 31, 0, 1387291204, '', 0, 0, NULL, '', '', '', '', '2011-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031312d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'yellow'),
(72, 35, 0, 1387291529, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-02-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'yellow'),
(73, 35, 0, 1387288879, '', 0, 0, NULL, '', '', '', '', '2011-02-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031312d652d677265656e2e706e67223b733a333a22616c74223b733a31303a223230313120457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313120457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'green'),
(74, 35, 0, 1387291535, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-02-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'yellow'),
(75, 35, 0, 1387288905, '', 0, 0, NULL, '', '', '', '', '2011-02-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031312d652d677265656e2e706e67223b733a333a22616c74223b733a31303a223230313120457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313120457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'green'),
(76, 35, 0, 1387291542, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-02-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'yellow'),
(77, 35, 0, 1387288926, '', 0, 0, NULL, '', '', '', '', '2011-02-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031312d652d677265656e2e706e67223b733a333a22616c74223b733a31303a223230313120457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313120457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'green'),
(78, 35, 0, 1387291547, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2011-02-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'yellow'),
(79, 35, 0, 1387288952, '', 0, 0, NULL, '', '', '', '', '2011-02-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031312d652d677265656e2e706e67223b733a333a22616c74223b733a31303a223230313120457373656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a223230313120457373656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'green'),
(88, 36, 0, 1387291585, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-02-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'orange'),
(89, 36, 0, 1387290511, '', 0, 0, NULL, '', '', '', '', '2012-02-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031322d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a22457373656e2032303132223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22457373656e2032303132223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'black'),
(90, 36, 0, 1387291591, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-02-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'orange'),
(91, 36, 0, 1387290535, '', 0, 0, NULL, '', '', '', '', '2012-02-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031322d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a22457373656e2032303132223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22457373656e2032303132223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'black'),
(92, 36, 0, 1387291597, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-02-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'orange'),
(93, 36, 0, 1387290557, '', 0, 0, NULL, '', '', '', '', '2012-02-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031322d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a22457373656e2032303132223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22457373656e2032303132223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'black'),
(94, 36, 0, 1387291603, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-02-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'orange'),
(95, 36, 0, 1387290579, '', 0, 0, NULL, '', '', '', '', '2012-02-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031322d652d626c61636b2e706e67223b733a333a22616c74223b733a31303a22457373656e2032303132223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22457373656e2032303132223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'black'),
(96, 37, 0, 1387293169, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-02-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'yellow'),
(97, 37, 0, 1387293433, '', 0, 0, NULL, '', '', '', '', '2013-02-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031332d6d2d6f72616e67652e706e67223b733a333a22616c74223b733a31333a2232303133204dc3bc6e6368656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31333a2232303133204dc3bc6e6368656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'orange'),
(98, 37, 0, 1387293178, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-02-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'yellow'),
(99, 37, 0, 1387293456, '', 0, 0, NULL, '', '', '', '', '2013-02-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031332d6d2d6f72616e67652e706e67223b733a333a22616c74223b733a31333a2232303133204dc3bc6e6368656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31333a2232303133204dc3bc6e6368656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'orange'),
(100, 37, 0, 1387293190, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-02-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'yellow'),
(101, 37, 0, 1387293479, '', 0, 0, NULL, '', '', '', '', '2013-02-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031332d6d2d6f72616e67652e706e67223b733a333a22616c74223b733a31333a2232303133204dc3bc6e6368656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31333a2232303133204dc3bc6e6368656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'orange'),
(102, 37, 0, 1387293198, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-02-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'yellow'),
(103, 37, 0, 1387293501, '', 0, 0, NULL, '', '', '', '', '2013-02-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031332d6d2d6f72616e67652e706e67223b733a333a22616c74223b733a31333a2232303133204dc3bc6e6368656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31333a2232303133204dc3bc6e6368656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', 'XL', 'orange'),
(104, 34, 0, 1387292835, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'red'),
(105, 34, 0, 1387293118, '', 0, 0, NULL, '', '', '', '', '2013-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d677265656e2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'green'),
(106, 34, 0, 1387292842, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'red'),
(107, 34, 0, 1387293097, '', 0, 0, NULL, '', '', '', '', '2013-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d677265656e2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'green'),
(108, 34, 0, 1387292848, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'red'),
(109, 34, 0, 1387293075, '', 0, 0, NULL, '', '', '', '', '2013-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d677265656e2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'green'),
(110, 34, 0, 1387292855, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2013-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'red'),
(111, 34, 0, 1387293053, '', 0, 0, NULL, '', '', '', '', '2013-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d677265656e2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'green'),
(112, 0, 4, 1504880883, '', 1386684212, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'mark-lanegan-field-songs', '', '256089', 'Mark Lanegan - Field Songs', 'CD', '<p>CD</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3235363038392e6a7067223b733a333a22616c74223b733a32363a224d61726b204c616e6567616e202d204669656c6420536f6e6773223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '989280000', '145', '', ''),
(113, 31, 0, 1387291225, '', 0, 0, NULL, '', '', '', '', '2011-01-03-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323031312d622d7265642e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'red'),
(114, 31, 0, 1387291247, '', 0, 0, NULL, '', '', '', '', '2011-01-03-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323031312d622d7265642e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'red'),
(115, 31, 0, 1387291270, '', 0, 0, NULL, '', '', '', '', '2011-01-03-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323031312d622d7265642e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'red'),
(116, 31, 0, 1387291290, '', 0, 0, NULL, '', '', '', '', '2011-01-03-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32323a22742d73686972742d323031312d622d7265642e706e67223b733a333a22616c74223b733a31343a22323031312042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031312042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'red'),
(117, 32, 0, 1387292141, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-01-03-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'green'),
(118, 32, 0, 1387292179, '', 0, 0, NULL, '', '', '', '', '2012-01-04-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031322d622d626c75652e706e67223b733a333a22616c74223b733a31343a22323031322042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031322042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'blue'),
(119, 32, 0, 1387292147, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-01-03-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'green'),
(120, 32, 0, 1387292201, '', 0, 0, NULL, '', '', '', '', '2012-01-04-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031322d622d626c75652e706e67223b733a333a22616c74223b733a31343a22323031322042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031322042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'blue'),
(121, 32, 0, 1387292153, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-01-03-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'green'),
(122, 32, 0, 1387292221, '', 0, 0, NULL, '', '', '', '', '2012-01-04-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031322d622d626c75652e706e67223b733a333a22616c74223b733a31343a22323031322042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031322042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'blue'),
(123, 32, 0, 1387292159, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2012-01-03-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'green'),
(124, 32, 0, 1387292245, '', 0, 0, NULL, '', '', '', '', '2012-01-04-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031322d622d626c75652e706e67223b733a333a22616c74223b733a31343a22323031322042616420536f64656e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31343a22323031322042616420536f64656e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'blue'),
(125, 34, 0, 1387293030, '', 0, 0, NULL, '', '', '', '', '2013-01-03-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031332d682d626c75652e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'blue'),
(126, 34, 0, 1387292945, '', 0, 0, NULL, '', '', '', '', '2013-01-04-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d626c61636b2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'black'),
(127, 34, 0, 1387293009, '', 0, 0, NULL, '', '', '', '', '2013-01-03-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031332d682d626c75652e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'blue'),
(128, 34, 0, 1387292922, '', 0, 0, NULL, '', '', '', '', '2013-01-04-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d626c61636b2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'black'),
(129, 34, 0, 1387292988, '', 0, 0, NULL, '', '', '', '', '2013-01-03-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031332d682d626c75652e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'blue'),
(130, 34, 0, 1387292900, '', 0, 0, NULL, '', '', '', '', '2013-01-04-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d626c61636b2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'black'),
(131, 34, 0, 1387292966, '', 0, 0, NULL, '', '', '', '', '2013-01-03-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031332d682d626c75652e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'blue'),
(132, 34, 0, 1387292879, '', 0, 0, NULL, '', '', '', '', '2013-01-04-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031332d682d626c61636b2e706e67223b733a333a22616c74223b733a31303a22323031332048616c6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31303a22323031332048616c6c65223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'black'),
(133, 0, 4, 1504880970, '', 1388588936, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'primus-anti-top', '', '962753', 'Primus - Anti Pop', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3936323735332e6a7067223b733a333a22616c74223b733a31373a225072696d7573202d20416e746920506f70223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '940204800', '148', '', ''),
(134, 0, 4, 1504880883, '', 1388592049, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'rak-book-of-flight', '', '322985', 'RAK - Book Of Flight', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3332323938352e6a7067223b733a333a22616c74223b733a32303a2252414b202d20426f6f6b204f6620466c69676874223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1329782400', '149', '', ''),
(135, 0, 4, 1504880883, '', 1388592735, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'a-perfect-circle-thirteenth-step', '', '289809', 'A Perfect Circle - Thirteenth Step', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3238393830392e6a7067223b733a333a22616c74223b733a33343a2241205065726665637420436972636c65202d20546869727465656e74682053746570223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1063324800', '150', '', ''),
(136, 0, 4, 1504880882, '', 1388593960, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'at-the-drive-in-relationship-of-command', '', '1005222', 'At The Drive In - Relationship Of Command', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31343a2263642d313030353232322e6a7067223b733a333a22616c74223b733a34313a2241742054686520447269766520496e202d2052656c6174696f6e73686970204f6620436f6d6d616e64223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1099958400', '151', '', ''),
(137, 0, 4, 1504880883, '', 1388595021, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'isis-in-the-absence-of-truth', '', '584311', 'Isis - In The Absence Of Truth', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3538343331312e6a7067223b733a333a22616c74223b733a33303a2249736973202d20496e2054686520416273656e6365204f66205472757468223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1161648000', '152', '', ''),
(138, 0, 4, 1504880883, '', 1388595629, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'deus-ideal-crash', '', '187488', 'dEUS - Ideal Crash', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3138373438382e6a7067223b733a333a22616c74223b733a31383a2264455553202d20496465616c204372617368223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '921456000', '153', '', ''),
(139, 0, 4, 1504880970, '', 1388596454, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'kinderzimmer-productions-gegen-den-strich', '', '914415', 'Kinderzimmer Productions - Gegen Den Strich', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3931343431352e6a7067223b733a333a22616c74223b733a34333a224b696e6465727a696d6d65722050726f64756374696f6e73202d20476567656e2044656e20537472696368223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1319155200', '154', '', ''),
(140, 0, 4, 1504880883, '', 1388646087, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'fantomas-directors-cut', '', '260234', 'Fantômas - Directors Cut', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3236303233342e6a7067223b733a333a22616c74223b733a32353a2246616e74c3b46d6173202d204469726563746f727320437574223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '994723200', '155', '', ''),
(141, 0, 4, 1504880970, '', 1388646802, 3, 'a:4:{i:0;s:2:\"56\";i:1;s:2:\"57\";i:2;s:1:\"5\";i:3;s:1:\"6\";}', NULL, '', 'genesis-nursery-cryme', '', '759751', 'Genesis - Nursery Cryme', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3735393735312e6a7067223b733a333a22616c74223b733a32333a2247656e65736973202d204e757273657279204372796d65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '58752000', '156', '', ''),
(142, 0, 4, 1505129113, '', 1388647382, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'helmet-betty', '', '979364', 'Helmet - Betty', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3937393336342e6a7067223b733a333a22616c74223b733a31343a2248656c6d6574202d204265747479223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '765756000', '157', '', ''),
(143, 0, 4, 1504880883, '', 1388647985, 3, 'a:4:{i:0;s:2:\"56\";i:1;s:2:\"57\";i:2;s:1:\"5\";i:3;s:1:\"6\";}', NULL, '', 'mogwai-ep-6', '', '658034', 'Mogwai - EP & 6', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3635383033342e6a7067223b733a333a22616c74223b733a31353a224d6f67776169202d20455020262036223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1002499200', '158', '', ''),
(144, 0, 4, 1504880883, '', 1388649269, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'nik-baertschs-ronin-holon', '', '675060', 'Nik Bärtsch\'s Ronin - Holon', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3637353036302e6a7067223b733a333a22616c74223b733a32383a224e696b2042c3a47274736368277320526f6e696e202d20486f6c6f6e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1201824000', '161', '', ''),
(145, 0, 4, 1504880883, '', 1388650729, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'tool-lateralus', '', '253578', 'Tool - Lateralus', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3235333537382e6a7067223b733a333a22616c74223b733a31363a22546f6f6c202d204c61746572616c7573223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '989877600', '162', '', ''),
(146, 0, 4, 1504880883, '', 1388651932, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'sigur-ros-agaetis-byrjun', '', '230743', 'Sigur Rós - Ágætis Byrjun', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3233303734332e6a7067223b733a333a22616c74223b733a32383a2253696775722052c3b373202d20c38167c3a6746973204279726a756e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '968976000', '167', '', '');
INSERT INTO `tl_iso_product` (`id`, `pid`, `gid`, `tstamp`, `language`, `dateAdded`, `type`, `orderPages`, `inherit`, `fallback`, `alias`, `gtin`, `sku`, `name`, `teaser`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `baseprice`, `shipping_weight`, `shipping_exempt`, `shipping_pickup`, `shipping_price`, `images`, `protected`, `groups`, `guests`, `cssID`, `published`, `start`, `stop`, `contao`, `version`, `date`, `tracks`, `size`, `colour`) VALUES
(147, 0, 4, 1504880883, '', 1388652571, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'porcupine-tree-deadwing', '', '462461', 'Porcupine Tree - Deadwing', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3436323436312e6a7067223b733a333a22616c74223b733a32353a22506f72637570696e652054726565202d204465616477696e67223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1111622400', '168', '', ''),
(148, 0, 4, 1504880883, '', 1388653331, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'tori-amos-tales-of-a-librarian', '', '364873', 'Tori Amos - Tales Of A Librarian', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3336343837332e6a7067223b733a333a22616c74223b733a33323a22546f726920416d6f73202d2054616c6573204f662041204c696272617269616e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1068768000', '169', '', ''),
(149, 0, 4, 1504880883, '', 1388654820, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'radiohead-i-might-be-wrong-live-ep', '', '273483', 'Radiohead - I Might Be Wrong - Live EP', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3237333438332e6a7067223b733a333a22616c74223b733a33383a22526164696f68656164202d2049204d696768742042652057726f6e67202d204c697665204550223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '1005264000', '170', '', ''),
(150, 0, 4, 1504880883, '', 1388655406, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'johnny-cash-american-3-solitary-man', '', '236511', 'Johnny Cash - American 3 - Solitary Man', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3233363531312e6a7067223b733a333a22616c74223b733a33393a224a6f686e6e792043617368202d20416d65726963616e2033202d20536f6c6974617279204d616e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '971481600', '171', '', ''),
(151, 0, 4, 1504880882, '', 1388655825, 3, 'a:2:{i:0;s:2:\"56\";i:1;s:2:\"57\";}', NULL, '', 'the-chemical-brothers-dig-your-own-hole', '', '140978', 'The Chemical Brothers - Dig Your Own Hole', 'CD', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31333a2263642d3134303937382e6a7067223b733a333a22616c74223b733a34313a22546865204368656d6963616c2042726f7468657273202d2044696720596f7572204f776e20486f6c65223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '857174400', '172', '', ''),
(152, 0, 5, 1504881720, '', 1393516565, 4, 'a:2:{i:0;s:2:\"60\";i:1;s:2:\"61\";}', NULL, '', 'contao-open-source-cms', '', '2006', 'Contao Open Source CMS', 'Download', '<p>Contao ist ein Open Source Content Management System (CMS) für alle, die Wert auf eine professionelle Internetpräsenz legen und diese einfach pflegen möchten. Die moderne Architektur des Systems bietet einen hohen Sicherheitsstandard, erlaubt die Entwicklung suchmaschinenfreundli[-]cher und barrierefreier Webseiten und ist flexibel und kostengünstig erweiterbar. Eine umfangreiche Rechteverwaltung, der Live Update Service, das moderne CSS-Framework und viele von Haus aus integrierte Module (News, Kalender, Formulare etc.) haben Contao in kürzester Zeit zu einem der beliebtesten Systeme am Markt für Open Source CMS gemacht.</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31303a22636f6e74616f2e706e67223b733a333a22616c74223b733a32323a22436f6e74616f204f70656e20536f7572636520434d53223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(161, 152, 0, 1393579780, 'en', 0, 0, NULL, NULL, '', '', '', '', 'Contao Open Source CMS', 'Download', '<p>Contao is an open source content management system (CMS) for people who want a professional internet presence that is easy to maintain. The state-of-the-art structure of the system offers a high security standard and allows you to develop search engine friendly websites that are also accessible for people with disabilities. Furthermore, the system can be expanded flexibly and inexpensively. Easy management of user rights, the Live Update Service, the modern CSS framework and many already integrated modules (news, calendar, forms, etc.) have quickly made Contao one of the most popular open source content management systems on the market.</p>', '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31303a22636f6e74616f2e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(170, 0, 0, 1504881496, '', 0, 8, 'a:2:{i:0;s:2:\"82\";i:1;s:2:\"83\";}', NULL, '', 'adams-aepfel', '', '10132021', 'Adams Äpfel - 1 kg', 'Grundpreis', NULL, '', NULL, NULL, 'a:2:{s:4:\"unit\";s:1:\"2\";s:5:\"value\";s:4:\"1000\";}', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31343a22732d31303133323032312e6a7067223b733a333a22616c74223b733a31323a224164616d7320c3847066656c223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(179, 0, 3, 1504880882, '', 1395211689, 2, 'a:4:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:2:\"87\";i:3;s:2:\"89\";}', NULL, '', 'berlin-2014', '', '', '2014 Berlin', 'T-Shirt', '<p>Halle</p>', '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32333a22742d73686972742d323031342d622d626c75652e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(180, 179, 0, 1401893817, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2014-01-01-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'blue'),
(181, 179, 0, 1401893899, '', 0, 0, NULL, '', '', '', '', '2014-01-02-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031342d622d677265656e2e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'green'),
(182, 179, 0, 1401893829, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2014-01-01-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'blue'),
(183, 179, 0, 1401893930, '', 0, 0, NULL, '', '', '', '', '2014-01-02-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031342d622d677265656e2e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'green'),
(184, 179, 0, 1401893841, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2014-01-01-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'blue'),
(185, 179, 0, 1401893967, '', 0, 0, NULL, '', '', '', '', '2014-01-02-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031342d622d677265656e2e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'green'),
(186, 179, 0, 1401893855, '', 0, 0, NULL, 0x613a313a7b693a303b733a363a22696d61676573223b7d, '', '', '', '2014-01-01-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'blue'),
(187, 179, 0, 1401893997, '', 0, 0, NULL, '', '', '', '', '2014-01-02-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32343a22742d73686972742d323031342d622d677265656e2e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'green'),
(189, 179, 0, 1401894074, '', 0, 0, NULL, '', '', '', '', '2014-01-03-01', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031342d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', 'yellow'),
(191, 179, 0, 1401894106, '', 0, 0, NULL, '', '', '', '', '2014-01-03-02', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031342d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', 'yellow'),
(193, 179, 0, 1401894151, '', 0, 0, NULL, '', '', '', '', '2014-01-03-03', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031342d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', 'yellow'),
(195, 179, 0, 1401894189, '', 0, 0, NULL, '', '', '', '', '2014-01-03-04', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a32353a22742d73686972742d323031342d622d79656c6c6f772e706e67223b733a333a22616c74223b733a31313a2232303134204265726c696e223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31313a2232303134204265726c696e223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', 'yellow'),
(196, 0, 0, 1566563327, '', 1403106954, 17, 'a:6:{i:0;s:2:\"62\";i:1;s:2:\"63\";i:2;s:1:\"7\";i:3;s:1:\"8\";i:4;s:2:\"82\";i:5;s:2:\"83\";}', NULL, '', 'id-2042-outer-space', '', '10132031', '2042 Outer space', 'Graduated price', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31363a22742d73686972742d323034322e706e67223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, 'a:0:{}', '', '', 'a:0:{}', 'a:0:{}'),
(198, 196, 0, 1403164569, 'de', 0, 0, NULL, NULL, '', '', '', '', '2042 Outer space', 'Staf­fel­preis', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31363a22742d73686972742d323034322e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(199, 196, 0, 1403158478, 'en', 0, 0, NULL, NULL, '', '', '', '', '2042 Outer space', 'Graduated price', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31363a22742d73686972742d323034322e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(200, 170, 0, 1403158327, 'de', 0, 0, NULL, NULL, '', '', '', '', 'Adams Äpfel - 1 kg', 'Grundpreis', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31343a22732d31303133323032312e6a7067223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(201, 170, 0, 1403158433, 'en', 0, 0, NULL, NULL, '', '', '', '', 'Adam\'s apple - 1 kg', 'Base price', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31343a22732d31303133323032312e6a7067223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(202, 0, 0, 1504881690, '', 1403164923, 19, 'a:6:{i:0;s:2:\"82\";i:1;s:2:\"83\";i:2;s:1:\"7\";i:3;s:2:\"62\";i:4;s:1:\"8\";i:5;s:2:\"63\";}', NULL, '', 'outer-space-3042', '', '', '3042 Outer space', 'Staf­fel­preis mit Varianten', NULL, '', NULL, NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:2:\"kg\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31363a22742d73686972742d333034322e706e67223b733a333a22616c74223b733a31363a2233303432204f75746572207370616365223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31363a2233303432204f75746572207370616365223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, 'a:0:{}', '', '', 'a:0:{}', 'a:0:{}'),
(203, 202, 0, 1403165045, 'de', 0, 0, NULL, NULL, '', '', '', '', '3042 Outer space', 'Staf­fel­preis mit Varianten', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31363a22742d73686972742d333034322e706e67223b733a333a22616c74223b733a31363a2233303432204f75746572207370616365223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a31363a2233303432204f75746572207370616365223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(204, 202, 0, 1403165076, 'en', 0, 0, NULL, NULL, '', '', '', '', '3042 Outer space', 'Graduated price with variants', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a31363a22742d73686972742d333034322e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(205, 202, 0, 1504881173, '', 0, 0, NULL, NULL, '', '', '', '10132041', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'S', ''),
(206, 202, 0, 1504881173, '', 0, 0, NULL, NULL, '', '', '', '10132042', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'M', ''),
(207, 202, 0, 1504881173, '', 0, 0, NULL, NULL, '', '', '', '10132043', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'L', ''),
(208, 202, 0, 1504881173, '', 0, 0, NULL, NULL, '', '', '', '10132044', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', NULL, '', NULL, '', '', '1', '', '', 0, '', '', '', 'XL', ''),
(209, 20, 0, 1504881410, 'de', 0, 0, NULL, NULL, '', '', '', '', '2008 Würzburg', 'T-Shirt', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a32343a22742d73686972742d323030382d772d77686974652e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(210, 20, 0, 1504881414, 'en', 0, 0, NULL, NULL, '', '', '', '', '2008 Würzburg', 'T-Shirt', NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a323a7b733a333a22737263223b733a32343a22742d73686972742d323030382d772d77686974652e706e67223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(211, 152, 0, 1504881702, 'de', 0, 0, NULL, NULL, '', '', '', '', 'Contao Open Source CMS', 'Download', '<p>Contao ist ein Open Source Content Management System (CMS) für alle, die Wert auf eine professionelle Internetpräsenz legen und diese einfach pflegen möchten. Die moderne Architektur des Systems bietet einen hohen Sicherheitsstandard, erlaubt die Entwicklung suchmaschinenfreundli[-]cher und barrierefreier Webseiten und ist flexibel und kostengünstig erweiterbar. Eine umfangreiche Rechteverwaltung, der Live Update Service, das moderne CSS-Framework und viele von Haus aus integrierte Module (News, Kalender, Formulare etc.) haben Contao in kürzester Zeit zu einem der beliebtesten Systeme am Markt für Open Source CMS gemacht.</p>', '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a31303a22636f6e74616f2e706e67223b733a333a22616c74223b733a32323a22436f6e74616f204f70656e20536f7572636520434d53223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(213, 0, 0, 1566480090, '', 1566458760, 22, 'a:2:{i:0;s:2:\"82\";i:1;s:2:\"83\";}', NULL, '', 'stone', '', '111111', 'Stone', NULL, NULL, '', NULL, NULL, '', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:2:\"10\";}', '', '', '0.00', 0x613a313a7b693a303b613a353a7b733a333a22737263223b733a393a2273746f6e652e6a7067223b733a333a22616c74223b733a303a22223b733a343a226c696e6b223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a343a226e6f6e65223b7d7d, '', NULL, '', '', '1', '', '', 0, '', '', '', '', ''),
(214, 213, 0, 1566463723, 'de', 0, 0, NULL, NULL, '', '', '', '', 'Stein', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a343a7b733a333a22737263223b733a393a2273746f6e652e6a7067223b733a333a22616c74223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', ''),
(215, 213, 0, 1566463733, 'en', 0, 0, NULL, NULL, '', '', '', '', 'Stone', NULL, NULL, '', NULL, NULL, '', '', '', '', '0.00', 0x613a313a7b693a303b613a343a7b733a333a22737263223b733a393a2273746f6e652e6a7067223b733a333a22616c74223b733a303a22223b733a343a2264657363223b733a303a22223b733a393a227472616e736c617465223b733a333a22616c6c223b7d7d, '', NULL, '', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_productcache`
--

CREATE TABLE `tl_iso_productcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `uniqid` varchar(32) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `products` blob DEFAULT NULL,
  `expires` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `requestcache_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_productcache`
--

INSERT INTO `tl_iso_productcache` (`id`, `uniqid`, `keywords`, `groups`, `products`, `expires`, `requestcache_id`, `page_id`, `module_id`) VALUES
(1, '69c64fc97819cd39b98a5e690fc66800', '', '', 0x3231332c3230322c3139362c3137392c3135322c3135312c3135302c3134392c3134382c3134372c3134362c3134352c3134342c3134332c3134322c3134312c3134302c3133392c3133382c3133372c3133362c3133352c3133342c3133332c3131322c33342c33312c33302c32392c3230, 0, 0, 0, 0),
(2, 'fddec9ce367e97c54472fa235f8a7e66', '', '', 0x3134332c3134312c32392c3230, 0, 0, 0, 0),
(3, '09f8b2ab724d24da0fa7023a42b38808', '', '', 0x32302c32392c33302c33312c33322c33342c33352c33362c33372c3131322c3133332c3133342c3133352c3133362c3133372c3133382c3133392c3134302c3134312c3134322c3134332c3134342c3134352c3134362c3134372c3134382c3134392c3135302c3135312c3135322c3137302c3137392c3139362c3230322c323133, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_producttype`
--

CREATE TABLE `tl_iso_producttype` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(64) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `prices` char(1) NOT NULL DEFAULT '',
  `show_price_tiers` char(1) NOT NULL DEFAULT '',
  `list_template` varchar(255) NOT NULL DEFAULT '',
  `reader_template` varchar(255) NOT NULL DEFAULT '',
  `list_gallery` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reader_gallery` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `attributes` blob DEFAULT NULL,
  `variants` char(1) NOT NULL DEFAULT '',
  `variant_attributes` blob DEFAULT NULL,
  `force_variant_options` char(1) NOT NULL DEFAULT '',
  `shipping_exempt` char(1) NOT NULL DEFAULT '',
  `downloads` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_producttype`
--

INSERT INTO `tl_iso_producttype` (`id`, `tstamp`, `name`, `class`, `fallback`, `description`, `prices`, `show_price_tiers`, `list_template`, `reader_template`, `list_gallery`, `reader_gallery`, `cssClass`, `attributes`, `variants`, `variant_attributes`, `force_variant_options`, `shipping_exempt`, `downloads`) VALUES
(2, 1422953355, 'T-Shirt', 'standard', '', '', '', '', 'iso_list_default', 'iso_reader_default', 4, 10, '', 0x613a32343a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a31313a2264656c6976657261626c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a2264656c6976657261626c65223b733a363a226c6567656e64223b733a31343a226f7074696f6e735f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32333b7d7d, '1', 0x613a32343a7b733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a363a22636f6c6f7572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22636f6c6f7572223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a343b7d733a343a2273697a65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273697a65223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a333a22636c72223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a353b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a373a2276657273696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a373a2276657273696f6e223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a31343b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d733a31313a2264656c6976657261626c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a2264656c6976657261626c65223b733a363a226c6567656e64223b733a31343a226f7074696f6e735f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32333b7d7d, '1', '', ''),
(3, 1527783573, 'CD', 'standard', '', 'CD anlegen', '', '', 'iso_list_default', 'iso_reader_default', 4, 5, '', 0x613a32343a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a333a22773530223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a31303a227735302077697a617264223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a323a226e6f223b733a383a22706f736974696f6e223b693a31333b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a31343a227368697070696e675f7072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31343a227368697070696e675f7072696365223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32333b7d7d, '', NULL, '', '', ''),
(4, 1566481272, 'Download', 'standard', '', NULL, '', '', 'iso_list_default', 'iso_reader_default', 4, 5, '', 0x613a32363a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a363a22636f6e74616f223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22636f6e74616f223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a343a226774696e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a226774696e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a31343a227368697070696e675f7072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31343a227368697070696e675f7072696365223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32333b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32343b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32353b7d7d, '', 0x613a32333a7b733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a373a2276657273696f6e223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a373a2276657273696f6e223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a363a22636f6c6f7572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22636f6c6f7572223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a343a2273697a65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2273697a65223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '', '1', '1'),
(8, 1403158571, 'Grundpreis / Base price', 'standard', '', '', '', '', 'iso_list_default', 'iso_reader_default', 4, 5, '', 0x613a32333a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a333a22773530223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a31303a227735302077697a617264223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '', NULL, '', '', '');
INSERT INTO `tl_iso_producttype` (`id`, `tstamp`, `name`, `class`, `fallback`, `description`, `prices`, `show_price_tiers`, `list_template`, `reader_template`, `list_gallery`, `reader_gallery`, `cssClass`, `attributes`, `variants`, `variant_attributes`, `force_variant_options`, `shipping_exempt`, `downloads`) VALUES
(17, 1403158537, 'Staf­fel­preis / Graduated price', 'standard', '', '', '1', '1', 'iso_list_default', 'iso_reader_default', 4, 10, '', 0x613a32333a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '', 0x613a32333a7b733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a363a22636f6c6f7572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22636f6c6f7572223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a343b7d733a343a2273697a65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273697a65223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a333a22636c72223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a353b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a373a2276657273696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a373a2276657273696f6e223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a31343b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '1', '', ''),
(19, 1403164892, 'Staf­fel­preis mit Varianten / Graduated price with variants', 'standard', '', '', '1', '1', 'iso_list_default', 'iso_reader_default', 4, 10, '', 0x613a32333a7b733a343a2274797065223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a353a22616c696173223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31313b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '1', 0x613a32333a7b733a393a227075626c6973686564223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a303b7d733a353a227374617274223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a313b7d733a343a2273746f70223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a323b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a333b7d733a343a2273697a65223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a343a2273697a65223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a333a22636c72223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a343b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a343a226e616d65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a31313a226465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a383b7d733a363a22747261636b73223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a393b7d733a343a2264617465223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31303b7d733a363a22636f6c6f7572223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22636f6c6f7572223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a31313b7d733a393a22626173657072696365223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a373a2276657273696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a373a2276657273696f6e223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a333a22796573223b733a383a22706f736974696f6e223b693a31333b7d733a363a22696d61676573223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31353a227368697070696e675f6578656d7074223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31303a226d6574615f7469746c65223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a31363a226d6574615f6465736372697074696f6e223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31333a226d6574615f6b6579776f726473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a393a2270726f746563746564223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a363a22677565737473223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a353a226373734944223b613a363a7b733a373a22656e61626c6564223b733a303a22223b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d7d, '1', '', ''),
(22, 1566458845, 'Stein / Stone', 'standard', '', NULL, '', '', 'iso_list_default', 'iso_reader_default', 4, 5, '', 0x613a32353a7b733a343a2274797065223b613a363a7b733a343a226e616d65223b733a343a2274797065223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a303b7d733a353a227061676573223b613a363a7b733a343a226e616d65223b733a353a227061676573223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a313b7d733a343a226e616d65223b613a363a7b733a343a226e616d65223b733a343a226e616d65223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a323b7d733a353a22616c696173223b613a363a7b733a343a226e616d65223b733a353a22616c696173223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a333b7d733a333a22736b75223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a333a22736b75223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a343b7d733a363a22746561736572223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a363a22746561736572223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a353b7d733a31353a227368697070696e675f776569676874223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a31353a227368697070696e675f776569676874223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a363b7d733a353a227072696365223b613a363a7b733a373a22656e61626c6564223b733a313a2231223b733a343a226e616d65223b733a353a227072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a373b7d733a363a22696d61676573223b613a363a7b733a343a226e616d65223b733a363a22696d61676573223b733a363a226c6567656e64223b733a31323a226d656469615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a383b7d733a393a227075626c6973686564223b613a363a7b733a343a226e616d65223b733a393a227075626c6973686564223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a393b7d733a353a227374617274223b613a363a7b733a343a226e616d65223b733a353a227374617274223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a31303b7d733a343a2273746f70223b613a363a7b733a343a226e616d65223b733a343a2273746f70223b733a363a226c6567656e64223b733a31343a227075626c6973685f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a373a22656e61626c6564223b733a313a2231223b733a383a22706f736974696f6e223b693a31313b7d733a31313a226465736372697074696f6e223b613a353a7b733a343a226e616d65223b733a31313a226465736372697074696f6e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31323b7d733a343a226774696e223b613a353a7b733a343a226e616d65223b733a343a226774696e223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31333b7d733a363a22747261636b73223b613a353a7b733a343a226e616d65223b733a363a22747261636b73223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31343b7d733a343a2264617465223b613a353a7b733a343a226e616d65223b733a343a2264617465223b733a363a226c6567656e64223b733a31343a2267656e6572616c5f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31353b7d733a31353a227368697070696e675f6578656d7074223b613a353a7b733a343a226e616d65223b733a31353a227368697070696e675f6578656d7074223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31363b7d733a31343a227368697070696e675f7072696365223b613a353a7b733a343a226e616d65223b733a31343a227368697070696e675f7072696365223b733a363a226c6567656e64223b733a31353a227368697070696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31373b7d733a393a22626173657072696365223b613a353a7b733a343a226e616d65223b733a393a22626173657072696365223b733a363a226c6567656e64223b733a31343a2270726963696e675f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31383b7d733a31303a226d6574615f7469746c65223b613a353a7b733a343a226e616d65223b733a31303a226d6574615f7469746c65223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a31393b7d733a31363a226d6574615f6465736372697074696f6e223b613a353a7b733a343a226e616d65223b733a31363a226d6574615f6465736372697074696f6e223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32303b7d733a31333a226d6574615f6b6579776f726473223b613a353a7b733a343a226e616d65223b733a31333a226d6574615f6b6579776f726473223b733a363a226c6567656e64223b733a31313a226d6574615f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32313b7d733a393a2270726f746563746564223b613a353a7b733a343a226e616d65223b733a393a2270726f746563746564223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32323b7d733a363a22677565737473223b613a353a7b733a343a226e616d65223b733a363a22677565737473223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32333b7d733a353a226373734944223b613a353a7b733a343a226e616d65223b733a353a226373734944223b733a363a226c6567656e64223b733a31333a226578706572745f6c6567656e64223b733a383a22746c5f636c617373223b733a303a22223b733a393a226d616e6461746f7279223b733a303a22223b733a383a22706f736974696f6e223b693a32343b7d7d, '', NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_category`
--

CREATE TABLE `tl_iso_product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `page_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_category`
--

INSERT INTO `tl_iso_product_category` (`id`, `pid`, `sorting`, `tstamp`, `page_id`) VALUES
(10, 20, 128, 1386670508, 62),
(11, 20, 128, 1386670508, 63),
(14, 29, 256, 1386672362, 62),
(15, 29, 256, 1386672362, 63),
(16, 30, 384, 1386672375, 62),
(17, 30, 384, 1386672375, 63),
(18, 31, 512, 1386672395, 62),
(19, 31, 512, 1386672395, 63),
(20, 32, 640, 1386672408, 62),
(21, 32, 640, 1386672408, 63),
(22, 34, 768, 1386672449, 62),
(23, 34, 768, 1386672449, 63),
(24, 35, 896, 1386676355, 62),
(25, 35, 896, 1386676355, 63),
(26, 36, 1024, 1386676615, 62),
(27, 36, 1024, 1386676615, 63),
(28, 37, 1152, 1386676684, 62),
(29, 37, 1152, 1386676684, 63),
(30, 20, 128, 1386679354, 5),
(31, 20, 128, 1386679354, 6),
(32, 29, 256, 1386679371, 5),
(33, 29, 256, 1386679371, 6),
(34, 112, 128, 1386684401, 56),
(35, 112, 128, 1386684401, 57),
(36, 133, 256, 1388589211, 56),
(37, 133, 256, 1388589211, 57),
(38, 134, 384, 1388592293, 56),
(39, 134, 384, 1388592293, 57),
(40, 135, 512, 1388592880, 56),
(41, 135, 512, 1388592880, 57),
(42, 136, 640, 1388594124, 56),
(43, 136, 640, 1388594124, 57),
(44, 137, 768, 1388595192, 56),
(45, 137, 768, 1388595192, 57),
(46, 138, 896, 1388595754, 56),
(47, 138, 896, 1388595754, 57),
(48, 139, 1024, 1388596627, 56),
(49, 139, 1024, 1388596627, 57),
(50, 140, 1152, 1388646192, 56),
(51, 140, 1152, 1388646192, 57),
(52, 141, 1280, 1388646948, 56),
(53, 141, 1280, 1388646948, 57),
(54, 142, 1408, 1388647520, 56),
(55, 142, 1408, 1388647520, 57),
(56, 143, 1536, 1388648111, 56),
(57, 143, 1536, 1388648111, 57),
(58, 144, 1664, 1388649362, 56),
(59, 144, 1664, 1388649362, 57),
(60, 145, 1792, 1388650846, 56),
(61, 145, 1792, 1388650846, 57),
(62, 146, 1920, 1388652011, 56),
(63, 146, 1920, 1388652011, 57),
(64, 147, 2048, 1388652684, 56),
(65, 147, 2048, 1388652684, 57),
(66, 148, 2176, 1388653474, 56),
(67, 148, 2176, 1388653474, 57),
(68, 143, 384, 1388653776, 5),
(69, 143, 384, 1388653776, 6),
(70, 141, 512, 1388653885, 5),
(71, 141, 512, 1388653885, 6),
(72, 149, 2304, 1388654938, 56),
(73, 149, 2304, 1388654938, 57),
(74, 150, 2432, 1388655503, 56),
(75, 150, 2432, 1388655503, 57),
(76, 151, 2560, 1388655838, 56),
(77, 151, 2560, 1388655838, 57),
(78, 152, 128, 1393516619, 60),
(79, 152, 128, 1393516619, 61),
(82, 170, 128, 1395212102, 82),
(83, 170, 128, 1395212102, 83),
(88, 179, 1280, 1401893715, 62),
(89, 179, 1280, 1401893715, 63),
(97, 202, 384, 1403164996, 82),
(99, 202, 384, 1403164996, 83),
(100, 20, 128, 1421791544, 87),
(101, 20, 128, 1421791544, 89),
(102, 29, 256, 1421791544, 87),
(103, 29, 256, 1421791544, 89),
(104, 30, 384, 1421791544, 87),
(105, 30, 384, 1421791544, 89),
(106, 31, 512, 1421791544, 87),
(107, 31, 512, 1421791544, 89),
(108, 35, 640, 1421791544, 87),
(109, 35, 640, 1421791544, 89),
(110, 32, 768, 1421791544, 87),
(111, 32, 768, 1421791544, 89),
(112, 36, 896, 1421791545, 87),
(113, 36, 896, 1421791545, 89),
(114, 34, 1024, 1421791545, 87),
(115, 34, 1024, 1421791545, 89),
(116, 37, 1152, 1421791545, 87),
(117, 37, 1152, 1421791545, 89),
(118, 179, 1280, 1421791545, 87),
(119, 179, 1280, 1421791545, 89),
(121, 196, 128, 1504881621, 7),
(122, 196, 1408, 1504881621, 62),
(123, 196, 512, 1504881621, 82),
(124, 196, 128, 1504881621, 8),
(125, 196, 1408, 1504881621, 63),
(126, 196, 512, 1504881621, 83),
(127, 202, 256, 1504881690, 7),
(128, 202, 1536, 1504881690, 62),
(129, 202, 256, 1504881690, 8),
(130, 202, 1536, 1504881690, 63),
(133, 213, 640, 1566464728, 82),
(134, 213, 640, 1566464728, 83);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_collection`
--

CREATE TABLE `tl_iso_product_collection` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `member` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locked` int(11) DEFAULT NULL,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `settings` blob DEFAULT NULL,
  `checkout_info` blob DEFAULT NULL,
  `payment_data` blob DEFAULT NULL,
  `shipping_data` blob DEFAULT NULL,
  `source_collection_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `document_number` varchar(64) NOT NULL DEFAULT '',
  `uniqid` varchar(64) DEFAULT NULL,
  `order_status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_paid` int(11) DEFAULT NULL,
  `date_shipped` int(11) DEFAULT NULL,
  `sendNotification` char(1) NOT NULL DEFAULT '',
  `config_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `payment_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipping_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `billing_address_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipping_address_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_free_subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_free_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(4) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `coupons` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_collection`
--

INSERT INTO `tl_iso_product_collection` (`id`, `tstamp`, `type`, `member`, `locked`, `store_id`, `settings`, `checkout_info`, `payment_data`, `shipping_data`, `source_collection_id`, `document_number`, `uniqid`, `order_status`, `date_paid`, `date_shipped`, `sendNotification`, `config_id`, `payment_id`, `shipping_id`, `billing_address_id`, `shipping_address_id`, `subtotal`, `tax_free_subtotal`, `total`, `tax_free_total`, `currency`, `language`, `notes`, `coupons`) VALUES
(132, 1393233619, 'order', 1, 1387020394, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a363a22206669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a343a7b733a383a22686561646c696e65223b733a31343a2256657273616e646d6574686f6465223b733a343a22696e666f223b733a393a224c6965666572756e67223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a353a22206c617374223b7d7d, NULL, NULL, 115, '0001', '52ac4067354f18.85415366', 6, 1393233619, 0, '', 5, 2, 2, 43, 43, '79.10', '87.90', '89.10', '87.90', 'CHF', 'de', '', NULL),
(153, 1395990152, 'order', 1, 1387661165, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a393a224c6965666572756e67223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 133, '0002', '52b607691f8058.05172281', 6, 1394903280, 0, '', 5, 2, 2, 44, 0, '298.30', '336.90', '248.65', '336.90', 'CHF', 'de', '', NULL),
(166, 1393233647, 'order', 1, 1387889494, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a393a224c6965666572756e67223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 156, '0003', '52b983549af9c9.61492309', 8, 0, 0, '', 5, 2, 2, 47, 47, '103.60', '107.80', '113.60', '107.80', 'CHF', 'de', '', NULL),
(170, 1393579966, 'order', 1, 1387889911, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a393a224c6965666572756e67223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 167, '0004', '52b984f5994047.41209790', 6, 0, 0, '', 5, 2, 2, 48, 48, '21.00', '21.00', '31.00', '21.00', 'CHF', 'de', '', NULL),
(189, 1393579977, 'order', 1, 1393234052, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a393a224c6965666572756e67223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 171, '0005', '530b1082450046.04579113', 7, 0, 0, '', 5, 2, 2, 49, 49, '67.40', '122.80', '77.40', '122.80', 'CHF', 'de', '', NULL),
(245, 1401894813, 'order', 2, 1401894813, 0, 0x613a353a7b733a363a22706167654964223b693a34383b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339313a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e446f6e6e613c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e4576616e733c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a642e6576616e734069736f746f706565636f6d6d657263652e6f7267223e642e6576616e734069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a32313a2264652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a333a2244484c223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32323a2264652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a32313a2264652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 244, '0006', '538f379a903af8.36123741', 4, 1401894814, 0, '', 5, 2, 10, 69, 69, '176.90', '176.90', '141.50', '176.90', 'CHF', 'de', NULL, NULL),
(254, 1421862973, 'order', 2, 1421862973, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3339343a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e446f6e6e613c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e4576616e733c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a0a3c6120687265663d226d61696c746f3a642e6576616e734069736f746f706565636f6d6d657263652e6f7267223e642e6576616e734069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a333a2244484c223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33323a22696e6465782e7068702f64652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 253, '0007', '54bfe81caaec43.10107685', 4, 1421862975, 0, '', 5, 2, 10, 72, 72, '21.90', '21.90', '26.80', '26.80', 'CHF', 'de', NULL, NULL),
(262, 1467806366, 'order', 0, 1467806331, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3338383a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4b6576696e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e4a6f6e65733c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e5369656368656e6261636820313c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6b2e6a6f6e65734069736f746f706565636f6d6d657263652e6f7267223e6b2e6a6f6e65734069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a333a2244484c223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33323a22696e6465782e7068702f64652f6b617373652f7368697070696e672e68746d6c223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 259, '0008', '577cf27b9bf034.83993821', 6, 1467806280, NULL, '', 5, 2, 10, 74, 74, '21.90', '21.90', '26.80', '21.90', 'CHF', 'de', NULL, NULL),
(267, 1467807403, 'order', 0, 1467807403, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3338373a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e5369656368656e6261636820313c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a333a2244484c223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a303a22223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a303a22223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 264, '0009', '577cf6ab7d9e85.90049033', 4, 1467807404, NULL, '', 5, 2, 10, 76, 76, '43.80', '43.80', '48.70', '43.80', 'CHF', 'de', NULL, NULL),
(271, 1467808092, 'order', 0, 1467808092, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a333a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a32393a22526563686e756e67732d20756e642056657273616e6461647265737365223b733a343a22696e666f223b733a3338373a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e5369656368656e6261636820313c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31353a227368697070696e675f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31303a2256657273616e64617274223b733a343a22696e666f223b733a333a2244484c223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a303a22223b733a353a22636c617373223b733a303a22223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a303a22223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 268, '0010', '577cf95bdf1c86.53210302', 4, 1467808093, NULL, '', 5, 2, 10, 78, 78, '95.70', '95.70', '102.60', '95.70', 'CHF', 'de', NULL, NULL),
(275, 1488893913, 'order', 1, 1488893913, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a323a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a31363a22526563686e756e677361647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 258, '0011', '58beb7d4c17956.31249534', 4, NULL, NULL, '', 5, 2, 10, 79, 0, '198.00', '198.00', '198.00', '198.00', 'CHF', 'de', NULL, NULL),
(278, 1566476254, 'order', 1, 1488900363, 0, 0x613a353a7b733a31353a226e635f6e6f74696669636174696f6e223b733a313a2234223b733a32303a2269736f5f616464546f41646472657373626f6f6b223b733a313a2231223b733a31303a22656d61696c5f64617461223b613a303a7b7d733a363a22706167654964223b693a34383b733a31373a22636865636b6f75745f636f6d706c657465223b623a313b7d, 0x613a323a7b733a31353a2262696c6c696e675f61646472657373223b613a343a7b733a383a22686561646c696e65223b733a31363a22526563686e756e677361647265737365223b733a343a22696e666f223b733a3339303a223c64697620636c6173733d227663617264223e3c64697620636c6173733d226e223e203c7370616e20636c6173733d22676976656e2d6e616d65223e4a6f686e3c2f7370616e3e203c7370616e20636c6173733d2266616d696c792d6e616d65223e536d6974683c2f7370616e3e3c2f6469763e0a3c64697620636c6173733d22616472223e3c64697620636c6173733d227374726565742d61646472657373223e536f6e6e68616c64657261696e2031353c2f6469763e0a3c7370616e20636c6173733d22706f7374616c2d636f6465223e333235303c2f7370616e3e203c7370616e20636c6173733d226c6f63616c697479223e4c7973733c2f7370616e3e0a3c64697620636c6173733d22636f756e7472792d6e616d65223e5363687765697a3c2f6469763e3c2f6469763e0a0a0a3c6120687265663d226d61696c746f3a6a2e736d6974684069736f746f706565636f6d6d657263652e6f7267223e6a2e736d6974684069736f746f706565636f6d6d657263652e6f72673c2f613e3c2f6469763e223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f616464726573732e68746d6c223b733a353a22636c617373223b733a353a226669727374223b7d733a31343a227061796d656e745f6d6574686f64223b613a353a7b733a383a22686561646c696e65223b733a31333a2242657a61686c6d6574686f6465223b733a343a22696e666f223b733a343a2243617368223b733a343a226e6f7465223b733a303a22223b733a343a2265646974223b733a33313a22696e6465782e7068702f64652f6b617373652f7061796d656e742e68746d6c223b733a353a22636c617373223b733a343a226c617374223b7d7d, NULL, NULL, 277, '0012', '58bed1055457d8.28779928', 6, 1566476220, NULL, '', 5, 2, 0, 80, 0, '99.00', '99.00', '99.00', '99.00', 'CHF', 'de', NULL, NULL),
(280, 1504878961, 'favorites', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, '', '59b29c1425a528.06700026', 0, NULL, NULL, '', 5, 0, 0, 0, 0, '30.30', '30.30', '30.30', '30.30', 'CHF', '', NULL, NULL),
(291, 1566463832, 'cart', 1, NULL, 0, NULL, NULL, NULL, NULL, 0, '', NULL, 0, NULL, NULL, '', 5, 0, 0, 41, 41, '59.00', '59.00', '59.00', '59.00', 'CHF', '', NULL, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_collection_download`
--

CREATE TABLE `tl_iso_product_collection_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `download_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `downloads_remaining` varchar(10) NOT NULL DEFAULT '',
  `expires` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_collection_download`
--

INSERT INTO `tl_iso_product_collection_download` (`id`, `pid`, `tstamp`, `download_id`, `downloads_remaining`, `expires`) VALUES
(17, 288, 1401894813, 2, '', ''),
(18, 288, 1401894813, 6, '', ''),
(19, 288, 1401894813, 5, '', ''),
(20, 361, 1488893913, 2, '', ''),
(21, 361, 1488893913, 6, '', ''),
(22, 361, 1488893913, 5, '', ''),
(23, 366, 1488900363, 2, '', ''),
(24, 366, 1488900363, 6, '', ''),
(25, 366, 1488900363, 5, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_collection_item`
--

CREATE TABLE `tl_iso_product_collection_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `sku` varchar(128) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `configuration` blob DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_free_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_collection_item`
--

INSERT INTO `tl_iso_product_collection_item` (`id`, `pid`, `tstamp`, `product_id`, `type`, `sku`, `name`, `configuration`, `quantity`, `price`, `tax_free_price`, `tax_id`, `jumpTo`) VALUES
(123, 132, 1387020391, 72, 'standard', '', '<span>2011</span> Essen', 0x613a323a7b733a363a22636f6c6f7572223b4e3b733a343a2273697a65223b4e3b7d, 1, '12.00', '12.00', '', 62),
(124, 132, 1387020391, 50, 'standard', '', '<span>2009</span> Frankfurt', 0x613a323a7b733a363a22636f6c6f7572223b4e3b733a343a2273697a65223b4e3b7d, 1, '17.60', '22.00', '', 62),
(125, 132, 1387020391, 41, 'standard', '', '<span>2008</span> Würzburg', 0x613a323a7b733a363a22636f6c6f7572223b4e3b733a343a2273697a65223b4e3b7d, 2, '17.60', '22.00', '', 62),
(126, 132, 1387020391, 112, 'standard', '256089', '<span>Mark Lanegan -</span> Field Songs', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(152, 153, 1387661162, 49, 'standard', '2009-01-02-01', '<span>2009</span> Frankfurt', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22677265656e223b733a343a2273697a65223b733a313a2253223b7d, 1, '16.80', '21.00', '', 62),
(153, 153, 1387661162, 39, 'standard', '2008-01-01-01', '<span>2008</span> Würzburg', 0x613a323a7b733a363a22636f6c6f7572223b733a353a227768697465223b733a343a2273697a65223b733a313a2253223b7d, 4, '16.80', '21.00', '', 62),
(154, 153, 1387661162, 57, 'standard', '2010-01-02-01', '<span>2010</span> Essen', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22626c61636b223b733a343a2273697a65223b733a313a2253223b7d, 2, '21.00', '21.00', '', 62),
(155, 153, 1387661162, 42, 'standard', '2008-01-02-02', '<span>2008</span> Würzburg', 0x613a323a7b733a363a22636f6c6f7572223b733a363a2279656c6c6f77223b733a343a2273697a65223b733a313a224d223b7d, 1, '17.60', '22.00', '', 62),
(156, 153, 1387661162, 50, 'standard', '2009-01-01-02', '<span>2009</span> Frankfurt', 0x613a323a7b733a363a22636f6c6f7572223b733a333a22726564223b733a343a2273697a65223b733a313a224d223b7d, 3, '17.60', '22.00', '', 62),
(157, 153, 1387661162, 60, 'standard', '2010-01-01-03', '<span>2010</span> Essen', 0x613a323a7b733a363a22636f6c6f7572223b733a343a22626c7565223b733a343a2273697a65223b733a313a224c223b7d, 2, '23.00', '23.00', '', 62),
(158, 153, 1387661162, 112, 'standard', '256089', '<span>Mark Lanegan -</span> Field Songs', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(159, 153, 1387661162, 71, 'standard', '2011-01-02-04', '<span>2011</span> Bad Soden', 0x613a323a7b733a363a22636f6c6f7572223b733a363a2279656c6c6f77223b733a343a2273697a65223b733a323a22584c223b7d, 1, '24.00', '24.00', '', 62),
(165, 166, 1387889492, 49, 'standard', '2009-01-02-01', '<span>2009</span> Frankfurt', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22677265656e223b733a343a2273697a65223b733a313a2253223b7d, 1, '16.80', '21.00', '', 62),
(166, 166, 1387889492, 112, 'standard', '256089', '<span>Mark Lanegan -</span> Field Songs', 0x613a303a7b7d, 2, '31.90', '31.90', '', 56),
(167, 166, 1387889492, 61, 'standard', '2010-01-02-03', '<span>2010</span> Essen', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22626c61636b223b733a343a2273697a65223b733a313a224c223b7d, 1, '23.00', '23.00', '', 62),
(170, 170, 1387889909, 105, 'standard', '2013-01-02-01', '<span>2013</span> Halle', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22677265656e223b733a343a2273697a65223b733a313a2253223b7d, 1, '21.00', '21.00', '', 62),
(184, 189, 1393234050, 43, 'standard', '2008-01-01-03', '<span>2008</span> Würzburg', 0x613a323a7b733a363a22636f6c6f7572223b733a353a227768697465223b733a343a2273697a65223b733a313a224c223b7d, 1, '13.00', '23.00', '', 62),
(185, 189, 1393234050, 151, 'standard', '140978', '<span>The Chemical Brothers -</span> Dig Your Own Hole', 0x613a303a7b7d, 1, '15.50', '31.90', '', 56),
(186, 189, 1393234050, 143, 'standard', '658034', '<span>Mogwai -</span> EP & 6', 0x613a303a7b7d, 1, '17.50', '21.90', '', 56),
(187, 189, 1393234050, 52, 'standard', '2009-01-01-03', '<span>2009</span> Frankfurt', 0x613a323a7b733a363a22636f6c6f7572223b733a333a22726564223b733a343a2273697a65223b733a313a224c223b7d, 1, '13.00', '23.00', '', 62),
(188, 189, 1393234050, 121, 'standard', '2012-01-03-03', '<span>2012</span> Bad Soden', 0x613a323a7b733a363a22636f6c6f7572223b733a353a22677265656e223b733a343a2273697a65223b733a313a224c223b7d, 1, '8.40', '23.00', '', 62),
(287, 245, 1401894811, 142, 'standard', '979364', '<span>Helmet -</span> Betty', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(288, 245, 1401894811, 152, 'standard', '2006', '<span>Contao</span> Open Source CMS', 0x613a303a7b7d, 1, '99.00', '99.00', '', 60),
(289, 245, 1401894811, 180, 'standard', '2014-01-01-01', '<span>2014</span> Berlin', 0x613a323a7b733a363a22636f6c6f7572223b733a343a22626c7565223b733a343a2273697a65223b733a313a2253223b7d, 1, '21.00', '21.00', '', 62),
(290, 245, 1401894811, 170, 'standard', '10132021', '<span>Adams Äpfel -</span> 2 kg', 0x613a303a7b7d, 5, '5.00', '5.00', '', 82),
(305, 254, 1421862973, 141, 'standard', '759751', '<span>Genesis -</span> Nursery Cryme', 0x613a303a7b7d, 1, '21.90', '21.90', '', 56),
(331, 262, 1467806331, 141, 'standard', '759751', '<span>Genesis -</span> Nursery Cryme', 0x613a303a7b7d, 1, '21.90', '21.90', '', 56),
(339, 267, 1467807403, 135, 'standard', '289809', '<span>A Perfect Circle -</span> Thirteenth Step', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(340, 267, 1467807403, 143, 'standard', '658034', '<span>Mogwai -</span> EP & 6', 0x613a303a7b7d, 1, '11.90', '11.90', '', 56),
(350, 271, 1467808092, 112, 'standard', '256089', '<span>Mark Lanegan -</span> Field Songs', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(351, 271, 1467808092, 150, 'standard', '236511', '<span>Johnny Cash -</span> American 3 - Solitary Man', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(352, 271, 1467808092, 138, 'standard', '187488', '<span>dEUS -</span> Ideal Crash', 0x613a303a7b7d, 1, '31.90', '31.90', '', 56),
(361, 275, 1488893913, 152, 'standard', '2006', '<span>Contao</span> Open Source CMS', 0x613a303a7b7d, 2, '99.00', '99.00', '', 60),
(366, 278, 1488900363, 152, 'standard', '2006', '<span>Contao</span> Open Source CMS', 0x613a303a7b7d, 1, '99.00', '99.00', '', 60),
(368, 280, 1504877588, 44, 'standard', '2008-01-02-03', '<span>2008</span> Würzburg', 0x613a323a7b733a363a22636f6c6f7572223b733a363a2279656c6c6f77223b733a343a2273697a65223b733a313a224c223b7d, 1, '8.40', '8.40', '', 62),
(369, 280, 1504877675, 150, 'standard', '236511', '<span>Johnny Cash -</span> American 3 - Solitary Man', 0x613a303a7b7d, 1, '21.90', '21.90', '', 57),
(387, 291, 1566463767, 213, 'standard', '111111', 'Stein', 0x613a303a7b7d, 1, '59.00', '59.00', '', 82);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_collection_log`
--

CREATE TABLE `tl_iso_product_collection_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_collection_log`
--

INSERT INTO `tl_iso_product_collection_log` (`id`, `tstamp`, `pid`, `author`, `data`) VALUES
(1, 1393233619, 132, 0, 0x7b226f726465725f737461747573223a2236222c22646174655f70616964223a2231333933323333363139222c22646174655f73686970706564223a2230222c226e6f746573223a22227d),
(2, 1395990152, 153, 0, 0x7b226f726465725f737461747573223a2236222c22646174655f70616964223a2231333934393033323830222c22646174655f73686970706564223a2230222c226e6f746573223a22227d),
(3, 1393233647, 166, 0, 0x7b226f726465725f737461747573223a2238222c22646174655f70616964223a2230222c22646174655f73686970706564223a2230222c226e6f746573223a22227d),
(4, 1393579966, 170, 0, 0x7b226f726465725f737461747573223a2236222c22646174655f70616964223a2230222c22646174655f73686970706564223a2230222c226e6f746573223a22227d),
(5, 1393579977, 189, 0, 0x7b226f726465725f737461747573223a2237222c22646174655f70616964223a2230222c22646174655f73686970706564223a2230222c226e6f746573223a22227d),
(6, 1401894813, 245, 0, 0x7b226f726465725f737461747573223a2234222c22646174655f70616964223a2231343031383934383134222c22646174655f73686970706564223a2230222c226e6f746573223a6e756c6c7d),
(7, 1421862973, 254, 0, 0x7b226f726465725f737461747573223a2234222c22646174655f70616964223a2231343231383632393735222c22646174655f73686970706564223a2230222c226e6f746573223a6e756c6c7d),
(8, 1467806366, 262, 0, 0x7b226f726465725f737461747573223a2236222c22646174655f70616964223a2231343637383036323830222c22646174655f73686970706564223a6e756c6c2c226e6f746573223a6e756c6c7d),
(9, 1467807403, 267, 0, 0x7b226f726465725f737461747573223a2234222c22646174655f70616964223a2231343637383037343034222c22646174655f73686970706564223a6e756c6c2c226e6f746573223a6e756c6c7d),
(10, 1467808092, 271, 0, 0x7b226f726465725f737461747573223a2234222c22646174655f70616964223a2231343637383038303933222c22646174655f73686970706564223a6e756c6c2c226e6f746573223a6e756c6c7d),
(11, 1488893913, 275, 0, 0x7b226f726465725f737461747573223a2234222c22646174655f70616964223a6e756c6c2c22646174655f73686970706564223a6e756c6c2c226e6f746573223a6e756c6c7d),
(12, 1566476254, 278, 0, 0x7b226f726465725f737461747573223a2236222c22646174655f70616964223a2231353636343736323230222c22646174655f73686970706564223a6e756c6c2c226e6f746573223a6e756c6c7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_collection_surcharge`
--

CREATE TABLE `tl_iso_product_collection_surcharge` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(32) NOT NULL DEFAULT '',
  `total_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_free_total_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax_class` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tax_id` varchar(32) NOT NULL DEFAULT '',
  `before_tax` char(1) NOT NULL DEFAULT '',
  `addToTotal` char(1) NOT NULL DEFAULT '',
  `applyRoundingIncrement` char(1) NOT NULL DEFAULT '1',
  `products` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_collection_surcharge`
--

INSERT INTO `tl_iso_product_collection_surcharge` (`id`, `pid`, `sorting`, `tstamp`, `type`, `source_id`, `label`, `price`, `total_price`, `tax_free_total_price`, `tax_class`, `tax_id`, `before_tax`, `addToTotal`, `applyRoundingIncrement`, `products`) VALUES
(33, 132, 0, 1387020391, 'shipping', 0, 'Versandkosten (Lieferung)', '&nbsp;', '10.00', '0.00', 0, '', '0', '', '1', 0x613a303a7b7d),
(34, 153, 128, 1387661162, 'shipping', 0, 'Versandkosten (Lieferung)', '&nbsp;', '10.00', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(35, 153, 256, 1387661162, 'rule', 0, 'Gutschein &#40;20%&#41;', '-20%', '-59.66', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(36, 166, 128, 1387889492, 'shipping', 0, 'Versandkosten (Lieferung)', '&nbsp;', '10.00', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(37, 170, 128, 1387889909, 'shipping', 0, 'Versandkosten (Lieferung)', '&nbsp;', '10.00', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(38, 189, 128, 1393234050, 'shipping', 0, 'Versand (Lieferung)', '&nbsp;', '10.00', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(46, 245, 128, 1401894811, 'rule', 0, 'Gutschein', '-20%', '-35.38', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(47, 254, 128, 1421862973, 'shipping', 0, 'Versand (DHL)', '&nbsp;', '4.90', '4.90', 0, '', '0', '1', '1', 0x613a303a7b7d),
(48, 262, 128, 1467806331, 'shipping', 0, 'Versand', '&nbsp;', '4.90', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(49, 267, 128, 1467807403, 'shipping', 0, 'Versand', '&nbsp;', '4.90', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d),
(50, 271, 128, 1467808092, 'shipping', 0, 'Versand', '&nbsp;', '6.90', '0.00', 0, '', '0', '1', '1', 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_price`
--

CREATE TABLE `tl_iso_product_price` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tax_class` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `config_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_group` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_price`
--

INSERT INTO `tl_iso_product_price` (`id`, `pid`, `tstamp`, `tax_class`, `config_id`, `member_group`, `start`, `stop`) VALUES
(7, 15, 1386574500, 0, 0, 0, '', ''),
(8, 16, 1386574500, 0, 0, 0, '', ''),
(14, 39, 1386677121, 0, 0, 0, '', ''),
(15, 40, 1386677121, 0, 0, 0, '', ''),
(16, 41, 1386677121, 0, 0, 0, '', ''),
(17, 42, 1386677121, 0, 0, 0, '', ''),
(18, 43, 1386677122, 0, 0, 0, '', ''),
(19, 44, 1386677122, 0, 0, 0, '', ''),
(20, 45, 1386677122, 0, 0, 0, '', ''),
(21, 46, 1386677122, 0, 0, 0, '', ''),
(22, 48, 1386677310, 0, 0, 0, '', ''),
(23, 49, 1386677310, 0, 0, 0, '', ''),
(24, 50, 1386677310, 0, 0, 0, '', ''),
(25, 51, 1386677310, 0, 0, 0, '', ''),
(26, 52, 1386677310, 0, 0, 0, '', ''),
(27, 53, 1386677310, 0, 0, 0, '', ''),
(28, 54, 1386677311, 0, 0, 0, '', ''),
(29, 55, 1386677311, 0, 0, 0, '', ''),
(30, 56, 1386677509, 0, 0, 0, '', ''),
(31, 57, 1386677509, 0, 0, 0, '', ''),
(32, 58, 1386677509, 0, 0, 0, '', ''),
(33, 59, 1386677510, 0, 0, 0, '', ''),
(34, 60, 1386677510, 0, 0, 0, '', ''),
(35, 61, 1386677510, 0, 0, 0, '', ''),
(36, 62, 1386677510, 0, 0, 0, '', ''),
(37, 63, 1386677510, 0, 0, 0, '', ''),
(38, 64, 1386677645, 0, 0, 0, '', ''),
(39, 65, 1386677645, 0, 0, 0, '', ''),
(40, 66, 1386677645, 0, 0, 0, '', ''),
(41, 67, 1386677645, 0, 0, 0, '', ''),
(42, 68, 1386677645, 0, 0, 0, '', ''),
(43, 69, 1386677645, 0, 0, 0, '', ''),
(44, 70, 1386677645, 0, 0, 0, '', ''),
(45, 71, 1386677645, 0, 0, 0, '', ''),
(46, 72, 1386677955, 0, 0, 0, '', ''),
(47, 73, 1386677955, 0, 0, 0, '', ''),
(48, 74, 1386677955, 0, 0, 0, '', ''),
(49, 75, 1386677955, 0, 0, 0, '', ''),
(50, 76, 1386677955, 0, 0, 0, '', ''),
(51, 77, 1386677955, 0, 0, 0, '', ''),
(52, 78, 1386677955, 0, 0, 0, '', ''),
(53, 79, 1386677955, 0, 0, 0, '', ''),
(62, 88, 1386678516, 0, 0, 0, '', ''),
(63, 89, 1386678516, 0, 0, 0, '', ''),
(64, 90, 1386678516, 0, 0, 0, '', ''),
(65, 91, 1386678516, 0, 0, 0, '', ''),
(66, 92, 1386678516, 0, 0, 0, '', ''),
(67, 93, 1386678516, 0, 0, 0, '', ''),
(68, 94, 1386678516, 0, 0, 0, '', ''),
(69, 95, 1386678516, 0, 0, 0, '', ''),
(70, 96, 1386678711, 0, 0, 0, '', ''),
(71, 97, 1386678711, 0, 0, 0, '', ''),
(72, 98, 1386678711, 0, 0, 0, '', ''),
(73, 99, 1386678711, 0, 0, 0, '', ''),
(74, 100, 1386678711, 0, 0, 0, '', ''),
(75, 101, 1386678711, 0, 0, 0, '', ''),
(76, 102, 1386678711, 0, 0, 0, '', ''),
(77, 103, 1386678711, 0, 0, 0, '', ''),
(78, 104, 1386678823, 0, 0, 0, '', ''),
(79, 105, 1386678824, 0, 0, 0, '', ''),
(80, 106, 1386678824, 0, 0, 0, '', ''),
(81, 107, 1386678824, 0, 0, 0, '', ''),
(82, 108, 1386678824, 0, 0, 0, '', ''),
(83, 109, 1386678824, 0, 0, 0, '', ''),
(84, 110, 1386678824, 0, 0, 0, '', ''),
(85, 111, 1386678824, 0, 0, 0, '', ''),
(86, 112, 1386684401, 0, 0, 0, '', ''),
(87, 113, 1386776374, 0, 0, 0, '', ''),
(88, 114, 1386776374, 0, 0, 0, '', ''),
(89, 115, 1386776374, 0, 0, 0, '', ''),
(90, 116, 1386776374, 0, 0, 0, '', ''),
(91, 117, 1386776634, 0, 0, 0, '', ''),
(92, 118, 1386776635, 0, 0, 0, '', ''),
(93, 119, 1386776635, 0, 0, 0, '', ''),
(94, 120, 1386776635, 0, 0, 0, '', ''),
(95, 121, 1386776635, 0, 0, 0, '', ''),
(96, 122, 1386776635, 0, 0, 0, '', ''),
(97, 123, 1386776635, 0, 0, 0, '', ''),
(98, 124, 1386776635, 0, 0, 0, '', ''),
(99, 125, 1386780770, 0, 0, 0, '', ''),
(100, 126, 1386780771, 0, 0, 0, '', ''),
(101, 127, 1386780771, 0, 0, 0, '', ''),
(102, 128, 1386780771, 0, 0, 0, '', ''),
(103, 129, 1386780771, 0, 0, 0, '', ''),
(104, 130, 1386780771, 0, 0, 0, '', ''),
(105, 131, 1386780771, 0, 0, 0, '', ''),
(106, 132, 1386780771, 0, 0, 0, '', ''),
(107, 133, 1388589152, 0, 0, 0, '', ''),
(108, 134, 1388592293, 0, 0, 0, '', ''),
(109, 135, 1388592880, 0, 0, 0, '', ''),
(110, 136, 1388594124, 0, 0, 0, '', ''),
(111, 137, 1388595192, 0, 0, 0, '', ''),
(112, 138, 1388595754, 0, 0, 0, '', ''),
(113, 139, 1388596627, 0, 0, 0, '', ''),
(114, 140, 1388646192, 0, 0, 0, '', ''),
(115, 141, 1388646948, 0, 0, 0, '', ''),
(116, 142, 1388647520, 0, 0, 0, '', ''),
(117, 143, 1388648111, 0, 0, 0, '', ''),
(118, 144, 1388649362, 0, 0, 0, '', ''),
(119, 145, 1388650846, 0, 0, 0, '', ''),
(120, 146, 1484663925, 0, 0, 0, '', ''),
(121, 147, 1388652684, 0, 0, 0, '', ''),
(122, 148, 1388653474, 0, 0, 0, '', ''),
(123, 149, 1388654938, 0, 0, 0, '', ''),
(124, 150, 1388655503, 0, 0, 0, '', ''),
(125, 151, 1388655838, 0, 0, 0, '', ''),
(126, 152, 1393516619, 0, 0, 0, '', ''),
(135, 170, 1395212102, 0, 0, 0, '', ''),
(141, 180, 1401893716, 0, 0, 0, '', ''),
(142, 181, 1401893716, 0, 0, 0, '', ''),
(143, 182, 1401893716, 0, 0, 0, '', ''),
(144, 183, 1401893716, 0, 0, 0, '', ''),
(145, 184, 1401893716, 0, 0, 0, '', ''),
(146, 185, 1401893716, 0, 0, 0, '', ''),
(147, 186, 1401893716, 0, 0, 0, '', ''),
(148, 187, 1401893716, 0, 0, 0, '', ''),
(150, 189, 1401893716, 0, 0, 0, '', ''),
(152, 191, 1401893716, 0, 0, 0, '', ''),
(154, 193, 1401893716, 0, 0, 0, '', ''),
(156, 195, 1401893716, 0, 0, 0, '', ''),
(157, 196, 1504879889, 0, 0, 0, '', ''),
(162, 205, 1403165232, 0, 0, 0, '', ''),
(163, 206, 1403165387, 0, 0, 0, '', ''),
(164, 207, 1403165474, 0, 0, 0, '', ''),
(165, 208, 1403165512, 0, 0, 0, '', ''),
(167, 213, 1566458939, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_product_pricetier`
--

CREATE TABLE `tl_iso_product_pricetier` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `min` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_product_pricetier`
--

INSERT INTO `tl_iso_product_pricetier` (`id`, `pid`, `tstamp`, `min`, `price`) VALUES
(7, 7, 1386574500, 1, '200.00'),
(8, 8, 1386574500, 1, '10.00'),
(14, 14, 1386678426, 1, '21.00'),
(15, 15, 1386678426, 1, '21.00'),
(16, 16, 1386678426, 1, '22.00'),
(17, 17, 1386678426, 1, '22.00'),
(18, 18, 1386677122, 1, '23.00'),
(19, 19, 1386677122, 1, '23.00'),
(20, 20, 1386677122, 1, '24.00'),
(21, 21, 1386677122, 1, '24.00'),
(22, 22, 1386678455, 1, '21.00'),
(23, 23, 1386678455, 1, '21.00'),
(24, 24, 1386678455, 1, '22.00'),
(25, 25, 1386678455, 1, '22.00'),
(26, 26, 1386677310, 1, '23.00'),
(27, 27, 1386677310, 1, '23.00'),
(28, 28, 1386677311, 1, '24.00'),
(29, 29, 1386677311, 1, '24.00'),
(30, 30, 1386677509, 1, '21.00'),
(31, 31, 1386677509, 1, '21.00'),
(32, 32, 1386677509, 1, '22.00'),
(33, 33, 1386677510, 1, '22.00'),
(34, 34, 1386677510, 1, '23.00'),
(35, 35, 1386677510, 1, '23.00'),
(36, 36, 1386677510, 1, '24.00'),
(37, 37, 1386677510, 1, '24.00'),
(38, 38, 1386677645, 1, '21.00'),
(39, 39, 1386677645, 1, '21.00'),
(40, 40, 1386677645, 1, '22.00'),
(41, 41, 1386677645, 1, '22.00'),
(42, 42, 1386677645, 1, '23.00'),
(43, 43, 1386677645, 1, '23.00'),
(44, 44, 1386677645, 1, '24.00'),
(45, 45, 1386677645, 1, '24.00'),
(46, 46, 1386677955, 1, '12.00'),
(47, 47, 1386677955, 1, '12.00'),
(48, 48, 1386677955, 1, '13.00'),
(49, 49, 1386677955, 1, '13.00'),
(50, 50, 1386677955, 1, '14.00'),
(51, 51, 1386677955, 1, '14.00'),
(52, 52, 1386677955, 1, '15.00'),
(53, 53, 1386677955, 1, '15.00'),
(62, 62, 1386678516, 1, '12.00'),
(63, 63, 1386678516, 1, '12.00'),
(64, 64, 1386678516, 1, '13.00'),
(65, 65, 1386678516, 1, '13.00'),
(66, 66, 1386678516, 1, '14.00'),
(67, 67, 1386678516, 1, '14.00'),
(68, 68, 1386678516, 1, '15.00'),
(69, 69, 1386678516, 1, '15.00'),
(70, 70, 1386678711, 1, '12.00'),
(71, 71, 1386678711, 1, '12.00'),
(72, 72, 1386678711, 1, '13.00'),
(73, 73, 1386678711, 1, '13.00'),
(74, 74, 1386678711, 1, '14.00'),
(75, 75, 1386678711, 1, '14.00'),
(76, 76, 1386678711, 1, '15.00'),
(77, 77, 1386678711, 1, '15.00'),
(78, 78, 1386678823, 1, '21.00'),
(79, 79, 1386678824, 1, '21.00'),
(80, 80, 1386678824, 1, '22.00'),
(81, 81, 1386678824, 1, '22.00'),
(82, 82, 1386678824, 1, '23.00'),
(83, 83, 1386678824, 1, '23.00'),
(84, 84, 1386678824, 1, '24.00'),
(85, 85, 1386678824, 1, '24.00'),
(86, 86, 1386684401, 1, '31.90'),
(87, 87, 1386776374, 1, '21.00'),
(88, 88, 1386776374, 1, '22.00'),
(89, 89, 1386776374, 1, '23.00'),
(90, 90, 1386776374, 1, '24.00'),
(91, 91, 1386776634, 1, '21.00'),
(92, 92, 1386776635, 1, '21.00'),
(93, 93, 1386776635, 1, '22.00'),
(94, 94, 1386776635, 1, '22.00'),
(95, 95, 1386776635, 1, '23.00'),
(96, 96, 1386776635, 1, '23.00'),
(97, 97, 1386776635, 1, '24.00'),
(98, 98, 1386776635, 1, '24.00'),
(99, 99, 1386780771, 1, '21.00'),
(100, 100, 1386780771, 1, '21.00'),
(101, 101, 1386780771, 1, '22.00'),
(102, 102, 1386780771, 1, '22.00'),
(103, 103, 1386780771, 1, '23.00'),
(104, 104, 1386780771, 1, '23.00'),
(105, 105, 1386780771, 1, '24.00'),
(106, 106, 1386780771, 1, '24.00'),
(107, 107, 1388589152, 1, '31.90'),
(108, 108, 1388592316, 1, '31.90'),
(109, 109, 1388592880, 1, '31.90'),
(110, 110, 1388594124, 1, '31.90'),
(111, 111, 1388595192, 1, '31.90'),
(112, 112, 1388595754, 1, '31.90'),
(113, 113, 1388596627, 1, '31.90'),
(114, 114, 1388646192, 1, '31.90'),
(115, 115, 1388646948, 1, '31.90'),
(116, 116, 1388647520, 1, '31.90'),
(117, 117, 1388648111, 1, '21.90'),
(118, 118, 1388649362, 1, '31.90'),
(119, 119, 1388650846, 1, '31.90'),
(121, 121, 1388652684, 1, '31.90'),
(122, 122, 1388653474, 1, '31.90'),
(123, 123, 1388654938, 1, '21.90'),
(124, 124, 1388655503, 1, '31.90'),
(125, 125, 1388655933, 1, '31.90'),
(126, 126, 1393517414, 1, '99.00'),
(127, 127, 1393517245, 1, '50.00'),
(130, 130, 1393517744, 1, '50.00'),
(131, 131, 1393517962, 1, '50.00'),
(132, 132, 1393518010, 1, '50.00'),
(135, 135, 1395214618, 1, '5.00'),
(144, 141, 1401893716, 1, '21.00'),
(145, 142, 1401893716, 1, '21.00'),
(146, 143, 1401893716, 1, '22.00'),
(147, 144, 1401893716, 1, '22.00'),
(148, 145, 1401893716, 1, '23.00'),
(149, 146, 1401893716, 1, '23.00'),
(150, 147, 1401893716, 1, '24.00'),
(151, 148, 1401893716, 1, '24.00'),
(153, 150, 1401893716, 1, '21.00'),
(155, 152, 1401893716, 1, '22.00'),
(157, 154, 1401893716, 1, '23.00'),
(159, 156, 1401893716, 1, '24.00'),
(160, 157, 1504879889, 1, '9.00'),
(163, 157, 1504879889, 3, '8.00'),
(165, 157, 1504879889, 6, '7.00'),
(166, 162, 1403165232, 1, '18.00'),
(167, 162, 1403165232, 3, '15.00'),
(168, 162, 1403165232, 6, '12.00'),
(169, 163, 1403165387, 1, '19.00'),
(170, 163, 1403165387, 3, '16.00'),
(171, 163, 1403165387, 6, '13.00'),
(172, 164, 1403165474, 1, '20.00'),
(173, 164, 1403165474, 3, '17.00'),
(174, 164, 1403165474, 6, '14.00'),
(175, 165, 1403165512, 1, '21.00'),
(176, 165, 1403165512, 3, '18.00'),
(177, 165, 1403165512, 6, '15.00'),
(179, 120, 1484663925, 1, '31.90'),
(181, 167, 1566458939, 1, '59.00');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_related_category`
--

CREATE TABLE `tl_iso_related_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_related_category`
--

INSERT INTO `tl_iso_related_category` (`id`, `tstamp`, `name`) VALUES
(2, 1386777537, 'Related');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_related_product`
--

CREATE TABLE `tl_iso_related_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `category` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `products` blob DEFAULT NULL,
  `productsOrder` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_related_product`
--

INSERT INTO `tl_iso_related_product` (`id`, `pid`, `tstamp`, `sorting`, `category`, `products`, `productsOrder`) VALUES
(1, 35, 1386778238, 128, 2, 0x33362c203337, NULL),
(2, 36, 1386778594, 128, 2, 0x33352c203337, NULL),
(3, 37, 1386779249, 128, 2, 0x33352c203336, NULL),
(5, 20, 1401894401, 128, 2, 0x32392c33302c33312c33322c33342c313739, NULL),
(6, 29, 1401894414, 128, 2, 0x32302c33302c33312c33322c33342c313739, NULL),
(7, 30, 1401894427, 128, 2, 0x32302c32392c33312c33322c33342c313739, NULL),
(8, 31, 1401894440, 128, 2, 0x32302c32392c33302c33322c33342c313739, NULL),
(9, 32, 1401894461, 128, 2, 0x32302c32392c33302c33312c33342c313739, NULL),
(10, 34, 1401894478, 128, 2, 0x32302c32392c33302c33312c33322c313739, NULL),
(12, 135, 1401188591, 128, 2, 0x313435, NULL),
(13, 145, 1388650922, 128, 2, 0x313335, NULL),
(14, 179, 1401894495, 128, 2, 0x32302c32392c33302c33312c33322c3334, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_requestcache`
--

CREATE TABLE `tl_iso_requestcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `store_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `config` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_rule`
--

CREATE TABLE `tl_iso_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `discount` varchar(16) NOT NULL DEFAULT '',
  `tax_class` int(11) NOT NULL DEFAULT 0,
  `groupRules` blob DEFAULT NULL,
  `groupCondition` varchar(8) NOT NULL DEFAULT 'first',
  `applyTo` varchar(8) NOT NULL DEFAULT '',
  `rounding` varchar(8) NOT NULL DEFAULT '',
  `enableCode` char(1) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `singleCode` char(1) NOT NULL DEFAULT '',
  `limitPerMember` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `limitPerConfig` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minSubtotal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxSubtotal` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `minWeight` varchar(255) NOT NULL DEFAULT '',
  `maxWeight` varchar(255) NOT NULL DEFAULT '',
  `minItemQuantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxItemQuantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantityMode` varchar(32) NOT NULL DEFAULT '',
  `startDate` varchar(10) NOT NULL DEFAULT '',
  `endDate` varchar(10) NOT NULL DEFAULT '',
  `startTime` varchar(10) NOT NULL DEFAULT '',
  `endTime` varchar(10) NOT NULL DEFAULT '',
  `configRestrictions` char(1) NOT NULL DEFAULT '',
  `configCondition` tinyint(1) NOT NULL DEFAULT 0,
  `memberRestrictions` varchar(32) NOT NULL DEFAULT '',
  `memberCondition` tinyint(1) NOT NULL DEFAULT 0,
  `productRestrictions` varchar(32) NOT NULL DEFAULT '',
  `productCondition` tinyint(1) NOT NULL DEFAULT 0,
  `attributeName` varchar(32) NOT NULL DEFAULT '',
  `attributeCondition` varchar(8) NOT NULL DEFAULT '',
  `attributeValue` varchar(255) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT '',
  `groupOnly` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_rule`
--

INSERT INTO `tl_iso_rule` (`id`, `tstamp`, `type`, `name`, `label`, `discount`, `tax_class`, `groupRules`, `groupCondition`, `applyTo`, `rounding`, `enableCode`, `code`, `singleCode`, `limitPerMember`, `limitPerConfig`, `minSubtotal`, `maxSubtotal`, `minWeight`, `maxWeight`, `minItemQuantity`, `maxItemQuantity`, `quantityMode`, `startDate`, `endDate`, `startTime`, `endTime`, `configRestrictions`, `configCondition`, `memberRestrictions`, `memberCondition`, `productRestrictions`, `productCondition`, `attributeName`, `attributeCondition`, `attributeValue`, `enabled`, `groupOnly`) VALUES
(1, 1504880558, 'product', 'Aktion &#40;-20%&#41;', '', '-20%', 0, NULL, 'first', 'products', 'down', '', '', '', 0, 0, 0, 0, '', '', 0, 0, 'product_quantity', '', '', '', '', '', 0, 'none', 0, 'products', 1, '', '', '', '1', ''),
(2, 1566482118, 'cart', 'Gutschein &#40;20%&#41;', 'Gutschein', '-20%', 0, NULL, 'first', 'subtotal', 'down', '1', '123456789', '', 0, 0, 0, 0, '', '', 0, 0, 'product_quantity', '', '', '', '', '', 0, 'none', 0, 'none', 0, '', '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_rule_restriction`
--

CREATE TABLE `tl_iso_rule_restriction` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(32) NOT NULL DEFAULT '',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_rule_restriction`
--

INSERT INTO `tl_iso_rule_restriction` (`id`, `pid`, `tstamp`, `type`, `object_id`) VALUES
(2, 1, 1386679308, 'products', 20),
(3, 1, 1386679308, 'products', 29);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_rule_usage`
--

CREATE TABLE `tl_iso_rule_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `config_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `member_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_rule_usage`
--

INSERT INTO `tl_iso_rule_usage` (`id`, `pid`, `tstamp`, `order_id`, `config_id`, `member_id`) VALUES
(1, 1, 1386609597, 88, 5, 1),
(2, 1, 1386957447, 100, 5, 1),
(3, 1, 1386957475, 101, 5, 1),
(4, 1, 1386959076, 107, 5, 1),
(5, 1, 1386960639, 111, 5, 1),
(6, 1, 1386962138, 113, 5, 1),
(7, 1, 1386962177, 114, 5, 1),
(8, 1, 1386962678, 120, 5, 1),
(9, 1, 1386963131, 122, 5, 1),
(10, 1, 1386963133, 122, 5, 1),
(11, 1, 1386963159, 123, 5, 1),
(12, 1, 1386963245, 124, 5, 1),
(13, 1, 1386963279, 124, 5, 1),
(14, 1, 1386963282, 124, 5, 1),
(15, 1, 1386963321, 124, 5, 1),
(16, 1, 1386963324, 124, 5, 1),
(17, 1, 1386963476, 126, 5, 1),
(18, 1, 1386963499, 126, 5, 1),
(19, 1, 1386963502, 126, 5, 1),
(20, 1, 1386963513, 126, 5, 1),
(21, 1, 1386963599, 126, 5, 1),
(22, 1, 1387020393, 132, 5, 1),
(23, 1, 1387661164, 153, 5, 1),
(24, 2, 1387661164, 153, 5, 1),
(25, 1, 1387889494, 166, 5, 1),
(26, 2, 1393520446, 196, 5, 2),
(27, 3, 1400739515, 230, 5, 2),
(28, 3, 1401188008, 236, 5, 1),
(29, 1, 1401199442, 242, 5, 1),
(30, 2, 1401894812, 245, 5, 2),
(32, 3, 1421862973, 254, 5, 2),
(33, 3, 1467806331, 262, 5, 0),
(34, 3, 1467807403, 267, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_shipping`
--

CREATE TABLE `tl_iso_shipping` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `inherit` char(1) NOT NULL DEFAULT '',
  `note` text DEFAULT NULL,
  `countries` blob DEFAULT NULL,
  `subdivisions` longblob DEFAULT NULL,
  `postalCodes` text DEFAULT NULL,
  `minimum_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `maximum_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `minimum_weight` varchar(255) NOT NULL DEFAULT '',
  `maximum_weight` varchar(255) NOT NULL DEFAULT '',
  `quantity_mode` varchar(32) NOT NULL DEFAULT '',
  `minimum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maximum_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_types` blob DEFAULT NULL,
  `product_types_condition` varchar(16) NOT NULL DEFAULT '',
  `config_ids` blob DEFAULT NULL,
  `address_type` varchar(8) NOT NULL DEFAULT '',
  `price` varchar(16) DEFAULT NULL,
  `tax_class` int(11) NOT NULL DEFAULT 0,
  `flatCalculation` varchar(10) NOT NULL DEFAULT '',
  `flatWeight` varchar(255) NOT NULL DEFAULT '',
  `shipping_weight` varchar(255) NOT NULL DEFAULT '',
  `productCalculation` varchar(16) NOT NULL DEFAULT '',
  `group_methods` blob DEFAULT NULL,
  `group_calculation` varchar(10) NOT NULL DEFAULT '',
  `dhl_user` varchar(16) DEFAULT NULL,
  `dhl_signature` varchar(32) DEFAULT NULL,
  `dhl_epk` varchar(32) DEFAULT NULL,
  `dhl_product` varchar(8) DEFAULT NULL,
  `dhl_app` varchar(32) DEFAULT NULL,
  `dhl_token` varchar(32) DEFAULT NULL,
  `dhl_shipping` varchar(64) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `debug` char(1) NOT NULL DEFAULT '',
  `logging` char(1) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_shipping`
--

INSERT INTO `tl_iso_shipping` (`id`, `tstamp`, `name`, `label`, `type`, `inherit`, `note`, `countries`, `subdivisions`, `postalCodes`, `minimum_total`, `maximum_total`, `minimum_weight`, `maximum_weight`, `quantity_mode`, `minimum_quantity`, `maximum_quantity`, `product_types`, `product_types_condition`, `config_ids`, `address_type`, `price`, `tax_class`, `flatCalculation`, `flatWeight`, `shipping_weight`, `productCalculation`, `group_methods`, `group_calculation`, `dhl_user`, `dhl_signature`, `dhl_epk`, `dhl_product`, `dhl_app`, `dhl_token`, `dhl_shipping`, `guests`, `protected`, `groups`, `debug`, `logging`, `enabled`) VALUES
(10, 1566478385, 'DHL', '', 'group', '1', NULL, NULL, NULL, NULL, '0.00', '0.00', 'a:1:{s:4:\"unit\";s:2:\"kg\";}', 'a:1:{s:4:\"unit\";s:2:\"kg\";}', '', 0, 0, NULL, 'onlyAvailable', NULL, '', NULL, 0, '', '', '', '', 0x613a343a7b693a303b733a323a223136223b693a313b733a323a223131223b693a323b733a323a223132223b693a333b733a323a223133223b7d, 'summarize', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '1'),
(11, 1566478183, 'DHL 0-50', 'Versandkosten', 'flat', '', NULL, 0x613a353a7b693a303b733a323a226465223b693a313b733a323a226174223b693a323b733a323a226368223b693a333b733a323a227573223b693a343b733a323a226762223b7d, NULL, NULL, '0.00', '50.00', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'cart_items', 0, 0, 0x613a363a7b693a303b733a313a2233223b693a313b733a313a2234223b693a323b733a313a2238223b693a333b733a323a223137223b693a343b733a323a223139223b693a353b733a313a2232223b7d, 'onlyAvailable', NULL, '', '4.9', 0, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '1'),
(12, 1566478261, 'DHL 51-100', 'Versandkosten', 'flat', '', NULL, 0x613a353a7b693a303b733a323a226465223b693a313b733a323a226174223b693a323b733a323a226368223b693a333b733a323a227573223b693a343b733a323a226762223b7d, NULL, NULL, '50.01', '100.00', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'cart_items', 0, 0, 0x613a363a7b693a303b733a313a2233223b693a313b733a313a2234223b693a323b733a313a2238223b693a333b733a323a223137223b693a343b733a323a223139223b693a353b733a313a2232223b7d, 'onlyAvailable', NULL, '', '6.90', 0, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '1'),
(13, 1566478240, 'DHL 101', 'Versandkosten', 'flat', '', NULL, 0x613a353a7b693a303b733a323a226465223b693a313b733a323a226174223b693a323b733a323a226368223b693a333b733a323a227573223b693a343b733a323a226762223b7d, NULL, NULL, '100.01', '0.00', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'cart_items', 0, 0, 0x613a363a7b693a303b733a313a2233223b693a313b733a313a2234223b693a323b733a313a2238223b693a333b733a323a223137223b693a343b733a323a223139223b693a353b733a313a2232223b7d, 'onlyAvailable', NULL, '', NULL, 0, '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '1'),
(16, 1566478539, 'Stein / Stone', 'Stein', 'flat', '', NULL, 0x613a353a7b693a303b733a323a226465223b693a313b733a323a226174223b693a323b733a323a226368223b693a333b733a323a227573223b693a343b733a323a226762223b7d, NULL, NULL, '0.00', '0.00', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:0:\"\";}', 'cart_items', 0, 0, 0x613a313a7b693a303b733a323a223232223b7d, 'onlyAvailable', NULL, '', '10', 0, 'perWeight', 'a:2:{s:4:\"unit\";s:2:\"kg\";s:5:\"value\";s:1:\"5\";}', 'a:1:{s:4:\"unit\";s:2:\"kg\";}', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_tax_class`
--

CREATE TABLE `tl_iso_tax_class` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `includes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `rates` blob DEFAULT NULL,
  `applyRoundingIncrement` char(1) NOT NULL DEFAULT '',
  `notNegative` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_tax_class`
--

INSERT INTO `tl_iso_tax_class` (`id`, `tstamp`, `name`, `fallback`, `includes`, `label`, `rates`, `applyRoundingIncrement`, `notNegative`) VALUES
(2, 1384789832, 'Mehrwertsteuer', '', 0, '', 0x613a313a7b693a303b733a313a2232223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_iso_tax_rate`
--

CREATE TABLE `tl_iso_tax_rate` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `address` blob DEFAULT NULL,
  `countries` text DEFAULT NULL,
  `subdivisions` text DEFAULT NULL,
  `postalCodes` text DEFAULT NULL,
  `rate` varchar(255) NOT NULL DEFAULT '',
  `amount` varchar(255) NOT NULL DEFAULT '',
  `config` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `exemptOnValidVAT` char(1) NOT NULL DEFAULT '',
  `stop` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_iso_tax_rate`
--

INSERT INTO `tl_iso_tax_rate` (`id`, `tstamp`, `name`, `label`, `address`, `countries`, `subdivisions`, `postalCodes`, `rate`, `amount`, `config`, `exemptOnValidVAT`, `stop`, `guests`, `protected`, `groups`) VALUES
(2, 1384789801, 'Mehrwertsteuer', 'Mehrwertsteuer', 0x613a313a7b693a303b733a383a227368697070696e67223b7d, '', '', '', 'a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:1:\"7\";}', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', 0, '', '', '', '', NULL),
(4, 1566568446, 'ermäßigter Steuersatz', '7 % MwSt.', 0x613a313a7b693a303b733a383a227368697070696e67223b7d, NULL, NULL, NULL, 'a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:1:\"7\";}', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', 0, '', '', '', '', NULL),
(5, 1566568475, 'normaler Steuersatz', '19 % MwSt.', 0x613a313a7b693a303b733a383a227368697070696e67223b7d, NULL, NULL, NULL, 'a:2:{s:4:\"unit\";s:1:\"%\";s:5:\"value\";s:2:\"19\";}', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', 0, '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_layout`
--

CREATE TABLE `tl_layout` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `rows` varchar(8) NOT NULL DEFAULT '2rwh',
  `headerHeight` varchar(255) NOT NULL DEFAULT '',
  `footerHeight` varchar(255) NOT NULL DEFAULT '',
  `cols` varchar(8) NOT NULL DEFAULT '2cll',
  `widthLeft` varchar(255) NOT NULL DEFAULT '',
  `widthRight` varchar(255) NOT NULL DEFAULT '',
  `sections` blob DEFAULT NULL,
  `framework` varchar(255) NOT NULL DEFAULT 'a:2:{i:0;s:10:"layout.css";i:1;s:14:"responsive.css";}',
  `stylesheet` blob DEFAULT NULL,
  `external` blob DEFAULT NULL,
  `loadingOrder` varchar(16) NOT NULL DEFAULT 'external_first',
  `combineScripts` char(1) NOT NULL DEFAULT '1',
  `modules` blob DEFAULT NULL,
  `template` varchar(64) NOT NULL DEFAULT '',
  `minifyMarkup` char(1) NOT NULL DEFAULT '1',
  `lightboxSize` varchar(255) NOT NULL DEFAULT '',
  `defaultImageDensities` varchar(255) NOT NULL DEFAULT '',
  `viewport` varchar(255) NOT NULL DEFAULT '',
  `titleTag` varchar(255) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `onload` varchar(255) NOT NULL DEFAULT '',
  `head` text DEFAULT NULL,
  `addJQuery` char(1) NOT NULL DEFAULT '',
  `jquery` text DEFAULT NULL,
  `addMooTools` char(1) NOT NULL DEFAULT '',
  `mootools` text DEFAULT NULL,
  `analytics` text DEFAULT NULL,
  `externalJs` blob DEFAULT NULL,
  `scripts` text DEFAULT NULL,
  `script` text DEFAULT NULL,
  `static` char(1) NOT NULL DEFAULT '',
  `width` varchar(255) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT 'center',
  `newsfeeds` blob DEFAULT NULL,
  `calendarfeeds` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_layout`
--

INSERT INTO `tl_layout` (`id`, `pid`, `tstamp`, `name`, `rows`, `headerHeight`, `footerHeight`, `cols`, `widthLeft`, `widthRight`, `sections`, `framework`, `stylesheet`, `external`, `loadingOrder`, `combineScripts`, `modules`, `template`, `minifyMarkup`, `lightboxSize`, `defaultImageDensities`, `viewport`, `titleTag`, `cssClass`, `onload`, `head`, `addJQuery`, `jquery`, `addMooTools`, `mootools`, `analytics`, `externalJs`, `scripts`, `script`, `static`, `width`, `align`, `newsfeeds`, `calendarfeeds`) VALUES
(1, 1, 1396023777, 'Isotope eCommerce Demo - Home', '3rw', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '2cll', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '', '', 'a:4:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";i:2;s:8:\"grid.css\";i:3;s:9:\"reset.css\";}', '', 0x613a333a7b693a303b733a31363a22e56d021e60d811e39eabbc305b35679a223b693a313b733a31363a22e96e3aa25e5a11e39eabbc305b35679a223b693a323b733a31363a229a9b210e611811e39eabbc305b35679a223b7d, '', '1', 0x613a31343a7b693a303b613a333a7b733a333a226d6f64223b733a313a2239223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2238223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a323a223239223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223131223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a323a223130223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a353b613a333a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a363b613a333a7b733a333a226d6f64223b733a313a2234223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a373b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a383b613a333a7b733a333a226d6f64223b733a313a2233223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a393b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a31303b613a333a7b733a333a226d6f64223b733a323a223133223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31313b613a333a7b733a333a226d6f64223b733a323a223134223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31323b613a333a7b733a333a226d6f64223b733a323a223135223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31333b613a333a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', '1', '', '', '', '', '', '', '', '', NULL, '1', 'a:1:{i:0;s:13:\"moo_accordion\";}', '', NULL, NULL, '', '1', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:4:\"1000\";}', 'center', NULL, NULL),
(2, 1, 1566481333, 'Isotope eCommerce Demo', '3rw', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '2cll', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"240\";}', '', 0x613a313a7b693a303b613a343a7b733a353a227469746c65223b733a303a22223b733a323a226964223b733a303a22223b733a383a2274656d706c617465223b733a31333a22626c6f636b5f73656374696f6e223b733a383a22706f736974696f6e223b733a333a22746f70223b7d7d, 'a:4:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";i:2;s:8:\"grid.css\";i:3;s:9:\"reset.css\";}', NULL, 0x613a333a7b693a303b733a31363a22e56d021e60d811e39eabbc305b35679a223b693a313b733a31363a22e96e3aa25e5a11e39eabbc305b35679a223b693a323b733a31363a229a9b210e611811e39eabbc305b35679a223b7d, 'external_first', '1', 0x613a31383a7b693a303b613a333a7b733a333a226d6f64223b733a313a2239223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a313a2238223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a323a223239223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223131223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a323a223130223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a353b613a333a7b733a333a226d6f64223b733a313a2236223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a363b613a333a7b733a333a226d6f64223b733a313a2234223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a373b613a333a7b733a333a226d6f64223b733a313a2235223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a383b613a333a7b733a333a226d6f64223b733a313a2233223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a393b613a333a7b733a333a226d6f64223b733a323a223137223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31303b613a333a7b733a333a226d6f64223b733a323a223331223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31313b613a333a7b733a333a226d6f64223b733a323a223233223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a31343b613a333a7b733a333a226d6f64223b733a323a223133223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31353b613a333a7b733a333a226d6f64223b733a323a223134223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31363b613a333a7b733a333a226d6f64223b733a323a223135223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31373b613a333a7b733a333a226d6f64223b733a313a2231223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', '1', '', '', '', '', '', '', NULL, '', NULL, '1', 'a:3:{i:0;s:13:\"moo_accordion\";i:1;s:12:\"moo_mediabox\";i:2;s:10:\"moo_chosen\";}', NULL, NULL, NULL, NULL, '1', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:4:\"1000\";}', 'center', NULL, NULL),
(3, 2, 1566481346, 'Isotope eCommerce Demo', '3rw', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '2cll', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:3:\"240\";}', '', 0x613a313a7b693a303b613a343a7b733a353a227469746c65223b733a303a22223b733a323a226964223b733a303a22223b733a383a2274656d706c617465223b733a31333a22626c6f636b5f73656374696f6e223b733a383a22706f736974696f6e223b733a333a22746f70223b7d7d, 'a:4:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";i:2;s:8:\"grid.css\";i:3;s:9:\"reset.css\";}', NULL, 0x613a333a7b693a303b733a31363a22e56d021e60d811e39eabbc305b35679a223b693a313b733a31363a22e96e3aa25e5a11e39eabbc305b35679a223b693a323b733a31363a229a9b210e611811e39eabbc305b35679a223b7d, 'external_first', '1', 0x613a31383a7b693a303b613a333a7b733a333a226d6f64223b733a323a223430223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a323a223434223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a323a223630223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223435223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a323a223431223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a353b613a333a7b733a333a226d6f64223b733a323a223433223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a363b613a333a7b733a333a226d6f64223b733a323a223339223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a373b613a333a7b733a333a226d6f64223b733a323a223432223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a383b613a333a7b733a333a226d6f64223b733a323a223338223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a393b613a333a7b733a333a226d6f64223b733a323a223436223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31303b613a333a7b733a333a226d6f64223b733a323a223437223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31313b613a333a7b733a333a226d6f64223b733a323a223632223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31323b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226c656674223b733a363a22656e61626c65223b733a313a2231223b7d693a31333b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a31343b613a333a7b733a333a226d6f64223b733a323a223337223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31353b613a333a7b733a333a226d6f64223b733a323a223336223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31363b613a333a7b733a333a226d6f64223b733a323a223335223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31373b613a333a7b733a333a226d6f64223b733a323a223334223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', '1', '', '', '', '', '', '', NULL, '', NULL, '1', 'a:3:{i:0;s:13:\"moo_accordion\";i:1;s:12:\"moo_mediabox\";i:2;s:10:\"moo_chosen\";}', NULL, NULL, NULL, NULL, '1', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:4:\"1000\";}', 'center', NULL, NULL),
(4, 2, 1396023815, 'Isotope eCommerce Demo - Home', '3rw', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '2cll', 'a:2:{s:4:\"unit\";s:0:\"\";s:5:\"value\";s:0:\"\";}', '', '', 'a:4:{i:0;s:10:\"layout.css\";i:1;s:14:\"responsive.css\";i:2;s:8:\"grid.css\";i:3;s:9:\"reset.css\";}', '', 0x613a333a7b693a303b733a31363a22e56d021e60d811e39eabbc305b35679a223b693a313b733a31363a22e96e3aa25e5a11e39eabbc305b35679a223b693a323b733a31363a229a9b210e611811e39eabbc305b35679a223b7d, '', '1', 0x613a31343a7b693a303b613a333a7b733a333a226d6f64223b733a323a223430223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a313b613a333a7b733a333a226d6f64223b733a323a223434223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a323b613a333a7b733a333a226d6f64223b733a323a223630223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a333b613a333a7b733a333a226d6f64223b733a323a223435223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a343b613a333a7b733a333a226d6f64223b733a323a223431223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a353b613a333a7b733a333a226d6f64223b733a323a223433223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a363b613a333a7b733a333a226d6f64223b733a323a223339223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a373b613a333a7b733a333a226d6f64223b733a323a223432223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a383b613a333a7b733a333a226d6f64223b733a323a223338223b733a333a22636f6c223b733a363a22686561646572223b733a363a22656e61626c65223b733a313a2231223b7d693a393b613a333a7b733a333a226d6f64223b733a313a2230223b733a333a22636f6c223b733a343a226d61696e223b733a363a22656e61626c65223b733a313a2231223b7d693a31303b613a333a7b733a333a226d6f64223b733a323a223337223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31313b613a333a7b733a333a226d6f64223b733a323a223336223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31323b613a333a7b733a333a226d6f64223b733a323a223335223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d693a31333b613a333a7b733a333a226d6f64223b733a323a223334223b733a333a22636f6c223b733a363a22666f6f746572223b733a363a22656e61626c65223b733a313a2231223b7d7d, 'fe_page', '1', '', '', '', '', '', '', '', '', NULL, '1', 'a:1:{i:0;s:13:\"moo_accordion\";}', '', NULL, NULL, '', '1', 'a:2:{s:4:\"unit\";s:2:\"px\";s:5:\"value\";s:4:\"1000\";}', 'center', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_log`
--

CREATE TABLE `tl_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `source` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `text` text DEFAULT NULL,
  `func` varchar(255) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_log`
--

INSERT INTO `tl_log` (`id`, `tstamp`, `source`, `action`, `username`, `text`, `func`, `browser`) VALUES
(1, 1696385239, 'FE', 'CRON', 'anon.', 'Purged the temp folder', 'Contao\\Automator::purgeTempFolder', 'N/A'),
(2, 1696385239, 'FE', 'CRON', 'anon.', 'Purged the expired double opt-in tokens', 'Contao\\Automator::purgeOptInTokens', 'N/A'),
(3, 1696385243, 'BE', 'ACCESS', 'test@test.de', 'User &quot;test@test.de&quot; has logged in', 'Contao\\CoreBundle\\Security\\Authentication\\AuthenticationSuccessHandler::onAuthenticationSuccess', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tl_member`
--

CREATE TABLE `tl_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `dateOfBirth` varchar(11) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal` varchar(32) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(64) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `phone` varchar(64) NOT NULL DEFAULT '',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `fax` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(64) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `login` char(1) NOT NULL DEFAULT '',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `assignDir` char(1) NOT NULL DEFAULT '',
  `homeDir` binary(16) DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `loginAttempts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `locked` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `session` blob DEFAULT NULL,
  `secret` binary(128) DEFAULT NULL,
  `useTwoFactor` char(1) NOT NULL DEFAULT '',
  `backupCodes` text DEFAULT NULL,
  `trustedTokenVersion` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `newsletter` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_member`
--

INSERT INTO `tl_member` (`id`, `tstamp`, `firstname`, `lastname`, `dateOfBirth`, `gender`, `company`, `street`, `postal`, `city`, `state`, `country`, `phone`, `mobile`, `fax`, `email`, `website`, `language`, `groups`, `login`, `username`, `password`, `assignDir`, `homeDir`, `disable`, `start`, `stop`, `dateAdded`, `lastLogin`, `currentLogin`, `loginAttempts`, `locked`, `session`, `secret`, `useTwoFactor`, `backupCodes`, `trustedTokenVersion`, `newsletter`) VALUES
(1, 1467807040, 'John', 'Smith', '238201200', 'male', '', 'Siechenbach 1', '3250', 'Lyss', '', 'ch', '', '', '', 'j.smith@isotopeecommerce.org', '', '', 0x613a313a7b693a303b733a313a2231223b7d, '1', 'j.smith', '$2y$10$57EHxcnih8nDfPwfTGcbfe/5tscWCXtZaO5Npx.uxAUPrWaKT0Tyu', '', NULL, '', '', '', 1384353224, 1557236465, 1566463766, 0, 0, 0x613a313a7b733a373a2272656665726572223b613a323a7b733a343a226c617374223b733a36303a22696e6465782e7068702f64652f6b617373652f636f6d706c6574652e68746d6c3f7569643d35636431386166326537643265372e3131383036343737223b733a373a2263757272656e74223b733a36383a22696e6465782e7068702f64652f62657374656c6c7a7573616d6d656e66617373756e672e68746d6c3f7569643d35636431386166326537643265372e3131383036343737223b7d7d, NULL, '', NULL, 0, NULL),
(2, 1393575648, 'Donna', 'Evans', '191635200', 'female', '', 'Ackerstraße 1', '10115', 'Berlin', '', 'de', '', '', '', 'd.evans@isotopeecommerce.org', '', '', 0x613a313a7b693a303b733a313a2231223b7d, '1', 'd.evans', '$6$a5f2aa05927215f8$wauM7.sYNHqma/EEW3vSL6U8AdOuT2LaCSYQb.5bwl8t1n/aUE2eltFTYMSdNk9rbRYmdNuqzSSo7rrEpyQij1', '', NULL, '', '', '', 1384353319, 1421674788, 1421862937, 0, 0, 0x613a313a7b733a373a2272656665726572223b613a323a7b733a343a226c617374223b733a36343a22696e6465782e7068702f64652f6b617373652f636f6d706c6574652e68746d6c3f7569643d3230313935633438386335323532633736372e3733373435363938223b733a373a2263757272656e74223b733a37323a22696e6465782e7068702f64652f62657374656c6c7a7573616d6d656e66617373756e672e68746d6c3f7569643d3230313935633438386335323532633736372e3733373435363938223b7d7d, NULL, '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_member_group`
--

CREATE TABLE `tl_member_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `redirect` char(1) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `iso_priceDisplay` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_member_group`
--

INSERT INTO `tl_member_group` (`id`, `tstamp`, `name`, `redirect`, `jumpTo`, `disable`, `start`, `stop`, `iso_priceDisplay`) VALUES
(1, 1384468644, 'Isotope eCommerce', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_module`
--

CREATE TABLE `tl_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `headline` varchar(255) NOT NULL DEFAULT 'a:2:{s:5:"value";s:0:"";s:4:"unit";s:2:"h2";}',
  `type` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'navigation',
  `levelOffset` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `showLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `hardLimit` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `showProtected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `defineRoot` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `rootPage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `navigationTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `pages` blob DEFAULT NULL,
  `showHidden` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `customLabel` varchar(64) NOT NULL DEFAULT '',
  `autologin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `overviewPage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `redirectBack` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `editable` blob DEFAULT NULL,
  `memberTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `form` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `queryType` varchar(8) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'and',
  `fuzzy` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `contextLength` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `minKeywordLength` smallint(5) UNSIGNED NOT NULL DEFAULT 4,
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `searchType` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'simple',
  `searchTpl` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `inColumn` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'main',
  `skipFirst` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `loadFirst` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `imgSize` varchar(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `useCaption` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `fullsize` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `multiSRC` blob DEFAULT NULL,
  `orderSRC` blob DEFAULT NULL,
  `html` text DEFAULT NULL,
  `rss_cache` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `rss_feed` text DEFAULT NULL,
  `rss_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `numberOfItems` smallint(5) UNSIGNED NOT NULL DEFAULT 3,
  `disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_groups` blob DEFAULT NULL,
  `reg_allowLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_skipName` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_close` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_deleteDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_assignDir` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_homeDir` binary(16) DEFAULT NULL,
  `reg_activate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `reg_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reg_text` text DEFAULT NULL,
  `reg_password` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `protected` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `guests` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cssID` varchar(255) NOT NULL DEFAULT '',
  `rootPageDependentModules` blob DEFAULT NULL,
  `faq_categories` blob DEFAULT NULL,
  `faq_readerModule` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `com_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `com_moderate` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_bbcode` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_requireLogin` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_disableCaptcha` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `com_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_archives` blob DEFAULT NULL,
  `news_featured` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'all_items',
  `news_jumpToCurrent` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_readerModule` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `news_metaFields` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'a:2:{i:0;s:4:"date";i:1;s:6:"author";}',
  `news_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `news_format` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'news_month',
  `news_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `news_order` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'order_date_desc',
  `news_showQuantity` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_table` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_fields` tinytext DEFAULT NULL,
  `list_where` tinytext DEFAULT NULL,
  `list_search` tinytext DEFAULT NULL,
  `list_sort` tinytext DEFAULT NULL,
  `list_info` tinytext DEFAULT NULL,
  `list_info_where` tinytext DEFAULT NULL,
  `list_layout` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `list_info_layout` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_calendar` blob DEFAULT NULL,
  `cal_noSpan` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_hideRunning` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_startDay` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `cal_format` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'cal_month',
  `cal_ignoreDynamic` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_order` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'ascending',
  `cal_readerModule` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cal_limit` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cal_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_ctemplate` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_showQuantity` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `cal_featured` varchar(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'all_items',
  `newsletters` blob DEFAULT NULL,
  `nl_channels` blob DEFAULT NULL,
  `nl_text` text DEFAULT NULL,
  `nl_hideChannels` char(1) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `nl_subscribe` text DEFAULT NULL,
  `nl_unsubscribe` text DEFAULT NULL,
  `nl_template` varchar(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `iso_tsproducts` char(1) NOT NULL DEFAULT '',
  `iso_tscheckout` char(1) NOT NULL DEFAULT '',
  `iso_tsyoffset` int(11) NOT NULL DEFAULT 0,
  `iso_tsdirection` varchar(16) NOT NULL DEFAULT '',
  `iso_tsdisplay` varchar(8) NOT NULL DEFAULT '',
  `iso_tsreviews` char(1) NOT NULL DEFAULT '',
  `iso_tsid` varchar(64) NOT NULL DEFAULT '',
  `iso_notifications` varchar(255) NOT NULL DEFAULT '',
  `iso_productcache` blob DEFAULT NULL,
  `iso_addressFields` blob DEFAULT NULL,
  `iso_address` blob DEFAULT NULL,
  `iso_continueShopping` char(1) NOT NULL DEFAULT '',
  `iso_includeMessages` char(1) NOT NULL DEFAULT '',
  `iso_related_categories` blob DEFAULT NULL,
  `iso_buttons` blob DEFAULT NULL,
  `iso_listingSortDirection` varchar(8) NOT NULL DEFAULT '',
  `iso_listingSortField` varchar(255) NOT NULL DEFAULT '',
  `iso_checkout_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_cart_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_perPage` varchar(64) NOT NULL DEFAULT '',
  `iso_enableLimit` char(1) NOT NULL DEFAULT '',
  `iso_sortingFields` blob DEFAULT NULL,
  `iso_searchAutocomplete` varchar(255) NOT NULL DEFAULT '',
  `iso_searchExact` blob DEFAULT NULL,
  `iso_searchFields` blob DEFAULT NULL,
  `iso_filterHideSingle` char(1) NOT NULL DEFAULT '',
  `iso_newFilter` varchar(8) NOT NULL DEFAULT '',
  `iso_rangeFields` blob DEFAULT NULL,
  `iso_cumulativeFields` blob DEFAULT NULL,
  `iso_filterFields` blob DEFAULT NULL,
  `iso_filterModules` blob DEFAULT NULL,
  `iso_list_where` varchar(255) NOT NULL DEFAULT '',
  `iso_category_scope` varchar(64) NOT NULL DEFAULT '',
  `iso_noFilter` varchar(255) NOT NULL DEFAULT '',
  `iso_emptyFilter` char(1) NOT NULL DEFAULT '',
  `iso_noProducts` varchar(255) NOT NULL DEFAULT '',
  `iso_emptyMessage` char(1) NOT NULL DEFAULT '',
  `iso_orderCollectionBy` varchar(16) NOT NULL DEFAULT '',
  `iso_addToAddressbook` char(1) NOT NULL DEFAULT '',
  `iso_order_conditions` blob DEFAULT NULL,
  `iso_checkout_skippable` text DEFAULT NULL,
  `iso_forward_review` char(1) NOT NULL DEFAULT '',
  `orderCompleteJumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_shipping_modules` blob DEFAULT NULL,
  `iso_payment_modules` blob DEFAULT NULL,
  `iso_config_ids` blob DEFAULT NULL,
  `iso_config_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_cols` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `iso_wishlistJumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_addProductJumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_loginRequired` char(1) NOT NULL DEFAULT '',
  `iso_login_jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_checkout_method` varchar(10) NOT NULL DEFAULT '',
  `iso_display404Page` char(1) NOT NULL DEFAULT '',
  `iso_use_quantity` char(1) NOT NULL DEFAULT '',
  `iso_disable_options` char(1) NOT NULL DEFAULT '',
  `iso_hide_list` char(1) NOT NULL DEFAULT '',
  `iso_link_primary` char(1) NOT NULL DEFAULT '',
  `iso_jump_first` char(1) NOT NULL DEFAULT '',
  `iso_filterTpl` varchar(64) NOT NULL DEFAULT '',
  `iso_collectionTpl` varchar(64) NOT NULL DEFAULT '',
  `iso_gallery` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_reader_layout` varchar(64) NOT NULL DEFAULT '',
  `iso_list_layout` varchar(64) NOT NULL DEFAULT '',
  `nc_activation_notification` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nc_notification` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `customLanguageText` text DEFAULT NULL,
  `customLanguage` char(1) NOT NULL DEFAULT '',
  `hideNoFallback` char(1) NOT NULL DEFAULT '',
  `hideActiveLanguage` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_module`
--

INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `overviewPage`, `redirectBack`, `editable`, `memberTpl`, `form`, `queryType`, `fuzzy`, `contextLength`, `minKeywordLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `singleSRC`, `url`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_deleteDir`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `data`, `protected`, `groups`, `guests`, `cssID`, `rootPageDependentModules`, `faq_categories`, `faq_readerModule`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `cal_calendar`, `cal_noSpan`, `cal_hideRunning`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `cal_featured`, `newsletters`, `nl_channels`, `nl_text`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `iso_tsproducts`, `iso_tscheckout`, `iso_tsyoffset`, `iso_tsdirection`, `iso_tsdisplay`, `iso_tsreviews`, `iso_tsid`, `iso_notifications`, `iso_productcache`, `iso_addressFields`, `iso_address`, `iso_continueShopping`, `iso_includeMessages`, `iso_related_categories`, `iso_buttons`, `iso_listingSortDirection`, `iso_listingSortField`, `iso_checkout_jumpTo`, `iso_cart_jumpTo`, `iso_perPage`, `iso_enableLimit`, `iso_sortingFields`, `iso_searchAutocomplete`, `iso_searchExact`, `iso_searchFields`, `iso_filterHideSingle`, `iso_newFilter`, `iso_rangeFields`, `iso_cumulativeFields`, `iso_filterFields`, `iso_filterModules`, `iso_list_where`, `iso_category_scope`, `iso_noFilter`, `iso_emptyFilter`, `iso_noProducts`, `iso_emptyMessage`, `iso_orderCollectionBy`, `iso_addToAddressbook`, `iso_order_conditions`, `iso_checkout_skippable`, `iso_forward_review`, `orderCompleteJumpTo`, `iso_shipping_modules`, `iso_payment_modules`, `iso_config_ids`, `iso_config_id`, `iso_cols`, `iso_wishlistJumpTo`, `iso_addProductJumpTo`, `iso_loginRequired`, `iso_login_jumpTo`, `iso_checkout_method`, `iso_display404Page`, `iso_use_quantity`, `iso_disable_options`, `iso_hide_list`, `iso_link_primary`, `iso_jump_first`, `iso_filterTpl`, `iso_collectionTpl`, `iso_gallery`, `iso_reader_layout`, `iso_list_layout`, `nc_activation_notification`, `nc_notification`, `customLanguageText`, `customLanguage`, `hideNoFallback`, `hideActiveLanguage`) VALUES
(1, 1, 1565624608, 'Layout :: Footer :: &#35;4 Isotope eCommerce', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:17:\"Isotope eCommerce\";}', 'navigation', 0, 0, '', '', '1', 64, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, 'http://isotopeecommerce.org/share/blog-de.xml', 'rss_items_only', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(2, 1, 1565624608, 'Page :: Login', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 35, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(3, 1, 1565624608, 'Layout :: Header :: Breadcrumb', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'breadcrumb', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:6:\"grid12\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(4, 1, 1565624608, 'Layout :: Header :: Hauptnavigation', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:8:\"nav-main\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(5, 1, 1565624608, 'Layout :: Header :: Line', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"header-line grid12\"></div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(6, 1, 1565624608, 'Layout :: Header :: Logo', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<!-- indexer::stop -->\n<a href=\"{{env::path}}\" class=\"logo\">\n  <img src=\"files/isotope-demo/theme/img/logo.png\" alt=\"Isotope eCommerce Demo\">\n</a>\n<!-- indexer::continue -->', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(8, 1, 1565624608, 'Layout :: Header :: Sprachenwechsler', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'changelanguage', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"change_language\">\r\n	<a href=\"{{env::path}}\">English</a>\r\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, 'a:2:{i:0;a:2:{s:5:\"value\";s:2:\"en\";s:5:\"label\";s:7:\"English\";}i:1;a:2:{s:5:\"value\";s:2:\"de\";s:5:\"label\";s:7:\"Deutsch\";}}', '1', '', ''),
(9, 1, 1565624608, 'Layout :: Header :: Header-Top :: Start', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"header-top-bar\">\n	<div class=\"inner\">', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(10, 1, 1565624608, 'Layout :: Header :: Header-Top :: Stop', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(11, 1, 1565624608, 'Layout :: Header :: Suchformular', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'form', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 1, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"ce_form form-search tableless block\">\n  <form action=\"{{link_url::9}}\" id=\"form-search\" method=\"get\" enctype=\"application/x-www-form-urlencoded\">\n    <div class=\"formbody\">\n    	<input type=\"text\" name=\"keywords\" id=\"ctrl_12\" class=\"text\" value=\"\" placeholder=\"Suche\"><br>\n  <div class=\"submit_container\">\n    <input type=\"image\" src=\"files/contaodemo/theme/img/btn_search.gif\" id=\"ctrl_13\" class=\"submit\" title=\"Submit\" alt=\"Submit\"></div>\n    </div>\n  </form>\n\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:11:\"form-search\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(12, 1, 1586011138, 'Page :: Suchmaschine', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'search', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', 'a:2:{i:0;s:2:\"48\";i:1;s:4:\"1000\";}', 0, 0, 'simple', 'search_default', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(13, 1, 1565624608, 'Layout :: Footer :: &#35;1 Über uns', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:9:\"Über uns\";}', 'customnav', 0, 0, '', '', '', 0, 'nav_default', '', 0x613a353a7b693a303b693a373b693a313b693a31353b693a323b693a31373b693a333b693a31313b693a343b693a31333b7d, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(14, 1, 1565624608, 'Layout :: Footer :: &#35;2 Online-Einkauf', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:14:\"Online-Einkauf\";}', 'navigation', 0, 0, '', '', '1', 19, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(15, 1, 1565624608, 'Layout :: Footer :: &#35;3 Mein Konto', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:10:\"Mein Konto\";}', 'navigation', 0, 0, '', '', '1', 31, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(16, 1, 1565624608, 'Page :: Logout', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'logout', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 33, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(17, 1, 1565624608, 'Layout :: Main :: Unternavigation', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'navigation', 1, 2, '1', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:8:\"nav-left\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(19, 1, 1565624767, 'Isotope eCommerce :: Produktliste :: Shop', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:4:\"Shop\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 10, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 46, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(20, 1, 1565624767, 'Isotope eCommerce :: Produktliste :: Unsere neusten Produkte', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 2, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a313a7b693a333b613a313a7b693a303b623a303b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', 'dateAdded', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_new', NULL, NULL, NULL, '', '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 4, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(21, 1, 1565624767, 'Isotope eCommerce :: Produktleser', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productreader', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a333a7b693a303b733a31313a226164645f746f5f63617274223b693a313b733a363a22757064617465223b693a323b733a31363a22746f67676c655f6661766f7269746573223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 46, '', 0, 'member', '', '1', '', '', '', '', 'iso_filter_default', '', 0, 'iso_reader_default', '', 0, 0, NULL, '', '', ''),
(22, 1, 1565624767, 'Isotope eCommerce :: Warenkorb', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_cart', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '1', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 54, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 0, NULL, '', '', ''),
(23, 1, 1565624767, 'Isotope eCommerce :: Warenkorb :: Mini', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_cart', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 54, 46, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_mini', 0, '', '', 0, 0, NULL, '', '', ''),
(24, 1, 1565624767, 'Isotope eCommerce :: Bestellung', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'iso_orderhistory', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 52, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, 0x613a323a7b693a303b733a313a2235223b693a313b733a313a2236223b7d, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(25, 1, 1565624767, 'Isotope eCommerce :: Bestelldetails', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_orderdetails', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 0, NULL, '', '', ''),
(26, 1, 1566477865, 'Isotope eCommerce :: Kasse', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_checkout', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '4', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 46, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '1', 0x30, 'a:2:{i:0;s:14:\"payment_method\";i:1;s:15:\"shipping_method\";}', '1', 50, 0x613a313a7b693a303b733a323a223130223b7d, 0x613a313a7b693a303b733a313a2232223b7d, NULL, 0, 1, 0, 0, '', 54, 'both', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 4, NULL, '', '', ''),
(27, 1, 1565624767, 'Isotope eCommerce :: Login', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 48, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(29, 1, 1565624608, 'Layout :: Header :: Store configuration switcher', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_configswitcher', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, 0x613a333a7b693a303b733a313a2235223b693a313b733a313a2236223b693a323b733a313a2238223b7d, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(31, 1, 1565624608, 'Layout :: Main :: Warenkorb', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<h2 class=\"grid3\"><i class=\"fa fa-shopping-cart\"></i> Warenkorb</h2>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(32, 1, 1565624608, 'Page :: Sitemap', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'sitemap', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '1', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(34, 2, 1565625387, 'Layout :: Footer :: &#35;4 Isotope eCommerce', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:17:\"Isotope eCommerce\";}', 'navigation', 0, 0, '', '', '1', 65, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, 'http://isotopeecommerce.org/share/blog-en.xml', 'rss_items_only', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(35, 2, 1565625387, 'Layout :: Footer :: &#35;3 My account', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:10:\"My account\";}', 'navigation', 0, 0, '', '', '1', 32, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(36, 2, 1565625387, 'Layout :: Footer :: &#35;2 Online shopping', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:15:\"Online shopping\";}', 'navigation', 0, 0, '', '', '1', 20, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(37, 2, 1565625387, 'Layout :: Footer :: &#35;1 About us', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:8:\"About us\";}', 'customnav', 0, 0, '', '', '', 0, 'nav_default', '', 0x613a353a7b693a303b693a383b693a313b693a31363b693a323b693a31383b693a333b693a31323b693a343b693a31343b7d, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(38, 2, 1565625387, 'Layout :: Header :: Breadcrumb', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'breadcrumb', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:6:\"grid12\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(39, 2, 1565625387, 'Layout :: Header :: Mainnavigation', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'navigation', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:8:\"nav-main\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(40, 2, 1565625387, 'Layout :: Header :: Header-Top :: Start', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"header-top-bar\">\n	<div class=\"inner\">', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(41, 2, 1565625387, 'Layout :: Header :: Header-Top :: Stop', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '</div>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(42, 2, 1565625387, 'Layout :: Header :: Line', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"header-line grid12\"></div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `overviewPage`, `redirectBack`, `editable`, `memberTpl`, `form`, `queryType`, `fuzzy`, `contextLength`, `minKeywordLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `singleSRC`, `url`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_deleteDir`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `data`, `protected`, `groups`, `guests`, `cssID`, `rootPageDependentModules`, `faq_categories`, `faq_readerModule`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `cal_calendar`, `cal_noSpan`, `cal_hideRunning`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `cal_featured`, `newsletters`, `nl_channels`, `nl_text`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `iso_tsproducts`, `iso_tscheckout`, `iso_tsyoffset`, `iso_tsdirection`, `iso_tsdisplay`, `iso_tsreviews`, `iso_tsid`, `iso_notifications`, `iso_productcache`, `iso_addressFields`, `iso_address`, `iso_continueShopping`, `iso_includeMessages`, `iso_related_categories`, `iso_buttons`, `iso_listingSortDirection`, `iso_listingSortField`, `iso_checkout_jumpTo`, `iso_cart_jumpTo`, `iso_perPage`, `iso_enableLimit`, `iso_sortingFields`, `iso_searchAutocomplete`, `iso_searchExact`, `iso_searchFields`, `iso_filterHideSingle`, `iso_newFilter`, `iso_rangeFields`, `iso_cumulativeFields`, `iso_filterFields`, `iso_filterModules`, `iso_list_where`, `iso_category_scope`, `iso_noFilter`, `iso_emptyFilter`, `iso_noProducts`, `iso_emptyMessage`, `iso_orderCollectionBy`, `iso_addToAddressbook`, `iso_order_conditions`, `iso_checkout_skippable`, `iso_forward_review`, `orderCompleteJumpTo`, `iso_shipping_modules`, `iso_payment_modules`, `iso_config_ids`, `iso_config_id`, `iso_cols`, `iso_wishlistJumpTo`, `iso_addProductJumpTo`, `iso_loginRequired`, `iso_login_jumpTo`, `iso_checkout_method`, `iso_display404Page`, `iso_use_quantity`, `iso_disable_options`, `iso_hide_list`, `iso_link_primary`, `iso_jump_first`, `iso_filterTpl`, `iso_collectionTpl`, `iso_gallery`, `iso_reader_layout`, `iso_list_layout`, `nc_activation_notification`, `nc_notification`, `customLanguageText`, `customLanguage`, `hideNoFallback`, `hideActiveLanguage`) VALUES
(43, 2, 1565625387, 'Layout :: Header :: Logo', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<!-- indexer::stop -->\n<a href=\"{{env::path}}\" class=\"logo\">\n  <img src=\"files/isotope-demo/theme/img/logo.png\" alt=\"Isotope eCommerce Demo\">\n</a>\n<!-- indexer::continue -->', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(44, 2, 1565625387, 'Layout :: Header :: Change language', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'changelanguage', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"change_language\">\n	<a href=\"{{env::path}}en/\">English</a>\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, 'a:2:{i:0;a:2:{s:5:\"value\";s:2:\"en\";s:5:\"label\";s:7:\"English\";}i:1;a:2:{s:5:\"value\";s:2:\"de\";s:5:\"label\";s:7:\"Deutsch\";}}', '1', '', ''),
(45, 2, 1565625387, 'Layout :: Header :: Search form', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'form', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 2, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<div class=\"ce_form form-search tableless block\">\n  <form action=\"{{link_url::9}}\" id=\"form-search\" method=\"get\" enctype=\"application/x-www-form-urlencoded\">\n    <div class=\"formbody\">\n    	<input type=\"text\" name=\"keywords\" id=\"ctrl_12\" class=\"text\" value=\"\" placeholder=\"Suche\"><br>\n  <div class=\"submit_container\">\n    <input type=\"image\" src=\"files/contaodemo/theme/img/btn_search.gif\" id=\"ctrl_13\" class=\"submit\" title=\"Submit\" alt=\"Submit\"></div>\n    </div>\n  </form>\n\n</div>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:11:\"form-search\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(46, 2, 1565625387, 'Layout :: Main :: Subnavigation', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'navigation', 1, 2, '1', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:8:\"nav-left\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(47, 2, 1565625387, 'Layout :: Main :: Shopping cart', '', 'html', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, '<h2 class=\"grid3\"><i class=\"fa fa-shopping-cart\"></i> Shopping cart</h2>', 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', '', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(48, 2, 1565625387, 'Page :: Login form', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 36, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(49, 2, 1565625387, 'Page :: Logout', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'logout', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 34, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(50, 2, 1565625387, 'Page :: Sitemap', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'sitemap', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '1', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(51, 2, 1586011158, 'Page :: Search engine', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'search', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', 'a:2:{i:0;s:2:\"48\";i:1;s:4:\"1000\";}', 0, 0, 'simple', 'search_default', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(53, 2, 1565625387, 'Isotope eCommerce :: Order details', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_orderdetails', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 0, NULL, '', '', ''),
(54, 2, 1565625387, 'Isotope eCommerce :: Order history', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:19:\"{{page::pageTitle}}\";}', 'iso_orderhistory', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 53, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, 0x613a323a7b693a303b733a313a2235223b693a313b733a313a2236223b7d, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(55, 2, 1566464623, 'Isotope eCommerce :: Checkout', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_checkout', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '4', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 47, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '1', 0x30, 'a:2:{i:0;s:14:\"payment_method\";i:1;s:15:\"shipping_method\";}', '1', 51, 0x613a313a7b693a303b733a323a223130223b7d, 0x613a313a7b693a303b733a313a2232223b7d, NULL, 0, 1, 0, 0, '', 55, 'both', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 4, NULL, '', '', ''),
(56, 2, 1565625387, 'Isotope eCommerce :: Login form', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 49, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(57, 2, 1565625387, 'Isotope eCommerce :: Product reader', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productreader', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a333a7b693a303b733a31313a226164645f746f5f63617274223b693a313b733a363a22757064617465223b693a323b733a31363a22746f67676c655f6661766f7269746573223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 47, '', 0, 'member', '', '1', '', '', '', '', 'iso_filter_default', '', 0, 'iso_reader_default', '', 0, 0, NULL, '', '', ''),
(60, 2, 1565625387, 'Layout :: Header :: Store configuration switcher', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_configswitcher', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, 0x613a333a7b693a303b733a313a2235223b693a313b733a313a2236223b693a323b733a313a2238223b7d, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(61, 2, 1565625387, 'Isotope eCommerce :: Shopping cart', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_cart', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '1', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 55, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 11, '', '', 0, 0, NULL, '', '', ''),
(62, 2, 1565625387, 'Isotope eCommerce :: Shopping cart :: Mini', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_cart', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:5:\"grid3\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 55, 47, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_mini', 0, '', '', 0, 0, NULL, '', '', ''),
(63, 1, 1565624767, 'Isotope eCommerce :: Produktliste :: Unsere Angebote', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, '', 'DESC', 'dateAdded', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, '', '', 'article', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(64, 2, 1565625387, 'Isotope eCommerce :: Product list :: Our specials', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, '', 'DESC', 'dateAdded', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, '', '', 'article', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(65, 2, 1565625387, 'Isotope eCommerce :: Product list :: Our new products', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 2, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a313a7b693a343b613a313a7b693a303b623a303b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', 'dateAdded', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_new', NULL, NULL, NULL, '', '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 4, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(66, 1, 1566814774, 'Isotope eCommerce :: Filter :: Produkt-Filter', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productfilter', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', 'name', 0, 0, '8,16,32,64', '1', 0x613a333a7b693a303b733a333a22736b75223b693a313b733a343a226e616d65223b693a323b733a353a227072696365223b7d, 'name', 0x613a313a7b693a303b733a343a226e616d65223b7d, 0x613a313a7b693a303b733a343a226e616d65223b7d, '', 'show_all', NULL, NULL, NULL, NULL, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(67, 2, 1566565388, 'Isotope eCommerce :: Filter :: Product filter', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productfilter', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', 'name', 0, 0, '8,16,32,64', '1', 0x613a333a7b693a303b733a333a22736b75223b693a313b733a343a226e616d65223b693a323b733a353a227072696365223b7d, 'name', 0x613a313a7b693a303b733a343a226e616d65223b7d, 0x613a313a7b693a303b733a343a226e616d65223b7d, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(68, 1, 1565624767, 'Isotope eCommerce :: Produktliste :: Aktive Kategorie', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 8, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, '', 'ASC', 'name', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, '', '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(69, 2, 1565625387, 'Isotope eCommerce :: Product list :: Current Category', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 8, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a313a7b693a36333b613a313a7b693a303b623a303b7d7d, NULL, NULL, '', '', NULL, '', 'ASC', 'name', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, '', '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(70, 1, 1565624767, 'Isotope eCommerce :: Filter :: Einschränkend', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:23:\"Einschränkender Filter\";}', 'iso_cumulativefilter', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, 0x613a313a7b693a303b613a333a7b733a393a22617474726962757465223b733a363a22636f6c6f7572223b733a393a22717565727954797065223b733a333a22616e64223b733a31303a226d61746368436f756e74223b733a333a22616c6c223b7d7d, 0x613a313a7b693a303b733a363a22636f6c6f7572223b7d, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(71, 1, 1565624767, 'Isotope eCommerce :: Ähnliche Produkte', 'a:2:{s:4:\"unit\";s:2:\"h3\";s:5:\"value\";s:0:\"\";}', 'iso_relatedproducts', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', 0x613a313a7b693a303b733a313a2232223b7d, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '1', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 3, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(73, 2, 1565625387, 'Isotope eCommerce :: Related products', 'a:2:{s:4:\"unit\";s:2:\"h3\";s:5:\"value\";s:0:\"\";}', 'iso_relatedproducts', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', 0x613a313a7b693a303b733a313a2232223b7d, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '1', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 3, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', 'iso_list_default', 0, 0, NULL, '', '', ''),
(75, 1, 1565624767, 'Isotope eCommerce :: Produktliste :: Produkt-Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Produktliste\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223636223b7d, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 46, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(76, 1, 1586011006, 'Isotope eCommerce :: Produktliste :: Einschränkender Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Produktliste\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, NULL, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223730223b7d, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 46, '', 0, 'member', '', '', '1', '1', '1', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(77, 2, 1565625387, 'Isotope eCommerce :: Filter :: Cumulative', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:17:\"Cumulative Filter\";}', 'iso_cumulativefilter', 0, 0, '', '', '', 0, 'nav_default', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, 0x613a313a7b693a303b613a333a7b733a393a22617474726962757465223b733a363a22636f6c6f7572223b733a393a22717565727954797065223b733a333a22616e64223b733a31303a226d61746368436f756e74223b733a333a22616c6c223b7d7d, 0x613a313a7b693a303b733a363a22636f6c6f7572223b7d, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(78, 2, 1586011034, 'Isotope eCommerce :: Product list :: Cumulative Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Product list\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, NULL, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223737223b7d, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 47, '', 0, 'member', '', '', '1', '1', '1', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(79, 2, 1565625387, 'Isotope eCommerce :: Product list :: Product Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Product list\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a333a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d693a38383b613a323a7b693a31383b623a313b693a323b623a313b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223637223b7d, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 47, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(80, 2, 1565625387, 'Isotope eCommerce :: Product list :: Shop', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:4:\"Shop\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 10, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, '', 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 47, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(81, 1, 1565624767, 'Isotope eCommerce :: Warenkorb :: Versandkosten :: Adresse', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:20:\"Versandkostenrechner\";}', 'iso_cart_address', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, 'member_default', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, 0x613a313a7b693a303b733a373a22636f756e747279223b7d, 0x613a323a7b693a303b733a373a2262696c6c696e67223b693a313b733a383a227368697070696e67223b7d, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 0, '', '', 0, 0, NULL, '', '', ''),
(82, 1, 1565624767, 'Isotope eCommerce :: Warenkorb :: Versandkosten :: Rechner', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_shipping_calculator', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, 0x613a313a7b693a303b733a323a223130223b7d, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 0, '', '', 0, 0, NULL, '', '', ''),
(83, 2, 1565625387, 'Isotope eCommerce :: Shopping cart :: Shipping costs :: Address', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:14:\"Shipping costs\";}', 'iso_cart_address', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, 'member_default', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, 0x613a313a7b693a303b733a373a22636f756e747279223b7d, 0x613a323a7b693a303b733a373a2262696c6c696e67223b693a313b733a383a227368697070696e67223b7d, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 0, '', '', 0, 0, NULL, '', '', '');
INSERT INTO `tl_module` (`id`, `pid`, `tstamp`, `name`, `headline`, `type`, `levelOffset`, `showLevel`, `hardLimit`, `showProtected`, `defineRoot`, `rootPage`, `navigationTpl`, `customTpl`, `pages`, `showHidden`, `customLabel`, `autologin`, `jumpTo`, `overviewPage`, `redirectBack`, `editable`, `memberTpl`, `form`, `queryType`, `fuzzy`, `contextLength`, `minKeywordLength`, `perPage`, `searchType`, `searchTpl`, `inColumn`, `skipFirst`, `loadFirst`, `singleSRC`, `url`, `imgSize`, `useCaption`, `fullsize`, `multiSRC`, `orderSRC`, `html`, `rss_cache`, `rss_feed`, `rss_template`, `numberOfItems`, `disableCaptcha`, `reg_groups`, `reg_allowLogin`, `reg_skipName`, `reg_close`, `reg_deleteDir`, `reg_assignDir`, `reg_homeDir`, `reg_activate`, `reg_jumpTo`, `reg_text`, `reg_password`, `data`, `protected`, `groups`, `guests`, `cssID`, `rootPageDependentModules`, `faq_categories`, `faq_readerModule`, `com_order`, `com_moderate`, `com_bbcode`, `com_requireLogin`, `com_disableCaptcha`, `com_template`, `news_archives`, `news_featured`, `news_jumpToCurrent`, `news_readerModule`, `news_metaFields`, `news_template`, `news_format`, `news_startDay`, `news_order`, `news_showQuantity`, `list_table`, `list_fields`, `list_where`, `list_search`, `list_sort`, `list_info`, `list_info_where`, `list_layout`, `list_info_layout`, `cal_calendar`, `cal_noSpan`, `cal_hideRunning`, `cal_startDay`, `cal_format`, `cal_ignoreDynamic`, `cal_order`, `cal_readerModule`, `cal_limit`, `cal_template`, `cal_ctemplate`, `cal_showQuantity`, `cal_featured`, `newsletters`, `nl_channels`, `nl_text`, `nl_hideChannels`, `nl_subscribe`, `nl_unsubscribe`, `nl_template`, `iso_tsproducts`, `iso_tscheckout`, `iso_tsyoffset`, `iso_tsdirection`, `iso_tsdisplay`, `iso_tsreviews`, `iso_tsid`, `iso_notifications`, `iso_productcache`, `iso_addressFields`, `iso_address`, `iso_continueShopping`, `iso_includeMessages`, `iso_related_categories`, `iso_buttons`, `iso_listingSortDirection`, `iso_listingSortField`, `iso_checkout_jumpTo`, `iso_cart_jumpTo`, `iso_perPage`, `iso_enableLimit`, `iso_sortingFields`, `iso_searchAutocomplete`, `iso_searchExact`, `iso_searchFields`, `iso_filterHideSingle`, `iso_newFilter`, `iso_rangeFields`, `iso_cumulativeFields`, `iso_filterFields`, `iso_filterModules`, `iso_list_where`, `iso_category_scope`, `iso_noFilter`, `iso_emptyFilter`, `iso_noProducts`, `iso_emptyMessage`, `iso_orderCollectionBy`, `iso_addToAddressbook`, `iso_order_conditions`, `iso_checkout_skippable`, `iso_forward_review`, `orderCompleteJumpTo`, `iso_shipping_modules`, `iso_payment_modules`, `iso_config_ids`, `iso_config_id`, `iso_cols`, `iso_wishlistJumpTo`, `iso_addProductJumpTo`, `iso_loginRequired`, `iso_login_jumpTo`, `iso_checkout_method`, `iso_display404Page`, `iso_use_quantity`, `iso_disable_options`, `iso_hide_list`, `iso_link_primary`, `iso_jump_first`, `iso_filterTpl`, `iso_collectionTpl`, `iso_gallery`, `iso_reader_layout`, `iso_list_layout`, `nc_activation_notification`, `nc_notification`, `customLanguageText`, `customLanguage`, `hideNoFallback`, `hideActiveLanguage`) VALUES
(84, 2, 1565625387, 'Isotope eCommerce :: Shopping Cart :: Shipping costs :: Calculator', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_shipping_calculator', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, 0x613a313a7b693a303b733a323a223130223b7d, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_default', 0, '', '', 0, 0, NULL, '', '', ''),
(86, 1, 1565624767, 'Isotope eCommerce :: Favoriten', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_favorites', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', 'test', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_favorites', 4, '', '', 0, 0, NULL, '', '', ''),
(87, 2, 1565625387, 'Isotope eCommerce :: Favourites', 'a:2:{s:4:\"unit\";s:2:\"h1\";s:5:\"value\";s:0:\"\";}', 'iso_favorites', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', 'test', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', 'iso_collection_favorites', 4, '', '', 0, 0, NULL, '', '', ''),
(88, 1, 1565624767, 'Isotope eCommerce :: Favoriten :: Login', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 90, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(89, 2, 1565625387, 'Isotope eCommerce :: Favourites :: Login form', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:0:\"\";}', 'login', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 91, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(91, 1, 1566814837, 'Isotope eCommerce :: Filter :: Kategorie-Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:16:\"Kategorie-Filter\";}', 'iso_categoryfilter', 0, 0, '', '', '1', 7, 'nav_iso_categoryfilter', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, 0x613a313a7b693a303b613a333a7b733a393a22617474726962757465223b733a363a22636f6c6f7572223b733a393a22717565727954797065223b733a333a22616e64223b733a31303a226d61746368436f756e74223b733a333a22616c6c223b7d7d, 0x613a313a7b693a303b733a363a22636f6c6f7572223b7d, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(92, 1, 1566543948, 'Isotope eCommerce :: Produktliste :: Kategorie-Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Produktliste\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, NULL, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223931223b7d, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 46, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', ''),
(94, 2, 1566814874, 'Isotope eCommerce :: Filter :: Category Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:15:\"Category Filter\";}', 'iso_categoryfilter', 0, 0, '', '', '1', 8, 'nav_iso_categoryfilter', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 3, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', NULL, NULL, NULL, '', '', NULL, 0x613a313a7b693a303b733a31313a226164645f746f5f63617274223b7d, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, 0x613a313a7b693a303b613a333a7b733a393a22617474726962757465223b733a363a22636f6c6f7572223b733a393a22717565727954797065223b733a333a22616e64223b733a31303a226d61746368436f756e74223b733a333a22616c6c223b7d7d, 0x613a313a7b693a303b733a363a22636f6c6f7572223b7d, NULL, '', 'current_category', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 0, '', 0, 'member', '', '', '', '', '', '', 'iso_filter_default', '', 0, '', '', 0, 0, NULL, '', '', ''),
(95, 2, 1566550725, 'Isotope eCommerce :: Product list :: Category Filter', 'a:2:{s:4:\"unit\";s:2:\"h2\";s:5:\"value\";s:12:\"Product list\";}', 'iso_productlist', 0, 0, '', '', '', 0, '', '', NULL, '', '', '', 0, 0, '', NULL, '', 0, 'and', '', '48', 4, 0, 'simple', '', 'main', 0, '', NULL, '', '', '', '', NULL, NULL, NULL, 3600, NULL, 'rss_default', 0, '', NULL, '', '', '', '', '', NULL, '', 0, NULL, NULL, NULL, '', NULL, '', 'a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}', NULL, NULL, 0, 'ascending', '', '', '', '', '', NULL, 'all_items', '', 0, 'a:2:{i:0;s:4:\"date\";i:1;s:6:\"author\";}', '', 'news_month', 0, 'order_date_desc', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', 1, 'cal_month', '', 'ascending', 0, 0, '', '', '', 'all_items', NULL, NULL, NULL, '', NULL, NULL, '', '', '', 0, '', '', '', '', '0', 0x613a323a7b693a373b613a323a7b693a303b623a303b693a313b623a303b7d693a31353b613a313a7b693a303b623a313b7d7d, NULL, NULL, '', '', NULL, NULL, 'DESC', '', 0, 0, '8,12,32,64', '', NULL, '', NULL, NULL, '', 'show_all', NULL, NULL, NULL, 0x613a313a7b693a303b733a323a223934223b7d, '', 'global', '', '', '', '', 'asc_id', '', 0x30, NULL, '', 0, NULL, NULL, NULL, 0, 1, 0, 47, '', 0, 'member', '', '', '', '1', '', '', 'iso_filter_default', '', 4, '', '', 0, 0, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_nc_gateway`
--

CREATE TABLE `tl_nc_gateway` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `queue_targetGateway` int(11) NOT NULL DEFAULT 0,
  `queue_delay` varchar(64) NOT NULL DEFAULT '',
  `queue_cronEnable` char(1) NOT NULL DEFAULT '',
  `queue_cronInterval` varchar(12) NOT NULL DEFAULT '',
  `queue_cronMessages` int(11) NOT NULL DEFAULT 0,
  `email_overrideSmtp` char(1) NOT NULL DEFAULT '',
  `email_smtpHost` varchar(255) NOT NULL DEFAULT '',
  `email_smtpUser` varchar(255) NOT NULL DEFAULT '',
  `email_smtpPass` varchar(255) NOT NULL DEFAULT '',
  `email_smtpEnc` varchar(3) NOT NULL DEFAULT '',
  `email_smtpPort` varchar(16) NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) NOT NULL DEFAULT '',
  `file_type` varchar(4) NOT NULL DEFAULT '',
  `file_connection` varchar(8) NOT NULL DEFAULT '',
  `file_host` varchar(255) NOT NULL DEFAULT '',
  `file_port` varchar(5) NOT NULL DEFAULT '',
  `file_username` varchar(255) NOT NULL DEFAULT '',
  `file_password` varchar(255) NOT NULL DEFAULT '',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  `postmark_key` varchar(64) NOT NULL DEFAULT '',
  `postmark_test` char(1) NOT NULL DEFAULT '',
  `postmark_ssl` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_nc_gateway`
--

INSERT INTO `tl_nc_gateway` (`id`, `tstamp`, `title`, `type`, `queue_targetGateway`, `queue_delay`, `queue_cronEnable`, `queue_cronInterval`, `queue_cronMessages`, `email_overrideSmtp`, `email_smtpHost`, `email_smtpUser`, `email_smtpPass`, `email_smtpEnc`, `email_smtpPort`, `mailerTransport`, `file_type`, `file_connection`, `file_host`, `file_port`, `file_username`, `file_password`, `file_path`, `postmark_key`, `postmark_test`, `postmark_ssl`) VALUES
(2, 1385371252, 'e-mail', 'email', 0, '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_nc_language`
--

CREATE TABLE `tl_nc_language` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gateway_type` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(5) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `recipients` varchar(255) NOT NULL DEFAULT '',
  `attachment_tokens` varchar(255) NOT NULL DEFAULT '',
  `attachments` blob DEFAULT NULL,
  `attachment_templates` blob DEFAULT NULL,
  `email_sender_name` varchar(255) NOT NULL DEFAULT '',
  `email_sender_address` varchar(255) NOT NULL DEFAULT '',
  `email_recipient_cc` text DEFAULT NULL,
  `email_recipient_bcc` text DEFAULT NULL,
  `email_replyTo` varchar(255) NOT NULL DEFAULT '',
  `email_subject` varchar(255) NOT NULL DEFAULT '',
  `email_mode` varchar(16) NOT NULL DEFAULT '',
  `email_text` text DEFAULT NULL,
  `email_html` text DEFAULT NULL,
  `email_external_images` char(1) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  `file_storage_mode` varchar(8) NOT NULL DEFAULT '',
  `file_content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_nc_language`
--

INSERT INTO `tl_nc_language` (`id`, `pid`, `tstamp`, `gateway_type`, `language`, `fallback`, `recipients`, `attachment_tokens`, `attachments`, `attachment_templates`, `email_sender_name`, `email_sender_address`, `email_recipient_cc`, `email_recipient_bcc`, `email_replyTo`, `email_subject`, `email_mode`, `email_text`, `email_html`, `email_external_images`, `file_name`, `file_storage_mode`, `file_content`) VALUES
(3, 4, 1566476333, 'email', 'de', '1', '##recipient_email##', '##document##', NULL, NULL, '', '', NULL, NULL, '', 'Rechnung ##document_number##', 'textAndHtml', '##cart_text##', '<p>##cart_html##</p>', '', '', '', NULL),
(4, 4, 1427892341, 'email', 'en', '', '##recipient_email##', '##document##', NULL, NULL, '', '', '', '', '', 'Invoice ##document_number##', 'textAndHtml', '##cart_text##', '<p>##cart_html##</p>', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tl_nc_message`
--

CREATE TABLE `tl_nc_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `gateway` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `gateway_type` varchar(32) NOT NULL DEFAULT '',
  `email_priority` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email_template` varchar(255) NOT NULL DEFAULT '',
  `postmark_tag` varchar(255) NOT NULL DEFAULT '',
  `postmark_trackOpens` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_nc_message`
--

INSERT INTO `tl_nc_message` (`id`, `pid`, `tstamp`, `title`, `gateway`, `gateway_type`, `email_priority`, `email_template`, `postmark_tag`, `postmark_trackOpens`, `published`) VALUES
(4, 4, 1427892347, 'Order', 2, 'email', 3, 'mail_default', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tl_nc_notification`
--

CREATE TABLE `tl_nc_notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL DEFAULT '',
  `flatten_delimiter` varchar(255) NOT NULL DEFAULT '',
  `templates` blob DEFAULT NULL,
  `iso_collectionTpl` varchar(64) NOT NULL DEFAULT '',
  `iso_orderCollectionBy` varchar(16) NOT NULL DEFAULT '',
  `iso_gallery` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_document` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_nc_notification`
--

INSERT INTO `tl_nc_notification` (`id`, `tstamp`, `title`, `type`, `flatten_delimiter`, `templates`, `iso_collectionTpl`, `iso_orderCollectionBy`, `iso_gallery`, `iso_document`) VALUES
(4, 1385560584, 'Order', 'iso_order_status_change', ',', NULL, 'iso_collection_default', 'asc_id', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tl_nc_queue`
--

CREATE TABLE `tl_nc_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `sourceQueue` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `targetGateway` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateDelay` int(10) UNSIGNED DEFAULT NULL,
  `dateSent` varchar(10) NOT NULL DEFAULT '',
  `error` char(1) NOT NULL DEFAULT '',
  `tokens` blob DEFAULT NULL,
  `language` varchar(5) NOT NULL DEFAULT '',
  `attachments` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_news`
--

CREATE TABLE `tl_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `headline` varchar(255) NOT NULL DEFAULT '',
  `featured` char(1) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `author` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `subheadline` varchar(255) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `addImage` char(1) NOT NULL DEFAULT '',
  `overwriteMeta` char(1) NOT NULL DEFAULT '',
  `singleSRC` binary(16) DEFAULT NULL,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `imageTitle` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(64) NOT NULL DEFAULT '',
  `imagemargin` varchar(128) NOT NULL DEFAULT '',
  `imageUrl` varchar(2048) NOT NULL DEFAULT '',
  `fullsize` char(1) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `floating` varchar(12) NOT NULL DEFAULT 'above',
  `addEnclosure` char(1) NOT NULL DEFAULT '',
  `enclosure` blob DEFAULT NULL,
  `source` varchar(12) NOT NULL DEFAULT 'default',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `articleId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(2048) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(255) NOT NULL DEFAULT '',
  `noComments` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `languageMain` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter`
--

CREATE TABLE `tl_newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `addFile` char(1) NOT NULL DEFAULT '',
  `files` blob DEFAULT NULL,
  `template` varchar(64) NOT NULL DEFAULT '',
  `sendText` char(1) NOT NULL DEFAULT '',
  `externalImages` char(1) NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT '',
  `sent` char(1) NOT NULL DEFAULT '',
  `date` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_channel`
--

CREATE TABLE `tl_newsletter_channel` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `template` varchar(32) NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `senderName` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_deny_list`
--

CREATE TABLE `tl_newsletter_deny_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_newsletter_recipients`
--

CREATE TABLE `tl_newsletter_recipients` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `addedOn` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_news_archive`
--

CREATE TABLE `tl_news_archive` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `allowComments` char(1) NOT NULL DEFAULT '',
  `notify` varchar(16) NOT NULL DEFAULT 'notify_admin',
  `sortOrder` varchar(32) NOT NULL DEFAULT 'ascending',
  `perPage` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `moderate` char(1) NOT NULL DEFAULT '',
  `bbcode` char(1) NOT NULL DEFAULT '',
  `requireLogin` char(1) NOT NULL DEFAULT '',
  `disableCaptcha` char(1) NOT NULL DEFAULT '',
  `master` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_news_feed`
--

CREATE TABLE `tl_news_feed` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT '',
  `archives` blob DEFAULT NULL,
  `format` varchar(32) NOT NULL DEFAULT 'rss',
  `source` varchar(32) NOT NULL DEFAULT 'source_teaser',
  `maxItems` smallint(5) UNSIGNED NOT NULL DEFAULT 25,
  `feedBase` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `imgSize` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_opt_in`
--

CREATE TABLE `tl_opt_in` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(24) NOT NULL DEFAULT '',
  `createdOn` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `confirmedOn` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `removeOn` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invalidatedThrough` varchar(24) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `emailSubject` varchar(255) NOT NULL DEFAULT '',
  `emailText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_opt_in_related`
--

CREATE TABLE `tl_opt_in_related` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `relTable` varchar(64) DEFAULT NULL,
  `relId` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_page`
--

CREATE TABLE `tl_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT 'regular',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `requireItem` char(1) NOT NULL DEFAULT '',
  `routePriority` int(11) NOT NULL DEFAULT 0,
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(64) NOT NULL DEFAULT '',
  `robots` varchar(32) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `redirect` varchar(32) NOT NULL DEFAULT 'permanent',
  `jumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `redirectBack` char(1) NOT NULL DEFAULT '',
  `url` varchar(2048) NOT NULL DEFAULT '',
  `target` char(1) NOT NULL DEFAULT '',
  `dns` varchar(255) NOT NULL DEFAULT '',
  `staticFiles` varchar(255) NOT NULL DEFAULT '',
  `staticPlugins` varchar(255) NOT NULL DEFAULT '',
  `fallback` char(1) NOT NULL DEFAULT '',
  `disableLanguageRedirect` char(1) NOT NULL DEFAULT '',
  `favicon` binary(16) DEFAULT NULL,
  `robotsTxt` text DEFAULT NULL,
  `maintenanceMode` char(1) NOT NULL DEFAULT '',
  `mailerTransport` varchar(255) NOT NULL DEFAULT '',
  `enableCanonical` char(1) NOT NULL DEFAULT '',
  `canonicalLink` varchar(2048) NOT NULL DEFAULT '',
  `canonicalKeepParams` varchar(255) NOT NULL DEFAULT '',
  `adminEmail` varchar(255) NOT NULL DEFAULT '',
  `dateFormat` varchar(32) NOT NULL DEFAULT '',
  `timeFormat` varchar(32) NOT NULL DEFAULT '',
  `datimFormat` varchar(32) NOT NULL DEFAULT '',
  `validAliasCharacters` varchar(255) NOT NULL DEFAULT '',
  `useFolderUrl` char(1) NOT NULL DEFAULT '',
  `urlPrefix` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `urlSuffix` varchar(16) NOT NULL DEFAULT '',
  `useSSL` char(1) NOT NULL DEFAULT '1',
  `autoforward` char(1) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `includeLayout` char(1) NOT NULL DEFAULT '',
  `layout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subpageLayout` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `includeCache` char(1) NOT NULL DEFAULT '',
  `cache` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `alwaysLoadFromCache` char(1) NOT NULL DEFAULT '',
  `clientCache` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `includeChmod` char(1) NOT NULL DEFAULT '',
  `cuser` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cgroup` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `chmod` varchar(255) NOT NULL DEFAULT '',
  `noSearch` char(1) NOT NULL DEFAULT '',
  `cssClass` varchar(64) NOT NULL DEFAULT '',
  `sitemap` varchar(32) NOT NULL DEFAULT '',
  `hide` char(1) NOT NULL DEFAULT '',
  `guests` char(1) NOT NULL DEFAULT '',
  `tabindex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `accesskey` char(1) NOT NULL DEFAULT '',
  `published` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `enforceTwoFactor` char(1) NOT NULL DEFAULT '',
  `twoFactorJumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_readerJumpTo` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_readerMode` varchar(8) NOT NULL DEFAULT 'current',
  `iso_store_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `iso_config` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `languageQuery` varchar(255) NOT NULL DEFAULT '',
  `languageRoot` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `languageMain` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_page`
--

INSERT INTO `tl_page` (`id`, `pid`, `sorting`, `tstamp`, `title`, `type`, `alias`, `requireItem`, `routePriority`, `pageTitle`, `language`, `robots`, `description`, `redirect`, `jumpTo`, `redirectBack`, `url`, `target`, `dns`, `staticFiles`, `staticPlugins`, `fallback`, `disableLanguageRedirect`, `favicon`, `robotsTxt`, `maintenanceMode`, `mailerTransport`, `enableCanonical`, `canonicalLink`, `canonicalKeepParams`, `adminEmail`, `dateFormat`, `timeFormat`, `datimFormat`, `validAliasCharacters`, `useFolderUrl`, `urlPrefix`, `urlSuffix`, `useSSL`, `autoforward`, `protected`, `groups`, `includeLayout`, `layout`, `subpageLayout`, `includeCache`, `cache`, `alwaysLoadFromCache`, `clientCache`, `includeChmod`, `cuser`, `cgroup`, `chmod`, `noSearch`, `cssClass`, `sitemap`, `hide`, `guests`, `tabindex`, `accesskey`, `published`, `start`, `stop`, `enforceTwoFactor`, `twoFactorJumpTo`, `iso_readerJumpTo`, `iso_readerMode`, `iso_store_id`, `iso_config`, `languageQuery`, `languageRoot`, `languageMain`) VALUES
(1, 0, 128, 1667398817, 'Isotope eCommerce Demo :: DE', 'root', 'isotope-ecommerce-demo-de', '', 0, '', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '', '1', '', NULL, NULL, '', '', '', '', '', '', 'd.m.Y', '', '', '0-9a-z', '1', 'de', '.html', '1', '', '', NULL, '1', 2, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(2, 0, 256, 1667398823, 'Isotope eCommerce Demo :: EN', 'root', 'isotope-ecommerce-demo-en', '', 0, '', 'en', '', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', 'Y-m-d', '', '', '0-9a-z', '1', 'en', '.html', '1', '', '', NULL, '1', 3, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(3, 1, 128, 1384469396, 'Startseite', 'regular', 'index', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '1', 1, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(4, 2, 128, 1401194411, 'Home', 'regular', 'index', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '1', 4, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 3),
(5, 1, 256, 1386583553, 'Angebote', 'regular', 'angebote', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(6, 2, 256, 1386571986, 'Specials', 'regular', 'specials', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 5),
(7, 1, 192, 1566565537, 'Shop', 'regular', 'shop', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 94, 'current', 0, 0, '', 0, 0),
(8, 2, 192, 1566565598, 'Shop', 'regular', 'shop', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 95, 'current', 0, 0, '', 0, 7),
(9, 1, 384, 1388502218, 'Suche', 'regular', 'suche', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(10, 2, 384, 1388502219, 'Search', 'regular', 'search', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 9),
(11, 1, 512, 1384445464, 'Sitemap', 'regular', 'sitemap', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(12, 2, 512, 1386571987, 'Sitemap', 'regular', 'sitemap', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 11),
(13, 1, 640, 1384445524, 'Impressum', 'regular', 'impressum', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(14, 2, 640, 1386571987, 'Legal notice', 'regular', 'legal-notice', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 13),
(15, 1, 320, 1384446007, 'Über uns', 'regular', 'ueber-uns', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(16, 2, 320, 1386571986, 'About us', 'regular', 'about-us', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 15),
(17, 1, 344, 1386599303, 'Kontakt', 'regular', 'kontakt', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(18, 2, 352, 1386571986, 'Contact', 'regular', 'contact', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 17),
(19, 1, 368, 1385551041, 'Online-Einkauf', 'forward', 'online-einkauf', '', 0, '', '', 'index,follow', '', 'permanent', 21, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(20, 2, 368, 1386571986, 'Online shopping', 'forward', 'online-shopping', '', 0, '', '', 'index,follow', '', 'permanent', 22, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 19),
(21, 19, 128, 1384446677, 'Wie bestelle ich?', 'regular', 'wie-bestelle-ich', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(22, 20, 128, 1386571986, 'How to place an order?', 'regular', 'how-to-place-an-order', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 21),
(23, 19, 256, 1384446965, 'Lieferkonditionen', 'regular', 'lieferkonditionen', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(24, 20, 256, 1386571986, 'Delivery conditions', 'regular', 'delivery-conditions', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 23),
(25, 19, 384, 1384446965, 'Zahlungsmöglichkeiten', 'regular', 'zahlungsmoeglichkeiten', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(26, 20, 384, 1386571986, 'Payment options', 'regular', 'payment-options', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 25),
(27, 19, 512, 1384446965, 'AGB', 'regular', 'agb', '', 0, 'Allgemeine Geschäftsbedingungen', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(28, 20, 512, 1386571986, 'GTC', 'regular', 'gtc', '', 0, 'General terms and conditions', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 27),
(29, 19, 640, 1384446987, 'Datenschutz', 'regular', 'datenschutz', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(30, 20, 640, 1386571986, 'Data protection', 'regular', 'data-protection', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 29),
(31, 1, 376, 1388502218, 'Mein Konto', 'forward', 'mein-konto', '', 0, '', '', 'index,follow', '', 'permanent', 33, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(32, 2, 376, 1388502218, 'My account', 'forward', 'my-account', '', 0, '', '', 'index,follow', '', 'permanent', 34, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 31),
(33, 31, 128, 1388502218, 'Login', 'regular', 'login', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '1', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(34, 32, 128, 1388502218, 'Login', 'regular', 'login', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '1', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 33),
(35, 31, 256, 1388502218, 'Meine Bestellungen', 'regular', 'meine-bestellungen', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(36, 32, 256, 1388502218, 'My order history', 'regular', 'my-order-history', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 35),
(37, 31, 384, 1388502218, 'Logout', 'regular', 'logout', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(38, 32, 384, 1388502219, 'Logout', 'regular', 'logout', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 37),
(42, 1, 64, 1384469980, 'Zugriff verweigert', 'error_401', '403', '', 0, '', '', 'index,follow', '', 'permanent', 33, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(43, 2, 64, 1504880088, 'Access denied', 'error_401', '403', '', 0, '', '', 'index,follow', '', 'permanent', 33, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 42),
(44, 1, 96, 1384471168, 'Seite nicht gefunden', 'error_404', '404', '', 0, '', '', 'index,follow', '', 'permanent', 3, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(45, 2, 96, 1504880061, 'Page not found', 'error_404', '404', '', 0, '', '', 'index,follow', '', 'permanent', 4, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '1', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 44),
(46, 1, 380, 1388502218, 'Warenkorb', 'regular', 'warenkorb', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(47, 2, 380, 1388502219, 'Shopping cart', 'regular', 'shopping-cart', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 46),
(48, 46, 128, 1388502218, 'Kasse', 'regular', 'kasse', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(49, 47, 128, 1388502219, 'Checkout', 'regular', 'checkout', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 48),
(50, 46, 256, 1388502218, 'Bestellzusammenfassung', 'regular', 'bestellzusammenfassung', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(51, 47, 256, 1388502219, 'Order summary', 'regular', 'order-summary', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 50),
(52, 35, 128, 1388502218, 'Bestelldetails', 'regular', 'bestelldetails', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(53, 36, 128, 1388502218, 'Order details', 'regular', 'order-details', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 52),
(54, 46, 64, 1388502218, 'Login', 'regular', 'shop-login', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(55, 47, 64, 1388502219, 'Login', 'regular', 'shop-login', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 54),
(56, 7, 128, 1386669488, 'CD', 'regular', 'cd', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(57, 8, 128, 1386669500, 'CD', 'regular', 'cd', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 56),
(60, 7, 384, 1386669564, 'Download', 'regular', 'download', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(61, 8, 256, 1386669611, 'Download', 'regular', 'download', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 60),
(62, 7, 512, 1386669636, 'T-Shirt', 'regular', 't-shirt', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(63, 8, 384, 1386669654, 'T-Shirt', 'regular', 't-shirt', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 62),
(64, 1, 768, 1386836841, 'Isotope eCommerce', 'regular', 'isotope-ecommerce', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(65, 2, 768, 1386836867, 'Isotope eCommerce', 'regular', 'isotope-ecommerce', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '', '', '', '', 0, 0, 'current', 0, 0, '', 0, 64),
(66, 64, 128, 1386837073, 'Webseite', 'redirect', 'webseite', '', 0, '', '', '', NULL, 'permanent', 0, '', 'http://isotopeecommerce.org/de/', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-home', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(67, 64, 256, 1386837137, 'GitHub', 'redirect', 'github', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://github.com/isotope/core', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-github', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(68, 64, 384, 1386837213, 'YouTube', 'redirect', 'youtube', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://www.youtube.com/channel/UCih90YDtsBhYenxAN0BWvmA', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-youtube', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(69, 64, 512, 1386837303, 'Twitter', 'redirect', 'twitter', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://twitter.com/isotopecommerce', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-twitter', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(71, 64, 576, 1386837392, 'Facebook', 'redirect', 'facebook', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://www.facebook.com/isotopeecommerce', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-facebook', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(72, 65, 128, 1386838385, 'Website', 'redirect', 'website', '', 0, '', '', '', NULL, 'permanent', 0, '', 'http://isotopeecommerce.org/en/', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-home', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 66),
(73, 65, 256, 1386838409, 'GitHub', 'redirect', 'github', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://github.com/isotope/core', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-github', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 67),
(74, 65, 384, 1386838434, 'YouTube', 'redirect', 'youtube', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://www.youtube.com/channel/UCih90YDtsBhYenxAN0BWvmA', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-youtube', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 68),
(75, 65, 512, 1386838447, 'Twitter', 'redirect', 'twitter', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://twitter.com/isotopecommerce', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-twitter', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 69),
(76, 65, 640, 1386838465, 'Facebook', 'redirect', 'facebook', '', 0, '', '', '', NULL, 'permanent', 0, '', 'https://www.facebook.com/isotopeecommerce', '1', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', 'isotope-facebook', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 71),
(77, 0, 384, 1388486237, 'Database', 'root', 'database', '', 0, '', 'de', '', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '1', 'de', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', '', '', '', 0, '', '', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(78, 77, 128, 1388486283, 'Music', 'regular', 'music', '', 0, '', '', 'noindex,nofollow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '1', '', 'map_never', '1', '', 0, '', '', '', '', '', 0, 0, 'current', 0, 0, '', 0, 3),
(82, 7, 576, 1395210789, 'Sammelsurium', 'regular', 'sammelsurium', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(83, 8, 512, 1395211816, 'Salmagundi', 'regular', 'salmagundi', '', 0, '', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 82),
(84, 1, 288, 1421789718, 'Filter', 'forward', 'filter', '', 0, '', '', 'index,follow', '', 'permanent', 86, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(85, 2, 288, 1421789870, 'Filter', 'forward', 'filter-85', '', 0, '', '', 'index,follow', '', 'permanent', 88, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 84),
(86, 84, 128, 1504878028, 'Produkt', 'regular', 'produkt-filter', '', 0, 'Produkt-Filter', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(87, 84, 256, 1504878149, 'Einschränkend', 'regular', 'einschraenkender-filter', '', 0, 'Einschränkender Filter', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(88, 85, 128, 1504878163, 'Product', 'regular', 'product-filter', '', 0, 'Product Filter', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 86),
(89, 85, 256, 1504878176, 'Cumulative', 'regular', 'cumulative-filter', '', 0, 'Cumulative Filter', '', 'index,follow', '', 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 87),
(90, 31, 320, 1566563717, 'Favoriten', 'regular', 'favoriten', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(91, 32, 320, 1566563752, 'Favourites', 'regular', 'favourites', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '1', 0x613a313a7b693a303b733a313a2231223b7d, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 90),
(92, 84, 384, 1566484959, 'Kategorie', 'regular', 'kategorie', '', 0, 'Kategorie-Filter', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(93, 85, 384, 1566550760, 'Category', 'regular', 'category', '', 0, 'Category Filter', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 1, 3, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 92),
(94, 7, 704, 1566565520, 'Leser', 'regular', 'leser', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 0),
(95, 8, 640, 1566565582, 'Reader', 'regular', 'reader', '', 0, '', '', 'index,follow', NULL, 'permanent', 0, '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '.html', '', '', '', NULL, '', 0, 0, '', 0, '', 0, '', 0, 0, 'a:9:{i:0;s:2:\"u1\";i:1;s:2:\"u2\";i:2;s:2:\"u3\";i:3;s:2:\"u4\";i:4;s:2:\"u5\";i:5;s:2:\"u6\";i:6;s:2:\"g4\";i:7;s:2:\"g5\";i:8;s:2:\"g6\";}', '', '', 'map_default', '1', '', 0, '', '1', '', '', '', 0, 0, 'current', 0, 0, '', 0, 94);

-- --------------------------------------------------------

--
-- Table structure for table `tl_preview_link`
--

CREATE TABLE `tl_preview_link` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(2048) NOT NULL DEFAULT '',
  `showUnpublished` char(1) NOT NULL DEFAULT '',
  `restrictToUrl` char(1) NOT NULL DEFAULT '1',
  `createdAt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expiresAt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` char(1) NOT NULL DEFAULT '',
  `createdBy` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_remember_me`
--

CREATE TABLE `tl_remember_me` (
  `id` int(10) UNSIGNED NOT NULL,
  `series` binary(32) NOT NULL COMMENT '(DC2Type:binary_string)',
  `value` binary(64) NOT NULL COMMENT '(DC2Type:binary_string)',
  `lastUsed` datetime NOT NULL,
  `expires` datetime DEFAULT NULL,
  `class` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_search`
--

CREATE TABLE `tl_search` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `url` varchar(2048) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `text` mediumtext DEFAULT NULL,
  `filesize` double NOT NULL DEFAULT 0,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `protected` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `language` varchar(5) NOT NULL DEFAULT '',
  `vectorLength` double NOT NULL DEFAULT 0,
  `meta` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_search`
--

INSERT INTO `tl_search` (`id`, `pid`, `tstamp`, `title`, `url`, `text`, `filesize`, `checksum`, `protected`, `groups`, `language`, `vectorLength`, `meta`) VALUES
(1, 3, 1696385598, 'Startseite', 'https://isotopedemo.loc/de/', 'Isotope eCommerce Isotope eCommerce ist eine eCommerce-Lösung für Contao CMS. Weil jeder Webshop einzigartig ist, wurde Isotope mit Prioriät auf Flexibilität gebaut, so dass du alles auf deine individuellen Wünsche anpassen kannst. Unsere neusten Produkte Stein 111111 CHF 59.00 Details sehen 3042 Outer space Staf­fel­preis mit Varianten Ab CHF 12.00 Details sehen Unsere Angebote Mogwai - EP & 6 658034 CD CHF 21.90 Details sehen Genesis - Nursery Cryme 759751 CD CHF 31.90 Details sehen 2009 Frankfurt T-Shirt Ab CHF 16.80 Details sehen 2008 Würzburg T-Shirt Ab CHF 16.80 Details sehen Benutzerkonten Kevin Jones Benutzernamen: k.jones Kennwort: kevinjones Funktion: Backend-User und Administrator Zum Backend-Login Helen Lewis Benutzernamen: h.lewis Kennwort: helenlewis Funktion: Backend-Userin Zum Backend-Login James Wilson Benutzernamen: j.wilson Kennwort: jameswilson Funktion: Backend-User Zum Backend-Login John Smith Benutzernamen: j.smith Kennwort: johnsmith Funktion: Frontend-User Donna Evans Benutzernamen: d.evans Kennwort: donnaevans Funktion: Frontend-Userin Login \nStartseite\n Details sehen, , 3042 Outer space, Mogwai - EP & 6, Genesis - Nursery Cryme, 2009 Frankfurt, 2008 Würzburg', 21.36, '2f750c06ab608031c4e61040ea96de7a', '', 0x613a303a7b7d, 'de', 16.169015431191607, '[{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/WebPage\"},{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/BreadcrumbList\",\"https:\\/\\/schema.org\\/itemListElement\":[{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/\",\"name\":\"Isotope eCommerce Demo :: DE\"},\"position\":1},{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/\",\"name\":\"Startseite\"},\"position\":2}]},{\"@context\":\"https:\\/\\/schema.contao.org\\/\",\"@type\":\"https:\\/\\/schema.contao.org\\/Page\",\"https:\\/\\/schema.contao.org\\/fePreview\":false,\"https:\\/\\/schema.contao.org\\/groups\":[],\"https:\\/\\/schema.contao.org\\/noSearch\":false,\"https:\\/\\/schema.contao.org\\/pageId\":3,\"https:\\/\\/schema.contao.org\\/protected\":false,\"https:\\/\\/schema.contao.org\\/title\":\"Startseite\"}]'),
(2, 5, 1696385604, 'Angebote', 'https://isotopedemo.loc/de/angebote.html', 'Unsere Angebote Mogwai - EP & 6 658034 CD CHF 21.90 Details sehen Genesis - Nursery Cryme 759751 CD CHF 31.90 Details sehen 2009 Frankfurt T-Shirt Ab CHF 16.80 Details sehen 2008 Würzburg T-Shirt Ab CHF 16.80 Details sehen Warenkorb \nAngebote\n Details sehen, , Mogwai - EP & 6, Genesis - Nursery Cryme, 2009 Frankfurt, 2008 Würzburg', 16.68, 'fa73ba6845fca27e0dc6f6134ed45fff', '', 0x613a303a7b7d, 'de', 3.9824642931139707, '[{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/WebPage\"},{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/BreadcrumbList\",\"https:\\/\\/schema.org\\/itemListElement\":[{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/\",\"name\":\"Isotope eCommerce Demo :: DE\"},\"position\":1},{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/angebote.html\",\"name\":\"Angebote\"},\"position\":2}]},{\"@context\":\"https:\\/\\/schema.contao.org\\/\",\"@type\":\"https:\\/\\/schema.contao.org\\/Page\",\"https:\\/\\/schema.contao.org\\/fePreview\":false,\"https:\\/\\/schema.contao.org\\/groups\":[],\"https:\\/\\/schema.contao.org\\/noSearch\":false,\"https:\\/\\/schema.contao.org\\/pageId\":5,\"https:\\/\\/schema.contao.org\\/protected\":false,\"https:\\/\\/schema.contao.org\\/title\":\"Angebote\"}]'),
(3, 7, 1696385605, 'Shop', 'https://isotopedemo.loc/de/shop.html', 'Shop 2008 Würzburg T-Shirt Ab CHF 16.80 Details sehen 2009 Frankfurt T-Shirt Ab CHF 16.80 Details sehen 2010 Essen T-Shirt Ab CHF 21.00 Details sehen 2011 Bad Soden T-Shirt Ab CHF 21.00 Details sehen 2012 Bad Soden T-Shirt Ab CHF 21.00 Details sehen 2013 Halle T-Shirt Ab CHF 21.00 Details sehen 2011 Essen T-Shirt Ab CHF 12.00 Details sehen 2012 Essen T-Shirt Ab CHF 12.00 Details sehen 2013 München T-Shirt Ab CHF 12.00 Details sehen Mark Lanegan - Field Songs 256089 CD CHF 31.90 Details sehen Warenkorb \nShop\n Details sehen, 2008 Würzburg, 2009 Frankfurt, 2010 Essen, 2011 Bad Soden, 2012 Bad Soden, 2013 Halle, 2011 Essen, , 2012 Essen, 2013 München, Mark Lanegan - Field Songs', 25.96, '9c5d45f530d7630ff441671b6c1dd579', '', 0x613a303a7b7d, 'de', 11.659179662655358, '[{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/WebPage\"},{\"@context\":\"https:\\/\\/schema.org\\/\",\"@type\":\"https:\\/\\/schema.org\\/BreadcrumbList\",\"https:\\/\\/schema.org\\/itemListElement\":[{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/\",\"name\":\"Isotope eCommerce Demo :: DE\"},\"position\":1},{\"@type\":\"ListItem\",\"item\":{\"@id\":\"de\\/shop.html\",\"name\":\"Shop\"},\"position\":2}]},{\"@context\":\"https:\\/\\/schema.contao.org\\/\",\"@type\":\"https:\\/\\/schema.contao.org\\/Page\",\"https:\\/\\/schema.contao.org\\/fePreview\":false,\"https:\\/\\/schema.contao.org\\/groups\":[],\"https:\\/\\/schema.contao.org\\/noSearch\":false,\"https:\\/\\/schema.contao.org\\/pageId\":7,\"https:\\/\\/schema.contao.org\\/protected\":false,\"https:\\/\\/schema.contao.org\\/title\":\"Shop\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `tl_search_index`
--

CREATE TABLE `tl_search_index` (
  `pid` int(10) UNSIGNED NOT NULL,
  `termId` int(10) UNSIGNED NOT NULL,
  `relevance` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_search_index`
--

INSERT INTO `tl_search_index` (`pid`, `termId`, `relevance`) VALUES
(1, 1, 3),
(1, 2, 3),
(1, 3, 2),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 8, 1),
(1, 9, 1),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 2),
(1, 15, 1),
(1, 16, 2),
(1, 17, 1),
(1, 18, 1),
(1, 19, 1),
(1, 20, 1),
(1, 21, 1),
(1, 22, 1),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(1, 26, 1),
(1, 27, 1),
(1, 28, 2),
(2, 28, 1),
(1, 29, 1),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 6),
(2, 33, 4),
(3, 33, 10),
(1, 34, 1),
(1, 35, 7),
(2, 35, 5),
(3, 35, 11),
(1, 36, 7),
(2, 36, 5),
(3, 36, 11),
(1, 37, 2),
(1, 38, 2),
(1, 39, 2),
(1, 40, 1),
(1, 41, 1),
(1, 42, 3),
(2, 42, 2),
(3, 42, 9),
(1, 43, 1),
(3, 43, 3),
(1, 44, 1),
(2, 44, 2),
(1, 45, 2),
(2, 45, 2),
(1, 46, 2),
(2, 46, 2),
(1, 47, 2),
(2, 47, 2),
(1, 48, 1),
(2, 48, 1),
(1, 49, 2),
(2, 49, 2),
(3, 49, 1),
(1, 50, 1),
(2, 50, 1),
(1, 51, 2),
(2, 51, 2),
(1, 52, 2),
(2, 52, 2),
(1, 53, 2),
(2, 53, 2),
(1, 54, 1),
(2, 54, 1),
(1, 55, 1),
(2, 55, 1),
(3, 55, 1),
(1, 56, 2),
(2, 56, 2),
(3, 56, 2),
(1, 57, 2),
(2, 57, 2),
(3, 57, 2),
(1, 58, 2),
(2, 58, 2),
(3, 58, 9),
(1, 59, 2),
(2, 59, 2),
(3, 59, 9),
(1, 60, 2),
(2, 60, 2),
(3, 60, 2),
(1, 61, 2),
(2, 61, 2),
(3, 61, 2),
(1, 62, 2),
(2, 62, 2),
(3, 62, 2),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 5),
(1, 67, 1),
(1, 68, 5),
(1, 69, 1),
(1, 70, 5),
(1, 71, 6),
(1, 72, 3),
(1, 73, 1),
(1, 74, 1),
(1, 75, 3),
(1, 76, 4),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 2),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 2),
(1, 91, 1),
(1, 92, 1),
(1, 93, 1),
(1, 94, 1),
(1, 95, 1),
(2, 96, 1),
(3, 96, 1),
(3, 121, 2),
(3, 122, 2),
(3, 123, 6),
(3, 124, 4),
(3, 125, 4),
(3, 126, 4),
(3, 127, 4),
(3, 128, 4),
(3, 129, 4),
(3, 130, 2),
(3, 131, 2),
(3, 132, 2),
(3, 133, 2),
(3, 134, 2),
(3, 135, 2),
(3, 136, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_search_term`
--

CREATE TABLE `tl_search_term` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `documentFrequency` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_search_term`
--

INSERT INTO `tl_search_term` (`id`, `term`, `documentFrequency`) VALUES
(1, 'isotope', 1),
(2, 'ecommerce', 1),
(3, 'ist', 1),
(4, 'eine', 1),
(5, 'losung', 1),
(6, 'fur', 1),
(7, 'contao', 1),
(8, 'cms', 1),
(9, 'weil', 1),
(10, 'jeder', 1),
(11, 'webshop', 1),
(12, 'einzigartig', 1),
(13, 'wurde', 1),
(14, 'mit', 1),
(15, 'prioriat', 1),
(16, 'auf', 1),
(17, 'flexibilitat', 1),
(18, 'gebaut', 1),
(19, 'so', 1),
(20, 'dass', 1),
(21, 'du', 1),
(22, 'alles', 1),
(23, 'deine', 1),
(24, 'individuellen', 1),
(25, 'wunsche', 1),
(26, 'anpassen', 1),
(27, 'kannst', 1),
(28, 'unsere', 2),
(29, 'neusten', 1),
(30, 'produkte', 1),
(31, 'stein', 1),
(32, '111111', 1),
(33, 'chf', 3),
(34, '59.00', 1),
(35, 'details', 3),
(36, 'sehen', 3),
(37, '3042', 1),
(38, 'outer', 1),
(39, 'space', 1),
(40, 'staf-fel-preis', 1),
(41, 'varianten', 1),
(42, 'ab', 3),
(43, '12.00', 2),
(44, 'angebote', 2),
(45, 'mogwai', 2),
(46, 'ep', 2),
(47, '6', 2),
(48, '658034', 2),
(49, 'cd', 3),
(50, '21.90', 2),
(51, 'genesis', 2),
(52, 'nursery', 2),
(53, 'cryme', 2),
(54, '759751', 2),
(55, '31.90', 3),
(56, '2009', 3),
(57, 'frankfurt', 3),
(58, 't', 3),
(59, 'shirt', 3),
(60, '16.80', 3),
(61, '2008', 3),
(62, 'wurzburg', 3),
(63, 'benutzerkonten', 1),
(64, 'kevin', 1),
(65, 'jones', 1),
(66, 'benutzernamen', 1),
(67, 'k.jones', 1),
(68, 'kennwort', 1),
(69, 'kevinjones', 1),
(70, 'funktion', 1),
(71, 'backend', 1),
(72, 'user', 1),
(73, 'und', 1),
(74, 'administrator', 1),
(75, 'zum', 1),
(76, 'login', 1),
(77, 'helen', 1),
(78, 'lewis', 1),
(79, 'h.lewis', 1),
(80, 'helenlewis', 1),
(81, 'userin', 1),
(82, 'james', 1),
(83, 'wilson', 1),
(84, 'j.wilson', 1),
(85, 'jameswilson', 1),
(86, 'john', 1),
(87, 'smith', 1),
(88, 'j.smith', 1),
(89, 'johnsmith', 1),
(90, 'frontend', 1),
(91, 'donna', 1),
(92, 'evans', 1),
(93, 'd.evans', 1),
(94, 'donnaevans', 1),
(95, 'startseite', 1),
(96, 'warenkorb', 2),
(121, 'shop', 1),
(122, '2010', 1),
(123, 'essen', 1),
(124, '21.00', 1),
(125, '2011', 1),
(126, 'bad', 1),
(127, 'soden', 1),
(128, '2012', 1),
(129, '2013', 1),
(130, 'halle', 1),
(131, 'munchen', 1),
(132, 'mark', 1),
(133, 'lanegan', 1),
(134, 'field', 1),
(135, 'songs', 1),
(136, '256089', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tl_style`
--

CREATE TABLE `tl_style` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sorting` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selector` varchar(1022) NOT NULL DEFAULT '',
  `category` varchar(32) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `size` char(1) NOT NULL DEFAULT '',
  `width` varchar(64) NOT NULL DEFAULT '',
  `height` varchar(64) NOT NULL DEFAULT '',
  `minwidth` varchar(64) NOT NULL DEFAULT '',
  `minheight` varchar(64) NOT NULL DEFAULT '',
  `maxwidth` varchar(64) NOT NULL DEFAULT '',
  `maxheight` varchar(64) NOT NULL DEFAULT '',
  `positioning` char(1) NOT NULL DEFAULT '',
  `trbl` varchar(128) NOT NULL DEFAULT '',
  `position` varchar(32) NOT NULL DEFAULT '',
  `floating` varchar(32) NOT NULL DEFAULT '',
  `clear` varchar(32) NOT NULL DEFAULT '',
  `overflow` varchar(32) NOT NULL DEFAULT '',
  `display` varchar(32) NOT NULL DEFAULT '',
  `alignment` char(1) NOT NULL DEFAULT '',
  `margin` varchar(128) NOT NULL DEFAULT '',
  `padding` varchar(128) NOT NULL DEFAULT '',
  `align` varchar(32) NOT NULL DEFAULT '',
  `verticalalign` varchar(32) NOT NULL DEFAULT '',
  `textalign` varchar(32) NOT NULL DEFAULT '',
  `whitespace` varchar(8) NOT NULL DEFAULT '',
  `background` char(1) NOT NULL DEFAULT '',
  `bgcolor` varchar(64) NOT NULL DEFAULT '',
  `bgimage` varchar(255) NOT NULL DEFAULT '',
  `bgposition` varchar(32) NOT NULL DEFAULT '',
  `bgrepeat` varchar(32) NOT NULL DEFAULT '',
  `shadowsize` varchar(128) NOT NULL DEFAULT '',
  `shadowcolor` varchar(64) NOT NULL DEFAULT '',
  `gradientAngle` varchar(32) NOT NULL DEFAULT '',
  `gradientColors` varchar(128) NOT NULL DEFAULT '',
  `border` char(1) NOT NULL DEFAULT '',
  `borderwidth` varchar(128) NOT NULL DEFAULT '',
  `borderstyle` varchar(32) NOT NULL DEFAULT '',
  `bordercolor` varchar(64) NOT NULL DEFAULT '',
  `borderradius` varchar(128) NOT NULL DEFAULT '',
  `bordercollapse` varchar(32) NOT NULL DEFAULT '',
  `borderspacing` varchar(64) NOT NULL DEFAULT '',
  `font` char(1) NOT NULL DEFAULT '',
  `fontfamily` varchar(255) NOT NULL DEFAULT '',
  `fontsize` varchar(64) NOT NULL DEFAULT '',
  `fontcolor` varchar(64) NOT NULL DEFAULT '',
  `lineheight` varchar(64) NOT NULL DEFAULT '',
  `fontstyle` varchar(255) NOT NULL DEFAULT '',
  `texttransform` varchar(32) NOT NULL DEFAULT '',
  `textindent` varchar(64) NOT NULL DEFAULT '',
  `letterspacing` varchar(64) NOT NULL DEFAULT '',
  `wordspacing` varchar(64) NOT NULL DEFAULT '',
  `list` char(1) NOT NULL DEFAULT '',
  `liststyletype` varchar(32) NOT NULL DEFAULT '',
  `liststyleimage` varchar(255) NOT NULL DEFAULT '',
  `own` text DEFAULT NULL,
  `invisible` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_style_sheet`
--

CREATE TABLE `tl_style_sheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(64) DEFAULT NULL,
  `embedImages` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cc` varchar(32) NOT NULL DEFAULT '',
  `media` varchar(255) NOT NULL DEFAULT 'a:1:{i:0;s:3:"all";}',
  `mediaQuery` text DEFAULT NULL,
  `vars` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_theme`
--

CREATE TABLE `tl_theme` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `author` varchar(128) NOT NULL DEFAULT '',
  `folders` blob DEFAULT NULL,
  `screenshot` binary(16) DEFAULT NULL,
  `templates` varchar(255) NOT NULL DEFAULT '',
  `vars` text DEFAULT NULL,
  `easy_themes_internalTitle` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_theme`
--

INSERT INTO `tl_theme` (`id`, `tstamp`, `name`, `author`, `folders`, `screenshot`, `templates`, `vars`, `easy_themes_internalTitle`) VALUES
(1, 1565625123, 'Isotope eCommerce Demo :: DE', 'netzarbeiter', 0x613a313a7b693a303b733a31363a229a9b2122611811e39eabbc305b35679a223b7d, 0xdd28a846bcd611e98271e277adfcea9e, 'templates/isotope-demo', 'a:0:{}', 'Isotope Demo :: DE'),
(2, 1565625131, 'Isotope eCommerce Demo :: EN', 'netzarbeiter', 0x613a313a7b693a303b733a31363a229a9b2122611811e39eabbc305b35679a223b7d, 0xdd28a846bcd611e98271e277adfcea9e, 'templates/isotope-demo', 'a:0:{}', 'Isotope Demo :: EN');

-- --------------------------------------------------------

--
-- Table structure for table `tl_trusted_device`
--

CREATE TABLE `tl_trusted_device` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `userClass` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `user_agent` longtext DEFAULT NULL,
  `ua_family` varchar(255) DEFAULT NULL,
  `os_family` varchar(255) DEFAULT NULL,
  `device_family` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_undo`
--

CREATE TABLE `tl_undo` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `query` text DEFAULT NULL,
  `affectedRows` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumblob DEFAULT NULL,
  `preview` mediumblob DEFAULT NULL,
  `haste_data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_user`
--

CREATE TABLE `tl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(64) NOT NULL DEFAULT '',
  `backendTheme` varchar(32) NOT NULL DEFAULT '',
  `fullscreen` char(1) NOT NULL DEFAULT '',
  `uploader` varchar(32) NOT NULL DEFAULT '',
  `showHelp` char(1) NOT NULL DEFAULT '1',
  `thumbnails` char(1) NOT NULL DEFAULT '1',
  `useRTE` char(1) NOT NULL DEFAULT '1',
  `useCE` char(1) NOT NULL DEFAULT '1',
  `password` varchar(255) NOT NULL DEFAULT '',
  `pwChange` char(1) NOT NULL DEFAULT '',
  `admin` char(1) NOT NULL DEFAULT '',
  `groups` blob DEFAULT NULL,
  `inherit` varchar(12) NOT NULL DEFAULT 'group',
  `modules` blob DEFAULT NULL,
  `themes` blob DEFAULT NULL,
  `elements` blob DEFAULT NULL,
  `fields` blob DEFAULT NULL,
  `pagemounts` blob DEFAULT NULL,
  `alpty` blob DEFAULT NULL,
  `filemounts` blob DEFAULT NULL,
  `fop` blob DEFAULT NULL,
  `imageSizes` blob DEFAULT NULL,
  `forms` blob DEFAULT NULL,
  `formp` blob DEFAULT NULL,
  `amg` blob DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `session` blob DEFAULT NULL,
  `dateAdded` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `secret` binary(128) DEFAULT NULL,
  `useTwoFactor` char(1) NOT NULL DEFAULT '',
  `lastLogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `currentLogin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `loginAttempts` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `locked` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `backupCodes` text DEFAULT NULL,
  `trustedTokenVersion` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `faqs` blob DEFAULT NULL,
  `faqp` blob DEFAULT NULL,
  `news` blob DEFAULT NULL,
  `newp` blob DEFAULT NULL,
  `newsfeeds` blob DEFAULT NULL,
  `newsfeedp` blob DEFAULT NULL,
  `calendars` blob DEFAULT NULL,
  `calendarp` blob DEFAULT NULL,
  `calendarfeeds` blob DEFAULT NULL,
  `calendarfeedp` blob DEFAULT NULL,
  `newsletters` blob DEFAULT NULL,
  `newsletterp` blob DEFAULT NULL,
  `iso_reports` blob DEFAULT NULL,
  `iso_member_groups` blob DEFAULT NULL,
  `iso_groupp` blob DEFAULT NULL,
  `iso_groups` blob DEFAULT NULL,
  `iso_configp` blob DEFAULT NULL,
  `iso_configs` blob DEFAULT NULL,
  `iso_tax_ratep` blob DEFAULT NULL,
  `iso_tax_rates` blob DEFAULT NULL,
  `iso_tax_classp` blob DEFAULT NULL,
  `iso_tax_classes` blob DEFAULT NULL,
  `iso_shipping_modulep` blob DEFAULT NULL,
  `iso_shipping_modules` blob DEFAULT NULL,
  `iso_payment_modulep` blob DEFAULT NULL,
  `iso_payment_modules` blob DEFAULT NULL,
  `iso_product_typep` blob DEFAULT NULL,
  `iso_product_types` blob DEFAULT NULL,
  `iso_modules` blob DEFAULT NULL,
  `pageLanguageLabels` text DEFAULT NULL,
  `et_bemodRef` varchar(32) NOT NULL DEFAULT '',
  `et_mode` varchar(32) NOT NULL DEFAULT 'contextmenu',
  `et_activeModules` blob DEFAULT NULL,
  `et_enable` char(1) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tl_user`
--

INSERT INTO `tl_user` (`id`, `tstamp`, `username`, `name`, `email`, `language`, `backendTheme`, `fullscreen`, `uploader`, `showHelp`, `thumbnails`, `useRTE`, `useCE`, `password`, `pwChange`, `admin`, `groups`, `inherit`, `modules`, `themes`, `elements`, `fields`, `pagemounts`, `alpty`, `filemounts`, `fop`, `imageSizes`, `forms`, `formp`, `amg`, `disable`, `start`, `stop`, `session`, `dateAdded`, `secret`, `useTwoFactor`, `lastLogin`, `currentLogin`, `loginAttempts`, `locked`, `backupCodes`, `trustedTokenVersion`, `faqs`, `faqp`, `news`, `newp`, `newsfeeds`, `newsfeedp`, `calendars`, `calendarp`, `calendarfeeds`, `calendarfeedp`, `newsletters`, `newsletterp`, `iso_reports`, `iso_member_groups`, `iso_groupp`, `iso_groups`, `iso_configp`, `iso_configs`, `iso_tax_ratep`, `iso_tax_rates`, `iso_tax_classp`, `iso_tax_classes`, `iso_shipping_modulep`, `iso_shipping_modules`, `iso_payment_modulep`, `iso_payment_modules`, `iso_product_typep`, `iso_product_types`, `iso_modules`, `pageLanguageLabels`, `et_bemodRef`, `et_mode`, `et_activeModules`, `et_enable`) VALUES
(1, 1696385012, 'test@test.de', 'test@test.de', 'test@test.de', 'de', 'flexible', '', '', '1', '1', '1', '1', '$2y$13$gIWsP1MDellHCVlGKdTYOuwIiClvv/TfBgaoVUWbEhMcrEdVkL3BS', '', '1', NULL, 'group', 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, '', '', '', 0x613a303a7b7d, 1696385012, NULL, '', 0, 1696385243, 0, 0, NULL, 0, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, 0x613a303a7b7d, NULL, '', 'contextmenu', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tl_user_group`
--

CREATE TABLE `tl_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `modules` blob DEFAULT NULL,
  `themes` blob DEFAULT NULL,
  `elements` blob DEFAULT NULL,
  `fields` blob DEFAULT NULL,
  `pagemounts` blob DEFAULT NULL,
  `alpty` blob DEFAULT NULL,
  `filemounts` blob DEFAULT NULL,
  `fop` blob DEFAULT NULL,
  `imageSizes` blob DEFAULT NULL,
  `forms` blob DEFAULT NULL,
  `formp` blob DEFAULT NULL,
  `amg` blob DEFAULT NULL,
  `alexf` blob DEFAULT NULL,
  `disable` char(1) NOT NULL DEFAULT '',
  `start` varchar(10) NOT NULL DEFAULT '',
  `stop` varchar(10) NOT NULL DEFAULT '',
  `faqs` blob DEFAULT NULL,
  `faqp` blob DEFAULT NULL,
  `news` blob DEFAULT NULL,
  `newp` blob DEFAULT NULL,
  `newsfeeds` blob DEFAULT NULL,
  `newsfeedp` blob DEFAULT NULL,
  `calendars` blob DEFAULT NULL,
  `calendarp` blob DEFAULT NULL,
  `calendarfeeds` blob DEFAULT NULL,
  `calendarfeedp` blob DEFAULT NULL,
  `newsletters` blob DEFAULT NULL,
  `newsletterp` blob DEFAULT NULL,
  `iso_reports` blob DEFAULT NULL,
  `iso_member_groups` blob DEFAULT NULL,
  `iso_groupp` blob DEFAULT NULL,
  `iso_groups` blob DEFAULT NULL,
  `iso_configp` blob DEFAULT NULL,
  `iso_configs` blob DEFAULT NULL,
  `iso_tax_ratep` blob DEFAULT NULL,
  `iso_tax_rates` blob DEFAULT NULL,
  `iso_tax_classp` blob DEFAULT NULL,
  `iso_tax_classes` blob DEFAULT NULL,
  `iso_shipping_modulep` blob DEFAULT NULL,
  `iso_shipping_modules` blob DEFAULT NULL,
  `iso_payment_modulep` blob DEFAULT NULL,
  `iso_payment_modules` blob DEFAULT NULL,
  `iso_product_typep` blob DEFAULT NULL,
  `iso_product_types` blob DEFAULT NULL,
  `iso_modules` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tl_version`
--

CREATE TABLE `tl_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tstamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `fromTable` varchar(255) NOT NULL DEFAULT '',
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(64) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `editUrl` text DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT '',
  `data` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tl_article`
--
ALTER TABLE `tl_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_published_incolumn_start_stop` (`pid`,`published`,`inColumn`,`start`,`stop`);

--
-- Indexes for table `tl_calendar`
--
ALTER TABLE `tl_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_published_featured_start_stop` (`pid`,`published`,`featured`,`start`,`stop`);

--
-- Indexes for table `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_comments`
--
ALTER TABLE `tl_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `source_parent_published` (`source`,`parent`,`published`);

--
-- Indexes for table `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source_parent_active_email` (`source`,`parent`,`active`,`email`),
  ADD KEY `tokenremove` (`tokenRemove`);

--
-- Indexes for table `tl_content`
--
ALTER TABLE `tl_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_ptable_invisible_start_stop` (`pid`,`ptable`,`invisible`,`start`,`stop`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tl_crawl_queue`
--
ALTER TABLE `tl_crawl_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `uri_hash` (`uri_hash`),
  ADD KEY `processed` (`processed`);

--
-- Indexes for table `tl_cron_job`
--
ALTER TABLE `tl_cron_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tl_faq`
--
ALTER TABLE `tl_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_published` (`pid`,`published`);

--
-- Indexes for table `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_files`
--
ALTER TABLE `tl_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `path` (`path`(768)),
  ADD KEY `extension` (`extension`);

--
-- Indexes for table `tl_form`
--
ALTER TABLE `tl_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_form_field`
--
ALTER TABLE `tl_form_field`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_invisible` (`pid`,`invisible`);

--
-- Indexes for table `tl_image_size`
--
ALTER TABLE `tl_image_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_address`
--
ALTER TABLE `tl_iso_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_store_id` (`pid`,`store_id`);

--
-- Indexes for table `tl_iso_attribute`
--
ALTER TABLE `tl_iso_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tl_iso_attribute_option`
--
ALTER TABLE `tl_iso_attribute_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ptable_pid` (`ptable`,`pid`);

--
-- Indexes for table `tl_iso_baseprice`
--
ALTER TABLE `tl_iso_baseprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_config`
--
ALTER TABLE `tl_iso_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_document`
--
ALTER TABLE `tl_iso_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_download`
--
ALTER TABLE `tl_iso_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_gallery`
--
ALTER TABLE `tl_iso_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_group`
--
ALTER TABLE `tl_iso_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_label`
--
ALTER TABLE `tl_iso_label`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `tl_iso_orderstatus`
--
ALTER TABLE `tl_iso_orderstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `paid` (`paid`);

--
-- Indexes for table `tl_iso_payment`
--
ALTER TABLE `tl_iso_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_product`
--
ALTER TABLE `tl_iso_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gid` (`gid`),
  ADD KEY `pid_language` (`pid`,`language`),
  ADD KEY `language_fallback` (`language`,`fallback`),
  ADD KEY `language_published_start_stop_pid` (`language`,`published`,`start`,`stop`,`pid`),
  ADD KEY `start` (`start`),
  ADD KEY `sku` (`sku`),
  ADD KEY `gtin` (`gtin`),
  ADD KEY `colour` (`colour`),
  ADD KEY `size` (`size`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `tl_iso_productcache`
--
ALTER TABLE `tl_iso_productcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uniqid_requestcache_id_keywords_expires` (`uniqid`,`requestcache_id`,`keywords`,`expires`),
  ADD KEY `page_id_module_id_requestcache_id_keywords_expires` (`page_id`,`module_id`,`requestcache_id`,`keywords`,`expires`);

--
-- Indexes for table `tl_iso_producttype`
--
ALTER TABLE `tl_iso_producttype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants` (`variants`);

--
-- Indexes for table `tl_iso_product_category`
--
ALTER TABLE `tl_iso_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `tl_iso_product_collection`
--
ALTER TABLE `tl_iso_product_collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniqid` (`uniqid`),
  ADD KEY `member_store_id_type` (`member`,`store_id`,`type`),
  ADD KEY `uniqid_store_id_type` (`uniqid`,`store_id`,`type`),
  ADD KEY `source_collection_id_type` (`source_collection_id`,`type`);

--
-- Indexes for table `tl_iso_product_collection_download`
--
ALTER TABLE `tl_iso_product_collection_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_product_collection_item`
--
ALTER TABLE `tl_iso_product_collection_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tl_iso_product_collection_log`
--
ALTER TABLE `tl_iso_product_collection_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_product_collection_surcharge`
--
ALTER TABLE `tl_iso_product_collection_surcharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_product_price`
--
ALTER TABLE `tl_iso_product_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `config_id_member_group_start_stop_pid` (`config_id`,`member_group`,`start`,`stop`,`pid`);

--
-- Indexes for table `tl_iso_product_pricetier`
--
ALTER TABLE `tl_iso_product_pricetier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_related_category`
--
ALTER TABLE `tl_iso_related_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_related_product`
--
ALTER TABLE `tl_iso_related_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_requestcache`
--
ALTER TABLE `tl_iso_requestcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store_id` (`id`,`store_id`);

--
-- Indexes for table `tl_iso_rule`
--
ALTER TABLE `tl_iso_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_rule_restriction`
--
ALTER TABLE `tl_iso_rule_restriction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid_type` (`pid`,`type`),
  ADD KEY `type_object_id_pid` (`type`,`object_id`,`pid`);

--
-- Indexes for table `tl_iso_rule_usage`
--
ALTER TABLE `tl_iso_rule_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_iso_shipping`
--
ALTER TABLE `tl_iso_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_tax_class`
--
ALTER TABLE `tl_iso_tax_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_iso_tax_rate`
--
ALTER TABLE `tl_iso_tax_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_layout`
--
ALTER TABLE `tl_layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_log`
--
ALTER TABLE `tl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_member`
--
ALTER TABLE `tl_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `login_disable_start_stop` (`login`,`disable`,`start`,`stop`);

--
-- Indexes for table `tl_member_group`
--
ALTER TABLE `tl_member_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disable_start_stop` (`disable`,`start`,`stop`);

--
-- Indexes for table `tl_module`
--
ALTER TABLE `tl_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_nc_gateway`
--
ALTER TABLE `tl_nc_gateway`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_croninterval` (`queue_cronInterval`);

--
-- Indexes for table `tl_nc_language`
--
ALTER TABLE `tl_nc_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `language` (`language`);

--
-- Indexes for table `tl_nc_message`
--
ALTER TABLE `tl_nc_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_nc_notification`
--
ALTER TABLE `tl_nc_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_nc_queue`
--
ALTER TABLE `tl_nc_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message` (`message`),
  ADD KEY `sourcequeue` (`sourceQueue`),
  ADD KEY `targetgateway` (`targetGateway`);

--
-- Indexes for table `tl_news`
--
ALTER TABLE `tl_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `pid_published_featured_start_stop` (`pid`,`published`,`featured`,`start`,`stop`);

--
-- Indexes for table `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_newsletter_deny_list`
--
ALTER TABLE `tl_newsletter_deny_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_hash` (`pid`,`hash`);

--
-- Indexes for table `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_email` (`pid`,`email`),
  ADD KEY `email` (`email`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tl_opt_in`
--
ALTER TABLE `tl_opt_in`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `removeon` (`removeOn`);

--
-- Indexes for table `tl_opt_in_related`
--
ALTER TABLE `tl_opt_in_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reltable_relid` (`relTable`,`relId`);

--
-- Indexes for table `tl_page`
--
ALTER TABLE `tl_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `type_dns` (`type`,`dns`),
  ADD KEY `pid_published_type_start_stop` (`pid`,`published`,`type`,`start`,`stop`),
  ADD KEY `languagemain` (`languageMain`);

--
-- Indexes for table `tl_preview_link`
--
ALTER TABLE `tl_preview_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_published_expiresat` (`id`,`published`,`expiresAt`);

--
-- Indexes for table `tl_remember_me`
--
ALTER TABLE `tl_remember_me`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value` (`value`),
  ADD KEY `series` (`series`);

--
-- Indexes for table `tl_search`
--
ALTER TABLE `tl_search`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`),
  ADD UNIQUE KEY `checksum_pid` (`checksum`,`pid`);

--
-- Indexes for table `tl_search_index`
--
ALTER TABLE `tl_search_index`
  ADD PRIMARY KEY (`termId`,`pid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_search_term`
--
ALTER TABLE `tl_search_term`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `term` (`term`),
  ADD KEY `documentfrequency` (`documentFrequency`);

--
-- Indexes for table `tl_style`
--
ALTER TABLE `tl_style`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tl_theme`
--
ALTER TABLE `tl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_trusted_device`
--
ALTER TABLE `tl_trusted_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_undo`
--
ALTER TABLE `tl_undo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_user`
--
ALTER TABLE `tl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tl_user_group`
--
ALTER TABLE `tl_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_version`
--
ALTER TABLE `tl_version`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pid_fromtable_version` (`pid`,`fromTable`,`version`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tl_article`
--
ALTER TABLE `tl_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tl_calendar`
--
ALTER TABLE `tl_calendar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_calendar_events`
--
ALTER TABLE `tl_calendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_calendar_feed`
--
ALTER TABLE `tl_calendar_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_comments`
--
ALTER TABLE `tl_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_comments_notify`
--
ALTER TABLE `tl_comments_notify`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_content`
--
ALTER TABLE `tl_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `tl_crawl_queue`
--
ALTER TABLE `tl_crawl_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_cron_job`
--
ALTER TABLE `tl_cron_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tl_faq`
--
ALTER TABLE `tl_faq`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_faq_category`
--
ALTER TABLE `tl_faq_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_files`
--
ALTER TABLE `tl_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tl_form`
--
ALTER TABLE `tl_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_form_field`
--
ALTER TABLE `tl_form_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_image_size`
--
ALTER TABLE `tl_image_size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_image_size_item`
--
ALTER TABLE `tl_image_size_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_iso_address`
--
ALTER TABLE `tl_iso_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tl_iso_attribute`
--
ALTER TABLE `tl_iso_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tl_iso_attribute_option`
--
ALTER TABLE `tl_iso_attribute_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tl_iso_baseprice`
--
ALTER TABLE `tl_iso_baseprice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_iso_config`
--
ALTER TABLE `tl_iso_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tl_iso_document`
--
ALTER TABLE `tl_iso_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_iso_download`
--
ALTER TABLE `tl_iso_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_iso_gallery`
--
ALTER TABLE `tl_iso_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tl_iso_group`
--
ALTER TABLE `tl_iso_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_iso_label`
--
ALTER TABLE `tl_iso_label`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tl_iso_orderstatus`
--
ALTER TABLE `tl_iso_orderstatus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tl_iso_payment`
--
ALTER TABLE `tl_iso_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_iso_product`
--
ALTER TABLE `tl_iso_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tl_iso_productcache`
--
ALTER TABLE `tl_iso_productcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_iso_producttype`
--
ALTER TABLE `tl_iso_producttype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tl_iso_product_category`
--
ALTER TABLE `tl_iso_product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tl_iso_product_collection`
--
ALTER TABLE `tl_iso_product_collection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `tl_iso_product_collection_download`
--
ALTER TABLE `tl_iso_product_collection_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tl_iso_product_collection_item`
--
ALTER TABLE `tl_iso_product_collection_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `tl_iso_product_collection_log`
--
ALTER TABLE `tl_iso_product_collection_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tl_iso_product_collection_surcharge`
--
ALTER TABLE `tl_iso_product_collection_surcharge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tl_iso_product_price`
--
ALTER TABLE `tl_iso_product_price`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tl_iso_product_pricetier`
--
ALTER TABLE `tl_iso_product_pricetier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tl_iso_related_category`
--
ALTER TABLE `tl_iso_related_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_iso_related_product`
--
ALTER TABLE `tl_iso_related_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tl_iso_requestcache`
--
ALTER TABLE `tl_iso_requestcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_iso_rule`
--
ALTER TABLE `tl_iso_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_iso_rule_restriction`
--
ALTER TABLE `tl_iso_rule_restriction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_iso_rule_usage`
--
ALTER TABLE `tl_iso_rule_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tl_iso_shipping`
--
ALTER TABLE `tl_iso_shipping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tl_iso_tax_class`
--
ALTER TABLE `tl_iso_tax_class`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_iso_tax_rate`
--
ALTER TABLE `tl_iso_tax_rate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tl_layout`
--
ALTER TABLE `tl_layout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_log`
--
ALTER TABLE `tl_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_member`
--
ALTER TABLE `tl_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_member_group`
--
ALTER TABLE `tl_member_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_module`
--
ALTER TABLE `tl_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tl_nc_gateway`
--
ALTER TABLE `tl_nc_gateway`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_nc_language`
--
ALTER TABLE `tl_nc_language`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_nc_message`
--
ALTER TABLE `tl_nc_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_nc_notification`
--
ALTER TABLE `tl_nc_notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tl_nc_queue`
--
ALTER TABLE `tl_nc_queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_news`
--
ALTER TABLE `tl_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_newsletter`
--
ALTER TABLE `tl_newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_newsletter_channel`
--
ALTER TABLE `tl_newsletter_channel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_newsletter_deny_list`
--
ALTER TABLE `tl_newsletter_deny_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_newsletter_recipients`
--
ALTER TABLE `tl_newsletter_recipients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_news_archive`
--
ALTER TABLE `tl_news_archive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_news_feed`
--
ALTER TABLE `tl_news_feed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_opt_in`
--
ALTER TABLE `tl_opt_in`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_opt_in_related`
--
ALTER TABLE `tl_opt_in_related`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_page`
--
ALTER TABLE `tl_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tl_preview_link`
--
ALTER TABLE `tl_preview_link`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_remember_me`
--
ALTER TABLE `tl_remember_me`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_search`
--
ALTER TABLE `tl_search`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tl_search_term`
--
ALTER TABLE `tl_search_term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `tl_style`
--
ALTER TABLE `tl_style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_style_sheet`
--
ALTER TABLE `tl_style_sheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_theme`
--
ALTER TABLE `tl_theme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tl_trusted_device`
--
ALTER TABLE `tl_trusted_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_undo`
--
ALTER TABLE `tl_undo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_user`
--
ALTER TABLE `tl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tl_user_group`
--
ALTER TABLE `tl_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tl_version`
--
ALTER TABLE `tl_version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
