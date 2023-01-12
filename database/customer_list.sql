-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 09:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_list`
-- 
-- name
-- total
-- marks
-- den
-- phone
-- rooms
-- stock
-- from_to 22-23

CREATE TABLE `cust_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `total` int(30) NOT NULL,
  `marks` text NOT NULL,
  `den` int(30) NOT NULL,
  `phone` text NOT NULL,
  `rooms` int(30) NOT NULL,
  `stock` text NOT NULL,
  `from_to` text NOT NULL,

  -- `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cust_list`
INSERT INTO `cust_list`(`id`, `name`, `total`, `marks`, `den`, `phone`, `rooms`, `stock`, `from_to`, `date_created`, `date_updated`) VALUES
 (1,'قصي',1,'p',201122,'092024534',10,'tb','2021-2022','2021-11-02 09:36:19','2021-11-02 09:36:19'),
 (2,'sbry abdo',1,'tgtg',0,'092024534',20,'qb','2021-2022','2021-11-02 09:36:19','2021-11-02 09:36:19');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_list`
--
ALTER TABLE `cust_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_list`
--
ALTER TABLE `cust_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
