-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 01. 12:44
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `rossz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `day` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `start` int(2) NOT NULL DEFAULT 10,
  `end` int(2) NOT NULL DEFAULT 22
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `opening`
--

INSERT INTO `opening` (`id`, `day`, `start`, `end`) VALUES
(1, 'Hétfő', 10, 22),
(2, 'Kedd', 10, 22),
(3, 'Szerda', 10, 22),
(4, 'Csütörtök', 10, 22),
(5, 'Péntek', 10, 22),
(6, 'Szombat', 10, 22),
(7, 'Vasárnap', 10, 22);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
