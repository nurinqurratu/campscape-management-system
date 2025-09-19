-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 12:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campscape2`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `statusBooking` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `cust_name`, `package_id`, `payment_id`, `statusBooking`) VALUES
(7, 'Khairiyah Azmi', 10, 8, 'Confirmed'),
(8, 'Nurin Qurr', 7, 9, 'Pending'),
(9, 'Kurnia Amirul', 10, 10, 'Pending'),
(10, 'Nurin Qurr', 11, 11, 'Pending'),
(11, 'Kurnia Amirul', 10, 12, 'Pending'),
(13, 'Nurin Qurr', 7, 14, 'Pending'),
(15, 'Kurnia Amirul', 7, 16, 'Pending'),
(16, 'Kurnia Amirul', 7, 17, 'Pending'),
(17, 'Kurnia Amirul', 10, 18, 'Pending'),
(18, 'Nurin Qurr', 7, 19, 'Pending'),
(19, 'Nurin Qurr', 7, 20, 'Pending'),
(22, 'Kurnia Amirul', 7, 23, 'Pending'),
(23, 'Nurin Qurr', 10, 24, 'Pending'),
(24, 'Khairiyah Azmi', 11, 25, 'Pending'),
(25, 'Kurnia Amirul', 11, 26, 'Pending'),
(26, 'Kurnia Amirul', 7, 27, 'Pending'),
(27, 'Nurin Qurr', 11, 28, 'Pending'),
(28, 'Kurnia Amirul', 7, 29, 'Pending'),
(29, 'Aisya Han', 11, 30, 'Pending'),
(30, 'Khairiyah Azmi', 10, 31, 'Pending'),
(31, 'Nurin Qurr', 7, 32, 'Pending'),
(32, 'Khairiyah', 7, 33, 'Pending'),
(33, 'Khairiyah', 11, 34, 'Pending'),
(34, 'Kurnia Amirul', 7, 35, 'Pending'),
(36, 'Aiman', 7, 37, 'Pending'),
(37, 'baba', 7, 38, 'Pending'),
(38, 'baba', 7, 39, 'Pending'),
(40, 'Khairiyah', 7, 41, 'Pending'),
(41, 'Khairiyah', 7, 42, 'Pending'),
(42, 'Khairiyah', 7, 43, 'Pending'),
(43, 'Khairiyah', 7, 44, 'Pending'),
(44, 'Khairiyah', 7, 45, 'Pending'),
(45, 'Khairiyah', 7, 46, 'Pending'),
(46, 'Khairiyah', 7, 47, 'Pending'),
(47, 'Razan', 10, 48, 'Pending'),
(48, 'Razan', 11, 49, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_fname` varchar(255) NOT NULL,
  `customer_lname` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phonenum` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_fname`, `customer_lname`, `customer_email`, `customer_phonenum`, `customer_password`) VALUES
(1, 'Khairiyah', 'Azmi', 'khaiazmi@gmail.com', '0123456789', '123456'),
(3, 'Nurin', 'Qurr', 'nurinqurr@gmail.com', '0135689741', '789456'),
(5, 'Fad', 'Didi', 'faddidi@gmail.com', '0136248891', 'Fad123'),
(7, 'Aisya', 'Han', 'aisyahan@gmail.com', '0133456789', '789654'),
(8, 'Aisyah', 'Najihah', 'aisyahnaj@gmail.com', '012356897', '321654'),
(9, 'Aisyah', 'Najihah', 'aisyahnaj@gmail.com', '012356897', '321654'),
(11, 'Kurnia', 'Amirul', 'kurniaamirul@gmail.com', '017598765', 'Kur123'),
(12, 'Aiman', 'Fitri', 'aimanfitri@gmail.com', '0175656789', 'Aiman123'),
(13, 'Khairiyah', 'Azmi', 'khaiAzmi@gmail.com', '0123789456', 'khai1234'),
(14, 'Razan', 'Hayani', 'razanhayani@gmail.com', '0167345920', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `package_name`, `description`, `price`, `startDate`, `endDate`, `status`) VALUES
(7, 'Beach Camp', 'Camp along the pristine shores of Pantai Cahaya Bulan, Kelantan.', 250, '2025-02-21', '2025-02-25', 'Available'),
(9, 'Mountain Adventure', 'Explore the mountains with guided tours', 200, '2025-02-17', '2025-02-21', 'Fully Booked'),
(10, 'Family Fun Getaway', 'The perfect retreat for the whole family! This package includes nature walks, interactive games for kids, family cooking sessions, and an evening bonfire. Relax and enjoy some quality time away from the hustle and bustle of everyday life.', 500, '2025-02-14', '2025-02-16', 'Available'),
(11, 'Weekend Getaway', 'Escape for a quick weekend retreat with this package. Includes accommodation in comfortable cabins, all meals, and access to recreational activities like swimming, hiking, and biking.', 250, '2025-02-25', '2025-02-28', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` double NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_date`, `amount`, `payment_method`) VALUES
(1, '2025-02-02', 180, 'credit_card'),
(2, '2025-02-02', 180, 'credit_card'),
(4, '2025-02-02', 180, 'paypal'),
(5, '2025-02-02', 500, 'credit_card'),
(6, '2025-02-02', 500, 'bank_transfer'),
(7, '2025-02-02', 500, 'debit_card'),
(8, '2025-02-02', 180, 'debit_card'),
(9, '2025-02-02', 180, 'bank_transfer'),
(10, '2025-02-02', 500, 'paypal'),
(11, '2025-02-02', 250, 'bank_transfer'),
(12, '2025-02-02', 500, 'bank_transfer'),
(13, '2025-02-02', 250, 'bank_transfer'),
(14, '2025-02-02', 180, 'credit_card'),
(15, '2025-02-02', 250, 'bank_transfer'),
(16, '2025-02-02', 180, 'bank_transfer'),
(17, '2025-02-02', 180, 'bank_transfer'),
(18, '2025-02-02', 500, 'bank_transfer'),
(19, '2025-02-02', 180, 'debit_card'),
(20, '2025-02-02', 180, 'paypal'),
(21, '2025-02-02', 180, 'bank_transfer'),
(22, '2025-02-02', 180, 'bank_transfer'),
(23, '2025-02-02', 180, 'bank_transfer'),
(24, '2025-02-02', 500, 'paypal'),
(25, '2025-02-02', 180, 'bank_transfer'),
(26, '2025-02-02', 250, 'paypal'),
(27, '2025-02-02', 180, 'bank_transfer'),
(28, '2025-02-02', 250, 'bank_transfer'),
(29, '2025-02-02', 180, 'bank_transfer'),
(30, '2025-02-02', 250, 'bank_transfer'),
(31, '2025-02-02', 500, 'bank_transfer'),
(32, '2025-02-03', 180, 'bank_transfer'),
(33, '2025-02-03', 180, 'bank_transfer'),
(34, '2025-02-03', 250, 'bank_transfer'),
(35, '2025-02-03', 250, 'paypal'),
(36, '2025-02-03', 250, 'paypal'),
(37, '2025-02-03', 250, 'bank_transfer'),
(38, '2025-02-03', 250, 'bank_transfer'),
(39, '2025-02-03', 250, 'paypal'),
(40, '2025-02-03', 250, 'paypal'),
(41, '2025-02-04', 250, 'bank_transfer'),
(42, '2025-02-04', 250, 'bank_transfer'),
(43, '2025-02-04', 250, 'paypal'),
(44, '2025-02-04', 250, 'bank_transfer'),
(45, '2025-02-04', 250, 'bank_transfer'),
(46, '2025-02-04', 250, 'bank_transfer'),
(47, '2025-02-04', 250, 'paypal'),
(48, '2025-02-04', 500, 'debit_card'),
(49, '2025-02-04', 250, 'debit_card');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_fname` varchar(255) NOT NULL,
  `staff_lname` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_phonenum` varchar(255) NOT NULL,
  `staff_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `staff_fname`, `staff_lname`, `staff_email`, `staff_phonenum`, `staff_password`) VALUES
(1, 'nurin', 'qurratu', 'nurinqurratu@gmail.com', '0175398021', 'Nurin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `package_id_fk` (`package_id`),
  ADD KEY `payment_id_fk` (`payment_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_id`,`package_id`),
  ADD KEY `package_id_fk1` (`package_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `payment_id_fk` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_id_fk1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `package_id_fk1` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
