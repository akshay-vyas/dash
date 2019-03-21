-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2019 at 09:57 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerces`
--

-- --------------------------------------------------------

--
-- Table structure for table `analytics_report`
--

CREATE TABLE `analytics_report` (
  `analytic_id` int(11) NOT NULL,
  `analytic_name` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `analytic_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analytics_report`
--

INSERT INTO `analytics_report` (`analytic_id`, `analytic_name`, `product_id`, `analytic_date`) VALUES
(1, 'imgs', 2, '2019-02-06'),
(2, 'imgss.png', 2, '2019-02-06'),
(3, 'protein.svg', 6, '2019-02-06'),
(4, 'imgss.png', 1, '2019-02-06'),
(5, 'Screenshot from 2019-02-06 15-56-52.png', 24, '2019-02-25'),
(6, 'Screenshot from 2019-02-18 12-01-40.png', 6, '2019-02-25'),
(7, 'Screenshot from 2019-02-18 12-00-58.png', 5, '2019-02-25'),
(8, 'wallpaper', 6, '2019-02-25'),
(9, 'Screenshot from 2019-02-18 12-02-00.png', 5, '2019-02-25'),
(10, 'Screenshot from 2019-02-06 15-59-56.png', 25, '2019-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `assign_brands`
--

CREATE TABLE `assign_brands` (
  `assign_brand_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `assign_brand_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_brands`
--

INSERT INTO `assign_brands` (`assign_brand_id`, `product_id`, `brand_id`, `assign_brand_status`) VALUES
(8, 10, 3, '0'),
(9, 14, 4, '0'),
(10, 14, 5, '0'),
(11, 23, 7, '0'),
(12, 19, 8, '0'),
(13, 29, 8, '0');

-- --------------------------------------------------------

--
-- Table structure for table `assign_models`
--

CREATE TABLE `assign_models` (
  `assign_model_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `brand_model_id` int(11) NOT NULL,
  `assign_model_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_models`
--

INSERT INTO `assign_models` (`assign_model_id`, `product_id`, `brand_model_id`, `assign_model_status`) VALUES
(21, 10, 4, 0),
(22, 19, 9, 0),
(23, 19, 10, 0),
(24, 19, 11, 0),
(25, 29, 9, 0),
(26, 29, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `assign_product`
--

CREATE TABLE `assign_product` (
  `assign_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_product`
--

INSERT INTO `assign_product` (`assign_id`, `product_id`, `category_id`, `subcategory_id`) VALUES
(8, 10, 5, 17),
(9, 10, 6, 19),
(10, 11, 6, 20),
(11, 12, 7, 21),
(12, 12, 6, 19),
(13, 5, 7, 22),
(14, 25, 5, 17);

-- --------------------------------------------------------

--
-- Table structure for table `assign_subassembly`
--

CREATE TABLE `assign_subassembly` (
  `assign_subassembly_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subassembly_id` int(11) NOT NULL,
  `assign_subassembly_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_subassembly`
--

INSERT INTO `assign_subassembly` (`assign_subassembly_id`, `product_id`, `subassembly_id`, `assign_subassembly_status`) VALUES
(7, 10, 2, '0'),
(8, 10, 2, '0'),
(9, 19, 5, '0'),
(10, 29, 4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subassembly_details`
--

CREATE TABLE `assign_subassembly_details` (
  `assign_subassembly_details_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subassembly_details_id` int(11) NOT NULL,
  `assign_subassemblydetails_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_subassembly_details`
--

INSERT INTO `assign_subassembly_details` (`assign_subassembly_details_id`, `product_id`, `subassembly_details_id`, `assign_subassemblydetails_status`) VALUES
(6, 10, 4, 0),
(7, 19, 5, 0),
(8, 29, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`) VALUES
(1, 'brand'),
(2, 'brand1'),
(3, 'brand2'),
(4, 'honda'),
(5, 'bajaj'),
(6, 'yamaha'),
(7, 'maruti'),
(8, 'Range Rover');

-- --------------------------------------------------------

--
-- Table structure for table `brand_models`
--

CREATE TABLE `brand_models` (
  `brand_model_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `model_year` varchar(6) NOT NULL,
  `model_oem` varchar(25) NOT NULL,
  `model_indian` varchar(25) NOT NULL,
  `model_chines` varchar(25) NOT NULL,
  `brand_model_type` varchar(15) NOT NULL,
  `brand_model_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_models`
--

INSERT INTO `brand_models` (`brand_model_id`, `brand_id`, `model_name`, `model_year`, `model_oem`, `model_indian`, `model_chines`, `brand_model_type`, `brand_model_status`) VALUES
(1, 1, 'brand name', '2010', 'oem', 'indian', 'chines', '2', '0'),
(3, 2, 'brand1 name1', '2011', 'oem', 'NA', 'NA', '2', '0'),
(4, 3, 'brand2 name1', '2015', 'NA', 'indian', 'NA', '4', '0'),
(5, 4, 'dio', '2010', 'oem', 'indian', 'NA', '2', '0'),
(6, 4, 'dio 2', '2010', 'oem', 'NA', 'NA', '2', '0'),
(7, 5, 'pulsar', '2010', 'oem', 'indian', 'chines', '2', '0'),
(8, 5, 'chetak', '1947', 'oem', 'NA', 'NA', '2', '0'),
(9, 8, 'Defender Ninety', '2000', 'oem', 'indian', 'NA', '4', '0'),
(10, 8, 'Defender One Ten', '2010', 'oem', 'indian', 'chines', '4', '0'),
(11, 8, 'Defender 90', '2013', 'oem', 'NA', 'NA', '4', '0'),
(12, 8, 'Defender 110', '2015', 'oem', 'NA', 'NA', '4', '0'),
(13, 8, 'Range Rover Classic', '2015', 'oem', 'NA', 'NA', '4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_registration`
--

CREATE TABLE `buyer_registration` (
  `buyer_id` int(11) NOT NULL,
  `buyer_name` varchar(30) NOT NULL,
  `buyer_email` varchar(35) NOT NULL,
  `buyer_mobile` varchar(13) NOT NULL,
  `buyer_address` varchar(50) NOT NULL,
  `buyer_pincode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_registration`
--

INSERT INTO `buyer_registration` (`buyer_id`, `buyer_name`, `buyer_email`, `buyer_mobile`, `buyer_address`, `buyer_pincode`) VALUES
(1, 'ram', 'ram@gmail.com', '9945047993', 'mysore', '570011'),
(2, 'duddu', 'duddu@gmail.com', '8124453645', 'banglore', '529901'),
(3, 'chandra', 'chandra@gmail.com', '8864738293', 'coorg', '567380'),
(4, 'pari', 'pari@gmail.com', '8834563456', 'udupi', '556603'),
(5, 'nila', 'nila@gmail.com', '9945637993', 'jaipur', '570022');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `cart_quantity` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cart_status` text NOT NULL,
  `ordered_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `processing_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipped_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delivered_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cancelled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `buyer_id`, `shipping_id`, `cart_quantity`, `added_date`, `cart_status`, `ordered_date`, `processing_date`, `shipped_date`, `delivered_date`, `cancelled_date`) VALUES
(1, 2, 1, 2, 1, '2019-03-10 07:07:57', 'shipped', '2019-02-24 20:57:18', '2019-03-10 07:07:50', '2019-03-10 07:07:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, 2, 1, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 1, 2, 3, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 1, 2, 3, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 1, 2, 3, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 1, 2, 3, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '2019-02-12 07:29:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 1, 2, 3, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 5, 1, 2, 2, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '2019-02-25 05:36:03', '2019-02-25 05:48:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6, 1, 2, 1, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '2019-02-12 07:24:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 1, 2, 1, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 1, 2, 2, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 5, 1, 2, 1, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 5, 1, 2, 1, '2019-02-25 08:57:18', 'placed', '2019-02-24 20:57:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 1, 2, 1, '2019-02-25 09:08:32', 'placed', '2019-02-24 21:08:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 15, 1, 2, 1, '2019-02-25 09:08:32', 'placed', '2019-02-24 21:08:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 15, 1, 2, 1, '2019-02-25 09:10:22', 'placed', '2019-02-24 21:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 15, 1, 1, 1, '2019-02-25 09:12:52', 'placed', '2019-02-25 09:08:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 14, 1, 1, 1, '2019-03-10 08:00:42', 'processing', '2019-02-24 21:16:35', '2019-03-09 20:00:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 14, 1, 2, 1, '2019-03-10 08:00:31', 'processing', '2019-02-24 21:18:18', '2019-03-09 20:00:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 1, 2, 1, '2019-02-26 05:07:07', 'placed', '2019-02-26 05:07:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_registration`
--

CREATE TABLE `catalog_registration` (
  `catalog_id` int(11) NOT NULL,
  `catalog_name` varchar(50) NOT NULL,
  `catalog_email` varchar(50) NOT NULL,
  `catalog_mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalog_registration`
--

INSERT INTO `catalog_registration` (`catalog_id`, `catalog_name`, `catalog_email`, `catalog_mobile`) VALUES
(1, 'dinesh', 'dinesh@gmail.com', '8123619477'),
(2, 'shikha', 'shikha@gmail.com', '9901307956');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(5, 'category1'),
(6, 'category2'),
(7, 'category3'),
(8, 'category4');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`img_id`, `image_name`, `product_id`) VALUES
(11, 'logo3.jpg', 2),
(12, 'user2-160x160.jpg', 5),
(13, 'user2-160x160.jpg', 2),
(14, 'imgss.png', 2),
(15, 'logo3.jpg', 2),
(16, 'logo3.jpg', 1),
(17, 'logo3.jpg', 6),
(18, 'logo3.jpg', 7),
(20, 'logo3.jpg', 11),
(21, 'logo3.jpg', 12),
(22, 'logo3.jpg', 13),
(23, 'imgss.png', 14),
(24, 'imgss.png', 15),
(25, 'imgss.png', 16),
(26, 'imgss.png', 17),
(27, 'imgss.png', 18),
(28, 'imgss.png', 19),
(29, 'user2-160x160.jpg', 20),
(30, 'user2-160x160.jpg', 21),
(31, 'Screenshot from 2019-02-06 15-59-14.png', 24),
(32, 'Screenshot from 2019-02-18 12-02-22.png', 24),
(57, 'Screenshot from 2019-02-06 15-59-56.png', 10),
(58, 'Screenshot from 2019-03-21 12-12-04.png', 29);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `email`, `mobile`, `password`, `type`) VALUES
(1, 'akshay@gmail.com', '8123619432', '123', 'seller'),
(2, 'maya@gmail.com', '813619432', '123', 'seller'),
(4, 'dinesh@gmail.com', '948046233', '123', 'catalog'),
(5, 'shikha@gmail.com', '9901307955', '123', 'catalog'),
(6, 'ram@gmail.com', '9945047993', '123', 'buyer'),
(7, 'pari@gmail.com', '8834563456', '123', 'buyer');

-- --------------------------------------------------------

--
-- Table structure for table `model_subassembly`
--

CREATE TABLE `model_subassembly` (
  `subassembly_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `subassembly_name` varchar(30) NOT NULL,
  `subassembly_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model_subassembly`
--

INSERT INTO `model_subassembly` (`subassembly_id`, `brand_id`, `model_id`, `subassembly_name`, `subassembly_status`) VALUES
(1, 1, 3, 'brand 1 name 1', '0'),
(2, 3, 4, 'sub assembly brand 1', '0'),
(3, 1, 3, 'ok', '0'),
(4, 8, 9, 'Shock Absorber', '0'),
(5, 8, 10, 'Shock Absorber', '0'),
(6, 8, 12, 'Shock Absorber', '0'),
(7, 8, 13, 'Shock Absorber', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_sku` varchar(50) NOT NULL,
  `product_quantity` varchar(50) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_color` varchar(50) NOT NULL,
  `product_oem` varchar(50) NOT NULL,
  `product_model` varchar(50) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `product_design` varchar(50) NOT NULL,
  `product_material` varchar(50) NOT NULL,
  `product_series` varchar(50) NOT NULL,
  `product_dimension` varchar(50) NOT NULL,
  `product_note` varchar(500) NOT NULL,
  `product_part_number` varchar(50) NOT NULL,
  `product_part_brand` varchar(50) NOT NULL,
  `product_vechicle_brand` varchar(50) NOT NULL,
  `product_owner` varchar(50) NOT NULL,
  `product_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_sku`, `product_quantity`, `product_price`, `product_color`, `product_oem`, `product_model`, `product_location`, `product_design`, `product_material`, `product_series`, `product_dimension`, `product_note`, `product_part_number`, `product_part_brand`, `product_vechicle_brand`, `product_owner`, `product_status`) VALUES
(10, 'Air Filter Assly.', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'PD 5810 13', '', '', 'akshay@gmail.com', 'verified'),
(11, 'Screw M6', '', '5', '600', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', '39 2044 01', '', '', 'akshay@gmail.com', 'verified'),
(12, 'Bracket air Filter', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'PD 5810 17', '', '', 'akshay@gmail.com', 'verified'),
(13, 'Tube Drain', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'PD 5810 12', '', '', 'akshay@gmail.com', 'verified'),
(14, 'Boot', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'PD 5810 11', '', '', 'akshay@gmail.com', 'verified'),
(15, 'Element Air Filter', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DG 1210 10', '', '', 'akshay@gmail.com', 'verified'),
(16, 'Gasket', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DG 1210 12', '', '', 'akshay@gmail.com', 'verified'),
(17, 'Tube Connecting', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'JM 1010 17', '', '', 'maya@gmail.com', 'verified'),
(18, 'Clamp', '', '2', '900', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DP 1210 18', '', '', 'maya@gmail.com', 'verified'),
(19, 'Breather Tube', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'PD 5810 09', '', '', 'maya@gmail.com', 'verified'),
(20, 'Plug', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DS 1211 26', '', '', 'maya@gmail.com', 'verified'),
(21, 'Clamp', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DG 1210 02', '', '', 'maya@gmail.com', 'verified'),
(22, 'Tube Drain(Air Filter)', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'DV 1010 59', '', '', 'maya@gmail.com', 'pending'),
(23, 'Clamp', '', '1', '200', '', 'Bajaj', 'Avenger 150 Street', 'pune', '', '', '', '', '', 'JK 5110 02', '', '', 'maya@gmail.com', 'verified'),
(29, 'Defender 90/110/Classic Rear Oil Shock Absorber Standard Part BR1077', '', '25', '10000', '', '', 'Range Rover', '', '', '', '', '6lb 4oz', 'As well as controlling the movement of suspension and springs, shock absorbers keep your tyres connected to the ground whilst stationary and in motion. The shock absorbs kinetic energy and transfers it to another form, usually heat, before dissipating it.', 'BR1077', 'BOGE', '', 'akshay@gmail.com', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `seller_registration`
--

CREATE TABLE `seller_registration` (
  `seller_id` int(20) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_mobile` varchar(13) NOT NULL,
  `seller_email` varchar(35) NOT NULL,
  `seller_address` varchar(100) NOT NULL,
  `gst` varchar(25) NOT NULL,
  `tin` varchar(25) NOT NULL,
  `pan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_registration`
--

INSERT INTO `seller_registration` (`seller_id`, `seller_name`, `seller_mobile`, `seller_email`, `seller_address`, `gst`, `tin`, `pan`) VALUES
(3, 'akshay', '8123619432', 'akshay@gmail.com', '#33', '123', '456', '4566'),
(4, 'maya', '813619432', 'maya@gmail.com', '#456', '125645', '156132132', '123586486');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `shipping_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `mobile_address` text NOT NULL,
  `company_address` text NOT NULL,
  `street_address` text NOT NULL,
  `country_address` text NOT NULL,
  `state_address` text NOT NULL,
  `city_address` text NOT NULL,
  `pincode_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`shipping_id`, `buyer_id`, `first_name`, `last_name`, `mobile_address`, `company_address`, `street_address`, `country_address`, `state_address`, `city_address`, `pincode_address`) VALUES
(1, 1, 'akshay', 'vyas', '8123619433', 'bii', 'bangargetta', 'India', 'karnataka', 'banglore', '582101'),
(2, 1, 'indushree', 'k', '8123326322', 'biin', 'bangargetta', 'India', 'karnataka', 'banglore', '582101');

-- --------------------------------------------------------

--
-- Table structure for table `subassembly_details`
--

CREATE TABLE `subassembly_details` (
  `subassembly_details_id` int(11) NOT NULL,
  `subassembly_id` int(11) NOT NULL,
  `subassembly_details` varchar(250) NOT NULL,
  `subassembly_details_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subassembly_details`
--

INSERT INTO `subassembly_details` (`subassembly_details_id`, `subassembly_id`, `subassembly_details`, `subassembly_details_status`) VALUES
(1, 3, 'o kk k ', '0'),
(4, 2, 'sub sub', '0'),
(5, 4, 'Supersedes: NTC7949, NRC8456, RTC4639, STC292, STC2855, STC3771', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `category_id`, `sub_category_name`) VALUES
(17, 5, 'category1sub1'),
(18, 5, 'category1sub2'),
(19, 6, 'category2sub1'),
(20, 6, 'category2sub2'),
(21, 7, 'category3sub1'),
(22, 7, 'category3sub2'),
(23, 8, 'category4sub1');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` varchar(35) NOT NULL,
  `buyer_id` varchar(35) NOT NULL,
  `added_dates` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analytics_report`
--
ALTER TABLE `analytics_report`
  ADD PRIMARY KEY (`analytic_id`);

--
-- Indexes for table `assign_brands`
--
ALTER TABLE `assign_brands`
  ADD PRIMARY KEY (`assign_brand_id`);

--
-- Indexes for table `assign_models`
--
ALTER TABLE `assign_models`
  ADD PRIMARY KEY (`assign_model_id`);

--
-- Indexes for table `assign_product`
--
ALTER TABLE `assign_product`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `assign_subassembly`
--
ALTER TABLE `assign_subassembly`
  ADD PRIMARY KEY (`assign_subassembly_id`);

--
-- Indexes for table `assign_subassembly_details`
--
ALTER TABLE `assign_subassembly_details`
  ADD PRIMARY KEY (`assign_subassembly_details_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `brand_models`
--
ALTER TABLE `brand_models`
  ADD PRIMARY KEY (`brand_model_id`);

--
-- Indexes for table `buyer_registration`
--
ALTER TABLE `buyer_registration`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `catalog_registration`
--
ALTER TABLE `catalog_registration`
  ADD PRIMARY KEY (`catalog_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `model_subassembly`
--
ALTER TABLE `model_subassembly`
  ADD PRIMARY KEY (`subassembly_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `seller_registration`
--
ALTER TABLE `seller_registration`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `subassembly_details`
--
ALTER TABLE `subassembly_details`
  ADD PRIMARY KEY (`subassembly_details_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analytics_report`
--
ALTER TABLE `analytics_report`
  MODIFY `analytic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `assign_brands`
--
ALTER TABLE `assign_brands`
  MODIFY `assign_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `assign_models`
--
ALTER TABLE `assign_models`
  MODIFY `assign_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `assign_product`
--
ALTER TABLE `assign_product`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `assign_subassembly`
--
ALTER TABLE `assign_subassembly`
  MODIFY `assign_subassembly_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `assign_subassembly_details`
--
ALTER TABLE `assign_subassembly_details`
  MODIFY `assign_subassembly_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `brand_models`
--
ALTER TABLE `brand_models`
  MODIFY `brand_model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `buyer_registration`
--
ALTER TABLE `buyer_registration`
  MODIFY `buyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `catalog_registration`
--
ALTER TABLE `catalog_registration`
  MODIFY `catalog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `model_subassembly`
--
ALTER TABLE `model_subassembly`
  MODIFY `subassembly_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `seller_registration`
--
ALTER TABLE `seller_registration`
  MODIFY `seller_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subassembly_details`
--
ALTER TABLE `subassembly_details`
  MODIFY `subassembly_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
