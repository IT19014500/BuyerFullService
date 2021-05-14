-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 04:42 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group_04`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descri` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `tp` char(10) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `name`, `descri`, `address`, `email`, `pwd`, `tp`, `gender`) VALUES
(11, 'dhsh%2Bjgfa', 'hrt', 'aerthadfb', 'newjay%2540gmail.com', '1111', '0705292123', 'Female'),
(12, 'srmrtjm', 'mwrtg+dftymw', 'wrtnj+drtyjn', 'wrtjw%2540gmail.com', 'wrt', '0705292123', 'Female'),
(13, 'Muditha', 'wef', 'WEF', 'FW', 'adfg', '0705292123', 'Male'),
(15, 'Jayamadhuka Chandramal', 'Brilient Buyer', '100-D,School Road, Ethabandiwewa, Dambulla.', 'IT19014500@my.sliit.lk', '1111', '0705292123', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `buyerproduct`
--

CREATE TABLE `buyerproduct` (
  `bid` int(255) NOT NULL,
  `proCode` int(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyerproduct`
--

INSERT INTO `buyerproduct` (`bid`, `proCode`, `status`) VALUES
(11, 1, 'sold');

-- --------------------------------------------------------

--
-- Table structure for table `fbres`
--

CREATE TABLE `fbres` (
  `fbid` int(255) NOT NULL,
  `rid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fundingbody`
--

CREATE TABLE `fundingbody` (
  `fbid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fundPlan` double NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `innovatorname` varchar(255) NOT NULL,
  `fundamount` double NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(255) NOT NULL,
  `bid` int(255) NOT NULL,
  `proCode` int(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `pamount` double NOT NULL,
  `pname` varchar(255) NOT NULL,
  `paddress` varchar(255) NOT NULL,
  `pemail` varchar(255) NOT NULL,
  `ptel` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `proCode` int(255) NOT NULL,
  `rid` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `descri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`proCode`, `rid`, `pname`, `price`, `descri`) VALUES
(1, 1, 'New Product', 100.9, 'dsfh');

-- --------------------------------------------------------

--
-- Table structure for table `resercher`
--

CREATE TABLE `resercher` (
  `rid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resercher`
--

INSERT INTO `resercher` (`rid`, `name`, `descri`) VALUES
(1, 'zdvb dvz', 'dsfbsdfb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `buyerproduct`
--
ALTER TABLE `buyerproduct`
  ADD PRIMARY KEY (`bid`,`proCode`),
  ADD KEY `proCode` (`proCode`),
  ADD KEY `bid` (`bid`,`proCode`);

--
-- Indexes for table `fbres`
--
ALTER TABLE `fbres`
  ADD PRIMARY KEY (`fbid`,`rid`),
  ADD UNIQUE KEY `fbid` (`fbid`,`rid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `fundingbody`
--
ALTER TABLE `fundingbody`
  ADD PRIMARY KEY (`fbid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `bid` (`bid`),
  ADD KEY `proCode` (`proCode`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proCode`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `resercher`
--
ALTER TABLE `resercher`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fundingbody`
--
ALTER TABLE `fundingbody`
  MODIFY `fbid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `proCode` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resercher`
--
ALTER TABLE `resercher`
  MODIFY `rid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buyerproduct`
--
ALTER TABLE `buyerproduct`
  ADD CONSTRAINT `buyerproduct_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `buyer` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buyerproduct_ibfk_2` FOREIGN KEY (`proCode`) REFERENCES `product` (`proCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fbres`
--
ALTER TABLE `fbres`
  ADD CONSTRAINT `fbres_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `resercher` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fbres_ibfk_2` FOREIGN KEY (`fbid`) REFERENCES `fundingbody` (`fbid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `buyer` (`bid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`proCode`) REFERENCES `product` (`proCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `resercher` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
