-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 11:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentickle`
--

-- --------------------------------------------------------

--
-- Table structure for table `rentickle_categories_tbl`
--

CREATE TABLE `rentickle_categories_tbl` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_logo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0 =  No, 1 = Yes',
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentickle_categories_tbl`
--

INSERT INTO `rentickle_categories_tbl` (`id`, `cat_name`, `cat_logo`, `active`, `datetime`) VALUES
(1, 'Bed Rooms', 'bed-rooms.jpg', 1, '2021-05-24 18:07:20'),
(2, 'Living Rooms', 'Living-rooms.jpg', 1, '2021-05-24 18:07:20'),
(3, 'DSLR Camera', 'dslr-camera.jpg', 1, '2021-05-24 18:07:20'),
(4, 'Appliances', 'appliances.jpg', 1, '2021-05-24 18:07:20'),
(5, 'Storages', 'storages.jpg', 1, '2021-05-24 18:07:20'),
(6, 'Packages', 'pacakags.jpg', 1, '2021-05-24 18:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `rentickle_products_detail_tbl`
--

CREATE TABLE `rentickle_products_detail_tbl` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL COMMENT 'FK',
  `product_id` int(11) NOT NULL COMMENT 'Fk',
  `product_name` varchar(100) NOT NULL,
  `banner_image` varchar(100) NOT NULL,
  `rent` varchar(50) NOT NULL COMMENT 'per month',
  `refundable_deposit` varchar(50) NOT NULL COMMENT '0 = no , 1 = yes',
  `active` int(11) NOT NULL DEFAULT 1,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentickle_products_detail_tbl`
--

INSERT INTO `rentickle_products_detail_tbl` (`id`, `cat_id`, `product_id`, `product_name`, `banner_image`, `rent`, `refundable_deposit`, `active`, `datetime`) VALUES
(1, 1, 1, 'Sofa Baleria', 'baleria.jpg', '799', '1899', 1, '2021-05-24 18:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `rentickle_products_reviews_tbl`
--

CREATE TABLE `rentickle_products_reviews_tbl` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review_detail` text NOT NULL,
  `user_token` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentickle_products_reviews_tbl`
--

INSERT INTO `rentickle_products_reviews_tbl` (`id`, `cat_id`, `product_id`, `review_detail`, `user_token`, `active`, `datetime`) VALUES
(1, 1, 1, 'This is review', '4322r2qffq4rq2rf', 1, '2021-05-24 18:16:38'),
(2, 1, 1, 'This is review 2', 'vfsggresg5ww3tvv', 1, '2021-05-24 18:16:38'),
(3, 1, 2, 'This is review 3', 'fdsf4tfaf4fa4vzs', 1, '2021-05-24 18:16:38'),
(4, 1, 1, 'This is review 4', 'dsfcef45435feawf', 1, '2021-05-24 18:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `rentickle_products_size_tbl`
--

CREATE TABLE `rentickle_products_size_tbl` (
  `id` int(11) NOT NULL,
  `size` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentickle_products_size_tbl`
--

INSERT INTO `rentickle_products_size_tbl` (`id`, `size`, `active`, `datetime`) VALUES
(1, '6 X 3', 1, '2021-05-24 18:17:46'),
(2, '6 X 4', 1, '2021-05-24 18:17:46'),
(3, '6 X 5', 1, '2021-05-24 18:17:46'),
(4, '6 X 6', 1, '2021-05-24 18:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `rentickle_products_tbl`
--

CREATE TABLE `rentickle_products_tbl` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL COMMENT 'FK',
  `product_name` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_logo` varchar(100) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '0 = No, 1 = Yes',
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentickle_products_tbl`
--

INSERT INTO `rentickle_products_tbl` (`id`, `cat_id`, `product_name`, `product_desc`, `product_logo`, `active`, `datetime`) VALUES
(1, 1, 'Sofa Baleria', 'This is Sofa ', 'sofa-baleria.jpg', 1, '2021-05-24 18:11:42'),
(2, 1, 'Dining Table', 'This is Dining Table', 'dining-table.jpg', 1, '2021-05-24 18:11:42'),
(3, 2, 'Fabric Sofa', 'This is Fabric Sofa', 'Fabric-sofa.jpg', 1, '2021-05-24 18:11:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rentickle_categories_tbl`
--
ALTER TABLE `rentickle_categories_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentickle_products_detail_tbl`
--
ALTER TABLE `rentickle_products_detail_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentickle_products_reviews_tbl`
--
ALTER TABLE `rentickle_products_reviews_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentickle_products_size_tbl`
--
ALTER TABLE `rentickle_products_size_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentickle_products_tbl`
--
ALTER TABLE `rentickle_products_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rentickle_categories_tbl`
--
ALTER TABLE `rentickle_categories_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rentickle_products_detail_tbl`
--
ALTER TABLE `rentickle_products_detail_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rentickle_products_reviews_tbl`
--
ALTER TABLE `rentickle_products_reviews_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rentickle_products_size_tbl`
--
ALTER TABLE `rentickle_products_size_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rentickle_products_tbl`
--
ALTER TABLE `rentickle_products_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
