-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 11:12 AM
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
-- Database: `dentalclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `insurancedetails`
--

CREATE TABLE `insurancedetails` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_contact` varchar(10) DEFAULT NULL,
  `insurance_type` varchar(50) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
  `amount_paid` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurancedetails`
--

INSERT INTO `insurancedetails` (`id`, `company_name`, `company_contact`, `insurance_type`, `total_amount`, `amount_paid`, `balance`) VALUES
(1, 'AIA', '6789011', 'Medical', '10,000.00', '5,000.00', '5,000.00'),
(2, 'MaxX', '0198999829', 'Household', '10000', '8500', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `invoicedetails`
--

CREATE TABLE `invoicedetails` (
  `id` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoicedetails`
--

INSERT INTO `invoicedetails` (`id`, `invoice`) VALUES
(1, 'Insurance1009'),
(2, 'Insurance2019');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_details` varchar(100) NOT NULL,
  `assigned_doctor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`id`, `patient_name`, `patient_details`, `assigned_doctor`) VALUES
(1, 'Rahman', 'Dental', 'Dr Amalina');

-- --------------------------------------------------------

--
-- Table structure for table `staffdetails`
--

CREATE TABLE `staffdetails` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `staff_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffdetails`
--

INSERT INTO `staffdetails` (`id`, `staff_name`, `staff_details`) VALUES
(1, 'Dr Amalina', 'Dentist'),
(2, 'Dr Abu', 'Dental Hygienist'),
(3, 'Dr Ali', 'X-Ray Technician');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`) VALUES
(1, 'admin1', 'admin123'),
(2, 'admin2', 'admin456');

-- --------------------------------------------------------

--
-- Table structure for table `med inventory`
--

CREATE TABLE `medicineinventory` (
  `id` int(11) NOT NULL,
  `med_name` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price_per_unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurancedetails`
--

INSERT INTO `medicineinventory` (`id`, `med_name`, `manufacturer`, `quantity`, `price_per_unit`) VALUES
(1, 'Cystone', 'Himalaya', '100', '0.80'),
(2, 'Metyl-25', 'Meta Parma', '100', '1.25');

-- --------------------------------------------------------

--
-- Table structure for table `dentalreport`
--

CREATE TABLE `dentalreport` (
  `id` int(11) NOT NULL,
  `diagnostic_proc` varchar(100) NOT NULL,
  `cavities` varchar(50) NOT NULL,
  `decay` varchar(50) NOT NULL,
  `gums` varchar(100) NOT NULL,
  `recommendation` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicalleave`
--

CREATE TABLE `medicalleave` (
  `id` int(11) NOT NULL,
  `dentist_name` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `ic_no` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `days_no` varchar(50) NOT NULL,
  `date_issued` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Indexes for dumped tables
--

--
-- Indexes for table `dentalreport`
--
ALTER TABLE `dentalreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicalleave`
--
ALTER TABLE `medicalleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine inventory`
--
ALTER TABLE `medicineinventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurancedetails`
--
ALTER TABLE `insurancedetails`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `invoicedetails`
--
ALTER TABLE `invoicedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffdetails`
--
ALTER TABLE `staffdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicalleave`
--
ALTER TABLE `medicalleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `dentalreport`
--
ALTER TABLE `dentalreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `medicineinventroy`
--
ALTER TABLE `medicineinventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoicedetails`
--
ALTER TABLE `invoicedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patientdetails`
--
ALTER TABLE `patientdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staffdetails`
--
ALTER TABLE `staffdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurancedetails`
--
ALTER TABLE `insurancedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
