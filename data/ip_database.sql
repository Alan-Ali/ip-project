-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 04, 2023 at 08:26 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ip_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(512) NOT NULL,
  `card_type` varchar(512) NOT NULL,
  `name_on_card` varchar(512) NOT NULL,
  `credit_card_number` int NOT NULL,
  `expiration_month` int NOT NULL,
  `expiration_year` int NOT NULL,
  `state` varchar(512) NOT NULL,
  `zip` int NOT NULL,
  `cvv` int NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `user_id`, `hotel_id`, `fullname`, `email`, `address`, `city`, `card_type`, `name_on_card`, `credit_card_number`, `expiration_month`, `expiration_year`, `state`, `zip`, `cvv`) VALUES
(4, 1, 3, 'karo', 'karo@gmail.com', 'somewhere', 'here', 'visa', 'Karo', 2432342, 5, 2024, 'slemany', 3423, 2343),
(5, 1, 3, 'musa', 'musa@gmail.com', 'somewhere', 'here', 'mastercard', 'karo', 123, 5, 2024, 'slemany', 123, 345);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(256) NOT NULL,
  `hotel_description` mediumtext NOT NULL,
  `hotel_room_price` double NOT NULL,
  `hotel_image_name` varchar(256) DEFAULT NULL,
  `hotel_image_ext` varchar(256) DEFAULT NULL,
  `hotel_star` int NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `hotel_description`, `hotel_room_price`, `hotel_image_name`, `hotel_image_ext`, `hotel_star`) VALUES
(3, 'titanic', 'it\'s a on the malik mahmood ring.', 350, '7608fd6f-a3e5-4949-b9c6-057b69458d94', 'webp', 5),
(4, 'rotana', 'it\'s the Salm Street', 250, 'e56aadb2-a758-4c0a-b00b-7eb1fd5889e7', 'webp', 5),
(5, 'another', 'sad', 120, '4513bf5e-20cc-4527-b8ef-00697fbd4b16', 'jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `isadmin` int DEFAULT NULL,
  `location` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `isadmin`, `location`) VALUES
(1, 'alan', 'alan@gmail.com', 'alanalan', 0, 'Kurdistan Region, Iraq'),
(3, 'alan', 'alaan@gmail.com', '12345678', 1, 'somewhere in the cosmos'),
(7, 'paiwand', 'paiwand@gmail.com', 'paiwand', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userimage`
--

DROP TABLE IF EXISTS `userimage`;
CREATE TABLE IF NOT EXISTS `userimage` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `image_ext` varchar(16) DEFAULT NULL,
  `image_name` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userimage`
--

INSERT INTO `userimage` (`image_id`, `user_id`, `image_ext`, `image_name`) VALUES
(1, 1, 'jpg', '086e323e-8d19-4422-bf4b-5ffa8eab8688');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userimage`
--
ALTER TABLE `userimage`
  ADD CONSTRAINT `userimage_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
