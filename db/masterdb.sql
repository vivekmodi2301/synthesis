-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 10:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masterdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbdata`
--

CREATE TABLE `dbdata` (
  `id` int(5) NOT NULL,
  `db` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dbdata`
--

INSERT INTO `dbdata` (`id`, `db`, `year`) VALUES
(1, 'synthesis_new', '18-19'),
(2, 'db18', '17-18');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `password`, `dept`) VALUES
(1, 'master admin', '81dc9bdb52d04dc20036dbd8313ed055', 'masteradmin'),
(2, 'lokesh', 'b0f07fe0f7de991bfca0de50391eb328', 'accountant'),
(3, 'vimla', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(4, 'rahul', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(5, 'Rajendra', '81dc9bdb52d04dc20036dbd8313ed055', 'accountant'),
(6, 'gowardhan', '4f9b7ca6093e0164d5e1c865659a4b63', 'accountant'),
(7, 'anop', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(8, 'mohit', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(9, 'kanchan', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(10, 'Bhuwan', '81dc9bdb52d04dc20036dbd8313ed055', 'icard'),
(11, 'nitin', '81dc9bdb52d04dc20036dbd8313ed055', 'icard'),
(12, 'bharti', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(13, 'arti', '81dc9bdb52d04dc20036dbd8313ed055', 'recption'),
(14, 'Dheeraj', '81dc9bdb52d04dc20036dbd8313ed055', 'accountant'),
(15, 'bithal2012', '0ab276b1b1ebac8e52fe7b92a18b1986', 'accountant'),
(16, 'sandeep', '81dc9bdb52d04dc20036dbd8313ed055', 'accountant'),
(17, 'PAWAN', '81dc9bdb52d04dc20036dbd8313ed055', 'accountant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbdata`
--
ALTER TABLE `dbdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbdata`
--
ALTER TABLE `dbdata`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
