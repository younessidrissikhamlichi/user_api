-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2024 at 09:18 PM
-- Server version: 11.1.3-MariaDB-log
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `postcode` int(11) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `streetNumber` int(11) NOT NULL,
  `timezone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `city`, `country`, `latitude`, `longitude`, `postcode`, `state`, `streetName`, `streetNumber`, `timezone`) VALUES
(1, 'Springfield', 'United States', '39.7817', '-89.6501', 62701, 'Illinois', 'Main Street', 123, 'Eastern Time (US & Canada), Bogota, Lima'),
(2, 'Metropolis', 'United States', '40.7128', '-74.0060', 10001, 'New York', 'Oak Avenue', 456, 'Eastern Time (US & Canada), Bogota, Lima'),
(3, 'Gotham', 'United States', '40.0583', '-74.4057', 7001, 'New Jersey', 'Pine Road', 789, 'Eastern Time (US & Canada), Bogota, Lima'),
(4, 'Central City', 'United States', '34.0522', '-118.2437', 90210, 'California', 'Maple Street', 101, 'Pacific Time (US & Canada), Tijuana'),
(5, 'Star City', 'United States', '47.6062', '-122.3321', 98001, 'Washington', 'Elm Street', 202, 'Pacific Time (US & Canada), Tijuana');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `md5` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sha1` varchar(255) DEFAULT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `md5`, `password`, `salt`, `sha1`, `sha256`, `username`, `uuid`) VALUES
(1, '5f4dcc3b5aa765d61d8327deb882cf99', 'password123', '1a2b3c', 'e99a18c428cb38d5f260853678922e03', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684ea5b708b2b0b666e0ddf76e8', 'johndoe', 'abc123'),
(2, '7f8e9d10bcdefa12b345c6789012abcd', 'password456', '4d5e6f', '6f7d89a1b3c45d6e7f89e123456789ab', '3e5d7f81a1234e567f89bc0d9f12e345', 'janedoe', 'def456'),
(3, 'c0d1e2f34ab5678f9a0b1c2345d6e7f8', 'password789', '7g8h9i', 'd3e4f56789a1b2345c6d7e8f9a0b1c2d', 'e1f2d3c4b5a6e789f0c1d2e3456a7b8c', 'mikesmith', 'ghi789'),
(4, 'b1c2d3e4f5a67890b123c4d5e6f7890a', 'password012', '0j1k2l', 'e2d3c4b5a6e789f0c1d2e3456a7b8c9d', 'f1d2e3c4b5a67890f1c2d3456a7b8e9c', 'emilyjones', 'jkl012'),
(5, 'a1b2c3d4e5f67890a123b4c5d6e7f890', 'password345', '3m4n5o', 'c3d4b5a6e789f0c1d2e3456a7b8c9d0e', 'd2e3c4b5a67890f1c2d3456a7b8e9f0c', 'chrisjohnson', 'mno345');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `cell` varchar(255) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `login_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `age`, `cell`, `dateOfBirth`, `email`, `firstName`, `gender`, `lastName`, `nationality`, `phone`, `picture`, `location_id`, `login_id`) VALUES
(1, 42, '555-555-5555', '1980-05-20', 'john.doe@example.com', 'John', 'male', 'Doe', 'US', '555-555-5555', 'https://randomuser.me/api/portraits/men/1.jpg', 1, 1),
(2, 37, '555-555-5556', '1985-08-15', 'jane.doe@example.com', 'Jane', 'female', 'Doe', 'US', '555-555-5556', 'https://randomuser.me/api/portraits/women/1.jpg', 2, 2),
(3, 34, '555-555-5557', '1990-02-10', 'mike.smith@example.com', 'Mike', 'male', 'Smith', 'US', '555-555-5557', 'https://randomuser.me/api/portraits/men/2.jpg', 3, 3),
(4, 48, '555-555-5558', '1975-12-05', 'emily.jones@example.com', 'Emily', 'female', 'Jones', 'US', '555-555-5558', 'https://randomuser.me/api/portraits/women/2.jpg', 4, 4),
(5, 23, '555-555-5559', '2000-07-25', 'chris.johnson@example.com', 'Chris', 'male', 'Johnson', 'US', '555-555-5559', 'https://randomuser.me/api/portraits/men/3.jpg', 5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_tpg1dgd93n6nws84tah3vbsou` (`location_id`),
  ADD UNIQUE KEY `UK_l2ubm4bc1sb7q4s2ljw3gbd9h` (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `FK4k0336gnx019odypq3e7kkfjf` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`),
  ADD CONSTRAINT `FKrweeswx67nk55si3sdj3rgd1e` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
