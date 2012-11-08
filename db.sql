-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2012 at 02:13 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `engineer_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`username`, `password`) VALUES
('admin', 'ac66b1209a1bfaa857a0f21d792ce07e'),
('CPU', '21232f297a57a5a743894a0e4a801fc3'),
('jmi', '60f561a730a2efa815c57c97b96b609f'),
('manager', '1d0258c2440a8d19e716292b231e3190'),
('Tuxcoder', '21232f297a57a5a743894a0e4a801fc3'),
('user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `f_name`, `l_name`, `info`) VALUES
(1, 'Peter', 'Galvin', 'He has done his graduation from the UC Berkley. And then Complete his research on modern Operating Systems.'),
(2, 'Greg', 'Gagne', 'He has done his graduation from the MIT. And then Complete his research on modern Operating Systems. After working 2 years in Microsoft he started teaching in Harvards'),
(3, 'Abraham', 'Silberschatz', 'He has done his graduation from the MIT. And then Complete his research on modern Operating Systems. After working 2 years in Facebook he started teaching in MIT'),
(4, 'Thyagarajan', 'Ghatak', 'He has done his graduation from the IIT, Delhi. Now he is teaching Advanced Physics at IIT, Bombay');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `available_stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `ISBN`, `available_stock`, `price`, `category`) VALUES
(1, 'Operating System Concept', '812650885X', 10, 350, 'Computer Science'),
(2, 'Microprocessor', '8126671257', 5, 20, 'Electronics'),
(3, 'Java 2', '152766671257', 1, 250, 'Computer Science'),
(4, 'Head first Python', '7672611257', 23, 550, 'Computer Science'),
(5, 'Computer Arch', '972616257', 3, 250, 'Hardware'),
(6, 'Digital Logic theory', '972616257', 7, 350, 'Hardware'),
(7, 'Double Entry book keeping', '972616257', 2, 350, 'Accounts'),
(8, 'Solid States', '1786616257', 6, 230, 'Physics'),
(9, 'Basics of Chemistry', '612891716257', 12, 380, 'Chemistry'),
(10, 'Basics of Electrical', '1232716257', 15, 320, 'Electrical'),
(11, 'Mobile Communication', '7132876257', 1, 220, 'Networking'),
(12, 'Automata', '711126257', 0, 120, 'Theory of computation'),
(13, 'Artificial Intelligence', '9711426257', 10, 220, 'Computer Science'),
(14, 'Data Structures', '971146877', 4, 320, 'Computer Science'),
(15, 'Lasers', '976116877', 10, 120, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE IF NOT EXISTS `ordered` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `book_id` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`book_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordered_by`
--

CREATE TABLE IF NOT EXISTS `ordered_by` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `order_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`order_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_of_payment` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `publiser`
--

CREATE TABLE IF NOT EXISTS `publiser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `publiser`
--

INSERT INTO `publiser` (`id`, `name`, `address`) VALUES
(1, 'Wiley India', '4435-36/7, Ansari Road, Daryaganj, New Delhi-110002'),
(2, 'Macmillan', '1824-82/4, Ansari Road, Daryaganj, New Delhi-110002');

-- --------------------------------------------------------

--
-- Table structure for table `published`
--

CREATE TABLE IF NOT EXISTS `published` (
  `book_id` mediumint(9) NOT NULL DEFAULT '0',
  `pub_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`,`pub_id`),
  KEY `pub_id` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `published`
--

INSERT INTO `published` (`book_id`, `pub_id`) VALUES
(1, 1),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `f_name`, `l_name`, `role`, `address`, `email`, `phone`) VALUES
('admin', 'shah', 'a', 0, 'g', 'sss', '4545'),
('CPU', 'Intel', 'I7', 1, 'C A', 'intex@intel.com', '9887634309'),
('jmi', 'aaa', 'aaaa', 0, 'aaaa', 'aaaa@asdfe.com', 'aaa'),
('manager', 'manager', 'book admin', 2, 'apple lab , ', 'manager@book.com', '99991999'),
('Tuxcoder', 'Anshul', 'Sharma', 0, '123/9,Ram-nagar, New Delhi -110017', 'tux@gmail.com', '9876554309'),
('user', 'user', 'user', 0, 'user , userpur ', 'user@gmail.com', '2232332');

-- --------------------------------------------------------

--
-- Table structure for table `written_by`
--

CREATE TABLE IF NOT EXISTS `written_by` (
  `book_id` mediumint(9) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `written_by`
--

INSERT INTO `written_by` (`book_id`, `author_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(15, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ordered`
--
ALTER TABLE `ordered`
  ADD CONSTRAINT `ordered_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ordered_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `ordered_by`
--
ALTER TABLE `ordered_by`
  ADD CONSTRAINT `ordered_by_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `ordered_by_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `published`
--
ALTER TABLE `published`
  ADD CONSTRAINT `published_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `published_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publiser` (`id`);

--
-- Constraints for table `written_by`
--
ALTER TABLE `written_by`
  ADD CONSTRAINT `written_by_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `written_by_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
