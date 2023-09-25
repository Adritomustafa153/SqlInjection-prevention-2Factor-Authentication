-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 03:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_injection`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `email`, `activity`, `time`) VALUES
(47, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 11:53:07'),
(48, 'adrito.mustafa@gmail.com', 'Wrong Email or Password', '2023-08-09 11:53:22'),
(49, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 12:14:13'),
(50, 'adrito.mustafa@gmail.com', 'Wrong Email or Password', '2023-08-09 12:14:46'),
(51, 'adrito.mustafa@gmail.com', 'Wrong Email or Password', '2023-08-09 12:16:37'),
(52, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 12:18:23'),
(53, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 12:18:34'),
(54, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 12:23:28'),
(55, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 12:28:12'),
(56, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 12:28:59'),
(57, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 12:37:29'),
(58, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:05:47'),
(59, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 13:05:57'),
(60, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:07:52'),
(61, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:14:01'),
(62, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:19:10'),
(63, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:19:36'),
(64, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:23:05'),
(65, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:23:29'),
(66, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:23:44'),
(67, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:24:02'),
(68, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:24:19'),
(69, 'adrito642@gmail.com', 'Logs Out', '2023-08-09 13:27:45'),
(70, 'adrito642@gmail.com', 'Wrong Email or Password', '2023-08-09 13:27:59'),
(71, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:31:00'),
(72, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 13:31:10'),
(73, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:32:18'),
(74, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 13:33:20'),
(75, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:35:08'),
(76, 'adrito.mustafa@gmail.com\'', 'Wrong Email or Password', '2023-08-09 13:38:41'),
(77, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 13:38:51'),
(78, 'adrito.mustafa@gmail.com', 'Logs Out', '2023-08-09 13:39:40'),
(79, 'adrito.mustafa@gmail.com', 'Logs In', '2023-08-09 13:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(10) DEFAULT NULL,
  `block` varchar(50) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `user_type`, `block`) VALUES
(4, 'mkarim191076@bscse.uiu.ac.bd', '1234', 1, 'yes'),
(5, 'mainulkarim911@gmail.com', '1234', 2, 'no'),
(6, 'adrito.mustafa@gmail.com', 'adrito153', 1, 'no'),
(7, 'adrito642@gmail.com', '12345', 2, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
