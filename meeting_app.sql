-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 12:47 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meeting_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'channel-test1', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'channel-test2', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'taj', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000'),
(2, 'Rambag palca', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `room_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price`, `created_at`, `updated_at`, `room_id`, `channel_id`) VALUES
(1, '50.00', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 1),
(2, '150.00', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 2),
(3, '250.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:32.475427', 2, 1),
(4, '350.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:37.103382', 2, 2),
(5, '450.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:43.337258', 3, 1),
(6, '550.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:46.725114', 3, 2),
(7, '650.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:54.560964', 4, 1),
(8, '750.00', '0000-00-00 00:00:00.000000', '2022-10-04 16:16:59.948432', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `created_at`, `updated_at`, `hotel_id`) VALUES
(1, 'RAM-001', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 2),
(2, 'RAM-002', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 2),
(3, 'TAJ-001', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1),
(4, 'TAJ-002', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visiblities`
--

CREATE TABLE `visiblities` (
  `id` int(11) NOT NULL,
  `visiblilty` tinyint(4) NOT NULL,
  `created_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` datetime(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `hotel_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visiblities`
--

INSERT INTO `visiblities` (`id`, `visiblilty`, `created_at`, `updated_at`, `hotel_id`, `channel_id`) VALUES
(1, 0, '0000-00-00 00:00:00.000000', '2022-10-06 15:30:31.379115', 1, 1),
(2, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 2),
(3, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 2, 1),
(4, 1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fa7d41c534201e760fdb700d40d` (`room_id`),
  ADD KEY `FK_7571adf501d23e55a9e19c10ca2` (`channel_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7a61484af364d0d804b21b25c7f` (`hotel_id`);

--
-- Indexes for table `visiblities`
--
ALTER TABLE `visiblities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_903b61e4ea37a86d8fae891ed43` (`hotel_id`),
  ADD KEY `FK_72cbd32cdfcb4d93edae0024e90` (`channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visiblities`
--
ALTER TABLE `visiblities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `FK_7571adf501d23e55a9e19c10ca2` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_fa7d41c534201e760fdb700d40d` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `FK_7a61484af364d0d804b21b25c7f` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `visiblities`
--
ALTER TABLE `visiblities`
  ADD CONSTRAINT `FK_72cbd32cdfcb4d93edae0024e90` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_903b61e4ea37a86d8fae891ed43` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
