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
-- Table structure for table `rooms_list`
-- 
-- name
-- total
-- stock
-- from_to 22-23
-- user_id  

CREATE TABLE `rooms_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `total` int(30) NOT NULL,
  `stock` text NOT NULL,
  `from_to` text NOT NULL,
  `user_id` text NOT NULL,

  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms_list`
INSERT INTO `rooms_list`(`id`, `name`, `total`, `stock`, `from_to`,`user_id`, `date_created`, `date_updated`) VALUES
 (1,1 ,201122,'sb','2021-2022',1,'2021-11-02 09:36:19','2021-11-02 09:36:19'),
 (2,'sbry abdo',1,'tgtg',0,'092024534',20,'qb','2021-2022','2021-11-02 09:36:19','2021-11-02 09:36:19');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `rooms_list`
--
ALTER TABLE `rooms_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rooms_list`
--
ALTER TABLE `rooms_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
--
-- Constraints for table `item_list`
--
ALTER TABLE `rooms_list`
  ADD CONSTRAINT `rooms_list_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
