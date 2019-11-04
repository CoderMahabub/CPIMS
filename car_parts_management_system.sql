-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2017 at 05:45 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_parts_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_parts_installation_information`
--

CREATE TABLE `car_parts_installation_information` (
  `sl` int(20) NOT NULL,
  `parts_code` varchar(50) NOT NULL,
  `parts_price` varchar(50) NOT NULL,
  `install_date` varchar(50) NOT NULL,
  `car_model` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_parts_installation_information`
--

INSERT INTO `car_parts_installation_information` (`sl`, `parts_code`, `parts_price`, `install_date`, `car_model`) VALUES
(11, 'parts005', '5000', '2017-12-01', 'mo_001'),
(12, 'parts002', '50000', '2017-12-25', 'mo_002'),
(13, 'parts004', '5000', '2017-12-04', 'mo_003'),
(14, 'parts005', '50004', '2017-12-18', 'mo_003'),
(15, 'parts001', '5000', '2017-12-11', 'mo_003'),
(16, 'parts009', '5000', '2017-12-27', 'mo_003');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `sl` int(20) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`sl`, `customer_id`, `customer_name`, `customer_address`, `contact_number`) VALUES
(6, 'cus002', 'Mr.Mahabub', 'uttara,Dhaka', '2017-12-20'),
(7, 'cus003', 'KHadiza', 'uttara,Dhaka', '2017-12-21'),
(8, 'cus004', 'Hujaifa', 'tejgaon', '2017-12-27'),
(9, 'cus005', 'Amm', 'Khilkhet', '2017-12-08'),
(10, 'cus001', 'Mr.Hasan', 'uttara,Dhaka', '2017-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `location_information`
--

CREATE TABLE `location_information` (
  `sl` int(20) NOT NULL,
  `location_code` varchar(50) NOT NULL,
  `location_direction` varchar(50) NOT NULL,
  `shelf_location` varchar(50) NOT NULL,
  `shelf_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_information`
--

INSERT INTO `location_information` (`sl`, `location_code`, `location_direction`, `shelf_location`, `shelf_no`) VALUES
(3, 'loc001', 'Right', '3rd', 'shelf001'),
(4, 'loc002', 'Left', '2nd', 'shelf002'),
(5, 'loc003', 'Left', '2nd', 'shelf003'),
(6, 'loc004', 'Right', '1st', 'shelf004'),
(7, 'loc005', 'Above', '5th', 'shelf005');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_information`
--

CREATE TABLE `order_delivery_information` (
  `sl` int(20) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `order_delivery_date` varchar(50) NOT NULL,
  `order_receive_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_delivery_information`
--

INSERT INTO `order_delivery_information` (`sl`, `order_id`, `order_date`, `order_delivery_date`, `order_receive_date`) VALUES
(3, 'Or-002', '2017-12-15', '2017-12-20', '2017-12-30'),
(4, 'Or-001', '2017-12-14', '2017-12-08', '2017-12-29'),
(5, 'Or-002', '2017-12-08', '2017-12-14', '2017-12-27'),
(6, 'Or-005', '2017-12-07', '2017-12-19', '2017-11-30'),
(7, 'Or-004', '2017-12-05', '2017-12-21', '2017-12-31'),
(8, 'Or-002', '2017-12-04', '2017-12-06', '2017-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `order_information`
--

CREATE TABLE `order_information` (
  `sl` int(20) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `location_code` varchar(50) NOT NULL,
  `parts_code` varchar(50) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `order_delivery_date` varchar(50) NOT NULL,
  `order_unit_price` varchar(50) NOT NULL,
  `order_total_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_information`
--

INSERT INTO `order_information` (`sl`, `order_id`, `customer_id`, `location_code`, `parts_code`, `order_date`, `order_delivery_date`, `order_unit_price`, `order_total_price`) VALUES
(2, 'Or-001', 'Cus_001', 'Right', 'parts005aqa', '2017-11-26', '2017-12-01', '500', '5000'),
(3, 'Or-002', 'cus002', 'Left', 'parts001', '2017-11-27', '2017-12-01', '1000', '4000'),
(4, 'Or-003', 'cus005', 'Left', 'parts002', '2017-11-27', '2017-12-01', '10000', '40000'),
(5, 'Or-004', 'cus002', 'Left', 'parts005', '2017-11-14', '2017-12-20', '1000', '4000'),
(6, 'Or-005', 'cus001', 'Left', 'parts001', '2017-12-12', '2017-12-22', '500', '120000'),
(8, 'Or-002', 'cus001', 'Left', 'parts009', '2018-01-02', '2017-12-19', '1000', '120000'),
(9, 'Or-002', 'dd', 'Left', 'parts009', '2017-12-11', '2017-12-26', '10000', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `parts_information`
--

CREATE TABLE `parts_information` (
  `sl` int(20) NOT NULL,
  `parts_code` varchar(50) NOT NULL,
  `parts_purpose` varchar(50) NOT NULL,
  `current_parts_quantity` varchar(50) NOT NULL,
  `parts_unit_price` varchar(50) NOT NULL,
  `location_code` varchar(50) NOT NULL,
  `parts_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parts_information`
--

INSERT INTO `parts_information` (`sl`, `parts_code`, `parts_purpose`, `current_parts_quantity`, `parts_unit_price`, `location_code`, `parts_name`) VALUES
(7, 'parts001', 'Wheel', '500', '500', 'Left', 'Wheel Ring'),
(8, 'parts002', 'Engine', '50', '50000', 'Right', 'machine'),
(9, 'parts003', 'headlight', '600', '500', '2nd Left', 'light'),
(10, 'parts004', 'horn', '600', '50', 'Left', 'horn'),
(11, 'parts005', 'stayaring', '60', '230', 'Right', 'leather'),
(12, 'parts006', 'None', '10', '500', 'loc001', 'Darag'),
(13, 'parts002', 'Engine', '6', '100', 'loc001', 'engin');

-- --------------------------------------------------------

--
-- Table structure for table `payment_information`
--

CREATE TABLE `payment_information` (
  `sl` int(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `parts_code` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `due_amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_information`
--

INSERT INTO `payment_information` (`sl`, `invoice_no`, `parts_code`, `customer_id`, `order_id`, `unit_price`, `total_price`, `paid_amount`, `due_amount`) VALUES
(1, 'inv_001', 'parts001', 'cus001', 'Or-002', '500', '5000', '4000', '1000'),
(2, 'inv_002', 'parts004', 'cus005', 'Or-003', '300', '1500', '1500', '00'),
(3, 'inv_003', 'parts004', 'cus005', 'Or-005', '500', '1500', '15000', '400'),
(4, 'inv_005', 'parts001', 'cus001', 'Or-003', '5003', '15003', '150002', '4003'),
(5, 'inv_004', 'parts005', 'cus002', 'Or-004', '5000', '1500', '1500', '000'),
(6, 'inv_001', 'parts009', 'cus001', 'Or-002', '500', '600', '100', '10');

-- --------------------------------------------------------

--
-- Table structure for table `price_information`
--

CREATE TABLE `price_information` (
  `sl` int(20) NOT NULL,
  `parts_code` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_information`
--

INSERT INTO `price_information` (`sl`, `parts_code`, `unit_price`, `total_price`) VALUES
(2, 'parts001', '500', '5000'),
(3, 'parts002', '5000', '5000'),
(4, 'parts004', '50', '500'),
(5, 'parts005', '120', '1200'),
(6, 'parts004', '120', '12004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_parts_installation_information`
--
ALTER TABLE `car_parts_installation_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `location_information`
--
ALTER TABLE `location_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `order_delivery_information`
--
ALTER TABLE `order_delivery_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `order_information`
--
ALTER TABLE `order_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `parts_information`
--
ALTER TABLE `parts_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `payment_information`
--
ALTER TABLE `payment_information`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `price_information`
--
ALTER TABLE `price_information`
  ADD PRIMARY KEY (`sl`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_parts_installation_information`
--
ALTER TABLE `car_parts_installation_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location_information`
--
ALTER TABLE `location_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_delivery_information`
--
ALTER TABLE `order_delivery_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_information`
--
ALTER TABLE `order_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parts_information`
--
ALTER TABLE `parts_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_information`
--
ALTER TABLE `payment_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `price_information`
--
ALTER TABLE `price_information`
  MODIFY `sl` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
