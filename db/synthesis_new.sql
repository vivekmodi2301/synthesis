-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 10:24 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synthesis_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_stu_fee`
--

CREATE TABLE `all_stu_fee` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_stu_fee`
--

INSERT INTO `all_stu_fee` (`id`, `name`, `datee`) VALUES
(1, 'include/stu_fee_exe/16_Aug_2018_feelist.xls', '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `ap`
--

CREATE TABLE `ap` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aug`
--

CREATE TABLE `aug` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `name`, `class_id`) VALUES
(1, '8th', 1),
(2, '9th', 2),
(3, '10th', 3),
(4, 'E-1', 4),
(5, 'E-2', 4),
(6, 'E-3', 4),
(7, 'E-4', 4),
(8, 'E-5', 4),
(9, 'E-6', 4),
(10, 'H-1', 4),
(11, 'H-2', 4),
(12, 'H-3', 4),
(13, 'E-1', 6),
(14, 'E-2', 6),
(15, 'E-3', 6),
(16, 'E-4', 6),
(17, 'E-5', 6),
(18, 'E-6', 6),
(19, 'H-1', 6),
(20, 'H-2', 6),
(21, 'H-3', 6),
(22, 'H-4', 6),
(23, 'D-1', 8),
(24, 'D-2', 8),
(25, 'D-3', 8),
(26, 'D-4', 8),
(27, 'D-5', 8),
(28, 'D-6', 8),
(29, 'Target Maths', 9),
(31, 'H.M.', 5),
(32, 'E.M.', 5),
(33, 'E.M.', 7),
(34, 'H.M.', 7),
(35, '11th CBSE (E.M.)', 4),
(36, '11th RBSE (H.M.)', 4),
(37, '11th RBSE (E.M.)', 4),
(38, '12th CBSE (E.M.)', 6),
(39, '12th RBSE (H.M.)', 6),
(40, '12th RBSE (E.M.)', 6),
(41, '12th CBSE (E.M.)', 7),
(42, '12th RBSE (H.M.)', 7),
(43, '12th RBSE (E.M.)', 7),
(44, '11th CBSE (E.M.)', 5),
(45, '11th RBSE (H.M.)', 5),
(46, '11th RBSE (E.M.)', 5),
(47, 'Hindi Medium', 8),
(48, 'English Medium', 8),
(49, 'Hindi Medium', 9),
(50, 'English Medium', 9),
(52, 'T.S. 2018-19', 11);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fee` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total_fees` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `fee`, `tax`, `total_fees`) VALUES
(1, '8th', 0, 0, ''),
(2, '9th', 0, 0, ''),
(3, '10th', 0, 0, ''),
(4, '11th Bio', 0, 0, ''),
(5, '11th Maths', 0, 0, ''),
(6, '12th Bio', 0, 0, ''),
(7, '12th Maths', 0, 0, ''),
(8, 'Target Bio', 0, 0, ''),
(9, 'Target Maths', 0, 0, ''),
(11, 'T.S. 2018-19', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `class_fee_dtl`
--

CREATE TABLE `class_fee_dtl` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `reg_fee` int(11) DEFAULT NULL,
  `tution_fee` int(11) DEFAULT NULL,
  `test_series_fees` int(11) DEFAULT NULL,
  `study_matirial_fee` int(11) DEFAULT NULL,
  `gst_per` int(11) DEFAULT NULL,
  `gst_value` float DEFAULT NULL,
  `total_fee` int(11) DEFAULT NULL,
  `old_total_fee` int(11) DEFAULT NULL,
  `old_reg_fee` int(11) DEFAULT NULL,
  `old_gst_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_fee_dtl`
--

INSERT INTO `class_fee_dtl` (`id`, `class_id`, `batch_id`, `reg_fee`, `tution_fee`, `test_series_fees`, `study_matirial_fee`, `gst_per`, `gst_value`, `total_fee`, `old_total_fee`, `old_reg_fee`, `old_gst_value`) VALUES
(1, 1, NULL, 3500, 22000, 2000, 3000, 18, 5490, 35990, 35400, 3000, 5400),
(2, 2, NULL, 3000, 25000, 3000, 4000, 18, 6300, 41300, 41300, 3000, 6300),
(4, 3, NULL, 3000, 25000, 3000, 4000, 18, 6300, 41300, 41300, 3000, 6300),
(5, 4, NULL, 3000, 50000, 5000, 7000, 18, 11700, 76700, 76700, 3000, 11700),
(6, 6, NULL, 3000, 50000, 5000, 7000, 18, 11700, 76700, 76700, 3000, 11700),
(7, 8, NULL, 3000, 60000, 7000, 10000, 18, 14400, 94400, 94400, 3000, 14400),
(8, 5, NULL, 3000, 55000, 7000, 10000, 18, 13500, 88500, 88500, 3000, 13500),
(9, 7, NULL, 3000, 55000, 7000, 10000, 18, 13500, 88500, 88500, 3000, 13500),
(10, 9, NULL, 3000, 65000, 8000, 14000, 18, 16200, 106200, 106200, 3000, 16200),
(11, 11, NULL, 10660, 0, 0, 0, 18, 2340, 13000, 13000, 10660, 18);

-- --------------------------------------------------------

--
-- Table structure for table `coloumn`
--

CREATE TABLE `coloumn` (
  `id` int(11) NOT NULL,
  `patt_id` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coloumn`
--

INSERT INTO `coloumn` (`id`, `patt_id`, `name`, `sequence`) VALUES
(1, 2, 'phy.', 3),
(2, 2, 'chem.', 4),
(3, 2, 'bot.', 8),
(4, 2, 'zoo.', 9),
(5, 2, 'total', 10),
(6, 2, '%', 11),
(7, 2, 'rank', 12),
(8, 3, 'phy.', 3),
(9, 3, 'chem.', 4),
(10, 3, 'bot.', 8),
(11, 3, 'zoo.', 9),
(12, 3, 'g.k.', 10),
(13, 3, 'total', 11),
(14, 3, '%', 12),
(15, 3, 'rank', 13),
(16, 4, 'phy.', 3),
(17, 4, 'chem.', 4),
(18, 4, 'bot.', 8),
(19, 4, 'zoo.', 9),
(20, 4, 'total', 10),
(21, 4, '%', 11),
(22, 4, 'rank', 12),
(23, 5, 'phy.', 3),
(24, 5, 'chem.', 4),
(25, 5, 'bot.', 8),
(26, 5, 'zoo.', 9),
(27, 5, 'g.k.', 10),
(28, 5, 'total', 11),
(29, 5, '%', 12),
(30, 5, 'rank', 13),
(31, 6, 'phy.', 3),
(32, 6, 'chem.', 4),
(33, 6, 'bio.', 8),
(34, 6, 'total', 9),
(35, 6, '%', 10),
(36, 6, 'rank', 11),
(37, 7, 'phy.', 3),
(38, 7, 'chem.', 4),
(39, 7, 'bot.', 8),
(40, 7, 'zoo.', 9),
(41, 7, 'total', 10),
(42, 7, '%', 11),
(43, 7, 'rank', 12),
(44, 8, 'phy.', 3),
(45, 8, 'chem.', 4),
(46, 8, 'bio.', 8),
(47, 8, 'total', 9),
(48, 8, '%', 10),
(49, 8, 'rank', 11),
(50, 9, 'phy.', 3),
(51, 9, 'chem.', 4),
(52, 9, 'bot.', 8),
(53, 9, 'zoo.', 9),
(54, 9, 'g.k.', 10),
(55, 9, 'total', 11),
(56, 9, '%', 12),
(57, 9, 'rank', 13),
(58, 10, 'phy.', 3),
(59, 10, 'chem.', 4),
(60, 10, 'maths', 8),
(61, 10, 'total', 9),
(62, 10, '%', 10),
(63, 10, 'rank', 11),
(64, 11, 'phy.', 3),
(65, 11, 'chem.', 4),
(66, 11, 'maths', 8),
(67, 11, 'total', 9),
(68, 11, '%', 10),
(69, 11, 'rank', 11),
(70, 12, 'phy.', 3),
(71, 12, 'chem.', 4),
(72, 12, 'maths', 8),
(73, 12, 'total', 9),
(74, 12, '%', 10),
(75, 12, 'rank', 11),
(76, 13, 'phy.', 3),
(77, 13, 'chem.', 4),
(78, 13, 'maths', 8),
(79, 13, 'total', 9),
(80, 13, '%', 10),
(81, 13, 'rank', 11),
(82, 14, 'phy.', 3),
(83, 14, 'chem.', 4),
(84, 14, 'maths', 8),
(85, 14, 'total', 9),
(86, 14, '%', 10),
(87, 14, 'rank', 11),
(88, 15, 'phy.', 3),
(89, 15, 'chem.', 4),
(90, 15, 'maths', 8),
(91, 15, 'total', 9),
(92, 15, '%', 10),
(93, 15, 'rank', 11),
(94, 16, 'phy.', 3),
(95, 16, 'chem', 4),
(96, 16, 'maths', 8),
(97, 16, 'total', 9),
(98, 16, '%', 10),
(99, 16, 'rank', 11),
(100, 17, 'phy.', 3),
(101, 17, 'chem.', 4),
(102, 17, 'maths', 8),
(103, 17, 'total', 9),
(104, 17, '%', 10),
(105, 17, 'rank', 11),
(106, 18, 'phy.', 3),
(107, 18, 'chem.', 4),
(108, 18, 'bio.', 8),
(109, 18, 'total', 9),
(110, 18, '%', 10),
(111, 18, 'rank', 11),
(112, 19, 'phy.', 3),
(113, 19, 'chem.', 4),
(114, 19, 'bio.', 8),
(115, 19, 'total', 9),
(116, 19, '%', 10),
(117, 19, 'rank', 11),
(118, 20, 'phy.', 3),
(119, 20, 'chem.', 4),
(120, 20, 'bio.', 8),
(121, 20, 'g.k.', 9),
(122, 20, 'total', 10),
(123, 20, '%', 11),
(124, 20, 'rank', 12),
(139, 24, 'abc', 3),
(140, 24, 'def', 4),
(141, 25, 'phy.', 3),
(142, 25, 'chem.', 4),
(143, 25, 'maths', 8),
(144, 25, 'total', 9),
(145, 25, '%', 10),
(146, 25, 'rank', 11),
(147, 26, 'phy.', 3),
(148, 26, 'chem.', 4),
(149, 26, 'maths', 8),
(150, 26, 'total', 9),
(151, 26, '%', 10),
(152, 26, 'rank', 11),
(153, 27, 'phy.', 3),
(154, 27, 'chem.', 4),
(155, 27, 'bio.', 8),
(156, 27, 'total', 9),
(157, 27, '%', 10),
(158, 27, 'rank', 11),
(159, 28, 'phy.', 3),
(160, 28, 'chem.', 4),
(161, 28, 'total', 8),
(162, 28, '%', 9),
(163, 28, 'rank', 10),
(164, 29, 'phy.', 3),
(165, 29, 'chem.', 4),
(166, 29, 'maths', 8),
(167, 29, 'total', 9),
(168, 29, '%', 10),
(169, 29, 'rank', 11),
(170, 30, 'eng.', 3),
(171, 30, 'sci.', 4),
(172, 30, 'maths', 8),
(173, 30, 'total', 9),
(174, 30, '%', 10),
(175, 30, 'rank', 11),
(176, 31, 'phy.', 3),
(177, 31, 'chem.', 4),
(178, 31, 'bio.', 8),
(179, 31, 'g.k.', 9),
(180, 31, 'total', 10),
(181, 31, '%', 11),
(182, 31, 'rank', 12),
(183, 32, 'phy.', 3),
(184, 32, 'chem.', 4),
(185, 32, 'bio.', 8),
(186, 32, 'total', 9),
(187, 32, '%', 10),
(188, 32, 'rank', 11),
(189, 33, 'phy.', 3),
(190, 33, 'chem.', 4),
(191, 33, 'maths', 8),
(192, 33, 'total', 9),
(193, 33, '%', 10),
(194, 33, 'rank', 11),
(195, 34, 'phy.', 3),
(196, 34, 'chem.', 4),
(197, 34, 'maths', 8),
(198, 34, 'total', 9),
(199, 34, '%', 10),
(200, 34, 'rank', 11),
(201, 35, 'eng.', 3),
(202, 35, 'sci.', 4),
(203, 35, 'maths', 8),
(204, 35, 'total', 9),
(205, 35, '%', 10),
(206, 35, 'rank', 11),
(207, 36, 'phy.', 3),
(208, 36, 'chem.', 4),
(209, 36, 'bio.', 8),
(210, 36, 'g.k.', 9),
(211, 36, 'total', 10),
(212, 36, '%', 11),
(213, 36, 'rank', 12),
(216, 28, 'maths', 5),
(225, 2, 'aja', 2);

-- --------------------------------------------------------

--
-- Table structure for table `decm`
--

CREATE TABLE `decm` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `id` int(11) NOT NULL,
  `mobile` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`id`, `mobile`) VALUES
(1, '8058907999,8947800330');

-- --------------------------------------------------------

--
-- Table structure for table `employee_profile`
--

CREATE TABLE `employee_profile` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_f_name` varchar(50) DEFAULT NULL,
  `emp_m_name` varchar(50) DEFAULT NULL,
  `degination` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `self_mobile` varchar(12) DEFAULT NULL,
  `father_mobile` varchar(12) DEFAULT NULL,
  `mother_mobile` varchar(12) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `corrs_address` text,
  `corrs_state` varchar(30) DEFAULT NULL,
  `corrs_district` varchar(30) DEFAULT NULL,
  `corrs_tehsil` varchar(30) DEFAULT NULL,
  `corrs_city` varchar(30) DEFAULT NULL,
  `corrs_pin` varchar(10) DEFAULT NULL,
  `per_add` text,
  `per_state` varchar(30) DEFAULT NULL,
  `per_district` varchar(30) DEFAULT NULL,
  `per_tehsil` varchar(30) DEFAULT NULL,
  `per_city` varchar(30) DEFAULT NULL,
  `per_pin` varchar(10) DEFAULT NULL,
  `doj` varchar(12) DEFAULT NULL,
  `dol` varchar(12) DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL,
  `working_hour` varchar(4) DEFAULT NULL,
  `office_time_in` varchar(20) DEFAULT NULL,
  `office_time_out` varchar(20) DEFAULT NULL,
  `joining_person` varchar(50) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `remark` text,
  `upload_resume` text,
  `upload_photo` text,
  `leave_with_salary` int(2) NOT NULL DEFAULT '0',
  `submit_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_profile`
--

INSERT INTO `employee_profile` (`id`, `emp_id`, `emp_name`, `emp_f_name`, `emp_m_name`, `degination`, `email`, `self_mobile`, `father_mobile`, `mother_mobile`, `gender`, `dob`, `landline`, `corrs_address`, `corrs_state`, `corrs_district`, `corrs_tehsil`, `corrs_city`, `corrs_pin`, `per_add`, `per_state`, `per_district`, `per_tehsil`, `per_city`, `per_pin`, `doj`, `dol`, `salary`, `working_hour`, `office_time_in`, `office_time_out`, `joining_person`, `reference`, `remark`, `upload_resume`, `upload_photo`, `leave_with_salary`, `submit_by`) VALUES
(8, '00000125', 'Raj Verma', 'asdf', 'lkj', 'operator', 'rajverma827@gmail.com', '8947800330', '', '', 'male', '2018-08-15', '', 'sdf', 'jk', 'jk', 'jk', 'jk', '334001', 'sdf', 'jk', 'jk', 'jk', 'jk', '334001', '', '', '10000', '7', '07:30 am', '02:30 pm', 'Mr. Jethmal Sir', '', '', NULL, NULL, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp_exe`
--

CREATE TABLE `emp_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_exe`
--

INSERT INTO `emp_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/emp_exe/15_Aug_2018_emplist.xls', '2018-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `purpose` text NOT NULL,
  `date` date NOT NULL,
  `total_amount` text NOT NULL,
  `org_name` text NOT NULL,
  `remark` text NOT NULL,
  `upload_bill` text NOT NULL,
  `submit_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `purpose`, `date`, `total_amount`, `org_name`, `remark`, `upload_bill`, `submit_by`) VALUES
(1, 'website', '2018-07-27', '60000', '1', '     this is remark this is remark  this is remark this is remark   this is remark this is remark  this is remark this is remark    this is remark this is remark  this is remark this is remark   this is remark this is remark  this is remark this is remark', 'include/bills/min-1532717857pexels-photo-279470.jpeg', 1),
(2, 'extra da do', '2018-07-28', '50000', '2', '', '', 1),
(3, 'mujha da do', '2018-07-28', '100000', '3', '', 'include/bills/min-1532719634pexels-photo-279470.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feb`
--

CREATE TABLE `feb` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `roll` varchar(10) DEFAULT NULL,
  `recipt_no` varchar(10) NOT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `pay_by` enum('cash','cheque','dd') DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `bank_name` varchar(50) NOT NULL,
  `submit_by` int(11) NOT NULL,
  `by_pdc` enum('y','n') DEFAULT 'n',
  `refund` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `roll`, `recipt_no`, `amount`, `pay_by`, `number`, `datee`, `bank_name`, `submit_by`, `by_pdc`, `refund`) VALUES
(1, '55555', '1', '3000', 'cash', NULL, '2018-08-07', '', 1, 'n', 'n'),
(2, '11111', '2', '3000', 'cash', NULL, '2018-08-13', '', 1, 'n', 'n'),
(4, '55555', '3', '6000', 'cheque', '12322', '2018-08-13', 'sbi', 1, 'n', 'n'),
(5, '51201', '4', '25600', 'cash', NULL, '2018-04-16', '', 15, 'n', 'n'),
(7, '51401', '220', '3424', 'cash', NULL, '2018-08-14', '', 15, 'n', 'n'),
(8, '51401', '1285', '21695', 'cheque', '687767', '2018-05-24', 'SBI', 15, 'n', 'n'),
(9, '51401', '2537', '4272', 'cash', NULL, '2018-08-14', '', 15, 'n', 'n'),
(10, '51255', '1674', '3424', 'cash', NULL, '2018-06-14', '', 15, 'n', 'n'),
(11, '51255', '2001', '21695', 'cash', NULL, '2018-06-25', '', 15, 'n', 'n'),
(12, '51255', '2519', '21694', 'cheque', '014844', '2018-08-03', 'SBI', 15, 'n', 'n'),
(13, '51217', '501', '3424', 'cash', NULL, '2018-04-21', '', 15, 'n', 'n'),
(14, '51217', '1143', '21186', 'cash', NULL, '2018-05-17', '', 15, 'n', 'n'),
(15, '51133', '1832', '3390.00', 'cash', NULL, '2018-08-14', '', 15, 'n', 'n'),
(16, '51133', '2541', '21694', 'cash', NULL, '2018-08-05', '', 15, 'n', 'n'),
(17, '51509', '317', '3424', 'cash', NULL, '2018-04-14', '', 15, 'n', 'n'),
(18, '51509', '1255', '18220', 'cash', NULL, '2018-05-23', '', 15, 'n', 'n'),
(19, '51713', '458', '3424', 'cash', NULL, '2018-04-19', '', 15, 'n', 'n'),
(20, '51713', '1214', '21695', 'cash', NULL, '2018-05-21', '', 15, 'n', 'n'),
(21, '51525', '391', '3424', 'cash', NULL, '2018-04-17', '', 15, 'n', 'n'),
(22, '51525', '671', '21695', 'cash', NULL, '2018-02-05', '', 15, 'n', 'n'),
(23, '51244', '927', '3424', 'cash', NULL, '2018-05-09', '', 15, 'n', 'n'),
(24, '51244', '1303', '21610', 'cash', NULL, '2018-05-25', '', 15, 'n', 'n'),
(26, '52001', '133', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(27, '52001', '865', '21000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(28, '51402', '204', '3000', 'cheque', '811175', '2018-04-09', 'SBI', 15, 'n', 'n'),
(29, '52001', '2196', '32203', 'cash', NULL, '2018-07-05', '', 16, 'n', 'n'),
(30, '51402', '505', '21695', 'cheque', '811176', '2018-04-21', 'SBI', 15, 'n', 'n'),
(31, '52553', '829', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(32, '52101', '51', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(33, '51487', '805', '3390', 'cash', NULL, '2018-05-04', '', 15, 'n', 'n'),
(34, '52101', '928', '25425', 'cheque', '288', '2018-04-13', 'PNB BANK', 16, 'n', 'n'),
(35, '61017', '1641', '3424', 'cash', NULL, '2018-06-11', '', 15, 'n', 'n'),
(36, '52102', '64', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(37, '51747', '2353', '3390', 'cash', NULL, '2018-07-16', '', 15, 'n', 'n'),
(38, '51516', '356', '3424', 'cash', NULL, '2018-04-15', '', 15, 'n', 'n'),
(39, '52103', '22', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(40, '52103', '477', '21186', 'cash', NULL, '2018-04-19', '', 16, 'n', 'n'),
(41, '51239', '718', '3424', 'cash', NULL, '2018-03-05', '', 15, 'n', 'n'),
(42, '52306', '802', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(43, '52204', '200', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(44, '52204', '203', '21153', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(45, '51814', '1698', '3424', 'cash', NULL, '2018-06-14', '', 15, 'n', 'n'),
(46, '51487', '1226', '21695', 'cash', NULL, '2018-05-21', '', 15, 'n', 'n'),
(47, '52564', '716', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(48, '51487', '2588', '19949', 'cash', NULL, '2018-07-08', '', 15, 'n', 'n'),
(49, '52564', '1234', '21000', 'cash', NULL, '2018-05-22', '', 16, 'n', 'n'),
(50, '51734', '2244', '3390', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(51, '51247', '928', '3000', 'cash', NULL, '2018-05-09', '', 15, 'n', 'n'),
(52, '62001', '241', '3000', 'cheque', '233688', '2018-04-11', 'state bank of india ', 16, 'n', 'n'),
(53, '52104', '36', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(54, '52104', '597', '21000', 'cheque', '00004', '2018-04-26', 'state bank of india ', 16, 'n', 'n'),
(55, '52104', '2570', '21000', 'cash', NULL, '2018-08-06', '', 16, 'n', 'n'),
(56, '52106', '24', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(57, '52106', '277', '16440', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(58, '52106', '2590', '16441', 'cash', NULL, '2018-08-07', '', 16, 'n', 'n'),
(59, '52358', '916', '3424', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(60, '52648', '1016', '3424', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(61, '52648', '1574', '21694', 'cash', NULL, '2018-06-08', '', 16, 'n', 'n'),
(62, '52108', '11', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(63, '52109', '81', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(64, '52573', '1279', '2966', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(65, '52573', '2423', '12711', 'cash', NULL, '2018-07-21', '', 16, 'n', 'n'),
(66, '52633', '759', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(67, '51617', '2127', '3424', 'cash', NULL, '2018-07-02', '', 15, 'n', 'n'),
(68, '52633', '1154', '15500', 'cash', NULL, '2018-05-17', '', 16, 'n', 'n'),
(69, '51617', '2322', '16440', 'cash', NULL, '2018-07-13', '', 15, 'n', 'n'),
(70, '52307', '798', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(71, '51827', '1799', '3424', 'cash', NULL, '2018-06-18', '', 15, 'n', 'n'),
(72, '52307', '1236', '33602', 'cash', NULL, '2018-05-22', '', 16, 'n', 'n'),
(73, '51827', '2436', '18644', 'cheque', '245532', '2018-07-25', 'SBI', 15, 'n', 'n'),
(74, '51827', '2437', '3051', 'cash', NULL, '2018-07-25', '', 15, 'n', 'n'),
(75, '51135', '1897', '3424', 'cash', NULL, '2018-06-21', '', 15, 'n', 'n'),
(76, '51135', '2119', '18220', 'cash', NULL, '2018-07-01', '', 15, 'n', 'n'),
(77, '51859', '2027', '3390', 'cash', NULL, '2018-06-26', '', 15, 'n', 'n'),
(78, '51859', '2087', '18220', 'cash', NULL, '2018-06-29', '', 15, 'n', 'n'),
(79, '51716', '661', '3424', 'cash', NULL, '2018-05-01', '', 15, 'n', 'n'),
(80, '51716', '1196', '21694', 'cash', NULL, '2018-05-20', '', 15, 'n', 'n'),
(81, '51605', '1960', '3424', 'cash', NULL, '2018-06-24', '', 15, 'n', 'n'),
(82, '51486', '747', '3424', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(83, '51501', '149', '3000', 'cash', NULL, '2018-04-07', '', 15, 'n', 'n'),
(84, '51501', '506', '21695', 'cheque', '677481', '2018-04-21', 'SBI', 15, 'n', 'n'),
(85, '51501', '122', '424', 'cash', NULL, '2018-04-06', '', 15, 'n', 'n'),
(86, '51708', '432', '3424', 'cash', NULL, '2018-04-18', '', 15, 'n', 'n'),
(87, '51708', '1495', '21695', 'cheque', '760958', '2018-06-04', 'SBI', 15, 'n', 'n'),
(88, '51877', '2048', '3424', 'cash', NULL, '2018-06-27', '', 15, 'n', 'n'),
(89, '51877', '2200', '18220', 'cash', NULL, '2018-07-05', '', 15, 'n', 'n'),
(90, '51804', '1672', '3424', 'cash', NULL, '2018-06-13', '', 15, 'n', 'n'),
(91, '51144', '2195', '3390', 'cash', NULL, '2018-07-04', '', 15, 'n', 'n'),
(92, '51144', '2491', '21694', 'cash', NULL, '2018-08-01', '', 15, 'n', 'n'),
(93, '61023', '2104', '3424', 'cash', NULL, '2018-06-30', '', 15, 'n', 'n'),
(94, '51552', '945', '3427', 'cash', NULL, '2018-05-10', '', 15, 'n', 'n'),
(95, '51552', '2313', '21694', 'cash', NULL, '2018-07-12', '', 15, 'n', 'n'),
(96, '61012', '1004', '3424', 'cash', NULL, '2018-05-13', '', 15, 'n', 'n'),
(97, '51142', '2151', '3424', 'cash', NULL, '2018-07-02', '', 15, 'n', 'n'),
(98, '51142', '2469', '18220', 'cash', NULL, '2018-07-30', '', 15, 'n', 'n'),
(99, '51233', '636', '3424', 'cash', NULL, '2018-08-14', '', 15, 'n', 'n'),
(100, '51492', '1571', '3390', 'cash', NULL, '2018-06-08', '', 15, 'n', 'n'),
(101, '51492', '1899', '16441', 'cash', NULL, '2018-06-21', '', 15, 'n', 'n'),
(102, '51739', '2245', '3390', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(103, '51220', '531', '3424', 'cash', NULL, '2018-04-23', '', 15, 'n', 'n'),
(104, '51220', '637', '21695', 'cash', NULL, '2018-01-05', '', 15, 'n', 'n'),
(105, '51722', '841', '3424', 'cash', NULL, '2018-05-05', '', 15, 'n', 'n'),
(106, '51722', '947', '21695', 'cash', NULL, '2018-05-10', '', 15, 'n', 'n'),
(107, '51835', '1883', '3390', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(108, '51241', '715', '3424', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(109, '51241', '1475', '19661', 'cash', NULL, '2018-06-03', '', 15, 'n', 'n'),
(110, '61005', '383', '3424', 'cash', NULL, '2018-04-16', '', 15, 'n', 'n'),
(111, '61005', '1432', '23729', 'cash', NULL, '2018-08-14', '', 15, 'n', 'n'),
(112, '51522', '367', '3424', 'cash', NULL, '2018-04-16', '', 15, 'n', 'n'),
(113, '51522', '1713', '21186', 'cash', NULL, '2018-06-15', '', 15, 'n', 'n'),
(114, '51240', '717', '3424', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(115, '51625', '2321', '3390', 'cash', NULL, '2018-07-13', '', 15, 'n', 'n'),
(116, '51625', '2496', '21695', 'cash', NULL, '2018-08-02', '', 15, 'n', 'n'),
(117, '51825', '1766', '3424', 'cash', NULL, '2018-06-17', '', 15, 'n', 'n'),
(118, '51825', '2259', '16640', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(119, '51294', '2058', '3424', 'cash', NULL, '2018-06-27', '', 15, 'n', 'n'),
(120, '51820', '1754', '3424', 'cash', NULL, '2018-06-16', '', 15, 'n', 'n'),
(121, '51820', '2330', '18220', 'cheque', '987456', '2018-07-13', 'SBI', 15, 'n', 'n'),
(122, '51404', '237', '3424', 'cash', NULL, '2018-04-11', '', 15, 'n', 'n'),
(123, '51733', '2242', '3390', 'cash', NULL, '2018-07-08', '', 15, 'n', 'n'),
(124, '51405', '233', '3424', 'cash', NULL, '2018-04-11', '', 15, 'n', 'n'),
(125, '51405', '457', '21695', 'cash', NULL, '2018-04-19', '', 15, 'n', 'n'),
(126, '52617', '1927', '3390', 'cash', NULL, '2018-06-22', '', 15, 'n', 'n'),
(127, '51851', '1905', '3424', 'cash', NULL, '2018-06-21', '', 15, 'n', 'n'),
(128, '51851', '2370', '21694', 'cash', NULL, '2018-07-17', '', 15, 'n', 'n'),
(129, '51488', '1243', '3390', 'cash', NULL, '2018-05-22', '', 15, 'n', 'n'),
(130, '51853', '2021', '3424', 'cash', NULL, '2018-06-26', '', 15, 'n', 'n'),
(131, '51807', '1948', '3423', 'cash', NULL, '2018-06-23', '', 15, 'n', 'n'),
(132, '51127', '1729', '3424', 'cash', NULL, '2018-06-15', '', 15, 'n', 'n'),
(133, '51127', '2343', '21694', 'cash', NULL, '2018-07-14', '', 15, 'n', 'n'),
(134, '51406', '261', '3390', 'cash', NULL, '2018-04-12', '', 15, 'n', 'n'),
(135, '51406', '1286', '21700', 'cheque', '00010', '2018-05-24', 'SBI', 15, 'n', 'n'),
(136, '51506', '307', '3424', 'cash', NULL, '2018-04-14', '', 15, 'n', 'n'),
(137, '51506', '510', '21695', 'cheque', '782736', '2018-04-22', 'SBI', 15, 'n', 'n'),
(138, '51235', '685', '3424', 'cash', NULL, '2018-05-02', '', 15, 'n', 'n'),
(139, '51407', '178', '3424', 'cash', NULL, '2018-04-09', '', 15, 'n', 'n'),
(140, '51844', '1893', '3424', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(141, '51844', '2376', '19915', 'cash', NULL, '2018-07-17', '', 15, 'n', 'n'),
(142, '51249', '1037', '3424', 'cash', NULL, '2018-05-14', '', 15, 'n', 'n'),
(143, '52415', '824', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(144, '51249', '1221', '21695', 'cash', NULL, '2018-05-21', '', 15, 'n', 'n'),
(145, '52350', '788', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(146, '51515', '341', '3424', 'cash', NULL, '2018-04-15', '', 15, 'n', 'n'),
(147, '52334', '932', '2966', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(148, '52334', '1450', '16949', 'cash', NULL, '2018-06-01', '', 16, 'n', 'n'),
(149, '52439', '974', '2966', 'cash', NULL, '2018-05-12', '', 16, 'n', 'n'),
(150, '51490', '690', '3424', 'cash', NULL, '2018-05-02', '', 15, 'n', 'n'),
(151, '51490', '2155', '21695', 'cash', NULL, '2018-07-02', '', 15, 'n', 'n'),
(152, '52111', '37', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(153, '51490', '2561', '21694', 'cash', NULL, '2018-06-08', '', 15, 'n', 'n'),
(154, '51245', '939', '3390', 'cash', NULL, '2018-05-10', '', 15, 'n', 'n'),
(155, '51742', '2305', '3424', 'cash', NULL, '2018-07-11', '', 15, 'n', 'n'),
(156, '51868', '2139', '3390', 'cash', NULL, '2018-07-02', '', 15, 'n', 'n'),
(157, '51868', '2296', '21695', 'cash', NULL, '2018-07-11', '', 15, 'n', 'n'),
(158, '51547', '774', '3424', 'cash', NULL, '2018-05-04', '', 15, 'n', 'n'),
(159, '51250', '1113', '3424', 'cash', NULL, '2018-05-16', '', 15, 'n', 'n'),
(160, '51250', '1459', '18203', 'cash', NULL, '2018-06-02', '', 15, 'n', 'n'),
(161, '51250', '2621', '18203', 'cash', NULL, '2018-08-11', '', 15, 'n', 'n'),
(162, '52111', '266', '21700', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(163, '51822', '1747', '3424', 'cash', NULL, '2018-06-16', '', 15, 'n', 'n'),
(164, '52111', '266', '21700', 'cheque', '185042', '2018-04-12', 'state bank of india ', 16, 'n', 'n'),
(165, '51822', '1749', '21695', 'cash', NULL, '2018-06-16', '', 15, 'n', 'n'),
(166, '51531', '438', '3424', 'cash', NULL, '2018-04-18', '', 15, 'n', 'n'),
(167, '52332', '937', '2966', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(168, '51531', '511', '21695', 'cheque', '046715', '2018-04-22', 'SBI', 15, 'n', 'n'),
(169, '51810', '1678', '3424', 'cash', NULL, '2018-06-14', '', 15, 'n', 'n'),
(170, '52112', '275', '3000', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(171, '51810', '1860', '21695', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(172, '52112', '860', '21000', 'cheque', '001999', '2018-05-07', 'state bank of india ', 16, 'n', 'n'),
(173, '52113', '87', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(174, '51737', '2285', '3390', 'cash', NULL, '2018-07-10', '', 15, 'n', 'n'),
(175, '52197', '132', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(176, '51876', '2163', '3390', 'cash', NULL, '2018-07-03', '', 15, 'n', 'n'),
(177, '52197', '587', '21000', 'cash', NULL, '2018-04-25', '', 16, 'n', 'n'),
(178, '51560', '1300', '3390', 'cash', NULL, '2018-05-25', '', 15, 'n', 'n'),
(179, '51560', '1870', '21694', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(180, '52401', '611', '3000', 'cash', NULL, '2018-04-27', '', 16, 'n', 'n'),
(181, '51409', '247', '3424', 'cash', NULL, '2018-04-11', '', 15, 'n', 'n'),
(182, '52401', '1535', '21000', 'cash', NULL, '2018-06-07', '', 16, 'n', 'n'),
(183, '52005', '205', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(184, '51409', '767', '21695', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(185, '52303', '755', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(186, '51741', '2248', '3424', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(187, '52303', '1083', '15254', 'cheque', '879091', '2018-05-15', 'state bank of india ', 16, 'n', 'n'),
(188, '52303', '2555', '15254', 'cash', NULL, '2018-08-06', '', 16, 'n', 'n'),
(189, '51741', '2489', '21694', 'cash', NULL, '2018-08-01', '', 15, 'n', 'n'),
(190, '51607', '1998', '3424', 'cash', NULL, '2018-06-25', '', 15, 'n', 'n'),
(191, '52115', '62', '3390', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(192, '52115', '975', '19068', 'cheque', '459561', '2018-04-23', 'state bank of india ', 16, 'n', 'n'),
(193, '51537', '609', '3424', 'cash', NULL, '2018-04-27', '', 15, 'n', 'n'),
(194, '52507', '910', '3000', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(195, '52551', '786', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(196, '52551', '1369', '20339', 'cash', NULL, '2018-05-29', '', 16, 'n', 'n'),
(197, '51614', '2071', '3424', 'cash', NULL, '2018-06-28', '', 15, 'n', 'n'),
(198, '52357', '935', '3424', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(199, '51614', '2354', '19949', 'cash', NULL, '2018-07-16', '', 15, 'n', 'n'),
(200, '52007', '124', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(201, '51533', '484', '3424', 'cash', NULL, '2018-04-20', '', 15, 'n', 'n'),
(202, '52007', '580', '21700', 'cheque', '036504', '2018-04-25', 'state bank of india ', 16, 'n', 'n'),
(203, '51533', '1894', '18203', 'cash', NULL, '2018-06-21', '', 15, 'n', 'n'),
(204, '52007', '2457', '21700', 'cash', NULL, '2018-04-26', '', 16, 'n', 'n'),
(205, '51616', '1862', '3390', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(206, '52550', '795', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(207, '52550', '1235', '17966', 'cash', NULL, '2018-05-22', '', 16, 'n', 'n'),
(208, '61026', '2093', '3390', 'cash', NULL, '2018-06-29', '', 15, 'n', 'n'),
(209, '51508', '311', '3424', 'cash', NULL, '2018-02-14', '', 15, 'n', 'n'),
(210, '51508', '1326', '21695', 'cash', NULL, '2018-05-26', '', 15, 'n', 'n'),
(211, '52009', '448', '3000', 'cash', NULL, '2018-04-19', '', 16, 'n', 'n'),
(212, '51565', '1827', '3424', 'cash', NULL, '2018-06-19', '', 15, 'n', 'n'),
(213, '52009', '1901', '21695', 'cheque', '949592', '2018-06-21', 'state bank of india ', 16, 'n', 'n'),
(214, '52568', '871', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(215, '51565', '2191', '19950', 'cheque', '559791', '2018-07-04', 'SBI', 15, 'n', 'n'),
(216, '52568', '879', '21000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(217, '52568', '2534', '21000', 'cash', NULL, '2018-08-04', '', 16, 'n', 'n'),
(218, '52363', '976', '3424', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(219, '52118', '52', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(220, '52118', '595', '15750', 'cheque', '677140', '2018-04-26', 'state bank of india ', 16, 'n', 'n'),
(221, '52118', '2049', '15950', 'cheque', '0677141', '2018-06-27', 'state bank of india ', 16, 'n', 'n'),
(222, '52119', '57', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(223, '51723', '818', '3424', 'cash', NULL, '2018-05-05', '', 15, 'n', 'n'),
(224, '52119', '456', '42373', 'cheque', '690259', '2018-04-19', 'state bank of india ', 16, 'n', 'n'),
(225, '52504', '801', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(226, '52010', '23', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(227, '51733', '820', '3424', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(228, '52611', '827', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(229, '51723', '1199', '21694', 'cash', NULL, '2018-05-20', '', 15, 'n', 'n'),
(230, '52611', '977', '19492', 'cash', NULL, '2018-06-04', '', 16, 'n', 'n'),
(231, '51410', '110', '424', 'cash', NULL, '2018-04-06', '', 15, 'n', 'n'),
(232, '51410', '155', '3000', 'cash', NULL, '2018-04-08', '', 15, 'n', 'n'),
(233, '52011', '41', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(234, '52011', '290', '20975', 'cash', NULL, '2018-04-13', '', 16, 'n', 'n'),
(235, '51410', '431', '21700', 'cheque', '407002', '2018-04-17', 'SBI', 15, 'n', 'n'),
(236, '52011', '2565', '21000', 'cash', NULL, '2018-08-06', '', 16, 'n', 'n'),
(237, '52617', '813', '21000', 'cash', NULL, '2018-05-21', '', 16, 'n', 'n'),
(238, '51246', '482', '3390', 'cash', NULL, '2018-04-20', '', 15, 'n', 'n'),
(239, '52517', '831', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(240, '51411', '209', '3424', 'cash', NULL, '2018-04-08', '', 15, 'n', 'n'),
(241, '52534', '807', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(242, '51411', '504', '21695', 'cash', NULL, '2018-04-21', '', 15, 'n', 'n'),
(243, '51411', '2564', '21694', 'cash', NULL, '2018-08-06', '', 15, 'n', 'n'),
(244, '52534', '1980', '21186', 'cash', NULL, '2018-06-25', '', 16, 'n', 'n'),
(245, '52532', '810', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(246, '51569', '1853', '3390', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(247, '52532', '2617', '21000', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(248, '52120', '53', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(249, '52120', '278', '19950', 'cheque', '765056', '2018-04-12', 'state bank of india ', 16, 'n', 'n'),
(250, '51216', '35', '3424', 'cash', NULL, '2018-04-05', '', 15, 'n', 'n'),
(251, '52544', '839', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(252, '51216', '1457', '16440', 'cheque', '583310', '2018-06-02', 'SBI', 15, 'n', 'n'),
(253, '52544', '1282', '21000', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(254, '51216', '2574', '16440', 'cheque', '583325', '2018-08-07', 'SBI', 15, 'n', 'n'),
(255, '62005', '469', '2966', 'cash', NULL, '2018-04-19', '', 16, 'n', 'n'),
(256, '51222', '590', '3424', 'cash', NULL, '2018-04-25', '', 15, 'n', 'n'),
(257, '52080', '131', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(258, '52080', '403', '21000', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(259, '51222', '732', '21610', 'cash', NULL, '2018-03-05', '', 15, 'n', 'n'),
(260, '52080', '2278', '21000', 'cash', NULL, '2018-07-10', '', 16, 'n', 'n'),
(261, '52527', '735', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(262, '51843', '1933', '3390', 'cash', NULL, '2018-06-22', '', 15, 'n', 'n'),
(263, '52411', '862', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(264, '52411', '1160', '21000', 'cheque', '902309', '2018-05-17', 'state bank of india ', 16, 'n', 'n'),
(265, '52411', '2544', '21000', 'cheque', '902312', '2018-08-06', 'state bank of india ', 16, 'n', 'n'),
(266, '51843', '2505', '21695', 'dd', 'SBI', '2018-08-02', 'SBI', 15, 'n', 'n'),
(267, '52404', '678', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(268, '52404', '1205', '21186', 'cheque', '671981', '2018-05-21', 'state bank of india ', 16, 'n', 'n'),
(269, '51843', '2516', '18220', 'cheque', '680777', '2018-08-03', 'SBI', 15, 'n', 'n'),
(270, '52404', '2526', '21186', 'cash', NULL, '2018-08-04', '', 16, 'n', 'n'),
(271, '52654', '1276', '3000', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(272, '51412', '60', '3424', 'cash', NULL, '2018-04-05', '', 15, 'n', 'n'),
(273, '52013', '72', '3424', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(274, '51412', '464', '21700', 'cheque', '481387', '2018-04-19', 'SBI', 15, 'n', 'n'),
(275, '52013', '312', '23864', 'cheque', '770841', '2018-04-14', 'state bank of india ', 16, 'n', 'n'),
(276, '51413', '238', '3424', 'cash', NULL, '2018-04-11', '', 15, 'n', 'n'),
(277, '52124', '156', '3000', 'cash', NULL, '2018-04-08', '', 16, 'n', 'n'),
(278, '51413', '1356', '21695', 'cheque', '000016', '2018-05-28', 'SBI', 15, 'n', 'n'),
(279, '52124', '1039', '21694', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(280, '51414', '2', '3000', 'cash', NULL, '2018-04-03', '', 15, 'n', 'n'),
(281, '51414', '509', '21695', 'cash', NULL, '2018-04-22', '', 15, 'n', 'n'),
(282, '52554', '743', '2966', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(283, '52554', '1567', '20399', 'cash', NULL, '2018-06-08', '', 16, 'n', 'n'),
(284, '51414', '2566', '21695', 'cash', NULL, '2018-08-06', '', 15, 'n', 'n'),
(285, '52529', '885', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(286, '51867', '2099', '3390', 'cash', NULL, '2018-06-29', '', 15, 'n', 'n'),
(287, '52125', '45', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(288, '52125', '420', '16449', 'cheque', '375928', '2018-04-17', 'state bank of india ', 16, 'n', 'n'),
(289, '52125', '2047', '16449', 'cheque', '375929', '2018-06-27', 'state bank of india ', 16, 'n', 'n'),
(290, '52126', '97', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(291, '51867', '2399', '21770', 'cheque', '599987', '2018-07-18', 'SBI', 15, 'n', 'n'),
(292, '52126', '320', '14000', 'cheque', '868899', '2018-04-14', 'state bank of india ', 16, 'n', 'n'),
(293, '52427', '706', '3390', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(294, '51121', '1610', '3424', 'cash', NULL, '2018-06-10', '', 15, 'n', 'n'),
(295, '52427', '1081', '21695', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(296, '51105', '1421', '3424', 'cash', NULL, '2018-05-31', '', 15, 'n', 'n'),
(297, '51105', '1776', '18136', 'cash', NULL, '2018-06-17', '', 15, 'n', 'n'),
(298, '52608', '692', '2966', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(299, '52608', '1922', '20763', 'cash', NULL, '2018-06-21', '', 16, 'n', 'n'),
(300, '51527', '398', '3424', 'cash', NULL, '2018-04-17', '', 15, 'n', 'n'),
(301, '51527', '1296', '21695', 'cash', NULL, '2018-05-24', '', 15, 'n', 'n'),
(302, '61021', '2064', '3424', 'cash', NULL, '2018-06-27', '', 15, 'n', 'n'),
(303, '52127', '13', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(304, '52127', '255', '58000', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(305, '51117', '1601', '3424', 'cash', NULL, '2018-06-09', '', 15, 'n', 'n'),
(306, '52014', '772', '3424', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(307, '51117', '1625', '21695', 'cash', NULL, '2018-06-11', '', 15, 'n', 'n'),
(308, '52014', '346', '19915', 'cash', NULL, '2018-04-15', '', 16, 'n', 'n'),
(309, '52014', '2456', '19915', 'cash', NULL, '2018-08-06', '', 16, 'n', 'n'),
(310, '52634', '26', '3424', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(311, '52634', '1109', '21695', 'cash', NULL, '2018-05-16', '', 16, 'n', 'n'),
(312, '52634', '2456', '21700', 'cheque', '020441', '2018-07-26', 'state bank of india ', 16, 'n', 'n'),
(313, '51801', '1682', '3390', 'cash', NULL, '2018-06-14', '', 15, 'n', 'n'),
(314, '62006', '260', '3000', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(315, '51623', '2290', '3424', 'cash', NULL, '2018-07-11', '', 15, 'n', 'n'),
(316, '62006', '1456', '24661', 'cash', NULL, '2018-06-02', '', 16, 'n', 'n'),
(317, '51720', '855', '3424', 'cash', NULL, '2018-05-07', '', 15, 'n', 'n'),
(318, '51720', '1265', '21695', 'cash', NULL, '2018-05-23', '', 15, 'n', 'n'),
(319, '52438', '725', '2966', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(320, '52438', '2472', '25000', 'cash', NULL, '2018-07-31', '', 16, 'n', 'n'),
(321, '52359', '866', '3424', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(322, '52359', '1025', '21695', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(323, '52559', '1292', '3390', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(324, '52559', '1312', '16950', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(325, '52129', '171', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(326, '52129', '421', '18200', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(327, '52636', '646', '3424', 'cash', NULL, '2018-05-01', '', 16, 'n', 'n'),
(328, '61018', '1869', '3424', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(329, '51558', '1134', '3390', 'cash', NULL, '2018-05-17', '', 15, 'n', 'n'),
(330, '51558', '1422', '21186', 'cash', NULL, '2018-05-31', '', 15, 'n', 'n'),
(331, '51232', '711', '3424', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(332, '52321', '768', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(333, '51232', '1232', '21700', 'cheque', '486308', '2018-05-22', 'SBI', 15, 'n', 'n'),
(334, '52321', '1953', '21186', 'cash', NULL, '2018-06-23', '', 16, 'n', 'n'),
(335, '52015', '396', '3000', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(336, '52131', '119', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(337, '51416', '108', '3424', 'cash', NULL, '2018-04-06', '', 15, 'n', 'n'),
(338, '52354', '709', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(339, '51416', '1547', '21695', 'dd', 'SBI', '2018-06-07', '20.04.2018', 15, 'n', 'n'),
(340, '52354', '1240', '21000', 'cash', NULL, '2018-05-22', '', 16, 'n', 'n'),
(341, '52505', '691', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(342, '51248', '943', '3424', 'cash', NULL, '2018-05-10', '', 15, 'n', 'n'),
(343, '51248', '1257', '21610', 'cash', NULL, '2018-05-23', '', 15, 'n', 'n'),
(344, '51248', '2483', '21610', 'cash', NULL, '2018-08-01', '', 15, 'n', 'n'),
(345, '52651', '990', '3424', 'cash', NULL, '2018-05-13', '', 16, 'n', 'n'),
(346, '52651', '1447', '21695', 'cash', NULL, '2018-06-01', '', 16, 'n', 'n'),
(347, '51417', '145', '2966', 'cash', NULL, '2018-04-07', '', 15, 'n', 'n'),
(348, '52651', '2607', '21694', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(349, '52526', '654', '3000', 'cash', NULL, '2018-05-01', '', 16, 'n', 'n'),
(350, '52526', '1386', '58000', 'cash', NULL, '2018-05-29', '', 16, 'n', 'n'),
(351, '52082', '252', '3390', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(352, '52310', '670', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(353, '52310', '874', '53000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(354, '52418', '680', '3000', 'cash', NULL, '2018-08-14', '', 16, 'n', 'n'),
(355, '52418', '989', '42372', 'cash', NULL, '2018-05-13', '', 16, 'n', 'n'),
(356, '52418', '2625', '17627', 'cash', NULL, '2018-08-11', '', 16, 'n', 'n'),
(357, '52132', '221', '3000', 'cash', NULL, '2018-04-10', '', 16, 'n', 'n'),
(358, '51491', '1283', '3424', 'cash', NULL, '2018-05-25', '', 15, 'n', 'n'),
(359, '52132', '493', '43000', 'cheque', '000021', '2018-04-20', 'state bank of india ', 16, 'n', 'n'),
(360, '51491', '991', '21695', 'dd', 'SBI', '2018-06-25', '25.06.2018', 15, 'n', 'n'),
(361, '52330', '608', '3008', 'cash', NULL, '2018-04-27', '', 16, 'n', 'n'),
(362, '52330', '1302', '21000', 'cheque', '128366', '2018-05-25', 'state bank of india ', 16, 'n', 'n'),
(363, '52330', '2494', '21000', 'cheque', '128368', '2018-08-02', 'state bank of india ', 16, 'n', 'n'),
(364, '51131', '1843', '3424', 'cash', NULL, '2018-06-19', '', 15, 'n', 'n'),
(365, '51131', '2301', '21694', 'cash', NULL, '2018-07-11', '', 15, 'n', 'n'),
(366, '51418', '183', '3424', 'cash', NULL, '2018-04-09', '', 15, 'n', 'n'),
(367, '51418', '528', '21695', 'cash', NULL, '2018-04-23', '', 15, 'n', 'n'),
(368, '51418', '2605', '21695', 'cash', NULL, '2018-08-08', '', 15, 'n', 'n'),
(369, '51511', '327', '3424', 'cash', NULL, '2018-04-14', '', 15, 'n', 'n'),
(370, '51511', '543', '21700', 'cheque', '865581', '2018-04-25', 'SBI', 15, 'n', 'n'),
(371, '52521', '875', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(372, '52336', '882', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(373, '52336', '2329', '21000', 'cash', NULL, '2018-07-13', '', 16, 'n', 'n'),
(374, '51237', '995', '3424', 'cash', NULL, '2018-05-02', '', 15, 'n', 'n'),
(375, '52135', '136', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(376, '51237', '995', '21695', 'cash', NULL, '2018-05-13', '', 15, 'n', 'n'),
(377, '52509', '1290', '3000', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(378, '52509', '1291', '16450', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(379, '52022', '77', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(380, '52022', '669', '21000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(381, '51707', '408', '3424', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(382, '51707', '1174', '21695', 'cash', NULL, '2018-05-18', '', 16, 'n', 'n'),
(383, '51419', '280', '3424', 'cash', NULL, '2018-04-13', '', 15, 'n', 'n'),
(384, '51419', '652', '21700', 'cheque', '472910', '2018-05-01', 'SBI', 15, 'n', 'n'),
(385, '51419', '2525', '21694', 'cheque', '567266', '2018-08-04', 'IDBI Bank', 15, 'n', 'n'),
(386, '52441', '1138', '3390', 'cash', NULL, '2018-05-17', '', 16, 'n', 'n'),
(387, '51548', '770', '3424', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(388, '52441', '1470', '21694', 'cash', NULL, '2018-06-03', '', 16, 'n', 'n'),
(389, '51548', '2318', '21695', 'cash', NULL, '2018-07-12', '', 15, 'n', 'n'),
(390, '52136', '142', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(391, '52136', '631', '18200', 'cheque', '036274', '2018-04-30', 'state bank of india ', 16, 'n', 'n'),
(392, '52136', '2187', '18200', 'cheque', '036275', '2018-07-04', 'state bank of india ', 16, 'n', 'n'),
(393, '51863', '1987', '3390', 'cash', NULL, '2018-06-25', '', 15, 'n', 'n'),
(394, '52024', '73', '3424', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(395, '51863', '2402', '21186', 'cash', NULL, '2018-07-19', '', 15, 'n', 'n'),
(396, '52024', '861', '18195', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(397, '52344', '753', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(398, '51479', '503', '3000', 'cash', NULL, '2018-04-21', '', 15, 'n', 'n'),
(399, '52561', '912', '2966', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(400, '51479', '660', '21695', 'cash', NULL, '2018-05-01', '', 15, 'n', 'n'),
(401, '52561', '1546', '21186', 'cash', NULL, '2018-06-07', '', 16, 'n', 'n'),
(402, '51479', '2461', '21694', 'cash', NULL, '2018-07-27', '', 15, 'n', 'n'),
(403, '51745', '2291', '3424', 'cash', NULL, '2018-07-11', '', 15, 'n', 'n'),
(404, '52429', '983', '3000', 'cash', NULL, '2018-05-13', '', 16, 'n', 'n'),
(405, '51745', '2328', '21695', 'cash', NULL, '2018-07-13', '', 15, 'n', 'n'),
(406, '52429', '1508', '16950', 'cash', NULL, '2018-06-11', '', 16, 'n', 'n'),
(407, '52429', '2293', '25424', 'cash', NULL, '2018-07-11', '', 16, 'n', 'n'),
(408, '51420', '259', '3389', 'cash', NULL, '2018-04-12', '', 15, 'n', 'n'),
(409, '51107', '1426', '3424', 'cash', NULL, '2018-05-31', '', 15, 'n', 'n'),
(410, '52353', '806', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(411, '51107', '1777', '19915', 'cash', NULL, '2018-06-17', '', 15, 'n', 'n'),
(412, '52426', '708', '3000', 'cash', NULL, '2018-05-13', '', 16, 'n', 'n'),
(413, '51543', '643', '3424', 'cash', NULL, '2018-05-01', '', 15, 'n', 'n'),
(414, '52088', '682', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(415, '51543', '1153', '21186', 'cash', NULL, '2018-05-17', '', 15, 'n', 'n'),
(416, '52198', '416', '3000', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(417, '51621', '2081', '3390', 'cash', NULL, '2018-06-29', '', 15, 'n', 'n'),
(418, '51621', '2515', '21695', 'cash', NULL, '2018-08-03', '', 15, 'n', 'n'),
(419, '51219', '549', '3424', 'cash', NULL, '2018-04-23', '', 15, 'n', 'n'),
(420, '51849', '1972', '3424', 'cash', NULL, '2018-06-25', '', 15, 'n', 'n'),
(421, '51849', '2218', '19915', 'cash', NULL, '2018-07-06', '', 15, 'n', 'n'),
(422, '51556', '1005', '3424', 'cash', NULL, '2018-05-13', '', 15, 'n', 'n'),
(423, '51556', '1254', '21694', 'cash', NULL, '2018-05-23', '', 15, 'n', 'n'),
(424, '51715', '565', '3424', 'cash', NULL, '2018-04-24', '', 15, 'n', 'n'),
(425, '51715', '1177', '21695', 'cash', NULL, '2018-05-18', '', 15, 'n', 'n'),
(426, '51202', '471', '3424', 'cash', NULL, '2018-04-19', '', 15, 'n', 'n'),
(427, '52533', '950', '3390', 'cash', NULL, '2018-05-10', '', 16, 'n', 'n'),
(428, '52533', '1117', '21000', 'cash', NULL, '2018-05-16', '', 16, 'n', 'n'),
(429, '52502', '687', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(430, '52502', '1315', '16440', 'cheque', '000027', '2018-05-25', 'SBI', 16, 'n', 'n'),
(431, '52622', '779', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(432, '52342', '894', '2966', 'cash', NULL, '2018-08-07', '', 16, 'n', 'n'),
(433, '52134', '7', '3000', 'cheque', '006396', '2018-04-04', 'SBI', 16, 'n', 'n'),
(434, '52134', '265', '21000', 'cheque', '006397', '2018-04-12', 'SBI', 16, 'n', 'n'),
(435, '52134', '2057', '21000', 'cheque', '006398', '2018-06-27', 'SBI', 16, 'n', 'n'),
(436, '52138', '99', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(437, '52326', '696', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(438, '52203', '128', '3424', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(439, '52203', '410', '19958', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(440, '52203', '2616', '19915', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(441, '52606', '814', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(442, '52606', '1389', '18220', 'cash', NULL, '2018-05-29', '', 16, 'n', 'n'),
(443, '52541', '834', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(444, '52541', '1467', '21000', 'cash', NULL, '2018-06-02', '', 16, 'n', 'n'),
(445, '52541', '2532', '21000', 'cash', NULL, '2018-08-04', '', 16, 'n', 'n'),
(446, '52409', '703', '2966', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(447, '52319', '803', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(448, '52319', '1227', '21000', 'cash', NULL, '2018-05-21', '', 16, 'n', 'n'),
(449, '52319', '2589', '21000', 'cash', NULL, '2018-08-07', '', 16, 'n', 'n'),
(450, '52433', '850', '3424', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(451, '52433', '1359', '21695', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(452, '52656', '1622', '3424', 'cash', NULL, '2018-06-11', '', 16, 'n', 'n'),
(453, '52656', '2118', '21694', 'cheque', '249472', '2018-07-01', 'SBI', 16, 'n', 'n'),
(454, '52140', '19', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(455, '52028', '211', '3000', 'cash', NULL, '2018-04-10', '', 16, 'n', 'n'),
(456, '52028', '253', '21186', 'cash', NULL, '2018-06-22', '', 16, 'n', 'n'),
(457, '52341', '897', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(458, '52341', '1519', '21000', 'cash', NULL, '2018-06-06', '', 16, 'n', 'n'),
(459, '52601', '763', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(460, '52601', '764', '21186', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(461, '52621', '2966', '2966', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(462, '52621', '1837', '20339', 'cash', NULL, '2018-06-19', '', 16, 'n', 'n'),
(463, '52518', '872', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(464, '52201', '107', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(465, '52201', '1074', '18517', 'cash', NULL, '2018-05-15', '', 16, 'n', 'n'),
(466, '52555', '754', '2966', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(467, '62012', '447', '3424', 'cash', NULL, '2018-04-19', '', 16, 'n', 'n'),
(468, '62012', '2013', '20424', 'cash', NULL, '2018-06-26', '', 16, 'n', 'n'),
(469, '52313', '832', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(470, '52440', '1008', '2966', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(471, '52440', '1586', '20763', 'cash', NULL, '2018-06-09', '', 16, 'n', 'n'),
(472, '52142', '49', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(473, '52143', '90', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(474, '52536', '681', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(475, '52513', '750', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(476, '52030', '199', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(477, '52569', '933', '3390', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(478, '52569', '963', '21695', 'cash', NULL, '2018-05-11', '', 16, 'n', 'n'),
(479, '52314', '800', '2966', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(480, '52301', '668', '2991', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(481, '52301', '1331', '16440', 'cash', NULL, '2018-05-27', '', 16, 'n', 'n'),
(482, '52549', '698', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(483, '52549', '1552', '18200', 'cash', NULL, '2018-06-07', '', 16, 'n', 'n'),
(484, '52031', '33', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(485, '52031', '236', '19950', 'cheque', '789943', '2018-04-11', 'SBI', 16, 'n', 'n'),
(486, '52031', '2592', '19949', 'cheque', '078639', '2018-08-08', 'SBI', 16, 'n', 'n'),
(487, '52420', '777', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(488, '52420', '1587', '20763', 'cash', NULL, '2018-06-09', '', 16, 'n', 'n'),
(489, '52316', '877', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(490, '52316', '1269', '20932', 'cash', NULL, '2018-05-23', '', 16, 'n', 'n'),
(491, '52316', '2602', '20762', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(492, '52323', '796', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(493, '52323', '1469', '21700', 'cheque', '573622', '2018-06-03', 'SBI', 16, 'n', 'n'),
(494, '52144', '95', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(495, '52144', '314', '57627', 'cash', NULL, '2018-04-14', '', 16, 'n', 'n'),
(496, '52145', '102', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(497, '52145', '434', '50136', 'cheque', '794873', '2018-04-18', 'SBI', 16, 'n', 'n'),
(498, '52146', '25', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(499, '52146', '568', '21703', 'cash', NULL, '2018-04-24', '', 16, 'n', 'n'),
(500, '52199', '71', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(501, '52337', '785', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(502, '52337', '846', '21000', 'cash', NULL, '2018-05-06', '', 16, 'n', 'n'),
(503, '52034', '17', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(504, '52034', '388', '21000', 'cash', NULL, '2018-04-16', '', 16, 'n', 'n'),
(505, '52631', '736', '2966', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(506, '52352', '809', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(507, '52352', '1409', '21186', 'cash', NULL, '2018-05-30', '', 16, 'n', 'n'),
(508, '52612', '1185', '2966', 'cash', NULL, '2018-05-18', '', 16, 'n', 'n'),
(509, '52612', '1458', '20338', 'cash', NULL, '2018-06-02', '', 16, 'n', 'n'),
(510, '52149', '146', '2966', 'cash', NULL, '2018-07-04', '', 16, 'n', 'n'),
(511, '52035', '85', '2966', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(512, '52036', '6', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(513, '52036', '286', '18220', 'cash', NULL, '2018-04-13', '', 16, 'n', 'n'),
(514, '52152', '135', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(515, '52152', '397', '17797', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(516, '52610', '936', '3000', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(517, '52610', '1319', '21000', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(518, '52538', '845', '3000', 'cash', NULL, '2018-05-06', '', 16, 'n', 'n'),
(519, '52431', '746', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(520, '52039', '1', '3424', 'cash', NULL, '2018-04-03', '', 16, 'n', 'n'),
(521, '52331', '713', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(522, '52331', '1268', '21000', 'cheque', '081075', '2018-05-23', 'SBI', 16, 'n', 'n'),
(523, '52153', '58', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(524, '52153', '59', '11017', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(525, '52040', '148', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(526, '52040', '256', '21000', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(527, '52040', '2484', '21000', 'cheque', '864445', '2018-08-01', 'SBI', 16, 'n', 'n'),
(528, '52318', '1329', '2966', 'cash', NULL, '2018-05-26', '', 16, 'n', 'n'),
(529, '52318', '2045', '21000', 'cash', NULL, '2018-06-27', '', 16, 'n', 'n'),
(530, '52566', '870', '3000', 'cash', NULL, '2018-07-05', '', 16, 'n', 'n'),
(531, '52566', '1067', '21017', 'cash', NULL, '2018-05-15', '', 16, 'n', 'n'),
(532, '52041', '44', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(533, '52041', '377', '21000', 'cash', NULL, '2018-04-16', '', 16, 'n', 'n'),
(534, '52041', '844', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(535, '52041', '2606', '21000', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(536, '52328', '200', '3000', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(537, '52328', '1280', '21000', 'cheque', '078472', '2018-05-24', 'SBI', 16, 'n', 'n'),
(538, '52605', '973', '3000', 'cash', NULL, '2018-05-12', '', 16, 'n', 'n'),
(539, '52605', '1598', '19950', 'cash', NULL, '2018-06-09', '', 16, 'n', 'n'),
(540, '99991', '996', '3000', 'cash', NULL, '2018-08-16', '', 1, 'n', 'n'),
(541, '52333', '666', '2966', 'cash', NULL, '2018-02-05', '', 16, 'n', 'n'),
(542, '52333', '1224', '21000', 'cash', NULL, '2018-05-21', '', 16, 'n', 'n'),
(543, '99991', '997', '7000', 'cash', NULL, '2018-08-16', '', 1, 'n', 'n'),
(544, '52043', '165', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(545, '99991', '998', '11000', 'cheque', '654321', '2018-08-16', 'SBI', 1, 'n', 'n'),
(546, '52043', '1304', '18200', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(547, '52619', '677', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(548, '52629', '655', '2966', 'cash', NULL, '2018-05-01', '', 16, 'n', 'n'),
(549, '52629', '1710', '21017', 'cash', NULL, '2018-06-15', '', 16, 'n', 'n'),
(550, '52157', '82', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(551, '52157', '804', '16653', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(552, '52620', '791', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(553, '52158', '89', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(554, '52158', '1220', '19492', 'cash', NULL, '2018-05-21', '', 16, 'n', 'n'),
(555, '52345', '751', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(556, '52345', '1233', '21694', 'cash', NULL, '2018-05-22', '', 16, 'n', 'n'),
(557, '52361', '962', '3000', 'cash', NULL, '2018-05-11', '', 16, 'n', 'n'),
(558, '52361', '1186', '21694', 'cash', NULL, '2018-05-18', '', 16, 'n', 'n'),
(559, '52159', '175', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(560, '52159', '1705', '45305', 'cash', NULL, '2018-06-14', '', 16, 'n', 'n'),
(561, '52609', '775', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(562, '52346', '720', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(563, '52044', '166', '3000', 'cash', NULL, '2018-04-09', '', 16, 'n', 'n'),
(564, '62021', '762', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(565, '62021', '1877', '24152', 'cash', NULL, '2018-06-20', '', 16, 'n', 'n'),
(566, '52050', '12', '3000', 'cheque', '112980', '2018-04-04', 'SBI', 16, 'n', 'n'),
(567, '52050', '560', '21700', 'cheque', '112981', '2018-04-24', 'SBI', 16, 'n', 'n'),
(568, '52050', '2061', '21700', 'cheque', '112982', '2018-06-27', 'SBI', 16, 'n', 'n'),
(569, '52162', '138', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(570, '52162', '1313', '21186', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(571, '52327', '911', '3000', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(572, '52327', '2600', '21000', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(573, '52327', '1349', '21000', 'cash', NULL, '2018-05-28', '', 16, 'n', 'n'),
(574, '52051', '130', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(575, '52051', '1250', '20975', 'cash', NULL, '2018-05-23', '', 16, 'n', 'n'),
(576, '52052', '251', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(577, '52052', '2441', '21017', 'cash', NULL, '2018-04-21', '', 16, 'n', 'n'),
(578, '52165', '300', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(579, '52165', '334', '19250', 'cheque', '525512', '2018-04-14', 'SBI', 16, 'n', 'n'),
(580, '52166', '140', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(581, '52166', '919', '21695', 'cheque', '058786', '2018-05-08', 'SBI', 16, 'n', 'n'),
(582, '52054', '114', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(583, '52054', '588', '21000', 'cheque', '436997', '2018-04-25', 'SBI', 16, 'n', 'n'),
(584, '52053', '68', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(585, '52053', '459', '21000', 'cash', NULL, '2018-04-19', '', 16, 'n', 'n'),
(586, '52571', '1042', '3424', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(587, '52571', '1306', '21695', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(588, '52650', '1076', '3390', 'cash', NULL, '2018-05-15', '', 16, 'n', 'n'),
(589, '52639', '880', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(590, '52639', '1650', '21000', 'cash', NULL, '2018-06-12', '', 16, 'n', 'n'),
(591, '52557', '830', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(592, '52089', '784', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(593, '52089', '1272', '20339', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(594, '52535', '730', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(595, '52535', '731', '59322', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(596, '52324', '890', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(597, '52056', '123', '3000', 'cheque', '585740', '2018-04-07', 'SBI', 16, 'n', 'n'),
(598, '52056', '453', '20932', 'cheque', '585744', '2018-04-19', 'SBI', 16, 'n', 'n'),
(599, '52056', '2618', '21000', 'cheque', '585751', '2018-08-08', 'SBI', 16, 'n', 'n'),
(600, '52171', '40', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(601, '52171', '374', '16449', 'cash', NULL, '2018-04-16', '', 16, 'n', 'n'),
(602, '52171', '2455', '16450', 'cheque', '110260', '2018-07-26', 'SBI', 16, 'n', 'n'),
(603, '52510', '869', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(604, '52510', '1570', '8474', 'cash', NULL, '2018-06-08', '', 16, 'n', 'n'),
(605, '52340', '889', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(606, '52531', '787', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(607, '52575', '1999', '3425', 'cash', NULL, '2018-06-25', '', 16, 'n', 'n'),
(608, '52575', '2351', '16950', 'cash', NULL, '2018-07-15', '', 16, 'n', 'n'),
(609, '52322', '867', '2966', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(610, '52173', '20', '3000', 'cash', NULL, '2018-04-04', '', 16, 'n', 'n'),
(611, '52173', '657', '16610', 'cash', NULL, '2018-05-01', '', 16, 'n', 'n'),
(612, '52320', '688', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(613, '52320', '689', '16949', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(614, '52172', '225', '3000', 'cheque', '548363', '2018-04-10', 'SBI', 16, 'n', 'n'),
(615, '52172', '562', '18195', 'cheque', '548364', '2018-04-24', 'SBI', 16, 'n', 'n'),
(616, '52355', '891', '2966', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(617, '52302', '769', '2966', 'cash', NULL, '2018-03-05', '', 16, 'n', 'n'),
(618, '52302', '1263', '32203', 'cash', NULL, '2018-02-23', '', 16, 'n', 'n'),
(619, '52302', '1294', '797', 'cash', NULL, '2018-05-24', '', 16, 'n', 'n'),
(620, '52417', '815', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(621, '52445', '1557', '3423', 'cash', NULL, '2018-06-08', '', 16, 'n', 'n'),
(622, '52445', '2100', '21695', 'cheque', '000075', '2018-06-29', 'SBI', 16, 'n', 'n'),
(623, '52174', '92', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(624, '52434', '843', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(625, '52434', '1831', '16949', 'cash', NULL, '2018-08-16', '', 16, 'n', 'n'),
(626, '52176', '42', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(627, '52563', '876', '2966', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(628, '52632', '780', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(629, '52413', '817', '3000', 'cheque', '003537', '2018-05-05', 'SBI', 16, 'n', 'n'),
(630, '52413', '1100', '21700', 'cheque', '059309', '2018-05-16', 'SBI', 16, 'n', 'n'),
(631, '52413', '2597', '20746', 'cash', NULL, '2018-08-08', '', 16, 'n', 'n'),
(632, '52057', '232', '3000', 'cash', NULL, '2018-04-11', '', 16, 'n', 'n'),
(633, '99992', '999', '3000', 'cash', NULL, '2018-08-16', '', 1, 'n', 'n'),
(634, '52179', '216', '3000', 'cash', NULL, '2018-04-10', '', 16, 'n', 'n'),
(635, '52179', '567', '45305', 'cheque', '421352', '2018-04-24', 'SBI', 16, 'n', 'n'),
(636, '52304', '673', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(637, '52058', '276', '3000', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(638, '52058', '969', '20932', 'cash', NULL, '2018-05-12', '', 16, 'n', 'n'),
(639, '99992', '1000', '5000', 'cash', NULL, '2018-08-16', '', 1, 'n', 'n'),
(640, '52317', '721', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(641, '52528', '741', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(642, '52626', '907', '3000', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(643, '52626', '1335', '16950', 'cash', NULL, '2018-05-27', '', 16, 'n', 'n'),
(644, '52644', '940', '2966', 'cash', NULL, '2018-05-10', '', 16, 'n', 'n'),
(645, '52644', '1533', '21000', 'cash', NULL, '2018-06-07', '', 16, 'n', 'n'),
(646, '52558', '1281', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(647, '52558', '1282', '21000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n');
INSERT INTO `fee` (`id`, `roll`, `recipt_no`, `amount`, `pay_by`, `number`, `datee`, `bank_name`, `submit_by`, `by_pdc`, `refund`) VALUES
(648, '51202', '2043', '21700', 'cheque', '597294', '2018-06-27', 'SBI', 15, 'n', 'n'),
(649, '61029', '2235', '3390', 'cash', NULL, '2018-07-08', '', 15, 'n', 'n'),
(650, '61029', '2247', '21610', 'cash', NULL, '2018-07-26', '', 15, 'n', 'n'),
(651, '51473', '378', '424', 'cash', NULL, '2018-04-16', '', 15, 'n', 'n'),
(652, '51473', '386', '3000', 'cash', NULL, '2018-08-16', '', 15, 'n', 'n'),
(653, '51473', '648', '21695', 'cash', NULL, '2018-05-01', '', 15, 'n', 'n'),
(654, '51473', '2536', '19950', 'cash', NULL, '2018-08-05', '', 15, 'n', 'n'),
(655, '51421', '143', '3000', 'cash', NULL, '2018-04-07', '', 15, 'n', 'n'),
(656, '51608', '2005', '3424', 'cash', NULL, '2018-06-26', '', 15, 'n', 'n'),
(657, '51203', '485', '3424', 'cheque', '980561', '2018-04-20', 'SBI', 15, 'n', 'n'),
(658, '51203', '644', '21700', 'cheque', '980562', '2018-05-01', 'SBI', 15, 'n', 'n'),
(659, '51148', '2314', '3390', 'cash', NULL, '2018-07-12', '', 15, 'n', 'n'),
(660, '51227', '591', '3424', 'cash', NULL, '2018-04-26', '', 15, 'n', 'n'),
(661, '51227', '1136', '21695', 'cash', NULL, '2018-05-17', '', 15, 'n', 'n'),
(662, '51568', '1817', '3424', 'cash', NULL, '2018-06-18', '', 15, 'n', 'n'),
(663, '99991', '', '5000', NULL, NULL, '2018-08-16', '', 1, 'n', 'y'),
(664, '51422', '193', '3424', 'cash', NULL, '2018-04-09', '', 15, 'n', 'n'),
(665, '51422', '951', '21700', 'cheque', '796056', '2018-05-11', 'SBI', 15, 'n', 'n'),
(666, '51538', '617', '3424', 'cash', NULL, '2018-04-28', '', 15, 'n', 'n'),
(667, '51538', '888', '21695', 'cash', NULL, '2018-05-07', '', 15, 'n', 'n'),
(668, '51104', '1413', '3390', 'cash', NULL, '2018-05-31', '', 15, 'n', 'n'),
(669, '51629', '2409', '4237', 'cash', NULL, '2018-07-20', '', 15, 'n', 'n'),
(670, '52073', '126', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(671, '52073', '127', '21186', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(672, '52180', '62', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(673, '52180', '61', '48000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(674, '51626', '2350', '3424', 'cash', NULL, '2018-07-15', '', 15, 'n', 'n'),
(675, '51626', '2428', '21610', 'cash', NULL, '2018-07-24', '', 15, 'n', 'n'),
(676, '52311', '744', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(677, '52311', '1309', '16994', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(678, '52646', '942', '3000', 'cash', NULL, '2018-05-10', '', 16, 'n', 'n'),
(679, '52646', '1704', '18220', 'cash', NULL, '2018-06-14', '', 16, 'n', 'n'),
(680, '51477', '423', '3424', 'cheque', '415789', '2018-04-17', 'SBI', 15, 'n', 'n'),
(681, '52315', '812', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(682, '52315', '1195', '16458', 'cash', NULL, '2018-05-19', '', 16, 'n', 'n'),
(683, '52315', '2626', '16525', 'cash', NULL, '2018-08-11', '', 16, 'n', 'n'),
(684, '52356', '881', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(685, '51609', '1966', '3424', 'cash', NULL, '2018-06-25', '', 15, 'n', 'n'),
(686, '52525', '694', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(687, '52525', '1038', '21694', 'cheque', '401571', '2018-05-14', 'SBJ BANK', 16, 'n', 'n'),
(688, '52525', '2562', '21694', 'cheque', '401573', '2018-08-06', 'SBJ BANK', 16, 'n', 'n'),
(689, '51223', '571', '3424', 'cash', NULL, '2018-04-25', '', 15, 'n', 'n'),
(690, '52562', '837', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(691, '52325', '765', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(692, '52325', '1308', '21000', 'cheque', '060040', '2018-05-25', 'SBJ BANK', 16, 'n', 'n'),
(693, '52084', '1301', '2542', 'cash', NULL, '2018-05-25', '', 16, 'n', 'n'),
(694, '51223', '766', '21695', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(695, '52181', '112', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(696, '52508', '745', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(697, '51517', '362', '3424', 'cash', NULL, '2018-04-16', '', 15, 'n', 'n'),
(698, '52343', '758', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(699, '51839', '1854', '3424', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(700, '52603', '1182', '2966', 'cash', NULL, '2018-05-18', '', 16, 'n', 'n'),
(701, '51839', '2498', '21186', 'cash', NULL, '2018-08-16', '', 15, 'n', 'n'),
(702, '52436', '895', '3390', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(703, '51251', '1124', '3424', 'cash', NULL, '2018-05-16', '', 15, 'n', 'n'),
(704, '52436', '1111', '21694', 'cash', NULL, '2018-05-16', '', 16, 'n', 'n'),
(705, '51251', '1724', '21186', 'cash', NULL, '2018-06-15', '', 15, 'n', 'n'),
(706, '52421', '674', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(707, '52421', '1163', '21000', 'cheque', '938524', '2018-05-08', 'SBJ BANK', 16, 'n', 'n'),
(708, '51622', '2243', '3390', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(709, '52616', '1018', '2966', 'cash', NULL, '2018-05-14', '', 16, 'n', 'n'),
(710, '51101', '1490', '3000', 'cash', NULL, '2018-06-04', '', 15, 'n', 'n'),
(711, '52182', '46', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(712, '52182', '402', '21000', 'cash', NULL, '2018-04-17', '', 16, 'n', 'n'),
(713, '52182', '2527', '21000', 'cash', NULL, '2018-08-04', '', 16, 'n', 'n'),
(714, '51101', '2264', '21694', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(715, '52183', '134', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n'),
(716, '51126', '1727', '3424', 'cash', NULL, '2018-06-15', '', 15, 'n', 'n'),
(717, '51126', '2500', '21695', 'cash', NULL, '2018-08-02', '', 15, 'n', 'n'),
(718, '52183', '463', '21186', 'cheque', '304743', '2018-04-19', 'SBJ BANK', 16, 'n', 'n'),
(719, '52184', '104', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(720, '51204', '474', '3424', 'cash', NULL, '2018-04-19', '', 15, 'n', 'n'),
(721, '52184', '105', '16449', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(722, '52545', '835', '2966', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(723, '52545', '1497', '16949', 'cash', NULL, '2018-06-04', '', 16, 'n', 'n'),
(724, '52081', '582', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(725, '52081', '583', '19950', 'cash', NULL, '2018-04-25', '', 16, 'n', 'n'),
(726, '52081', '2308', '19950', 'cheque', '495678', '2018-07-12', 'SBJ BANK', 16, 'n', 'n'),
(727, '51735', '2247', '3424', 'cash', NULL, '2018-07-09', '', 15, 'n', 'n'),
(728, '51735', '2488', '21694', 'cash', NULL, '2018-08-01', '', 15, 'n', 'n'),
(729, '52423', '794', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(730, '51871', '2173', '3424', 'cash', NULL, '2018-07-03', '', 15, 'n', 'n'),
(731, '51873', '2179', '3424', 'cash', NULL, '2018-07-04', '', 15, 'n', 'n'),
(732, '52560', '868', '3390', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(733, '52560', '1944', '21695', 'cash', NULL, '2018-06-22', '', 16, 'n', 'n'),
(734, '51423', '292', '3424', 'cash', NULL, '2018-04-13', '', 15, 'n', 'n'),
(735, '51423', '739', '21695', 'cash', NULL, '2018-05-03', '', 15, 'n', 'n'),
(736, '52565', '847', '2966', 'cash', NULL, '2018-05-06', '', 16, 'n', 'n'),
(737, '51423', '2539', '18220', 'cash', NULL, '2018-08-05', '', 15, 'n', 'n'),
(738, '51424', '115', '3424', 'cash', NULL, '2018-04-06', '', 15, 'n', 'n'),
(739, '52432', '826', '3000', 'cash', NULL, '2018-05-05', '', 16, 'n', 'n'),
(740, '52187', '86', '3000', 'cash', NULL, '2018-04-06', '', 16, 'n', 'n'),
(741, '52083', '556', '3424', 'cash', NULL, '2018-04-12', '', 16, 'n', 'n'),
(742, '52083', '556', '21000', 'cheque', '085596', '2018-04-24', 'SBJ BANK', 16, 'n', 'n'),
(743, '52083', '2547', '21695', 'cheque', '0968337', '2018-08-06', 'SBJ BANK', 16, 'n', 'n'),
(744, '52428', '778', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(745, '51816', '1737', '3424', 'cash', NULL, '2018-06-15', '', 15, 'n', 'n'),
(746, '61010', '701', '3424', 'cash', NULL, '2018-05-02', '', 15, 'n', 'n'),
(747, '61010', '1924', '25250', 'cash', NULL, '2018-06-21', '', 15, 'n', 'n'),
(748, '51115', '1565', '3424', 'cash', NULL, '2018-06-08', '', 15, 'n', 'n'),
(749, '52604', '792', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(750, '51115', '1732', '21700', 'cheque', '477940', '2018-06-15', 'SBI', 15, 'n', 'n'),
(751, '52604', '1149', '21000', 'cheque', '806831', '2018-05-17', 'state bank of india ', 16, 'n', 'n'),
(752, '52604', '2610', '21000', 'cheque', '806834', '2018-01-09', 'state bank of india ', 16, 'n', 'n'),
(753, '51128', '1562', '3424', 'cash', NULL, '2018-06-08', '', 15, 'n', 'n'),
(754, '51128', '2230', '21186', 'cash', NULL, '2018-07-07', '', 15, 'n', 'n'),
(755, '52062', '435', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(756, '52062', '1155', '21000', 'cash', NULL, '2018-05-17', '', 16, 'n', 'n'),
(757, '51601', '2352', '19949', 'cash', NULL, '2018-07-16', '', 15, 'n', 'n'),
(758, '52602', '790', '3000', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(759, '52425', '707', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(760, '52425', '1151', '20932', 'cash', NULL, '2018-05-17', '', 16, 'n', 'n'),
(761, '52063', '250', '3000', 'cash', NULL, '2018-04-11', '', 16, 'n', 'n'),
(762, '51824', '1793', '3424', 'cash', NULL, '2018-06-18', '', 15, 'n', 'n'),
(763, '52063', '599', '21186', 'cash', NULL, '2018-04-26', '', 16, 'n', 'n'),
(764, '52403', '864', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(765, '51866', '1878', '3424', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(766, '53303', '298', '3424', 'cash', NULL, '2018-04-13', '', 17, 'n', 'n'),
(767, '51528', '444', '3424', 'cash', NULL, '2018-04-19', '', 15, 'n', 'n'),
(768, '51528', '783', '21695', 'cash', NULL, '2018-05-04', '', 15, 'n', 'n'),
(769, '52186', '589', '3000', 'cash', NULL, '2018-08-16', '', 16, 'n', 'n'),
(770, '53303', '1800', '73610', 'cash', NULL, '2018-06-18', '', 17, 'n', 'n'),
(771, '52186', '590', '17373', 'cash', NULL, '2018-04-25', '', 16, 'n', 'n'),
(772, '51553', '922', '3424', 'cash', NULL, '2018-05-09', '', 15, 'n', 'n'),
(773, '52523', '756', '3000', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(774, '52523', '1524', '21186', 'cash', NULL, '2018-06-06', '', 16, 'n', 'n'),
(775, '52570', '930', '2966', 'cash', NULL, '2018-05-09', '', 16, 'n', 'n'),
(776, '51137', '1955', '3424', 'cash', NULL, '2018-06-23', '', 15, 'n', 'n'),
(777, '52188', '219', '3000', 'cash', NULL, '2018-04-10', '', 16, 'n', 'n'),
(778, '52188', '380', '21695', 'cash', NULL, '2018-04-16', '', 16, 'n', 'n'),
(779, '51137', '2253', '16440', 'cheque', '008152', '2018-07-09', 'SBI', 15, 'n', 'n'),
(780, '52188', '2580', '21695', 'cash', NULL, '2018-08-07', '', 16, 'n', 'n'),
(781, '52065', '212', '3000', 'cash', NULL, '2018-04-10', '', 16, 'n', 'n'),
(782, '52065', '1417', '16949', 'cash', NULL, '2018-05-31', '', 16, 'n', 'n'),
(783, '51840', '1930', '3424', 'cash', NULL, '2018-06-22', '', 15, 'n', 'n'),
(784, '52625', '702', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(785, '52625', '1126', '21000', 'cash', NULL, '2018-05-16', '', 16, 'n', 'n'),
(786, '52625', '2568', '21000', 'cash', NULL, '2018-08-06', '', 16, 'n', 'n'),
(787, '54049', '1950', '3500', 'cash', NULL, '2018-06-23', '', 17, 'n', 'n'),
(788, '51840', '2538', '21694', 'cash', NULL, '2018-08-05', '', 15, 'n', 'n'),
(789, '52640', '892', '3000', 'cash', NULL, '2018-05-07', '', 16, 'n', 'n'),
(790, '53253', '1849', '3000', 'cash', NULL, '2018-06-19', '', 17, 'n', 'n'),
(791, '51627', '2177', '3424', 'cash', NULL, '2018-07-04', '', 15, 'n', 'n'),
(792, '52635', '749', '3424', 'cash', NULL, '2018-05-03', '', 16, 'n', 'n'),
(793, '53253', '2287', '25424', 'cheque', 'CH NO 478067', '2018-07-10', 'SBI', 17, 'n', 'n'),
(794, '51627', '2345', '21694', 'cash', NULL, '2018-07-15', '', 15, 'n', 'n'),
(795, '52635', '2095', '30932', 'cash', NULL, '2018-06-28', '', 16, 'n', 'n'),
(796, '53301', '158', '3424', 'cash', NULL, '2018-04-08', '', 17, 'n', 'n'),
(797, '51711', '863', '18220', 'cash', NULL, '2018-05-07', '', 15, 'n', 'n'),
(798, '52653', '1229', '3390', 'cash', NULL, '2018-05-21', '', 16, 'n', 'n'),
(799, '53301', '333', '26949', 'cash', NULL, '2018-04-15', '', 17, 'n', 'n'),
(800, '51711', '424', '3424', 'cash', NULL, '2018-04-17', '', 15, 'n', 'n'),
(801, '52649', '1068', '3000', 'cash', NULL, '2018-05-15', '', 16, 'n', 'n'),
(802, '51732', '2206', '3424', 'cash', NULL, '2018-07-05', '', 15, 'n', 'n'),
(803, '52649', '1730', '21000', 'cash', NULL, '2018-06-15', '', 16, 'n', 'n'),
(804, '53582', '1137', '3000', 'cash', NULL, '2018-05-17', '', 17, 'n', 'n'),
(805, '52542', '700', '3000', 'cash', NULL, '2018-05-02', '', 16, 'n', 'n'),
(806, '53582', '2065', '21740', 'cash', NULL, '2018-06-27', '', 17, 'n', 'n'),
(807, '52402', '908', '3000', 'cash', NULL, '2018-05-08', '', 16, 'n', 'n'),
(808, '52402', '1662', '21000', 'cash', NULL, '2018-06-13', '', 16, 'n', 'n'),
(809, '51138', '2113', '3390', 'cash', NULL, '2018-06-30', '', 15, 'n', 'n'),
(810, '53551', '1431', '3000', 'cash', NULL, '2018-05-14', '', 17, 'n', 'n'),
(811, '53551', '1060', '3390', 'cash', NULL, '2018-05-15', '', 17, 'n', 'n'),
(812, '52407', '771', '2966', 'cash', NULL, '2018-05-04', '', 16, 'n', 'n'),
(813, '51706', '319', '3424', 'cash', NULL, '2018-04-14', '', 15, 'n', 'n'),
(814, '52407', '1106', '21000', 'cash', NULL, '2018-05-16', '', 16, 'n', 'n'),
(815, '52407', '2385', '21000', 'cash', NULL, '2018-07-18', '', 16, 'n', 'n'),
(816, '53615', '1333', '3424', 'cash', NULL, '2018-05-27', '', 17, 'n', 'n'),
(817, '61008', '602', '3424', 'cash', NULL, '2018-04-26', '', 15, 'n', 'n'),
(818, '53615', '1608', '26949', 'cash', NULL, '2018-06-10', '', 17, 'n', 'n'),
(819, '51512', '332', '3390', 'cash', NULL, '2018-04-15', '', 15, 'n', 'n'),
(820, '51512', '825', '15780', 'cash', NULL, '2018-05-04', '', 15, 'n', 'n'),
(821, '53339', '563', '2966', 'cash', NULL, '2018-04-24', '', 17, 'n', 'n'),
(822, '53339', '1624', '42372', 'cash', NULL, '2018-06-11', '', 17, 'n', 'n'),
(823, '51812', '1694', '3390', 'cash', NULL, '2018-06-14', '', 15, 'n', 'n'),
(824, '51503', '274', '3424', 'cash', NULL, '2018-04-12', '', 15, 'n', 'n'),
(825, '53203', '1343', '3424', 'cash', NULL, '2018-05-28', '', 17, 'n', 'n'),
(826, '53112', '180', '3424', 'cash', NULL, '2018-04-09', '', 15, 'n', 'n'),
(827, '51134', '1881', '3424', 'cash', NULL, '2018-06-20', '', 15, 'n', 'n'),
(828, '53326', '393', '2966', 'cash', NULL, '2018-04-17', '', 17, 'n', 'n'),
(829, '53326', '1494', '26271', 'cash', NULL, '2018-06-04', '', 17, 'n', 'n'),
(830, '52190', '31', '3000', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(831, '52190', '32', '19034', 'cash', NULL, '2018-04-05', '', 16, 'n', 'n'),
(832, '62029', '248', '3000', 'cash', NULL, '2018-08-16', '', 16, 'n', 'n'),
(833, '53341', '570', '2966', 'cash', NULL, '2018-04-25', '', 17, 'n', 'n'),
(834, '52192', '137', '3000', 'cash', NULL, '2018-04-07', '', 16, 'n', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `inq_stu_exe`
--

CREATE TABLE `inq_stu_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inq_stu_exe`
--

INSERT INTO `inq_stu_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/stu_profile_exe/15_Aug_2018___studentlist.xls', '2018-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `jan`
--

CREATE TABLE `jan` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `july`
--

CREATE TABLE `july` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `june`
--

CREATE TABLE `june` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_with_salary`
--

CREATE TABLE `leave_with_salary` (
  `id` int(1) NOT NULL,
  `employee_profile` int(1) DEFAULT NULL,
  `teacher_profile` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_with_salary`
--

INSERT INTO `leave_with_salary` (`id`, `employee_profile`, `teacher_profile`) VALUES
(1, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `march`
--

CREATE TABLE `march` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `may`
--

CREATE TABLE `may` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nov`
--

CREATE TABLE `nov` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oct`
--

CREATE TABLE `oct` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL,
  `s31` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `office_staff`
--

CREATE TABLE `office_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department` enum('enquiry','accountant','cao','director','other','test series') DEFAULT NULL,
  `mobile_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office_staff`
--

INSERT INTO `office_staff` (`id`, `name`, `department`, `mobile_no`) VALUES
(1, 'Vimla mam', 'enquiry', '8947800330'),
(2, 'Rajendra Ji', 'accountant', '8003094134'),
(3, 'Lokesh Suthar Ji', 'accountant', '9680127833'),
(4, 'Arti Mam', 'enquiry', '8947800330'),
(5, 'Dr. Swaran Rekha Mam', 'cao', '8947800330'),
(6, 'Dr. Shwet Goswami Sir', 'director', '8947800330'),
(7, 'Mr. Jethmal Suthar Sir', 'director', '8947800330'),
(8, 'Mr. Manoj Bajaj Sir', 'director', '8947800330'),
(9, 'Gowardhan Ji', 'accountant', '7597411600'),
(10, 'Test Series', 'test series', '8441018210'),
(11, 'Will come later', 'other', '8947800330'),
(12, 'Anoop Ji', 'enquiry', '9928737178'),
(13, 'kanchan Mam', 'enquiry', '6375082939'),
(14, 'Bharti Mam', 'enquiry', '8947800330');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `adrs` text,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `tehsil` varchar(50) DEFAULT NULL,
  `city_town` varchar(50) DEFAULT NULL,
  `pin_no` int(11) DEFAULT NULL,
  `submit_by` int(11) NOT NULL,
  `f_mobile` varchar(10) NOT NULL,
  `s_mobile` varchar(10) NOT NULL,
  `m_mobile` varchar(10) NOT NULL,
  `landline` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `adrs`, `state`, `district`, `tehsil`, `city_town`, `pin_no`, `submit_by`, `f_mobile`, `s_mobile`, `m_mobile`, `landline`) VALUES
(1, 'bit to tera byte', 'jnv', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', 334001, 1, '7976312917', '9024555623', '', ''),
(2, 'ram and sons', 'jnv', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', 334001, 1, '', '', '', ''),
(3, 'aja', 'jnv', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', 334001, 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patteren`
--

CREATE TABLE `patteren` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `tname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patteren`
--

INSERT INTO `patteren` (`id`, `name`, `class_id`, `tname`) VALUES
(2, 'NEET', 2, 'neet_2'),
(3, 'AIIMS', 2, 'aiims_2'),
(4, 'NEET', 3, 'neet_3'),
(5, 'AIIMS', 3, 'aiims_3'),
(6, 'BOARD', 3, 'board_3'),
(7, 'NEET', 4, 'neet_4'),
(8, 'BOARD', 4, 'board_4'),
(9, 'AIIMS', 4, 'aiims_4'),
(10, 'MAINS', 9, 'mains_9'),
(11, 'ADVANCED', 9, 'advanced_9'),
(12, 'MAINS', 10, 'mains_10'),
(13, 'BOARD', 10, 'board_10'),
(14, 'ADVANCED', 10, 'advanced_10'),
(15, 'MAINS', 11, 'mains_11'),
(16, 'BOARD', 11, 'board_11'),
(17, 'ADVANCED', 11, 'advanced_11'),
(18, 'NEET', 5, 'neet_5'),
(19, 'BOARD', 5, 'board_5'),
(20, 'AIIMS', 5, 'aiims_5'),
(24, 'ABC DEF', 1, 'abc_def_1'),
(25, 'JEE MAINS', 5, 'jee_mains_5'),
(26, 'JEE ADVANCED', 5, 'jee_advanced_5'),
(27, 'NEET', 6, 'neet_6'),
(28, 'JEE ADVANCED', 6, 'jee_advanced_6'),
(29, 'JEE MAINS', 6, 'jee_mains_6'),
(30, 'BOARD', 6, 'board_6'),
(31, 'AIIMS', 6, 'aiims_6'),
(32, 'NEET', 7, 'neet_7'),
(33, 'JEE ADVANCED', 7, 'jee_advanced_7'),
(34, 'JEE MAINS', 7, 'jee_mains_7'),
(35, 'BOARD', 7, 'board_7'),
(36, 'AIIMS', 7, 'aiims_7');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(5) DEFAULT NULL,
  `amount` varchar(7) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `pay_done` int(4) DEFAULT NULL,
  `behalf_of` int(4) DEFAULT NULL,
  `byy` enum('cash','cheque','dd') DEFAULT NULL,
  `description` text,
  `pay_at_time` enum('y','n') NOT NULL DEFAULT 'n',
  `paid_to` varchar(50) NOT NULL,
  `chq_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `bill_no`, `amount`, `datee`, `pay_done`, `behalf_of`, `byy`, `description`, `pay_at_time`, `paid_to`, `chq_no`) VALUES
(2, '1', '10000', '2018-07-27', 1, 6, 'cash', NULL, 'n', 'vivek modi', 0),
(3, '1', '35000', '2018-07-27', 1, 6, 'cash', NULL, 'n', 'vivek modi', 0),
(4, '2', '5000', '2018-07-28', 1, 6, 'cash', '', 'y', 'vivek', 0),
(5, '3', '5000', '2018-07-28', 1, 6, 'cash', '', 'y', 'vivek', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pdc`
--

CREATE TABLE `pdc` (
  `id` int(11) NOT NULL,
  `roll` varchar(10) DEFAULT NULL,
  `amount` varchar(6) DEFAULT NULL,
  `chq_no` varchar(20) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `chequey` text,
  `statuss` enum('recived','upcoming','cleared','bounced','expired') DEFAULT 'recived',
  `update_date` date NOT NULL,
  `submit_by` int(11) NOT NULL,
  `pdc_recived` date NOT NULL,
  `refund` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdc`
--

INSERT INTO `pdc` (`id`, `roll`, `amount`, `chq_no`, `bank_name`, `datee`, `expiry_date`, `chequey`, `statuss`, `update_date`, `submit_by`, `pdc_recived`, `refund`) VALUES
(2, '51833', '16660', '598512', 'SBI', '2018-10-12', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(3, '51833', '19400', '598513', 'SBI', '2018-08-13', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(4, '54048', '31800', '973933', 'OBC', '2018-09-07', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(5, '54048', '27260', '973934', 'OBC', '2018-11-07', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(6, '62016', '10000', '031543', 'PNB', '2018-09-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(7, '62016', '10000', '031542', 'PNB', '2018-12-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(8, '53510', '27258', '000006', 'BOB', '2018-08-20', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(9, '51702', '21948', '302748', 'SBI', '2018-08-21', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(10, '51484', '15750', '071367', 'OBC', '2018-10-24', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(11, '51484', '18380', '071366', 'OBC', '2018-08-24', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(12, '51565', '23541', '559792', 'PNB', '2018-08-28', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(13, '51565', '20178', '559793', 'PNB', '2018-10-28', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(14, '53901', '31801', '770707', 'Gramin Bank', '2018-08-18', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(15, '51810', '25600', '082776', 'SBI', '2018-08-20', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(16, '51810', '21948', '082777', 'SBI', '2018-10-20', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(17, '13232', '15000', '028673', 'OBC', '2018-08-06', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(18, '52079', '21948', '026802', 'OBC', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(19, '52019', '21948', '022078', 'Axis Bank', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(20, '52174', '13095', '000030', 'BOB', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(21, '52638', '19290', '583606', 'SBI', '2018-10-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(22, '52050', '21948', '112983', 'IDBI Bank', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(23, '52027', '21240', '955114', 'Vijaya Bank', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(24, '52175', '21240', '147104', 'Vijaya Bank', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(25, '52150', '18408', '970014', 'SBI', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(26, '52191', '24780', '814866', 'Corp. Bank', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(27, '52136', '18408', '036276', 'Dena Bank', '2018-08-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(28, '52070', '21948', '376861', 'SBI', '2018-08-12', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(29, '52007', '25606', '036505', 'Dena Bank', '2018-07-25', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(30, '52134', '21240', '006399', 'ICICI Bank', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(31, '52147', '21476', '425310', 'SBI', '2018-08-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(32, '52147', '18408', '425311', 'SBI', '2018-10-10', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(33, '52072', '21948', '466687', 'SBI', '2018-08-12', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(34, '52125', '16640', '375930', 'SBI', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(35, '52118', '15930', '677143', 'SBI', '2018-08-09', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(36, '53523', '27260', '280928', 'SBI', '2018-09-14', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(37, '52634', '21948', '020442', 'BOI', '2018-08-31', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(38, '51122', '23541', '634811', 'SBI', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(39, '51122', '20178', '634812', 'SBI', '2018-10-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(40, '53555', '31800', '570431', 'SBI', '2018-08-06', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(41, '53555', '27260', '570432', 'SBI', '2018-10-04', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(42, '53625', '27258', '107733', 'SBI', '2018-11-11', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(43, '53361', '31800', '587152', 'SBI', '2018-08-02', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(44, '51117', '25600', '559803', 'SBI', '2018-08-03', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(45, '53625', '31801', '625961', 'SBI', '2018-09-11', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(46, '51601', '20178', '852239', 'SBI', '2018-11-16', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(47, '53367', '27260', '000847', 'Axis Bank', '2018-08-15', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(48, '51601', '23541', '852238', 'SBI', '2018-09-16', '0000-00-00', '', '', '0000-00-00', 0, '0000-00-00', 'n'),
(52, '44444', '5000', '552032', 'SBI', '2018-07-04', '2018-10-03', NULL, 'cleared', '0000-00-00', 1, '2018-07-24', 'y'),
(53, '32323', '5000', '303030', 'sbi', '2018-07-24', '2018-10-24', NULL, 'cleared', '2018-07-24', 1, '2018-07-25', 'n'),
(54, '32323', '6000', '623030', 'SBI', '2018-07-25', '2018-10-25', NULL, 'cleared', '0000-00-00', 1, '2018-07-25', 'n'),
(55, '54001', '23540', '122526', 'bob', '2018-07-27', '2018-09-26', NULL, 'recived', '0000-00-00', 2, '2018-07-26', 'n'),
(56, '54001', '20000', '321651', 'bob', '2018-08-07', '2018-09-19', NULL, 'recived', '0000-00-00', 2, '2018-07-26', 'n'),
(57, '55555', '5000', '226622', 'sbi', '2018-08-13', '2018-11-12', NULL, 'recived', '0000-00-00', 1, '2018-08-13', 'n'),
(58, '55555', '6000', '030300', 'sbi', '2018-09-13', '2018-12-12', NULL, 'recived', '0000-00-00', 1, '2018-08-13', 'n'),
(59, '99991', '6000', '654621', 'SBI', '2018-08-23', '2018-08-25', NULL, 'recived', '0000-00-00', 1, '2018-08-16', 'y'),
(60, '99991', '12000', '654521', 'PNB', '2018-08-17', '2018-08-22', NULL, 'recived', '0000-00-00', 1, '2018-08-16', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `per_stu_exe`
--

CREATE TABLE `per_stu_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `per_stu_exe`
--

INSERT INTO `per_stu_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/stu_profile/16_Aug_2018_studentlist.xls', '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `provided_pg`
--

CREATE TABLE `provided_pg` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` text,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `tehsil` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provided_pg`
--

INSERT INTO `provided_pg` (`id`, `name`, `address`, `state`, `district`, `tehsil`, `city`, `pin`, `mobile`) VALUES
(1, 'Prayas PG (Mahesh)', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '9983300029'),
(2, 'Iconic Girls Hostel (Mrs. Amita)', 'Synthesis Campus', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9799037599'),
(3, 'Shivayalaya Girls Hostel (Mrs. Nirmala)', '5-C-68, JNV Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9982142732'),
(4, 'Gargi Hostel (Mr. Juglal Mehla)', 'A-70, Karni Nagar, Pawan Puri', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9460503338'),
(5, 'Mackinzia Girls Hostel (M.S. Yadav)', 'C-8 Narayan vihar, Old Shivbari Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9460806245'),
(6, 'Jai Gurudev Hostel (Ajay Kasera)', 'Gali No. 5 B-3, Narayan Vihar', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9828143502'),
(7, 'Jay Shankar PG (Dipika Gahlot)', 'B-2 Saraswati Vihar, Khaturiya Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9461376656'),
(8, 'Waha Guru PG House', 'Ravinder path, JNV Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9413931110'),
(9, 'Godara PG Hostel', 'Gali No. 3 Near Synthesis Coaching, Shivbari Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9462461463'),
(10, 'M.S. Boys Hostel (Mr. Sanjay)', 'Street No. 5, Near Synthesis', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '7976569967'),
(11, 'M.S. Boys Hostel (Mr. Mahesh)', 'Near Mahila ITI, Vallabh Garden Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '8432130778'),
(12, 'Sushma Boys PG (Sushma Chhimpa)', 'C-19, Narayan Vihar Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9413211865'),
(13, 'Daksh Hostel (Mr. Kamlesh Jakhar)', 'Street No. 9, Patel nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '7665760000'),
(14, 'J.K. Boys Hostel (Kamal Agarwal)', 'C-1 Narayan Vihar, Old Shivbari Road, Near Lakshya Public School', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9214470299'),
(15, 'Arora Hostel (Navratan Arora)', 'Street No. 6, Old Shivbari Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '9680928888');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(10) DEFAULT NULL,
  `a_work` int(4) DEFAULT NULL,
  `a_minute` int(2) DEFAULT NULL,
  `o_work` int(4) DEFAULT NULL,
  `leave_with_salary` int(2) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `total_salary` varchar(6) DEFAULT NULL,
  `o_minute` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `submit_by` int(11) NOT NULL,
  `extra` int(11) NOT NULL,
  `extra_reson` varchar(50) NOT NULL,
  `less` int(11) NOT NULL,
  `less_reson` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `unique_id`, `a_work`, `a_minute`, `o_work`, `leave_with_salary`, `datee`, `total_salary`, `o_minute`, `month`, `submit_by`, `extra`, `extra_reson`, `less`, `less_reson`) VALUES
(1, '00000125', 200, 0, 2, 0, '2018-08-16', '10119', 0, 4, 1, 500, 'sdfauky', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `salray_exe`
--

CREATE TABLE `salray_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salray_exe`
--

INSERT INTO `salray_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/salary_exe/16_Aug_2018___studentlist.xls', '2018-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `id` int(11) NOT NULL,
  `scholar_reason` varchar(50) NOT NULL,
  `scholar_subreason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`id`, `scholar_reason`, `scholar_subreason`) VALUES
(1, 'Close Relative', 'Dir. Shwet Goswami Sir, Dir. Manoj Bajaj Sir, Dir. Jethmal Suthar Sir, Staffs Ward'),
(2, 'Scholarship PDBSS', 'Physically Handicaped'),
(3, 'By Scholarship Tests DGSS', 'Poor'),
(4, 'Scholarship GKSS', 'Diffance,Police '),
(5, '10 base scholarship', '10 Base Scholarship'),
(6, '12 base scholarship', '12 Base Scholarship');

-- --------------------------------------------------------

--
-- Table structure for table `sept`
--

CREATE TABLE `sept` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `s1` enum('p','a','h') DEFAULT NULL,
  `s2` enum('p','a','h') DEFAULT NULL,
  `s3` enum('p','a','h') DEFAULT NULL,
  `s4` enum('p','a','h') DEFAULT NULL,
  `s5` enum('p','a','h') DEFAULT NULL,
  `s6` enum('p','a','h') DEFAULT NULL,
  `s7` enum('p','a','h') DEFAULT NULL,
  `s8` enum('p','a','h') DEFAULT NULL,
  `s9` enum('p','a','h') DEFAULT NULL,
  `s10` enum('p','a','h') DEFAULT NULL,
  `s11` enum('p','a','h') DEFAULT NULL,
  `s12` enum('p','a','h') DEFAULT NULL,
  `s13` enum('p','a','h') DEFAULT NULL,
  `s14` enum('p','a','h') DEFAULT NULL,
  `s15` enum('p','a','h') DEFAULT NULL,
  `s16` enum('p','a','h') DEFAULT NULL,
  `s17` enum('p','a','h') DEFAULT NULL,
  `s18` enum('p','a','h') DEFAULT NULL,
  `s19` enum('p','a','h') DEFAULT NULL,
  `s20` enum('p','a','h') DEFAULT NULL,
  `s21` enum('p','a','h') DEFAULT NULL,
  `s22` enum('p','a','h') DEFAULT NULL,
  `s23` enum('p','a','h') DEFAULT NULL,
  `s24` enum('p','a','h') DEFAULT NULL,
  `s25` enum('p','a','h') DEFAULT NULL,
  `s26` enum('p','a','h') DEFAULT NULL,
  `s27` enum('p','a','h') DEFAULT NULL,
  `s28` enum('p','a','h') DEFAULT NULL,
  `s29` enum('p','a','h') DEFAULT NULL,
  `s30` enum('p','a','h') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stationary`
--

CREATE TABLE `stationary` (
  `id` int(11) NOT NULL,
  `amount` varchar(5) DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `roll_no` varchar(5) DEFAULT NULL,
  `submit_by` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stationary`
--

INSERT INTO `stationary` (`id`, `amount`, `datee`, `roll_no`, `submit_by`, `name`) VALUES
(1, '5000', '2018-06-06', '55555', 2, 'book '),
(2, '200', '2018-07-26', '54001', 2, 'bag'),
(3, '500', '2018-08-16', '99991', 1, 'T-Shirt'),
(4, '900', '2018-08-20', '99991', 1, 'winter jacket');

-- --------------------------------------------------------

--
-- Table structure for table `stu_lib`
--

CREATE TABLE `stu_lib` (
  `id` int(11) NOT NULL,
  `datee` date NOT NULL,
  `submit_by` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_lib`
--

INSERT INTO `stu_lib` (`id`, `datee`, `submit_by`, `stu_id`, `photo`, `title`) VALUES
(1, '2018-07-25', 1, 33333, '1532504108_PRINCE DHARIWAL.jpg', '10th'),
(2, '2018-07-25', 1, 33333, '1532504108_Arjun Soni.jpg', '11th'),
(9, '2018-08-16', 1, 99992, '1534403534_1234.png', 'sdf'),
(10, '2018-08-16', 1, 99992, '1534403534_1234.png', 'sfaser');

-- --------------------------------------------------------

--
-- Table structure for table `stu_profile`
--

CREATE TABLE `stu_profile` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `token_no` varchar(15) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `f_name` varchar(40) NOT NULL,
  `m_name` varchar(40) NOT NULL,
  `f_mobile` varchar(12) NOT NULL,
  `m_mobile` varchar(12) NOT NULL,
  `s_mobile` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `category` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `ll_no` varchar(12) NOT NULL,
  `c_address` varchar(60) NOT NULL,
  `c_state` varchar(20) NOT NULL,
  `c_district` varchar(20) NOT NULL,
  `c_city` varchar(20) NOT NULL,
  `c_tehsil` varchar(20) NOT NULL,
  `c_pin` varchar(10) NOT NULL,
  `p_address` varchar(60) NOT NULL,
  `p_state` varchar(20) NOT NULL,
  `p_district` varchar(20) NOT NULL,
  `p_tehsil` varchar(20) NOT NULL,
  `p_city` varchar(20) NOT NULL,
  `p_pin` varchar(10) NOT NULL,
  `x_roll` varchar(15) NOT NULL,
  `x_pcent` varchar(6) NOT NULL,
  `x_schl_name` varchar(20) NOT NULL,
  `x_board` varchar(20) NOT NULL,
  `xii_roll` varchar(10) NOT NULL,
  `xii_pcent` varchar(6) NOT NULL,
  `xii_schl_name` varchar(20) NOT NULL,
  `xii_board` varchar(20) NOT NULL,
  `aipmt_roll` varchar(15) NOT NULL,
  `aiims_roll` varchar(15) NOT NULL,
  `aipvt_roll` varchar(15) NOT NULL,
  `icar_roll` varchar(15) NOT NULL,
  `rpvt_roll` varchar(15) NOT NULL,
  `jeem_roll` varchar(15) NOT NULL,
  `jeea_roll` varchar(15) NOT NULL,
  `scholarship` int(11) NOT NULL,
  `scholar_reason` varchar(50) NOT NULL,
  `scholar_subreason` varchar(30) NOT NULL,
  `send_to` varchar(15) NOT NULL,
  `refer_to` varchar(15) NOT NULL,
  `feedback` varchar(80) NOT NULL,
  `leave_at` varchar(20) NOT NULL,
  `pg_name` varchar(50) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `propic` text NOT NULL,
  `note` text NOT NULL,
  `wheree` enum('addmission','inquiry','demo','leave') NOT NULL DEFAULT 'inquiry',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `genrate_token` int(11) NOT NULL,
  `admission` int(11) NOT NULL,
  `other_detail` int(11) NOT NULL,
  `demo_class` int(11) NOT NULL,
  `inquiry_date` date NOT NULL,
  `addmission_date` date NOT NULL,
  `black_list` enum('y','n') NOT NULL DEFAULT 'n',
  `registration_date` date NOT NULL,
  `registration_by` int(11) NOT NULL,
  `refund_by` int(11) NOT NULL,
  `refund_date` date NOT NULL,
  `last_where` enum('addmission','demo') NOT NULL,
  `old_student` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_profile`
--

INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(1010, 4, 0, '1235575', 0, 'Kajal', 'Premkumar', '', '9509024959', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1011, 9, 0, '1235576', 0, 'Manmohan', 'Binjaram pawar', '', '9414065671', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1012, 9, 0, '1235577', 0, 'Sahiram', 'Gopichand', '', '9602411826', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1013, 9, 0, '1235578', 0, 'Neha Bishnoi', 'Shyopat RAM', '', '9414433958', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1014, 3, 0, '1235579', 0, 'Manvendar  Singh ', 'Man Singh ', '', '9024090075', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1015, 4, 0, '1235580', 0, 'Harshwardan', 'Ranjeet Negdev', '', '9636823394', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1016, 4, 0, '1235581', 0, 'Harshit Swami', 'Dinesh', '', '9414631550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1017, 4, 0, '1235582', 0, 'Surbhi  Gahlot', 'Jesraj', '', '9460414008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1018, 4, 0, '1235583', 0, 'Aditiya Godara', 'Shivram', '', '9414547190', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1019, 4, 0, '1235584', 0, 'Bharaty Sharma', 'Omprakash ', '', '9821578210', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1020, 4, 0, '1235585', 0, 'Kapil', 'TolaRam ', '', '9166391233', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1021, 4, 0, '1235586', 0, 'UJJwal', 'Santosh', '', '8561923811', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1022, 5, 0, '1235587', 0, 'Chirag Singh tawar', 'Virender', '', '9829325017', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1023, 4, 0, '1235588', 0, 'Ravina Bishnoi ', 'Pancha Ram ', '', '7587207429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1024, 4, 0, '1235589', 0, 'Sarwan Kumar ', 'Govind Ram ', '', '9667496833', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1025, 4, 0, '1235590', 0, 'Manvender singh', 'Vijender singh', '', '9460090456', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1026, 4, 0, '1235591', 0, 'Sunil ', 'Sankar Jyani', '', '9829793536', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1027, 5, 0, '1235592', 0, 'NISA SONI', 'Rajesh soni', '', '9602207465', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1028, 4, 0, '1235593', 0, 'Jyoti Meghwal', 'HariRam ', '', '9413465890', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1029, 4, 0, '1235594', 0, 'Aashish  Mandal ', 'Preetam Prasad ', '', '8829868600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1030, 4, 0, '1235595', 0, 'Rajat', 'Vijay Kumar ', '', '9828275586', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1031, 4, 0, '1235596', 0, 'Sanah ', 'Jaikaran ', '', '9460541762', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1032, 4, 0, '1235597', 0, 'Ashok', 'Bhagirath Prasad ', '', '7568774305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1033, 4, 0, '1235598', 0, 'Mukesh  Saini ', 'Asha Ram', '', '7042903071', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1034, 4, 0, '1235599', 0, 'Ajanta ', 'Gokul Ram  ', '', '9461047621', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1035, 4, 0, '1235600', 0, 'Jayshree Soni ', 'Inderdan Soni ', '', '9079336603', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1036, 4, 0, '1235601', 0, 'Sharda ', 'O.p jhakhad', '', '9414129525', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1037, 4, 0, '1235602', 0, 'Hemant Suthar', 'jhawarlal', '', '9351830950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1038, 4, 0, '1235603', 0, 'yashwant Uphadya', 'Laxmi Narayan ', '', '9001870918', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1039, 4, 0, '1235604', 0, 'Aanchal Swami', 'Shrawan Swami ', '', '9413377608', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1040, 4, 0, '1235605', 0, 'Lavika ', 'Dharmveer Verma ', '', '9461603377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1041, 4, 0, '1235606', 0, 'Hitesh Shankhla ', 'Rajesh ', '', '9413013874', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1042, 4, 0, '1235607', 0, 'Chetna Pareek ', 'Mahendra Pareek ', '', '9829399942', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1043, 4, 0, '1235608', 0, 'Rajpreet ', 'Hardeep Singh ', '', '9414480981', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1044, 4, 0, '1235609', 0, 'yash Sanwal ', 'Mukesh Sanwal ', '', '9214984828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1045, 4, 0, '1235610', 0, 'Prashant Meena', 'Mohanl Meena', '', '8947904020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1046, 4, 0, '1235611', 0, 'Navjeet', 'Rajender Singh', '', '8947872552', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1047, 4, 0, '1235612', 0, 'Aditya ', 'Shivram', '', '8278628453', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1048, 4, 0, '1235613', 0, 'Mohd. Shabaz ', 'Iftekhr', '', '9460305292', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1049, 4, 0, '1235614', 0, 'Goutam ', 'Devendra Kumar ', '', '8114457852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1050, 4, 0, '1235615', 0, 'Monish ', 'Rajveer  Singh ', '', '9829169909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1051, 4, 0, '1235616', 0, 'Ankita ', 'Ram Prakash ', '', '9649684838', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1052, 4, 0, '1235617', 0, 'Ravina Ratnoo ', 'Ramdan Ratnoo', '', '9828391998', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1053, 4, 0, '1235618', 0, 'Sarita Baror', 'Rampratap ', '', '9785875357', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1054, 4, 0, '1235619', 0, 'Lakshita Bishnoi ', 'Ramprakash ', '', '9413939126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1055, 4, 0, '1235620', 0, 'Monika Chhimpa ', 'Santosh Kumar ', '', '9694712068', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1056, 4, 0, '1235621', 0, 'Radhey Shyam ', 'Harop Ram ', '', '9950797585', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1057, 4, 0, '1235622', 0, 'Anjana ', 'ManiRam', '', '9636096537', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1058, 4, 0, '1235623', 0, 'Shubash Dhayal ', 'Jay Ram ', '', '9983516460', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1059, 4, 0, '1235624', 0, 'Vedika ', 'Lalit Kumar', '', '9413106904', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1060, 4, 0, '1235625', 0, 'Amit Kumar ', 'Dharamchand ', '', '8107586928', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1061, 4, 0, '1235626', 0, 'Tamana ', 'Ramniwas ', '', '9414577585', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1062, 4, 0, '1235627', 0, 'Sarita Godara ', 'Ganpat Ram ', '', '9928112831', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1063, 4, 0, '1235628', 0, 'Khushboo Sharma ', 'AkhaRam Sharma ', '', '7413834245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1064, 4, 0, '1235629', 0, 'Krishan Thalor ', 'Charan Singh ', '', '9057512754', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1065, 4, 0, '1235630', 0, 'Sandeep Kumar ', 'Shiv Narayan ', '', '9001303597', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1066, 4, 0, '1235631', 0, 'Saurabh Jawa ', 'Gajraj Jawa ', '', '9799283183', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1067, 4, 0, '1235632', 0, 'Pooja Bishnoi ', 'Madanlal ', '', '8290204130', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1068, 4, 0, '1235633', 0, 'Harikishan ', 'Omprakash ', '', '9460126577', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1069, 4, 0, '1235634', 0, 'Mohit Dhamu ', 'Laxmi Narayan ', '', '9928763391', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1070, 4, 0, '1235635', 0, 'Gitika modi', 'Laxminarayan', '', '9252591407', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1071, 4, 0, '1235636', 0, 'Sourabh Jatoliya', 'Babulal', '', '9214896122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1072, 4, 0, '1235637', 0, 'Ashmi Soni ', 'Jitender ', '', '7014101458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1073, 4, 0, '1235638', 0, 'Viranshi ', 'Yogesh ', '', '9269302777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1074, 4, 0, '1235639', 0, 'Vikash  Inkhiya ', 'Ramnarayan ', '', '9929393265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1075, 4, 0, '1235640', 0, 'Karuna  Tanwar ', 'Babulal ', '', '9314443554', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1076, 4, 0, '1235641', 0, 'Lokender ', 'Babu Dan', '', '9413204771', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1077, 4, 0, '1235642', 0, 'Muskan ', 'Hari Krishan ', '', '9414967371', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1078, 4, 0, '1235643', 0, 'Puru Raj ', 'Kalan Singh ', '', '9414451389', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1079, 4, 0, '1235644', 0, 'Jatin Satotra ', 'Kuldeep Satotra ', '', '8860854970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1080, 4, 0, '1235645', 0, 'Rupam ', 'Parmatama Ram ', '', '7410996700', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1081, 4, 0, '1235646', 0, 'Rohan ', 'Mukesh Valmiki ', '', '9460780753', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1082, 4, 0, '1235647', 0, 'Ashwini  ', 'Mahendra Kumar ', '', '9001781262', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1083, 4, 0, '1235648', 0, 'Harshita Kanwar ', 'Yogendra ', '', '9929040560', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1084, 4, 0, '1235649', 0, 'Moomal ', 'Jitendra Singh ', '', '9414451389', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1085, 4, 0, '1235650', 0, 'Vinita Suthar ', 'Raghuveer ', '', '9782440746', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1086, 4, 0, '1235651', 0, 'Apoorva ', 'Rameshwar Beniwal ', '', '9413659363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1087, 4, 0, '1235652', 0, 'Kalpana ', 'Raja Ram ', '', '7568738871', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1088, 4, 0, '1235653', 0, 'Aman ', 'Sushil Kumar ', '', '9783283000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1089, 4, 0, '1235654', 0, 'Tarun ', 'Dr. Mohanlal ', '', '9829020737', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1090, 4, 0, '1235655', 0, 'Anjana Nath ', 'Ashish Nath ', '', '7230044120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1091, 4, 0, '1235656', 0, 'Anmol ', 'Sanjiv Garg ', '', '8764310958', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1092, 4, 0, '1235657', 0, 'Vanshika ', 'Sanjay ', '', '7792072135', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1093, 4, 0, '1235658', 0, 'Suman ', 'Chena Ram ', '', '9784852616', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1094, 4, 0, '1235659', 0, 'Megha Acharya ', 'Devendra ', '', '6375289570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1095, 4, 0, '1235660', 0, 'Devender Bishnoi', 'kIshnaram', '', '7742934729', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1096, 4, 0, '1235661', 0, 'Shweta ', 'Roop Singh ', '', '9413725099', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1097, 4, 0, '1235662', 0, 'Esha Chouhan ', 'Amar Singh', '', '8769412599', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1098, 4, 0, '1235663', 0, 'Begha Ram', 'Badri Ram', '', '9414266667', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1099, 4, 0, '1235664', 0, 'Pooja Jaipal', 'Happu Ram ', '', '9950002909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1100, 4, 0, '1235665', 0, 'Pulkit Bhadu ', 'Chander Shekhar', '', '9460120607', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1101, 4, 0, '1235666', 0, 'Lovely', 'Rakesh Pandey', '', '9829192214', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1102, 4, 0, '1235667', 0, 'Gajender ', 'Hethram ', '', '8107046207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1103, 4, 0, '1235668', 0, 'Bharat Kishor ', 'Manohar ', '', '9414222844', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1104, 4, 0, '1235669', 0, 'Mhaveer', 'Patram', '', '9414265029', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1105, 4, 0, '1235670', 0, 'Vishal Meghwal', 'Bhuaram', '', '9429541276', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1106, 4, 0, '1235671', 0, 'Kundan Vyas', 'Virender Prasad', '', '9829095807', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1107, 4, 0, '1235672', 0, 'Priyanka ', 'jagdish prasad ', '', '7742965329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1108, 4, 0, '1235673', 0, 'Anchal ', 'Suresh Acharya', '', '9001248848', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1109, 4, 0, '1235674', 0, 'Shrwan Kumar', 'Govind Ram ', '', '9296993932', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1110, 4, 0, '1235675', 0, 'ANIL bishnoi', 'Namichand', '', '9694493723', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1111, 4, 0, '1235676', 0, 'Priyanka bishnoi', 'Prithviraj bishnoi', '', '9929842878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1112, 4, 0, '1235677', 0, 'Chander Prakash ', 'Nathu Ram ', '', '9079282437', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1113, 4, 0, '1235678', 0, 'Jhui ', 'Gopal Das ', '', '9309055324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1114, 4, 0, '1235679', 0, 'Sunil ', 'Raju Ram ', '', '9982091977', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1115, 4, 0, '1235680', 0, 'Mukesh ', 'Balram ', '', '9530019453', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1116, 4, 0, '1235681', 0, 'Pratibha ', 'Suresh Chander ', '', '9079137053', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1117, 4, 0, '1235682', 0, 'Anisha  Bishnoi ', 'MaliRam ', '', '9929393323', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1118, 4, 0, '1235683', 0, 'Ganesh Kumawat ', 'Bhanwar Lal', '', '8963049772', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1119, 4, 0, '1235684', 0, 'Vishnu ', 'Ramsaroop ', '', '9784524675', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1120, 4, 0, '1235685', 0, 'Ashok Moond ', 'Hanuman ', '', '9782590091', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1121, 4, 0, '1235686', 0, 'Utpal Parihar ', 'Santosh Kumar ', '', '8875486004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1122, 4, 0, '1235687', 0, 'Sachin Kumar  Meena ', 'Gangasahi ', '', '8058747529', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1123, 4, 0, '1235688', 0, 'Chirag', 'Jagdish ', '', '9782463274', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1124, 4, 0, '1235689', 0, 'Jaideep ', 'Manakchand', '', '8290249557', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1125, 4, 0, '1235690', 0, 'Niranjan ', 'Lunkaran  Meghwal ', '', '8926836647', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1126, 5, 0, '1235691', 0, 'Vikas ', 'GopalRam ', '', '9460270262', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1127, 5, 0, '1235692', 0, 'Leeladhar ', 'Ramswarop', '', '9571672034', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1128, 5, 0, '1235693', 0, 'Praveen', 'Navjeet ', '', '9079137053', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1129, 5, 0, '1235694', 0, 'Angad Godara ', 'Rakesh Kumar ', '', '9602018580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1130, 5, 0, '1235695', 0, 'Shubham  Vyas ', 'Bharat Bhushan Vyas ', '', '9468574329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1131, 5, 0, '1235696', 0, 'Ashish Singh', 'Govind  Singh', '', '9829325017', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1132, 5, 0, '1235697', 0, 'Mukesh dan charan', 'Aaidan Charan', '', '8386843453', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1133, 5, 0, '1235698', 0, 'Ajay Singh ', 'Baldev Singh ', '', '9728400209', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1134, 5, 0, '1235699', 0, 'Tesesh ', 'Shiv Kumar', '', '9829687978', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1135, 5, 0, '1235700', 0, 'Shubham Vyas', 'Bhissan Vyas', '', '9782648493', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1136, 5, 0, '1235701', 0, 'Payal  ', 'Ramratan  Ji ', '', '9269124397', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1137, 5, 0, '1235702', 0, 'Gyani Ram ', 'Sharwan  Ram ', '', '9636735658', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1138, 5, 0, '1235703', 0, 'Aditya ', 'Madanlal ', '', '9079826578', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(1139, 4, 0, '1235704', 0, 'Harsh', 'Anil kumar', '', '9549607770', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1140, 4, 0, '1235705', 0, 'Sahil Meena ', 'Rajendar Kumar', '', '9460016618', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1141, 4, 0, '1235706', 0, 'GouriShankar ', 'Babulal ', '', '8107586928', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1142, 4, 0, '1235707', 0, 'Paras Beniwal ', 'Prem Kumar ', '', '8560992519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1143, 4, 0, '1235708', 0, 'Nisha ', 'Mohd. Zama ', '', '9784555199', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1144, 4, 0, '1235709', 0, 'Dheeraj Joshi', 'Hari Kishan ', '', '7727932198', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1145, 4, 0, '1235710', 0, 'Gopal Suthar ', 'Ramdev Suthar ', '', '7073355372', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1146, 4, 0, '1235711', 0, 'Mehender', 'kishanlal', '', '8094383219', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1147, 4, 0, '1235712', 0, 'Chetan Sharma ', 'Gouri Shankar ', '', '9929439522', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1148, 4, 0, '1235713', 0, 'Komal', 'Methu Singh', '', '9352211067', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1149, 4, 0, '1235714', 0, 'Urmila Bishnoi', 'kIshnaram', '', '7742934729', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1150, 4, 0, '1235715', 0, 'Varsha', 'Chuna Ram', '', '7725964950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1151, 4, 0, '1235716', 0, 'Vishakha Sharma', 'Omprakash ', '', '7727867909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1152, 6, 0, '1235717', 0, 'Rajesh ', 'Jagdish  Bishnoi ', '', '9799171653', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1153, 6, 0, '1235718', 0, 'Ashiwin ', 'Deshraj ', '', '9309055324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1154, 6, 0, '1235719', 0, 'Diksha ', 'Bharat Bhushan ', '', '9413431320', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1155, 6, 0, '1235720', 0, 'Komal Suthar ', 'Narayan Prasad ', '', '9413106053', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1156, 6, 0, '1235721', 0, 'Jagdish ', 'Gopalram', '', '9982409283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1157, 6, 0, '1235722', 0, 'Kanishk ', 'Mahendra  Kumar ', '', '9462255284', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1158, 6, 0, '1235723', 0, 'Bhawesh Siyag ', 'Ramlal Siyag ', '', '9414050140', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1159, 6, 0, '1235724', 0, 'Rajender', 'Gangaram', '', '9784507096', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1160, 6, 0, '1235725', 0, 'Ravinder', 'Omprakash ', '', '9784507096', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1161, 6, 0, '1235726', 0, 'Rahul Bhadu ', 'Ganga Bishan', '', '9460222832', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1162, 6, 0, '1235727', 0, 'Manfool Saran ', 'Likhma Ram ', '', '9829436298', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1163, 6, 0, '1235728', 0, 'Mangilal ', 'Harji Ram ', '', '8003614451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1164, 6, 0, '1235729', 0, 'Chalu ', 'Prem Ram ', '', '9672161845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1165, 6, 0, '1235730', 0, 'Divyanshu Pal ', 'Rakesh Kumar ', '', '9461012275', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1166, 1, 0, '1235731', 0, 'Jayshree ', 'Mahender Singh ', '', '9413094281', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1167, 2, 0, '1235732', 0, 'Jafardin ', 'Mumtaz Ali ', '', '9950503422', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1168, 9, 0, '1235733', 0, 'Yogita', 'Dilip Tosanwal', '', '9269765485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1169, 8, 0, '1235734', 0, 'Bhagwati', 'Bansilal', '', '9875204207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1170, 8, 0, '1235735', 0, 'Someshwar ', 'Mahesh Kumar ', '', '9828844470', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1171, 8, 0, '1235736', 0, 'Gourav Meena ', '', '', '6350259669', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1172, 8, 0, '1235737', 0, 'Gulfiza ', 'Dilawar Hussain ', '', '8949086865', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1173, 8, 0, '1235738', 0, 'Pavitra Siyag', 'Dr. Balwant Siyag ', '', '9414949173', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1174, 8, 0, '1235739', 0, 'Abid ', 'Mohd. Zakir ', '', '7877723207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1175, 8, 0, '1235740', 0, 'Poonam Choudhary ', 'Ram Murti ', '', '9988668499', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1176, 8, 0, '1235741', 0, 'Rampratap', 'Mohan Ram ', '', '9667402946', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1177, 8, 0, '1235742', 0, 'Kapil Dadich ', '', '', '9413368258', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1178, 8, 0, '1235743', 0, 'Shivprakash ', 'Shankarlal ', '', '9602959481', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1179, 8, 0, '1235744', 0, 'Rishi Raj ', 'Devraj Ji ', '', '9783967706', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1180, 8, 0, '1235745', 0, 'Raza Husan', 'Sahib ALI', '', '9461727466', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1181, 8, 0, '1235746', 0, 'Sidanth', 'Kulveer Siyag ', '', '9414452138', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1182, 8, 0, '1235747', 0, 'Muskan  Nagpal ', 'Prem Nagpal ', '', '9413377080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1183, 8, 0, '1235748', 0, 'Ashish ', 'Ved Prakash ', '', '9214893551', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1184, 8, 0, '1235749', 0, 'Meenakshi ', 'Sanjeev ', '', '9414217338', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1185, 8, 0, '1235750', 0, 'Manvendar  Singh ', 'Mohan Singh', '', '8003800595', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1186, 8, 0, '1235751', 0, 'Shweta ', 'Mukesh ', '', '7737608817', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1187, 8, 0, '1235752', 0, 'Muskan Agrawal ', 'Arvind Kumar ', '', '8559833346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1188, 8, 0, '1235753', 0, 'DevGupta ', 'punit kumar', '', '987113502', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1189, 8, 0, '1235754', 0, 'Kapil Soni', 'Ratanlal ', '', '9828272438', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1190, 8, 0, '1235755', 0, 'Jasraj', 'Jitendra Singh ', '', '9252185262', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1191, 8, 0, '1235756', 0, 'Rishabh Soni ', 'Sunil Soni', '', '9119345188', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1192, 8, 0, '1235757', 0, 'Priyanka Rathore', 'Mansi Singh', '', '8003672009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1193, 8, 0, '1235758', 0, 'Mohit', 'Manoj kumar Saran', '', '8529097537', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1194, 8, 0, '1235759', 0, ' Niharika Shankhla', 'Alok', '', '9413822636', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1195, 8, 0, '1235760', 0, 'Varun Sharma ', 'Manohar Shankar ', '', '8005505812', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1196, 8, 0, '1235761', 0, 'Babulal ', 'Taka Ram ', '', '9784052784', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1197, 8, 0, '1235762', 0, 'prasant', 'BanwariLal', '', '7412865003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1198, 8, 0, '1235763', 0, 'Ritika', 'Data Ram', '', '9462027282', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1199, 8, 0, '1235764', 0, 'Dinesh diloiya', 'Hanuman', '', '9784432078', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1200, 8, 0, '1235765', 0, 'SHELJA PARIHAR', 'Veer singh', '', '8094404120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1201, 8, 0, '1235766', 0, 'Rohan Narang', 'Rajkumar', '', '9252259845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1202, 8, 0, '1235767', 0, 'Jagrati Gujar', 'Kalish Ji ', '', '8619029311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1203, 8, 0, '1235768', 0, 'Mohit ', 'Sanjay Kumar', '', '941747359', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1204, 8, 0, '1235769', 0, 'Rohit ', 'LabhuRam  Saraswat ', '', '8696627133', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1205, 8, 0, '1235770', 0, 'Shahen', 'Nazmudin ', '', '9413265703', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1206, 8, 0, '1235771', 0, 'Mehzbeen ', 'Nazmudin ', '', '9413265703', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1207, 8, 0, '1235772', 0, 'Mohit Kaswan ', 'Ram Dayal ', '', '9928886174', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1208, 8, 0, '1235773', 0, 'Saransh ', 'Surendra Ji ', '', '9992268574', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1209, 8, 0, '1235774', 0, 'Ankit Sharma ', 'Shyamlal Sharma ', '', '9929461372', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1210, 8, 0, '1235775', 0, 'Farhat', 'Sahil Ali ', '', '9461727466', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1211, 8, 0, '1235776', 0, 'Idris ', 'Kayum Ali ', '', '8890457986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1212, 8, 0, '1235777', 0, 'Jahangir ', 'Mahboob Ali ', '', '9667147206', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1213, 8, 0, '1235778', 0, 'Yashashvi Bhati ', 'Amit Raj ', '', '9785163659', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1214, 8, 0, '1235779', 0, 'Tanuja ', 'Rakesh Kumar ', '', '9414329334', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1215, 8, 0, '1235780', 0, 'Shubham charan', 'kalish Dan  ', '', '9929670540', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1216, 8, 0, '1235781', 0, 'Muskan Nagpal ', 'Shri Prem', '', '9166360007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1217, 8, 0, '1235782', 0, 'Gaurav Meena ', 'Mahendra Singh ', '', '9414547109', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1218, 8, 0, '1235783', 0, 'Saliza khan ', 'Sokit Ali ', '', '9460100920', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1219, 8, 0, '1235784', 0, 'Vikla Meena ', 'Samwalia', '', '8107147755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1220, 8, 0, '1235785', 0, 'Harshwardhan Rathore ', 'Pratap Singh ', '', '7073672350', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1221, 8, 0, '1235786', 0, 'Nisha ', 'Subhash ', '', '9992751264', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1222, 8, 0, '1235787', 0, 'Sweta Chopra ', 'Gautam Chopra', '', '9413079355', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1223, 8, 0, '1235788', 0, 'Metali', 'Rajeev Pareek ', '', '9829896667', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1224, 8, 0, '1235789', 0, 'Sandeep ', 'Inderpal ', '', '9355482022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1225, 8, 0, '1235790', 0, 'Sudarshan ', 'Devaram ', '', '9414071772', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1226, 8, 0, '1235791', 0, 'Yuri Bhargav  ', 'Subhash Chandra', '', '9667233445', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1227, 8, 0, '1235792', 0, 'Kashish Khatri ', 'Mukesh Khatri ', '', '9214075593', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1228, 8, 0, '1235793', 0, 'Jitendra Pal ', 'Swran Singh ', '', '9929785429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1229, 8, 0, '1235794', 0, 'Ritu Kumari Vashishta ', 'Hemant Sharma ', '', '9460893512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1230, 8, 0, '1235795', 0, 'Harshwardhan', 'Pratap Singh ', '', '9660121337', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1231, 8, 0, '1235796', 0, 'Ankita ', 'Suresh Tanwar ', '', '9414990665', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1232, 8, 0, '1235797', 0, 'Suchata ', 'Babu Dan', '', '9983728283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1233, 8, 0, '1235798', 0, 'Nikhil', 'Rajesh Kumar Pareek ', '', '8559803715', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1234, 8, 0, '1235799', 0, 'Nisha ', 'Mangi Ram ', '', '7737725486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1235, 8, 0, '1235800', 0, 'Anjali  Sharma ', 'Babulal Sharma ', '', '8079085635', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1236, 8, 0, '1235801', 0, 'Megha ', 'Rajeev Kumar ', '', '8726686941', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1237, 8, 0, '1235802', 0, 'Nansi ', 'Mahendra Jindal', '', '9414948868', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1238, 8, 0, '1235803', 0, 'Saleha', 'Nabshar Panwar', '', '9460644620', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1239, 8, 0, '1235804', 0, 'Kamalpreet ', 'Rajvinder ', '', '9829049852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1240, 8, 0, '1235805', 0, 'Sujata ', 'Ranjeet Singh ', '', '8385000038', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1241, 8, 0, '1235806', 0, 'Devender Choudhary ', 'Rakesh Choudhary ', '', '9414658291', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1242, 8, 0, '1235807', 0, 'Piyush ', 'Daya Shankar ', '', '7597052423', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1243, 8, 0, '1235808', 0, 'Ayushi', 'Laxman  Singh ', '', '9649248909', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1244, 8, 0, '1235809', 0, 'Kanupriya ', 'LakiRam', '', '9414329334', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1245, 8, 0, '1235810', 0, 'Priti ', 'Manfool ', '', '9269124397', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1246, 8, 0, '1235811', 0, 'Pritul Pareek ', 'S.N Pareek ', '', '9921794944', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1247, 8, 0, '1235812', 0, 'Charu Sharma ', 'Shyam Sharma ', '', '9414604884', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1248, 8, 0, '1235813', 0, 'Dev Kishan ', 'Jagdish ', '', '8696627133', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1249, 8, 0, '1235814', 0, 'Kartik ', 'Devendra Chahar', '', '9414885838', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1250, 8, 0, '1235815', 0, 'Purva Shree ', 'Dr. Shashi Verma ', '', '9414425959', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1251, 8, 0, '1235816', 0, 'Arvind ', 'Manohar Lal ', '', '8003769687', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1252, 8, 0, '1235817', 0, 'Babita ', 'Satish kumar daga', '', '8696389950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1253, 8, 0, '1235818', 0, 'Vikash ', 'Kapil Sharma ', '', '9461222742', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1254, 8, 0, '1235819', 0, 'Mohd. Rahul', 'Mohd. Zahangeer ', '', '9414283758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1255, 8, 0, '1235820', 0, 'Hastu  Narnoia ', 'Chuni lal ', '', '8955156878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1256, 8, 0, '1235821', 0, 'Basanti  Jakhar ', 'Jetharam ji', '', '9636750408', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1257, 8, 0, '1235822', 0, 'Taj Karan ', 'Nakhta Ram ', '', '9982587305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1258, 8, 0, '1235823', 0, 'Pankaj kumar ', 'Rampratap ', '', '8529650106', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1259, 8, 0, '1235824', 0, 'Vikash Tiwari ', 'Dhamodhar  Tiwari ', '', '9214541024', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1260, 8, 0, '1235825', 0, 'Kashiram Ojha ', 'Anjani Kumar ', '', '9529377951', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1261, 8, 0, '1235826', 0, 'Shyam Dev  ', 'Prakash Chandar Kachhawa ', '', '6376439932', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1262, 8, 0, '1235827', 0, 'Sanju ', 'Nihalchand ', '', '9680925083', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1263, 8, 0, '1235828', 0, 'Priyanka ', 'Perta ram', '', '9875204207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1264, 8, 0, '1235829', 0, 'Aamina Bano', 'SarderAli', '', '8562876042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1265, 8, 0, '1235830', 0, 'Ankit Chharng', 'Ratanaram', '', '9672233923', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1266, 8, 0, '1235831', 0, 'Nishu', 'Balveer', '', '8387077149', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1267, 8, 0, '1235832', 0, 'Vivek Pandit ', 'Leeladhar ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(1268, 8, 0, '1235833', 0, 'Anjali ', 'Jagdish Suthar ', '', '9462911865', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1269, 8, 0, '1235834', 0, 'Dheeraj', 'Dulichand', '', '9414416855', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1270, 8, 0, '1235835', 0, 'Kamlesh', 'Lalaram', '', '8290687948', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1271, 8, 0, '1235836', 0, 'Narender', 'Kanaram', '', '7627029663', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1272, 8, 0, '1235837', 0, 'Narender kumar', 'InderRaj', '', '9828881961', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1273, 8, 0, '1235838', 0, 'Yukta Bardiya', 'Gourdhan', '', '9929883107', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1274, 8, 0, '1235839', 0, 'Priyanka Sain', 'Khetaram ', '', '9784240817', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1275, 8, 0, '1235840', 0, 'yogita', 'Mukesh', '', '7222856777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1276, 8, 0, '1235841', 0, 'Ravinder Dhayal', 'Atma ram', '', '9783778840', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1277, 8, 0, '1235842', 0, 'Anita godara', 'Mahipal godara', '', '9001858185', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1278, 8, 0, '1235843', 0, 'Arjun ', 'Asshok', '', '8239757556', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1279, 8, 0, '1235844', 0, 'Abhishek Meena', 'InderRaj', '', '8003901184', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1280, 8, 0, '1235845', 0, 'Raju', 'Hiralal', '', '7073250751', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1281, 8, 0, '1235846', 0, 'Mahesh Swami', 'Hetram', '', '9785681911', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1282, 8, 0, '1235847', 0, 'Anil Bhargav ', 'Devkishan ', '', '9602496257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1283, 8, 0, '1235848', 0, 'Hansraj ', 'Ram Narayan ', '', '7733971319', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1284, 8, 0, '1235849', 0, 'Anil ', 'Mahender', '', '9672931307', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1285, 8, 0, '1235850', 0, 'Renu Gahlot', 'Jeswal', '', '9252109185', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1286, 8, 0, '1235851', 0, 'Monika Gahlot', '', '', '9414139502', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1287, 8, 0, '1235852', 0, 'JAIPAL', 'Ramlal kukrna', '', '7691027470', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1288, 8, 0, '1235853', 0, 'Amita', 'Gheever Rm', '', '7665919176', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-13', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1289, 8, 0, '1235854', 0, 'Nitin', 'Nandkishor', '', '9829883143', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1290, 8, 0, '1235855', 0, 'Ramesh pareek', 'khanayalal', '', '9983982631', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1291, 8, 0, '1235856', 0, 'prashant Rajpurohit', 'Rajender Singh', '', '8003249566', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1292, 8, 0, '1235857', 0, 'Pramjeet', 'Manoharlal', '', '7726048088', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1293, 8, 0, '1235858', 0, 'Ankit Saraswat ', 'Hansraj ', '', '9414400052', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1294, 8, 0, '1235859', 0, 'Rajendra ', 'Ram Pratap ', '', '9782871695', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-14', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1295, 8, 0, '1235860', 0, 'Garima ', 'Sanwarlal ', '', '9413372864', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1296, 8, 0, '1235861', 0, 'Subh Karan ', 'Hari Ram', '', '9413279325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1297, 8, 0, '1235862', 0, 'Harpreet  Kaur ', 'Jagtar Singh ', '', '9649056007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1298, 8, 0, '1235863', 0, 'Ritika Kanwar ', 'Bhawar Singh', '', '9460904425', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1299, 8, 0, '1235864', 0, 'Chanchal Kanwar ', 'Bhawar Singh', '', '9460904425', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1300, 8, 0, '1235865', 0, 'Sangeeta Kanwar ', 'Pratap Singh ', '', '9460000469', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1301, 8, 0, '1235866', 0, 'Shri Kishan ', 'Ramprasad ', '', '7610018622', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1302, 8, 0, '1235867', 0, 'Nisha ', 'Jaikaran ', '', '9460541762', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1303, 8, 0, '1235868', 0, 'Rakesh Kumar ', 'Bhawarlal ', '', '9116810734', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1304, 8, 0, '1235869', 0, 'Ajay Kumar', 'Ram Pratap', '', '9828652671', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1305, 8, 0, '1235870', 0, 'Suman ', 'Mohanlal ', '', '9929576608', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1306, 8, 0, '1235871', 0, 'Nikita ', 'Rameshwar Lal ', '', '9660960566', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1307, 8, 0, '1235872', 0, 'Monika Choudhary ', 'Bajranglal ', '', '7733065749', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1308, 8, 0, '1235873', 0, 'Rahul ', 'Uttam Kumar ', '', '99821885777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1309, 8, 0, '1235874', 0, 'Jagdish ', 'Gowardhan Ram ', '', '6376892905', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1310, 8, 0, '1235875', 0, 'Anudeep ', 'Ajeet Singh ', '', '9928449881', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1311, 8, 0, '1235876', 0, 'Garima Bhageriya ', 'Manoj Kumar ', '', '9649110107', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1312, 8, 0, '1235877', 0, 'Kanhayalal ', 'Ramlal Ji ', '', '8963861263', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1313, 8, 0, '1235878', 0, 'Jayshree ', 'Pusha Ram ', '', '8107854510', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1314, 8, 0, '1235879', 0, 'Priyanka Kumari ', 'Sarwan Kumar ', '', '9413970307', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1315, 8, 0, '1235880', 0, 'Prem Kumar ', 'Durgadutt ', '', '8505092299', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1316, 8, 0, '1235881', 0, 'Ramswaroop', 'Hansraj ', '', '8239466693', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1317, 8, 0, '1235882', 0, 'Punit Bhadu ', 'Bheekam Chand ', '', '9414863313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1318, 8, 0, '1235883', 0, 'Laxman ', 'Namichand ', '', '9413728290', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1319, 8, 0, '1235884', 0, 'Ritika ', 'Vijay Kumar ', '', '9413106446', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1320, 8, 0, '1235885', 0, 'Rishta ', 'Bharat Kumar ', '', '9314041640', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1321, 8, 0, '1235886', 0, 'Amit Swami ', 'Bajrang Das Swami ', '', '9982555827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1322, 8, 0, '1235887', 0, 'Jay Dayal ', 'Madan Dass ', '', '9057989106', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1323, 8, 0, '1235888', 0, 'Simran ', 'Ismil ', '', '9001228899', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1324, 8, 0, '1235889', 0, 'Yogesh Suthar ', 'Parmeshwar  Lal ', '', '9828834003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1325, 8, 0, '1235890', 0, 'Ajay ', 'Sukhdev ', '', '9251826508', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1326, 8, 0, '1235891', 0, 'Priyanka ', 'Rakesh Kumar ', '', '9785137031', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1327, 8, 0, '1235892', 0, 'Ankur ', 'Jetharam ji', '', '7413023755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1328, 8, 0, '1235893', 0, 'Gaytri  Kanwar ', 'Chainpal Singh ', '', '9649333563', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1329, 8, 0, '1235894', 0, 'Komal Suthar ', 'Omprakash ', '', '9828226677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1330, 8, 0, '1235895', 0, 'Sanju ', 'BrijLal  Dharniya ', '', '9983040325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1331, 8, 0, '1235896', 0, 'Shyam Sunder ', 'Bhanwar Lal', '', '9783340557', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1332, 8, 0, '1235897', 0, 'Virendra Singh ', 'Seema Kanwar ', '', '9413105072', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1333, 8, 0, '1235898', 0, 'Topesh  Kumar ', 'Sharwan Kumar ', '', '9783070541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1334, 8, 0, '1235899', 0, 'Gagandeep ', 'Ganga Ram ', '', '9828848677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1335, 8, 0, '1235900', 0, 'Dharmender ', 'Ranaram', '', '9784936359', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1336, 8, 0, '1235901', 0, 'Deepak Soni ', 'Dharmander', '', '9928809719', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1337, 8, 0, '1235902', 0, 'Raju Moond ', 'Heralal Moond ', '', '9166337821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1338, 8, 0, '1235903', 0, 'Mahesh ', 'Hetram ', '', '8104294180', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1339, 8, 0, '1235904', 0, 'Krishan Kumar ', 'Laxmi Narayan ', '', '7073566830', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1340, 8, 0, '1235905', 0, 'Akhter Hussain ', 'Sarid Ali ', '', '9602004893', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1341, 8, 0, '1235906', 0, 'Rajpal ', 'Uda Ram ', '', '9414582260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1342, 8, 0, '1235907', 0, 'Dharmesh', 'Ramkumar ', '', '7891428871', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1343, 8, 0, '1235908', 0, 'Nipender  Singh ', 'Shree Ram ', '', '9549899953', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1344, 8, 0, '1235909', 0, 'Ramandeep ', 'Harpal Singh', '', '9928677808', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1345, 8, 0, '1235910', 0, 'Jyoti ', 'Kishangopal ', '', '9672162980', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1346, 8, 0, '1235911', 0, 'Manju Devi ', '', '', '9672162980', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1347, 8, 0, '1235912', 0, 'Pragati Prajapat ', 'Omprakash ', '', '9413743775', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1348, 8, 0, '1235913', 0, 'Sanju Choudhary ', 'Rameshwerlal ', '', '9694143364', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1349, 8, 0, '1235914', 0, 'Divya Upadhaya', 'Premratan ', '', '9982707496', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1350, 8, 0, '1235915', 0, 'Jetha Ram ', 'Madanlal', '', '8890079021', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1351, 8, 0, '1235916', 0, 'Manisha Choudhary ', 'Ramrakh Siyag ', '', '9214664252', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1352, 8, 0, '1235917', 0, 'Ramdev', 'Mula Ram', '', '9799831709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-15', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1353, 8, 0, '1235918', 0, 'Kawaljeet ', 'Jitender ', '', '8952015190', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1354, 8, 0, '1235919', 0, 'Vashudev Saraswat ', 'Heeralal Sarswat ', '', '9214414221', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1355, 8, 0, '1235920', 0, 'Vishal Singh ', 'Mahender Singh ', '', '9928872511', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1356, 8, 0, '1235921', 0, 'Dropti ', 'Shankar Lal ', '', '9057512754', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-16', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1357, 8, 0, '1235922', 0, 'Suresh Kum ar ', 'Mohanlal ', '', '9950555727', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1358, 8, 0, '1235923', 0, 'Soniya ', 'Ramsaroop ', '', '9799983207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1359, 8, 0, '1235924', 0, 'Rahul Ojha ', 'Rajender  Kumar  Ojha ', '', '9982550522', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1360, 8, 0, '1235925', 0, 'Manohar Singh ', 'Madan Singh ', '', '9983816020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1361, 8, 0, '1235926', 0, 'Madhu Kumari ', 'Prema Ram ', '', '9799869542', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1362, 8, 0, '1235927', 0, 'Nishant ', 'Vijay Kumar ', '', '9414505319', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-18', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1363, 8, 0, '1235928', 0, 'Shobha ', 'Manoharlal ', '', '9928798946', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-19', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1364, 8, 0, '1235929', 0, 'Manju ', 'Laxman Ram ', '', '9784141356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1365, 8, 0, '1235930', 0, 'Ashwini  ', 'Raja Ram ', '', '9602673507', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1366, 9, 0, '1235931', 0, 'Arjun ', 'Bhagirath ', '', '9928474264', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1367, 9, 0, '1235932', 0, 'Krishna Siyag  ', 'Jagdish Siyag', '', '9983218211', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-17', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1368, 9, 0, '1235933', 0, 'Sonalika ', 'Mahesh Kumar ', '', '9521545956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1369, 9, 0, '1235934', 0, 'Yogita Maheshwari', '', '', '9269765485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '2018-06-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1370, 1, 0, '1235935', 0, 'hello', 'lkj', 'jh', '8947800330', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-06-22', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1371, 6, 0, '1235936', 0, 'mohit', 'dflkj', 'kl;j', '8947800330', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-06-22', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1374, 1, 0, '1235939', 0, 'hello', 'lkj', 'jkh', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', 'wdrf', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-06-26', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1375, 6, 0, '1235940', 0, 'nitin khiwani', 'asd;fklj', 'kl;jsdf', '7014181520', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', 'note here', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-06-26', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1377, 8, 0, '1235942', 0, 'anoop', 'sdf', 'rfh', '9928737178', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-06-27', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1378, 4, 0, '1235943', 0, 'anil kumar godara', 'mahaveer godara', 'Mahaveer Godara', '9950182032', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1379, 6, 0, '1235944', 0, 'Raj Verma', 'SDF', 'KL;', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1380, 6, 0, '1235945', 0, 'Teresa', 'Vishwajeet Ji', 'Mary M George', '9460228238', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '10th CBSE 8.6 CGPA Her father is a teacher in BBS, Bikaner', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1381, 4, 0, '1235946', 0, 'Bhawani Shankar', 'Hansraj Ji', 'XYZ', '8094520351', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1382, 4, 0, '1235947', 0, 'Swaroop Purohit', 'Bhagvendar Ji', 'XYZ', '9413100150', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1383, 8, 0, '1235948', 0, 'Neeraj Kumar', 'Brij Lal', 'XYZ', '8426865666', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1384, 4, 0, '1235949', 0, 'Nisha Goyal', 'Jawahar Lal', 'Pushpa Devi', '9413289711', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', 'This inquiry attend by Kanchan Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1385, 6, 0, '1235950', 0, 'Neha Bishnoi', 'Satpal Ji', 'Saroj Devi', '9667116012', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Kanchan Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1386, 4, 0, '1235951', 0, 'Manisha', 'Mahesh Ji Gahlot', 'XYZ', '9530206027', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1387, 5, 0, '1235952', 0, 'Jugal Pancharia', 'Manik Chand Ji', 'XYZ', '7665792985', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1388, 8, 0, '1235953', 0, 'Jagdish', 'Raju Ram', 'Leela Devi', '9785717973', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1389, 4, 0, '1235954', 0, 'Shilpa', 'Bhagwari Prasad Ji', 'XYZ', '8769318723', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1390, 4, 0, '1235955', 0, 'Akansha', 'hanuman Ji', 'XYZ', '9462860719', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1391, 8, 0, '1235956', 0, 'Prem Kumar', 'Durga Dutt Ji', 'XYZ', '7597163784', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1392, 8, 0, '1235957', 0, 'Keshra Ram', 'Sultana Ram', 'XYZ', '7413824892', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1393, 4, 0, '1235958', 0, 'Manish Pareek', 'Bhawani Shankar Ji', 'XYZ', '9983291149', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Kanchan Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1394, 8, 0, '1235959', 0, 'Yashwardhan', 'Surendra Singh Rajpurohit', 'XYZ', '9414139346', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Bharti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1395, 6, 0, '1235960', 0, 'Jiya', 'dilip Kumar', 'XYZ', '9079659006', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Kanchan Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1396, 8, 0, '1235961', 0, 'Lakshay Bishnoi', 'Sharwan Ram Ji', 'Pushpa Devi', '9460027131', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Anoop', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-03', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(1397, 7, 0, '1235962', 0, 'Sakti Singh', 'Man Singh Ji', 'Naini Kanwar', '9024090075', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '10th - 62%, 11th - Only pass\r\n12th - Compartment, He wants to improve percentage of 12th', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1398, 8, 0, '1235963', 0, 'Vikram kumar', 'Nathu Ram Ji', 'Sharda Devi', '9414144063', '', '', '', 'male', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1399, 8, 0, '1235964', 0, 'Lokendra Singh Solanki', 'Shankar Lal Ji Solanki', 'Meena Kanwar', '9413864829', '', '8107068472', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1400, 4, 0, '1235965', 0, 'Sonu Kumari', 'Sher Singh', 'xYZ', '9610294347', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', 'This Enquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1401, 3, 0, '1235966', 0, 'Harshit Ojha', 'Bhawani Shankar Ji', 'Indira Devi', '9950205055', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1402, 8, 0, '1235967', 0, 'Pawan Nath Sidh', 'Prahlad Ji', 'Geeta Devi', '8094839415', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1403, 4, 0, '1235968', 0, 'Nancy Kohri', 'Mohd. Arif Kohri', 'Erun Nisha', '9602624014', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1404, 4, 36, '1235969', 0, 'divya ', 'chunilal', 'amita', '9610204080', '', '9414429725', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '13', '', '', '', '', '', 'visit hostel', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1405, 1, 0, '1235970', 0, 'testing', 'sdf', 'sdf', '7014233930', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'test series', '10', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-04', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1406, 8, 47, '1235971', 0, 'Sandeep', 'Shankar lal Ji', 'XYZ', '9983166808', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1407, 8, 47, '1235972', 0, 'Kanchan Sarwan', 'B.L. Sarwan', 'Manni Devi', '8823961879', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', 'This inquiry attend by Aarti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1408, 8, 47, '1235973', 0, 'Poonam Chand', 'Mula Ram Ji', 'Nanni Devi', '8823961879', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1409, 1, 0, '1235974', 0, 'ABC', 'SDFKLJ', 'WDF', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1410, 1, 0, '1235974', 0, 'ABC', 'SDFKLJ', 'WDF', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1411, 1, 0, '1235975', 0, 'ABCCQ', 'DF', 'SDF', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1412, 1, 0, '1235974', 0, 'ABC', 'SDFKLJ', 'WDF', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1413, 7, 0, '1235976', 0, 'POIU', 'ASD', 'l', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 1, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1414, 4, 36, '1235977', 0, 'Heera Lal', 'Chhotu Ram Ji', 'Nanni Devi', '9950199601', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1415, 4, 35, '1235978', 0, 'Ankit', 'Raj Kumar Ji', 'Krishna Devi', '9950303255', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1416, 4, 37, '1235979', 0, 'VISHAKHA', 'OMPRAKASH', 'NEELAM', '7791809679', '', '7791809679', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '13', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1417, 4, 37, '1235980', 0, 'ASDF', 'KJH', 'IUGIUG', '8947800330', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'enquiry', '1', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1418, 4, 36, '1235981', 0, 'ARCHANA', 'GOPICHAND', 'GEETA DEVI', '9460000983', '', '9784240589', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1419, 4, 36, '1235982', 0, 'MANOJ GODARA', 'SUKHARAM', 'GEETADEVI', '9799708227', '', '9982311807', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1420, 4, 36, '1235983', 0, 'ANIL GODARA', 'MHAVEER GODARA', 'SHANTI', '9950182032', '', '9950182032', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1421, 4, 37, '1235984', 0, 'MOH.JENUAL', 'MOH.ABHID', 'AZRA', '9414137437', '', '9414137437', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1422, 5, 46, '1235985', 0, 'RAVINDER', 'MADAN SINGH', 'GAYATRI', '9462861219', '', '9462861219', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1423, 6, 39, '1235986', 0, 'SURBHI', 'DEEPAK', 'ALKA', '9315413364', '', '9315413364', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1424, 5, 44, '1235987', 0, 'JATIN BANYLA', 'ROSHANLAL BANYLA', 'MOHINI', '8824918837', '', '8824918837', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1425, 3, 3, '1235988', 0, 'jATIN', 'rAJENDRA ', 'jAISHREE', '9588254510', '', '9588254510', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1426, 2, 2, '1235989', 0, 'rIDHYM', 'rAJENDRA sWAMI', 'jAISHREE SWAMI', '9588254510', '', '9588254510', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1427, 6, 38, '1235990', 0, 'Raman Preet', 'Gurmeet singh', 'Kuldeep Kaur', '9414514812', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-05', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1428, 4, 36, '1235991', 0, 'Khushi Dhawal', 'Raj kumar Ji Dhawal', 'Indira Devi', '9828055814', '', '', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1429, 4, 36, '1235992', 0, 'Aaman Ahmed', 'Mukhtyar Ahmed', 'Rashida Bano', '9772508483', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1430, 8, 47, '1235993', 0, 'Divya Meena', 'Indra Chand Ji', 'Maya Meena', '7427023225', '', '', '', 'female', 'ST', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1431, 4, 36, '1235994', 0, 'Ravina Dharniya', 'Jagdish Ji', 'Shenu Devi', '9460442360', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1432, 4, 36, '1235995', 0, 'mamta', 'mamrajbhadu', 'vimla devi', '9214334923', '', '9214334923', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1433, 4, 35, '1235996', 0, 'shubham choudhary', 'surender kumar', 'rani siyag', '9950902495', '', '9950902495', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1434, 8, 48, '1235997', 0, 'shahin', 'moh rafik', 'zahida', '9460127786', '', '9460127786', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1435, 4, 36, '1235998', 0, 'Anisha Jatoliya', 'Dharmendra', 'munni Devi', '8963002025', '', '8963002025', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1436, 4, 36, '1235999', 0, 'harish maan', 'Kheli ram', 'bhawari Devi', '9610668039', '', '9610668039', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-07-06', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1437, 8, 47, '1236000', 0, 'bhawana', 'dayashanker', 'rani', '9953253294', '', '9953253294', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '8', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1438, 4, 36, '1236001', 0, 'ashwin i', 'motiram', 'seema', '9587552966', '9587552966', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1439, 4, 36, '1236002', 0, 'bhanu prakash', 'mhaveerdass', 'divya', '9587552966', '', '9587552966', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1440, 8, 47, '1236003', 0, 'subhash chandra', 'bhagchand', 'hema', '9784993961', '', '9784993961', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1441, 8, 48, '1236004', 0, 'lokesh', 'baburam', 'sushila', '9461205281', '', '9461205281', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1442, 4, 36, '1236005', 0, 'Muskan Kohri', 'Mohd. Rafiq Kohri', 'Shanaz Bano', '7231084612', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1443, 8, 48, '1236006', 0, 'Shivangi Gupta', 'Mr. Akhilesh Gupta', 'Mrs. Shuchi Gupta', '8690623745', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-07', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1444, 5, 44, '1236007', 0, 'jahir', 'qkbal khan', 'jabun', '7726912196', '', '7726912196', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1445, 4, 35, '1236008', 0, 'yuvraj singh', 'udai singh', 'chand kawar', '9983675982', '9983675982', '9983675982', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1446, 8, 47, '1236009', 0, 'ankit sarswat', 'hansraj sarswat', 'manju devi', '9660506164', '', '9660506164', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1447, 4, 36, '1236010', 0, 'priyanka bishnoi', 'surender', 'indra', '9828736846', '9828736846', '9828736846', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1448, 5, 45, '1236011', 0, 'kanta', 'rampratap', 'indra', '9828736846', '', '9829359543', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1449, 5, 45, '1236012', 0, 'kanta', 'rampratap', 'urmila', '9829359543', '', '9829359543', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1450, 3, 3, '1236013', 0, 'divya', 'lalit panchariya', 'kiran', '9414478269', '', '9461358144', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1451, 8, 48, '1236014', 0, 'shalini', 'roshanlal', 'kemwali', '9828747435', '', '9828747435', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1452, 4, 36, '1236015', 0, 'narayan panwar', 'ramesh panwar', 'basanti', '8107658473', '', '8107658473', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1453, 7, 43, '1236016', 0, 'yuvraj singh', 'dirender', 'anisha', '9414547046', '', '9414547046', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1454, 8, 48, '1236017', 0, 'Dimple', 'shyamlal', 'meena', '8529547805', '', '8529547805', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1455, 8, 47, '1236018', 0, 'anil', 'narayanram', 'kaushliya devi', '9819564877', '', '9819564877', '', 'male', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1456, 8, 48, '1236019', 0, 'naina rajpurohit', 'chatar singh', 'santosh', '9478561965', '', '9478561965', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-08', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1457, 4, 4, '1236020', 0, 'Himanshu ', 'Balkishan ', 'Radha ', '9929015283', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1458, 4, 0, '1236021', 0, 'Kuldeep', 'devilal', 'madhu devi', '9460923895', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1459, 1, 1, '1236022', 0, 'Ojashavi', 'Kishanlal ', 'Papu Devi ', '9521292929', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1460, 4, 12, '1236023', 0, 'Vikash ', 'Ramswaroop Bishnoi', 'Parma Devi', '9413207523', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1461, 4, 4, '1236024', 0, 'Sumit Gothwal', 'Balwant Ram', 'Sudesh Devi', '9414508315', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1462, 8, 28, '1236025', 0, 'Sunil Nehra', 'Ramniwas Nehra', 'Santosh ', '9785367602', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1463, 8, 24, '1236026', 0, 'Rajshree Ojha ', 'Badri Narayan  ', 'Santosh Devi', '9413818104', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1464, 8, 28, '1236027', 0, 'Santosh', 'Bhanwarlal', 'Durga Devi ', '9509127064', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1465, 8, 28, '1236028', 0, 'Bhagirath ', 'Hari Ram ', 'Pushpa Devi ', '9530019540', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1466, 8, 48, '1236029', 0, 'kavita', 'dilip singh', 'ritu', '7014693145', '', '7014693145', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1467, 4, 36, '1236030', 0, 'khushboo meena', 'ramraj meena', 'sangeeta', '9929732390', '', '9929732390', '', 'female', 'ST', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1468, 8, 48, '1236031', 0, 'prachi', 'priydharshan', 'santosh', '9983893443', '', '9983893443', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1469, 4, 35, '1236032', 0, 'himanshu sharma', 'r.d sharma', 'leela sharma', '7727882721', '', '7727882721', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1470, 8, 48, '1236033', 0, 'anmol pateer', 'madanlal', 'suman', '7568298630', '', '7568298630', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1471, 8, 47, '1236034', 0, 'pawan kumar', 'indraj', 'santosh', '9950039813', '', '9950039813', '', 'male', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1472, 8, 47, '1236035', 0, 'kiran', 'indraj', 'santosh', '9950039813', '', '9950039813', '', 'female', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1473, 2, 0, '1236036', 0, 'Krishna', 'Vinod Singh', 'Santosh Devi', '9785389595', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1474, 4, 36, '1236037', 0, 'Dinesh Kumar', 'Gourdhan Lal', 'XYZ', '9667402946', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This enquiry attend by Bharti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1475, 3, 0, '1236038', 0, 'Aaditya Singh', 'Narendra Snigh', 'XYZ', '9251477942', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This enquiry attend by Bharti Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1476, 4, 36, '1236039', 0, 'Shilpa', 'Bhagwati Prasad', 'Sumitra Devi', '8769318723', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1477, 8, 0, '1236040', 0, 'Ajeet', 'XYZ', 'XYZ', '8949455717', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', 'This enquiry attend by Vimla Mam', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-09', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1478, 8, 24, '1236041', 0, 'Lokesh ', 'B.R Ojha ', 'Sushila  Ojha ', '9887304925', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1479, 4, 36, '1236042', 0, 'Jagdish', 'Gopala ram', 'shera  devi', '9982409283', '', '9982409283', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-07-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1480, 8, 24, '1236043', 0, 'Shivam rathore', 'Padam singh', 'Rashmi kanwar', '7426070012', '', '9896015353', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-07-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1481, 8, 48, '1236044', 0, 'Dilip Jyani', 'Dhan Raj Jyani', 'Gomti Devi', '9166844324', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1482, 4, 36, '1236045', 0, 'Manoj Godara', 'Sahi Ram Godara', 'XYZ', '9928629398', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1483, 8, 28, '1236046', 0, 'Santosh', 'Bhanwarlal ', 'Durga Devi ', '9509127064', '', '', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1484, 6, 0, '1236047', 0, 'Bansilal ', 'Omprakash Suthar ', 'Rami Devi ', '8890602491', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 3, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1485, 4, 36, '1236048', 0, 'devilal bhadu', 'rajaram', 'krishana', '9636012095', '9636012095', '9636012095', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1486, 6, 39, '1236049', 0, 'mangiilal', 'kishanlal', 'manju', '9672679440', '', '9672679440', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1487, 5, 45, '1236050', 0, 'priyanshu', 'maheshkumar', 'rehka chouhan', '9928821520', '', '9928821520', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1488, 5, 45, '1236051', 0, 'Mohd. sahil', 'Abdul Karim', 'Sakila Bano', '8562807816', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1489, 4, 36, '1236052', 0, 'jaisingh rathore', 'guman singh', 'anjukawar', '9929421761', '', '9929421761', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1490, 8, 48, '1236053', 0, 'yashagarwal', 'jaybhagwan', 'neelam agarwal', '7976065680', '', '7976065680', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1491, 4, 37, '1236054', 0, 'badsha khan', 'amzad khan', 'raziya bano', '9602742786', '', '9602742786', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(1492, 4, 36, '1236055', 0, 'pooja', 'ramgopal', 'geetadevi', '9950584085', '', '9950584085', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 13, 0, 0, 0, '2018-07-12', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', '', 'n'),
(2960, 8, 28, '1236058', 0, 'Ganesh ', 'Mularam', 'Bheekhi Devi ', '9784135670', '', '', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 13, 0, 0, 0, '2018-07-24', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2961, 1, 1, '1236059', 44444, 'jh', 'ma', 'r', '7976312917', '', '', '', 'male', 'GEN', '', '', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'bikaner', 'Bikaner', '334001', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 50, '1', 'Dir. Shwet Goswami Sir', 'enquiry', '1', '', 'provided', '1', '', '', '', 'leave', '2018-07-24', '2018-07-31', 1, 1, 0, 1, '2018-07-24', '2018-07-24', 'n', '2018-07-24', 1, 1, '2018-07-24', 'addmission', 'n'),
(2962, 8, 27, '1236060', 0, 'Rajnesh  Panday', 'Yogesh Panday ', 'Sudha', '8769241899', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-24', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2963, 8, 24, '1236061', 0, 'Arihant', 'Manoj  Kumar', 'Premlata ', '8239709133', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-24', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2966, 1, 1, '', 20202, 'vivek ', 'manhsdfh', 'seemqa', '7976312917', '', '', '', 'male', 'GEN', '1994-01-23', '', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'bikaner', 'Bikaner', '334001', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 10, '1', 'Dir. Shwet Goswami Sir', '', '', '', 'provided', '1', '', '', '', 'demo', '2018-07-25', '2018-08-01', 0, 0, 0, 1, '0000-00-00', '0000-00-00', '', '2018-07-25', 1, 0, '0000-00-00', 'addmission', 'n'),
(2967, 8, 47, '1236063', 0, 'dolaram', 'ruparam', 'suganidevi', '8769833750', '', '8769833750', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-25', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2968, 1, 1, '', 33333, 'vivek modi', 'manohar ', 'semma modi', '7976312917', '', '', '', 'male', 'GEN', '1994-01-23', '', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'bikaner', 'Bikaner', '334001', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 10, '1', 'Dir. Shwet Goswami Sir', '', '', '', 'provided', '1', '', '', '', 'demo', '2018-07-25', '2018-08-01', 0, 0, 0, 1, '0000-00-00', '0000-00-00', 'n', '2018-07-25', 1, 0, '0000-00-00', 'addmission', 'n'),
(2970, 1, 1, '', 32323, 'raju', 'df', 'jkl', '8947800330', '', '', '', 'male', 'GEN', '1999-02-02', '', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'bikaner', 'Bikaner', '334001', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'provided', '1', '', '', '', 'leave', '2018-07-25', '2018-08-01', 0, 1, 0, 1, '0000-00-00', '2018-07-25', '', '2018-07-25', 1, 1, '2018-07-25', 'addmission', 'n'),
(2971, 4, 36, '1236064', 0, 'KALPANA', 'PAPPURAM', 'CHUKIDEVI', '9929273744', '', '9929273744', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-25', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2972, 4, 35, '1236065', 0, 'ANJALI GODARA', 'MEGHARAM', 'NEETU', '9929712836', '', '9929712836', '', 'female', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-25', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2973, 8, 47, '1236066', 0, 'NISHA', 'RAJENDER SINGH', 'UMA', '9460648122', '', '9460648122', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-25', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2975, 8, 48, '1236068', 0, 'sanju', 'manoranjan singh', 'niyati', '0149925059', '', '9460785664', '', 'male', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '2', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-30', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2976, 8, 47, '1236069', 0, 'ravina swami', 'ramchander swami', 'kaushlya', '7568119621', '', '7568119621', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-30', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2977, 4, 35, '1236070', 0, 'jaisaharan', 'rahul sahan', 'suman', '9214460889', '', '9214460889', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-07-31', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2979, 8, 47, '1236072', 0, 'Ashwini', 'Kesar Ram ji', 'XYZ', '7300383206', '', '', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-07-31', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2980, 8, 47, '1236073', 0, 'abhishek kumar verma', 'chanderbali', 'meena devi', '9462476872', '', '9462476872', '', 'male', 'SC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'accountant', '3', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 9, 0, 0, 0, '2018-08-01', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(2981, 4, 36, '1236074', 0, 'Ms. Ram Kumari Kaswan', 'Jagdish Kaswan', 'Pappu Devi', '9982522141', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '8', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-08-02', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(4419, 3, 3, '', 60002, 'Ankita Jangu', 'Hanuman Prasad', '', '9783655000', '', '9587072611', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', '', '', '', 'include/student_propic/min-15341417901234.png', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4420, 3, 3, '', 60004, 'Chirag Yadav', 'Rajesh Yadav', '', '9929842380', '', '9414605473', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', '', '', '', 'include/student_propic/min-15341432791234.png', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4421, 3, 3, '', 60001, 'Divyansha Pandey', 'Virendra Kumar', '', '9413278750', '', '7597741423', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(4422, 3, 3, '', 60011, 'Himani Godwal', 'Girdhari Lal ', '', '9413363294', '', '8949075807', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4423, 3, 3, '', 60007, 'Jalaj Gupta', 'Manoj Gupta', '', '9829218601', '', '9261210009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4424, 3, 3, '', 60003, 'Richa Yadav', 'Manoj Yadav', '', '9413372645', '', '8696013301', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4425, 3, 3, '', 60005, 'Rohit Rathi', 'Suresh Rathi', '', '9413388653', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4426, 3, 3, '', 60009, 'Sahil Aneja', 'Jawahar Aneja', '', '9414283528', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4427, 3, 3, '', 60012, 'Somya Sewag', 'Narendra Kumar ', '', '7737892127', '', '7976842518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4428, 3, 3, '', 60008, 'Tushar Singh', 'Hosiyar Singh', '', '9414452188', '', '9462860422', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4429, 3, 3, '', 60006, 'Yash Karol', 'Rajesh Karol', '', '7597238365', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4430, 4, 4, '', 51133, 'Abhinav Bhanot ', 'Vishal  Bhanot ', '', '9450467821', '', '9828231666', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4431, 4, 4, '', 51135, 'Anisha Bishnoi', 'Satpal Bishnoi', '', '9929313152', '', '9950594355', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4432, 4, 4, '', 51144, 'Ankit Kumar', 'Raj Kumar', '', '9950303255', '', '9309495750', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4433, 4, 4, '', 51142, 'Anya Rajpurohit ', 'Niranjan Singh Rajpurohit ', '', '9530019838', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4434, 4, 4, '', 51127, 'Chetna Pareek', 'Mahendra Pareek', '', '98293991942', '', '8003158581', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4435, 4, 4, '', 51105, 'Harshita Lakhotiya', 'Pankaj Lakhotiya', '', '9414547271', '', '9799083681', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4436, 4, 4, '', 51117, 'Harshwardhan Nagdeve', 'Ranjit Nagdeve', '', '9636823394', '', '7734020970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4437, 4, 4, '', 51131, 'Hitesh Sankhla ', 'Rajesh Sankhla ', '', '9413013874', '', '9460271200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4438, 4, 4, '', 51107, 'Jasmine Kaur', 'Jaswant Singh ', '', '9828295382', '', '9875195135', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4439, 4, 4, '', 51202, 'Kanishka ', 'Vedprakash', 'seema', '9461167626', '', '8058383871', '', 'female', 'OBC', '2203-01-29', '', 'ward no.11 near vaidh rajaram bishnoi suratgarh', 'rajasthan', 'sriganganagar', 'suratgarh', 'suratgarh', '335804', 'c-14/2 near mahila iti patel nagar bikaner ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', 'a1', 'sacred heart school ', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4440, 4, 4, '', 51148, 'Kartavya Tanwar', 'Suresh Tanwar', '', '9413389684', '', '9351203683', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4441, 4, 4, '', 51104, 'Keshav Khediwal ', 'Pradeep Kumar Khediwal ', '', '9982964026', '', '8947802030', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4442, 4, 4, '', 51223, 'Khushi Meena', 'Ram Niwas Meena', 'resham', '9460673414', '', '9462144066', '', 'female', 'ST', '2003-04-11', '', 'b-23 surajpura kanta khaturia colony bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'B-23 Surajpura Kanta Khaturia Colony Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '84.8%', 'bhartia internationa', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4443, 4, 4, '', 51101, 'Krishan Dudi', 'Jagdish Dudi', '', '7568376268', '', '9929197257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4444, 4, 4, '', 51113, 'Lakshya Saini ', 'Jethmal Tak ', '', '9413166950', '', '9460513639', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4445, 4, 4, '', 51115, 'Lavika Verma', 'Dharamveer Verma', '', '9461603377', '', '7046967777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4446, 4, 4, '', 51128, 'Lokendra Charan', 'Babu Dan', '', '9413204771', '', '02992-250630', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4447, 4, 4, '', 51137, 'Manish Jain ', 'Shanti Lal Jain ', '', '9413084079', '', '9799674758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4448, 4, 4, '', 51138, 'Manoj Kumar ', 'Roop Chand Balai ', '', '9414868968', '', '9166578868', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4449, 4, 4, '', 51134, 'Megha Acharya', 'Devendra Acharya ', '', '6375289570', '', '6375115062', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4450, 4, 4, '', 51103, 'Muskan Choudhary', 'Harikishan Choudhary', '', '9414967371', '', '9672672722', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4451, 4, 4, '', 51109, 'Navjot Singh ', 'Nirmal Singh ', '', '9414580953', '', '9983464731', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4452, 4, 4, '', 51146, 'Nikhil Goswami', 'Sandeep Goswami', '', '8146832719', '', '8107431636', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4453, 4, 5, '', 51108, 'Palak Middha ', 'Roop Chand Middha', 'pooja middha', '9509906841', '', '9460781407', '', 'female', 'GEN', '2003-02-05', '', 'ward no.7 pugal', 'rajasthan', 'bikaner', 'bikaner', 'pugal', '334808', 'sanskar girls p.g.', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334808', '', '10 cgp', 'k.v. b.s.f khajuwala', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4454, 4, 4, '', 51112, 'Raveena Bishnoi', 'Pancharam Siyag', '', '7587207429', '', '9414146436', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4455, 4, 4, '', 51122, 'Rohan Valmiki', 'Mukesh Valmiki', '', '9460780753', '', '9460708357', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4456, 4, 4, '', 51116, 'Roopam ', 'Parmatma Ram ', '', '7410996700', '', '9667325999', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4457, 4, 4, '', 51123, 'Sachin Bhadu', 'Sampat Lal ', '', '7230007429', '', '8290168865', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4458, 4, 4, '', 51150, 'Saloni Naruka ', 'Ravi Singh ', '', '6350565080', '', '9829808188', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4459, 4, 4, '', 51469, 'Shabana ', 'Majid Khan', '', '9414475903', '', '9772832608', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4460, 4, 4, '', 51129, 'Sharda Choudhary', 'Andaram Choudhary', '', '9414129525', '', '8875008919', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4461, 4, 4, '', 51136, 'Shivi Shrimali', 'Naresh Shrimali', '', '9829561920', '', '7737550321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4462, 4, 4, '', 51145, 'Shubham Choudhary', 'Surender Kumar ', '', '9950902495', '', '9982462520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4463, 4, 4, '', 51130, 'Srishti Jalandhara', 'Jagdish Chander Jalandhara', '', '9414507061', '', '7976753882', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4464, 4, 4, '', 51102, 'Sudarshan Bithu', 'Prem Singh Bithu', '', '9928330407', '', '8696008747', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4465, 4, 4, '', 51147, 'Sumit Gothwal', 'Balwant Ram', '', '9414508315', '', '9461938189', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4466, 4, 4, '', 51132, 'Tanmay Harsh', 'Sanjay Kumar Harsh', '', '9460807090', '', '9540976383', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4467, 4, 4, '', 51124, 'Tarun M Jajra', 'Mohan Lal Sharma ', '', '9829020737', '', '7976194155', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4468, 4, 4, '', 51139, 'Tripti Jain ', 'Kailash Jain ', '', '8319276575', '', '7300326509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4469, 4, 4, '', 51143, 'Tushar Charan', 'Sukhdev Singh', '', '9667029895', '', '9460263491', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4470, 4, 4, '', 51119, 'Yagya Sanwal', 'Mukesh Sanwal', '', '9214989828', '', '9672631943', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4471, 4, 4, '', 51106, 'Yogita Panwar', 'Govind Singh Panwar', '', '6376004823', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4472, 4, 4, '', 51149, 'Yuvraj Singh', 'Udai Singh', '', '9983675982', '', '8290712731', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4473, 4, 5, '', 51255, 'Abdul Raafe Khan ', 'Mohd.tahir Khan ', 'amena fatima ', '9928877127', '', '7737630157', '', 'male', 'GEN', '2002-07-17', '', 'near sohan kothi girla school ambedkar circle bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', 'Near Sohan Kothi Girla School Ambedkar Circle Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '71.2 %', 'kendriya vidhalya', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4474, 4, 5, '', 51217, 'Abhijeet Bithu', 'Narayan Singh Bithu', 'parvati kanwar', '8005689348', '', '6376307503', '', 'male', 'OBC', '2001-04-03', '', 'plot no. 41 bajrang puri vallabh garden bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Plot No. 41 Bajrang Puri Vallabh Garden Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', 'B1', 'd.p.s school bikaner', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4475, 4, 5, '', 51244, 'Amish Kumar', 'Nk Matadeen', 'kamlesh devi', '9950590049', '', '', '', 'male', 'OBC', '', '', 'difeny calony III/30 udasar road bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Difeny Calony III/30 Udasar Road Bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334004', '', '59%', 'army school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4476, 4, 5, '', 51402, 'Ananya Suthar', 'Sunil Kulariya', '', '8955462211', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4477, 4, 5, '', 51238, 'Anchal Pahuja ', 'Krishna Kumar Pahuja', 'smt varsha pahuja', '9413725792', '', '', '', 'female', 'GEN', '2003-07-25', '', 'u.i.t 71.72 m.p nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334005', 'U.I.T 71.72 M.P Nagar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '96%', 'st. poter sec. schoo', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4478, 4, 5, '', 51239, 'Angel Siyag', 'Omprakash Siyag', 'sita devi', '9929747328', '', '', '', 'female', 'OBC', '2004-09-12', '', 'opp 3/272 m.p. nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Opp 3/272 M.P. Nagar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '93.92%', 'saint peter school', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4479, 4, 5, '', 51247, 'Anil Saini', 'Mangtu Ram Saini', 'sarita saini', '9950540922', '', '9784829041', '', 'male', 'OBC', '2002-08-27', '', '2eB opposite baba bhawan pawanpuri bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '2eB Opposite Baba Bhawan Pawanpuri Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '77%', 'holy mission public ', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4480, 4, 5, '', 51233, 'Aparna Jangir', 'Mukesh Jangir', 'pooja jangir', '9414293524', '', '8114419984', '', 'female', 'OBC', '2002-08-29', '', 'opoo site bengali mandir sharma colony chopra katla rani baz', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Opoo Site Bengali Mandir Sharma Colony Chopra Katla Rani Baz', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '9.8 ', 'r.s.v sr.sec. school', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4481, 4, 5, '', 51220, 'Aryan Bishnoi', 'Porvinder Kumar ', 'savitq bishnoi', '8302702929', '', '9829350416', '', 'male', 'OBC', '2002-12-15', '', 'Aryan Bishnoi Wn 9 Rai Singh Nagar ', 'rajasthan', 'ganganagar', 'Rai Singh Nagar', 'ganganagar', '335051', 'aryan bishnoi wn 9 rai singh nagar ', 'rajasthan', 'sri ganganagar', 'rai singh nagar', 'ria singh nagar', '335051', '', '', 'k.v.s sai singh naga', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4482, 4, 5, '', 51241, 'Ashok Kumar', 'Mohar Singh', 'sumitra devi', '8386058543', '', '9671534522', '', 'male', 'GEN', '2001-06-14', '', 'vpo nathore te rania sirsa haryana', 'haryana', 'sirsa', 'sirsa', 'sirsa', '125075', 'j k boys hostel', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '75%', 'jnv odhan', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4483, 4, 5, '', 51240, 'Ayushi Siyag', 'Sahiram Siyag', '', '9414603842', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4484, 4, 5, '', 51235, 'Deepak Bishnoi', 'Hariram Bishnoi', 'sarla bishnoi', '9414218253', '', '8104547229', '', 'male', 'OBC', '2001-11-09', '', 'c-5 jawahar nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'C-5 Jawahar Nagar Bikaner', 'rajashan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '8.6%', 'r.s.v school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4485, 4, 5, '', 51245, 'Devendra Bishnoi ', 'Ram Kumar Bishnoi', 'urmila devi', '9413147123', '', '9414147123', '', 'male', 'OBC', '2003-10-12', '', 'gajner road back, side chungi choki banglanagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Gajner Road Back, Side Chungi Choki Banglanagar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '', 'r.s.v. sr. higher se', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4486, 4, 5, '', 51250, 'Dheeraj Panwar', 'Hanuman Panwar', 'kamla panwar', '9414061353', '', '9983044382', '', 'male', '', '2001-08-20', '', '5E 291 JNV colony bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'v 12 knd po rawla mandi th rawla  mandi', 'rajasthan', 'sriganga nagar', 'rawla', 'gri ganga nagar', '335707', '', '', 'sacred hent sr.sec. ', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4487, 4, 5, '', 51246, 'Garvit Pareek ', 'Suresh Pareek ', 'prabha pareek', '9461245841', '', '8824262428', '', 'male', 'GEN', '2002-10-15', '', 'behind satyanarayan temple pareek chowk bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'behind satyanarayan temple pareek chowk bikaner ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'seth tolaram academy', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4488, 4, 5, '', 51411, 'Garvit Yadav ', 'Jogendra Singh', '', '9782435062', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4489, 4, 5, '', 51216, 'Gul Khadgawal', 'Mahendra Khadgawal', '', '9413348855', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4490, 4, 5, '', 51222, 'Gungun Yadav', 'Anil Yadav', 'sanjana yadav', '9414426669', '', '9079118607', '', 'female', 'OBC', '2003-07-02', '', 'majisa ki bari infront of govt. press bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'Majisa Ki Bari Infront Of Govt. Press Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '68.08%', 'lyall public school', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4491, 4, 5, '', 51415, 'Himangshi Bafna', 'Girish Bafna', '', '9043486786', '', '9549822011', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4492, 4, 5, '', 51232, 'Himani Yadav', 'Mahavir Parsad Yadav', 'indu yadav', '9928006301', '', '', '', 'female', 'OBC', '2002-09-04', '', 'mukta prasad colony 11/475', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'Mukta Prasad Colony 11/475', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', 'b 1', 'army school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4493, 4, 5, '', 51248, 'Himanshu Kumar  Mishra', 'Shri Naresh Mishra', 'pinki mishhra', '9468942932', '', '9461334930', '', 'male', '', '2002-06-04', '', 'd-26 rajnagar colony jaipur road bikaner rajasthan', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'D-26 Rajnagar Colony Jaipur Road Bikaner Rajasthan', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '7.6 cg', 'kendriya vidyalya no', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4494, 4, 5, '', 51218, 'Hitarath Saini', 'Suresh Saini', 'seema saini', '9461011400', '', '9468941777', '', 'male', 'OBC', '2002-09-05', '0151-2240486', 'b-2-82 suparshana nagar bikaner pawan puri road ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'B-2-82 Suparshana Nagar Bikaner Pawan Puri Road ', 'rajashtan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '10 cgp', 'rsv', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4495, 4, 5, '', 51237, 'Ishika Soni', 'Hansraj Soni', 'uma soni', '9001143858', '', '', '', 'female', '', '2002-05-13', '0158226472', '1/2 pa ++ ', 'rajasthan', 'nagour', 'nagour', 'nagour', '341306', 'house no. 201, near lalgharh gandhi nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '82%', 'v.v.v school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4496, 4, 5, '', 51219, 'Jitendra Bishnoi', 'Suresh Bishnoi', 'sushila devi', '9413467097', '', '6350425334', '', 'male', 'OBC', '2001-12-21', '', 'villlage allai bishnoi baas, nagaur', 'rajasthan', 'nagaur', 'allai', 'nagaur', '341012', 'police thana nayasahar house no.3 bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'r.s.v. hr. sec. scho', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4497, 4, 5, '', 51203, 'Karina Quadri ', 'Aziz Ahmed Quadri', 'shabnam haider', '9468566283', '', '9413726409', '', 'female', 'OBC', '2002-02-12', '', 'a-52 amsal susani city near mgs umiversity jaisalmer road bi', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'A-52 Amsal Susani City Near Mgs Umiversity Jaisalmer Road Bi', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '80%', 'sophia sen. sec. sch', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4498, 4, 5, '', 51227, 'Kartik Thakral ', 'Sanjay Gupta', 'geeta gupta', '9214338910', '', '9001891077', '', 'male', 'GEN', '2003-09-19', '', '248 near ramdev school kamla coloony bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '248 Near Ramdev School Kamla Coloony Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '9.4cgp', 'r.s.v school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4499, 4, 5, '', 51477, 'Khushali Gahlot', 'Shailendra Gahlot', '', '9414090217', '', '9001760136', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4500, 4, 5, '', 51251, 'Komal Kaswan', 'Ramkishan Choudhary', 'bhanwari devi', '9929614355', '', '7073567501', '', 'female', 'OBC', '2002-08-30', '', 'oppisite police station nal nh.15 bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'Oppisite Police Station Nal Nh.15 Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '7.8 cg', 'k.v.3 afs nal bikane', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4501, 4, 5, '', 51204, 'Kuldeep Choudhary', 'Rajendra Prasad', 'vimala devi', '9414772681', '', '7976617052', '', 'male', 'OBC', '2002-12-30', '', 'shyam colony near sanwali  circle sikar', 'rajasthan', 'sikar', 'sikar', 'sikar', '332001', 'purani shivbari road ambedkar colony street no.5', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '9.67 c', 'prince academi sikar', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4502, 4, 5, '', 51423, 'Kumkum Rajpurohit', 'Suresh Kumar ', '', '9829762726', '', '6375302903', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4503, 4, 5, '', 51206, 'Megha Suthar', 'Shankar Lal Suthar', '', '8003592772', '', '9636217977', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4504, 4, 5, '', 51427, 'Minakshi Vyas', 'Nand Kishor Vyas', '', '9351510742', '', '8875900742', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4505, 4, 5, '', 51228, 'Mohammed Aman Molani', 'Aslam Chhimpa ', 'farzana bano', '9829972615', '', '8005675108', '', 'male', 'OBC', '2002-09-04', '', 'singiyo ka chowk bada bazar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', 'Singiyo Ka Chowk Bada Bazar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4506, 4, 5, '', 51208, 'Pooja Jangir ', 'Shiv Kumar Jangir', 'geeta jangir', '9251426909', '', '9461978140', '', 'female', 'OBC', '2002-05-18', '', 'c-14 gandhi colony pawanpuri bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'C-14 Gandhi Colony Pawanpuri Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'army public school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4507, 4, 5, '', 51439, 'Pragah Raj Choudhary', 'Mahendra Raj Choudhary', '', '8560002039', '', '9928490022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4508, 4, 5, '', 51256, 'Rajat Moond', 'Vijay Kumar ', '', '9828275586', '', '9413664264', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4509, 4, 5, '', 51472, 'Raman Bandra', 'Suresh Kumar Bandra', '', '9166233345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4510, 4, 5, '', 51221, 'Ramnivas Sidh', 'Lalnath Sidh', 'parmeshwari devi', '9828531608', '', '9783554561', '', 'male', 'GEN', '2002-04-02', '', 'b-196 kanta khaturiya bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'B-196 Kanta Khaturiya Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', 'A2', 'bikaner boys school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4511, 4, 5, '', 51210, 'Riya Jain ', 'Pramod Kumar Jain', 'aparna jain', '9214457282', '', '8239012341', '', 'female', 'GEN', '2003-04-16', '', 'pabu chowk. gangashahar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334401', 'Pabu Chowk. Gangashahar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'seth tolaram bafna a', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4512, 4, 5, '', 51211, 'Saransh Rawat', 'Niraj Rawat', 'roopali rawat', '9799090926', '', '9413870554', '', 'male', 'GEN', '2002-08-23', '0151-2225676', '10 daga building near gpo ke m road bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '10 Daga Building Near Gpo Ke M Road Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'shree jain public sc', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4513, 4, 5, '', 51257, 'Saurabh Kumar ', 'Mahendra Kumar ', 'meena devi', '9413278927', '', '7976170403', '', 'male', '', '2002-04-19', '', '10/42 mukta prasad colony', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '10/42 Mukta Prasad Colony', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '74%', 'RNRSV', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4514, 4, 5, '', 51229, 'Shailendra Dhawal ', 'Kailash Chand Dhawal ', '', '9660000256', '', '9649581769', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4515, 4, 5, '', 51478, 'Sheetal Nagal ', 'Dr. S.s. Nagal ', 'saroj nagal', '9460782533', '', '7014758321', '', 'female', '', '', '', 'in side pabu bari pareek chowk pabuthan wali gali nayasahar ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'In Side Pabu Bari Pareek Chowk Pabuthan Wali Gali Nayasahar ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'maharani kishori dei', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4516, 4, 5, '', 51252, 'Shubham  Kumar ', 'Ramanand Niraj', '', '7051042295', '', '7742487777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4517, 4, 5, '', 51231, 'Simran Yadav', 'Hetram Yadav', 'sunita yadav', '9928006309', '', '', '', 'female', '', '2002-07-25', '', '13/211 mukta prasad bikaner rajasthan', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '13/211 Mukta Prasad Bikaner Rajasthan', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '80%', 'r.n.r.s.v ', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4518, 4, 5, '', 51452, 'Sneha Saran', 'Sohan Lal', '', '9413372765', '', '7014665102', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4519, 4, 5, '', 51213, 'Suman Godara', 'Bheemsen Godara', 'patasi devi', '9414968986', '', '9649681401', '', 'female', 'GEN', '2002-08-07', '', 'i 4 het nagar jaipur road bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'I 4 Het Nagar Jaipur Road Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', 'a2', 'maharani kishori dev', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4520, 4, 5, '', 51214, 'Tanisha Chouhan ', 'Jai Prakash Chouhan', 'santosh chauhan', '9799495775', '', '9414142090', '', 'female', 'OBC', '2002-10-08', '0151-2524090', 'near mahaev temple inside sitala gate bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'near gour sabha bhawan industrial area rani bazar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'seth tolaram bafna a', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4521, 4, 5, '', 51215, 'Tanu Bishnoi', 'Bhagirath Bishnoi', 'vidhya bishnoi', '9205637691', '', '9413684655', '', 'female', 'OBC', '2002-10-11', '', '150 Karni Nagar Kuri Bhagatashni Road Jodhpur ', 'rajasthan', 'jodhpur', 'Jodhpur', 'Jodhpur', '342005', 'a-38, murlidhar vyas nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334004', '', '6.6 cg', 'ryan international s', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4522, 4, 6, '', 51572, 'Aayushmaan Kumawat', 'Prakash Chand Kumawat', '', '8385027239', '', '9461160957', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4523, 4, 6, '', 51554, 'Abhimanu Jakhar', 'Ram Kishor', '', '9521233211', '', '9461469630', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4524, 4, 6, '', 51509, 'Abhishek Jingar', 'Sharwan Kumar ', '', '8209863377', '', '9001010743', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(4525, 4, 6, '', 51525, 'Aman Sharma ', 'Mahendra Kumar', '', '9309366887', '', '9649586240', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4526, 4, 6, '', 51617, 'Anisha Bano ', 'Asif Ali ', '', '9829533648', '', '7733056648', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4527, 4, 6, '', 51605, 'Anjali ', 'Rajesh Kumar ', '', '9588919886', '', '9461512613', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4528, 4, 6, '', 51501, 'Anjali Meena ', 'Ramesh Chand Meena', '', '8387935509', '', '9252219966', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4529, 4, 6, '', 51552, 'Anshum Paliwal ', 'Rajendra', 'manju paliwal', '9799875051', '', '9214436543', '', 'female', 'GEN', '2002-12-04', '', 'jhawaron ka chowk bikaner rajasthan ', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'jhawaron ka chowk bikaner rajasthan', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '', 'k.v. no-1 bikaner', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4530, 4, 6, '', 51523, 'Anushka ', 'Gore Lal', '', '9462195110', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4531, 4, 6, '', 51522, 'Astha Choudhary', 'Jagdeesh Choudhary', '', '9461047951', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4532, 4, 6, '', 51625, 'Badshah Khan Kohri', 'Amzad Khan Kohri', '', '9602742786', '', '7976070468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4533, 4, 6, '', 51541, 'Chaman Preet Kaur', 'Satindra Pal Singh', '', '7665788736', '', '9414430442', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4534, 4, 6, '', 51853, 'Chankit ', 'Narender ', '', '7568423774', '', '9929744388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4535, 4, 6, '', 51506, 'Daman Saharan', 'Rajender', '', '9466249830', '', '8059049200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4536, 4, 6, '', 51515, 'Deepash Chugh', 'Mahesh Chugh', '', '9314276080', '', '7976409895', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4537, 4, 6, '', 51249, 'Deepender Lakhesar', 'Murari Lakhesar', 'pinky verma', '9414515222', '', '8875693600', '', 'male', 'OBC', '2002-11-15', '', 'ward no 10 behind vishwakarma mandir anupgarh', 'rajasthan', 'sri ganga nagar ', 'anupgarh', 'anupgarh', '335701', 'c10/13 patel nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334003', '', 'B+', 'swami vivekanand gov', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4538, 4, 6, '', 51547, 'Dhanraj Kachhawa', 'Shiv Prakash Kachawa', '', '9929709180', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4539, 4, 6, '', 51531, 'Digvijay Singh', 'Mahendra Kumar', '', '9068864935', '', '8570038042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4540, 4, 6, '', 51560, 'Disha Kannojia', 'Manoj Kannojia', 'nisha kannojia', '9828502074', '', '9166567108', '', 'female', 'SC', '2003-07-04', '', 'house no b-43 gandhi colony pawan puri', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334003', 'House No B-43 Gandhi Colony Pawan Puri', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '84.41 ', 'melbourne sec. schoo', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4541, 4, 6, '', 51607, 'Durga Ramawat', 'Kanhaiya Lal Ramawat', '', '9602777772', '', '7976855420', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4542, 4, 6, '', 51537, 'Eklovya Chanwria', 'Rishiraj Chanwria', '', '9602212539', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4543, 4, 6, '', 51614, 'Fardeen Chouhan', 'Irfan Chouhan', '', '9660728270', '', '7014587991', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4544, 4, 6, '', 51533, 'Farhan Chouhan', 'Gulgar Chouhan ', '', '9214983697', '', '7737275683', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4545, 4, 6, '', 51616, 'Fizan ', 'Chand Mohammed ', '', '9414283649', '', '7073428393', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4546, 4, 6, '', 51565, 'Gajendra Rojh', 'Hetram ', '', '8107046207', '', '9784902738', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4547, 4, 6, '', 51569, 'Gautam Jatoliya ', 'Devendra Kumar ', '', '9828851039', '', '8114457852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4548, 4, 6, '', 51542, 'Harshit Poonia', 'Ved Bhushan  ', '', '7568376206', '', '9461107206', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4549, 4, 6, '', 51527, 'Harshit Upadhyay', 'Pawan Kumar ', '', '7665376423', '', '9636699577', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4550, 4, 6, '', 51623, 'Heera Lal', 'Chotu Ram ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4551, 4, 6, '', 51558, 'Hemlata Sadani ', 'Dev Kishan Sadani', 'nirmala sadani', '9314819540', '', '9462258103', '', 'female', 'GEN', '2001-12-31', '', 'main bazar sadani chowk gopal ji mandir ki gali ward-14 napa', 'rajasthan', 'bikaner', 'napasar', 'bikaner', '334201', 'main bazar sadani chowk gopal ji mandir ki gali ward-14 napa', 'rajasthan', 'bikaner', 'bikaner', 'napasar', '334201', '', '', 'maheshwari public se', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4552, 4, 6, '', 51511, 'Indu Jeengar ', 'Mangi Lal Jeengar', '', '9828851373', '', '7597740493', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4553, 4, 6, '', 51548, 'Jaideep Singh Shekhawat', 'Devendra Shekhawat', '', '9783202000', '', '8385027118', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4554, 4, 6, '', 51543, 'Jatin M Joshi', 'Mukesh M Joshi', '', '9414052529', '', '9414327138', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4555, 4, 6, '', 51621, 'Jay Kumawat', 'Bhagirath Prajapat', '', '9829079054', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4556, 4, 6, '', 51556, 'Kajal Kannojia ', 'Rajeev Kannojia', 'asha kannojia', '9530019236', '', '9530019235', '', 'female', 'SC', '2003-02-13', '', 'y-154 sudarshana nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'biakner', '334003', 'y-154 sudarshana nagar bikaner', 'rajasthan', 'bikaner', 'biakner', 'bikaner', '334003', '', '', 'melbourne sec. schoo', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4557, 4, 6, '', 51608, 'Karan Siyag', 'Rameshwar Lal ', '', '9001013481', '', '9461469100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4558, 4, 6, '', 51568, 'Karuna Tanwar', 'Babu Lal Tanwar', '', '9314443554', '', '8233572711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4559, 4, 6, '', 51538, 'Kavita Beniwal', 'Rekharam Beniwal', '', '7427039252', '', '9414039253', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4560, 4, 6, '', 51629, 'Keshav Sharma ', 'Nand Kishor Sharma ', '', '9435015554', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4561, 4, 6, '', 51626, 'Khushboo Bishnoi', 'Vijay Bishnoi ', '', '9461078826', '', '8619896088', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4562, 4, 6, '', 51609, 'Khushboo Singariya ', 'Rajendra Singariya', '', '8003549556', '', '8302410049', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4563, 4, 6, '', 51517, 'Kinjal Sadakangani', 'Rajesh Sadakangani', '', '9462381212', '', '9414246627', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4564, 4, 6, '', 51622, 'Komal Ojha ', 'Shayam Ojha ', '', '9928182463', '', '9116822515', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4565, 4, 6, '', 51126, 'Krishna Manda', 'Ashok Manda', '', '7597510073', '', '6350593573', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4566, 4, 6, '', 51601, 'Madhav Paliwal ', 'Bhushan Kant ', 'sadhana paliwal', '8104130345', '', '9414507605', '', 'male', 'GEN', '2003-09-25', '', 'ward no.3 near telephone exchange padampur', 'rajasthan', 'sriganganagar', 'padampur', 'padampur', '335041', 'mulridhar vyas colony c-307,308 bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '83 %', '', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4567, 4, 6, '', 51528, 'Mahima ', 'Mool Chand', '', '9413107144', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4568, 4, 6, '', 51627, 'Manish Pareek ', 'Bhawani Shankar ', '', '8890571006', '', '9982033498', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4569, 4, 6, '', 51553, 'Manisha', 'Ganga Bishan', '', '9950748661', '', '8696305019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4570, 4, 6, '', 51512, 'Manya Dubey ', 'Prabhakar Dubey', '', '9511593397', '', '8890310835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4571, 4, 6, '', 51503, 'Mayank Vijayvergia', 'Deepak Vijayvergia', '', '9460038994', '', '7597419776', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4572, 4, 6, '', 51628, 'Mohammed Jainul', 'Mohammed Abid', '', '9414137437', '', '9461473206', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4573, 4, 6, '', 51516, 'Mohd.aman Sulemant', 'Kurshid Ahmed', '', '9602889671', '', '6376205426', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4574, 4, 6, '', 51521, 'Mudhulika Vyas', 'Avinash Prasad Vyas', '', '9928112458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4575, 4, 6, '', 51564, 'Muhammad Shahbaj ', 'Ifterkhar Ahmed ', 'jakiya sultana', '9460305292', '', '9460126822', '', 'male', 'OBC', '0002-04-19', '', 'suraj tailor ki gali songiri well road bikaner', 'bikaner', 'bikaner', 'bikaner', 'bikaner', '334001', 'Suraj Tailor Ki Gali Songiri Well Road Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '92.67 ', 'central acadmy bikan', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4576, 4, 6, '', 51513, 'Nancy Tak ', 'Umesh Tak', '', '9214797970', '', '7976270831', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4577, 4, 6, '', 51612, 'Navdeep Singh Solanki', 'Rajendra Singh Solanki', '', '9461010860', '', '9929097109', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4578, 4, 6, '', 51603, 'Nikita Panwar', 'Gouri Shankar Panwar', '', '9950630731', '', '7821939594', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4579, 4, 6, '', 51611, 'Nikita Singh ', 'Raju Singh ', '', '9460001891', '', '9636783117', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4580, 4, 6, '', 51604, 'Niku', 'Mahesh Kumar', '', '9588919886', '', '9461512613', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4581, 4, 6, '', 51551, 'Nisha Bishnoi', 'Sahi Ram Bishnoi', '', '9414450954', '', '7023630657', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4582, 4, 6, '', 51570, 'Nisha Khan ', 'Mohd. Zama', 'suraiya', '9784555199', '', '9784251910', '', 'female', 'GEN', '2001-11-16', '', 'e91- vallabh garden bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'E91- Vallabh Garden Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '73.33%', 'central academy sr.s', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4583, 4, 6, '', 51514, 'Nisha Rain ', 'Mool Chand Rain', '', '9680158336', '', '9413189956', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4584, 4, 6, '', 51540, 'Parneet Kaur', 'Amritpal Singh', '', '9672980036', '', '9783820036', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4585, 4, 6, '', 51529, 'Payal Joshi ', 'Devi Lal Joshi', '', '9782475137', '', '7728853811', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4586, 4, 6, '', 51125, 'Piyush Tiwari ', 'Ramesh Kumar Tiwari ', '', '9414147006', '', '7665054000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4587, 4, 6, '', 51563, 'Pooja Jaipal ', 'Happuram Jaipal ', '', '9950002909', '', '8094765056', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4588, 4, 6, '', 51559, 'Priyanka Goyal ', 'Meghraj Goyal ', 'santosh goyal', '9929484529', '', '9413803930', '', 'female', 'SC', '2001-01-06', '', 'goyalo ka mohalla napasar bikaner', 'rajasthan', 'bikaner', 'napasar', 'bikaner', '334201', 'Goyalo Ka Mohalla Napasar Bikaner', 'Rajasthan', 'bikaner', 'bikaner', 'napasar', '334201', '', '88.38 ', 'maheshwari public se', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4589, 4, 6, '', 51474, 'Purva Soni', 'Sunil Soni', '', '7014982330', '', '9414508178', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4590, 4, 6, '', 51567, 'Radheshyam Rojh', 'Haroop Ram Rojh', '', '9950797585', '', '8562857072', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4591, 4, 6, '', 51530, 'Rahul Paswan ', 'Daya Sankar Paswan', '', '9680604897', '', '6376040603', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4592, 4, 6, '', 51544, 'Ravi Prakash Meena ', 'Jai Singh Meena', '', '9784616178', '', '9782535317', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4593, 4, 6, '', 51519, 'Ravina Yadav', 'Ravinder Singh', '', '7023589864', '', '9680370907', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4594, 4, 6, '', 51507, 'Riya Panwar', 'Koushal Kishore', '', '9413013500', '', '7877626415', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4595, 4, 6, '', 51532, 'Rudranshu Pareek ', 'Rajendra Pareek ', '', '7976124585', '', '8619722794', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4596, 4, 6, '', 51562, 'Sahil Meena ', 'Rajender Kumar Meena ', 'bablesh meen', '9460016618', '', '6376919844', '', 'male', 'ST', '2002-09-06', '', 'meena ka mohala sharma colony rani bazar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'Meena Ka Mohala Sharma Colony Rani Bazar Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '88.50%', 'vaibhav english s.s.', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4597, 4, 6, '', 51518, 'Sajid Solanki', 'Salim Solanki', '', '8824449555', '', '7737392747', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4598, 4, 6, '', 51520, 'Saloni Gahlot', 'Bhagirath Gahlot', '', '9414426443', '', '9214880109', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4599, 4, 6, '', 51510, 'Sanjay Kasania ', 'Krishan Lal Kasania', '', '9414515509', '', '8769800101', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4600, 4, 6, '', 51504, 'Sapna Jaipal ', 'Som Prakash Jaipal ', '', '9413726116', '', '8561001933', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4601, 4, 6, '', 51566, 'Shaeesta Athar', 'Ashfar Ahmed ', 'sofiya sultana', '9414452351', '', '7877034301', '', 'female', 'OBC', '2002-03-01', '', 'athar manjil songiri well road bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'Athar Manjil Songiri Well Road Bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '80.67%', 'central academy bika', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4602, 4, 6, '', 51524, 'Sheetal Meghwal', 'Ashu Ram Meghwal', '', '8107049428', '', '8118869725', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4603, 4, 6, '', 51555, 'Shivraj Bishnoi', 'Ram Niwas Bishnoi', 'roshni', '8769879485', '', '9772841421', '', 'male', 'OBC', '2003-12-10', '', 'v.p.o sawantsar tehsil shree dungargarh', 'rajasthan', 'bikaner', 'sawantsar', 'bikaner', '331811', 'v.p.o sawantsar tehsil shree dungargarh', 'rajasthan', 'bikaner', 'bikaner', 'sawantsar', '331811', '', '', 'adarsh high school', 'rbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4604, 4, 6, '', 51620, 'Sonu', 'Sher Singh ', '', '6376395442', '9610294347', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4605, 4, 6, '', 51476, 'Suman Kumawat', 'Ghan Shyam Kumawat', '', '7737766606', '', '9950155221', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4606, 4, 6, '', 51539, 'Sunita Choudhary', 'Baga Ram ', '', '7891019290', '', '8529605519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4607, 4, 6, '', 51615, 'Suraj Solanki', 'Bhawani Shankar ', '', '9460780183', '', '7742941151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4608, 4, 6, '', 51618, 'Tejaswi ', 'Kishan Lal Bishnoi', '', '9521292929', '', '9587862929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4609, 4, 6, '', 51613, 'Tushar Bithu ', 'Mohan Dan Bithu', '', '9982837847', '', '8619045830', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4610, 4, 6, '', 51505, 'Vanshika Singh', 'Jagjeet Singh', '', '9829131226', '', '7976193309', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4611, 4, 6, '', 51624, 'Vedanshi Jha', 'Yogesh Kumar Jha', '', '9352736777', '', '9351481811', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4612, 4, 6, '', 51610, 'Vikash Inkhiya', 'Ramnarayan Inkhiya', '', '9929393265', '', '9929452563', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4613, 4, 6, '', 51534, 'Vinay Yadav', 'Dharmveer Singh', '', '7733874514', '', '7023561903', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4614, 4, 6, '', 51619, 'Yatharth ', 'Kishan Lal Bishnoi', '', '9521292929', '', '9587862929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4615, 4, 6, '', 51502, 'Yuvraj Singh', 'Shiv Pal Singh', '', '7621884010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4616, 4, 8, '', 51401, 'Aayush Chouhan', 'Tej Karan Chouhan', '', '9461904088', '', '9529076478', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4617, 4, 8, '', 51467, 'Abhimanu Acharya', 'Arvind Acharya', '', '9799490960', '', '9001240900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4618, 4, 8, '', 51487, 'Anil Kumar Jat', 'Prabhuram Bana', '', '9413994991', '', '7737753872', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4619, 4, 8, '', 51486, 'Anjali Jhajhria', 'Satya Prakash Jhajhria', '', '9461947351', '', '8619506617', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4620, 4, 8, '', 51403, 'Anubhuti Goswami', 'Dr.shwet Goswami', '', '9001781718', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4621, 4, 8, '', 51492, 'Apoorva Beniwal', 'Rameshwar Beniwal', '', '9413659363', '', '8560040202', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4622, 4, 8, '', 51404, 'Bhavya Goyal', 'Manoj Goyal', '', '9413770852', '', '9461479853', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4623, 4, 8, '', 51405, 'Bhawna Bishnoi', 'Ramratan Bishnoi', '', '9414452617', '', '9461386050', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4624, 4, 8, '', 51488, 'Chandresh Swami', 'Om Prakash Swami ', '', '9672988618', '', '8209498508', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4625, 4, 8, '', 51406, 'Chinmay Rajvanshi', 'Alok Rajvanshi', '', '9460782749', '', '9530215805', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4626, 4, 8, '', 51407, 'Deepak Choudhary', 'Raja Ram Choudhary', '', '9414416779', '', '9460607069', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4627, 4, 8, '', 51490, 'Devansh Balai ', 'Manish Kumar Balai', 'veena balai', '8875019920', '', '7357279859', '', 'male', 'SC', '2002-12-13', '', '3/457 mukta prasad colony near ganesh ji mandir lalgarh bika', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', 'sectar 03 house no 457 mukta prasad nagar bikaner', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334001', '', '8.6% ', 'r.s.v. bikaner', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4628, 4, 8, '', 51409, 'Divya Ahir', 'Balraj Singh', '', '9414014453', '', '8107385345', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4629, 4, 8, '', 51410, 'Garima Pareek ', 'Malchand Pareek', '', '9829995678', '', '7014052566', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4630, 4, 8, '', 51201, 'Gauri Jain ', 'Anil Kumar', 'sunita', '9414088409', '', '9414188408', '', 'female', 'GEN', '2002-11-09', '', 'mahal chand bhura bothra chowk -ii gangashahar', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334101', 'Mahal Chand Bhura Bothra Chowk -Ii Gangashahar', 'rajasthan', 'bikaner', 'bikaner', 'bikaner', '334401', '', '', 'sophia sr.sec school', 'cbse', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4631, 4, 8, '', 51412, 'Harman Choudhary', 'Ramesh Kumar', '', '9413695954', '', '8209963583', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4632, 4, 8, '', 51413, 'Harshal Tanwar', 'Dilip Singh Tanwar', '', '9352808731', '', '6350029088', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4633, 4, 8, '', 51414, 'Harshita Choudhary', 'Pawan Kumar Choudhary', '', '9460061397', '', '9414952132', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4634, 4, 8, '', 51121, 'Harshita Kanwar', 'Yogendra Singh ', '', '9929040560', '', '', '', '', 'GEN', '', '', 'B-2 Saraswati Vihar, Khaturiya Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', 'B-2 Saraswati Vihar, Khaturiya Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'provided', '7', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4635, 4, 8, '', 51416, 'Himanshi Bhardwaj', 'Rakesh Sharma', '', '7023060577', '', '7023105579', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4636, 4, 8, '', 51417, 'Hitanshu Yadav', 'Ashok Kumar', '', '9460017547', '', '9413939738', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4637, 4, 8, '', 51491, 'Hitesh Arora', 'Shyam Arora', '', '9414965802', '', '8426066972', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4638, 4, 8, '', 51418, 'Hritika Saini', 'Torkeshav Saini', '', '9875187878', '', '7597971570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4639, 4, 8, '', 51419, 'Jaanashin Shishgan', 'Zakir Hussain ', '', '9414265004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4640, 4, 8, '', 51479, 'Jai Shree Choudhary', 'Raj Kumar Choudhary', '', '9414969098', '', '9414230510', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(4641, 4, 8, '', 51420, 'Jaishree Modi', 'Dharmender Kumar', '', '9414450025', '', '9413870184', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4642, 4, 8, '', 51473, 'Kanta Sharma', 'Mahaveer Prasad', '', '7976996735', '', '9667375279', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4643, 4, 8, '', 51421, 'Karan Gahlot', 'Kishan Lal Gahlot', '', '8387976296', '', '9588070329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4644, 4, 8, '', 51422, 'Kashish Garg', 'Chander Pal Garg', '', '9829118828', '', '9024089532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4645, 4, 8, '', 51424, 'Kunal Mittal', 'Shailendra Mithal', '', '9828560009', '', '8239998696', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4646, 4, 8, '', 51428, 'Mohit Choudhary', 'Rameshwar Choudhary', '', '9214969351', '', '8104040758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4647, 4, 8, '', 51429, 'Mohit Kaswan', 'Vinod Kaswan', '', '9602092766', '', '9001023828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4648, 4, 8, '', 51430, 'Mohit Yadav', 'Sunil Yadav', '', '9461473606', '', '6376059009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4649, 4, 8, '', 51431, 'Neha Vijay', 'Vijay Kumar', '', '9772548404', '', '7976764317', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4650, 4, 8, '', 51432, 'Nikhil Bajaj ', 'Ashok Modi', '', '9462984101', '', '8949894139', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4651, 4, 8, '', 51481, 'Nikhilesh Choudhary', 'Dhanna Ram Choudhary', '', '9352091047', '', '1512233946', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4652, 4, 8, '', 51471, 'Nitin Chawala', 'Rajendra Chawala', '', '9414514760', '', '7665576525', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4653, 4, 8, '', 51433, 'Onkar Singh', 'Karni Singh Bareth', '', '9828845088', '', '8442054836', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4654, 4, 8, '', 51434, 'Payal Suthar', 'Sita Ram ', '', '9805480265', '', '7837947055', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4655, 4, 8, '', 51435, 'Piyush Nagar', 'Ramavtar Nagar', '', '8503035599', '', '9413107733', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4656, 4, 8, '', 51437, 'Pradeep Singh', 'Prakash Singh', '', '6375516678', '', '7725956521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4657, 4, 8, '', 51438, 'Pragati Bishnoi', 'Anil Bishnoi', '', '9460264135', '', '6376249496', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4658, 4, 8, '', 51440, 'Priya Suthar', 'Deep Chand Suthar', '', '9829092471', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4659, 4, 8, '', 51442, 'Priyanka Bishnoi', 'Ram Ratan Bishnoi', '', '9413477777', '', '9413477777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4660, 4, 8, '', 51443, 'Priyanshi Purohit', 'Vinod Kumar Purohit', '', '9413143652', '', '8949362029', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4661, 4, 8, '', 51444, 'Rajni Saharan ', 'Hardayal Ram ', '', '6350002838', '', '8104560699', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4662, 4, 8, '', 51445, 'Renu Bithu', 'Sumer Dan Bithu', '', '9982221434', '', '9783673755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4663, 4, 8, '', 51447, 'Riya Sharma', 'Ajay Kumar Sharma', '', '8946815072', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4664, 4, 8, '', 51449, 'Rounak Khatri', 'Yogesh Khatri', '', '9413684372', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4665, 4, 8, '', 51450, 'Sakshi Palecha', 'Sakar Palecha', '', '9460002249', '', '7297032052', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4666, 4, 8, '', 51451, 'Saransh Gupta ', 'Jitendra Gupta', '', '9461488988', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4667, 4, 8, '', 51485, 'Shikha ', 'Viney Singla', '', '9317774925', '', '8901573880', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4668, 4, 8, '', 51453, 'Shrishti Chouhan ', 'Jagjit Chouhan ', '', '9413770244', '', '9588847538', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4669, 4, 8, '', 51454, 'Shristi Beniwal', 'Indereet Beniwal', '', '7690811069', '', '8946909002', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4670, 4, 8, '', 51456, 'Suchita Kumari Meel', 'Upendra Kumar', '', '7014495696', '', '9461670723', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4671, 4, 8, '', 51484, 'Tanisha Badlani', 'Dinesh Kumar Badlani', '', '9166913798', '', '9680659585', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4672, 4, 8, '', 51457, 'Tanisha Sachdeva', 'Dhiraj Kumar', '', '9414452512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4673, 4, 8, '', 51458, 'Tanisha Swami', 'Rajendra Kumar', '', '9928997847', '', '7726081898', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4674, 4, 8, '', 51459, 'Tanya Srivastava', 'Rajesh Srivastava', '', '9829260942', '', '1512220841', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4675, 4, 8, '', 51460, 'Tarang Chawla', 'Gourav Chawla', '', '9413013109', '', '9461349828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4676, 4, 8, '', 51461, 'Vaibhav Modi', 'Pramod Kumar', '', '9829822641', '', '7820867552', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4677, 4, 8, '', 51489, 'Vaishali', 'Inderpal ', '', '9466002013', '', '8901039234', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4678, 4, 8, '', 51462, 'Vanshika Rajpurohit', 'Praveen Purohit', '', '9414768090', '', '9413728784', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4679, 4, 8, '', 51463, 'Vanshita Chuchra ', 'Pramod Chuchra', '', '7014751104', '', '8239775758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4680, 4, 8, '', 51464, 'Varsha Rajpurohit', 'Ramswaroop Rajpurohit', '', '9414038313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4681, 4, 8, '', 51466, 'Vivek Godara', 'Amar Singh Godara', '', '9829033213', '', '9461977950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4682, 4, 8, '', 51448, 'Yash Patwa', 'Virendra Kumar', '', '9829118878', '', '9680058878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4683, 4, 10, '', 51713, 'Aditya Raj Bishnoi', 'Ram Niwas Bishnoi', '', '8696015839', '', '7976666835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4684, 4, 10, '', 51747, 'Alok Ramawat', 'Bherumal ', '', '9460905952', '', '9461531111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4685, 4, 10, '', 51734, 'Anil Kumar ', 'Mahaveer Ram ', '', '9950182032', '', '9462576424', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4686, 4, 10, '', 51716, 'Anjali Bhojak ', 'Laxmipal Bhojak ', '', '9024298187', '', '9529096900', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4687, 4, 10, '', 51718, 'Anjali Charan', 'Ganeshdan', '', '9602600498', '', '9649915530', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4688, 4, 10, '', 51750, 'Ankit Godara ', 'Brijlal ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4689, 4, 10, '', 51708, 'Ankita Yadav ', 'Subhash Chandra ', '', '9602583044', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4690, 4, 10, '', 51739, 'Archana Bishnoi ', 'Gopi Chand Bishnoi ', '', '9784240589', '', '9460000983', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4691, 4, 10, '', 51722, 'Ashok Godara', 'Jetharam Godara', '', '9929788010', '', '9929759057', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4692, 4, 10, '', 51733, 'Bhawani Shankar ', 'Hansraj Dusad', '', '8094520351', '', '9414142524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4693, 4, 10, '', 51742, 'Devi Lal Bhadu ', 'Raja Ram Bhadu ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4694, 4, 10, '', 51737, 'Dinesh Kumar ', 'Govardhan Lal Godara', '', '9667402946', '', '8949763960', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4695, 4, 10, '', 51876, 'Dinesh Maru', 'Shyam Maru', '', '8949143368', '', '6376047126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4696, 4, 10, '', 51741, 'Divya Dholpuria', 'Chunni Lal Dholpuria', '', '9414429725', '', '9610204080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4697, 4, 10, '', 51723, 'Ganesh Kaswan ', 'Chimni Ram Kaswan', '', '9829483192', '', '9145876235', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4698, 4, 10, '', 51867, 'Harshita Joshi', 'Pawan Kumar Joshi', '', '7737758291', '', '9214960944', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4699, 4, 10, '', 51720, 'Hement Choudhary', 'Shishu Pal Singh ', '', '9784001371', '', '8619828557', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4700, 4, 10, '', 51745, 'Jai Shree Maru ', 'Ramesh Kumar ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4701, 4, 10, '', 51715, 'Kalicharan Pareek', 'Bharmanand Pareek', '', '9610932643', '', '9982720211', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4702, 4, 10, '', 51707, 'Kavita Solanki', 'Narendra Kumar Solanki', '', '9461040207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4703, 4, 10, '', 51839, 'Komal Godara', 'Mala Ram ', '', '9413994949', '', '9414428993', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4704, 4, 10, '', 51735, 'Kuldeep Dholpuria', 'Devi Lal Dholpuria', '', '9460923895', '', '9610204080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4705, 4, 10, '', 51871, 'Kuldeep Ram ', 'Rupa Ram ', '', '8107945449', '', '9815162983', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4706, 4, 10, '', 51873, 'Kuldeep Yadav', 'Ram Krishan Yadav', '', '9982049945', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4707, 4, 10, '', 51866, 'Mahendra Singh Ratnoo', 'Kishan Dan ', '', '8442039966', '', '8094383219', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4708, 4, 10, '', 51711, 'Manish Sannel ', 'Ram Niwas', '', '9461383134', '', '9460924219', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4709, 4, 10, '', 51732, 'Manoj Godara', 'Sukharam', '', '9982311807', '', '9799708227', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4710, 4, 10, '', 51706, 'Manshi Suthar', 'Meghraj Suthar', '', '9414475903', '', '9772832608', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4711, 4, 10, '', 51710, 'Murli Dhar Bishnoi', 'Surja Ram Bishnoi', '', '9654185985', '', '7728093103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4712, 4, 10, '', 51743, 'Muskan Kohri', 'Rafiq Kohri', '', '7231084612', '', '8104786660', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4713, 4, 10, '', 51846, 'Neetu Bala', '  Peerdan', '', '9982289685', '', '9461373578', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4714, 4, 10, '', 51701, 'Neha Bhambhu', 'Sajjan Kumar ', '', '9413777691', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4715, 4, 10, '', 51740, 'Nisha Goyal', 'Jawahar Lal Goyal', '', '9413289711', '', '9828669711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4716, 4, 10, '', 51748, 'Pooja ', 'Ram Gopal ', '', '9950584085', '', '9001456130', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4717, 4, 10, '', 51746, 'Pooja Bithu ', 'Govind Dan Bithu', '', '9928719957', '', '8094383219', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4718, 4, 10, '', 51731, 'Pradeep ', 'Indraj ', '', '9929261151', '', '7073420719', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4719, 4, 10, '', 51736, 'Priyanka Bishnoi', 'Surendra Kumar ', '', '6375682082', '', '9521029882', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4720, 4, 10, '', 51717, 'Priyanka Siyag', 'Hariram Siyag', '', '9829148181', '', '9672604181', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4721, 4, 10, '', 51703, 'Priyanshi Pal', 'Roumdra Nath Pal ', '', '7597710860', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4722, 4, 10, '', 51861, 'Rahul Suthar', 'Deendayal Suthar', '', '7665368502', '', '9929651551', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4723, 4, 10, '', 51705, 'Ram Kaswan', 'Shri Ram Kaswan', '', '9772720080', '', '8529178087', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4724, 4, 10, '', 51709, 'Sandeep Bishnoi', 'Sahiram Bishnoi', '', '9680615056', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4725, 4, 10, '', 51751, 'Sandesh Jangir', 'Sunil Jangir', '', '9001752795', '', '9352964942', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4726, 4, 10, '', 51749, 'Sanjana Khatri ', 'Murlidhar Khatri ', '', '9252888664', '', '9602620045', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4727, 4, 10, '', 51725, 'Siddhesh Soni ', 'Jai Kishan Soni ', '', '8890368360', '', '9799985146', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4728, 4, 10, '', 51730, 'Sohini Choudhary', 'Subhash Chandra', '', '9414294663', '', '9352581167', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4729, 4, 10, '', 51738, 'Suneet Singh', 'Alok Singh', '', '9414384017', '', '9509991111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4730, 4, 10, '', 51852, 'Utkal Ranjan Sarwat', 'Deepa Ram Sarswat', '', '9571175765', '', '9351261426', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4731, 4, 10, '', 51744, 'Ved Prakash ', 'Naresh Kumar ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4732, 4, 10, '', 51865, 'Virendra Jakhar', 'Rajiram Jakhar', '', '9587561427', '', '9610107679', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4733, 4, 11, '', 51814, 'Anil Bishnoi ', 'Nemi Chand Bishnoi ', '', '9694493723', '', '9414452220', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4734, 4, 11, '', 51859, 'Anisha', 'Arjun Kasniya ', '', '8107508325', '', '9079634938', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4735, 4, 11, '', 51827, 'Anisha Bishnoi', 'Mahiram Bishnoi ', '', '9929393323', '', '7340573561', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4736, 4, 11, '', 51877, 'Ankit Bhatia', 'Rajpal Singh ', '', '8104115851', '', '9461011010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4737, 4, 11, '', 51804, 'Ankit Bishnoi ', 'Om Prakash ', '', '8432202484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4738, 4, 11, '', 51835, 'Ashok Kumar Moond ', 'Bhagirath Prasad Moond', '', '9414603941', '', '7568774305', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4739, 4, 11, '', 51825, 'Begaram ', 'Badri Ram ', '', '9414266667', '', '9414417809', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4740, 4, 11, '', 51294, 'Bhajan Lal', 'Satturam ', '', '9660827094', '', '9660010967', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4741, 4, 11, '', 51820, 'Bharat Sharma', 'Omprakash Sharma', '', '9821578210', '', '7410897103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4742, 4, 11, '', 51851, 'Chandra Prakash', 'Nathuram', '', '9079282437', '', '8005873135', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4743, 4, 11, '', 51807, 'Chetan Sharma', 'Gourishankar', '', '9929439522', '', '9414932811', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4744, 4, 11, '', 51821, 'Dasharath Kumar', 'Khumana Ram', '', '9929437819', '', '9079752517', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4745, 4, 11, '', 51844, 'Deepak Suthar', 'Ganesh Suthar', '', '9251355930', '', '8946873418', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4746, 4, 11, '', 51868, 'Dhairya Sharma', 'Sita Ram ', '', '9829303511', '', '7976156390', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4747, 4, 11, '', 51822, 'Digvijay Panwar', 'Motee Ram', '', '9950979545', '', '9079752517', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4748, 4, 11, '', 51810, 'Dinesh Kumar ', 'Bhura Ram ', '', '9783854273', '', '7410905505', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4749, 4, 11, '', 51508, 'Gajendra Choudhary', 'Nanu Ram ', '', '8619088916', '', '9460922879', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4750, 4, 11, '', 51843, 'Harikishan Kumawat', 'Omprakash Kumawat', '', '9460126577', '', '8769077164', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4751, 4, 11, '', 51801, 'Heena Prajapat ', 'Vijay Shaner Prajapat', '', '9269151750', '', '7219991885', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4752, 4, 11, '', 51863, 'Jai Kishan Paiwal ', 'Sagar Mal Paiwal ', '', '7690097454', '', '7447881669', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4753, 4, 11, '', 51849, 'Jyoti Deora', 'Rajendre Deora', '', '9828843875', '', '7791893287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4754, 4, 11, '', 61029, 'Kanta Kumari', 'Ram Pratap ', '', '9829359543', '', '8875299621', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4755, 4, 11, '', 51816, 'Lakshita Bishnoi', 'Ramprakash Bishnoi', '', '9413939126', '', '9829625283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4756, 4, 11, '', 51824, 'Mahaveer Jani', 'Patram Jani ', '', '9414265029', '', '8890223226', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4757, 4, 11, '', 51840, 'Manish Kumawat', 'Omprakash Kumawat', '', '9001315560', '', '9784064431', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4758, 4, 11, '', 51812, 'Mayank Acharya ', 'Ashok Kumar Acharya', '', '9929947799', '', '9928285377', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4759, 4, 11, '', 51813, 'Muskan Bishnoi', 'Ram Kumar', '', '9413106228', '', '6376415161', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4760, 4, 11, '', 51848, 'Naina Singh ', 'Krishan Kant Sirwa', '', '8005972552', '', '9314149399', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4761, 4, 11, '', 51842, 'Nidhi Choudhary', 'Girdhar Lal Choudhary', '', '9414629355', '', '9929101127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4762, 4, 11, '', 51802, 'Piyush Sharma ', 'Manoj Kumar Sharma ', '', '9636025035', '', '9413938811', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4763, 4, 11, '', 51856, 'Praveen Charan ', 'Ghanshyam Charan ', '', '9772306743', '', '9113979380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4764, 4, 11, '', 51806, 'Prem Prajapat ', 'Vijay Shaner Prajapat', 'Sushila Devi', '9269151750', '', '7219991885', '', 'male', 'OBC', '', '', 'C-167 Murlidhar Vyas Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334004', 'C-167 Murlidhar Vyas Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334004', '', '10 CGP', 'Dayanand Public Scho', 'CBSE', '', '', 'Dayanand Public Scho', 'CBSE', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(4765, 4, 11, '', 51803, 'Priya Sharma ', 'Pawan Kumar Sharma', '', '9414416791', '', '8769895987', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4766, 4, 11, '', 51817, 'Priyanka', 'Prathaviraj', '', '9929842878', '', '7425010278', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4767, 4, 11, '', 51838, 'Priyanka Bishnoi', 'Jagdish Prasad Bishnoi', '', '7742965329', '', '6375042298', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4768, 4, 11, '', 51726, 'Pukhraj Choudhary', 'Ganeshsa Ram ', '', '9784937942', '', '7665625233', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4769, 4, 11, '', 51870, 'Ramesh Kumar ', 'Narna Ram ', '', '8875105528', '', '9444246388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4770, 4, 11, '', 51702, 'Ramjan ', 'Tubail Mohammad', '', '9610344259', '', '9785859958', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4771, 4, 11, '', 51875, 'Rehana Bano ', 'Mohd.habib Chhimpa', '', '9252744571', '', '7014949521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4772, 4, 11, '', 51872, 'Rehana Praveen ', 'Mohd. Ameen ', '', '9261692465', '', '9649671997', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4773, 4, 11, '', 51837, 'Roja', 'Mohammad Amin', '', '9950234365', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4774, 4, 11, '', 51864, 'Saloni Tungariya', 'Poonam Chand', '', '9252268588', '', '7014015918', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4775, 4, 11, '', 51833, 'Sarita Baror ', 'Ram Pratap ', '', '9785875357', '', '6375622386', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4776, 4, 11, '', 51712, 'Shiv Ishram ', 'Patram Ishram ', '', '8107070373', '', '9119249226', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4777, 4, 11, '', 51823, 'Shree Krishan Thalor', 'Charan Singh Thalor', '', '9057512754', '', '7340164861', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4778, 4, 11, '', 51818, 'Shubham', 'Ram Prakash', '', '7232030727', '', '8107675107', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4779, 4, 11, '', 51850, 'Suman Bishnoi ', 'Hari Ram Bishnoi ', '', '9828100803', '', '9983446474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4780, 4, 11, '', 51828, 'Sunil ', 'Raju Ram ', '', '9982091977', '', '9460126803', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4781, 4, 11, '', 51841, 'Sunita Godara', 'Ganpat Ram Godara', '', '9928112831', '', '9983415658', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4782, 4, 11, '', 51836, 'Tamana Bishnoi', 'Ram Niwash Bhadu', '', '9414577585', '', '9001440955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4783, 4, 11, '', 51729, 'Umesh Kachhawa', 'Jagdish Kachhawa', '', '9214485881', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4784, 4, 11, '', 51832, 'Utpal Parihar', 'Santosh Kumar Parihar', '', '8875486004', '', '8426890519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4785, 4, 11, '', 51826, 'Vedika Ramawat', 'Lalit Kumar', '', '9413106904', '', '9828283736', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4786, 4, 11, '', 51857, 'Vicky Lohia', 'Nand Kishor Lohia ', '', '8769806921', '', '9435381326', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4787, 4, 11, '', 51845, 'Virendra Kumar Meghwal', 'Imrati Lal', '', '9950088266', '', '7014823827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4788, 4, 11, '', 51724, 'Vishnu Kumar Sharma', 'Bhawar Lal Sharma', '', '9413438138', '', '9461022546', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4789, 4, 11, '', 51728, 'Yash Raj Kachhawa', 'Umesh Kachhawa', '', '9166012699', '', '9261205585', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4790, 4, 11, '', 51815, 'Yashwant Upadhyay', 'Laxminarayan Upadhyay', '', '9001870918', '', '9460892634', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4791, 6, 13, '', 52001, 'Aaditya Bishnoi', 'Baldev Ram', '', '9828727259', '', '7229884322', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4792, 6, 13, '', 52103, 'Aashish Bishnoi', 'Ram Gopal Bishnoi', '', '9694965479', '', '8239396822', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4793, 6, 13, '', 52107, 'Aishwarya Khadgawat', 'Ramdhip Kumar', '', '9414430030', '', '9251822833', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4794, 6, 13, '', 52002, 'Aksha Kayenat', 'Mohd.awes', '', '9460619047', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4795, 6, 13, '', 52004, 'Amisha Bishnoi', 'Rajendra Bishnoi', '', '9414325128', '', '7427830529', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4796, 6, 13, '', 52112, 'Anuj Yadav ', 'Dr.veer Singh', '', '9414604144', '', '9468571144', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4797, 6, 13, '', 52006, 'Arshdeep Kaur', 'Jai Singh Johal', '', '9982118457', '7877575935', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4798, 6, 13, '', 52007, 'Ayushman Tomar', 'Gyan Jyoti Tomar', '', '9414283840', '', '7727034603', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4799, 6, 13, '', 52009, 'Bharat Chhimpa ', 'Ramesh Chhimpa', '', '9351205581', '', '7976132362', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4800, 6, 13, '', 52010, 'Bhawana Sadarangani', 'Ganesh Kumar', '', '9829655106', '', '9414075106', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4801, 6, 13, '', 52011, 'Bhumika Gahlot', 'Dinesh Gaklot', '', '7976499645', '', '7665891984', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4802, 6, 13, '', 52080, 'Dinesh ', 'Bhojraj', '', '9950564955', '', '8239844702', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4803, 6, 13, '', 52013, 'Gargey Sharma', 'Sohan Sharma', '', '9413018104', '', '9460794022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4804, 6, 13, '', 52127, 'Hari Kishan Kachhawa', 'Ramdayal Kachhawa', '', '9414265481', '9509163406', '9983750505', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4805, 6, 13, '', 52014, 'Harish Chouhan', 'Vijay Singh', '', '9478382738', '', '7888830183', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4806, 6, 13, '', 52077, 'Harsheel Verma', 'Vinod Kumar', '', '8118854313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4807, 6, 13, '', 52128, 'Harshwardhan Singh Rathore', 'Bhawar Vijendra Singh', '', '9413389192', '', '9116919266', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4808, 6, 13, '', 52015, 'Ishant Kumar Kadela', 'Rameshwar Lal', '', '9413467538', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4809, 6, 13, '', 52019, 'Jai Shree Soni', 'Sushil Kumar Soni', '', '7073259559', '', '7976210356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4810, 6, 13, '', 52016, 'Jai Veer Singh Choudhary', 'Sahi Ram Choudhary', '', '9413008611', '9461160049', '8003226033', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4811, 6, 13, '', 52018, 'Jas Karan Joshi', 'Om Prakash Joshi', '', '9166763519', '', '6375071590', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4812, 6, 13, '', 52022, 'Kartik Chhabra', 'Shyam Lal ', '', '9602977500', '', '9829900388', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4813, 6, 13, '', 52024, 'Khushi Meena ', 'Dharmveer Meena ', '', '8432555771', '', '8619638474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4814, 6, 13, '', 52026, 'Kushangi Arora', 'Suresh Kumar ', '', '9414512335', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4815, 6, 13, '', 52027, 'Lakshya Gahlot', 'Roop Singh Gahlot', '', '9829121257', '', '8619692976', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4816, 6, 13, '', 52088, 'Lakshya Kumar ', 'Suresh Kumar ', '', '9828629769', '', '8233229904', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4817, 6, 13, '', 52028, 'Manisha Puniya', 'Prema Ram Puniya', '', '9414118173', '', '9461123576', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4818, 6, 13, '', 52079, 'Mohammad Sufiyan ', 'Abdul Riyaz', '', '9829513250', '', '8963093386', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4819, 6, 13, '', 52087, 'Mohd.sohail ', 'Mohd.salim', '', '9414217999', '', '9057524500', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4820, 6, 13, '', 52029, 'Mohit Vashisth', 'Vidya Ratan Vashisth', '', '9145866117', '9460180349', '7014496250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4821, 6, 13, '', 52030, 'Monil Gahlot', 'Ghanshyam Gahlot', '', '9414324936', '', '9602166883', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4822, 6, 13, '', 52031, 'Namrata Singh', 'Shiv Bali Yadav', '', '9602615943', '', '8619939396', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4823, 6, 13, '', 52032, 'Navratan Parihar', 'Ram Kumar', '', '9680615053', '', '8502934356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4824, 6, 13, '', 52034, 'Nikhil Choudhary', 'Rajesh Kumar', '', '9001717855', '', '7425074287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4825, 6, 13, '', 52035, 'Nupur Khatri', 'Dr.praveen Khatri', '', '9414900409', '', '9983515036', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4826, 6, 13, '', 52036, 'Palak Bishnoi', 'Kailash Kumar', '', '9413371717', '9414436749', '8696504208', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4827, 6, 13, '', 52075, 'Palak Shripat', 'Prakash Shripat', '', '8107520551', '', '8619229180', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4828, 6, 13, '', 52039, 'Piyush Acharya', 'Umesh Chandra Acharya', '', '9680112341', '', '7014973662', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4829, 6, 13, '', 52040, 'Pooja ', 'Vinod', '', '9462916691', '', '9772197699', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4830, 6, 13, '', 52041, 'Pooja Yadav', 'Uma Shanker Yadav', '', '9013792701', '', '9001014046', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4831, 6, 13, '', 52042, 'Praveen Potlia', 'Keshari Chand Potlia', '', '8502977810', '8764103287', '9079134975', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4832, 6, 13, '', 52043, 'Preetam Meena', 'Bagraj Meena', '', '9414429196', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4833, 6, 13, '', 52044, 'Priyanshi Bhati', 'Deepak Raj Bhati', '', '9001195066', '9414430233', '9414430235', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4834, 6, 13, '', 52050, 'Purvi Sharma', 'Praveen Kumar Sharma', '', '9950674674', '', '9460449663', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4835, 6, 13, '', 52051, 'Radheyshyam Poonia', 'Rajendra Poonia', '', '7597744895', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4836, 6, 13, '', 52052, 'Radhika Poonia', 'Raj Kumar Poonia', '', '9414548214', '', '8946906950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4837, 6, 13, '', 52076, 'Rahul Jhahria', 'Kanhaiya Lal', '', '8955250462', '', '9782899660', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4838, 6, 13, '', 52053, 'Raj Kanwar Sisodiya', 'Laxman Singh', '', '9829138796', '', '9166567270', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4839, 6, 13, '', 52054, 'Raja Gahlot', 'Jethmal Gahlot', '', '9252705503', '', '9982033451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4840, 6, 13, '', 52055, 'Rajvi Kohri', 'Khurshid Kohri', '', '9214436666', '', '9660918364', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4841, 6, 13, '', 52089, 'Ramesh Kumar', 'Ghanshyam Bishnoi', '', '9828279516', '', '7427030834', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4842, 6, 13, '', 52056, 'Rashi Sharma', 'Rakesh Sharma', '', '9511513078', '', '7665138139', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4843, 6, 13, '', 52172, 'Ravi Verma', 'Dharmpal Verma', '', '9414482125', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4844, 6, 13, '', 52057, 'Sahil Malwan', 'Akir Hussata', '', '9309366787', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4845, 6, 13, '', 52085, 'Sarika Choudhary', 'Harlal Singh Dhaka', '', '9414080813', '', '9462580813', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4846, 6, 13, '', 52073, 'Sarita ', 'Dungar Ram ', '', '9982312245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4847, 6, 13, '', 52059, 'Saurbh Singh', 'Padam Singh', '', '8764212158', '', '7665706177', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4848, 6, 13, '', 52060, 'Shaheen Sodha', 'Ayub Ali Sodha', '', '9414137864', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4849, 6, 13, '', 52084, 'Shalini Gharu', 'Pradeep Kumar Gharu', '', '8890690073', '', '9828122843', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4850, 6, 13, '', 52081, 'Shubham Dagar', 'Dharamendra Kumar', '', '9460461767', '9549468292', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4851, 6, 13, '', 52078, 'Shubham Verma', 'Ram Chander Verma', '', '8118854313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4852, 6, 13, '', 52083, 'Simran Soni', 'Pramod Soni', '', '9468953235', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4853, 6, 13, '', 52086, 'Sneh Lata Meghwal ', 'Rajendra Kumar ', '', '9799172627', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4854, 6, 13, '', 52062, 'Sompal Vishnoi', 'Kishna Ram Bishnoi', '', '9413241989', '', '7426058098', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4855, 6, 13, '', 52063, 'Sonu', 'Subhash', '', '9828975842', '', '8619690085', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4856, 6, 13, '', 52064, 'Sourabh Lakehra ', 'Om Prakash', '', '9610230636', '', '8952036520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4857, 6, 13, '', 52065, 'Suman Rani', 'Daleep Singh', '', '9828509338', '', '9694005277', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4858, 6, 13, '', 52066, 'Sumit Swami', 'Chuuni Lal Swami', '', '9413795205', '', '7073532634', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4859, 6, 13, '', 52067, 'Sweta Meghwal', 'Kashiram Meghwal', '', '9950461987', '', '9413144779', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4860, 6, 13, '', 52202, 'Tanu Dulgach', 'Tara Ram Dulgach', '', '9460530490', '', '9166676285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4861, 6, 13, '', 52068, 'Tanu Kumari', 'Rajesh Kumar', '', '9950540879', '', '8385027156', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4862, 6, 13, '', 52070, 'Vaibhav Soni', 'Dharmpal Soni', '', '9024364310', '', '7597321743', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4863, 6, 13, '', 52071, 'Vasu Soni', 'Vishal Soni', '', '9214985410', '', '9166600974', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4864, 6, 13, '', 52072, 'Yogita ', 'Kishan Lal', '', '7742994314', '', '6280221605', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4865, 6, 14, '', 52104, 'Aadarsh Khurana', 'Yashpal Khurana', '', '9785147047', '', '9772854181', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4866, 6, 14, '', 52101, 'Aarchi Goyal', 'Sanjeev Kumar', '', '9414507837', '', '7597141037', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4867, 6, 14, '', 52102, 'Aarushi Sharma', 'Ganesh Chander Sharma', '', '9414084122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4868, 6, 14, '', 52204, 'Abhay Kumar ', 'Rajender Kumar ', '', '9460310480', '', '7425858951', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4869, 6, 14, '', 52105, 'Aditi', 'Yadav Goyal', '', '8847459327', '', '9041139610', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4870, 6, 14, '', 52106, 'Aditya Poonia ', 'Narendra Singh', '', '9414540923', '', '0151-2206474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4871, 6, 14, '', 52108, 'Akshita Beniwal ', 'Hanuman Beniwal', '', '9251531653', '', '9413106416', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4872, 6, 14, '', 52109, 'Amaan Khan', 'Inayat Khan', '', '9636266046', '', '9214415246', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4873, 4, 5, '', 52110, 'Ankit Suthar', 'Kaluram Suthar', 'kaushalya devi', '9950212690', '', '', '', 'male', '', '2001-10-10', '', 'keshav colony rawla mandi ward no-9', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '335707', 'sharma boys hostel jnv colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '335707', '', 'cgpa', 'k.v. b.s.f', 'CBSE', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4874, 6, 14, '', 52111, 'Anubhav Kumar', 'Ganesh Mohan Jha', '', '9950189381', '', '8005523235', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4875, 6, 14, '', 52113, 'Anupriya ', 'Arvind Kumar', '', '9314197698', '', '7296882078', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4876, 6, 14, '', 52197, 'Anuradha Karwasara', 'Omprakash Karwasra', '', '9829454554', '', '9413013916', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4877, 6, 14, '', 52114, 'Anushka Bhattacharya', 'Goutam Bhattacharya', '', '9828091526', '', '9001917077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4878, 6, 14, '', 52005, 'Anushka Tiwari', 'Nitin Kumar Tiwari', '', '9829797269', '', '7023948104', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4879, 6, 14, '', 52115, 'Apoorva Rankawat', 'Suresh Kumar', '', '9829840545', '', '9462170481', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4880, 6, 14, '', 52116, 'Arun Vijay Paliwal', 'Om Prakash Paliwal', '', '9828930340', '', '9116579852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4881, 6, 14, '', 52118, 'Bhavika Lakhesar', 'Rajendra Kumar', '', '9351755770', '', '9828148812', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4882, 6, 14, '', 52119, 'Bhavya Jakhar', 'Subhash Kumar', '', '9414260089', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4883, 6, 14, '', 52208, 'Chandra Mohan Bishnoi', 'Rameshwar Lal', '', '9929019308', '', '7425952029', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4884, 6, 14, '', 52120, 'Dimple Shekhawat', 'Dr.pushpendra Shekhawat', '', '9414138466', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4885, 6, 14, '', 52122, 'Diwakar Choudhary', 'Rajendra Choudhary', '', '9252594151', '', '7877794151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4886, 6, 14, '', 52124, 'Gaurav Parakh', 'Manish Kumar Parakh', '', '9783973406', '', '9571670384', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4887, 6, 14, '', 52125, 'Gungun Gulati', 'Navneet Kumar', '', '9828217215', '', '9079827213', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(4888, 6, 14, '', 52126, 'Gunjan Panwar', 'Shiv Kumar Panwar', '', '9461472613', '', '9602541286', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4889, 6, 14, '', 52200, 'Gurnoor Singh', 'Harender Pal Singh', '', '9610377723', '', '8952055381', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4890, 6, 14, '', 52129, 'Hitesh Tard', 'Radhyshyam Tard', '', '9602607069', '', '8982822042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4891, 6, 14, '', 52130, 'Inder Jeet Bhari', 'Atma Ram Bhari', '', '9460626799', '', '9461581777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4892, 6, 14, '', 52131, 'Isha Shrimali', 'Dilip Kumar', '', '9413311177', '', '9460619974', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4893, 6, 14, '', 52017, 'Janvi Guruda', 'Chander Shekhar', '', '9887593287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4894, 6, 14, '', 52082, 'Jatin Sharma', 'Sharwan Kumar', '', '9664306579', '', '9887783552', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4895, 6, 14, '', 52132, 'Jhilmil Baid', 'Jitendra Baid', '', '7340585995', '', '7340585995', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4896, 6, 14, '', 52133, 'Jitender Bithu', 'Sawai Singh', '', '9413189806', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4897, 6, 14, '', 52134, 'K.lokesh Palaniappan.k', 'Pl Kannan', '', '9482180828', '9443821092', '8762387828', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4898, 6, 14, '', 52135, 'Kamlesh ', 'Subhash', '', '9636127404', '', '8058632924', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4899, 6, 14, '', 52207, 'Khusbhu Bothra', 'Sanjay Kumar Bothra', '', '8279213151', '', '6375998773', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4900, 6, 14, '', 52136, 'Khushi Goyal', 'Rajnish Goyal ', '', '9414311470', '', '9460386326', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4901, 6, 14, '', 52198, 'Lalita Siddh ', 'Mamraj Nath ', '', '8952090436', '', '9587357261', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4902, 6, 14, '', 52138, 'Lubhanshi Gahlot', 'Bhagirath Gahlot', '', '9414426443', '', '9214880109', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4903, 6, 14, '', 52203, 'Mahak ', 'Sugan Singh', '', '9467259302', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4904, 6, 14, '', 52139, 'Mani Karan Sandhu', 'Jaspal Singh', '', '9667100036', '', '9549600036', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4905, 6, 14, '', 52140, 'Manisha Bishnoi', 'Ram Ratan Bishnoi', '', '9413477777', '', '9413477777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4906, 6, 14, '', 52201, 'Mayank Gupta', 'Navneet Kumar Gupta', '', '9414955304', '', '7339975304', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4907, 6, 14, '', 52141, 'Medhavi Acharya', 'Dhirendra Acharya', '', '9672994671', '', '9672984671', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4908, 6, 14, '', 52142, 'Mohammed Danish', 'Mohammed Arif', '', '8302303795', '', '9511502001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4909, 6, 14, '', 52143, 'Mohita Khatri', 'Brahma Khatri', '', '9468838688', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4910, 6, 14, '', 52144, 'Navandana Choudhary', 'Subhash Choudhary', '', '8890086464', '', '7891415478', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4911, 6, 14, '', 52145, 'Neha Godara ', 'Laxmi Narayan Godara', '', '9414547133', '', '9602343785', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4912, 6, 14, '', 52146, 'Neha Khatri ', 'Tilak Raj Khatri', '', '9414243035', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4913, 6, 14, '', 52199, 'Nidhi Modi', 'Om Prakash Modi', '', '9252240556', '', '7976750205', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4914, 6, 14, '', 52147, 'Nikhil Pandey', 'Kamal Kishore Pandey', '', '9460616233', '', '8107137678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4915, 6, 14, '', 52148, 'Nishan Singh Kang', 'Charanjeet Singh', '', '9024577317', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4916, 6, 14, '', 52149, 'Nishant Yadav', 'Ashok Kumar', '', '9460017547', '', '9460017547', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4917, 6, 14, '', 52150, 'Nitish Sharma', 'Anil Sharma', '', '9413466720', '', '9461047940', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4918, 6, 14, '', 52151, 'Palakh Parakh', 'Inder Chand Parakh', '', '8080724780', '', '7792057777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4919, 6, 14, '', 52152, 'Pawan Kumar', 'Rajender Kumar', '', '9416334757', '', '8094797283', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4920, 6, 14, '', 52153, 'Pooja ', 'Netram', 'vidya', '8094018951', '8094018951', '9587236885', '', 'female', 'OBC', '2001-04-07', '', 'vpo tajarasar dit & teh. sgnr', 'Rajasthan', 'ganga nagar', 'sri ganga nagar', 'tatarsar ', '335022', 'shiv shankar p.g', 'Rajasthan', 'sri ganga nagar', 'ganga nagar', 'ganganagar', '335022', '', '10 cgp', 'a.s.m public school', 'CBSE', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4921, 6, 14, '', 52155, 'Prashasti Solanki', 'Narendra Singh Solanki', '', '9828429026', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4922, 6, 14, '', 52157, 'Prem Prakash Delu', 'Hansraj Delu', '', '9928112457', '', '9509232906', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4923, 6, 14, '', 52158, 'Prince Chhimpa', 'Rajesh Kumar', '', '9672710278', '', '8619425419', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4924, 6, 14, '', 52159, 'Priyanka', 'Sanjay Kumar', '', '9783971857', '', '7240520958', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4925, 6, 14, '', 52161, 'Puja Mundel', 'Basti Ram Mundel', '', '9461352055', '', '8769407295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4926, 6, 14, '', 52162, 'Pushpendra Singh', 'Bheekh Singh', '', '9462247131', '', '7691083583', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4927, 6, 14, '', 52163, 'Rahul Chauhan', 'Naveen Chauhan', '', '9414900363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4928, 6, 14, '', 52165, 'Rahul Joonwal', 'Moti Lal Joonwal', '', '9929475415', '', '8769907300', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4929, 6, 14, '', 52166, 'Rahul Rajpurohit', 'Jagdish Rajpurohit', '', '9783202646', '', '9782278728', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4930, 6, 14, '', 52169, 'Rajandeep Kour', 'Bhajan Singh', '', '9829635364', '', '6375467397', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4931, 6, 14, '', 52170, 'Ranjana Soni', 'Rameshwar Soni', '', '9875292304', '', '8505023239', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4932, 6, 14, '', 52171, 'Rashmi Kumari', 'Raj Kumar', '', '7597706382', '', '7297065042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4933, 6, 14, '', 52173, 'Ravindra Singh', 'Abhay Pal Singh', '', '7568788008', '', '7239917336', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4934, 6, 14, '', 52174, 'Rithik Bagla', 'Shankar Lal Bagla', '', '9351200749', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4935, 6, 14, '', 52175, 'Ritika Khichi', 'Bhawani Singh', 'Bhawana khichi', '8949730267', '', '9784034057', '', 'female', 'GEN', '2002-09-11', '', 'Khichi niwas bhagwano ka mohalla old ginani bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', 'Khichi Niwas Bhagwano Ka Mohalla Old Ginani Bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '', '8.6 cg', 'maharani kishori dev', 'CBSE', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4936, 6, 14, '', 52176, 'Riya Choudhary', 'Subhash Bijarnia', '', '9414509998', '', '9166403232', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4937, 6, 14, '', 52177, 'Rohit Bishnoi', 'Maniram Bishnoi', '', '9413770255', '', '9461246199', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4938, 6, 14, '', 52179, 'Sakshi', 'Pankaj Kumar', '', '8239075965', '8239075965', '8471899492', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4939, 6, 14, '', 52058, 'Sakshi Nanda', 'Ghanshyam Nanda', '', '7627057119', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4940, 6, 14, '', 52180, 'Sarthak Bansal', 'Hemant Gupta', '', '9414952173', '', '9772305373', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4941, 6, 14, '', 52178, 'Shadev Bithu', 'Summer Dan Bithu', '', '9982221434', '', '9783673755', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4942, 6, 14, '', 52181, 'Shalini Saran', 'Sharwan Ram Saran', '', '9414416234', '9983507506', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4943, 6, 14, '', 52182, 'Shoaib Ali', 'Abdul Karim', '', '9460615801', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4944, 6, 14, '', 52183, 'Shrikant Tanwar', 'Raj Kumar Tanwar', '', '9929970606', '', '7725920031', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4945, 6, 14, '', 52184, 'Shruti  ', 'Vipin Chugh', '', '7976488052', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4946, 6, 14, '', 52187, 'Simran Sharma', 'Gopal Sharma', '', '8509253126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4947, 6, 14, '', 52186, 'Subham Sharma', 'Moolchand Sharma', '', '8005711141', '', '9928980572', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4948, 6, 14, '', 52188, 'Suhana', 'Pushpendra Kumar', '', '9992536743', '', '9460618017', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4949, 6, 14, '', 52189, 'Surendar Godara', 'Hukmaram Godara', '', '8003736457', '', '7424817459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4950, 6, 14, '', 52190, 'Tarun Kumar ', 'Vishram Meena', '', '9529535254', '', '9413288440', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4951, 6, 14, '', 52191, 'Udit Prakash Choudhary', 'Om Prakash Vishu', '', '9414968742', '', '7568856501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4952, 6, 14, '', 52192, 'Ujjwal Aneja', 'Bharat Bushan Aneja', '', '8949114639', '', '8094838924', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4953, 6, 14, '', 52069, 'Urja Sharma', 'Jitendra Kumar Sharma', '', '7014702138', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4954, 6, 14, '', 52193, 'Vedank Khatri', 'Vishnu Khatri', '', '9314402385', '', '9587314111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4955, 6, 14, '', 52194, 'Vidhi Rakhecha ', 'Sanjay Kumar', '', '9352884125', '', '9680804116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4956, 6, 14, '', 52205, 'Wasim Ahmed Gauri', 'Amirul Hassan Gauri', '', '9414894526', '', '7597742786', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4957, 6, 14, '', 52195, 'Yash Chordiay', 'Hira Lal Chordiya', '', '9413684270', '', '9001244878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4958, 6, 14, '', 52196, 'Yash Karnani', 'Sushil Karnani', 'Sarita karnani', '9414630479', '', '9468648935', '', 'male', 'GEN', '2002-04-12', '', 'outside jassusar gate near bikana hospital bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334004', 'Outside Jassusar Gate Near Bikana Hospital Bikaner', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334004', '', '', 'SRM International Sc', 'CBSE', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', 'self', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', 'n', '0000-00-00', 1, 0, '0000-00-00', '', 'y'),
(4959, 6, 14, '', 52206, 'Yatharath Saini', 'Suresh Saini', '', '9460078569', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4960, 6, 15, '', 52306, 'Aastha Kanwar Rathore', 'Vijay Singh', '', '9460317902', '', '9782706317', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4961, 6, 15, '', 52358, 'Ajay Bishnoi', 'Satish Bishnoi', '', '9982122510', '', '7339905929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4962, 6, 15, '', 52307, 'Anchal Dhillon', 'Anil Kumar Dhillon', '', '9460188986', '', '9460188986', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4963, 6, 15, '', 52350, 'Ankit Charan', 'Arvind Singh', '', '8769040113', '', '8504835901', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4964, 6, 15, '', 52334, 'Ankush Bishnoi', 'Hetram Dharniya', '', '9829287113', '', '9001440507', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4965, 6, 15, '', 52332, 'Anuj Bishnoi', 'Maniram Bishnoi', '', '7976518738', '9950991929', '9950220270', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4966, 6, 15, '', 52303, 'Anushree Devra ', 'Bhanwar Singh', '', '9414547294', '', '8239138001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4967, 6, 15, '', 52357, 'Ayan Bhati', 'Shajad Hussain Bhati', '', '9929868720', '9667939211', '8875090741', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4968, 6, 15, '', 52363, 'Bharat Sankhla ', 'Babu Lal Sankhla', '', '8233781734', '', '8890946040', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4969, 6, 15, '', 52348, 'Chanchal Chouhan', 'Anil Kumar Chouhan', '', '7568695123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4970, 6, 15, '', 52364, 'Chandan Kumar', 'Naresh Kumar', '', '9783238933', '', '9649806180', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4971, 6, 15, '', 52312, 'Chavvi Bhojak ', 'Kamal Bhojak', '', '7737987202', '', '9983947770', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4972, 6, 15, '', 52359, 'Hastimal Inaniya', 'Prema Ram', '', '9672460025', '', '9413158662', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4973, 6, 15, '', 52321, 'Ishaan Pathan ', 'Sharfat Ali Pathan ', '', '9414528766', '', '8619339484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4974, 6, 15, '', 52354, 'Ishita Chomal ', 'Sanjay Chomal ', '', '9929968900', '', '7597562323', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4975, 6, 15, '', 52310, 'Jaya Shekhawat', 'Devendra Singh', '', '9928210851', '', '0151-2241602', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4976, 6, 15, '', 52330, 'Jyoti Priya', 'Mahesh Kumar Meena', '', '9460503724', '', '9001197356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4977, 6, 15, '', 52336, 'Kalpana Meena ', 'Mahipal Meena ', '', '9875118272', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4978, 6, 15, '', 52309, 'Kanika Middha', 'Rakesh Kumar Middha', '', '9414904278', '', '9680566064', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4979, 6, 15, '', 52360, 'Keshav Chhangni', 'Shiv Sankar ', '', '9413769484', '', '9413725581', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4980, 6, 15, '', 52344, 'Komal Maru', 'Mahesh Kumar Maru', '', '9214806106', '', '7737596210', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4981, 6, 15, '', 52353, 'Lakshita Chhabra', 'Kulbhushan Chhabra', '', '9887690838', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4982, 6, 15, '', 52342, 'Laxmi Kanwar Bhati ', 'Gajendra Singh Bhati ', '', '9783565060', '', '8368331635', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4983, 6, 15, '', 52326, 'Madhuri Choudhary', 'Dhanna Ram Choudhary', '', '9166637634', '', '9352091047', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4984, 6, 15, '', 52319, 'Mamta Choudhary', 'Prabhu Ram Bana', '', '9413994991', '', '7737753872', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4985, 6, 15, '', 52341, 'Manish Bishnoi', 'Rajendra Bishnoi', '', '7737973023', '', '7797041013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4986, 6, 15, '', 52313, 'Mayank Ranga', 'Bhawanni Shanker', '', '9829985496', '', '6350660443', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4987, 6, 15, '', 52314, 'Muskan Bhati', 'Amit Bhati', '', '9928278883', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4988, 6, 15, '', 52301, 'Muskan Meena ', 'Jai Pal Meena', '', '7665726977', '', '7726902026', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4989, 6, 15, '', 52316, 'Nandini Maru', 'Rajesh Maru', '', '8529879710', '', '7056257907', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4990, 6, 15, '', 52323, 'Nandita Singh', 'Sanjay Singh', '', '9414139074', '', '7665185120', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4991, 6, 15, '', 52337, 'Niharika Gahlot', 'Dharm Veer Gahlot', '', '9460894461', '', '7374844470', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4992, 6, 15, '', 52335, 'Niloffer', 'Mohd Tasleem', '', '9252279090', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4993, 6, 15, '', 52352, 'Niranjan Chiniya', 'Durgaram Chiniya', '', '9414181274', '', '9929896035', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4994, 6, 15, '', 52331, 'Piyush Meherda', 'Dharma Ram ', '', '9461011182', '', '9602286077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4995, 6, 15, '', 52318, 'Pooja Saran', 'Bhanwar Lal', '', '9351085693', '', '8003917614', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4996, 6, 15, '', 52328, 'Pooja Yadav ', 'Jagdish Prasad Yadav', '', '9694466268', '', '9079323346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4997, 6, 15, '', 52305, 'Poonamchand Bhadu', 'Prabhuram Bhadu', '', '9950630808', '', '8949190363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4998, 6, 15, '', 52333, 'Pramod Meghwal ', 'Ashuram Meghwal ', '', '8107049428', '', '8118869725', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(4999, 6, 15, '', 52345, 'Priyanka Bhardwaj', 'Kishan Kumar ', '', '9587831613', '', '9828771852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5000, 6, 15, '', 52361, 'Priyanka Bhati ', 'Sher Singh Bhati ', '', '8003060555', '', '8619118114', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5001, 6, 15, '', 52346, 'Priyanshi Bajaj ', 'Damodar Bajaj ', '', '8696788451', '', '9799332864', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5002, 6, 15, '', 52327, 'Rachana Choudhary', 'Prahlad Choudhary', '', '9214969351', '', '8104040758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5003, 6, 15, '', 52324, 'Ranjana Bishnoi', 'Budhram Bishnoi', '', '9024255451', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5004, 6, 15, '', 52320, 'Ravi Prakash Indalia', 'Om Prakash Indalia', '', '9982491957', '', '7728041957', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5005, 6, 15, '', 52340, 'Ravina Khichar', 'Mahoharlal Khichar', '', '9799567995', '9079462995', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5006, 6, 15, '', 52322, 'Ravindra Kumar ', 'Ram Dayal Godara', '', '8005931992', '', '8385872177', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5007, 6, 15, '', 52355, 'Rechal Panwar', 'Firoj Khan ', '', '7014670653', '', '8875955537', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5008, 6, 15, '', 52302, 'Riddhi Bhargava', 'Sanjay Bhargava', '', '9672318857', '', '9001054181', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5009, 6, 15, '', 52304, 'Sakshi Khatri', 'Manmeet Khatri', '', '9461047690', '', '7615999842', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5010, 6, 15, '', 52317, 'Sakshi Soni', 'Mohan Lal Soni', '', '9468600922', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5011, 6, 15, '', 52311, 'Seema Charan', 'Gopal Dan', '', '9414952387', '', '9079162007', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5012, 6, 15, '', 52315, 'Seema Prajapat', 'Chandan Lal Prajapat', '', '9460174132', '', '9460783265', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5013, 6, 15, '', 52356, 'Seeta Godara', 'Sahiram Godara', '', '9928927805', '', '8058537535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5014, 6, 15, '', 52325, 'Shalini Gahlot', 'Rajendra Gahlot', '', '9829975941', '', '8094532751', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5015, 6, 15, '', 52343, 'Shekhar Ahluwalia', 'Ajit Singh', '', '8003735710', '', '9460170371', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5016, 6, 15, '', 52362, 'Sushila Kanwar', 'Sharwan Singh', '', '9982211521', '', '7737091509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5017, 6, 15, '', 52347, 'Swati Khicher', 'Sopat Khicher', '', '9829535831', '', '9660608031', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5018, 6, 15, '', 52308, 'Vartika', 'Arvind Kumar Garg', '', '9414581914', '', '9461472559', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5019, 6, 15, '', 52339, 'Vineet Bishnoi', 'Ramswaroop Bishnoi', '', '7976518738', '9950991929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5020, 6, 15, '', 52329, 'Vinita Yadav', 'Roshan Singh Yadav', '', '9950393158', '', '9653748653', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5021, 6, 16, '', 52442, 'Adnan Bagwan ', 'Roshan Ali', '', '9414139486', '', '7014883300', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5022, 6, 16, '', 52435, 'Anjali Nagal', 'Dhanraj Nagal', '', '9982177410', '', '8618774110', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5023, 6, 16, '', 52406, 'Ankita Karwasara', 'Daulat Ram Karwasara', '', '9413211433', '', '0151-2242555', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5024, 6, 16, '', 52415, 'Ankita Soni', 'Khetpal Soni', '', '9509513820', '', '8209801590', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5025, 6, 16, '', 52439, 'Annu Swami ', 'Dayanand Swami', '', '9461160094', '', '8947961325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5026, 6, 16, '', 52401, 'Anushka Sharma', 'Narendra Sharma', '', '9462194693', '', '9460523139', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5027, 6, 16, '', 52424, 'Chandrashekhar ', 'Jeevan Ram ', '', '9929359274', '', '9001525892', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5028, 6, 16, '', 52414, 'Charu Purohit', 'Murli Manohar Purohit', '', '9314456780', '', '9413388278', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5029, 6, 16, '', 52443, 'Chhagan Lal Goura', 'Mohan Lal Goura', '', '8875766525', '', '9929788036', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5030, 6, 16, '', 52419, 'Dimpal Kanwar', 'Rajendra Singh ', '', '9950206006', '', '9950201845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5031, 6, 16, '', 52411, 'Dolly ', 'Raj Kumar Soni', '', '7976054909', '', '9462332141', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5032, 6, 16, '', 52404, 'Ekta Solanki', 'Raviendra Kumar ', '', '9414265039', '', '7023880096', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5033, 6, 16, '', 52444, 'Gautam Gharu', 'Rakesh Gharu', '', '8829035001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5034, 6, 16, '', 52427, 'Gunjan Rawat', 'Naresh Rawat', '', '7610833786', '', '9214531276', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5035, 6, 16, '', 52438, 'Harshwardhan Singh ', 'Jugal Singh ', '', '9982033461', '', '9571004955', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5036, 6, 16, '', 52418, 'Jeenu Wadhwa', 'Jagdish Kumar ', '', '9413430208', '', '7230960722', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5037, 6, 16, '', 52447, 'Kapil Upadhyay', 'Raj Kumar Upadhyay', '', '6377351505', '', '9829211116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5038, 6, 16, '', 52441, 'Khushboo Tungariya', 'Dungar Ram ', '', '9251541760', '', '8619091038', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5039, 6, 16, '', 52429, 'Lakshay Saini', 'Ram Niwas Saini', '', '9351383856', '', '8005615711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5040, 6, 16, '', 52426, 'Lakshita Swami', 'Sushil Kumar', '', '9461036586', '', '7688987080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5041, 6, 16, '', 52437, 'Lokender Kumar Gahlot', 'Shalender Kumar Gahlot', '', '8949799648', '', '7877494059', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5042, 6, 16, '', 52409, 'Mahima Yadav', 'Late Surendra Singh', '', '7627000248', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5043, 6, 16, '', 52433, 'Manali Arora', 'Sanjay Girdhar', '', '9460617219', '', '9468585365', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5044, 6, 16, '', 52440, 'Megha Malik ', 'Lalit Malik', '', '7976149038', '', '9529008990', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5045, 6, 16, '', 52408, 'Mohd.azimudin Qunzi', 'Iffekharuoin', '', '8955557744', '', '9252512814', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5046, 6, 16, '', 52420, 'Nandini Jangir', 'Suresh Kumar', '', '9928111812', '', '7568748297', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5047, 6, 16, '', 52431, 'Payal Pandit', 'Vijay Sankar Pandit', '', '9079127150', '', '9079342307', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5048, 6, 16, '', 52446, 'Pradyumn Saraswat', 'Dev Krishan Saraswat', '', '7300229876', '', '7597068808', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5049, 6, 16, '', 52416, 'Pratham Manchanda', 'Harsh Manchanda', '', '8890532087', '', '7891760481', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5050, 6, 16, '', 52417, 'Rishika Singh Yadav', 'Rahul Singh Yadav', '', '9414498838', '', '9460523100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5051, 6, 16, '', 52445, 'Rishita Sen', 'Laxmi Kant Parihar', '', '8094410503', '', '9950520529', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5052, 6, 16, '', 52434, 'Ritika Joiya', 'Shanti Lal Joiya', '', '7339883048', '', '8769932677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5053, 6, 16, '', 52413, 'Ruchika', 'Ajit Singh', '', '9414264810', '', '7728998203', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5054, 6, 16, '', 52436, 'Shivani Panwar', 'Krishan Lal ', '', '9982677746', '', '7665313064', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5055, 6, 16, '', 52421, 'Shivani Yadav', 'Satish Singh Yadav', '', '9414217541', '', '9602966250', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5056, 6, 16, '', 52423, 'Shubham Kumar', 'Vijay Kumar', '', '9782866900', '', '6350020580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5057, 6, 16, '', 52432, 'Simran Pareek', 'Natwar Pareek', '', '9929931285', '', '9413727287', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5058, 6, 16, '', 52428, 'Sneha Kumari', 'Meharpal', '', '9460465851', '', '7737745583', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5059, 6, 16, '', 52425, 'Sonu Bithu', 'Hanuman Dan Bithu', '', '9783004147', '', '9799154615', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5060, 6, 16, '', 52403, 'Sourabh Dewara', 'Satyanarayan Dewara', '', '9672992525', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5061, 6, 16, '', 52402, 'Surendra Kumawat', 'Sukhdev Kumawat', '', '9887305928', '', '8769936696', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5062, 6, 16, '', 52407, 'Suyash Swami', 'Arvind Kumar Swami', '', '7597742300', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5063, 6, 16, '', 52422, 'Tarini Vyas', 'Madan Mohan Vyas', '', '9214035077', '', '0151-2542497', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5064, 6, 16, '', 52410, 'Yashpriya Goyal', 'Radheshyam Goyal', '', '9929158256', '', '9928605279', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5065, 6, 19, '', 52553, 'Aakanksha Barasa', 'Sohan Lal Barasa', '', '8560074935', '', '7062179140', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5066, 6, 19, '', 52552, 'Aarju Bharti', 'Suresh Bharti', '', '8529789044', '', '9413143877', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5067, 6, 19, '', 52564, 'Abhimanyu Singh', 'Ajit Singh Jodha', '', '9660866620', '9887416928', '7073729663', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5068, 6, 19, '', 52573, 'Amit Bhargav', 'Babu Lal  Bhargav', '', '7976753787', '', '8696744937', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5069, 6, 19, '', 52520, 'Anju Kumawat', 'Likhama Ram ', '', '9950902221', '', '7413881260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5070, 6, 19, '', 52567, 'Ankit Kumar Godara', 'Kojaram Godara', '', '9461479011', '9928467713', '8104795340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5071, 6, 19, '', 52507, 'Arjun Soni', 'Suresh Soni', '', '9414092266', '', '8385936521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5072, 6, 19, '', 52551, 'Arvind ', 'Bhagwana Ram ', '', '9799746148', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5073, 6, 19, '', 52556, 'Ashish Suthar', 'Meghraj Suthar', '', '9252510401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5074, 6, 19, '', 52550, 'Bhagwati Karwasara', 'Parmanand Karwasara', '', '9785205096', '', '9782598747', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5075, 6, 19, '', 52568, 'Bharat Kumar ', 'Pawan Kumar ', '', '9414629392', '', '7297846940', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5076, 6, 19, '', 52504, 'Bhavya Ratnu', 'Kishan Dan', '', '8233920322', '', '8949916295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5077, 6, 19, '', 52637, 'Bhawani Shanker', 'Mallchand Kumar', '', '7014404044', '', '9785087719', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5078, 6, 19, '', 52517, 'Chandni Dhawal', 'Kesarichand Dhawal', '', '8104604495', '', '8562800845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5079, 6, 19, '', 52534, 'Deepak Jyani', 'Shivlal', '', '9529773473', '', '7296952117', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5080, 6, 19, '', 52532, 'Devanti', 'Ramdayal Choudhary', '', '7023561657', '', '9461245825', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5081, 6, 19, '', 52544, 'Dinesh Godara', 'Jagdish Prasad Godara', '', '9252141405', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5082, 6, 19, '', 52527, 'Diwakar Depawat', 'Tej Singh Barath', '', '9983261066', '', '9783451459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5083, 6, 19, '', 52516, 'Gajendra Rajpurohit', 'Jagdish Prasad  ', '', '9413191016', '', '9460015241', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5084, 6, 19, '', 52554, 'Gautam Jangid', 'Sanjay Jangid', '', '9928381479', '', '8387907090', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5085, 6, 19, '', 52559, 'Hitesh Sankhla', 'Kamal Kishore Sankhla', '', '9413721087', '', '8502969963', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5086, 6, 19, '', 52505, 'Jai Prakash Beniwal ', 'Mangi Lal Beniwal ', '', '8058672988', '', '9660932959', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5087, 6, 19, '', 52526, 'Jasoda ', 'Bhanwar Lal ', '', '9553801130', '', '9982261695', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5088, 6, 19, '', 52521, 'Kailash Pareek ', 'Ram Kumar Pareek ', '', '8875091758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5089, 6, 19, '', 52509, 'Kanak Kotiya', 'Gopal Krishan Kotiya', '', '9672498844', '', '9772781855', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5090, 6, 19, '', 52506, 'Kirti Chouhan ', 'Bhopal Singh', '', '9414487543', '', '8696467086', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5091, 6, 19, '', 52561, 'Kuldeep Singh', 'Ghanshyam Dan Charan', '', '9468725665', '', '7734905833', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5092, 6, 19, '', 52533, 'Lalita Suthar', 'Bhanwar Lal', '', '9660022649', '9890022649', '7300278881', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5093, 6, 19, '', 52502, 'Lata Kumari Kachhawa', 'Manoj Kumar Kachhawa', '', '9252813938', '7737000351', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5094, 6, 19, '', 52541, 'Mahesh Harsh', 'Dilip Kumar Harsh', '', '8432361697', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5095, 6, 19, '', 52537, 'Manish Kumar Sarswat', 'Sitaram Sarswat', '', '9829568268', '', '8384929226', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5096, 6, 19, '', 52518, 'Manoj Pareek ', 'Maniram Pareek', '', '9982598059', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5097, 6, 19, '', 52555, 'Mayank Kachhawa', 'Surendra Kachhawa', '', '9057265418', '', '7627055081', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5098, 6, 19, '', 52536, 'Mohit Kumar Sharma', 'Rajendra Kumar Sharma', '', '9898175965', '', '8769685403', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5099, 6, 19, '', 52512, 'Monika Bhooker', 'Suresh Bhooker', '', '8741801028', '', '8003180006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5100, 6, 19, '', 52513, 'Monika Gahlot', 'Lokesh Gahlot', '', '7737768290', '', '9024518165', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5101, 6, 19, '', 52569, 'Mukesh Kumar', 'Keeshanlal', '', '9828989576', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5102, 6, 19, '', 52503, 'Mukund Dev Khichar', 'Munniram', '', '8239516503', '', '7023641483', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5103, 6, 19, '', 52549, 'Nameera Bano', 'Mohd.zakir', '', '6375202047', '', '6375206835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5104, 6, 19, '', 52519, 'Nishant Yadav', 'Subhash Chandra', '', '9602583044', '', '9413193060', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5105, 6, 19, '', 52538, 'Payal Bishnoi', 'Radha Kishan ', '', '9929304553', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5106, 6, 19, '', 52566, 'Pooja Swami', 'Mahaveer Swami', '', '9461473913', '', '9509220732', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5107, 6, 19, '', 52501, 'Pradeep Kumar Bhambhu', 'Sajjan Kumar Bhambhu', '', '9413777691', '', '7426877691', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5108, 6, 19, '', 52571, 'Rakesh Bishnoi', 'Jagdish Bishnoi', '', '9571836765', '', '9782956171', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5109, 6, 19, '', 52535, 'Ram Kishan Daal ', 'Pappu Ram ', '', '9636525124', '', '8875654887', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5110, 6, 19, '', 52557, 'Ramesh Bishnoi', 'Arjunram', '', '9460001225', '', '9982323493', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5111, 6, 19, '', 52510, 'Ravina ', 'Ramnarayan Bishnoi', '', '9983142011', '', '8875747839', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5112, 6, 19, '', 52531, 'Ravinder ', 'Sitaram ', '', '9799746148', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5113, 6, 19, '', 52575, 'Ravindra Jakhar', 'Tag Singh', '', '9649158302', '', '9799593303', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5114, 6, 19, '', 52563, 'Rohit Daiya ', 'Jugal Kishor Daiya', '', '9261498290', '', '9461470580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5115, 6, 19, '', 52528, 'Sangeeta Bishnoi', 'Maniram Bishnoi', '', '9828587589', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5116, 6, 19, '', 52558, 'Sapna Godara', 'Nand Lal Choudhary', '', '9602292221', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5117, 6, 19, '', 52525, 'Shailja Kumhar', 'Manjul Mukul Verma', '', '9829552926', '', '9660352991', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5118, 6, 19, '', 52562, 'Shaitan Singh Charan', 'Virendra Singh Charan', '', '9664425625', '', '8769157590', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5119, 6, 19, '', 52508, 'Sharmila Sigar', 'Om Prakash Siggar', '', '9461472774', '', '7413826325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5120, 6, 19, '', 52545, 'Shruti Khatri', 'Mahesh Kumar', '', '6375759973', '', '9214440598', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5121, 6, 19, '', 52560, 'Shubham Suthar ', 'Lal Chand Suthar', '', '9983770912', '', '6375629802', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5122, 6, 19, '', 52565, 'Shweta Bishnoi', 'Naresh Kumar ', '', '9928719908', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5123, 6, 19, '', 52570, 'Subhash  Giri', 'Megh Giri', '', '8769606386', '', '8696063461', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5124, 6, 19, '', 52523, 'Subhash Chandra ', 'Hajari Ram Bishnoi', '', '9828045023', '', '7742223505', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5125, 6, 19, '', 52542, 'Sunita Kasnia', 'Lal  Chand Kasnia', '', '9414515509', '', '8769800101', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5126, 6, 19, '', 52548, 'Tushar Suthar', 'Rajnarayan Suthar', '', '8505053571', '', '8739819321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5127, 6, 19, '', 52515, 'Vasudev Pareek ', 'Gajanand Pareek ', '', '9982598062', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5128, 6, 19, '', 52547, 'Vidhi Prajapat', 'Mahaveer Prasad Prajapat', '', '8946815410', '', '8233596429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5129, 6, 19, '', 52530, 'Vikash Sarswa', 'Kishan Lal ', '', '9799045331', '', '8239916630', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5130, 6, 19, '', 52514, 'Vikram Ram Nai ', 'Omaram Nai', '', '9782460639', '', '9829816841', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5131, 6, 19, '', 52543, 'Vishwajeet Limba', 'Bhanwar Lal Limba', '', '9461470241', '', '9521510983', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5132, 6, 19, '', 52522, 'Yashoda Kumari', 'Dilip Kumar Gupta', '', '8562094467', '', '8442039046', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5133, 6, 19, '', 52524, 'Yogesh Barath', 'Gopal Singh', '', '9829764168', '', '8955155246', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5134, 6, 19, '', 52511, 'Yuvraj ', 'Pradeep Kumar ', '', '9982595385', '', '8442055231', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5135, 6, 20, '', 52627, 'Aayush Joshi', 'Vijay Joshi', '', '9928055277', '', '8890974336', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5136, 6, 20, '', 52642, 'Abhishek Upadhayay', 'Chand Mal Upadhayay', '', '9829854933', '', '9664353233', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5137, 6, 20, '', 52648, 'Akshat Swami ', 'Arvind Swami ', '', '7742951006', '', '9079185841', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5138, 6, 20, '', 52546, 'Akshra', 'Ramesh War Lal ', '', '9602665875', '', '9782460421', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5139, 6, 20, '', 52633, 'Amit Bishnoi', 'Hanshraj Bishnoi', '', '9829172941', '', '6990127129', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5140, 6, 20, '', 52611, 'Bhimsen Godara', 'Rajaram Godara', '', '9828646533', '', '8114496212', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5141, 6, 20, '', 52617, 'Bhupendra Saran', 'Rugharam Saran', '', '9929788071', '', '7073282229', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5142, 6, 20, '', 52655, 'Chanchal Binawara', 'Shyam Sunder', '', '9887686563', '', '8239784925', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5143, 6, 20, '', 52624, 'Dilip Soni ', 'Satnarayan', '', '9214976508', '', '9214819196', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5144, 6, 20, '', 52654, 'Gagan Meghwal ', 'Jagdish Prasad', '', '9928927741', '9001016024', '7568122412', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5145, 6, 20, '', 52613, 'Garima Jeengar', 'Ashok Kumar Jeengar', '', '9252040239', '', '9785714248', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5146, 6, 20, '', 52529, 'Gopi Kishan Bhargav', 'Ram Kumar Bhargav', '', '9660291829', '', '8740041772', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5147, 6, 20, '', 52608, 'Hansraj ', 'Om Prakash ', '', '8107095366', '', '9799934741', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5148, 6, 20, '', 52634, 'Harish Potalia ', 'Hetram Potalia', '', '8209708401', '9460863447', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5149, 6, 20, '', 52615, 'Himanshi Soni', 'Rajendra Kumar Soni', '', '9829226678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5150, 6, 20, '', 52636, 'Imran Khan', 'Mamdin Khan', '', '9828046679', '', '8290901803', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5151, 6, 20, '', 52651, 'Jai Vardhan Singh ', 'Bakhtawar Singh ', '', '8529370791', '', '9828069086', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5152, 6, 20, '', 52659, 'Jeta Ram', 'Baga Ram', '', '9828961887', '', '7340145871', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5153, 6, 20, '', 52539, 'Jyoti Bishnoi ', 'Nihal Chand Bishnoi', '', '9079825487', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5154, 6, 20, '', 52623, 'Jyoti Soni ', 'Satnarayan', '', '9214976508', '', '9214819196', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5155, 6, 20, '', 52645, 'Khushbu Godara', 'Gopala Ram Godara', '', '9413994949', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5156, 6, 20, '', 52622, 'Latasha Meena', 'Ramkaran Meena', '', '9785813043', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5157, 6, 20, '', 52606, 'Mahendra Godara', 'Gopa Ram', '', '9783430925', '', '8949566601', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5158, 6, 20, '', 52656, 'Manful Saran ', 'Likhma Ram Saran ', '', '9829436298', '', '7414819840', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5159, 6, 20, '', 52607, 'Manish Kumar Saharma', 'Ram Prasad Sharma', '', '9783905759', '', '8209514897', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5160, 6, 20, '', 52601, 'Manish Singh Godara', 'Ram Kishan Godara', '', '9928433484', '', '9950698711', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5161, 6, 20, '', 52621, 'Manoj Gaat', 'Mukhram Gaat', '', '9414924386', '', '9680910435', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5162, 6, 20, '', 52652, 'Nand Lal Godara', 'Sahi Ram Godara', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5163, 6, 20, '', 52641, 'Nehpal Singh ', 'Ganpat Singh ', '', '8209268293', '', '7734953867', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5164, 6, 20, '', 52631, 'Nikita Chouhan ', 'Prem Chouhan ', '', '8890005140', '', '9461386716', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5165, 6, 20, '', 52612, 'Nirmala Godara', 'Purna Ram Godara', '', '9549938721', '', '9352480414', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5166, 6, 20, '', 52638, 'Nisha', 'Bhanwar Lal  ', '', '9414904594', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5167, 6, 20, '', 52610, 'Pawan Meghwal ', 'Kailash Ram ', '', '9772592486', '', '9799714119', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5168, 6, 20, '', 52605, 'Pradeep Singh Bhati', 'Jait Singh Bhati', '', '8696260988', '', '6375744438', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5169, 6, 20, '', 52619, 'Preeti Maru', 'Govind Maru', '', '9252628842', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5170, 6, 20, '', 52629, 'Prem Dass Swami', 'Chanan Das', '', '9929986405', '', '7073642311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5171, 6, 20, '', 52620, 'Prerna Sen', 'Sunil Sen', '', '9828889979', '', '9166638035', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5172, 6, 20, '', 52609, 'Priyanka Kanwar', 'Kan Singh Sisodiya', '', '9950543687', '', '8560992808', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5173, 6, 20, '', 52540, 'Raj Sadh', 'Mahendra Kumar Sadh', '', '9116434889', '', '7742937042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5174, 6, 20, '', 52650, 'Raksha Bishnoi', 'Maniram Bishnoi', '', '9982122510', '', '7220828974', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5175, 6, 20, '', 52639, 'Ramawatar', 'Jalaram ', '', '9983891700', '', '6375713029', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5176, 6, 20, '', 52632, 'Rohit Kumar Parihar', 'Bhanwar Lal Parihar', '', '9828591972', '', '8094951972', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5177, 6, 20, '', 52614, 'Sangeeta Suthar', 'Purkharam Suthar', '', '9784587451', '', '7793811472', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5178, 6, 20, '', 52626, 'Santosh Prajapat', 'Jhanwer Lal Prajapat', '', '6350287119', '', '8239782467', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5179, 6, 20, '', 52644, 'Sapna Gahlot', 'Hari Prasad Gahlot', '', '9352793320', '', '8107076202', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5180, 6, 20, '', 52646, 'Seema Meena', 'Pitram Meena', '', '9829521725', '', '8875744259', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5181, 6, 20, '', 52630, 'Sharawan Tanwar', 'Raju Ram ', '', '7742254614', '', '7340338371', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5182, 6, 20, '', 52616, 'Shiv Narayan ', 'Shrawana Ram ', '', '9829987434', '', '7357280361', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5183, 6, 20, '', 52603, 'Shivam Vyas', 'Dinesh Vyas', '', '8764131300', '', '7023362727', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5184, 6, 20, '', 52604, 'Sneha Jani', 'Sharvan Kumar Jani', '', '9460078364', '', '9549607311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5185, 6, 20, '', 52602, 'Sonalika Hatila', 'Manak Chand Hatila', '', '9252882187', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5186, 6, 20, '', 52625, 'Sumitra Potaliya', 'Rameshwar Potaliya', '', '9251256621', '', '8094249580', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5187, 6, 20, '', 52640, 'Sundar Sinwar', 'Kishan Ram Sinwar', '', '8696162861', '', '8058926601', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5188, 6, 20, '', 52647, 'Sunil Kumar ', 'Om Prakash Legha', '', '8387988787', '', '9667324394', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5189, 6, 20, '', 52635, 'Sunil Saharan', 'Ram Chandra', '', '9784182359', '', '9001013925', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5190, 6, 20, '', 52653, 'Sunita Bishnoi', 'Jogi Raj ', '', '9001254441', '', '8290549247', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5191, 6, 20, '', 52649, 'Sunita Chotia', 'Omprakash Chotia', '', '9610765568', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5192, 6, 20, '', 52572, 'Sweta Chhahgani', 'Deepal Kumar', '', '9214093321', '', '8952027666', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5193, 6, 20, '', 52618, 'Varsha Prajapat', 'Jaiprakash Prajapat', '', '9829110184', '', '8769928626', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5194, 6, 20, '', 52657, 'Vikram Siddh', 'Jay Kumar', '', '8769330717', '', '9649516097', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5195, 6, 20, '', 52643, 'Vinit Upadhayay', 'Sarwan Kumar', '', '9829854933', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5196, 6, 20, '', 52658, 'Vishnu Bishnoi', 'Maniram Bishnoi', '', '8003189792', '', '7690890578', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5197, 1, 1, '', 58002, 'Arnav Goswami', 'Dr.shwet Goswami', '', '9001781718', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5198, 1, 1, '', 58005, 'Bhoomika Bajaj', 'Manoj Kumar Bajaj', '', '9351208485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5199, 1, 1, '', 58001, 'Budhadev Rajpurohit', 'Ramswaroop Rajpurohit', '', '9414038313', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5200, 1, 1, '', 58010, 'Deeksha Bishnoi', 'Dheeraj Bishnoi', '', '9414139329', '', '9414137817', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5201, 1, 1, '', 58004, 'Gaurav Sharma', 'Banwari Lal Sharma', '', '9413481006', '', '6375504059', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5202, 1, 1, '', 58011, 'Mannat Bishnoi', 'Dheeraj Bishnoi', '', '9414137817', '', '9414139329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5203, 1, 1, '', 58007, 'Mohit Gupta ', 'P.c. Gupta', '', '9460414650', '', '8949635836', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5204, 1, 1, '', 58008, 'Pulkit Goyal', 'Jay Vardhan Goyal', '', '8561922924', '', '9588865392', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5205, 1, 1, '', 58006, 'Ram Rupesh Saran', 'Om Prakash Saran', '', '9460270999', '', '8619207785', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5206, 1, 1, '', 58009, 'Rohan Khan Bagwan', 'Tanveer Ali', '', '9928179008', '', '8955885656', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5207, 1, 1, '', 58012, 'Subhash Suthar', 'Jasaram Suthar', '', '7073094477', '', '7742491340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5208, 1, 1, '', 58003, 'Tanav Suthar', 'Jethmal Suthar', '', '8946941504', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5209, 2, 2, '', 59003, 'Anam Suthar', 'Jethmal Suthar', '', '7073400333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5210, 2, 2, '', 59001, 'Dishant Khiyani', 'Kishore Khiyani', '', '9928471494', '', '9610401494', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5211, 2, 2, '', 59013, 'Koushalya Siddh', 'Mamraj Siddh', '', '8952090436', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5212, 2, 2, '', 59002, 'Megha Ranga', 'Tribhuvan Shanker', '', '9413372773', '', '9588273892', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5213, 2, 2, '', 59007, 'Mukesh Siddh', 'Mamraj Siddh', '', '8952090436', '', '9587357261', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5214, 2, 2, '', 59004, 'Praveen Bishnoi', 'Jagdish Prasad Bishnoi', '', '9829648769', '', '8764871486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5215, 2, 2, '', 59006, 'Sunil Kumar Tard', 'Radheshyam Tard', '', '9982822042', '', '9602607069', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5216, 2, 2, '', 59010, 'Swastika Dev', 'Shrii Anandamurti', '', '9351595938', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5217, 2, 2, '', 59005, 'Tarun Singh Charan', 'Mahendra Dan', '', '9269192453', '', '8769935633', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5218, 5, 32, '', 61019, 'Aaditya Bajaj', 'Manoj Kumar Bajaj', '', '9414324288', '', '7014785301', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5219, 5, 32, '', 61017, 'Ajay Singh ', 'Baldev Singh ', '', '9728400209', '', '9671492032', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5220, 5, 32, '', 61012, 'Anurag Bhattar', 'Ashok Bhattar', '', '9314084147', '', '7611888111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5221, 5, 32, '', 61005, 'Ashwani Dhamu', 'Chhangan Lal', '', '9983335102', '', '9460494505', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5222, 5, 32, '', 61001, 'Devansh Pareek ', 'Radheshyam Joshi', '', '9413230256', '', '9461230256', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5223, 5, 32, '', 61021, 'Harsh Pareek', 'Pradeep Pareek', '', '9828322859', '', '6377468353', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5224, 5, 32, '', 61018, 'Hemant Suthar', 'Jhanwar Lal ', '', '9351830950', '', '8233247257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5225, 5, 32, '', 61014, 'Jinander Yadav', 'Lal Singh Yadav', '', '9461471042', '', '7733877518', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5226, 5, 32, '', 61002, 'Kanika Bajaj', 'Manoj Bajaj', '', '8560085666', '', '9351208485', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5227, 5, 32, '', 61010, 'Lavanya Saxena', 'Gaurav Saxena', '', '7014111972', '', '8290863779', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 15, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5228, 5, 32, '', 61008, 'Mansi Maru', 'Manoj Kumar Maru', '', '9351803352', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5229, 5, 32, '', 61003, 'Mohd.adil Shekh', 'Mohd.amin Shekh', '', '9261208075', '', '8209361832', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5230, 5, 32, '', 61022, 'Nishant Kumar Sewag', 'Narendra Kumar Sewag', '', '7976841604', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5231, 5, 32, '', 61020, 'Pranjay Singhvi', 'Vipin Jain', '', '9214661953', '', '6377564484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5232, 5, 32, '', 61011, 'Prashant Singh Khichi', 'Bhawani Singh Khichi', '', '9414425845', '', '9829138529', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5233, 5, 32, '', 61013, 'Rakesh Sidh ', 'Devnath Sidh', '', '9602342141', '', '9460538974', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5234, 5, 32, '', 61009, 'Shreyansh Jhawar', 'Vinod Kumar', '', '8005871409', '', '7357347932', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5235, 5, 32, '', 61004, 'Sujan Khan Qureshi', 'Anwar Ali', '', '9928331601', '', '9784449581', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5236, 5, 32, '', 61007, 'Sushanto Roy', 'Sumant Kumar Roy', '', '9989995571', '', '7597741417', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5237, 5, 32, '', 61016, 'Yuvraj Tiwari ', 'Rishi Kesh Tiwari ', '', '9214988172', '', '7976088025', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5238, 5, 32, '', 61023, 'Ankur Ramawat', 'Suresh Kumar', '', '9251019806', '', '6377594157', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5239, 5, 32, '', 61026, 'Gagan Saini', 'Anand Prakash Saini', '', '9024684024', '', '9664064726', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5240, 5, 32, '', 61028, 'Jugal Panchariya', 'Manak Chand', '', '7665192985', '', '9856227520', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5241, 5, 32, '', 61027, 'Jyoti', 'Surendra Kumar', '', '9983034914', '', '6376441697', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5242, 7, 33, '', 62001, 'Abhishek Rathore', 'Prithvi Singh', '', '9829171688', '', '9166777899', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5243, 7, 33, '', 62003, 'Anjali Sarswat', 'Anil Kumar', '', '9414967661', '', '9467392548', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5244, 7, 33, '', 62005, 'Dinesh Jangu', 'Jagdish Prasad', '', '9929994929', '', '7728041119', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5245, 7, 33, '', 62006, 'Harsh Tanwar', 'Dinesh Kumar Tanwar', '', '9460505430', '', '9413142312', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-14', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5246, 7, 33, '', 62009, 'Kushal Kasnia', 'Man Singh Kasnia', '', '9116992005', '', '9602965009', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5247, 7, 33, '', 62034, 'Maha Dev Chhimpa', 'Bhanwar Lal ', '', '9413938038', '', '8094805882', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5248, 7, 33, '', 62012, 'Mayank Lalwani', 'Manoj Kumar', '', '9460929449', '', '8233563564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5249, 7, 33, '', 62016, 'Nikita Swami', 'Shivshankar Swami', '', '9460893697', '', '6375753528', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5250, 7, 33, '', 62002, 'Prerna Ojha', 'Prem Ratan Ojha', '', '9829150700', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5251, 7, 33, '', 62021, 'Pukhraj Sharma ', 'Gopi Kishan Sharma', '', '9950030634', '', '8058750291', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 16, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5252, 7, 33, '', 62028, 'Shubhnanda Sharma', 'Gopal Sharma', '', '8509253126', '', '9166697590', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5253, 7, 33, '', 62029, 'Tarun Suthar', 'Ramesh Suthar', '', '9214334005', '', '9314308080', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5254, 7, 33, '', 62030, 'Toufeeq Ahmed', 'Bilal Ahmed', '', '9461551106', '', '6375348703', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5255, 7, 33, '', 62031, 'Vipul Suthar', 'Vinod Kumar', '', '9351202718', '', '9079384594', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5256, 7, 33, '', 62032, 'Yash Munjal', 'Naresh Kumar', '', '9829411133', '', '7073544998', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5257, 7, 33, '', 63033, 'Yogesh ', 'Sanjay Kumar ', '', '7014287140', '', '9462945315', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5258, 11, 52, '', 55004, 'Dimple Pareek', 'Kamal Pareek', '', '9414968914', '', '9024868206', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5259, 11, 52, '', 55005, 'Geetanshu Khatri', 'Ramesh Kumar Khatri', '', '7792957006', '', '8561877469', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5260, 11, 52, '', 55001, 'Jaswant Kumar Nayak ', 'Dinesh Kumar Nayak ', '', '7742253747', '', '9079135541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5261, 11, 52, '', 55003, 'Manisha Meena ', 'Nandlal Meena ', '', '9460169163', '', '9460169163', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5262, 11, 52, '', 55011, 'Muskan Tawaniya', 'Alok Kumar Tawaniya', '', '9982213589', '', '9314013589', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5263, 11, 52, '', 55002, 'Naman Kumar Nayak', 'Dharma Ram Nayak', '', '7229900427', '', '9680595835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5264, 11, 52, '', 55010, 'Punit Bhadu', 'Bheekam Chand Bishnoi ', '', '9414863313', '', '8005929535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5265, 11, 52, '', 55009, 'Rajat Kumar ', 'Kishan Lal ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5266, 11, 52, '', 55015, 'Sunil Beniwal', 'Kanhiram', '', '9929650881', '', '9166806153', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5267, 11, 52, '', 55007, 'Surendra Rain', 'Jai Kishan Rain', '', '9602211685', '', '7426034479', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5268, 11, 52, '', 55008, 'Vashudev Bhati ', 'Kishan Lal Bhati ', '', '9950171656', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5269, 11, 52, '', 55006, 'Yudhisthier Singh Tanwar', 'Pavan Kumar Tanwar', '', '9079551146', '', '9829897925', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5270, 8, 24, '', 53253, 'Abhijeet Singh Sankhla ', 'Gajendra Singh Sankhla ', '', '9414137210', '', '9460616348', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5271, 8, 24, '', 53203, 'Ajay Beniwal ', 'Perma Ram Beniwal ', '', '8946907084', '', '9602705804', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5272, 8, 24, '', 53283, 'Amit Charan', 'Ganesh Dan', '', '9602600498', '', '9461872927', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5273, 8, 24, '', 53110, 'Amit Choudhary', 'Predeep Choudhary', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5274, 8, 24, '', 53201, 'Anil Kumawat', 'Ghanshyam Kumawat', '', '7737766606', '', '9799473468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5275, 8, 24, '', 53247, 'Ankita Tanwar', 'Suresh Kumar Tanwar', '', '9414990665', '', '7690915848', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5276, 8, 24, '', 53114, 'Anshulika Nikhar', 'Gore Lal', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5277, 8, 24, '', 53207, 'Arshdeep Kaur', 'Baljeet Singh ', '', '9413279392', '', '9413725934', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5278, 8, 24, '', 53205, 'Ashok Poonia ', 'Mahendra Singh', '', '9929542153', '', '9649451151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5279, 8, 24, '', 53268, 'Ayushi Solanki ', 'Laxman Chand ', '', '9649248909', '', '9828217277', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5280, 8, 24, '', 53271, 'Babita ', 'Satish ', '', '8696389950', '', '7568054501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5281, 8, 24, '', 53277, 'Babu Lal Nayak', 'Takaram', '', '9784052784', '', '6376645605', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5282, 8, 24, '', 53214, 'Devansh Gupta', 'Mahendra Gupta', '', '9414450101', '', '9414959101', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5283, 8, 24, '', 53246, 'Devendra Choudhary', 'Rakesh Choudhary', '', '9414658291', '', '9783975385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5284, 8, 24, '', 53213, 'Diksha Singh Siyag', 'Chandresh Siyag', '', '8005797405', '9413143708', '8005797405', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5285, 8, 24, '', 53238, 'Diksha Yadav', 'Anil Singh Yadav', '', '9414429624', '', '9784627004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5286, 8, 24, '', 53295, 'Dinesh Diloiya ', 'Hanuman Bishnoi ', '', '9784432078', '', '9351191230', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5287, 8, 24, '', 53290, 'Gargee Saxena', '', '', '9414956387', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5288, 8, 24, '', 53224, 'Garvit Parihar', 'Vikram Kumar ', '', '9413229505', '', '9828942505', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5289, 8, 24, '', 53227, 'Gaurav Meena ', 'Mahender Singh ', '', '9414547109', '', '6350259669', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5290, 8, 24, '', 53548, 'Gopal Purohit', 'Rajendra Prasad Purohit', '', '9588036522', '', '9530299873', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5291, 8, 24, '', 53258, 'Gunjan Chhaparwal ', 'Govind Lal Chhaparwal ', '', '9414611178', '', '9413241812', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5292, 8, 24, '', 53282, 'Gunjan Khurana', 'Sanjay Khurana', '', '9896077724', '', '9354265522', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5293, 8, 24, '', 53103, 'Gunjan Wadhawa', 'Parmod Kumar ', '', '9468875976', '', '9460686976', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5294, 8, 24, '', 53109, 'Harish Dhawal ', 'Gajendra Dhawal ', '', '8947036258', '', '9269933063', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5295, 8, 24, '', 53248, 'Hemendra Manglav', 'Mala Ram Manglav', '', '9166206301', '', '7568246301', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5296, 8, 24, '', 53219, 'Hemlata Kumari', 'Mala Ram Manglav', '', '9166206301', '', '756824301', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5297, 8, 24, '', 53107, 'Kanchan Sarwa', 'B L Sarwa', '', '9414045722', '', '9116747745', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5298, 8, 24, '', 53266, 'Kanupriya ', 'Lakhi Ram ', '', '9728813679', '', '9416413679', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5299, 8, 24, '', 53236, 'Khushi Khatri', 'Mukesh Kumar Khatri', '', '9461377498', '', '6350390611', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5300, 8, 24, '', 53235, 'Krishna Panwar', 'Gourishankar Panwar', '', '9950630731', '', '7821939594', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5301, 8, 24, '', 53106, 'Kunal Rajpurohit ', 'Sharwan Singh Rajpurohit', '', '8955119135', '', '8562071126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5302, 8, 24, '', 53225, 'Lakshya Kaushik ', 'Balmukand Kaushik ', '', '9461050808', '', '6376484819', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5303, 8, 24, '', 53297, 'Lekha Surana', 'Rajendra Kumar Surana', '', '7820888000', '', '9352090232', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5304, 8, 24, '', 53212, 'Mahendra Choudhary', 'Vinod Kumar ', '', '8385871735', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5305, 8, 24, '', 53274, 'Manisha Karwasara', 'Gopal Ram Karwasara', '', '9001250536', '', '8112293329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5306, 8, 24, '', 53299, 'Manjeet Kajala', 'Satyapal Kajala', '', '8104728691', '', '9461079564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5307, 8, 24, '', 53256, 'Manmohan Singh', 'Binja Ram Panwar', '', '9414065671', '', '9929701254', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5308, 8, 24, '', 53285, 'Manvi Sharma ', 'Rohit Sharma', '', '9983342056', '', '9214457881', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5309, 8, 24, '', 53112, 'Meenakshi Meena', 'Sharwan Kumar Meena', '', '8897944182', '', '9653838922', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5310, 8, 24, '', 53261, 'Mitali Nangliya', 'Mahesh Nangliya', '', '9461023105', '', '9602396621', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5311, 8, 24, '', 53111, 'Mohd. Shaheen Panwar', 'Mohd. Rafique Panwar', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5312, 8, 24, '', 53272, 'Mohit Kaswan', 'Ramdayal Kaswan ', '', '9928886174', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5313, 8, 24, '', 53104, 'Monika Verma ', 'Roop Chand Balai ', '', '9414868968', '', '9166578868', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5314, 8, 24, '', 53237, 'Muskan Agarwal ', 'Arvind Kumar ', '', '7014095335', '', '8559833346', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5315, 8, 24, '', 53280, 'Muskan Chawla ', 'Mukesh Kumar Chawla', '', '9649763539', '', '7733908477', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5316, 8, 24, '', 53281, 'Muskan Yadav', 'Karni Singh Yadav', '', '9214405820', '', '9269935379', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5317, 8, 24, '', 53105, 'Nandini Songara', 'Roopchand Songara', '', '9460908480', '', '9252242535', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5318, 8, 24, '', 53300, 'Naresh Kumar ', 'Bhimsen', '', '9079706917', '', '9799272328', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5319, 8, 24, '', 53252, 'Navjot Singh', 'Gurmeet Singh ', '', '9413610201', '', '7568788411', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5320, 8, 24, '', 53243, 'Nikhil Saini', 'Jethmal Tak ', '', '9413166950', '', '9460513639', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5321, 8, 24, '', 53263, 'Nikita Buccha ', 'Jethmal Buccha ', '', '9660419919', '', '9950543967', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5322, 8, 24, '', 53255, 'Nipun Lohiya', 'Panna Lal Lohiya', '', '8963821604', '', '9460092863', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5323, 8, 24, '', 53286, 'Nisha Saharan ', 'Ashok Saharan', '', '9179330133', '', '8005790133', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5324, 8, 24, '', 53291, 'Nitesh Meena ', 'Ghisha Ram  Meena ', '', '8901475293', '', '9050813800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5325, 8, 24, '', 53287, 'Pavitra Sihag', 'Balwant Ram Sihag', '', '9414949173', '', '9413784031', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5326, 8, 24, '', 53270, 'Piyush', 'Daya Shankar Kasnia', '', '7597052423', '', '7229953199', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5327, 8, 24, '', 53240, 'Poonam Chand Godara', 'Bhagirath Godara', '', '9950814916', '', '6350346910', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5328, 8, 24, '', 53226, 'Poonam Choudhary', 'Rammurti ', '', '7009840345', '9988668499', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5329, 8, 24, '', 53257, 'Prashant', 'Banwari Lal ', '', '7412865003', '', '7014699115', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5330, 8, 24, '', 53206, 'Priya Bhati ', 'Mahenra Singh ', '', '8769860046', '', '8104575179', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5331, 8, 24, '', 53210, 'Priyanka Dudhwal', 'Subhash Dudhwal', '', '9783595766', '', '9119131850', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5332, 8, 24, '', 53273, 'Priyanshi Gahlot', 'Bajarang Lal Gahlot', '', '9829158751', '', '8005773162', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5333, 8, 24, '', 53278, 'Purvi Bhadu', 'Vinod Bhadu', '', '9461117067', '', '9461440379', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5334, 8, 24, '', 53292, 'Rajani Swami ', 'Kishan Das Swami ', '', '9414652862', '', '7597056739', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5335, 8, 24, '', 53233, 'Rashi Garg', 'Dharamveer Garg', '', '9461339916', '', '8764024827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5336, 8, 24, '', 53108, 'Rashmi Pandey', 'Bibhuti Pandey', '', '7023671111', '', '9571112911', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5337, 8, 24, '', 53244, 'Rishabh Soni', 'Sunil Soni', '', '7297955188', '', '9119345188', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5338, 8, 24, '', 53239, 'Rishi Raj Ratanu', 'Dev Raj Ratanu', '', '9783967706', '', '7073567083', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5339, 8, 24, '', 53262, 'Ritik Singhal', 'Tarachand Singhal', '', '9829840155', '', '9772232032', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5340, 8, 24, '', 53218, 'Ritika Choudhary', 'Mahesh Choudhary', '', '9571400888', '', '7791946339', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5341, 8, 24, '', 53242, 'Riya Singh ', 'Mk Singh ', '', '8741949437', '', '9928770944', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5342, 8, 24, '', 53259, 'Rohan Narang ', 'Raj Kumar Narang', '', '9252259845', '', '9950676174', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5343, 8, 24, '', 53289, 'Rohit Choudhary', 'Indraj Thator', '', '9653719425', '', '9460027134', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5344, 8, 24, '', 53221, 'Sapna Meena ', 'Dev Karan Meena ', '', '9875118272', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5345, 8, 24, '', 53279, 'Saroj Siyag', 'Ganesha Ram Siyag', '', '9588897115', '', '9928782855', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5346, 8, 24, '', 53202, 'Sarvagya Choudhary', 'Bhanwar Lal ', '', '7340061465', '', '9664272506', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5347, 8, 24, '', 53241, 'Shruti Gupta', 'Rakesh Kumar', '', '8104024275', '', '8764313543', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5348, 8, 24, '', 53296, 'Shubham Charan ', 'Kailash Dan Charan ', '', '9929670540', '', '9530107174', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5349, 8, 24, '', 53293, 'Shubham Soni ', 'Sunil Soni ', '', '9413311877', '', '9587862777', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5350, 8, 24, '', 53223, 'Siddhant ', 'Kulveer Singh ', '', '9414452138', '', '9079804375', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5351, 8, 24, '', 53260, 'Simran', 'Harjinder Singh', '', '7023854901', '', '0151-2250557', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5352, 8, 24, '', 53284, 'Simran Singh', 'Amarjeet Singh', '', '7014754231', '', '7973063224', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5353, 8, 24, '', 53288, 'Sonal Khatri ', 'Vineet Kumar Khatri ', '', '9414430420', '', '9460893696', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5354, 8, 24, '', 53119, 'Tamanna', 'Kewal Krishan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5355, 8, 24, '', 53298, 'Tania Dhart', 'Dharm Chand Dhart', '', '9950390844', '', '9413770697', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5356, 8, 24, '', 53265, 'Tanuja ', 'Rakesh Kumar ', '', '9414329334', '', '9413619834', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5357, 8, 24, '', 53600, 'Tarun Devra', 'Ashok Devra', '', '9252115631', '', '9214907852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5358, 8, 24, '', 52249, 'Varun Sharma ', 'Manohar  Sankar Sharma  ', '', '8005505812', '', '9950370678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5359, 8, 24, '', 53204, 'Vasudev Pareek ', 'Raj Kumar Pareek ', '', '9799691667', '', '8502981217', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5360, 8, 24, '', 53264, 'Vatsal Sanyal ', 'Ram Das Sanyal', '', '9784844900', '9461132650', '9414653170', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5361, 8, 24, '', 53102, 'Vinayak Vyas', 'Navneet Vyas', '', '9982500081', '', '7023967977', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5362, 8, 24, '', 53594, 'Vishvajeet Singh ', 'Narpat Singh ', '', '9251419465', '', '9529260324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5363, 8, 24, '', 53232, 'Yuri Bhargave', 'Subhash Chander', '', '9667233445', '', '8107596687', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5364, 8, 25, '', 53303, 'Aarti Gahlot', 'Sampat Lal Gahlot', '', '9414218176', '', '6375927589', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5365, 8, 25, '', 53304, 'Aayushi Rajpurohit', 'Abhay Singh Rajpurohit', '', '9414468800', '', '9413044688', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5366, 8, 25, '', 53301, 'Abhijeet Singh', 'Rajendra Singh', '', '9414407567', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5367, 8, 25, '', 53339, 'Abhishek Suthar', 'Vasudev Suthar', '', '9001024260', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5368, 8, 25, '', 53326, 'Ajay Kachhawa', 'Kishan Lal ', '', '9413769256', '', '9521752537', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5369, 8, 25, '', 53341, 'Ajay Kanwar Shekhawat', 'Surendra Singh Shekhawat', '', '9588231102', '', '9413466026', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5370, 8, 25, '', 53344, 'Anita Beniwal ', 'Ganga Vishan Beniwal ', '', '7014499703', '', '8504900917', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5371, 8, 25, '', 53917, 'Anita Godara ', 'Mahipal Godara', '', '9001858185', '', '8078676484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5372, 8, 25, '', 53425, 'Anjali Tard', 'Suresh Kumar ', '', '9929853262', '', '9413388740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5373, 8, 25, '', 53427, 'Ankita Suthar', 'Ram Krishan Suthar', '', '8769944899', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5374, 8, 25, '', 53337, 'Anuj Kumar ', 'Som Dutt', '', '9587542029', '9929292851', '9449608232', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5375, 8, 25, '', 53398, 'Anuradha Ojha', 'Rajkumar Ojha', '', '9413190282', '', '7297833845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5376, 8, 25, '', 55013, 'Ashok Bishnoi', 'Shiv Ratan Gahlot', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5377, 8, 25, '', 53444, 'Ashok Bishnoi', 'Jagdish Bishnoi', '', '9672740228', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5378, 8, 25, '', 53361, 'Ashok Kumar ', 'Om Prakash Choudhary', '', '9782741260', '', '8094120927', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5379, 8, 25, '', 53331, 'Bajrang Lal Godara', 'Imarta Ram Godara', '', '9983415658', '', '9602125969', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5380, 8, 25, '', 53395, 'Bharti Siddh', 'Murlidhar Siddh', '', '9928518094', '', '9680999195', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5381, 8, 25, '', 53328, 'Bhavna ', 'Surender Kumar ', '', '9983034914', '', '8094849914', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5382, 8, 25, '', 53366, 'Chirag Bajaj ', 'Manoj Kumar', '', '9413289700', '', '9461394450', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5383, 8, 25, '', 53334, 'Deepak Gahlot', 'Radheshyam Gahlot', '', '9461011866', '', '9665818333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5384, 8, 25, '', 53364, 'Deepak Sharma', 'Bhairudan Sharma', '', '9595595698', '', '8003965136', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5385, 8, 25, '', 53388, 'Deepak Verma ', 'Hanuman Prasad', '', '9828710097', '', '9680645454', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5386, 8, 25, '', 53412, 'Deepika Devra', 'Kishan Singh', '', '9982014331', '', '8440832991', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5387, 8, 25, '', 53417, 'Deepika Swami', 'Jai Prakash Swami', '', '9530400354', '', '8278692564', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5388, 8, 25, '', 53325, 'Devendra Soni ', 'Hira Lal Soni', '', '9214599116', '', '7023469116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5389, 8, 25, '', 53438, 'Dropati Choudhary', 'Subhash Chandra', '', '9414294663', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5390, 8, 25, '', 53319, 'Ekta Bishnoi', 'Bastiram Bishnoi', '', '9414487382', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5391, 8, 25, '', 53421, 'Ekta Parihar', 'Ashok Kumar Parihar', '', '9667616673', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5392, 8, 25, '', 53422, 'Garima Choudhary', 'Devki Nandan Choudhary', '', '9413345851', '', '7568028353', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5393, 8, 25, '', 53330, 'Giriraj Bithu', 'Chain Dan Bithu', '', '9602256145', '', '9602256145', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5394, 8, 25, '', 53378, 'Goutam Parakh', 'Tilok Chand Parakh', '', '9602625079', '', '9799332557', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5395, 8, 25, '', 53308, 'Gurveer Kour', 'Jaskaran Singh', '', '8209316757', '', '9783165199', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5396, 8, 25, '', 53350, 'Hansraj ', 'Shankar Lal ', '', '9672934755', '', '7023276279', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5397, 8, 25, '', 53313, 'Harveen Kaur', 'Raj Singh', '', '9982934317', '', '8107490020', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5398, 8, 25, '', 53418, 'Ishika Solanki', 'Manoj Kumar Solanki', '', '9261750186', '', '7615073100', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5399, 8, 25, '', 53402, 'Jai Prakash Suthar', 'Bhawar Lal Suthar', '', '9521401003', '', '8560870347', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5400, 8, 25, '', 53343, 'Jai Shree Swami', 'Birbal Ram Swami', '', '9413936874', '', '9414431207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5401, 8, 25, '', 53321, 'Jeetu Kachhawa', 'Gopi Kishan Kachhawa', '', '9521243258', '', '9460466102', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5402, 8, 25, '', 53368, 'Jeevan Barath', 'Murli Singh ', '', '9950047009', '', '7062582821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5403, 8, 25, '', 53387, 'Jetharam Godara', 'Shrawanram Godara', '', '9602035803', '', '9119365803', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5404, 8, 25, '', 53390, 'Jitendra Bishnoi', 'Jagdish Prasad Bishnoi', '', '9460035489', '', '9414766429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5405, 8, 25, '', 53407, 'Jyotsana Kiradoo', 'Bal Kishan ', '', '7597781293', '', '9460269631', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5406, 8, 25, '', 53311, 'Kailash Jat ', 'Mala Ram Jat', '', '8741926146', '', '8239363335', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5407, 8, 25, '', 53383, 'Kanchan Bishnoi', 'Bhanwarlal Bishnoi', '', '9460007311', '', '7792075123', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5408, 8, 25, '', 53333, 'Karuna Ratnoo', 'Ram Dan Ratnoo', '', '7230855192', '', '7229849268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5409, 8, 25, '', 53320, 'Kavita Bishnoi', 'Bastiram Bishnoi', '', '9414487382', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5410, 8, 25, '', 53342, 'Kavita Siyag', 'Subhash Siyag', '', '8107060645', '', '8107537670', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5411, 8, 25, '', 53431, 'Khinyaram Godara', 'Ramswaroop Godara', '', '7791085531', '', '7023114331', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5412, 8, 25, '', 53408, 'Khushbhu Dhawal ', 'Narendra Pal ', '', '7378185427', '', '8209852766', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5413, 8, 25, '', 53332, 'Kishan Gahlot', 'Shiv Lal Gahlot', '', '8619290201', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5414, 8, 25, '', 53426, 'Lokesh Sarswat', 'Ram Karan Sarswat', '', '9413168657', '', '8561811295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5415, 8, 25, '', 53391, 'Mahaveer Delu', 'Dhura Ram Delu', '', '9928725559', '', '8890984090', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5416, 8, 25, '', 53386, 'Mahima Choudhary', 'Mularam Choudhary', '', '8740045591', '', '7726850131', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5417, 8, 25, '', 53382, 'Mamta ', 'Jogendra ', '', '9001037481', '', '9549576964', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5418, 8, 25, '', 53396, 'Manish Chhimpa', 'Bhanwar Lal Chhimpa', '', '9413938038', '', '6376165279', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5419, 8, 25, '', 53415, 'Manoj Jangu', 'Mamraj', '', '9828344903', '', '9782731202', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5420, 8, 25, '', 53380, 'Manphool Choudhary', 'Bhanwar Lal Choudhary', '', '9610804194', '', '8003705898', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5421, 8, 25, '', 53314, 'Manpreet Kaur', 'Satveer Singh', '', '9983494717', '', '9521318072', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5422, 8, 25, '', 53428, 'Milan Bhati ', 'Shiv Ratan Bhati ', '', '8890221810', '', '9252816433', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5423, 8, 25, '', 53392, 'Mohit Sharma ', 'Birjmohan Sharma ', '', '6350124735', '', '9982309568', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5424, 8, 25, '', 53531, 'Monika Soni ', 'Madan Lal  Soni ', '', '9414763125', '', '7014299867', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5425, 8, 25, '', 53397, 'Neha Soni ', 'Suresh Kumar Soni ', '', '9414092266', '', '8875057476', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5426, 8, 25, '', 53324, 'Nihal Chand', 'Brij Mohan ', '', '9001014103', '', '8239680609', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5427, 8, 25, '', 53317, 'Nikita Kanwar', 'Bajrang Singh', '', '9549962111', '', '9549972111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5428, 8, 25, '', 53370, 'Nisha Barotiya ', 'Jagdish Prasad', '', '9983224130', '', '9414682680', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5429, 8, 25, '', 53384, 'Nisha Bishnoi ', 'Sunil Kumar ', '', '9413038965', '', '9928509928', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5430, 8, 25, '', 53367, 'Nitesh Sankhala', 'Omprakash Sankhla', '', '9887416628', '', '7665250251', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5431, 8, 25, '', 53401, 'Oman Modi', 'Ashok Kumar Modi', '', '7014013830', '', '9214923025', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5432, 8, 25, '', 53377, 'Pankaj Gedhar', 'Om Prakash Gedhar', '', '9413118399', '', '7073758787', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5433, 8, 25, '', 53349, 'Pawan Kumar ', 'Prabhu Ram ', '', '9950082771', '', '8890347924', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5434, 8, 25, '', 53374, 'Payal Nanda', 'Bhoj Raj Nanda', '', '7665473441', '', '9928262175', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5435, 8, 25, '', 53439, 'Piyush Potliya', 'Ramkuwar', '', '7425924291', '', '9636624744', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5436, 8, 25, '', 53302, 'Pooja Bishnoi', 'Narayan Ram ', '', '9929915002', '', '9887386298', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5437, 8, 25, '', 53400, 'Pooja Hatila ', 'Manak Chand ', '', '9252882187', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5438, 8, 25, '', 53318, 'Pratibha Chahar', 'Rajendra Singh', '', '9413547457', '', '7568935484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5439, 8, 25, '', 53352, 'Praveen Bishnoi', 'Ram Pratap Bishnoi', '', '9828976651', '', '9667281827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5440, 8, 25, '', 53413, 'Preeti Vyas', 'Ram Narayan Vyas', '', '9462502621', '', '8094899902', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5441, 8, 25, '', 53423, 'Prince Dhariwal ', 'Balar Singh', '', '9828939252', '', '9587178586', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5442, 8, 25, '', 53434, 'Priyanka Choudhary', 'Shri Krishan Singh ', '', '9413851024', '', '9414451024', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5443, 8, 25, '', 53394, 'Priyanka Modi ', 'Shiv Kumar Modi ', '', '9829008220', '', '7230088220', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5444, 8, 25, '', 53403, 'Priyanka Saran', 'Jetha Ram Saran', '', '9413013014', '', '9461123971', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5445, 8, 25, '', 53373, 'Rajani Charan', 'Kailash Dan Charan', '', '9829142522', '', '9414451082', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5446, 8, 25, '', 53432, 'Rajesh Kumar Saran', 'Girdhariram Saran', '', '9928463049', '', '9521518991', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5447, 8, 25, '', 53437, 'Rakesh Godara', 'Kishnaram Godara', '', '9460035239', '', '9587159852', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5448, 8, 25, '', 53433, 'Ram Lakhan Chetiwal ', 'Mahendra Kumar ', '', '9462699477', '', '9413217347', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5449, 8, 25, '', 53372, 'Ramkushla Delu', 'Ram Pratap Delu', '', '9461010968', '', '8952098482', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5450, 8, 25, '', 53440, 'Renu Gahlot', 'Pyare Lal Gahlot', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5451, 8, 25, '', 53329, 'Ridhampal Kaur', 'Gurpreet Singh', '', '9772453483', '', '9460687161', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5452, 8, 25, '', 53405, 'Rishika Saini ', 'Deepak Saini ', '', '6376441565', '', '9672224665', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5453, 8, 25, '', 53409, 'Ritu Chauhan', 'Rajendra Prasad Chauhan', '', '9529513679', '', '8963832941', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5454, 8, 25, '', 53436, 'Sachin Hatila', 'Omprakash Hatila', '', '7791809943', '', '9509664825', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5455, 8, 25, '', 53381, 'Salone Panwar', 'Mantu Singh Panwar', '', '9828150389', '', '9252895065', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5456, 8, 25, '', 53327, 'Sandeep Bishnoi', 'Rameshwar Lal ', '', '9461012623', '', '9460177298', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5457, 8, 25, '', 53363, 'Sanjay Siddh', 'Gopal Nath Siddh', '', '9782981176', '', '8769142228', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5458, 8, 25, '', 53345, 'Sanju Legha', 'Rajeeram Legha', '', '9413389210', '', '9602380845', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5459, 8, 25, '', 53404, 'Sanwarmal Choudhary', 'Ugraram Tard', '', '7219803497', '', '9928214027', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5460, 8, 25, '', 53357, 'Saraswati Bishnoi ', 'Bhuraram Bishnoi', '', '8209756993', '', '9414143668', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5461, 8, 25, '', 53356, 'Sarita Bishnoi', 'Bhuraram Bishnoi', '', '8209756993', '', '9672934088', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5462, 8, 25, '', 53399, 'Sarita Godara', 'Ramchandra Godara', '', '7877365456', '', '9468569497', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5463, 8, 25, '', 53362, 'Sawai Raj Upadhyay ', 'Shyam Sunder', '', '9829866013', '', '9829668814', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5464, 8, 25, '', 53355, 'Shahdev Bishnoi ', 'Narsingh Bishnoi', '', '9509848608', '', '7690950989', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5465, 8, 25, '', 53420, 'Shiv Kanwar', 'Madan Singh ', '', '9982496365', '', '7821965595', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5466, 8, 25, '', 53430, 'Shiv Lal Swami ', 'Mukhdass Swami', '', '9024933884', '', '9521839981', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5467, 8, 25, '', 53365, 'Shubham Kumar ', 'Daleep Kumar ', '', '9587400099', '', '9414580877', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5468, 8, 25, '', 53369, 'Simran ', 'Mahendra Kumar ', '', '9460626538', '', '9460626438', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5469, 8, 25, '', 53371, 'Simran Kallar', 'Ramzan Hussain ', '', '9252944272', '', '7691847784', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5470, 8, 25, '', 53359, 'Sneha Bishnoi', 'Bhawar Lal Bishnoi', '', '9414429334', '', '9772791729', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5471, 8, 25, '', 54017, 'Someshwer Swami ', 'Mahesh Kumar Swami ', '', '9828844470', '', '8107710570', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5472, 8, 25, '', 53385, 'Soniya', 'Mula Ram ', '', '9610661926', '', '9602987320', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5473, 8, 25, '', 53389, 'Subhash Bishnoi', 'Jagdish Prasad Bishnoi', '', '9460035489', '', '9414766429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5474, 8, 25, '', 53429, 'Suman ', 'Krishan Ram ', '', '7410876800', '', '8094475466', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5475, 8, 25, '', 53817, 'Suman Jangu', 'Hanuman Prasad', '', '9783655000', '', '9414505271', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5476, 8, 25, '', 53414, 'Sumedha ', 'Jas Ram ', '', '7023713897', '', '9462023521', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5477, 8, 25, '', 53354, 'Sunil Bhadu', 'Rameshwar Lal Bhadu', '', '9166117903', '', '7610864931', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5478, 8, 25, '', 53310, 'Sunil Khator', 'Dhanna Ram Khator', '', '9636627942', '', '8442077902', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5479, 8, 25, '', 53323, 'Sunil Royal ', 'Gordhan Ram ', '', '9660306407', '', '8239680609', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5480, 8, 25, '', 53410, 'Surendra Bishnoi', 'Ramswaroop Bishnoi', '', '8209755317', '', '9828536740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5481, 8, 25, '', 53340, 'Tamanna', 'Mohhamd Ali', '', '8079068355', '', '8387888644', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5482, 8, 25, '', 54046, 'Umesh Bhamboo', 'Vikram Singh', '', '7976573240', '', '9828804824', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5483, 8, 25, '', 53315, 'Vansha Soni', 'Ashok Kr. Soni', '', '8209537694', '', '9214964606', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5484, 8, 25, '', 53316, 'Vijay Laxmi Bishnoi', 'Shiv Lal Bishnoi', '', '9928378601', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5485, 8, 25, '', 53411, 'Vikash Bishnoi', 'Mohanram', '', '9782731161', '', '9530346509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5486, 8, 25, '', 53338, 'Vikash Jakhar', 'Sudesh Kumar', '', '9672281000', '', '9414515509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5487, 8, 25, '', 53346, 'Virendra Kumar Pandey', 'Devendra Kumar Pandey', '', '7229996089', '', '8769471366', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5488, 8, 25, '', 53441, 'Vishnu Priya', 'Hanuman Ram', '', '9413985562', '', '9079947491', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5489, 8, 25, '', 53322, 'Yuvraj Aseri', 'Amar Singh Aseri', '', '9462330214', '', '9772797268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5490, 8, 26, '', 53851, 'Abhishek Vishnoi', 'Dharmpal Bishnoi', '', '9928425128', '', '7023635401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5491, 8, 26, '', 53889, 'Ajay Damachya', 'Shiv Charan Meena ', '', '9772561501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5492, 8, 26, '', 53847, 'Ajay Kumar ', 'Sugriv ', '', '9672439201', '', '7665370575', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5493, 8, 26, '', 53876, 'Akash Teji ', 'Bablu Teji ', '', '9950439516', '', '9950439516', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5494, 8, 26, '', 53882, 'Amit Kumar ', 'Subhash Chander', '', '9413433184', '', '9950298238', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5495, 8, 26, '', 53916, 'Amit Swami ', 'Bajrang Das Swami ', '', '9119301022', '', '7414074775', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5496, 8, 26, '', 53933, 'Amuliya Choudhary', 'Ramesh Kumar Choudhary', '', '9829101857', '', '0151-2209492', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5497, 8, 26, '', 53930, 'Anita Khichar', 'Tarachand Khichar', '', '9772827229', '', '8769306929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5498, 8, 26, '', 53898, 'Anjali Bishnoi ', 'Pukhraj Bishnoi', '', '8107023385', '', '9950432006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5499, 8, 26, '', 53862, 'Anju Meghwal', 'Jetha Ram Meghwal', '', '9602675040', '', '8209953436', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5500, 8, 26, '', 53881, 'Anju Pachariya ', 'Om Prakash Sharma ', '', '9413939259', '', '7340483696', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5501, 8, 26, '', 53818, 'Anshul Choudhary', 'Prabhudayal Jat', '', '9982717200', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5502, 8, 26, '', 53806, 'Anusuiya Suthar', 'Shankar Lal Suthar', '', '9672462976', '', '9549034804', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5503, 8, 26, '', 53919, 'Arshad Chhimpa', 'Imran Chhimpa', '', '9460875786', '', '9414395040', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5504, 8, 26, '', 53838, 'Ashok Jalap ', 'Kailash Jalap', '', '8561000804', '', '9261510801', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5505, 8, 26, '', 53864, 'Ashwini Bishnoi', 'Om Prakash Bishnoi ', '', '8432202484', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5506, 8, 26, '', 53873, 'Badal Nayak', 'Gangaram Nayak', '', '7737201052', '', '9680449696', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5507, 8, 26, '', 53895, 'Basanti Jakhar', 'Jetharam Jakhar', '', '9636750408', '', '9414736203', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5508, 8, 26, '', 53897, 'Bhagawati Dilwal ', 'Bansi Lal Dilwal ', '', '9875204207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5509, 8, 26, '', 53938, 'Bhagawati Siddh', 'Jay Kumar Siddh', '', '8769330717', '', '7665295470', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5510, 8, 26, '', 53925, 'Chanchal Sankhala ', 'Shanti Lal Sankhala', '', '9414603952', '', '8875065577', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5511, 8, 26, '', 53875, 'Chandra Kala Bishnoi', 'Sanwar Lal Bishnoi ', '', '7568950440', '', '8824480429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5512, 8, 26, '', 53834, 'Chetan Ram Panchar', 'Dungar Ram ', '', '9375424985', '', '9166921894', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5513, 8, 26, '', 53812, 'Chitra Ojha ', 'Anil Kumar Ojha', '', '9829142226', '', '6375936486', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5514, 8, 26, '', 53859, 'Deepender Kumar ', 'Roshan Lal ', '', '9982103726', '', '9460217888', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5515, 8, 26, '', 53856, 'Devilal Siyag', 'Kana Ram Siyag', '', '9928181145', '', '9649064936', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5516, 8, 26, '', 53832, 'Dhanraj Kumawat', 'Kishan Lal ', '', '9413388055', '', '9636620835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5517, 8, 26, '', 53940, 'Dimple Kiradoo', 'Krishan Kumar Kiradoo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5518, 8, 26, '', 53843, 'Divya Bishnoi ', 'Vijay Pal ', '', '9610441745', '', '9983630904', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5519, 8, 26, '', 53872, 'Divya Jindal ', 'Trilok Chand ', '', '8058185415', '', '9887584122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5520, 8, 26, '', 54949, 'Divya Solanki', 'Lalchand Solanki', '', '9549049791', '', '9166689487', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5521, 8, 26, '', 53878, 'Diwaker Khatri', 'Asha Ram Khatri', '', '9413279225', '', '9636225514', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5522, 8, 26, '', 53885, 'Gagan Kumar ', 'Dalip Kumar ', '', '8696860536', '', '8290799094', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5523, 8, 26, '', 53921, 'Gaytri Kanwar', 'Chain Pal Singh ', '', '9649333563', '', '9460808163', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5524, 8, 26, '', 53831, 'Gopal Chouhan', 'Vimal Kumar Chouhan', '', '9829666532', '', '7014343030', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5525, 8, 26, '', 53922, 'Gursheen Kaur', 'Harkewal Singh', '', '9828421722', '', '9828661942', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5526, 8, 26, '', 53848, 'Hansraj Indaliya', 'Ram Narayan Indaliya', '', '9461473012', '', '8209697970', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5527, 8, 26, '', 53810, 'Hanuman Prajapat', 'Laxmi Narayan Prajapat', '', '8890996285', '', '9782010124', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5528, 8, 26, '', 53854, 'Harshita Khare', 'Om Prakash Khare', '', '9664164417', '', '9660210021', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5529, 8, 26, '', 53927, 'Harshita Pareek ', 'Mukesh Pareek ', '', '9875132174', '', '7976988010', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5530, 8, 26, '', 53852, 'Hemant Solanki ', 'Madan Lal Solanki', '', '8094393653', '', '9509141418', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5531, 8, 26, '', 53926, 'Jaydayal Swami', 'Madan Das', '', '7014735099', '', '7023604567', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5532, 8, 26, '', 53929, 'Jayshree Rankawat', 'Madan Lal Sadh', '', '9929661065', '', '7220048993', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5533, 8, 26, '', 53840, 'Jyoti Bhadu', 'Om Prakash ', '', '9461125979', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5534, 8, 26, '', 53805, 'Jyoti Bishnoi', 'Budh Ram Bishnoi', '', '9414001218', '', '9468715111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5535, 8, 26, '', 53946, 'Jyoti Suthar', 'Ganesh Suthar', '', '8094684517', '', '9680551561', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5536, 8, 26, '', 53888, 'Kanika Sharma', 'Jagatpal Sharma', '', '9414636352', '', '9462209552', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5537, 8, 26, '', 53809, 'Kavita Bishnoi ', 'Ram Swaroop ', '', '9828325065', '', '6350011634', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5538, 8, 26, '', 53816, 'Kesar Nawal', 'Tikam Chand Nawal', '', '9636362461', '', '6375920571', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5539, 8, 26, '', 53911, 'Khahaiya Lal Prajapat', 'Ram Lal Prajapat', '', '9772548198', '', '9782431295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5540, 8, 26, '', 53947, 'Khushbu Charan ', 'Narayan Singh ', '', '8949589785', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5541, 8, 26, '', 53866, 'Kiran Meghwal', 'Jitendra Meghwal', '', '9983097016', '', '9636457774', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5542, 8, 26, '', 53833, 'Komal Bishnoi ', 'Om Prakash ', '', '9928719908', '', '9602897916', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5543, 8, 26, '', 53891, 'Komal Khichar', 'Harchand Khichar', '', '9602669268', '', '9982086673', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5544, 8, 26, '', 53868, 'Krishan Mohan ', 'Virendra Narayan', '', '9784622076', '', '7891343526', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5545, 8, 26, '', 53849, 'Kusum Lata Suthar', 'Vashu Dev Suthar', '', '9001024260', '', '9660813178', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5546, 8, 26, '', 53935, 'Lal Chand Bhambhu', 'Raja Ram Bhambhu', '', '7665346048', '', '8696591715', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5547, 8, 26, '', 53867, 'Lalchand Mali ', 'Ram Lal Mali ', '', '9829832324', '', '9694151631', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5548, 8, 26, '', 53880, 'Leela Godara', 'Shree Ram Godara', '', '9636478236', '', '8003449401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5549, 8, 26, '', 53928, 'Lokendar Panwar', 'Ashok Kumar Panwar', '', '9001544868', '', '8107157509', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5550, 8, 26, '', 53887, 'Madhavi Vyas ', 'Kishan Kumar Vyas', '', '9001233636', '', '9828189174', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5551, 8, 26, '', 53820, 'Mahesh Godara', 'Mahi Ram Godara', '', '9829162781', '', '8890820781', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5552, 8, 26, '', 53892, 'Mahima Upadhyay ', 'Shiv Raj Upadhyay ', '', '7665720355', '', '9587643252', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5553, 8, 26, '', 53869, 'Manish Lakhara', 'Hari Ram Lakhara', '', '9869695985', '', '9460593212', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5554, 8, 26, '', 53918, 'Manisha Barasa', 'Gajendra Barasa', '', '8875366952', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5555, 8, 26, '', 53920, 'Manisha Choudhary', 'Babu Lal Siyag', '', '9414451024', '', '9413851024', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5556, 8, 26, '', 53890, 'Manisha Delu ', 'Ramswroop Delu ', '', '7568774175', '', '6350360549', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5557, 8, 26, '', 53850, 'Manisha Kasniyan ', 'Bhinyaram Kasniyan', '', '8875533912', '', '9587824190', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5558, 8, 26, '', 53857, 'Manoj Kanwar', 'Raghuver Singh ', '', '9783857389', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5559, 8, 26, '', 53827, 'Manoj Limba', 'Lalchand Limba', '', '9829648816', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5560, 8, 26, '', 53883, 'Mohak Chandel', 'Liloo Chandel ', '', '9983281832', '', '8504048973', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5561, 8, 26, '', 53825, 'Monika Soni', 'Kishan Lal Soni', '', '9252177531', '', '9414604332', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5562, 8, 26, '', 53900, 'Mukh Ram ', 'Sahi Ram ', '', '8696816931', '', '9587163385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5563, 8, 26, '', 53939, 'Munni Kumari ', 'Raju Ram ', '', '9982782835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5564, 8, 26, '', 53853, 'Muskan Bano', 'Insaf Ali ', '', '9929393271', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5565, 8, 26, '', 53863, 'Neha Rajpurohit ', 'Bhagwat Singh ', '', '9828121707', '', '9461213707', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5566, 8, 26, '', 53904, 'Nirma Bana ', 'Parmanand Bana', '', '9413074025', '', '9783341096', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5567, 8, 26, '', 53879, 'Nirmal Sarswat', 'Shyam Sunder', '', '9351505302', '', '9602433216', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5568, 8, 26, '', 53815, 'Nisha Joshi', 'Mahesh Joshi', '', '9785583047', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5569, 8, 26, '', 53860, 'Pankaj Kumar ', 'Raj Kumar ', '', '9587659514', '', '9887952737', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5570, 8, 26, '', 53808, 'Parbat Singh ', 'Tag Singh ', '', '9649158302', '', '9799593303', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5571, 8, 26, '', 53941, 'Parul Bishnoi', 'Sahabram Bishnoi ', '', '9468942232', '', '9414416824', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5572, 8, 26, '', 53801, 'Payal Sharma ', 'Murlidhar Sharma', '', '9413816181', '', '9521085430', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5573, 8, 26, '', 53909, 'Pinky Inkhiya ', 'Birama Ram ', '', '8094426528', '', '9649457129', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5574, 8, 26, '', 53807, 'Pooja Bhatia', 'Gopiram', '', '7340635801', '', '7297070027', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5575, 8, 26, '', 53931, 'Pooja Godara', 'Nirmal Godara', '', '9413020571', '8058467399', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5576, 8, 26, '', 53822, 'Pooja Suthar', 'Ramavatar Suthar', '', '9649773252', '', '9928190385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5577, 8, 26, '', 53830, 'Prabhu Ram Godara ', 'Bhanwar Ram Godara', '', '9414425922', '', '7231950122', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5578, 8, 26, '', 53813, 'Pragya Mishra', 'Krishan Murari Mishra', '', '9636475804', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5579, 8, 26, '', 53835, 'Prahalad Gedhar', 'Mula Ram Gedhar', '', '9829935242', '', '8290602380', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5580, 8, 26, '', 53942, 'Priya Choudhary', 'Mohan Lal ', '', '7062576010', '', '9784819625', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5581, 8, 26, '', 53896, 'Priyanka ', 'Parsaram Jat', '', '9828092982', '', '8209497133', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5582, 8, 26, '', 53821, 'Priyanka Bariya', 'Manak Chand Bariya', '', '8387924872', '', '7615900432', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5583, 8, 26, '', 53858, 'Priyanka Meena ', 'Ramswroop Meena ', '', '9982436736', '', '9828493550', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5584, 8, 26, '', 53901, 'Priyanka Sahu', 'Kheta Ram Sahu', '', '9529494749', '', '9784240817', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5585, 8, 26, '', 53855, 'Radhika Sharma ', 'Mukand Lal Sharma ', '', '9460780091', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5586, 8, 26, '', 53902, 'Rahul Biswas', 'Uttam Kumar ', '', '9982185777', '', '8005505796', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5587, 8, 26, '', 53846, 'Raj Kumari Swami ', 'Radheshyam Swami ', '', '9166531351', '', '8003269257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5588, 8, 26, '', 53903, 'Raja Ram ', 'Kalu Ram ', '', '8696816931', '', '9587163385', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5589, 8, 26, '', 54034, 'Rajan Sharma ', 'Lalit Kumar ', '', '7619761818', '', '7737543236', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5590, 8, 26, '', 53836, 'Rakesh Jyani ', 'Heera Ram Jyani ', '', '9784124861', '', '9509112994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5591, 8, 26, '', 53416, 'Rakesh Kumawat', 'Bhanwar Lal Kumawat', '', '9950320541', '', '9680309618', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5592, 8, 26, '', 53802, 'Ravi ', 'Vijay Kumar ', '', '9950544159', '', '8955176745', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5593, 8, 26, '', 53913, 'Ravi Bishnoi ', 'Inder Mohan ', '', '9461075562', '', '9829842074', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5594, 8, 26, '', 53811, 'Ravina Bishnoi', 'Rameshwar Lal Bishnoi', '', '9929722173', '', '9784537329', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5595, 8, 26, '', 53944, 'Richa Panchariya ', 'Ramesh Panchariya ', '', '7300211609', '9001137475', '9549292406', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5596, 8, 26, '', 53899, 'Ritika Lakhara', 'Vijay Kumar ', '', '9413106446', '', '9782675024', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5597, 8, 26, '', 53943, 'Ritu Jain ', 'Vinod Kumar Jain ', '', '8209492302', '', '7790885315', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5598, 8, 26, '', 53828, 'Rohit Saraswat', 'Sohan Lal Saraswat', '', '9829625231', '', '8820752598', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5599, 8, 26, '', 53877, 'Rupam Raj Daiya ', 'Prayag Chand Daiya ', '', '9887752787', '', '7976269226', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5600, 8, 26, '', 53845, 'Sahin Dudi ', 'Gazi Khan Dudi ', '', '9828163104', '', '7230082104', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5601, 8, 26, '', 53824, 'Sahiram ', 'Bhaguram ', '', '9772706652', '', '9610070822', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5602, 8, 26, '', 53948, 'Sangita Ojha', 'Kailash Ojha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5603, 8, 26, '', 53814, 'Sanjana Godara', 'Prithvi Raj Godara', '', '9414604506', '', '9462477574', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5604, 8, 26, '', 53908, 'Sanju Dharniya ', 'Brijlal Dharniya ', '', '9983040325', '', '9783878512', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5605, 8, 26, '', 53907, 'Sanju Dharniya ', 'Nihal Chand Dharniya ', '', '9680925083', '', '9521372829', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5606, 8, 26, '', 54016, 'Sanju Maru', 'Jai Kishan Maru ', '', '9414242997', '', '8209349394', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5607, 8, 26, '', 53865, 'Sarina ', 'Girdhari Lal ', '', '9772801000', '', '9799729450', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5608, 8, 26, '', 53932, 'Shahedil Chhimpa', 'M Farook Chhimpa', '', '9829972573', '', '8769462573', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5609, 8, 26, '', 53910, 'Sikma Jyani ', 'Imilal Jyani ', '', '9829328085', '', '7665147373', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5610, 8, 26, '', 53923, 'Sneha Gaur', 'Jagdish Prasad Gaur', '', '9929892930', '', '8107776360', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5611, 8, 26, '', 53842, 'Sohan Sirohi', 'Mool Chand Sirohi', '', '7297915621', '', '7611017480', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', '', '', '', '', '', '', 'include/student_propic/min-15341422781234.png', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5612, 8, 26, '', 53803, 'Soniya Devra', 'Sanjay Kumar ', '', '9928629478', '', '9461579600', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5613, 8, 26, '', 53829, 'Sudha Rathore', 'Raviender Singh Rathore', '', '9460651282', '', '8209768508', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5614, 8, 26, '', 53837, 'Sulochana Sharma', 'Devkishan Sharma', '', '9799084471', '', '9116570681', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5615, 8, 26, '', 53945, 'Sulochana Siddh', 'Mamraj Siddh', '', '8952090436', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5616, 8, 26, '', 53839, 'Suman Jalap ', 'Kishan Lal Jalap ', '', '9983843925', '', '9829938340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5617, 8, 26, '', 53861, 'Suman Siddh', 'Mohan Lal Siddh', '', '9929576608', '', '6350427421', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5618, 8, 26, '', 53937, 'Swati Chouhan ', 'Harish Chouhan ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5619, 8, 26, '', 53893, 'Tarun Bharati ', 'Bijender Singh ', '', '8239903047', '', '9530260340', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5620, 8, 26, '', 53886, 'Tarun Chaturvedi', 'Radhakishan Chaturvedi', '', '9587202251', '', '9829871718', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5621, 8, 26, '', 53871, 'Udayraj Ratnoo ', 'Bhawari Shanker', '', '9828349345', '', '9828349326', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5622, 8, 26, '', 53936, 'Urmila Tak', 'Rajkumar Tak', '', '8290158358', '', '9829650127', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5623, 8, 26, '', 53934, 'Vinay Bajaj ', 'Damodar Bajaj ', '', '9024185632', '', '9828305257', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5624, 8, 26, '', 53826, 'Vishnu Kumar Gahlot', 'Shyam Lal Gahlot', '', '9214904416', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5625, 8, 26, '', 53874, 'Yogesh Kachhawa', 'Jagdish Kachhawa', '', '9214485881', '', '7023759767', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5626, 8, 27, '', 53511, 'Abhay Ranga', 'Ajay Ranga', '', '7665667153', '', '7296901532', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5627, 8, 27, '', 53582, 'Abhinav Kataria', 'Sanjeev Katria', '', '9414319000', '', '1503224000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5628, 8, 27, '', 53551, 'Abhishek Bishnoi', 'Mangi Lal Bishnoi', '', '9950002896', '', '7610959311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5629, 8, 27, '', 53545, 'Abhishek Dharniya', 'Banshi Lal Bishnoi', '', '8003619903', '', '9982122510', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5630, 8, 27, '', 53615, 'Abhishek Suthar', 'Dulichand Suthar', '', '9413614968', '', '7734824968', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 17, 0, 0, '0000-00-00', '2018-08-16', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5631, 8, 27, '', 53641, 'Akshaya Murali', 'Muraleedharan', '', '9412917668', '', '9829573908', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5632, 8, 27, '', 53523, 'Amandeep Singh Saini', 'Vikas Saini', '', '9414381628', '9414305820', '7665505073', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5633, 8, 27, '', 53631, 'Ambika Mohta', 'Shiv Ratan Mohta ', '', '9079699637', '', '9841012515', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5634, 8, 27, '', 53564, 'Amit Meherda', 'Harikishan Meherda', '', '9024474270', '', '9828399344', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5635, 8, 27, '', 53528, 'Aniket Yadav', 'Ramesh Yadav', '', '9460504942', '', '9414603681', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5636, 8, 27, '', 53570, 'Anil Choudhary ', 'Hari Ram Choudhary', '', '9829834622', '', '9166318945', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5637, 8, 27, '', 53610, 'Anita', 'Prakash Singh', '', '7725956521', '', '6375516678', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5638, 8, 27, '', 53618, 'Ankit Laikara', 'Nand Kishore', '', '9929506367', '', '9636798844', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5639, 8, 27, '', 53521, 'Ankit Yadav', 'Subhash ', '', '9887832191', '', '9646378410', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5640, 8, 27, '', 53512, 'Ankita Sain', 'Shrisupal Sain', '', '9414547442', '', '9414479155', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5641, 8, 27, '', 53587, 'Anmol Kumar Vyas', 'Manoj Kumar Vyas', '', '9460502538', '', '9664273434', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5642, 8, 27, '', 53584, 'Anshika Lunu', 'Rooparam Lunu', '', '9461245116', '', '9521265116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5643, 8, 27, '', 53558, 'Avantika', 'Jaiprakash', '', '9460100831', '', '9829903885', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5644, 8, 27, '', 53506, 'Ayan Molani', 'Rafique Molani', '', '9214823134', '', '7976034524', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5645, 8, 27, '', 53508, 'Ayasha Bano', 'Anwar Mohammad', '', '9414967757', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5646, 8, 27, '', 53634, 'Bhavika Gahlot ', 'Kishan Lal Gahlot ', '', '8387976296', '', '9588070324', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5647, 8, 27, '', 53639, 'Bhawna Purohit', 'Ashutosh Purohit', '', '9982881315', '', '9928112458', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5648, 8, 27, '', 53522, 'Bhumika Panwar', 'Multan Ram Panwar', '', '9829359192', '', '7792965230', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5649, 8, 27, '', 53525, 'Chamanpreet Kaur', 'Harmik Singh', '', '9166200579', '', '8949390567', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5650, 8, 27, '', 53509, 'Chhanvi Bala', 'Rajendra Kumar ', '', '9416334757', '', '9992721416', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5651, 8, 27, '', 53642, 'Damini Kanojiya ', 'Ratan Kumar ', '', '7665662238', '', '6376928808', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5652, 8, 27, '', 53543, 'Deepa Tiwari', 'Kailash Tiwari', '', '9435259166', '', '9460131820', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5653, 8, 27, '', 53588, 'Dhruv Sharma ', 'Ranveer Sharma', '', '9414305801', '', '9660412999', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5654, 8, 27, '', 53532, 'Dilkhush Saini', 'Sanwan Mal Mali', '', '7230867505', '', '9116576395', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5655, 8, 27, '', 53616, 'Divya Sharma ', 'Ramesh Kumar Sharma ', '', '9414139682', '', '9414139682', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5656, 8, 27, '', 53504, 'Divyanshi Kukkar', 'Neeraj Kumar ', '', '9413323732', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5657, 8, 27, '', 53524, 'Diya Ratnoo', 'Sawai Singh Ratnoo', '', '9829947189', '', '9928449881', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5658, 8, 27, '', 53593, 'Faizan Ali Chouhan ', 'Jameel Ahmed', '', '9214995148', '', '8233522821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5659, 8, 27, '', 53619, 'Gargi Pasi ', 'Mahesh Kumar Pasi ', '', '9413265516', '', '9414604942', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5660, 8, 27, '', 53580, 'Gaurav', 'Hetram', '', '9571255289', '', '9413278834', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5661, 8, 27, '', 53535, 'Goutam Beniwal ', 'Rakesh Beniwal', '', '9950082600', '', '9828952883', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5662, 8, 27, '', 53209, 'Gul Jaiswal', 'Rahul Jaiswal', '', '9414265081', '', '9460905153', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5663, 8, 27, '', 53649, 'Gunjan Joshi', 'Ramesh Kumar', '', '8769001282', '', '8386886873', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5664, 8, 27, '', 53569, 'Gunjan Soni', 'Brijmohan Soni', '', '8949520799', '', '7073039677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5665, 8, 27, '', 53539, 'Harmandeep Kaur', 'Jasvinder Singh', '', '9828825059', '', '9983410003', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5666, 8, 27, '', 53577, 'Heena Yadav', 'Shyam Sunder Yadav', '', '8058519961', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5667, 8, 27, '', 53574, 'Himanshu Purohit ', 'Anil Kumar Purohit', '', '9414425981', '', '9413769309', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5668, 8, 27, '', 53589, 'Hitesh Kumar ', 'Shankar Lal ', '', '8005929383', '', '9928966642', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5669, 8, 27, '', 53541, 'Jyoti ', 'Amichand', '', '9680831001', '', '9549069920', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5670, 8, 27, '', 53230, 'Jyoti Beniwal ', 'Hanuman Beniwal ', '', '9251531653', '', '9413106416', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5671, 8, 27, '', 53602, 'Jyoti Sharma', 'Surendra Sharma', '', '9950991565', '', '9950045750', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5672, 8, 27, '', 53234, 'Kailash Chhaba', 'Haburam Chhaba', '', '9783637245', '', '7230814758', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5673, 8, 27, '', 53643, 'Kajal', 'Satish Kumar', '', '9414223016', '', '9672723016', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5674, 8, 27, '', 53635, 'Kanika Gupta', 'Rajesh Gupta', '', '9214040192', '', '9664252249', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5675, 8, 27, '', 53579, 'Karuna Siwach', 'Rajesh Singh ', '', '8385934828', '', '8384910075', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5676, 8, 27, '', 53640, 'Kavita Siyag', 'Shankar Lal Siyag', '', '9414138368', '', '8741865356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5677, 8, 27, '', 53547, 'Khushal Dass Khatri', 'Narayan Dass Khatri', '', '7627094702', '', '7219933735', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5678, 8, 27, '', 53637, 'Khushboo Godara', 'Rupa Ram Godara', '', '9610644844', '', '9413013193', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5679, 8, 27, '', 53573, 'Khushboo Meherda', 'Dharma Ram Meherda', '', '9461011182', '', '9460267124', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5680, 8, 27, '', 53596, 'Khushboo Nagal ', 'Rajendra Kumar Nagal ', '', '9414452755', '', '8619170054', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5681, 8, 27, '', 53562, 'Khushboo Rasgania', 'Prema Lal Raigar', '', '9784478677', '', '9784320004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5682, 8, 27, '', 53507, 'Khushi ', 'Manoj Kumar ', '', '9602245046', '', '7297845044', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5683, 8, 27, '', 53571, 'Kiran Kilania', 'Banwari Lal ', '', '9460361373', '', '8560978992', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5684, 8, 27, '', 53597, 'Komal Agarwal ', 'Raj Kumar Agarwal', '', '8290663585', '', '9351987800', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5685, 8, 27, '', 53211, 'Komal Joshi', 'Ashwini Joshi', '', '9928033001', '', '9414758322', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5686, 8, 27, '', 53599, 'Lipakshi Soni', 'Madan Soni', '', '9982708750', '', '9521728929', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5687, 8, 27, '', 53215, 'Mahadev Gahlot', 'Shiv Kumar Gahlot', '', '8107173175', '', '9602024950', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5688, 8, 27, '', 53537, 'Mahesh Yadav', 'Kishan Singh Yadav', '', '9461472935', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5689, 8, 27, '', 53620, 'Mamta Kumari ', 'Poora Ram ', '', '8239734881', '', '9588208325', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5690, 8, 27, '', 53626, 'Manan Daga', 'Deepak Daga', '', '9784044895', '', '9784997888', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5691, 8, 27, '', 53633, 'Manish Meena', 'Harji Ram Meena ', '', '9799741864', '', '8302836606', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5692, 8, 27, '', 53519, 'Mayank Gaur', 'Arvind Kumar Gaur', '', '9928762558', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5693, 8, 27, '', 53622, 'Megha Sharma ', 'Dwarka Prasad', '', '9667880201', '9461167730', '9602185551', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5694, 8, 27, '', 53516, 'Minal Modi', 'Pawan Modi', '', '9461880184', '9413316667', '9461880184', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5695, 8, 27, '', 53534, 'Mohit Beniwal ', 'Jai Prakash Beniwal ', '', '9460270633', '', '8104444616', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5696, 8, 27, '', 53527, 'Mohit Solanki', 'Bharu Dan Solanki', '', '9460619265', '', '9414958821', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5697, 8, 27, '', 53598, 'Monika Choudhary', 'Shrawan Kumar Choudhary', '', '9783268000', '', '8209872726', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5698, 8, 27, '', 53627, 'Monika Saharan ', 'Dalip Saharan ', '', '6375374813', '', '9782831649', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5699, 8, 27, '', 53557, 'Monika Saran', 'Manga Ram Saran', '', '9950214951', '', '9414604151', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5700, 8, 27, '', 53526, 'Muskan Bhattar', 'Sunil Bhatter', '', '9460227162', '', '7597239815', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5701, 8, 27, '', 53554, 'Naveen Kumar Gahlot', 'Jagdish Kumar Gahlot', '', '9928840764', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5702, 8, 27, '', 53623, 'Neeharika Alok Sankala', 'Alok Sankala', '', '9413822636', '', '9468940187', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5703, 8, 27, '', 53590, 'Neha Choudhary', 'Charan Singh ', '', '9460174239', '', '9460109639', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5704, 8, 27, '', 53621, 'Nirmal Jaipal ', 'Som Prakash Jaipal ', '', '9413726116', '', '8561001933', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5705, 8, 27, '', 53644, 'Nisha Choudhary', 'Balchand Choudhary', '', '9166782150', '', '7793805268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5706, 8, 27, '', 53636, 'Nitin Bishnoi', 'Shiv Kumar Bishnoi ', '', '9414430086', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5707, 8, 27, '', 53568, 'Palak Bishnoi', 'Mahaveer Prasad', '', '9462203100', '', '7357463655', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5708, 8, 27, '', 53611, 'Pooja  ', 'Prakash Singh', '', '7725956521', '', '9413425563', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5709, 8, 27, '', 53502, 'Pooja Tanwar ', 'Radhyshyam ', '', '9829537829', '', '6375424474', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5710, 8, 27, '', 53601, 'Preeti Mehra', 'Mahesh Mehra', '', '9636690266', '', '9599038293', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5711, 8, 27, '', 53517, 'Prem Sukhi ', 'Shiv Karan ', '', '9460271029', '', '7877785245', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5712, 8, 27, '', 53538, 'Priyanka Devra ', 'Suresh Kumar Devra ', '', '9782556600', '', '9314383878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5713, 8, 27, '', 53208, 'Priyanka Suthar', 'Pawan Suthar', '', '9413013612', '', '9468602685', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5714, 8, 27, '', 53625, 'Purvashree Soni ', 'Deepak Soni ', '', '9414425959', '', '9413684236', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5715, 8, 27, '', 53645, 'Pushpa Manda', 'Gangajal Manda', '', '9829276723', '', '9001165405', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5716, 8, 27, '', 53624, 'Pushpendra Meena ', 'Vanay Singh ', '', '9521311357', '', '7297928190', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5717, 8, 27, '', 53540, 'Rachna Choudhary', 'Ramesh Kumar ', '', '9413695954', '', '8107938972', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5718, 8, 27, '', 53612, 'Rachna Gupta', 'P.c. Gupta', '', '9460779046', '', '8949635836', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5719, 8, 27, '', 53501, 'Radhika Jhanwar', 'Rajesh Jhanwar', '', '9636916276', '', '8302906487', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5720, 8, 27, '', 53556, 'Rahul Fulwariya', 'Dayanand Fulwariya', '', '9509712782', '', '9887316037', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5721, 8, 27, '', 53566, 'Rahul Kumar Janagal ', 'Dinesh Kumar Janagal ', '', '7976706313', '', '7221002052', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5722, 8, 27, '', 53617, 'Rahul Singh ', 'Kishore Singh ', '', '8302570327', '', '6350499447', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5723, 8, 27, '', 53583, 'Rahul Swami', 'Shyam Lal Swami', '', '9351761960', '', '8769185229', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5724, 8, 27, '', 53592, 'Raj Aryan Sharan ', 'Sanjay Saharan', '', '9672377114', '', '7425050822', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5725, 8, 27, '', 53552, 'Rakesh Makar', 'Mangilal Makar', '', '9828125439', '', '9784665449', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5726, 8, 27, '', 53578, 'Rakhi Yadav', 'Lal Singh Yadav', '', '9461471042', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5727, 8, 27, '', 53530, 'Ram Niwas Malani', 'Ramesh Malani', '', '9828835214', '', '7231921243', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5728, 8, 27, '', 53605, 'Ravi Upadhyay', 'Laxmi Narayan Upadhayay', '', '9374218918', '', '9928287285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5729, 8, 27, '', 53603, 'Reena Saran ', 'Rameshwar Lal Saran ', '', '9602456681', '', '9649825288', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5730, 8, 27, '', 53638, 'Renu Dholkheriya', 'Jitendra Dholkheriya', '', '8058185686', '', '9649422111', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5731, 8, 27, '', 53250, 'Ridhee Kumari ', 'Ram Babu Singh ', '', '7727814156', '', '7732962949', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5732, 8, 27, '', 53563, 'Ritika Chopra', 'Mukesh Kumar Chopra', '', '9414430550', '', '6376687321', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5733, 8, 27, '', 53630, 'Ritika Verma ', 'Deta Ram Kumhar', '', '9462027282', '', '7597041232', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5734, 8, 27, '', 53245, 'Ritu Kumari Vashishtha', 'Hemant Sharma', '', '9460893512', '', '9413130258', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5735, 8, 27, '', 53604, 'Ronak Chandak ', 'Vikash Chandak', '', '8769177357', '', '6376895116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5736, 8, 27, '', 53518, 'Sahil Yadav ', 'Sharvan Yadav', '', '9414582461', '', '9460526753', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5737, 8, 27, '', 53586, 'Sarita Choudhary', 'Ramdev Mundel ', '', '8078631739', '', '8360703523', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5738, 8, 27, '', 53514, 'Saroj Choudhary', 'Amar Singh  ', '', '9602984539', '', '8504801311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5739, 8, 27, '', 53646, 'Shivam Rathore', 'Padam Singh Rathore', '', '9896015353', '', '9460174519', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5740, 8, 27, '', 53567, 'Shivanee Bhargava', 'Govind Bhargava', '', '9414017499', '', '9001996827', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5741, 8, 27, '', 53585, 'Shivratan Choudhary', 'Omaram Choudhary', '', '8670076941', '', '7375060077', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5742, 8, 27, '', 53629, 'Shreyansh Khatri ', 'Kamal Khatri ', '', '9468833003', '', '9414603699', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5743, 8, 27, '', 53591, 'Shreyansh Tripathi', 'S.k. Tirpati', '', '8769604407', '', '8005700944', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5744, 8, 27, '', 53542, 'Shruti Setiya ', 'Deepak Setiya', '', '7014217907', '', '9413541791', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5745, 8, 27, '', 53549, 'Sulochana Upadhyay', 'Jhanwarlal Upadhyay', '', '9414264574', '', '8764023149', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5746, 8, 27, '', 53529, 'Sunil Choudhary', 'Ramdev Choudhary', '', '9413480791', '', '6350027157', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5747, 8, 27, '', 53632, 'Sunila Godara', 'Bhim Sen Godara', '', '9414968986', '', '9649681401', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5748, 8, 27, '', 53559, 'Surbhi Suthar', 'Ram Kumar Suthar', '', '9982404999', '', '8058315915', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5749, 8, 27, '', 53510, 'Suresh Kumar', 'Chimpa Ram ', '', '9602549598', '', '7062883743', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5750, 8, 27, '', 53607, 'Suryaveer Singh', 'Bhagwan Singh ', '', '9414332067', '', '8696182809', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5751, 8, 27, '', 53560, 'Swati Kanwar Sankhla', 'Bhairu Singh Sankhla', '', '9351877933', '', '9983771126', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5752, 8, 27, '', 53581, 'Tathagat Koti', 'Radhey Shyam Koti', '', '9414577818', '', '9636277818', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5753, 8, 27, '', 53513, 'Tushar Joshi', 'Mahendra Kumar ', '', '9413727080', '', '9461047915', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', '');
INSERT INTO `stu_profile` (`id`, `class_id`, `batch_id`, `token_no`, `roll_no`, `name`, `f_name`, `m_name`, `f_mobile`, `m_mobile`, `s_mobile`, `email`, `gender`, `category`, `dob`, `ll_no`, `c_address`, `c_state`, `c_district`, `c_city`, `c_tehsil`, `c_pin`, `p_address`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll`, `scholarship`, `scholar_reason`, `scholar_subreason`, `send_to`, `refer_to`, `feedback`, `leave_at`, `pg_name`, `remark`, `propic`, `note`, `wheree`, `from_date`, `to_date`, `genrate_token`, `admission`, `other_detail`, `demo_class`, `inquiry_date`, `addmission_date`, `black_list`, `registration_date`, `registration_by`, `refund_by`, `refund_date`, `last_where`, `old_student`) VALUES
(5754, 8, 27, '', 53561, 'Urvashi Bhadu', 'Raj Kumar Bhadu', '', '9462203488', '', '8764262477', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5755, 8, 27, '', 53520, 'Ved Prakash ', 'Mangi Lal ', '', '9636177451', '', '9950746425', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5756, 8, 27, '', 53576, 'Vineet Chouhan ', 'Ramavadh Chouhan ', '', '9680452304', '', '8890102186', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5757, 8, 27, '', 53550, 'Vipin Bishnoi', 'Sharwan Ram ', '', '9829211429', '', '7728890429', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5758, 8, 27, '', 53505, 'Virender Kumar ', 'Shiv Ram ', '', '9928408278', '', '9119350292', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5759, 8, 27, '', 53533, 'Yash Lunia ', 'Gautam Chand Lunia ', '', '8619590756', '', '8696478835', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5760, 8, 27, '', 53628, 'Yashoda', 'Tolaram Mahia', '', '9571149321', '', '6375768951', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5761, 8, 27, '', 53503, 'Yetika Jakhra', 'Azad Kumar Jakhra', '', '9782648547', '', '9828272671', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5762, 8, 27, '', 53565, 'Yogendra Meena', 'Kanhaiya Lal Meena', '', '9784455230', '', '8384938116', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5763, 8, 27, '', 53555, 'Yogesh Kumar Hatila', 'Bhuwnesh Kumar Hatila', '', '9214824851', '', '7023564135', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5764, 8, 27, '', 53515, 'Yogesh Kumar Pareek', 'Shankar Lal Pareek ', '', '9928037004', '', '9929196442', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5765, 8, 27, '', 53606, 'Yogita Meena ', 'Yogendra Kumar Meena', '', '9460169163', '', '9784691154', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5766, 8, 28, '', 54049, 'Aarti Yadav', 'Magant Yadav', '', '9501133733', '', '8440812657', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5767, 8, 28, '', 54088, 'Ajay Godara', 'Har Chand Godara', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5768, 8, 28, '', 54025, 'Ajay Tungaria', 'Ramlal Tungariya', '', '9660057330', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5769, 8, 28, '', 54050, 'Akshay Choudhary', '', '', '9772338448', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5770, 8, 28, '', 54030, 'Amandeep Kour', 'Prem Singh', '', '8949493092', '', '9672847258', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5771, 8, 28, '', 54051, 'Anand Kumawat', 'Girdhari Ram ', '', '8385825521', '', '9950841639', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5772, 8, 28, '', 54032, 'Anil Barupal ', 'Surendra Barupal ', '', '9309239107', '', '9214692637', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5773, 8, 28, '', 54071, 'Ashok Meghwal ', 'Harji Ram ', '', '9983620102', '', '8764062740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5774, 8, 28, '', 54018, 'Ayraz Mirza', 'Mohiyuddin Mirza', '', '8104135909', '', '7340540944', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5775, 8, 28, '', 54026, 'Babu Lal Tard ', 'Sahi Ram Tard ', '', '9928503299', '', '9799901093', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5776, 8, 28, '', 54077, 'Bhanwar Singh ', 'Dalu Singh ', '', '9828080806', '', '9799599791', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5777, 8, 28, '', 54023, 'Bharti Soni', 'Chandra Prakash Soni', '', '9461334906', '', '9785415576', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5778, 8, 28, '', 54084, 'Bhawana Kanwar', 'Daya Shankar Singh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5779, 8, 28, '', 54061, 'Birbal Sayach ', 'Ramdev Sayach ', '', '9829033807', '', '8529821740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5780, 8, 28, '', 54086, 'Chandrakanta Sankhla', 'Jai Narayan ', '', '9509189198', '', '9166630449', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5781, 8, 28, '', 54004, 'Deepak Soni', 'Gopal Soni', '', '9413770511', '', '7597565103', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5782, 8, 28, '', 54060, 'Devaram Karela', 'Munnaram Kalera', '', '9982283257', '', '8696622996', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5783, 8, 28, '', 54067, 'Dheeraj Kumar ', 'Dhanna Ram ', '', '7742691175', '', '9079520039', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5784, 8, 28, '', 54002, 'Dinesh Solanki', 'Shiv Kumar Solanki', '', '9214587630', '', '7230066006', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5785, 8, 28, '', 53406, 'Divya Bhati', 'Pradeep Kumar Bhati ', '', '9460899829', '', '9460900548', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5786, 8, 28, '', 54040, 'Dropati Rintor ', 'Shankar Lal ', '', '6377140558', '', '9057512754', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5787, 8, 28, '', 54028, 'Ganesh Prajapat ', 'Laxmi Narayan Prajapat', '', '9782010124', '', '8890996285', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5788, 8, 28, '', 54082, 'Garima Gahlot', 'Sanwar Lal Gahlot', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5789, 8, 28, '', 54033, 'Harikishan Kumawat', 'Kaniram Kumawat', '', '9784240617', '', '7230809890', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5790, 8, 28, '', 54069, 'Hastu Narnoliya ', 'Chunnilal Narnoliya ', '', '9414357177', '', '8955156878', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5791, 8, 28, '', 54045, 'Jyoti ', 'Krishan Gopal ', '', '9672162980', '', '9828301646', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5792, 8, 28, '', 54102, 'Kalicharan', 'Girdhan Dan', '', '9982032642', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5793, 8, 28, '', 54047, 'Kanwal Jeet Bhati ', 'Jitendra Kumar Bhati ', '', '8952015190', '', '7615922740', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5794, 8, 28, '', 54073, 'Karan Verma', 'Badriram Verma', '', '9413615037', '8559940569', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5795, 8, 28, '', 54024, 'Kasi Ram Ojha ', 'Anjani Kumar Ojha ', '', '9529377951', '', '9784622459', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5796, 8, 28, '', 54075, 'Khushboo Kanwar', 'Mohan Singh ', '', '9602931478', '', '9782830396', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5797, 8, 28, '', 54042, 'Kishan Gopal Bajaj ', 'Jugal Kishor', '', '9828721332', '', '8005775985', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5798, 8, 28, '', 54021, 'Komal Suthar', 'Om Prakash Suthar', '', '9782826677', '', '9828226677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5799, 8, 28, '', 54043, 'Kushal Saini', '', '', '9785251541', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5800, 8, 28, '', 54020, 'Lakhan Sankhla ', 'Raj Kumar ', '', '9928831924', '', '8769597513', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5801, 8, 28, '', 54003, 'Laxman Prajapat', 'Nemichand Prajapat', '', '9413728290', '', '8619933717', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5802, 8, 28, '', 54063, 'Madhu Sudhan Meena', 'Surendra', '', '9460058077', '', '9784217039', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5803, 8, 28, '', 54036, 'Mahesh Swami', 'Het Ram Swami ', '', '7790820862', '', '9785681911', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5804, 8, 28, '', 54014, 'Manisha Choudhary', 'Ram Rakh', '', '8619213081', '', '9660358093', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5805, 8, 28, '', 54064, 'Manju ', 'Ramjas', '', '9784965622', '', '6376707263', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5806, 8, 28, '', 54098, 'Manoj Dan Charan', 'Keshar Dan', '', '9571723108', '', '7414051553', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5807, 8, 28, '', 54068, 'Manoj Singh ', 'Daleep Singh ', '', '7425817253', '', '9672297823', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5808, 8, 28, '', 53905, 'Mansha Mehra', 'Mahender Mehra', '', '7568757003', '', '9214447497', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5809, 8, 28, '', 53101, 'Manvi Bithu ', 'Devpal Singh ', '', '9460002552', '', '8741917272', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5810, 8, 28, '', 53914, 'Monika Gahlot ', 'Anand Gahlot ', '', '9414139502', '', '7597391359', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5811, 8, 28, '', 54076, 'Mukta Harshwal ', 'Mukesh Kumar ', '', '8209803794', '', '9828141375', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5812, 8, 28, '', 54092, 'Neelmani ', 'Prabhu Ram', '', '9983652144', '9782712642', '9782713255', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5813, 8, 28, '', 54062, 'Neha', 'Shyopat Ram', '', '9414433958', '', '8094177004', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5814, 8, 28, '', 54044, 'Nishant ', 'Vijay Kumar ', '', '9414505319', '', '6350368922', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5815, 8, 28, '', 54074, 'Pankaj Kachhawa', 'Meenaram Kachhawa', '', '7821001829', '', '9829397683', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5816, 8, 28, '', 54052, 'Pawan Kumar ', 'Lekhram Sahu', '', '7023270713', '9694211575', '8094105272', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5817, 8, 28, '', 54057, 'Poornima Godara', 'Shiv Kumar Godara', '', '8003226033', '', '9413008611', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5818, 8, 28, '', 54055, 'Pradhumn Kumar Vyas', 'Sanjay Kumar Vyas', '', '9252815894', '', '9660071468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5819, 8, 28, '', 54005, 'Pragati Prajapat ', 'Om Prakash Prajapat', '', '9829006747', '', '9413743775', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5820, 8, 28, '', 54039, 'Pulkit Bhadani', 'Raychand Bhadani', '', '9570824354', '', '7240127792', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5821, 8, 28, '', 54089, 'Ram Dayal Bishnoi', 'Mangi Lal Bishnoi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5822, 8, 28, '', 54006, 'Ram Niwas Godara', 'Shri Ram Godara', '', '9772654804', '', '9636478236', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5823, 8, 28, '', 54048, 'Ramandeep', 'Harpal Singh', '', '9928677808', '', '8890453677', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5824, 8, 28, '', 54012, 'Ramdev Choudhary', 'Moola Ram ', '', '9785590481', '', '9799831709', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5825, 8, 28, '', 54037, 'Ramesh Choudhary', 'Bajrang Lal ', '', '7733065749', '', '7413828802', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5826, 8, 28, '', 54070, 'Ramniwas Bishnoi', 'Maniram Bishnoi', '', '7023629566', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5827, 8, 28, '', 54059, 'Ramswarup Godara', 'Hansraj Godara', '', '8239466693', '', '9460863447', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5828, 8, 28, '', 54015, 'Ravinder Dhayal', 'Atmaram', '', '9783778840', '', '9664256844', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5829, 8, 28, '', 54022, 'Rekha ', 'Laxman Ram Jat ', '', '7891732705', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5830, 8, 28, '', 53435, 'Rishi Raj Suthar', 'Vasudev Suthar', '', '9001024260', '', '7425005764', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5831, 8, 28, '', 54080, 'Sanjana Sarswat', 'Chatrbhuj Sarswat', '', '9414967661', '', '9461392548', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5832, 8, 28, '', 54029, 'Sanju Choudhary', 'Rameshwar Lal Choudhary', '', '9928563696', '', '9414327209', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5833, 8, 28, '', 54083, 'Saroj Prajapat', 'Karna Ram', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5834, 8, 28, '', 54065, 'Savita ', 'Om Prakash Godara', '', '8107041693', '', '9610804112', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5835, 8, 28, '', 54054, 'Seema Kanwar', 'Virendra Singh Rathore', '', '9413105072', '', '9649304984', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5836, 8, 28, '', 54056, 'Shashi Kumar Vyas', 'Sanjay Kumar Vyas', '', '9252815894', '', '9660071468', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5837, 8, 28, '', 54066, 'Sher Ali', 'Mahboob Ali ', '', '9829940882', '', '8769931070', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5838, 8, 28, '', 54090, 'Shiv Ratan', 'Ganesha Ram', '', '9660713052', '', '9783603363', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5839, 8, 28, '', 54072, 'Shivani Chouhan', 'Prahlad Ram', '', '9001385966', '', '9414514757', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5840, 8, 28, '', 54008, 'Sneha Rathi', 'Jai Singh Rathi ', '', '8955329363', '', '6375506957', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5841, 8, 28, '', 54031, 'Soniya Bishnoi', 'Ramswroop Bishnoi ', '', '9783075919', '', '9799983207', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5842, 8, 28, '', 54053, 'Suresh Chandra', 'Keshv Ram ', '', '8104397564', '', '9694052262', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5843, 8, 28, '', 54019, 'Suresh Kumar ', 'Mohan Lal ', '', '9950555727', '', '8619018199', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5844, 8, 28, '', 54081, 'Surya Lomar', 'Megha Ram', '', '9413082795', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5845, 8, 28, '', 54013, 'Surya Prakash', '', '', '7426068001', '', '8386873910', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5846, 8, 28, '', 54027, 'Sushma Moond', 'Durgaram Moond', '', '9461342425', '', '9667567840', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5847, 8, 28, '', 54035, 'Ved Prakash', 'Bhani Ram', '', '9549107270', '', '9785825846', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5848, 8, 28, '', 54078, 'Vikas Jakhar ', 'Dhanraj Jakhar ', '', '9649059280', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5849, 8, 28, '', 54079, 'Vikash Bishnoi ', 'Shrawan Kumar ', '', '9414369565', '', '7222003729', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5850, 8, 28, '', 53912, 'Vinit Pareek ', 'Gangadhar Pareek ', '', '9928716242', '', '9928473848', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5851, 8, 28, '', 54041, 'Yeeshu Sirwa', 'Krishan Kant Sirwa', '', '8005972552', '', '9314149399', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5852, 8, 28, '', 54087, 'Yogesh Aaseri', 'Amar Singh Aaseri', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5853, 8, 28, '', 54007, 'Yogita Bagri', 'Mukesh Bagri ', '', '9414487291', '', '7300248268', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 'addmission', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 1, 0, '0000-00-00', '', ''),
(5854, 8, 47, '1236075', 0, 'Monika Manda', 'H.R. Manda', 'XYZ', '9414863748', '', '', '', 'female', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'other', '11', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 7, 0, 0, 0, '2018-08-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(5855, 8, 48, '1236076', 0, 'Aaditya sharma', 'shyam joshi', 'Santosh joshi', '9413537062', '', '9413537062', '', 'male', 'GEN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '7', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-08-10', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(5856, 8, 47, '1236077', 0, 'Kapil', 'lobhiram', 'XYZ', '7823060002', '', '7823060002', '', 'male', 'OBC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'director', '6', '', '', '', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 12, 0, 0, 0, '2018-08-11', '0000-00-00', 'n', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'n'),
(5858, 1, 1, '', 22222, 'raj', 'saj', 'maj', '9024555623', '', '', '', 'male', 'GEN', '', '', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'bikaner', 'Bikaner', '334001', 'Near Shiv Temple, Old Shivbari Road, Patel Nagar', 'Rajasthan', 'Bikaner', 'Bikaner', 'bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 10, '1', 'Dir. Shwet Goswami Sir', '', '', '', 'provided', '1', '', '', '', 'inquiry', '0000-00-00', '0000-00-00', 0, 0, 0, 0, '0000-00-00', '0000-00-00', '', '0000-00-00', 0, 0, '0000-00-00', 'addmission', 'y'),
(5859, 4, 10, '1236078', 99991, 'mohit parth', 'asd', 'klj', '8058907999', '', '', '', 'male', 'GEN', '', '', 'C-19, Narayan Vihar Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', 'C-19, Narayan Vihar Colony', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 50, '1', 'Dir. Shwet Goswami Sir', 'enquiry', '1', '', 'provided', '12', '', 'include/student_propic/min-15343949701234.png', 'note here', 'leave', '2018-08-16', '2018-08-23', 1, 1, 0, 1, '2018-08-16', '2018-08-16', 'n', '2018-08-16', 1, 1, '2018-08-16', 'addmission', 'y'),
(5860, 9, 29, '1236079', 99992, 'aaa', 'sd', 'klj', '8947800330', '', '', '', 'male', 'GEN', '', '', 'Near Mahila ITI, Vallabh Garden Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', 'Near Mahila ITI, Vallabh Garden Road', 'Rajasthan', 'Bikaner', 'Bikaner', 'Bikaner', '334001', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '               ', 0, '', '', 'accountant', '3', '', 'provided', '11', '', '', '', 'addmission', '2018-08-16', '2018-08-23', 1, 1, 0, 1, '2018-08-16', '2018-08-16', 'n', '2018-08-16', 1, 0, '0000-00-00', 'addmission', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profile`
--

CREATE TABLE `teacher_profile` (
  `id` int(11) NOT NULL,
  `faculty_id` varchar(11) NOT NULL,
  `faculty_name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `desiganation` text NOT NULL,
  `subject` text NOT NULL,
  `email` text NOT NULL,
  `mobile_self` text NOT NULL,
  `mobile_father` text NOT NULL,
  `mobile_mother` text NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `dob` text NOT NULL,
  `landline_no` text NOT NULL,
  `cor_address` text NOT NULL,
  `cor_state` text NOT NULL,
  `cor_district` text NOT NULL,
  `cor_tehsil` text NOT NULL,
  `cor_city_town` text NOT NULL,
  `cor_pin` text NOT NULL,
  `per_address` text NOT NULL,
  `per_state` text NOT NULL,
  `per_district` text NOT NULL,
  `per_tehsil` text NOT NULL,
  `per_city_town` text NOT NULL,
  `per_pin` text NOT NULL,
  `doj` text NOT NULL,
  `dol` text NOT NULL,
  `salary` text NOT NULL,
  `working_hour` text NOT NULL,
  `no_classes` text NOT NULL,
  `office_time_in` text NOT NULL,
  `office_time_out` text NOT NULL,
  `joining_person` text NOT NULL,
  `reference` text NOT NULL,
  `remark` text NOT NULL,
  `upload_resume` text NOT NULL,
  `upload_photo` text NOT NULL,
  `upload_profile` text NOT NULL,
  `leave_with_salary` int(2) NOT NULL DEFAULT '0',
  `submit_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_profile`
--

INSERT INTO `teacher_profile` (`id`, `faculty_id`, `faculty_name`, `father_name`, `mother_name`, `desiganation`, `subject`, `email`, `mobile_self`, `mobile_father`, `mobile_mother`, `gender`, `dob`, `landline_no`, `cor_address`, `cor_state`, `cor_district`, `cor_tehsil`, `cor_city_town`, `cor_pin`, `per_address`, `per_state`, `per_district`, `per_tehsil`, `per_city_town`, `per_pin`, `doj`, `dol`, `salary`, `working_hour`, `no_classes`, `office_time_in`, `office_time_out`, `joining_person`, `reference`, `remark`, `upload_resume`, `upload_photo`, `upload_profile`, `leave_with_salary`, `submit_by`) VALUES
(1, '?2233', 'vivek ', 'ram', '', 'sr. teacher', 'every', '', '9024555623', '', '', 'male', '23-01-1994', '2234376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50000', '1', '0', '9:00Am', '10:00AM', '', '', '', '', '', '', 0, 1),
(2, '?2233', 'vivek ', 'ram', '', 'sr. teacher', 'every', '', '9024555623', '', '', 'male', '23-01-1994', '2234376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50000', '1', '0', '9:00Am', '10:00AM', '', '', '', '', '', '', 0, 1),
(3, '?2233', 'vivek ', 'ram', '', 'sr. teacher', 'every', '', '9024555623', '', '', 'male', '23-01-1994', '2234376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50000', '1', '0', '9:00Am', '10:00AM', '', '', '', '', '', '', 0, 1),
(4, '?2233', 'vivek ', 'ram', '', 'sr. teacher', 'every', '', '9024555623', '', '', 'male', '23-01-1994', '2234376', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50000', '1', '0', '9:00Am', '10:00AM', '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tec_exe`
--

CREATE TABLE `tec_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tec_exe`
--

INSERT INTO `tec_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/teacher_doc_exe/15_Aug_2018_studentlist.xls', '2018-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `vec`
--

CREATE TABLE `vec` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(7) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `f_name` varchar(50) DEFAULT NULL,
  `m_name` varchar(50) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `f_mobile` varchar(11) DEFAULT NULL,
  `m_mobile` varchar(11) DEFAULT NULL,
  `gender` enum('male','fmale') DEFAULT NULL,
  `cat` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ll_no` varchar(9) DEFAULT NULL,
  `adrs` text,
  `state` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `tehsil` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `p_adrs` text,
  `p_state` varchar(50) DEFAULT NULL,
  `p_district` varchar(50) DEFAULT NULL,
  `p_tehsil` varchar(50) DEFAULT NULL,
  `p_city` varchar(50) DEFAULT NULL,
  `p_pin` varchar(50) DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `vec_name` varchar(50) DEFAULT NULL,
  `vec_model` varchar(50) DEFAULT NULL,
  `vec_no` varchar(50) DEFAULT NULL,
  `vec_type` varchar(50) DEFAULT NULL,
  `remark` text,
  `upload_icard` text,
  `upload_photo` text,
  `upload_documents` text NOT NULL,
  `submit_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vec`
--

INSERT INTO `vec` (`id`, `driver_id`, `name`, `f_name`, `m_name`, `designation`, `email`, `mobile`, `f_mobile`, `m_mobile`, `gender`, `cat`, `dob`, `ll_no`, `adrs`, `state`, `district`, `tehsil`, `city`, `pin`, `p_adrs`, `p_state`, `p_district`, `p_tehsil`, `p_city`, `p_pin`, `doj`, `dol`, `reference`, `vec_name`, `vec_model`, `vec_no`, `vec_type`, `remark`, `upload_icard`, `upload_photo`, `upload_documents`, `submit_by`) VALUES
(1, '?driver', 'name', 'fname', 'mname', 'designation', 'email', 'mobile', 'fmobile', 'mmboile', '', 'cat', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, 'vecname', 'vecmodel', 'vecno', 'vectype', NULL, NULL, NULL, '', 1),
(2, '?driver', 'name', 'fname', 'mname', 'designation', 'email', 'mobile', 'fmobile', 'mmboile', '', 'cat', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, 'vecname', 'vecmodel', 'vecno', 'vectype', NULL, NULL, NULL, '', 1),
(3, '77825', 'vivek', 'ram', 'aam', 'driver', '', '9024555623', '', '', 'male', 'gen', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0000-00-00', NULL, 'taxi', '2015', '4707', 'electic', NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vec_exe`
--

CREATE TABLE `vec_exe` (
  `id` int(1) NOT NULL,
  `name` text,
  `datee` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vec_exe`
--

INSERT INTO `vec_exe` (`id`, `name`, `datee`) VALUES
(1, 'include/vehicl_exe/16_Aug_2018_studentlist.xls', '2018-08-16'),
(2, 'abc', '2018-08-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_stu_fee`
--
ALTER TABLE `all_stu_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap`
--
ALTER TABLE `ap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aug`
--
ALTER TABLE `aug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_fee_dtl`
--
ALTER TABLE `class_fee_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coloumn`
--
ALTER TABLE `coloumn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decm`
--
ALTER TABLE `decm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_profile`
--
ALTER TABLE `employee_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_exe`
--
ALTER TABLE `emp_exe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feb`
--
ALTER TABLE `feb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inq_stu_exe`
--
ALTER TABLE `inq_stu_exe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jan`
--
ALTER TABLE `jan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `july`
--
ALTER TABLE `july`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `june`
--
ALTER TABLE `june`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_with_salary`
--
ALTER TABLE `leave_with_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `march`
--
ALTER TABLE `march`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `may`
--
ALTER TABLE `may`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nov`
--
ALTER TABLE `nov`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oct`
--
ALTER TABLE `oct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_staff`
--
ALTER TABLE `office_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patteren`
--
ALTER TABLE `patteren`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdc`
--
ALTER TABLE `pdc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `per_stu_exe`
--
ALTER TABLE `per_stu_exe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provided_pg`
--
ALTER TABLE `provided_pg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salray_exe`
--
ALTER TABLE `salray_exe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sept`
--
ALTER TABLE `sept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stationary`
--
ALTER TABLE `stationary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_lib`
--
ALTER TABLE `stu_lib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_profile`
--
ALTER TABLE `stu_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_profile`
--
ALTER TABLE `teacher_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tec_exe`
--
ALTER TABLE `tec_exe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vec`
--
ALTER TABLE `vec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vec_exe`
--
ALTER TABLE `vec_exe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_stu_fee`
--
ALTER TABLE `all_stu_fee`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ap`
--
ALTER TABLE `ap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aug`
--
ALTER TABLE `aug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `class_fee_dtl`
--
ALTER TABLE `class_fee_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `coloumn`
--
ALTER TABLE `coloumn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `decm`
--
ALTER TABLE `decm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_profile`
--
ALTER TABLE `employee_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `emp_exe`
--
ALTER TABLE `emp_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `feb`
--
ALTER TABLE `feb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;
--
-- AUTO_INCREMENT for table `inq_stu_exe`
--
ALTER TABLE `inq_stu_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jan`
--
ALTER TABLE `jan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `july`
--
ALTER TABLE `july`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `june`
--
ALTER TABLE `june`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_with_salary`
--
ALTER TABLE `leave_with_salary`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `march`
--
ALTER TABLE `march`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `may`
--
ALTER TABLE `may`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nov`
--
ALTER TABLE `nov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oct`
--
ALTER TABLE `oct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `office_staff`
--
ALTER TABLE `office_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `patteren`
--
ALTER TABLE `patteren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pdc`
--
ALTER TABLE `pdc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `per_stu_exe`
--
ALTER TABLE `per_stu_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `provided_pg`
--
ALTER TABLE `provided_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salray_exe`
--
ALTER TABLE `salray_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sept`
--
ALTER TABLE `sept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stationary`
--
ALTER TABLE `stationary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `stu_lib`
--
ALTER TABLE `stu_lib`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `stu_profile`
--
ALTER TABLE `stu_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5861;
--
-- AUTO_INCREMENT for table `teacher_profile`
--
ALTER TABLE `teacher_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tec_exe`
--
ALTER TABLE `tec_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vec`
--
ALTER TABLE `vec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vec_exe`
--
ALTER TABLE `vec_exe`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
