-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2019 at 04:16 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '26-11-2019 12:25:28 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Electricity', NULL, '2019-11-12 05:21:21', '2019-11-12 05:21:21'),
(2, 'Plumbing', NULL, '2019-11-12 05:21:21', '2019-11-12 05:21:21'),
(3, 'Carpentry', NULL, '2019-11-12 05:21:21', '2019-11-12 05:21:21'),
(4, 'Refrigerator', NULL, '2019-11-12 05:21:21', '2019-11-12 05:21:21'),
(5, 'RO', NULL, '2019-11-12 05:21:21', '2019-11-12 05:21:21'),
(6, 'Geyser', NULL, '2019-11-12 05:22:02', '2019-11-12 05:22:02'),
(7, 'Television', NULL, '2019-11-12 05:22:02', '2019-11-12 05:22:02'),
(8, 'Architectural', NULL, '2019-11-12 05:44:32', '2019-11-12 05:44:32'),
(9, 'Mess', NULL, '2019-11-12 05:44:32', '2019-11-12 05:44:32'),
(10, 'Wifi', NULL, '2019-11-12 05:44:59', '2019-11-12 05:44:59'),
(11, 'Miscellaneous', NULL, '2019-11-12 05:46:51', '2019-11-12 05:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(9, 24, 'in process', 'working', '2019-11-26 00:26:00'),
(10, 26, 'closed', 'done', '2019-11-26 00:29:02'),
(11, 25, 'closed', 'done', '2019-11-26 14:43:40'),
(12, 30, 'closed', 'done', '2019-11-26 15:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `state`
--


-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'General', '2019-11-28 12:41:07', '0000-00-00 00:00:00'),
(2, 1, 'Critical', '2019-11-28 12:41:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(24, 2, 4, '', 'General Query', '', '', 'cooling', '', '2019-11-26 00:24:55', 'in process', NULL),
(25, 3, 7, '', 'General Query', '', '', 'ddvfed', '', '2019-11-26 00:28:05', 'closed', NULL),
(26, 4, 9, '', 'General Query', '', '', 'food', '', '2019-11-26 00:28:39', 'closed', NULL),
(28, 2, 8, '', 'General Query', '', '', 'parasasasasasasasas', '', '2019-11-26 14:45:00', NULL, NULL),
(29, 3, 4, '', 'General Query', '', '', 'poiutrewefghjkllkjhvc', '', '2019-11-26 14:46:07', NULL, NULL),
(30, 3, 7, '', 'General Query', '', '', 'asfsdgsgdfhdfh', '', '2019-11-26 15:18:28', 'closed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 2, 'paras@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 00:24:15', '26-11-2019 12:25:05 AM', 1),
(28, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 00:27:49', '26-11-2019 12:28:14 AM', 1),
(29, 4, 'lokesh@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 00:28:24', '26-11-2019 12:28:44 AM', 1),
(30, 4, 'lokesh@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 00:29:40', '26-11-2019 12:30:07 AM', 1),
(31, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 00:30:16', '', 1),
(32, 0, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 14:32:10', '', 0),
(33, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 14:32:56', '26-11-2019 02:37:21 PM', 1),
(34, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 14:39:11', '26-11-2019 02:44:24 PM', 1),
(35, 2, 'paras@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 14:44:45', '26-11-2019 02:45:05 PM', 1),
(36, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 14:45:49', '26-11-2019 02:46:10 PM', 1),
(37, 3, 'lovish@thapar.edu', '127.0.0.1\0\0\0\0\0\0\0', '2019-11-26 15:16:23', '26-11-2019 03:18:52 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Paras', 'paras@thapar.edu', '87985799d410ead3564453e2d9371ad5', 1111111111, 'ED-710', NULL, NULL, NULL, NULL, '2019-11-26 00:24:07', '0000-00-00 00:00:00', 1),
(3, 'Lovish', 'lovish@thapar.edu', 'a45ca94bac70bc3b20bb47b2eefcdb4f', 2222222222, 'ED-709', NULL, NULL, NULL, NULL, '2019-11-26 00:27:00', '0000-00-00 00:00:00', 1),
(4, 'Lokesh', 'lokesh@thapar.edu', '5f0e353b1c01e95c08233f477bf4f945', 3333333333, 'WE-510', NULL, NULL, NULL, NULL, '2019-11-26 00:27:16', '0000-00-00 00:00:00', 1),
(5, 'Lavish', 'lavish@thapar.edu', '4cc90c3fd87c60cf31fb7962bee60806', 44444444, NULL, NULL, NULL, NULL, NULL, '2019-11-26 00:27:38', '0000-00-00 00:00:00', 1);
