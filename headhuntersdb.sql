-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2016 at 08:43 PM
-- Server version: 5.5.16
-- PHP Version: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `headhuntersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `discount`) VALUES
(6, 0),
(7, 5),
(8, 5),
(9, 12),
(10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `price` float DEFAULT NULL,
  `billNo` varchar(30) NOT NULL,
  `creditCardType` varchar(10) NOT NULL,
  `creditCardNo` varchar(30) NOT NULL,
  `creditCardCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `phone`, `email`, `price`, `billNo`, `creditCardType`, `creditCardNo`, `creditCardCode`) VALUES
(1, 'Γεώργιος Κωσταντίνου', 'Αθήνα', '2103456789', 'gkostant@gmail.com', 35, '111-333-222-444', 'Master', '1234', '3456'),
(2, 'Ιωάννης Ελευθερίου', 'Θεσσαλονίκη', '2310345689', 'gkostant@gmail.com', 35, '111-333-222-666', 'Master', '1234', '3456'),
(3, 'Μαρία Γεωργάκη', 'Αθήνα', '2103455789', 'georgak@gmail.com', 35, '555-333-222-444', 'Master', '1234', '3456'),
(4, 'Ελευθερία Φιλιππίδη', 'Ηράκλειο', '2810345689', 'ele_filip@gmail.com', 35, '111-555-222-444', 'Master', '1234', '3456'),
(5, 'Δημήτριος Αναγνώστου', 'Ηράκλειο', '2810456789', 'anagnwstou@gmail.com', 35, '111-333-222-555', 'Master', '1234', '3456'),
(6, 'Management Consultants', 'Ηράκλειο', '2810345789', 'info@mng_consult.com', 58, '111-333-222-444', 'Master', '1234', '3456'),
(7, 'XYZ Multimedia', 'Θεσσαλονίκη', '2310345489', 'xyz_hr@xyz.com', 58, '111-333-222-666', 'Master', '1234', '3456'),
(8, 'Hi-tech', 'Αθήνα', '2102155789', 'info@hi_tech.com', 58, '555-333-222-444', 'Master', '1234', '3456'),
(9, 'ABC Systems', 'Αθήνα', '2103456892', 'info@abc.com', 58, '111-555-222-444', 'Master', '1234', '3456'),
(10, 'Intracom', 'Αθήνα', '2104567891', 'hr@intracom.com', 58, '111-333-222-555', 'Master', '1234', '3456'),
(46, 'zzzzzzzzzz', 'FDSFDSFDS', 'FSDFDSFSD', 'new@new.gr', 33, 'dsFSDFSD', 'DFSDFS', 'FSDFSDFS', 'SDFSDF'),
(47, 'VVVVVVVVV', 'VVBVB', 'VBVCBCV', 'new@new.gr', 0, '', '', '', ''),
(48, 'hhhhhhh', 'hjghjgh', 'hjghjg', 'new@new.gr', 0, '', '', '', ''),
(49, 'ggggggggggg', 'ghgfhfg', 'fghgfhf', 'new@new.gr', 4, '', '', '', ''),
(50, 'λαλαλαλαλααλαλα', '', 'ggffdgdfgf', 'new@new.gr', 0, '', '', '', ''),
(51, 'George Georgiou', '', '', 'new@new.gr', 0, '', '', '', ''),
(52, 'John Ioannou', 'fdfdsf', '', 'new@new.gr', 0, '', '', '', ''),
(53, 'Lampros Gabrihl', '', '', 'new@new.gr', 0, '', '', '', ''),
(54, 'Eleni Papadopoulou', '', '2102345678', 'new@new.gr', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `headhunters`
--

CREATE TABLE IF NOT EXISTS `headhunters` (
  `name` varchar(40) NOT NULL,
  `address` varchar(80) NOT NULL,
  `billNo` varchar(30) NOT NULL,
  `availablePositions` int(11) DEFAULT NULL,
  `occupiedPositions` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `headhunters`
--

INSERT INTO `headhunters` (`name`, `address`, `billNo`, `availablePositions`, `occupiedPositions`) VALUES
('The HeadHunters', 'Heraklion Crete', '111-222-333-444', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `individual`
--

CREATE TABLE IF NOT EXISTS `individual` (
  `id` int(11) NOT NULL,
  `job` varchar(40) NOT NULL,
  `unemployed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `individual`
--

INSERT INTO `individual` (`id`, `job`, `unemployed`) VALUES
(1, 'Προγραμματιστής', 1),
(2, 'Μαθηματικός', 1),
(3, 'Διαφημιστής', 1),
(4, 'Γραφίστας', 1),
(5, 'Προγραμματιστής', 1),
(46, 'ÎšÎ±Î¸Î·Î³Î·Ï„Î®Ï‚ Î“ÎµÏÎ¼Î±Î½Î¹ÎºÏŽÎ½', 1),
(47, 'Î Î¿Î»Î¹Ï„Î¹ÎºÏŒÏ‚ ÎœÎ·Ï‡Î±Î½Î¹ÎºÏŒÏ‚', 0),
(48, 'Î›Î¿Î³Î¹ÏƒÏ„Î®Ï‚', 0),
(49, 'Î”Î¹Î±Ï†Î·Î¼Î¹ÏƒÏ„Î®Ï‚', 0),
(50, 'Προγραμματιστής', 0),
(51, 'Προγραμματιστής', 1),
(52, 'Προγραμματιστής', 0),
(53, 'Διευθυντής Πωλήσεων', 0),
(54, 'Γραμματέας', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inidividualforeignlanguages`
--

CREATE TABLE IF NOT EXISTS `inidividualforeignlanguages` (
  `id` int(11) NOT NULL,
  `foreignLanguage` varchar(40) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inidividualforeignlanguages`
--

INSERT INTO `inidividualforeignlanguages` (`id`, `foreignLanguage`) VALUES
(1, 'Αγγλικά'),
(2, 'Αγγλικά'),
(2, 'Γαλλικά'),
(2, 'Σουαχίλι'),
(3, 'Σουηδικά'),
(4, 'Αγγλικά'),
(4, 'Γερμινικά'),
(5, 'Κινέζικα'),
(49, 'Î¦Î¹Î»Î±Î½Î´Î¹ÎºÎ¬'),
(54, 'Γαλλικά'),
(54, 'Γερμανικά'),
(54, 'Κινέζικα');

-- --------------------------------------------------------

--
-- Table structure for table `inidividualskills`
--

CREATE TABLE IF NOT EXISTS `inidividualskills` (
  `id` int(11) NOT NULL,
  `skill` varchar(40) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inidividualskills`
--

INSERT INTO `inidividualskills` (`id`, `skill`) VALUES
(1, 'Java'),
(1, 'C++'),
(2, 'Matlab'),
(3, 'AutoCad'),
(4, 'Photoshop'),
(4, 'CorelDraw'),
(5, '.NET'),
(5, 'PHP'),
(5, 'SQL'),
(49, 'C++'),
(49, 'PHP'),
(54, 'Photoshop');

-- --------------------------------------------------------

--
-- Table structure for table `inidividualstudies`
--

CREATE TABLE IF NOT EXISTS `inidividualstudies` (
  `id` int(11) NOT NULL,
  `diploma` varchar(40) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inidividualstudies`
--

INSERT INTO `inidividualstudies` (`id`, `diploma`) VALUES
(1, 'Επιστήμη Υπολογιστών, Παν. Κρήτης'),
(1, 'MSc. στην Επιστήμη των Υπολογιστών, Παν.'),
(2, 'Μαθηματικό, Καποδιστριακό Παν.'),
(3, 'Διαφήμιση, ΤΕΙ Θεσσαλονίκης'),
(4, 'Γραφιστική, ΤΕΙ Αθήνας'),
(4, 'ΙΕΚ Τεχνικού Η/Υ'),
(5, 'Πληροφορική, ΤΕΙ Αθήνας'),
(48, 'ghjghjgh'),
(48, 'jghjghjgh'),
(49, 'FDFSDFDF'),
(49, 'GFHGFHF'),
(50, 'Bachelor CS'),
(50, 'MSc Computer Science'),
(51, 'Computer Science'),
(51, 'Computer Science'),
(52, 'Computer Science'),
(53, 'Communication'),
(53, 'Management'),
(54, 'Communication'),
(54, 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `isoffered`
--

CREATE TABLE IF NOT EXISTS `isoffered` (
  `companyId` int(11) NOT NULL,
  `jobCode` varchar(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `deadline` date DEFAULT NULL,
  KEY `companyId` (`companyId`),
  KEY `jobCode` (`jobCode`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isoffered`
--

INSERT INTO `isoffered` (`companyId`, `jobCode`, `name`, `deadline`) VALUES
(7, 'XCC-123', 'The HeadHunters', '0000-00-00'),
(8, 'ABC-12', 'The HeadHunters', '2016-01-28'),
(7, 'xcs', 'The HeadHunters', '2016-01-30'),
(10, 'VVV-123', 'The HeadHunters', '2016-01-30'),
(10, 'PPP-12', 'The HeadHunters', '2016-01-22'),
(10, 'GGG-123', 'The HeadHunters', '2016-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `isrequested`
--

CREATE TABLE IF NOT EXISTS `isrequested` (
  `individualId` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `availableFrom` date DEFAULT NULL,
  KEY `individualId` (`individualId`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `isrequested`
--

INSERT INTO `isrequested` (`individualId`, `name`, `availableFrom`) VALUES
(46, 'The HeadHunters', '2016-01-29'),
(51, 'The HeadHunters', '2016-02-06'),
(52, 'The HeadHunters', '2016-02-25'),
(53, 'The HeadHunters', '2016-03-17'),
(54, 'The HeadHunters', '2016-05-27');

-- --------------------------------------------------------

--
-- Table structure for table `jobposition`
--

CREATE TABLE IF NOT EXISTS `jobposition` (
  `code` varchar(10) NOT NULL,
  `description` varchar(50) NOT NULL,
  `city` varchar(10) NOT NULL,
  `work_hours` varchar(10) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobposition`
--

INSERT INTO `jobposition` (`code`, `description`, `city`, `work_hours`, `salary`, `available`) VALUES
('ABC-12', 'fdfsdfsdfsd', 'Thessaloni', '8-3', 900, 1),
('fsddsfdfsd', '', 'Thessaloni', '8-3', 900, 1),
('GGG-123', 'Γραμματέας', '', '', 0, 1),
('jh', '', '', '', 0, 1),
('jhjhgjghjg', '', '', '', 0, 1),
('MM-1231', 'Διευθυντής Πωλήσεων', 'Αθήνα', '09:00 - 17', 1200, 1),
('MM-1232', 'Γραμματέας', 'Αθήνα', '09:00 - 17', 620, 1),
('PPP-12', 'Διευθυντής Πωλήσεων', '', '', 0, 0),
('SP-1234', 'Προγραμματιστής', 'Αθήνα', '09:00 - 17', 780, 1),
('SP-1235', 'Προγραμματιστής', 'Θεσσαλονίκ', '09:00 - 17', 700, 1),
('SP-1236', 'Ανάπτυξη και Σχεδίαση Ιστοσελίδων', 'Ηράκλειο', '09:00 - 17', 600, 1),
('TT-1234', 'Καθηγητής Γερμανικών', 'Θεσσαλονίκ', '09:00 - 17', 580, 1),
('TT-1235', 'Φυσικός', 'Αθήνα', '09:00 - 17', 580, 1),
('VVV-123', 'Προγραμματιστής', 'Athens', '8-5', 0, 1),
('XCC-123', '', '', '', 0, 1),
('xcs', 'Προγραμματιστής', '', '', 0, 0),
('XXX-123', 'fgfdgdfgfdgdfgdf', 'Thessaloni', '8-3', 900, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobpositionforeignlanguages`
--

CREATE TABLE IF NOT EXISTS `jobpositionforeignlanguages` (
  `code` varchar(10) NOT NULL,
  `foreignLanguage` varchar(40) NOT NULL,
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobpositionforeignlanguages`
--

INSERT INTO `jobpositionforeignlanguages` (`code`, `foreignLanguage`) VALUES
('XXX-123', 'Î‘Î³Î³Î»Î¹ÎºÎ¬'),
('XXX-123', 'ÎšÎ¹Î½Î­Î¶Î¹ÎºÎ±'),
('XXX-123', 'Spanish'),
('fsddsfdfsd', 'ÎšÎ¹Î½Î­Î¶Î¹ÎºÎ±'),
('ABC-12', 'ÎšÎ¹Î½Î­Î¶Î¹ÎºÎ±'),
('GGG-123', 'Γερμανικά'),
('GGG-123', 'Κινέζικα');

-- --------------------------------------------------------

--
-- Table structure for table `jobpositionskills`
--

CREATE TABLE IF NOT EXISTS `jobpositionskills` (
  `code` varchar(10) NOT NULL,
  `skill` varchar(40) NOT NULL,
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobpositionskills`
--

INSERT INTO `jobpositionskills` (`code`, `skill`) VALUES
('XXX-123', 'Java'),
('XXX-123', 'C'),
('XXX-123', 'C++'),
('XXX-123', 'PHP'),
('fsddsfdfsd', 'Autocad'),
('fsddsfdfsd', 'SQL'),
('fsddsfdfsd', 'MS Office'),
('ABC-12', 'Autocad'),
('ABC-12', 'MS Office'),
('GGG-123', 'Photoshop');

-- --------------------------------------------------------

--
-- Table structure for table `jobpositionstudies`
--

CREATE TABLE IF NOT EXISTS `jobpositionstudies` (
  `code` varchar(10) NOT NULL,
  `diploma` varchar(40) NOT NULL,
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobpositionstudies`
--

INSERT INTO `jobpositionstudies` (`code`, `diploma`) VALUES
('XXX-123', 'Computer Science'),
('XXX-123', 'MSc Computer Science'),
('fsddsfdfsd', 'Computer Science'),
('fsddsfdfsd', 'GFHGFHF'),
('ABC-12', 'Computer Science'),
('xcs', 'Bachelor CS'),
('xcs', 'MSc Computer Science'),
('VVV-123', 'Computer Science'),
('VVV-123', 'Computer Science'),
('PPP-12', 'Communication'),
('PPP-12', 'Management'),
('GGG-123', 'Communication'),
('GGG-123', 'Management');

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE IF NOT EXISTS `professions` (
  `id` int(11) NOT NULL,
  `profession` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `profession`) VALUES
(1, 'Προγραμματιστής'),
(2, 'Μαθηματικός'),
(3, 'Διαφημιστής'),
(4, 'Γραφίστας'),
(5, 'Ανάπτυξη και Σχεδίαση Ιστοσελίδων'),
(6, 'Διευθυντής Πωλήσεων'),
(7, 'Γραμματέας'),
(8, 'Καθηγητής Γερμανικών'),
(9, 'Φυσικός'),
(10, 'Φιλόλογος'),
(11, 'Χημικός'),
(12, 'Πολιτικός Μηχανικός'),
(13, 'Λογιστής');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`) VALUES
(1, 'Java'),
(3, 'Matlab'),
(4, 'AutoCad'),
(5, 'Photoshop'),
(6, 'CorelDraw'),
(8, 'PHP'),
(9, 'SQL'),
(10, 'MS Office'),
(11, 'Python'),
(12, 'C'),
(13, 'Linux');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `individual`
--
ALTER TABLE `individual`
  ADD CONSTRAINT `individual_ibfk_1` FOREIGN KEY (`id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `inidividualforeignlanguages`
--
ALTER TABLE `inidividualforeignlanguages`
  ADD CONSTRAINT `inidividualforeignlanguages_ibfk_1` FOREIGN KEY (`id`) REFERENCES `individual` (`id`);

--
-- Constraints for table `inidividualskills`
--
ALTER TABLE `inidividualskills`
  ADD CONSTRAINT `inidividualskills_ibfk_1` FOREIGN KEY (`id`) REFERENCES `individual` (`id`);

--
-- Constraints for table `inidividualstudies`
--
ALTER TABLE `inidividualstudies`
  ADD CONSTRAINT `inidividualstudies_ibfk_1` FOREIGN KEY (`id`) REFERENCES `individual` (`id`);

--
-- Constraints for table `isoffered`
--
ALTER TABLE `isoffered`
  ADD CONSTRAINT `isoffered_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `isoffered_ibfk_2` FOREIGN KEY (`jobCode`) REFERENCES `jobposition` (`code`),
  ADD CONSTRAINT `isoffered_ibfk_3` FOREIGN KEY (`name`) REFERENCES `headhunters` (`name`);

--
-- Constraints for table `isrequested`
--
ALTER TABLE `isrequested`
  ADD CONSTRAINT `isrequested_ibfk_1` FOREIGN KEY (`individualId`) REFERENCES `individual` (`id`),
  ADD CONSTRAINT `isrequested_ibfk_2` FOREIGN KEY (`name`) REFERENCES `headhunters` (`name`);

--
-- Constraints for table `jobpositionforeignlanguages`
--
ALTER TABLE `jobpositionforeignlanguages`
  ADD CONSTRAINT `jobpositionforeignlanguages_ibfk_1` FOREIGN KEY (`code`) REFERENCES `jobposition` (`code`);

--
-- Constraints for table `jobpositionskills`
--
ALTER TABLE `jobpositionskills`
  ADD CONSTRAINT `jobpositionskills_ibfk_1` FOREIGN KEY (`code`) REFERENCES `jobposition` (`code`);

--
-- Constraints for table `jobpositionstudies`
--
ALTER TABLE `jobpositionstudies`
  ADD CONSTRAINT `jobpositionstudies_ibfk_1` FOREIGN KEY (`code`) REFERENCES `jobposition` (`code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
