-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 04:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_staff`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(2, 'Computer Science and Engineering', 'CSE', '2017-11-01 07:19:37'),
(3, 'Library', 'LIb', '2021-05-21 08:27:45'),
(4, 'Electronic and Communication Engineering', 'ece', '2022-11-30 06:24:05');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`) VALUES
(1, 'madumidtha', 'MP', 'madhu@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '3 February, 1990', 'CSE', 'N NEPO', '26', '0248865955', 1, '2017-11-10 11:29:59', 'Staff', 'lms.png'),
(2, 'Alwarswamy', 'T', 'alwar@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '14 may,1970', 'ALL', 'N NEPO', '30', '8587944255', 1, '2017-11-10 13:40:02', 'Admin', 'NO-IMAGE-AVAILABLE.jpg'),
(4, 'Vijayan', 'R', 'vijayan@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '2 june,1989', 'ALL', 'N NEPO', '30', '587944255', 1, '2022-11-01 13:40:02', 'Admin', 'NO-IMAGE-AVAILABLE.jpg'),
(5, 'Nafeesa', 'Begam', 'nafeesa@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '13 september, 1975', 'CSE', 'N NEPO', '30', '587944255', 1, '2022-11-02 06:02:59', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(6, 'Gaja', 'lakshmi', 'gaja@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '29 september, 2004', 'CSE', 'N NEPO', '30', '587944255', 1, '2022-11-14 00:07:09', 'Student', 'NO-IMAGE-AVAILABLE.jpg'),
(7, 'Ramya', 'S', 'ramya@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '26 April, 2000 ', 'CSE', 'N NEPO', '1', '0596667981', 1, '2022-11-15 10:02:14', 'Student', 'NO-IMAGE-AVAILABLE.jpg'),
(8, 'Letitia', 'S', 'letitia@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Female', '29 February,1977', 'ECE', 'N NEPO', '30', '587944255', 1, '2022-11-16 05:17:13', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(9, 'Revi', 'k', 'revi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Male', '26 June,2001', 'ECE', 'ABC street, chennai,TN', '15', '1234567890', 1, '2022-11-30 06:31:54', 'Student', 'NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` date NOT NULL,
  `AdminRemark` mediumtext DEFAULT NULL,
  `registra_remarks` mediumtext NOT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT 0,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `registra_remarks`, `AdminRemarkDate`, `Status`, `admin_status`, `IsRead`, `empid`, `num_days`) VALUES
(18, 'Casual Leave', '29-11-2022', '30-11-2022', 'gbhgfn', '2022-11-28', 'Approved', 'approvd', '2022-11-28 21:32:49 ', 1, 1, 1, 1, 2),
(19, 'Casual Leave', '29-11-2022', '30-11-2022', 'Work at home', '2022-11-28', 'not needed', 'Leave was Rejected. Registra/Registry will not see it', '2022-11-29 9:43:08 ', 2, 2, 1, 1, 2),
(20, 'Casual Leave', '29-11-2022', '30-11-2022', 'Work', '2022-11-29', 'ok', 'ok', '2022-11-29 11:56:50 ', 1, 1, 1, 1, 2),
(21, 'Medical Leave', '29-11-2022', '30-11-2022', 'summa', '2022-11-29', 'grant', '', '2022-11-30 10:09:11 ', 1, 0, 1, 6, 2),
(22, 'Medical Leave', '05-12-2022', '09-11-2022', 'Sick and fever', '2022-11-30', NULL, '', NULL, 0, 0, 0, 7, 27),
(23, 'Casual Leave', '30-11-2022', '30-11-2022', 'Work at home', '2022-11-30', NULL, '', NULL, 0, 0, 0, 6, 1),
(24, 'Casual Leave', '02-11-2022', '04-11-2022', 'need', '2022-11-30', NULL, '', NULL, 0, 0, 0, 5, 3),
(25, 'Medical Leave', '04-11-2022', '06-11-2022', 's', '2022-11-30', NULL, '', NULL, 0, 0, 0, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(5, 'Casual Leave', 'Casual Leave', '2022-11-23', '2022-11-25', '2021-05-19 14:32:03'),
(6, 'Medical Leave', 'Medical Leave', '2022-11-05', '2022-12-05', '2021-05-19 15:29:05'),
(8, 'Other', 'Leave all staff and student', '2022-11-30', '2022-12-05', '2021-05-20 17:17:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
