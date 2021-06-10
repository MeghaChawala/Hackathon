-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2018 at 10:01 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_tbl`
--

CREATE TABLE `aadhar_tbl` (
  `Aadhar_no` varchar(12) NOT NULL,
  `BPL_no` varchar(17) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(5) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Pincode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aadhar_tbl`
--

INSERT INTO `aadhar_tbl` (`Aadhar_no`, `BPL_no`, `Name`, `Gender`, `Phone_no`, `Address`, `Pincode`) VALUES
('25-956-1275', '12345678945612375', 'Megha Chawla', 'F', '8866039354', 'Anand', '388001'),
('785412369851', '12345678945612375', 'Azim Surani', 'M', '9898411643', 'Anand', '388001'),
('785412369853', '85463210014589752', 'Surani Salim', 'male', '7990766495', 'Anand', '388001'),
('78965412365', '12345678945612375', 'Hrishika Vachhani', 'F', '7843804072', 'Gandhinagar', '388956'),
('845967254169', '74589632011005245', 'Dhruvin Kanani', 'M', '8401135676', 'Anand', '388001'),
('965321485675', '32015236487596412', 'Preet Rana', 'M', '7383139811', 'Anand', '388001'),
('987654321', '987654987', 'demo', 'Male', '987654321', 'demo', '987654');

-- --------------------------------------------------------

--
-- Table structure for table `awas_tbl`
--

CREATE TABLE `awas_tbl` (
  `id` int(20) NOT NULL,
  `IFSCcode` varchar(12) DEFAULT NULL,
  `Branch name` varchar(10) DEFAULT NULL,
  `Account no` varchar(11) DEFAULT NULL,
  `Income certi` varchar(11) DEFAULT NULL,
  `Tax_payment_receipt` varchar(11) DEFAULT NULL,
  `State name` varchar(11) DEFAULT NULL,
  `district name` varchar(11) DEFAULT NULL,
  `Type_of_house` varchar(11) DEFAULT NULL,
  `Ownership_detail` varchar(11) DEFAULT NULL,
  `noofrooms` int(11) DEFAULT NULL,
  `voterId card` varchar(11) DEFAULT NULL,
  `pancard` varchar(11) DEFAULT NULL,
  `Driving licance` varchar(11) DEFAULT NULL,
  `religion` varchar(11) DEFAULT NULL,
  `cast` varchar(11) DEFAULT NULL,
  `aadhar_no` varchar(12) DEFAULT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'PENDING',
  `Yojna` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awas_tbl`
--

INSERT INTO `awas_tbl` (`id`, `IFSCcode`, `Branch name`, `Account no`, `Income certi`, `Tax_payment_receipt`, `State name`, `district name`, `Type_of_house`, `Ownership_detail`, `noofrooms`, `voterId card`, `pancard`, `Driving licance`, `religion`, `cast`, `aadhar_no`, `fullname`, `gender`, `address`, `dob`, `age`, `father_name`, `contact_no`, `status`, `Yojna`) VALUES
(1, '123', 'Anand', '894896561', '45512', '', 'Gujarat', 'Anand', 'Kaccha', '', 2, '', '48566', '84611', '', '', '785412369851', 'Surani Azim', 'Male', 'Anand', '26/11/1997', '20', 'Surani Karimbhai', '8460878920', 'REJECTED', ''),
(2, '25896455', 'sBi', '785962236', '856942', '256', 'Gujarat', 'anAND', '', '8965', 2, '8965236', '745213', '2365', 'hindu', '', '25-956-1275', 'megha', 'F', 'anand', '21-12-1997', '20', 'subhashbhai', '8866039354', 'ACCEPTED', 'pmay'),
(4, '8562', '25698', '78569', '8526', '245', 'Gujarat', 'anand', '', '', 2, '98566', '7452', '9586', 'hindu', '', '78965412365', 'hrishika', 'F', '', '', '', '', '', 'REJECTED', 'spay'),
(5, '8562', '78562', '12546', '1253', '785', 'Gujarat', 'anand', '', '7856', 2, '96325', '42563', '125', 'hindu', '', '965321485675', 'PREET', 'Male', 'anand', '8-5-1669', '50', 'VIKAS', '256341256', 'PENDING', 'SPAY');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `aadhar_no` varchar(12) NOT NULL,
  `full_name` varchar(70) NOT NULL,
  `father_name` varchar(70) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`aadhar_no`, `full_name`, `father_name`, `password`, `dob`, `gender`, `mobile_no`, `address`, `pincode`, `active`) VALUES
('785412369851', 'Azim Surani', 'Karim Surani', '1234', '1997-11-26', 'male', '8460878920', 'Anand', '388001', 0),
('785412369853', 'Salim Surani', 'Surani', '1234', '1985-12-26', 'female', '4185418541', 'Anand', '388001', 0),
('845967254169', 'Dhruvin Kanani', 'kANJI KAKA', '1234', '1997-05-05', 'male', '4444111122', 'Beghar', '388888', 0),
('965321485675', 'Preet Rana', 'Rana Rana', '1234', '1997-11-25', 'male', '4444111100', 'asdssadasf', '388001', 0),
('987654321', 'demo', 'demo', 'demo', '1997-05-05', 'male', '7878787878', 'demo', '544', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar_tbl`
--
ALTER TABLE `aadhar_tbl`
  ADD PRIMARY KEY (`Aadhar_no`);

--
-- Indexes for table `awas_tbl`
--
ALTER TABLE `awas_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`aadhar_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awas_tbl`
--
ALTER TABLE `awas_tbl`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`aadhar_no`) REFERENCES `aadhar_tbl` (`Aadhar_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
