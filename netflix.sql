-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 11:09 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `actor_name_r`
--
CREATE TABLE `actor_name_r` (
`name` varchar(20)
,`duration` time
,`release_date` date
,`actor` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `id` varchar(5) DEFAULT NULL,
  `actor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`id`, `actor`) VALUES
('1', 'Rock'),
('2', 'Ester Exposito'),
('3', 'Kathrine Langford'),
('4', 'Maria Pedreza'),
('5', 'Hasan Minaj'),
('6', 'Nawazuddin Siddiqui'),
('7', 'Rock'),
('8', 'Robert Downey Jr.'),
('9', 'Maria Pedreza'),
('10', 'Aaron Paul');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Category_id` varchar(5) NOT NULL,
  `category_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Category_id`, `category_type`) VALUES
('M1', 'Movies'),
('S1', 'Series'),
('T1', 'TV Shows');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` varchar(10) NOT NULL,
  `content_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_type`) VALUES
('A1', 'Action'),
('C1', 'Crime'),
('D1', 'Drama'),
('F1', 'Fiction'),
('H1', 'Horror'),
('R1', 'Romantic'),
('T1', 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `content_detail`
--

CREATE TABLE `content_detail` (
  `id` varchar(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `category_id` varchar(5) DEFAULT NULL,
  `content_type_id` varchar(5) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `ratings` int(10) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `Movie_Links` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_detail`
--

INSERT INTO `content_detail` (`id`, `name`, `category_id`, `content_type_id`, `release_date`, `duration`, `ratings`, `director`, `Movie_Links`) VALUES
('1', 'Hobbs And Shaw', 'M1', 'A1', '2011-09-06', '02:44:00', 4, 'Ankita', 'https://www.netflix.com/ca/title/80150243'),
('10', 'Breaking Bad', 'S1', 'T1', '2011-12-10', '18:00:00', 4, 'Ankita', 'https://www.netflix.com/ca/title/70143836'),
('2', 'Nun', 'M1', 'H1', '2018-11-09', '02:10:00', 3, 'Kamal', 'https://www.netflix.com/cx/title/80233862'),
('3', '13 Reasons Why', 'S1', 'C1', '2014-08-26', '12:54:00', 5, 'Karan', 'https://www.netflix.com/ca/title/80117470'),
('4', 'You', 'S1', 'R1', '2013-05-09', '08:32:00', 4, 'Sandeep', 'https://www.netflix.com/ca/title/80211991'),
('5', 'Patriot Act', 'T1', 'D1', '2014-12-04', '17:00:00', 2, 'Kamal', 'https://www.netflix.com/ca/title/80239931'),
('6', 'Sacred Games', 'T1', 'T1', '2011-08-21', '16:59:00', 5, 'Karan', 'https://www.netflix.com/ca/title/80115328'),
('7', 'Locked Up', 'S1', 'C1', '2019-10-29', '05:00:00', 4, 'Ankita', 'https://www.netflix.com/ca/title/80059465'),
('8', 'Avengers:Endgame', 'M1', 'F1', '2018-08-12', '03:00:00', 5, 'Karan', 'https://www.netflix.com/ca/title/80219127'),
('9', 'Money Heist', 'S1', 'C1', '2015-05-13', '25:00:00', 4, 'Sandeep', 'https://www.netflix.com/ca/title/80192098');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(5) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `customer_status` enum('active','unactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `Name`, `address`, `contact_no`, `email`, `gender`, `customer_status`) VALUES
('1', 'Antin', '07 Lake View Court', '911-887-07', 'hpendrigh0@hugedomai', 'male', 'active'),
('10', 'Retha', '9389 Wayridge Pass', '870-324-44', 'bnorthfield9@wunderg', 'female', 'active'),
('2', 'Hall', '70 Sheridan Court', '893-851-81', 'flathwood1@toplist.c', 'male', 'active'),
('3', 'Reggis', '2 Rutledge Circle', '307-356-70', 'kgorring2@altervista', 'male', 'unactive'),
('4', 'Bron', '936 Kenwood Place', '448-421-37', 'ccody3@smugmug.com', 'male', 'active'),
('5', 'Mordecai', '3404 Briar Crest Circle', '438-377-94', 'wfolker4@github.com', 'male', 'unactive'),
('6', 'Aryn', '84 Ilene Avenue', '519-145-51', 'gdalzell5@stumbleupo', 'female', 'active'),
('7', 'Issy', '2 Green Court', '256-735-63', 'btoffts6@example.com', 'female', 'unactive'),
('8', 'Jere', '02 Mariners Cove Street', '866-799-83', 'ttoal7@businessweek.', 'male', 'unactive'),
('9', 'Oswald', '1 Harbort Avenue', '912-701-44', 'aepinoy8@studiopress', 'male', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_subscription_master`
--

CREATE TABLE `customer_subscription_master` (
  `customer_id` varchar(5) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `subscription_type_ID` enum('B1','S1','P1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_subscription_master`
--

INSERT INTO `customer_subscription_master` (`customer_id`, `subscription_id`, `subscription_type_ID`) VALUES
('1', 11, 'B1'),
('2', 22, 'S1'),
('3', 33, 'P1'),
('4', 44, 'P1'),
('5', 55, 'S1'),
('6', 66, 'B1'),
('7', 77, 'P1'),
('8', 88, 'B1'),
('9', 99, 'P1'),
('10', 100, 'S1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `discount`
--
CREATE TABLE `discount` (
`name` varchar(50)
,`customer_id` varchar(5)
,`subscription_type` enum('Basic','Standard','Premium')
,`payment_cycle_id` varchar(5)
,`yearly_discount` double
,`Amount_After_Discount` double
);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(5) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `payment_method` enum('debit','credit') DEFAULT NULL,
  `payment_cycle` enum('monthly','yearly') DEFAULT NULL,
  `no_of_payments` varchar(10) DEFAULT NULL,
  `payment_cycle_id` varchar(5) DEFAULT NULL,
  `subscription_type_id` enum('B1','S1','P1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_method`, `payment_cycle`, `no_of_payments`, `payment_cycle_id`, `subscription_type_id`) VALUES
('p1', '1', 'debit', 'monthly', '2', 'M1', 'B1'),
('p10', '10', 'debit', 'yearly', '2', 'Y1', 'S1'),
('p2', '2', 'debit', 'yearly', '2', 'Y1', 'S1'),
('p3', '3', 'credit', 'yearly', '1', 'Y1', 'P1'),
('p4', '4', 'credit', 'monthly', '3', 'M1', 'P1'),
('p5', '5', 'credit', 'yearly', '1', 'Y1', 'S1'),
('p6', '6', 'debit', 'yearly', '2', 'Y1', 'B1'),
('p7', '7', 'credit', 'monthly', '1', 'M1', 'P1'),
('p8', '8', 'debit', 'yearly', '1', 'Y1', 'B1'),
('p9', '9', 'credit', 'monthly', '3', 'M1', 'P1');

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `payment_cycle` enum('monthly','yearly') DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `payment_cycle_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`payment_cycle`, `discount`, `payment_cycle_id`) VALUES
('monthly', 5, 'M1'),
('yearly', 30, 'Y1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `subscriptions_by_customers`
--
CREATE TABLE `subscriptions_by_customers` (
);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_type`
--

CREATE TABLE `subscription_type` (
  `subscription_type` enum('Basic','Standard','Premium') DEFAULT NULL,
  `subscription_id` enum('B1','S1','P1') NOT NULL,
  `cost_per_month` float DEFAULT NULL,
  `Screens_available` enum('1','3','5') DEFAULT NULL,
  `Screen_resolution` enum('HD','FHD','UHD') DEFAULT NULL,
  `cost_per_year` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription_type`
--

INSERT INTO `subscription_type` (`subscription_type`, `subscription_id`, `cost_per_month`, `Screens_available`, `Screen_resolution`, `cost_per_year`) VALUES
('Basic', 'B1', 9.99, '1', 'HD', 119.88),
('Standard', 'S1', 13.99, '3', 'FHD', 167.88),
('Premium', 'P1', 16.99, '5', 'UHD', 203.88);

-- --------------------------------------------------------

--
-- Structure for view `actor_name_r`
--
DROP TABLE IF EXISTS `actor_name_r`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `actor_name_r`  AS  select `content_detail`.`name` AS `name`,`content_detail`.`duration` AS `duration`,`content_detail`.`release_date` AS `release_date`,`cast`.`actor` AS `actor` from (`cast` join `content_detail` on((`cast`.`id` = `content_detail`.`id`))) where (`cast`.`actor` like 'R%') ;

-- --------------------------------------------------------

--
-- Structure for view `discount`
--
DROP TABLE IF EXISTS `discount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `discount`  AS  select `customer`.`Name` AS `name`,`customer`.`customer_id` AS `customer_id`,`subscription_type`.`subscription_type` AS `subscription_type`,`special_offers`.`payment_cycle_id` AS `payment_cycle_id`,((`subscription_type`.`cost_per_year` * `special_offers`.`discount`) / 100) AS `yearly_discount`,(`subscription_type`.`cost_per_year` - ((`subscription_type`.`cost_per_year` * `special_offers`.`discount`) / 100)) AS `Amount_After_Discount` from ((((`customer` join `customer_subscription_master`) join `subscription_type`) join `payment`) join `special_offers` on(((`customer`.`customer_id` = `customer_subscription_master`.`customer_id`) and (`customer_subscription_master`.`subscription_type_ID` = `payment`.`subscription_type_id`) and (`customer_subscription_master`.`subscription_type_ID` = `subscription_type`.`subscription_id`) and (`payment`.`payment_cycle_id` = `special_offers`.`payment_cycle_id`)))) where ((`payment`.`payment_cycle_id` = 'M1') and (`payment`.`subscription_type_id` = 'B1') and (`special_offers`.`payment_cycle_id` = 'M1')) group by `customer`.`customer_id` ;

-- --------------------------------------------------------

--
-- Structure for view `subscriptions_by_customers`
--
DROP TABLE IF EXISTS `subscriptions_by_customers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subscriptions_by_customers`  AS  select `customer`.`customer_id` AS `customer_id`,`customer`.`Name` AS `name`,`subscription_type`.`subscription_type` AS `subscription_type`,`subscription_type`.`cost` AS `cost`,`subscription_type`.`Screens_available` AS `screens_available`,`subscription_type`.`Screen_resolution` AS `screen_resolution` from ((`customer` join `subscription_type`) join `customer_subscription_master` on(((`customer`.`customer_id` = `customer_subscription_master`.`customer_id`) and (`customer_subscription_master`.`subscription_type_ID` = `subscription_type`.`subscription_id`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD KEY `id` (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `content_detail`
--
ALTER TABLE `content_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `content_type_id` (`content_type_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_subscription_master`
--
ALTER TABLE `customer_subscription_master`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `subscription_type_ID` (`subscription_type_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `payment_cycle_id` (`payment_cycle_id`),
  ADD KEY `subscription_type_id` (`subscription_type_id`);

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`payment_cycle_id`);

--
-- Indexes for table `subscription_type`
--
ALTER TABLE `subscription_type`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`id`) REFERENCES `content_detail` (`id`);

--
-- Constraints for table `content_detail`
--
ALTER TABLE `content_detail`
  ADD CONSTRAINT `content_detail_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`Category_id`),
  ADD CONSTRAINT `content_detail_ibfk_2` FOREIGN KEY (`content_type_id`) REFERENCES `content` (`content_id`);

--
-- Constraints for table `customer_subscription_master`
--
ALTER TABLE `customer_subscription_master`
  ADD CONSTRAINT `customer_subscription_master_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `customer_subscription_master_ibfk_2` FOREIGN KEY (`subscription_type_ID`) REFERENCES `subscription_type` (`subscription_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_cycle_id`) REFERENCES `special_offers` (`payment_cycle_id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`subscription_type_id`) REFERENCES `subscription_type` (`subscription_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
