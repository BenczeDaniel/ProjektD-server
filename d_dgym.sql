-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 07. 11:53
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.0.25

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
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `category`
--

INSERT INTO `category` (`id`, `description`) VALUES
(1, 'Napijegy'),
(2, '10 Napos Bérlet'),
(3, '20 Napos Bérlet'),
(4, '1 Havi Bérlet'),
(5, '3 Havi Bérlet'),
(6, '12 Havi Bérlet');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `opening`
--

CREATE TABLE `opening` (
  `id` int(11) NOT NULL,
  `day` varchar(30) NOT NULL,
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
  `aboutme` varchar(256) NOT NULL,
  `categid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `categid` int(11) NOT NULL,
  `KedvezmenyesAr` int(6) NOT NULL,
  `Egeszar` int(6) NOT NULL,
  `megjegyzes` varchar(256) NOT NULL DEFAULT 'A kedvezményes összeg a diákokat érinti.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `prices`
--

INSERT INTO `prices` (`id`, `categid`, `KedvezmenyesAr`, `Egeszar`, `megjegyzes`) VALUES
(1, 1, 3000, 3500, 'A kedvezményes összeg a diákokat érinti.'),
(2, 2, 9000, 9500, 'A kedvezményes összeg a diákokat érinti.'),
(3, 3, 15000, 15500, 'A kedvezményes összeg a diákokat érinti.'),
(4, 4, 19000, 19500, 'A kedvezményes összeg a diákokat érinti.'),
(5, 5, 54000, 54500, 'A kedvezményes összeg a diákokat érinti.'),
(6, 6, 215000, 217000, 'A kedvezményes összeg a diákokat érinti.');

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
  `weekday` varchar(20) NOT NULL,
  `hour` int(2) NOT NULL,
  `min` int(2) NOT NULL,
  `maxuser` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `trainings`
--

CREATE TABLE `trainings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `details` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `trainings`
--

INSERT INTO `trainings` (`id`, `title`, `subtitle`, `details`, `img`, `description`) VALUES
(1, 'Biceps', 'Edzésről röviden:\r\n', '    Ez az edzésterv kifejezetten a biceps izomcsoporta vonatkozik\r\n', 'biceps.jpg', 'https://www.youtube.com/embed/hcW18DTD5wU'),
(2, 'Triceps', 'Edzésről röviden:\r\n', 'Ez az edzésterv kifejezetten a triceps izomcsoporta vonatkozik\r\n', 'triceps.jpg', 'https://www.youtube.com/embed/LynzhKXQz1Q'),
(3, 'Váll', 'Edzésről röviden:', 'Ez az edzésterv kifejezetten a váll izomcsoporta vonatkozik\r\n', 'vall.jpg', 'https://www.youtube.com/embed/jQUVKIjIGlY'),
(4, 'Hát', 'Edzésről röviden:\r\n', 'Ez az edzésterv kifejezetten a hát izomcsoporta vonatkozik\r\n', 'hat.jpg', 'https://www.youtube.com/embed/MQUpgbY5m9c'),
(5, 'Mell', 'Edzésről röviden:    \r\n', 'Ez az edzésterv kifejezetten a mell izomcsoporta vonatkozik', 'mell.jpg', 'https://www.youtube.com/embed/0ZRyqtBjuOo'),
(6, 'Láb', 'Edzésről röviden:', 'Ez az edzésterv kifejezetten a láb izomcsoporta vonatkozik', 'lab.jpg', 'https://www.youtube.com/embed/EDiG47nZ-ZI');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL DEFAULT 'user.png',
  `role` varchar(256) NOT NULL DEFAULT 'user',
  `avatar_id` varchar(256) DEFAULT NULL,
  `registerdate` datetime NOT NULL DEFAULT current_timestamp(),
  `password` varchar(256) NOT NULL
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
(11, 'dancsee', 'jozsi@gmail.com', 'user.png', 'user', NULL, '2023-01-27 12:44:43', '$2a$10$hZL6zxG3PZY4X8jPsoGBV.q9hlFTUP02RiRV2U/z/1MdaocRehSgW'),
(12, 'asd555', 'asd555@gmail.com', 'user.png', 'user', NULL, '2023-02-17 08:26:23', '$2a$10$zocLrlzNBVXvcEXIw9A2ku1uM/9sOzTQk/83U0EaXMcNVDSp2IWUi'),
(13, 'iDaniel21', 'safasf@gmail.com', 'user.png', 'user', NULL, '2023-02-17 09:25:06', '$2a$10$dytkA6mqNE2OasrNAWGc8OYBCebPj.5R88zT.dQxiXfHtW6x3j06C'),
(14, 'asd5555', 'asd5555@gmail.com', 'user.png', 'user', NULL, '2023-02-27 16:40:32', '$2a$10$Eb3/SscW1l4BZMlK/4clw.fesjrnXjs7BubOkRmf5sOQKKEmQoOJ.'),
(15, 'danika123', 'danika123@gmail.com', 'user.png', 'user', NULL, '2023-02-27 16:42:52', '$2a$10$.k8Al6/kavc4ufnQqBjr7ezaW9r9WAN84YWqr7FxlG4YMeSiltF6y'),
(16, 'dorina123', 'dorina123@gmail.com', 'user.png', 'user', NULL, '2023-02-27 16:54:15', '$2a$10$VlB7ZLueTFpJa9upEyQdOuvA0/hIbP530aXABfLqkqijKha2v3ooq'),
(17, 'nelli123', 'nelli123@gmail.com', 'user.png', 'user', NULL, '2023-03-04 18:25:33', '$2a$10$fDfJIiDIqVH/7UN7kd36memrGtQNYctdgATLACqsnBfTRxyWONtBW');

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
-- A tábla indexei `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT a táblához `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
