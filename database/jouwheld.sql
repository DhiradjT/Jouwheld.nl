-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 apr 2024 om 15:07
-- Serverversie: 10.4.24-MariaDB
-- PHP-versie: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jouwheld`
--
CREATE DATABASE IF NOT EXISTS `jouwheld` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jouwheld`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `heroworld` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `heroworld`, `description`, `img`) VALUES
(1, 'Marvel', 'Marvel Comics is een Amerikaanse uitgever van comics – een Amerikaanse vorm van stripverhalen – gepubliceerd door Marvel Entertainment. Het bedrijf heeft als bijnaam The House of Ideas. Dit vanwege de vele strips en stripseries die het bedrijf uitbrengt.', 'scale.png'),
(2, 'DC', 'DC Comics is een van de grootste Amerikaanse uitgevers van comics en gerelateerde media. DC is verantwoordelijk voor strips over beroemde personages als Superman, Batman, Wonder Woman, Flash, Green Lantern, Aquaman, Green Arrow en hun teamgenoten in de Justice League of America.', 'dclegends.jpg'),
(3, 'Star Wars', 'Voor het Amerikaanse raketdefensieprogramma, zie Strategic Defense Initiative. Star Wars is een Amerikaanse epische space-opera-filmserie bedacht door George Lucas en ontwikkeld door zijn bedrijf Lucasfilm.', 'starwars.jpeg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240416090332', '2024-04-16 11:03:49', 141),
('DoctrineMigrations\\Version20240416091046', '2024-04-16 11:11:01', 188),
('DoctrineMigrations\\Version20240416091355', '2024-04-16 11:14:08', 15),
('DoctrineMigrations\\Version20240416104127', '2024-04-16 12:41:39', 15),
('DoctrineMigrations\\Version20240416105602', '2024-04-16 12:56:23', 16);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `helden`
--

DROP TABLE IF EXISTS `helden`;
CREATE TABLE `helden` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `helden`
--

INSERT INTO `helden` (`id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'Captain America', 'Zie Captain America voor andere betekenissen van Captain America. Captain America, het alter ego van Steve Rogers, is een fictieve superheld uit de strips van Marvel Comics. Hij werd ontworpen door Joe Simon en Jack Kirby.', '20.00', 1),
(2, 'Spiderman', 'Spider-Man, bekend als Peter Benjamin Parker, is een superheld uit de gelijknamige comicserie van Marvel Comics.', '20.00', 1),
(3, 'Hulk', 'De Hulk, alias Dr. Robert Bruce Banner is een stripfiguur in de gelijknamige comics van Marvel Comics. Hij werd gecreëerd door Stan Lee en Jack Kirby.', '20.00', 1),
(4, 'Aqua Man', 'Ooit was Atlantis de thuishaven van de meest geavanceerde beschaving op aarde, maar nu wordt het geregeerd door koning Orm. Met een enorm leger tot zijn beschikking is Orm van plan om de rest van de oceaan te veroveren en dan de bovengrondse wereld.', '20.00', 2),
(5, 'Superman', 'Zie Superman voor andere betekenissen van Superman. Superman, ook wel \'De Man van Staal\' genoemd.', '20.00', 2),
(6, 'Batman', 'De vleermuisman is voor een deel geïnspireerd door andere gemaskerde misdaadbestrijders als Zorro en The Shadow.', '20.00', 2),
(7, 'Yoda', 'Yoda is een personage uit de Star Wars-saga. Yoda is te zien in Episode I, II, III, V, VI en VIII. Hij is een groene Jedimeester en is lid van de Jedi-orde en de Jediraad.', '20.00', 3),
(8, 'Darth Vader', 'Anakin Skywalker is een personage uit de negendelige filmserie Star Wars van George Lucas. Anakin is intrinsiek en in potentie de grootste Jedi die ooit geleefd heeft.', '20.00', 3),
(9, 'R2-D2', 'R2-D2, kortweg R2 genoemd, is een robot in het fictieve Star Wars-universum. R2-D2 is een robot van het type astromechdroid.', '20.00', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `helden`
--
ALTER TABLE `helden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88192C5312469DE2` (`category_id`);

--
-- Indexen voor tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `helden`
--
ALTER TABLE `helden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `helden`
--
ALTER TABLE `helden`
  ADD CONSTRAINT `FK_88192C5312469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
