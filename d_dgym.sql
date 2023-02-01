-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 01. 12:43
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `d&dgym`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personaltrainers`
--

CREATE TABLE `personaltrainers` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `aboutme` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `categid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `categid` int(11) NOT NULL,
  `price` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `type` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `timetableid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `weekday` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `hour` int(2) NOT NULL,
  `min` int(2) NOT NULL,
  `maxuser` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `avatar` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT 'user.png',
  `role` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL DEFAULT 'user',
  `avatar_id` varchar(256) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `registerdate` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(256) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `avatar`, `role`, `avatar_id`, `registerdate`, `password`) VALUES
(1, 'valami', 'abc', 'user.png', 'user', NULL, '2023-01-18 12:10:40', '$2a$10$jXRKMtE9D/RSh2dMuSljR.8/RA63FOVV0jTqyfbwXB8VKd0hjE1Xm'),
(3, 'Dani', 'Dani', 'user.png', 'user', NULL, '2023-01-24 11:34:34', '$2a$10$qi5o/4aEXHF4Jnq.a5tOMOQBwk6SuaS2hNac9.b/8s.KtrIu98T4e'),
(4, 'Danika', 'macska@gmail.com', 'user.png', 'user', NULL, '2023-01-25 11:34:52', '$2a$10$93OfL/4buvGRWBMqTJQha.00e0vZUX/eib9DzOo.MQb5Cq4SmHPgK'),
(5, 'Danci', 'asdsfsagsdgs@gmail.com', 'user.png', 'user', NULL, '2023-01-25 12:11:19', '$2a$10$/w83h2N9Nn6RwVmEYOChXepuZcfg1xEd.wwlUzMVulKNYyJC3mVp2'),
(6, 'Macskajaj', 'fogalmamsincs@gmail.com', 'user.png', 'user', NULL, '2023-01-25 12:13:00', '$2a$10$di0bl49t.EFwDIrZVcL7j.E.HCoPxOWWmfD49mxqg9kWA0Yp.pkTe'),
(7, 'Danika01', 'Danika@gmail.com', 'user.png', 'user', NULL, '2023-01-25 12:15:14', '$2a$10$LSqHPXiSr5T.u3TKl9vnzOOgsF1/6M9NEwUjpbCj2MJ4LltvOmgeK'),
(8, 'Miaucica', 'asddsa@gmail.com', 'user.png', 'user', NULL, '2023-01-27 11:51:01', '$2a$10$JxRANFyBNY3VUz6DIA3i2ut.IrpBoQJI7294cnJbuSNwImcjz5DqG'),
(9, 'Jelszóasdasd', 'adsjag@gmail.com', 'user.png', 'user', NULL, '2023-01-27 12:27:08', '$2a$10$QmU0aurk90FWGKDkIH8AxutoyyV6LNseDADJlvZGe6D9sKG73m8hW'),
(11, 'dancsee', 'jozsi@gmail.com', 'user.png', 'user', NULL, '2023-01-27 12:44:43', '$2a$10$hZL6zxG3PZY4X8jPsoGBV.q9hlFTUP02RiRV2U/z/1MdaocRehSgW');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `opening`
--
ALTER TABLE `opening`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `personaltrainers`
--
ALTER TABLE `personaltrainers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `categid` (`categid`);

--
-- A tábla indexei `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categid` (`categid`);

--
-- A tábla indexei `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `timetableid` (`timetableid`);

--
-- A tábla indexei `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `opening`
--
ALTER TABLE `opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `personaltrainers`
--
ALTER TABLE `personaltrainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `personaltrainers`
--
ALTER TABLE `personaltrainers`
  ADD CONSTRAINT `personaltrainers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `personaltrainers_ibfk_2` FOREIGN KEY (`categid`) REFERENCES `category` (`id`);

--
-- Megkötések a táblához `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`categid`) REFERENCES `category` (`id`);

--
-- Megkötések a táblához `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`timetableid`) REFERENCES `timetable` (`id`);

--
-- Megkötések a táblához `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `timetable_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `timetable_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
