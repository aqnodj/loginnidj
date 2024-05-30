-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 09:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginmethod2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Pass_word` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `account_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Pass_word`, `firstname`, `lastname`, `birthday`, `sex`, `user_email`, `user_profile_picture`, `account_type`) VALUES
(1, 'aqnodj', '123', 'dj', 'aquino', '2024-05-20', 'male', '', '', 0),
(20, 'marky1', '$2y$10$CCKyBfqRsGBAQdU.8wSv6O/MdiUsAUjgNVUC0NfmrnfkRw4HkNBsq', 'Mark', 'Zuckerbirdy', '2024-05-30', 'Male', 'mark@gmail.com', 'uploads/OIP_1717055383.jpg', 0),
(21, 'jimmy', '$2y$10$yNx/Tvyb9b3/KDGvoRhA0.rLcxNtj3LhVNc0/w7twIWbw6quftcFO', 'Jimmy', 'Pares', '2024-05-14', 'Male', 'jimmy@gmail.com', 'uploads/butler_1717055487.png', 0),
(22, 'kevin', '$2y$10$8nagti5E4Lu2PJQrOu1axuFwhjS1FkPti0GYbF8UIUPBIwy5S5RTC', 'Kevin', 'Durantula', '2024-05-24', 'Male', 'kevin@gmail.com', 'uploads/kd.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `UserID` int(11) DEFAULT NULL,
  `user_add_street` varchar(255) NOT NULL,
  `user_add_barangay` varchar(255) NOT NULL,
  `user_add_city` varchar(255) NOT NULL,
  `user_add_province` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`UserID`, `user_add_street`, `user_add_barangay`, `user_add_city`, `user_add_province`) VALUES
(20, '123', 'Bayanan I', 'City Of Calapan (Capital)', 'MIMAROPA'),
(21, '124', 'Santo Domingo', 'Luna', 'Region II (Cagayan Valley)'),
(22, '213', 'Malaking Ambling', 'Magdalena', 'Region IV-A (CALABARZON)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
