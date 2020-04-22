-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 08:22 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qptms`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_count`
--

CREATE TABLE `chat_count` (
  `id` int(10) NOT NULL,
  `from` int(100) NOT NULL,
  `to` int(100) NOT NULL,
  `count` int(100) NOT NULL DEFAULT 0,
  `taskId` int(20) NOT NULL,
  `assignto` varchar(100) NOT NULL,
  `assignby` varchar(100) NOT NULL,
  `ncount` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `columnvalues`
--

CREATE TABLE `columnvalues` (
  `sno` int(10) NOT NULL,
  `roles` varchar(25) NOT NULL DEFAULT 'NA',
  `designation` varchar(25) NOT NULL DEFAULT 'NA',
  `team` varchar(25) NOT NULL DEFAULT 'NA',
  `status` varchar(25) NOT NULL DEFAULT 'NA',
  `workingStatus` varchar(25) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `columnvalues`
--

INSERT INTO `columnvalues` (`sno`, `roles`, `designation`, `team`, `status`, `workingStatus`) VALUES
(1, 'Employee', 'Trainee', 'Android', 'Available', 'Active'),
(2, 'Manager', 'Graduate', 'Analytics', 'Not_Available', 'Inactive'),
(3, 'Admin', 'Research', 'PHP', 'Lunch', 'Others'),
(4, 'Approver', 'Others', 'UI', 'Busy', 'NA'),
(5, 'NA', 'NA', 'Infra', 'Others', 'NA'),
(6, 'Manager', 'NA', 'Operations', 'NA', 'NA'),
(7, 'Others', 'NA', 'Others', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `emsusers`
--

CREATE TABLE `emsusers` (
  `empId` varchar(20) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `role` varchar(25) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `team` varchar(25) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(20) NOT NULL DEFAULT 'NA',
  `modifieddate` datetime NOT NULL,
  `empStatus` varchar(25) NOT NULL DEFAULT 'available',
  `workingStatus` varchar(25) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emsusers`
--

INSERT INTO `emsusers` (`empId`, `fullName`, `mobileNumber`, `email`, `userName`, `password`, `role`, `designation`, `team`, `createdBy`, `createdDate`, `modifiedBy`, `modifieddate`, `empStatus`, `workingStatus`) VALUES
('1', 'Admin', '1234567890', 'admin@gmail.com', 'admin', '0192023a7bbd73250516f069df18b500', 'Admin', '', '', '1', '2018-09-24 00:00:00', '1', '2018-09-24 00:00:00', 'Lunch', 'Active'),
('100', 'Lakkakula Vineetha', '9912804571', 'vineetha571@gmail.com', 'vineetha', '68a73511b614977f5718cc2299ba5f6f', 'Emp', 'Android', 'android', '1', '2019-03-29 16:57:57', '1', '2019-03-29 16:57:57', 'Available', 'Inactive'),
('103', 'Poojamaheshswari', '9398804491', 'poojamaheshwarithirri@gmail.com', 'poojam', '59570cb1946d43f4a12a1835c252b76f', 'Emp', 'Trainee', 'UI', '1', '2019-03-29 17:35:24', '1', '2019-03-29 17:35:24', 'Available', 'Active'),
('104', 'Jaya Sree Bhavani Cherakam', '9493773403', 'cheakam.jayasree@gmail.com', 'jayasree', '00c626809be1452b703b350333a72ef4', 'Emp', 'Trainee', 'Php', '1', '2019-03-29 17:39:41', '1', '2019-03-29 17:39:41', 'Available', 'Active'),
('106', 'Amir Pardaz', '7742253603', 'amir.p@novisync.com', 'amir', '76a04cd3b1e5fe6bb21ad569342d8b7f', 'Emp', 'technical lead', 'operational', '1', '2019-05-08 01:14:46', '1', '2019-05-08 01:14:46', 'Available', 'Active'),
('107', 'sravan', '9511255634', 'sravan.karpurapu@novisync.com', 'sravan', '4291a6e1f1f55e842b7f04670082d09e', 'Emp', '', 'operational', '1', '2019-05-08 01:25:58', '1', '2019-05-08 03:07:07', 'Available', 'Active'),
('108', 'Bindu Prassana', '+18455428434', 'bindu@novisync.com', 'bindu', '21a554624521a44ec1967c33f943230b', 'Emp', '', 'Global Team', '0', '2019-05-13 19:09:15', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('109', ' VAISHNAVI PANCHARIYA ', '8805761408', 'vaishnavipanchariy30@gmail.com', 'vaishnavip', 'd31342468a459818ecab3f8bdc8423fa', 'Emp', 'UI-UX', 'UI-UX', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('111', 'Ashish Dilip Rathod', '9175518035', 'ashishrathod989816@gmail.com', 'ashish', '177fc8a28a483c8b0f44b1d3564b0b4c', 'Emp', 'flutter developer', 'Fultter', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('114', ' Nagesh Digamber Adhav', '8208335522', 'nageshadhavbncoe@gmail.com', 'nagesh', '3fc73c9ee956e3a4e8b255410f39d44c', 'Emp', 'flutter developer', 'flutter', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('115', 'Pankaj Vinod Jha', '7972889070', ' pankajvjha79@gmail.com ', 'pankaj', 'e5ba3e50387ab86792a8704556b238a8', 'Emp', 'UI/UX', 'UI/UX', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('116', 'Aditya Subhash Mandan ', '8275542547', 'addimandan2033@gmail.com', 'adityam', '3fc73c9ee956e3a4e8b255410f39d44c', 'Emp', 'System integrator', 'System integrator', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('117', ' Rohini Datta Musale', '9146086351', 'rohinimusale9@gmail.com', 'rohini', '88b59a74de3edcab57e1555b64a12fc7', 'Emp', 'android developer', 'android', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Others', 'Active'),
('118', 'Ankita Sudarshan Gore', '8208271004', 'ankitagore1311@gmail.com', 'ankita', 'c38375bd59b05914fac29d593d0b1d9e', 'Emp', 'Data analyst', ' Data analytics', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('119', 'Nilesh Vijay Pise ', '9130232390', 'neil9130patil@gmail.com', 'nilesh', '16b4a27456cfc5e799bf67fbb62df5ea', 'Emp', 'Data analyst', 'Data Analytics', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Available', 'Active'),
('120', 'Dnyaneshwar Vishwanath Bhusare', '9325453006', 'dnyaneshwarbhusare47@gmail.com', 'dnyaneshwar', 'b367b8cbb1be63303a31ff67ddeea614', 'Emp', 'flutter developer', 'Flutter', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', 'Not_Available', 'Active'),
('121', 'Vishal Yashwantrao Bramhakar', '7719862696', 'vishalbramhakar0106@gmail.com', 'vishal', '747c3fc764f9717ac1c957dfddecb10b', 'Emp', 'UI/UX Developer', 'UI/UX', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('122', 'supriya kanade', '9527043919', 'supriyakanade96@gmail.com', 'supriya', 'e147a69f2b57d870230531b6bce0f029', 'Emp', 'React js', 'React js', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('123', 'Neha chakkarwar ', '8380095296', 'Nehachakkarware2@gmail.com', 'neha', '3fede54cd3cf786471ca20e4d40d9b8c', 'Emp', 'React js', 'React js', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('124', 'Rachana hardwaj', '8380888692', 'rachanahardwaj@gmail.com', 'rachana', '55547040e69721288762ea9064e6f851', 'Emp', 'React js', 'React js', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('125', 'shubhangi kishor kadam', '9130357046', 'shubhangikadam1908@gmail.com', 'shubhangi', '51063cd3341446cbf06acc3d954a43bc', 'Emp', 'php', 'php', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('126', 'ashleshanagsen dable', '7720880503', 'ashleshadable4@gmail.com', 'ashlesha', ' e3637564a02d637405d0d57e46d39035', 'Emp', 'php', 'php', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('127', 'bhavana bhagwat kale', '9850563286', 'bhavanakale123@gmail.com', 'bhavana', '742ef6e709d5529a0e9412d5042c8e16', 'Emp', 'php', 'php', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('129', 'harshal ravindra lad', '9923953528', 'harshallad198@gmail.com', 'harshal', '90edd0fd84d30e67a9d5faca78d686cd', 'Emp', 'analyst', 'analytics', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'available', 'Active'),
('14', 'Jyothi', '9441286966', 'jyothin@novisync.com', 'jyothi', '2cab028c7f76ac85eac9bae26053aaaf', 'Manager', 'Lead', 'operational', '1', '2018-10-08 10:21:41', '1', '2019-01-29 13:01:55', 'Available', 'Active'),
('18', 'T Amith', '7702942012', 'amith.thodupounoori@novisync.com', 'amith', 'ab77af01a2f5d14b5414afd2d8e19d35', 'Emp', 'Android Tech Lead', 'Android', '3', '2018-10-08 22:28:40', '1', '2018-10-23 09:45:45', 'Available', 'Active'),
('19', 'G Ajay', '8008585003', 'ajay.gunna@novisync.com', 'ajay', 'd8a94da243fe4cc6573d87111634a995', 'Emp', 'Infra', 'infra', '3', '2018-10-08 22:29:27', '1', '2018-10-23 09:54:24', 'Not_Available', 'Active'),
('20', 'U Balraju', '9441368614', 'balraj.uppari@novisync.com', 'balraj', '9951f945e6940a812c23bda4c44b77e9', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:30:33', '1', '2018-10-23 09:46:40', 'Available', 'Active'),
('21', 'Chiranjeevi', '9502715753', 'chiranjeevi@novisync.com', 'chiranjeevi', '27ddadd26e587c40a0181c11633446a7', 'Emp', 'infra', 'infra', '3', '2018-10-08 22:32:04', '1', '2018-10-23 09:49:24', 'Available', 'Active'),
('23', 'P Mahesh', '9441323340', 'mahesh.palle@novisync.com', 'mahesh', '40873ae0b415d791fda8c4935b68a9ea', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:33:55', '1', '2018-10-23 09:47:16', 'Available', 'Active'),
('24', 'Narendra Chary', '9700081007', 'narendra.v@novisync.com', 'narendra', '638a091165a4a6e41f27a5db6003b38d', 'Emp', 'Php Tech Lead', 'php', '3', '2018-10-08 22:34:46', '14', '2018-11-28 12:53:11', 'Available', 'Active'),
('25', 'K Navya', '9505293294', 'Navya.Kompelly@novisync.com', 'navya', '277f4c4f3782f2c363da48f6be50602e', 'Emp', 'UI ', 'ui', '3', '2018-10-08 22:35:47', '1', '2018-10-23 09:48:12', 'Available', 'Active'),
('27', 'D.V.V.Prasanth', '9985892792', 'prashantv@novisync.com', 'Prasanth', '1cdab11329e16f20d621d307cb7944b3 ', 'Emp', 'infra', 'infra', '3', '2018-10-08 22:38:28', '3', '2018-10-08 22:38:28', 'Lunch', 'Active'),
('28', 'K Subhash', '8008108137', 'subhash.katturi@novisync.com', 'subhash', '4099a0f02f9018cd0076164d123a3555', 'Emp', 'Analytics', 'Analytics', '3', '2018-10-08 22:39:19', '1', '2018-10-23 09:53:24', 'Available', 'Active'),
('29', 'U Suresh', '8499969479', 'suresh.uppapalli@novisync.com', 'suresh', 'fea657735ffb8a2d74e103380b05e191', 'Emp', 'Infra', 'infra', '3', '2018-10-08 22:40:09', '1', '2018-10-23 09:55:37', 'Available', 'Active'),
('3', 'm ganesh', '8886214466', 'ganeshm@novisync.com', 'ganesh', '12d94db41747c5ae330d961df99ed50d', 'Manager', 'Lead', 'Lead', '1', '2018-09-24 12:07:11', '1', '2018-10-23 09:53:55', 'Available', 'Active'),
('31', 'B Ramu', '8886168303', 'ramu.boorsu@novisync.com', 'ramu', 'f65967c3cdd18a22eecb4dc78416d05d', 'Emp', 'php', 'php', '3', '2018-10-08 22:42:27', '1', '2018-10-23 09:47:33', 'Available', 'Active'),
('34', 'S Satya', '9848707281', 'satya.siddha@novisync.com', 'satya', '180ef1bad69192f84d29464e8a28c16c', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:45:34', '1', '2018-10-23 10:01:40', 'Available', 'Active'),
('35', 'K Srikanth', '7893113119', 'srikanthk@novisync.com', 'srikanthk', '75517ddf8c5dd961558a5b369eccb534', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:46:27', '1', '2018-10-23 09:47:04', 'Available', 'Active'),
('36', 'D Nagaraju', '9492885031', 'nagarajud@novisync.com', 'nagaraju', '79fcf6d1a03748137cff41faf51c1f61', 'Emp', 'Infra', 'infra', '3', '2018-10-08 22:47:36', '1', '2018-10-23 09:54:13', 'Available', 'Active'),
('37', 'P Santosh', '9700998829', 'santosh.panjala@novisync.com', 'santosh', '99fe9c438d8ab680bb0afffa44a1e523', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:48:30', '1', '2018-10-23 09:56:38', 'Not_Available', 'Active'),
('38', 'D Srikanth', '8801403435', 'srikanthd@novisync.com', 'srikanthd', 'be2e9807dc682271f33fe81406326bcf', 'Emp', 'Analytics', 'Analytics', '3', '2018-10-08 22:49:15', '1', '2018-10-23 09:52:06', 'Available', 'Active'),
('39', 'G Naveen', '9494969471', 'naveenkg@novisync.com', 'naveen', '18e491bf4ce0afbeb94106bb21774900', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:50:01', '1', '2018-10-23 09:57:10', 'Available', 'Active'),
('40', 'G Srinivas', '8341569818', 'srinivas.gade@novisync.com', 'srinivas', '6f6467f72fbd0428ab0d62c76a6b543c', 'Emp', 'Android ', 'Android', '3', '2018-10-08 22:51:10', '1', '2018-10-23 09:46:29', 'Available', 'Active'),
('41', 'K Sharmila devi', '9948303127', 'sharmilak@novisync.com', 'sharmila ', '197797f7d3c5aa1a43a9fb83d2582601', 'Emp', 'php ', 'php', '3', '2018-10-08 22:51:57', '1', '2018-10-23 09:46:03', 'Available', 'Inactive'),
('42', 'D Sanjeev', '7325963585', 'sanjeevd@novisync.com', 'sanjeev', '3042c5e85752ec688acf999fbfc3568d', 'Emp', 'Infra', 'infra', '3', '2018-10-08 22:52:43', '1', '2018-10-23 09:48:55', 'Available', 'Active'),
('44', 'P sivaji', '9676013878', 'sivaji.ponnana@novisync.com', 'sivaji', '7f0b9a165b6e65d7d11797c11f356223', 'Emp', 'UI', 'ui', '3', '2018-10-10 00:40:59', '1', '2018-11-13 11:21:22', 'Available', 'Active'),
('45', 'T Tulasi Rao', '8121198994', 'tulasit@novisync.com', 'tulasirao', '515aa3547c5cd58239490a5185cb69d9', 'Emp', 'Android ', 'Android', '3', '2018-10-15 09:21:08', '3', '2018-10-15 09:21:08', 'Available', 'Active'),
('46', 'G Sriram', '7382957419', 'sriramg@novisync.com', 'sriram', '7dd6a6b971f49f44d3a717ad5461fc80', 'Emp', 'Android', 'Android', '3', '2018-10-15 09:23:33', '1', '2018-10-23 09:56:49', 'Not_Available', 'Active'),
('47', 'L.Harika Priya', '7569706488', 'harikapriya@novisync.com', 'harika', 'ce4218712ecde43d8ad95f32d18869e0', 'Emp', 'operations', 'operations', '1', '2018-10-16 13:38:43', '1', '2018-10-16 18:23:23', 'Available', 'Active'),
('48', 'Jaideep Penugonda', '9885273118', 'jaideep.penugonda@novisyna.com', 'jaideep', 'b1e70ce1d02bcd9b76bdfe4bdedcc7b9', 'Emp', 'Accounts', 'operations', '1', '2018-10-16 13:44:03', '1', '2018-10-16 18:24:00', 'Available', 'Active'),
('49', 'Ramya Mantina', '9182190297', 'ramya.mantina@novisync.com', 'ramya', '29d5231965872e2b328db11a5611f6f3', 'Emp', 'operations', 'operations', '1', '2018-10-16 13:46:23', '61', '2018-10-31 11:06:14', 'Available', 'Active'),
('51', 'Vasudev Karagana', '9640652006', 'vasudev.karagana@novisync.com', 'vasudev', '2fc4260ecb6775365c0f0f1a1a2ea8b8', 'Emp', 'Accounts', 'operations', '1', '2018-10-16 13:54:44', '1', '2018-10-16 18:26:24', 'Available', 'Active'),
('60', 'Surya Rayudu', '9985198511', 'ray@novisync.com', 'surya', '427df3f1309f05d6218f6159ad894d5e', 'Emp', 'Sr Manager', 'sales', '1', '2018-10-23 10:26:11', '61', '2018-11-03 11:59:46', 'Available', 'Active'),
('61', 'Rajesh Pericherla', '6309239166', 'raj@cadrac.com', 'raj', 'cac5ff630494aa784ce97b9fafac2500', 'Approver', 'CEO', 'operations', '1', '2018-10-23 17:30:24', '1', '2019-04-18 21:41:47', 'Lunch', 'Active'),
('66', 'Lakshmi prasanna', '9618917693', 'laxmiprasanna598@gmail.com', 'prasanna', '7f2d90cfae332dc013c1c1421f187cc5', 'Emp', 'php', 'php', '14', '2018-11-02 14:34:41', '14', '2018-11-02 14:34:41', 'available', 'Active'),
('67', 'Krishna Thulasi ', '9704583221', 'krishnatulasi33.kt@gmail.com', 'krishna', 'b264dcd1bcf411cfc43ef6cbdf924eb0', 'Emp', 'Android ', 'Android', '14', '2018-11-14 09:13:18', '14', '2018-11-14 09:13:18', 'Available', 'Active'),
('68', 'Chukkala Rajesh Kumar', '8886478064', 'rajesh543941@gmail.com', 'rajesh', '8377c72ade2b5469dba4c9ea5069db6f', 'Emp', 'Analytics', 'Analytics', '1', '2018-11-22 09:32:49', '1', '2018-12-15 20:11:57', 'Available', 'Active'),
('70', 'Kotte Rakesh', '7981873717', 'rakesh.kotte686@gmail.com', 'rakesh', 'f26655e01489105ce956db16b6bd79c6', 'Emp', 'Analytics', 'Analytics', '1', '2018-11-22 09:36:28', '1', '2018-11-22 10:10:00', 'Available', 'Active'),
('71', 'k Ramachandra Kumar', '8801331999', 'ramachandrak73@gmail.com', 'ramachandra', '69dabd9960ba6ea0f14fc0feabfd2ac0', 'Emp', 'Analytics', 'Analytics', '1', '2018-11-22 09:48:26', '1', '2018-11-27 14:51:36', 'Available', 'Active'),
('72', 'Irla Sunil Kumar ', '9010889080', 'sunilirla@novisync.com', 'sunil', '95d7f15c9e34379d0e63167715c85cf9', 'Emp', 'Analytics', 'Analytics', '1', '2018-11-22 09:49:45', '1', '2018-11-22 09:49:45', 'Available', 'Active'),
('74', 'U Krishna Tejaswi', '8886046950', 'tejaswi.uddanti@gmail.com', 'tejaswi', '982cd92d642453fffb22aa38e26c910c', 'Emp', 'React Native', 'React Native', '1', '2018-11-22 09:52:38', '1', '2018-11-22 09:52:38', 'Available', 'Active'),
('76', 'P Jagadeesh', '7095311956', 'jagdeeshpodilapu04@gmail.com', 'jagadeesh', '443b87eb3c2ceb39752692480dcd61f6', 'Emp', 'Android ', 'Android ', '1', '2018-11-22 09:55:52', '14', '2018-12-21 15:26:56', 'Available', 'Active'),
('77', 'S Rishitha', '8790808344', 'rishithasoodireddy@gmail.com', 'rishitha', '362bf5fdd8e0b7bc3446979057998765', 'Emp', 'Android', 'android', '1', '2018-11-22 09:57:18', '14', '2018-12-21 15:26:34', 'Busy', 'Active'),
('78', 'P Vishnu', '9642992503', 'vardhan962@gmail.com', 'vishnu', '9baea88a52d949f8f2680b0c1c922552', 'Emp', 'React Native', 'React Native', '1', '2018-11-22 09:58:22', '1', '2018-11-22 09:58:22', 'Available', 'Active'),
('79', 'M Raju', '9951591981', 'malothraju99@gmail.com', 'raju', 'cf118fbe4d158b4a8dd7998ec655c30a', 'Emp', 'React Native', 'React Native', '1', '2018-11-22 09:59:51', '1', '2018-11-22 09:59:51', 'Available', 'Active'),
('80', 'V Samrajyam', '9704778770', 'rajyamelec99@gmail.com', 'raji', 'cc3b01ae4a330b1d822dc73c2fe1c085', 'Emp', 'Android ', 'Android', '1', '2018-11-22 10:01:37', '1', '2018-11-22 10:01:37', 'Available', 'Active'),
('81', 'Durga Bhavani', '9010493196', 'bhavanidurga012@gmail.com', 'durga', 'c3fad742f832de676e832b843a7fdc0f', 'Emp', 'Testing', 'testing', '1', '2018-11-22 10:07:29', '1', '2018-11-23 10:49:32', 'Available', 'Active'),
('83', 'Sethu Kumar', '8886257181', 'sethukumartirumanyam@gmail.com', 'sethu', 'ba0b10681cd403eca3390c117d981215', 'Emp', 'React Native', 'React Native', '14', '2018-11-28 11:35:10', '14', '2018-11-28 11:35:10', 'Available', 'Active'),
('84', 'Hari Priya', '9078728993', 'haripriya.kalamata@gmail.com', 'haripriya', '20bd5d2a87f5d89b06bcd21dd4b33855', 'Emp', 'php', 'php', '14', '2018-11-28 16:03:51', '14', '2018-11-28 16:03:51', 'Available', 'Active'),
('89', 'Bandari Raghavender Reddy', '9866918643', 'raghu.bandari123@gmail.com', 'raghu', '9b7d3049292d2efc87d891d3ec2362d2', 'Emp', 'Graduate', 'ui/ux', '1', '2019-02-18 12:19:40', '1', '2019-02-18 12:19:40', 'Available', 'Active'),
('9', 'Kiran kumar', '7306663659', 'kiran.kantem@novisync.com', 'kiran', 'a092aec1089a4db81348758798065669', 'Emp', 'infra', 'infra', '1', '2018-10-04 10:55:08', '1', '2018-10-23 09:55:22', 'Available', 'Active'),
('93', 'Doki Pranaya', '9885328445', 'pranayadoki@gmail.com', 'pranaya', 'a06452c448c4b5a19c212de82ffae195', 'Emp', 'React Native', 'React Native', '1', '2019-02-18 14:10:11', '1', '2019-02-18 14:10:11', 'Others', 'Active'),
('94', 'Satyavathi', '9014793853', 'satyakad60@gmail.com', 'satyavathi', '7acca31934fa7bdbcb2a5eab87e82323', 'Emp', 'Trainee', 'operational', '1', '2019-02-18 14:14:49', '1', '2019-02-18 14:16:14', 'Available', 'Active'),
('95', 'M.SaiTeja', '8019562363', 'saitejamogatadakala@gmail.com', 'saiteja', '47bcede6b2b4aa51b68dc8ff05dfeb10', 'Emp', 'React Native', 'React Native', '1', '2019-03-29 16:46:27', '1', '2019-03-29 16:46:27', 'Available', 'Active'),
('96', 'B.MaheshReddy', '8978687964', 'bandarimaheshreddy1@gmail.com', 'maheshreddy', 'e825ee9e4cf1e0cd5b7829412aba177e', 'Emp', 'React Native', 'React Native', '1', '2019-03-29 16:48:24', '1', '2019-03-29 16:48:24', 'Not_Available', 'Active'),
('97', 'Ch.Swathi', '8187038020', 'challapalli.swathi9@gmail.com', 'swathi', '3715aad477055bdc7b02e316b828ae26', 'Emp', 'React Native', 'React Native', '1', '2019-03-29 16:50:23', '1', '2019-03-29 16:50:23', 'Available', 'Active'),
('98', 'B.SriHarsha', '9052066779', 'sriharsha173@gmail.com', 'harsha', '43b0a404968aba2b6c291bab84656daf', 'Emp', 'React Native', 'React Native', '1', '2019-03-29 16:54:07', '1', '2019-03-29 16:54:07', 'Available', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `moduletable`
--

CREATE TABLE `moduletable` (
  `moduleId` int(10) NOT NULL,
  `ideaId` int(10) NOT NULL,
  `moduleDesc` varchar(100) NOT NULL,
  `createdBy` varchar(20) NOT NULL,
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(20) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` enum('deleted','NA','pending','completed') NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `moduletable`
--

INSERT INTO `moduletable` (`moduleId`, `ideaId`, `moduleDesc`, `createdBy`, `createdDate`, `modifiedBy`, `modifiedDate`, `status`) VALUES
(1, 9, 'React Native Development', '1', '2019-09-12 20:28:12', '1', '2019-09-12 20:28:12', 'pending'),
(2, 9, 'PTMS Live Support', '1', '2019-09-12 20:28:38', '1', '2019-09-12 20:51:31', 'pending'),
(3, 7, 'UX', '61', '2019-09-13 08:29:53', '61', '2019-09-13 08:29:53', 'pending'),
(4, 7, 'FrontEnd', '61', '2019-09-13 08:29:53', '61', '2019-09-13 08:29:53', 'pending'),
(5, 7, 'BackEnd', '61', '2019-09-13 08:29:53', '61', '2019-09-13 08:29:53', 'pending'),
(6, 2, 'Front End ', '24', '2019-09-13 09:14:00', '24', '2019-09-13 09:14:00', 'pending'),
(7, 2, 'Backend', '24', '2019-09-13 09:14:11', '24', '2019-09-13 09:14:11', 'pending'),
(8, 5, 'Jobsearch FrontEnd', '84', '2019-09-13 09:29:57', '84', '2019-09-13 09:29:57', 'pending'),
(9, 5, 'Jobsearch backend', '84', '2019-09-13 09:30:11', '84', '2019-09-13 09:30:11', 'pending'),
(10, 5, 'Jobsearch database ', '84', '2019-09-13 09:30:40', '84', '2019-09-13 09:30:40', 'pending'),
(11, 5, 'Jobsearch UX design', '84', '2019-09-13 09:31:12', '84', '2019-09-13 09:31:12', 'pending'),
(12, 6, 'SRAM web Frontend', '84', '2019-09-13 10:51:43', '84', '2019-09-13 10:51:43', 'pending'),
(13, 6, 'SRAM web backend', '84', '2019-09-13 10:52:00', '84', '2019-09-13 10:52:00', 'pending'),
(14, 6, 'SRAM App ', '84', '2019-09-13 10:52:29', '84', '2019-09-16 10:59:16', 'pending'),
(15, 6, 'SRAM database ', '84', '2019-09-13 10:52:46', '84', '2019-09-16 11:00:06', 'pending'),
(16, 6, 'SRAM UX design', '84', '2019-09-13 10:53:01', '84', '2019-09-16 10:58:54', 'pending'),
(17, 3, 'Hosting Restaro ', '31', '2019-09-13 11:17:22', '31', '2019-09-13 11:17:22', 'completed'),
(21, 13, 'FrontEnd', '61', '2019-09-16 10:26:00', '61', '2019-09-16 10:26:00', 'pending'),
(22, 13, 'UX', '61', '2019-09-16 10:26:00', '61', '2019-09-16 10:26:00', 'pending'),
(23, 13, 'BackEnd', '61', '2019-09-16 10:26:00', '61', '2019-09-16 10:26:00', 'pending'),
(24, 12, 'UX', '61', '2019-09-16 10:26:07', '61', '2019-09-16 10:26:07', 'pending'),
(25, 12, 'FrontEnd', '61', '2019-09-16 10:26:07', '61', '2019-09-16 10:26:07', 'pending'),
(26, 12, 'BackEnd', '61', '2019-09-16 10:26:07', '61', '2019-09-16 10:26:07', 'pending'),
(27, 11, 'UX', '61', '2019-09-16 10:26:14', '61', '2019-09-16 10:26:14', 'pending'),
(28, 11, 'BackEnd', '61', '2019-09-16 10:26:14', '61', '2019-09-16 10:26:14', 'pending'),
(29, 11, 'FrontEnd', '61', '2019-09-16 10:26:14', '61', '2019-09-16 10:26:14', 'pending'),
(30, 10, 'UX', '61', '2019-09-16 10:26:28', '61', '2019-09-16 10:26:28', 'pending'),
(31, 10, 'FrontEnd', '61', '2019-09-16 10:26:28', '61', '2019-09-16 10:26:28', 'pending'),
(32, 10, 'BackEnd', '61', '2019-09-16 10:26:28', '61', '2019-09-16 10:26:28', 'pending'),
(33, 3, 'Restauroo arranging payment and myorders modules', '31', '2019-09-16 10:37:46', '31', '2019-09-16 10:37:46', 'pending'),
(34, 2, 'UX/UI for jobzbuzz', '24', '2019-09-16 10:46:45', '24', '2019-09-16 10:46:45', 'pending'),
(35, 13, 'Adding dummy database and UI design for erp', '31', '2019-09-16 15:53:48', '31', '2019-09-16 15:53:48', 'pending'),
(37, 4, 'homemodule1', '66', '2019-09-23 10:15:11', '', '0000-00-00 00:00:00', 'NA'),
(38, 14, 'hh', '1', '2020-04-12 18:16:21', '1', '2020-04-15 14:33:37', 'NA'),
(39, 14, 'hhhh', '14', '2020-04-15 12:07:45', '', '0000-00-00 00:00:00', 'NA'),
(40, 14, 'bhavana', '1', '2020-04-15 14:35:11', '', '0000-00-00 00:00:00', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `roadblocks`
--

CREATE TABLE `roadblocks` (
  `sno` int(11) NOT NULL,
  `subTaskId` int(10) NOT NULL,
  `roadBlockDescription` varchar(100) NOT NULL,
  `roadBlockDate` datetime NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'not solved'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roadblocks`
--

INSERT INTO `roadblocks` (`sno`, `subTaskId`, `roadBlockDescription`, `roadBlockDate`, `status`) VALUES
(1, 35, 'ffffffffffff', '2019-09-23 11:35:57', 'solved'),
(3, 36, 'tttttttt', '2019-09-23 11:41:06', 'solved'),
(4, 36, 'xdd', '2019-09-23 12:50:26', 'solved'),
(5, 36, 'daD', '2019-09-23 15:57:53', 'solved'),
(6, 36, 'hhvcb dcvufjvciyf', '2019-09-23 16:43:59', 'solved'),
(7, 36, 'fcxyuhbssqhd', '2019-09-23 16:44:50', 'solved'),
(8, 36, 'jvidks', '2019-09-23 16:45:26', 'solved'),
(9, 35, 'mvdauftvsj', '2019-09-23 16:50:04', 'solved'),
(10, 35, 'xsaddf', '2019-09-24 13:19:45', 'solved'),
(11, 36, 'cddscds', '2019-09-24 13:20:43', 'solved'),
(12, 35, 'here', '2019-09-24 14:39:03', 'solved'),
(13, 36, 'w', '2019-09-26 14:28:05', 'solved'),
(14, 35, 'fdefd', '2019-09-26 15:36:26', 'solved'),
(15, 64, 'xdd', '2019-09-26 15:38:39', 'Not solved'),
(16, 64, 'sdfscxd', '2020-04-15 16:50:36', 'not solved'),
(17, 64, 'gfgdf', '2020-04-15 16:54:49', 'NotSolved'),
(18, 64, 'fghfg', '2020-04-15 16:55:20', 'NotSolved'),
(19, 66, 'ghgf', '2020-04-15 16:55:56', 'not solved'),
(20, 35, 'fghfg', '2020-04-15 19:36:28', 'NotSolved'),
(21, 35, 'road', '2020-04-15 20:23:05', 'NotSolved');

-- --------------------------------------------------------

--
-- Table structure for table `userdeviceinfo`
--

CREATE TABLE `userdeviceinfo` (
  `sno` int(10) NOT NULL,
  `deviceId` varchar(50) NOT NULL,
  `deviceToken` varchar(300) NOT NULL,
  `deviceType` enum('Android','IOS','','') NOT NULL,
  `empId` varchar(20) NOT NULL,
  `userType` varchar(100) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userideas`
--

CREATE TABLE `userideas` (
  `ideaId` int(10) NOT NULL,
  `empId` varchar(20) NOT NULL,
  `ideaTitle` varchar(100) NOT NULL,
  `ideaDesc` varchar(1050) NOT NULL,
  `createdDate` datetime NOT NULL,
  `approvalStatus` enum('pending','approved','rejected','') NOT NULL DEFAULT 'pending',
  `ideaStatus` enum('pending','completed','','') NOT NULL DEFAULT 'pending',
  `endDate` datetime NOT NULL,
  `reopenStatus` enum('0','1','deleted','','') NOT NULL DEFAULT '0',
  `acceptedBy` varchar(10) NOT NULL,
  `acceptedDate` datetime NOT NULL,
  `modifiedBy` varchar(20) NOT NULL DEFAULT 'NA',
  `modifiedDate` datetime NOT NULL,
  `releaseOwner` varchar(20) NOT NULL DEFAULT 'NA',
  `rejectedBy` varchar(10) NOT NULL,
  `rejectedDate` datetime NOT NULL,
  `rejectedReason` varchar(100) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userideas`
--

INSERT INTO `userideas` (`ideaId`, `empId`, `ideaTitle`, `ideaDesc`, `createdDate`, `approvalStatus`, `ideaStatus`, `endDate`, `reopenStatus`, `acceptedBy`, `acceptedDate`, `modifiedBy`, `modifiedDate`, `releaseOwner`, `rejectedBy`, `rejectedDate`, `rejectedReason`) VALUES
(1, '77', 'React-Native PTMS', 'Project Tracking Management Application development in React Native platform', '2019-09-12 17:44:53', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:21', 'NA', '2019-09-12 17:44:53', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(2, '24', 'jobzbuzz', 'find a dream job', '2019-09-12 17:45:54', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:16', 'NA', '2019-09-12 17:45:54', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(3, '31', 'Restaro', 'restaro testing ', '2019-09-12 18:02:22', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:30', 'NA', '2019-09-12 18:02:22', '108', '', '0000-00-00 00:00:00', 'NA'),
(4, '66', 'Ptms Web application', 'Ptms web application with new database', '2019-09-12 18:05:47', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:04', 'NA', '2019-09-12 18:05:47', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(5, '84', 'JobSearch', 'This app is useful for both jobseeker & employer, jobseeker can see all the available companies in map, and he can apply for anypost in list,employer can add posts,update & delete posts', '2019-09-12 19:48:01', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:10', 'NA', '2019-09-12 19:48:01', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(6, '84', 'SRAM', 'This is client project, we are providing service for web application,android app,ios app,The applications are about customer-service-task-management system,& one website &website admin ', '2019-09-12 19:54:03', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:26', 'NA', '2019-09-12 19:54:03', '67', '', '0000-00-00 00:00:00', 'NA'),
(7, '84', 'estatse', 'This is app for real estate, this app is useful for both buyers& sellers of property.The app will list all the available properties in map,and also contains list for that,sellers can register in app and add property for Sale or Rent', '2019-09-12 19:59:29', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:29:52', 'NA', '2019-09-12 19:59:29', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(8, '84', 'CareerAwareness App', 'This app educate to everyone ,by showing the next steps in career', '2019-09-12 20:01:53', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-13 08:31:34', 'NA', '2019-09-12 20:01:53', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(9, '1', 'PTMS', 'This Project will be used to manage every platform of ptms', '2019-09-12 20:26:58', 'approved', 'pending', '0000-00-00 00:00:00', '0', '1', '2019-09-12 20:27:22', 'NA', '2019-09-12 20:26:58', '77', '', '0000-00-00 00:00:00', 'NA'),
(10, '46', 'NoizeUp', 'This project would be useful to promote the business via social media', '2019-09-13 09:55:33', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-16 10:26:27', 'NA', '2019-09-13 09:55:33', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(11, '100', 'hapride passenger for P2P', 'passenger application for point to point', '2019-09-13 10:46:21', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-16 10:26:12', 'NA', '2019-09-13 10:46:21', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(12, '100', 'hapride driver for P2P', 'driver application for point to point', '2019-09-13 10:47:01', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-16 10:26:06', 'NA', '2019-09-13 10:47:01', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(13, '31', 'StaffingERP', 'staffing', '2019-09-13 14:47:09', 'rejected', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-16 10:25:59', 'NA', '2019-09-13 14:47:09', 'NA', '61', '2020-04-12 17:21:48', 'kkkkk'),
(14, '31', 'Retail Store', 'retail store in laravel ', '2019-09-16 09:21:04', 'approved', 'pending', '0000-00-00 00:00:00', '0', '61', '2019-09-16 10:25:52', 'NA', '2019-09-16 09:21:04', '107', '', '0000-00-00 00:00:00', 'NA'),
(15, '71', 'Webservices,Microservices ', 'Providing the applications as services ', '2019-09-16 10:34:10', 'pending', 'pending', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 'NA', '2019-09-16 10:35:11', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(16, '38', 'mails automation', 'extract from address from gmail ', '2019-09-16 11:14:02', 'pending', 'pending', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 'NA', '2019-09-16 11:14:02', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(17, '28', 'Promotions', 'Promote Our Applications.', '2019-09-16 11:23:19', 'pending', 'pending', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 'NA', '2019-09-16 11:23:19', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(18, '72', 'jobzbuzz analysis', 'collection, processing, generating reports , Visualization, prediction', '2019-09-16 15:54:53', 'pending', 'pending', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 'NA', '2019-09-16 15:54:53', 'NA', '', '0000-00-00 00:00:00', 'NA'),
(19, '61', 'jj', 'gg', '2020-04-13 13:54:10', 'pending', 'pending', '0000-00-00 00:00:00', '0', '', '0000-00-00 00:00:00', 'NA', '0000-00-00 00:00:00', 'NA', '', '0000-00-00 00:00:00', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `usermaintasks`
--

CREATE TABLE `usermaintasks` (
  `id` int(10) NOT NULL,
  `ideaId` int(10) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `taskTitle` varchar(100) NOT NULL,
  `taskDesc` varchar(255) NOT NULL,
  `assignedBy` varchar(20) NOT NULL,
  `estimatedHours` int(10) NOT NULL,
  `assignedTo` varchar(20) NOT NULL,
  `taskStatus` int(10) NOT NULL,
  `taskStatusDesc` varchar(200) NOT NULL DEFAULT 'NA',
  `assignedDate` datetime NOT NULL,
  `targetDate` datetime NOT NULL,
  `taskEndDate` datetime NOT NULL,
  `completeStatus` enum('pending','completed','verified','deleted') NOT NULL DEFAULT 'pending',
  `createdDate` datetime NOT NULL,
  `modifiedBy` varchar(20) NOT NULL DEFAULT 'NA',
  `modifiedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usermaintasks`
--

INSERT INTO `usermaintasks` (`id`, `ideaId`, `moduleId`, `taskTitle`, `taskDesc`, `assignedBy`, `estimatedHours`, `assignedTo`, `taskStatus`, `taskStatusDesc`, `assignedDate`, `targetDate`, `taskEndDate`, `completeStatus`, `createdDate`, `modifiedBy`, `modifiedDate`) VALUES
(34, 4, 37, 'maintask1', 'maintask1', '66', 76, '66', 58, 'NA', '2019-09-23 10:20:11', '2019-09-23 10:20:11', '2020-04-15 20:40:39', 'pending', '2019-09-23 10:20:11', 'NA', '0000-00-00 00:00:00'),
(35, 13, 21, 'various tasks', 'various tasks', '14', 99, '14', 0, 'NA', '2019-09-24 13:41:35', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2019-09-24 13:41:35', 'NA', '0000-00-00 00:00:00'),
(38, 14, 18, 'fgfff', 'gg', '61', 0, '104', 0, 'NA', '2020-04-12 17:23:22', '0000-00-00 00:00:00', '2020-04-12 17:23:22', 'pending', '2020-04-12 17:23:22', 'NA', '0000-00-00 00:00:00'),
(39, 14, 36, 'fgfff', 'gg', '61', 50, '103', 0, 'NA', '2020-04-12 17:49:47', '0000-00-00 00:00:00', '2020-04-15 10:53:35', 'pending', '2020-04-12 17:49:47', 'NA', '0000-00-00 00:00:00'),
(40, 14, 36, 'fgfff', 'gg', '61', 0, '114', 0, 'NA', '2020-04-12 17:56:24', '2020-04-12 17:56:24', '2020-04-12 17:56:24', 'pending', '2020-04-12 17:56:24', 'NA', '0000-00-00 00:00:00'),
(41, 14, 36, 'fgfff', 'gg', '61', 0, '108', 0, 'NA', '2020-04-12 17:58:54', '0000-00-00 00:00:00', '2020-04-12 17:58:54', 'pending', '2020-04-12 17:58:54', 'NA', '0000-00-00 00:00:00'),
(42, 14, 36, 'fgfff', 'gg', '61', 0, '118', 0, 'NA', '2020-04-12 18:02:13', '0000-00-00 00:00:00', '2020-04-12 18:02:13', 'pending', '2020-04-12 18:02:13', 'NA', '0000-00-00 00:00:00'),
(43, 14, 36, 'fgfff', 'gg', '61', 0, '104', 0, 'NA', '2020-04-12 18:05:01', '0000-00-00 00:00:00', '2020-04-12 18:05:01', 'pending', '2020-04-12 18:05:01', 'NA', '0000-00-00 00:00:00'),
(44, 14, 36, 'fgfff', 'gg', '61', 75, '117', 0, 'NA', '2020-04-12 18:05:58', '0000-00-00 00:00:00', '2020-04-15 10:53:35', 'pending', '2020-04-12 18:05:58', 'NA', '0000-00-00 00:00:00'),
(45, 14, 36, 'dcgdf', 'fdgdfg', '61', 150, '108', 0, 'NA', '2020-04-12 18:06:41', '0000-00-00 00:00:00', '2020-04-15 16:37:49', 'pending', '2020-04-12 18:06:41', '61', '2020-04-12 18:14:19'),
(46, 14, 36, 'fgfff', 'fdgdfg', '61', 0, '103', 0, 'NA', '2020-04-12 18:14:51', '2020-04-12 18:14:51', '2020-04-12 18:14:51', 'pending', '2020-04-12 18:14:51', 'NA', '0000-00-00 00:00:00'),
(47, 14, 36, 'dcgdf', 'gg', '61', 75, '31', 100, 'NA', '2020-04-12 18:15:08', '2020-04-12 18:15:08', '2020-04-15 10:53:35', 'completed', '2020-04-12 18:15:08', '', '2020-04-13 15:52:52'),
(48, 14, 38, 'cvxcv', 'cxvxcv', '1', 100, '107', 0, 'NA', '2020-04-12 18:16:33', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-12 18:16:33', 'NA', '0000-00-00 00:00:00'),
(49, 9, 2, 'dfs', 'dfds', '14', 28, '104', 0, 'NA', '2020-04-12 18:27:00', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-12 18:27:00', 'NA', '0000-00-00 00:00:00'),
(50, 14, 38, 'dcgdf', 'fdgdfg', '14', 26, '103', 0, 'NA', '2020-04-12 18:35:26', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-12 18:35:26', 'NA', '0000-00-00 00:00:00'),
(51, 14, 38, 'dfsdx ggg hhh', 'wwe yyy hh', '1', 75, '124', 0, 'NA', '2020-04-13 12:32:54', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-13 12:32:54', '', '2020-04-13 15:03:20'),
(52, 14, 36, 'dcgdf', 'gg', '1', 50, '122', 0, 'NA', '2020-04-13 16:51:45', '0000-00-00 00:00:00', '2020-04-15 10:53:35', 'pending', '2020-04-13 16:51:45', '61', '2020-04-14 22:50:54'),
(53, 14, 38, 'raa', 'raa', '1', 25, '31', 0, 'NA', '2020-04-15 10:54:51', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-15 10:54:51', 'NA', '0000-00-00 00:00:00'),
(54, 14, 39, 'dcgdf', 'fdgdfg', '14', 26, '127', 0, 'NA', '2020-04-15 12:07:59', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-15 12:07:59', 'NA', '0000-00-00 00:00:00'),
(56, 3, 33, 'fgfff', 'gg', '1', 26, '127', 0, 'NA', '2020-04-15 14:50:07', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-15 14:50:07', '61', '2020-04-15 15:59:48'),
(60, 14, 40, 'dcgdf', 'sadas', '1', 25, '31', 0, 'NA', '2020-04-15 19:10:38', '0000-00-00 00:00:00', '2020-04-15 20:40:39', 'pending', '2020-04-15 19:10:38', 'NA', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usersubtasks`
--

CREATE TABLE `usersubtasks` (
  `subTaskId` int(10) NOT NULL,
  `mainTaskId` int(10) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `taskTitle` varchar(100) NOT NULL,
  `taskDesc` varchar(200) NOT NULL,
  `assignedBy` varchar(20) NOT NULL,
  `estimatedHours` int(10) NOT NULL,
  `activeStatus` int(11) NOT NULL DEFAULT 0,
  `assignedTo` varchar(20) NOT NULL,
  `taskStatus` int(10) NOT NULL,
  `taskStatusDesc` varchar(100) NOT NULL DEFAULT 'NA',
  `activeTime` datetime NOT NULL,
  `assignedDate` datetime NOT NULL,
  `targetDate` datetime NOT NULL,
  `taskEndDate` datetime NOT NULL,
  `status` enum('pending','completed','verified','deleted','') NOT NULL DEFAULT 'pending',
  `modifiedBy` varchar(20) NOT NULL DEFAULT 'NA',
  `modifiedDate` datetime NOT NULL,
  `dependencyId` varchar(20) NOT NULL DEFAULT 'NA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usersubtasks`
--

INSERT INTO `usersubtasks` (`subTaskId`, `mainTaskId`, `moduleId`, `taskTitle`, `taskDesc`, `assignedBy`, `estimatedHours`, `activeStatus`, `assignedTo`, `taskStatus`, `taskStatusDesc`, `activeTime`, `assignedDate`, `targetDate`, `taskEndDate`, `status`, `modifiedBy`, `modifiedDate`, `dependencyId`) VALUES
(35, 34, 37, 'subtask1', 'subtask1', '66', 51, 1, '66', 0, 'ss', '2020-03-10 13:15:52', '2019-09-23 10:23:47', '2019-09-25 13:23:47', '2019-09-26 15:37:11', 'pending', '66', '0000-00-00 00:00:00', 'NA'),
(36, 34, 37, 'subtask2', 'subtask2', '66', 76, 0, '66', 100, 'z', '0000-00-00 00:00:00', '2019-09-23 11:39:02', '2019-09-26 15:39:02', '2019-09-26 15:49:02', 'completed', '66', '2019-09-24 13:23:12', '37'),
(37, 34, 37, 'half moon given byd', 'wdewded', '66', 51, 0, '42', 100, 'zxcx', '0000-00-00 00:00:00', '2019-09-24 13:21:52', '2019-09-26 16:21:52', '2019-09-26 10:15:19', 'completed', '42', '2019-09-24 13:22:11', 'NA'),
(38, 34, 37, 'mmmmsnmdmdm', 'gsavddd', '66', 76, 1, '66', 30, 'hghj', '2020-03-10 13:15:40', '2019-09-24 13:25:28', '2019-09-27 17:25:28', '2019-09-26 15:07:28', 'pending', '66', '0000-00-00 00:00:00', 'NA'),
(39, 35, 21, 'uturn', 'uturn', '14', 75, 0, '14', 0, 'NA', '0000-00-00 00:00:00', '2019-09-24 13:42:09', '2019-09-27 16:42:09', '2019-09-24 13:42:09', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(40, 35, 21, 'hhhgert', 'comggggggggggggggggggggggggg', '14', 99, 0, '14', 0, 'NA', '0000-00-00 00:00:00', '2019-09-24 13:43:41', '2019-09-28 16:43:41', '2019-09-24 13:43:41', 'pending', 'NA', '0000-00-00 00:00:00', '37'),
(41, 36, 18, 'll', 'll', '1', 25, 0, '100', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 17:04:30', '2020-04-13 18:04:30', '2020-04-12 17:04:30', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(43, 39, 36, 'll kkk', 'll', '61', 50, 0, '103', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 17:54:39', '2020-04-14 19:54:39', '2020-04-12 17:55:04', 'pending', '61', '2020-04-12 17:55:04', 'NA'),
(44, 39, 36, 'll', '1', '61', 25, 0, '108', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:07:00', '2020-04-13 19:07:00', '2020-04-12 18:07:00', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(45, 45, 36, 'll kkk nnn', 'll', '61', 73, 0, '107', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:07:27', '2020-04-15 19:07:27', '2020-04-12 18:07:44', 'pending', '61', '2020-04-12 18:07:44', 'NA'),
(46, 44, 36, 'raaaaa', 'll', '61', 75, 0, '114', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:08:21', '2020-04-15 21:08:21', '2020-04-12 18:08:21', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(47, 45, 36, 'll kkk', 'll', '61', 150, 0, '109', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:12:41', '2020-04-19 00:12:41', '2020-04-12 18:12:41', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(49, 49, 2, 'll kkk nnn jjj', 'dftg', '14', 28, 0, '108', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:27:17', '2020-04-13 22:27:17', '2020-04-12 18:27:32', 'pending', '14', '2020-04-12 18:27:32', 'NA'),
(50, 48, 38, 'll kkk', '1', '14', 78, 0, '104', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:34:09', '2020-04-16 00:34:09', '2020-04-12 18:34:09', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(51, 50, 38, 'll kkk nnn', 'dftg', '14', 25, 0, '106', 0, 'NA', '0000-00-00 00:00:00', '2020-04-12 18:35:40', '2020-04-13 19:35:40', '2020-04-12 18:35:40', 'pending', 'NA', '0000-00-00 00:00:00', '39'),
(52, 51, 38, 'zv', 'xzcv', '1', 25, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 13:28:03', '2020-04-14 14:28:03', '2020-04-13 14:31:49', 'pending', '', '2020-04-13 14:31:49', '46'),
(53, 51, 38, 'fsdf', 'dfsdf', '61', 25, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:34:12', '2020-04-14 15:34:12', '2020-04-13 14:35:24', 'pending', '', '2020-04-13 14:35:24', 'NA'),
(54, 51, 38, 'sadsa', 'dfsd', '61', 25, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:47:06', '2020-04-14 15:47:06', '2020-04-13 14:47:06', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(55, 51, 38, 'sdfz', 'xcdzx', '61', 50, 0, '121', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:48:40', '2020-04-15 16:48:40', '2020-04-13 14:48:40', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(56, 51, 38, 'sadasd', 'asdasd', '61', 25, 0, '116', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:51:14', '2020-04-14 15:51:14', '2020-04-13 14:51:14', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(57, 51, 38, 'daf', 'sdafd', '61', 50, 0, '114', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:51:56', '2020-04-15 16:51:56', '2020-04-13 14:51:56', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(58, 51, 38, 'sxasx', 'sadas', '61', 50, 0, '116', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:53:16', '2020-04-15 16:53:16', '2020-04-13 14:53:16', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(59, 51, 38, 'sadf', 'asd', '61', 50, 0, '118', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:56:32', '2020-04-15 16:56:32', '2020-04-13 14:56:32', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(60, 51, 38, 'wsas', 'wefdwed', '61', 50, 0, '115', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:57:50', '2020-04-15 16:57:50', '2020-04-13 14:57:50', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(61, 51, 38, 'dfdasf', 'dasfads', '61', 75, 0, '116', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 14:58:56', '2020-04-16 17:58:56', '2020-04-13 14:58:56', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(62, 51, 38, 'rr', 'rr', '61', 50, 0, '119', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 15:00:20', '2020-04-15 17:00:20', '2020-04-13 15:00:20', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(63, 51, 38, 'sadas', 'asdasd', '61', 25, 0, '116', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 15:00:43', '2020-04-14 16:00:43', '2020-04-13 15:00:43', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(64, 47, 36, 'sdfsd', 'sdas', '61', 51, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 15:11:52', '2020-04-15 18:11:52', '2020-04-13 15:21:31', 'pending', '', '2020-04-13 15:21:31', 'NA'),
(66, 52, 36, 'ramu444', 'ramu11', '61', 50, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 16:57:57', '2020-04-15 18:57:57', '2020-04-13 16:58:29', 'pending', '', '2020-04-13 16:58:29', 'NA'),
(67, 45, 36, 'ramu', 'erw', '61', 25, 0, '116', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 17:06:22', '2020-04-14 18:06:22', '2020-04-13 17:06:22', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(68, 45, 36, 'asdfsa', 'sdsa', '61', 25, 0, '31', 0, 'NA', '0000-00-00 00:00:00', '2020-04-13 17:07:22', '2020-04-14 18:07:22', '2020-04-14 16:35:07', 'completed', '31', '2020-04-13 17:11:19', 'NA'),
(69, 50, 38, 'rajaa', 'dftg', '61', 26, 0, '103', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 11:44:50', '2020-04-16 13:44:50', '2020-04-15 11:44:50', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(70, 51, 38, 'raaaaa', 'll', '61', 26, 0, '103', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 11:45:33', '2020-04-16 13:45:33', '2020-04-15 11:45:33', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(71, 51, 38, 'asda', 'sdsa', '61', 2, 0, '103', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 11:53:58', '2020-04-15 13:53:58', '2020-04-15 11:53:58', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(72, 51, 38, 'sa', 'sdsa', '61', 26, 0, '104', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 11:59:07', '2020-04-16 13:59:07', '2020-04-15 11:59:07', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(73, 51, 38, 'sad', 'sd', '61', 26, 0, '104', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 12:00:58', '2020-04-16 14:00:58', '2020-04-15 12:00:58', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(74, 51, 38, 'sad', 'sdxas', '61', 25, 0, '103', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 12:02:52', '2020-04-16 13:02:52', '2020-04-15 12:02:52', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(75, 54, 39, 'raaaaa', 'asdea', '14', 26, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 12:08:26', '2020-04-16 14:08:26', '2020-04-15 12:08:26', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(76, 53, 38, 'll kkk', '1', '1', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 14:35:43', '2020-04-16 15:35:43', '2020-04-15 14:36:46', 'pending', '1', '2020-04-15 14:36:46', 'NA'),
(77, 53, 38, 'raaaaa', 'll', '1', 25, 0, '129', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 14:37:19', '2020-04-16 15:37:19', '2020-04-15 14:37:19', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(78, 53, 38, 'raaaaa', 'll', '1', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 14:39:44', '2020-04-16 15:39:44', '2020-04-15 14:40:27', 'pending', '', '2020-04-15 14:40:27', 'NA'),
(79, 56, 33, 'raaaaa', 'll', '1', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 14:50:29', '2020-04-16 15:50:29', '2020-04-15 14:50:29', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(80, 56, 33, 'xszac', 'sxz', '1', 26, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:14:56', '2020-04-16 18:14:56', '2020-04-15 16:14:56', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(81, 56, 33, 'raaaaa', '1', '1', 26, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:18:41', '2020-04-16 18:18:41', '2020-04-15 16:18:41', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(82, 56, 33, 'sd', 'sad', '61', 25, 0, '129', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:25:00', '2020-04-16 17:25:00', '2020-04-15 16:25:00', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(83, 56, 33, 'sad', 'sad', '61', 25, 0, '129', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:26:09', '2020-04-16 17:26:09', '2020-04-15 16:26:09', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(84, 56, 33, 'asda', 'sdas', '61', 25, 0, '108', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:29:30', '2020-04-16 17:29:30', '2020-04-15 16:29:30', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(85, 56, 33, 'raaaaa', 'sdas', '14', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:35:19', '2020-04-16 17:35:19', '2020-04-15 16:35:19', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(86, 56, 33, 'asda', 'sadas', '14', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 16:35:45', '2020-04-16 17:35:45', '2020-04-15 16:35:45', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(88, 56, 33, 'sada', 'asdad', '1', 26, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 18:31:50', '2020-04-16 20:31:50', '2020-04-15 18:31:50', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(94, 59, 40, 'wdsa', 'sadas', '1', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 19:10:14', '2020-04-16 20:10:14', '2020-04-15 19:10:14', 'pending', 'NA', '0000-00-00 00:00:00', 'NA'),
(96, 60, 40, 'asda', 'sdas', '61', 25, 0, '127', 0, 'NA', '0000-00-00 00:00:00', '2020-04-15 19:11:57', '2020-04-16 20:11:57', '2020-04-15 19:12:24', 'pending', '61', '2020-04-15 19:12:24', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_count`
--
ALTER TABLE `chat_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `columnvalues`
--
ALTER TABLE `columnvalues`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `emsusers`
--
ALTER TABLE `emsusers`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `mobileNumber` (`mobileNumber`),
  ADD UNIQUE KEY `username` (`userName`);

--
-- Indexes for table `moduletable`
--
ALTER TABLE `moduletable`
  ADD PRIMARY KEY (`moduleId`);

--
-- Indexes for table `roadblocks`
--
ALTER TABLE `roadblocks`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `userdeviceinfo`
--
ALTER TABLE `userdeviceinfo`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `userideas`
--
ALTER TABLE `userideas`
  ADD PRIMARY KEY (`ideaId`);

--
-- Indexes for table `usermaintasks`
--
ALTER TABLE `usermaintasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersubtasks`
--
ALTER TABLE `usersubtasks`
  ADD PRIMARY KEY (`subTaskId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_count`
--
ALTER TABLE `chat_count`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `columnvalues`
--
ALTER TABLE `columnvalues`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `moduletable`
--
ALTER TABLE `moduletable`
  MODIFY `moduleId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roadblocks`
--
ALTER TABLE `roadblocks`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userdeviceinfo`
--
ALTER TABLE `userdeviceinfo`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userideas`
--
ALTER TABLE `userideas`
  MODIFY `ideaId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `usermaintasks`
--
ALTER TABLE `usermaintasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `usersubtasks`
--
ALTER TABLE `usersubtasks`
  MODIFY `subTaskId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
