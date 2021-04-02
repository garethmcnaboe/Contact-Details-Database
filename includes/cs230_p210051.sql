-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2021 at 08:45 PM
-- Server version: 10.3.27-MariaDB-0+deb10u1
-- PHP Version: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230_p210051`
--

-- --------------------------------------------------------

--
-- Table structure for table `HomeAddress`
--

CREATE TABLE `HomeAddress` (
  `HomeAddID` int(11) NOT NULL,
  `HomeAdd1` varchar(80) NOT NULL,
  `HomeAdd2` varchar(80) DEFAULT NULL,
  `HomeAddTown` varchar(80) NOT NULL,
  `HomeAddCountyorCity` varchar(80) NOT NULL,
  `HomeAddEircode` varchar(80) NOT NULL,
  `ForeignID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HomeAddress`
--

INSERT INTO `HomeAddress` (`HomeAddID`, `HomeAdd1`, `HomeAdd2`, `HomeAddTown`, `HomeAddCountyorCity`, `HomeAddEircode`, `ForeignID`) VALUES
(1, '21 Bayside Walk', 'Bayside', 'Baldoyle', 'Dublin 13', 'D13 7U8J', 1),
(2, '51 Admiral Park', NULL, 'Baldoyle', 'Dublin 13', 'D13 8Il0', 2),
(3, '78 Sutton Park', 'Bayside', 'Sutton', 'Dublin 13', 'D13 9U10', 3),
(4, '67 Iveagh Gardens', NULL, 'Crumlin', 'Dublin 8', 'D8 8I7U', 4),
(5, '87 Ludford Avenue', NULL, 'Ballinteer', 'Dublin 18', 'D18 H7J8', 5),
(6, '90 Slademore Avenue', 'Ard Na Greine', 'Ayrfield', 'Dublin 13', 'D13 I7B8', 6),
(7, '89 Edenmore Drive', 'Edenmore', 'Raheny', 'Dublin 5', 'D5 J8K9', 7),
(8, '2 Greenwood Road', NULL, 'Ayrfield', 'Dublin 13', 'D13 H7K0', 8),
(9, '90 Main Street', NULL, 'Tallaght', 'Dublin 24', 'D24 G8M5', 9),
(10, '30 The Grange', 'Glen', 'Enniscorty', 'Co Wexford', 'WX8 8I9O', 10);

-- --------------------------------------------------------

--
-- Table structure for table `PeopleDetails`
--

CREATE TABLE `PeopleDetails` (
  `PersonID` int(11) NOT NULL,
  `PersonTitle` varchar(80) DEFAULT NULL,
  `PersonFirstName` varchar(80) NOT NULL,
  `PersonSurname` varchar(80) NOT NULL,
  `PersonMobile` varchar(80) DEFAULT NULL,
  `PersonEmail` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PeopleDetails`
--

INSERT INTO `PeopleDetails` (`PersonID`, `PersonTitle`, `PersonFirstName`, `PersonSurname`, `PersonMobile`, `PersonEmail`) VALUES
(1, 'Mr', 'Dave', 'Whelan', '0876754634', 'davewhelan@gmail.com'),
(2, 'Mr', 'Kevin', 'Moran', '0887897779', 'kevinmoran@gmail.com'),
(3, 'Ms', 'Dervala', 'Morris', '0868379374', 'dervalamorris@gmail.com'),
(4, 'Mr', 'Simon', 'Brown', '0875678891', 'simonbrown@gmail.com'),
(5, 'Mr', 'Tony', 'Cascarino', '0879678976', 'tonycascarino@gmail.com'),
(6, 'Mr', 'Shaun', 'Teale', '0867753432', 'shaunteale@gmail.com'),
(7, 'Mr', 'Andy', 'Townsend', '0886756341', 'andytownsend@gmail.com'),
(8, 'Mr', 'Ray', 'Houghton', '0865634978', 'rayhoughton@gmail.com'),
(9, 'Mr', 'Steve', 'Staunton', '0856743568', 'stevestaunton@gmail.com'),
(10, 'Mr', 'Paul', 'McGrath', '087654532', 'paul@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `ShipAddress`
--

CREATE TABLE `ShipAddress` (
  `ShipAddID` int(11) NOT NULL,
  `ShipAdd1` varchar(80) NOT NULL,
  `ShipAdd2` varchar(80) DEFAULT NULL,
  `ShipAddTown` varchar(80) NOT NULL,
  `ShipAddCountyorCity` varchar(80) NOT NULL,
  `ShipAddEircode` varchar(80) NOT NULL,
  `ForeignSID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ShipAddress`
--

INSERT INTO `ShipAddress` (`ShipAddID`, `ShipAdd1`, `ShipAdd2`, `ShipAddTown`, `ShipAddCountyorCity`, `ShipAddEircode`, `ForeignSID`) VALUES
(1, '21 Bayside Walk', 'Bayside', 'Baldoyle', 'Dublin 13', 'D13 7U8J', 1),
(2, '51 Admiral Park', NULL, 'Baldoyle', 'Dublin 13', 'D13 8Il0', 2),
(3, '78 Sutton Park', 'Bayside', 'Sutton', 'Dublin 13', 'D13 9U10', 3),
(4, '67 Iveagh Gardens', NULL, 'Crumlin', 'Dublin 8', 'D8 8I7U', 4),
(5, '87 Ludford Avenue', NULL, 'Ballinteer', 'Dublin 18', 'D18 H7J8', 5),
(6, '90 Slademore Avenue', 'Ard Na Greine', 'Ayrfield', 'Dublin 13', 'D13 I7B8', 6),
(7, '89 Edenmore Drive', 'Edenmore', 'Raheny', 'Dublin 5', 'D5 J8K9', 7),
(8, '78 Sundrive Road', 'Sundrive', 'Raheny', 'Dublin 5', 'D5 98KJ', 8),
(9, '10 Elton Drive', 'Ard Na Greine', ' Ayrfield', 'Dublin 13', 'D13 0ING', 9),
(10, '30 The Grange', 'Glen', 'Enniscorty', 'Co Wexford', 'WX8 8I9O', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HomeAddress`
--
ALTER TABLE `HomeAddress`
  ADD PRIMARY KEY (`HomeAddID`),
  ADD KEY `homeforeign_key` (`ForeignID`);

--
-- Indexes for table `PeopleDetails`
--
ALTER TABLE `PeopleDetails`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `ShipAddress`
--
ALTER TABLE `ShipAddress`
  ADD PRIMARY KEY (`ShipAddID`),
  ADD KEY `shipforeign_key` (`ForeignSID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HomeAddress`
--
ALTER TABLE `HomeAddress`
  MODIFY `HomeAddID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `PeopleDetails`
--
ALTER TABLE `PeopleDetails`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ShipAddress`
--
ALTER TABLE `ShipAddress`
  MODIFY `ShipAddID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `HomeAddress`
--
ALTER TABLE `HomeAddress`
  ADD CONSTRAINT `homeforeign_key` FOREIGN KEY (`ForeignID`) REFERENCES `PeopleDetails` (`PersonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ShipAddress`
--
ALTER TABLE `ShipAddress`
  ADD CONSTRAINT `shipforeign_key` FOREIGN KEY (`ForeignSID`) REFERENCES `PeopleDetails` (`PersonID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
