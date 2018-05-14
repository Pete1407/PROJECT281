-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2018 at 11:13 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_oo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id_Category` int(10) NOT NULL,
  `name_Category` varchar(30) NOT NULL,
  `num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id_Category`, `name_Category`, `num`) VALUES
(1, 'Athletic', 1),
(2, 'Boots', 2),
(3, 'Sandals', 3),
(4, 'Loafers', 4),
(5, 'Sneakers', 5),
(6, 'Oxford', 14);

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE `History` (
  `id_Product` int(10) NOT NULL,
  `id_Order` int(10) NOT NULL,
  `status` varchar(40) NOT NULL,
  `date_Order` varchar(30) NOT NULL,
  `username_Member` varchar(30) NOT NULL,
  `time_Order` varchar(30) NOT NULL,
  `num` int(10) NOT NULL,
  `totalPrice` int(10) NOT NULL,
  `discount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`id_Product`, `id_Order`, `status`, `date_Order`, `username_Member`, `time_Order`, `num`, `totalPrice`, `discount`) VALUES
(1002, 1001, 'Processing', '2018/05/06', 'ss', '02:32:58pm', 21, 0, 0),
(1002, 1001, 'Processing', '2018/05/06', 'ss', '02:32:58pm', 22, 0, 0),
(1009, 1001, 'Processing', '2018/05/06', 'ss', '02:32:58pm', 23, 0, 0),
(1012, 1001, 'Processing', '2018/05/06', 'ss', '02:32:58pm', 24, 0, 0),
(1003, 1001, 'Processing', '2018/05/06', 'ss', '02:32:58pm', 25, 0, 0),
(1006, 1002, 'Processing', '2018/05/06', 'eiei', '03:58:14pm', 26, 0, 0),
(1008, 1002, 'Processing', '2018/05/06', 'eiei', '03:58:14pm', 28, 0, 0),
(1006, 1003, 'Processing', '2018/05/06', 'eiei', '06:21:56pm', 29, 0, 0),
(1008, 1003, 'Processing', '2018/05/06', 'eiei', '06:21:56pm', 31, 0, 0),
(1003, 1003, 'Processing', '2018/05/06', 'eiei', '06:21:56pm', 32, 0, 0),
(1006, 1004, 'Processing', '2018/05/06', 'eiei', '06:23:37pm', 33, 0, 0),
(1008, 1004, 'Processing', '2018/05/06', 'eiei', '06:23:37pm', 35, 0, 0),
(1003, 1004, 'Processing', '2018/05/06', 'eiei', '06:23:37pm', 36, 0, 0),
(1003, 1004, 'Processing', '2018/05/06', 'eiei', '06:23:37pm', 37, 0, 0),
(1006, 1005, 'Processing', '2018/05/06', 'eiei', '08:20:58pm', 38, 0, 0),
(1008, 1005, 'Processing', '2018/05/06', 'eiei', '08:20:58pm', 40, 0, 0),
(1003, 1005, 'Processing', '2018/05/06', 'eiei', '08:20:58pm', 41, 0, 0),
(1003, 1005, 'Processing', '2018/05/06', 'eiei', '08:20:58pm', 42, 0, 0),
(1006, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 44, 0, 0),
(1015, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 45, 0, 0),
(1007, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 46, 0, 0),
(1002, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 47, 0, 0),
(1002, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 48, 0, 0),
(1015, 1006, 'Processing', '2018/05/06', 'eiei', '08:22:02pm', 49, 0, 0),
(0, 1009, 'Processing', '2018/05/06', 'ss', '08:47:37pm', 52, 0, 0),
(0, 1010, 'Processing', '2018/05/06', 'ss', '08:47:51pm', 53, 0, 0),
(0, 1011, 'Processing', '2018/05/06', 'ss', '08:47:51pm', 54, 0, 0),
(1010, 1012, 'Processing', '2018/05/06', 'ss', '08:47:59pm', 55, 0, 0),
(1010, 1013, 'Processing', '2018/05/06', 'ss', '10:29:17pm', 56, 0, 0),
(1010, 1014, 'Processing', '2018/05/10', 'ss', '04:09:39pm', 57, 0, 0),
(1011, 1014, 'Processing', '2018/05/10', 'ss', '04:09:39pm', 58, 0, 0),
(1009, 1014, 'Processing', '2018/05/10', 'ss', '04:09:39pm', 59, 0, 0),
(1010, 1015, 'Processing', '2018/05/10', 'ss', '04:23:34pm', 60, 0, 0),
(1011, 1015, 'Processing', '2018/05/10', 'ss', '04:23:34pm', 61, 0, 0),
(1009, 1015, 'Processing', '2018/05/10', 'ss', '04:23:34pm', 62, 0, 0),
(1010, 1016, 'Processing', '2018/05/10', 'ss', '04:34:19pm', 63, 0, 0),
(1011, 1016, 'Processing', '2018/05/10', 'ss', '04:34:19pm', 64, 0, 0),
(1009, 1016, 'Processing', '2018/05/10', 'ss', '04:34:19pm', 65, 0, 0),
(1002, 1017, 'Processing', '2018/05/13', 'ss', '01:52:31pm', 66, 0, 0),
(1002, 1018, 'Processing', '2018/05/14', 'ss', '12:44:36pm', 67, 0, 0),
(1002, 1019, 'Processing', '2018/05/14', 'ss', '12:46:04pm', 68, 0, 0),
(1002, 1020, 'Processing', '2018/05/14', 'ss', '01:28:33pm', 69, 0, 0),
(1002, 1021, 'Processing', '2018/05/14', 'ss', '01:30:10pm', 70, 4500, 0),
(1002, 1022, 'Processing', '2018/05/14', 'ss', '01:30:38pm', 71, 4500, 0),
(1002, 1023, 'Processing', '2018/05/14', 'ss', '01:43:04pm', 72, 4500, 0),
(1002, 1024, 'Processing', '2018/05/14', 'ss', '01:45:21pm', 73, 4500, 0),
(1002, 1025, 'Processing', '2018/05/14', 'ss', '01:48:17pm', 74, 4500, 0),
(1002, 1026, 'Processing', '2018/05/14', 'ss', '01:48:47pm', 75, 4500, 0),
(1002, 1027, 'Processing', '2018/05/14', 'ss', '01:49:12pm', 76, 4500, 0),
(1002, 1028, 'Processing', '2018/05/14', 'ss', '01:49:28pm', 77, 4500, 0),
(1002, 1029, 'Processing', '2018/05/14', 'ss', '01:49:42pm', 78, 4500, 0),
(1002, 1030, 'Processing', '2018/05/14', 'ss', '01:58:29pm', 79, 4500, 0),
(1002, 1031, 'Processing', '2018/05/14', 'ss', '01:58:57pm', 80, 4500, 0),
(1002, 1032, 'Processing', '2018/05/14', 'ss', '01:59:22pm', 81, 4500, 0),
(1002, 1033, 'Processing', '2018/05/14', 'ss', '02:00:11pm', 82, 4500, 0),
(1002, 1034, 'Processing', '2018/05/14', 'ss', '02:00:22pm', 83, 4500, 0),
(1002, 1035, 'Processing', '2018/05/14', 'ss', '02:00:50pm', 84, 4500, 0),
(1002, 1036, 'Processing', '2018/05/14', 'ss', '02:02:37pm', 85, 4500, 20),
(1002, 1037, 'Processing', '2018/05/14', 'ss', '02:05:13pm', 86, 10500, 20),
(1005, 1037, 'Processing', '2018/05/14', 'ss', '02:05:13pm', 87, 10500, 20),
(1009, 1037, 'Processing', '2018/05/14', 'ss', '02:05:13pm', 88, 10500, 20),
(1002, 1038, 'Processing', '2018/05/14', 'ss', '02:07:18pm', 89, 10500, 20),
(1005, 1038, 'Processing', '2018/05/14', 'ss', '02:07:18pm', 90, 10500, 20),
(1009, 1038, 'Processing', '2018/05/14', 'ss', '02:07:18pm', 91, 10500, 20),
(1002, 1039, 'Processing', '2018/05/14', 'ss', '02:07:44pm', 92, 10500, 0),
(1005, 1039, 'Processing', '2018/05/14', 'ss', '02:07:44pm', 93, 10500, 0),
(1009, 1039, 'Processing', '2018/05/14', 'ss', '02:07:44pm', 94, 10500, 0),
(1002, 1040, 'Processing', '2018/05/14', 'ss', '02:08:07pm', 95, 10500, 0),
(1005, 1040, 'Processing', '2018/05/14', 'ss', '02:08:07pm', 96, 10500, 0),
(1009, 1040, 'Processing', '2018/05/14', 'ss', '02:08:07pm', 97, 10500, 0),
(1002, 1041, 'Processing', '2018/05/14', 'ss', '02:08:19pm', 98, 10500, 0),
(1005, 1041, 'Processing', '2018/05/14', 'ss', '02:08:19pm', 99, 10500, 0),
(1009, 1041, 'Processing', '2018/05/14', 'ss', '02:08:19pm', 100, 10500, 0),
(1002, 1042, 'Processing', '2018/05/14', 'ss', '02:08:20pm', 101, 10500, 0),
(1005, 1042, 'Processing', '2018/05/14', 'ss', '02:08:20pm', 102, 10500, 0),
(1009, 1042, 'Processing', '2018/05/14', 'ss', '02:08:20pm', 103, 10500, 0),
(1002, 1043, 'Processing', '2018/05/14', 'ss', '02:09:09pm', 104, 10500, 0),
(1005, 1043, 'Processing', '2018/05/14', 'ss', '02:09:09pm', 105, 10500, 0),
(1009, 1043, 'Processing', '2018/05/14', 'ss', '02:09:09pm', 106, 10500, 0),
(1002, 1044, 'Processing', '2018/05/14', 'ss', '02:09:38pm', 107, 10500, 0),
(1005, 1044, 'Processing', '2018/05/14', 'ss', '02:09:38pm', 108, 10500, 0),
(1009, 1044, 'Processing', '2018/05/14', 'ss', '02:09:38pm', 109, 10500, 0),
(1002, 1045, 'Processing', '2018/05/14', 'ss', '02:09:53pm', 110, 10500, 0),
(1005, 1045, 'Processing', '2018/05/14', 'ss', '02:09:53pm', 111, 10500, 0),
(1009, 1045, 'Processing', '2018/05/14', 'ss', '02:09:53pm', 112, 10500, 0),
(1002, 1046, 'Processing', '2018/05/14', 'ss', '02:10:34pm', 113, 10500, 200),
(1005, 1046, 'Processing', '2018/05/14', 'ss', '02:10:34pm', 114, 10500, 200),
(1009, 1046, 'Processing', '2018/05/14', 'ss', '02:10:34pm', 115, 10500, 200),
(1002, 1047, 'Processing', '2018/05/14', 'ss', '02:11:42pm', 116, 10500, 200),
(1005, 1047, 'Processing', '2018/05/14', 'ss', '02:11:42pm', 117, 10500, 200),
(1009, 1047, 'Processing', '2018/05/14', 'ss', '02:11:42pm', 118, 10500, 200),
(1002, 1048, 'Processing', '2018/05/14', 'ss', '02:12:09pm', 119, 1400, 200),
(1005, 1048, 'Processing', '2018/05/14', 'ss', '02:12:09pm', 120, 1400, 200),
(1009, 1048, 'Processing', '2018/05/14', 'ss', '02:12:09pm', 121, 1400, 200),
(1002, 1049, 'Processing', '2018/05/14', 'ss', '02:12:10pm', 122, 1400, 200),
(1005, 1049, 'Processing', '2018/05/14', 'ss', '02:12:10pm', 123, 1400, 200),
(1009, 1049, 'Processing', '2018/05/14', 'ss', '02:12:10pm', 124, 1400, 200),
(1002, 1050, 'Processing', '2018/05/14', 'ss', '02:12:27pm', 125, 1400, 20),
(1005, 1050, 'Processing', '2018/05/14', 'ss', '02:12:27pm', 126, 1400, 20),
(1009, 1050, 'Processing', '2018/05/14', 'ss', '02:12:27pm', 127, 1400, 20),
(1002, 1051, 'Processing', '2018/05/14', 'ss', '02:12:38pm', 128, 1400, 20),
(1005, 1051, 'Processing', '2018/05/14', 'ss', '02:12:38pm', 129, 1400, 20),
(1009, 1051, 'Processing', '2018/05/14', 'ss', '02:12:38pm', 130, 1400, 20),
(1002, 1052, 'Processing', '2018/05/14', 'ss', '02:12:40pm', 131, 1400, 20),
(1005, 1052, 'Processing', '2018/05/14', 'ss', '02:12:40pm', 132, 1400, 20),
(1009, 1052, 'Processing', '2018/05/14', 'ss', '02:12:40pm', 133, 1400, 20),
(1002, 1053, 'Processing', '2018/05/14', 'ss', '02:12:45pm', 134, 6000, 200),
(1005, 1053, 'Processing', '2018/05/14', 'ss', '02:12:45pm', 135, 6000, 200),
(1009, 1053, 'Processing', '2018/05/14', 'ss', '02:12:45pm', 136, 6000, 200),
(1002, 1054, 'Processing', '2018/05/14', 'ss', '02:12:55pm', 137, 16000, 20),
(1005, 1054, 'Processing', '2018/05/14', 'ss', '02:12:55pm', 138, 16000, 20),
(1009, 1054, 'Processing', '2018/05/14', 'ss', '02:12:55pm', 139, 16000, 20),
(1002, 1055, 'Processing', '2018/05/14', 'ss', '02:23:10pm', 140, 16000, 20),
(1005, 1055, 'Processing', '2018/05/14', 'ss', '02:23:10pm', 141, 16000, 20),
(1009, 1055, 'Processing', '2018/05/14', 'ss', '02:23:10pm', 142, 16000, 20),
(1002, 1056, 'Processing', '2018/05/14', 'ss', '02:23:25pm', 143, 16000, 20),
(1005, 1056, 'Processing', '2018/05/14', 'ss', '02:23:25pm', 144, 16000, 20),
(1009, 1056, 'Processing', '2018/05/14', 'ss', '02:23:25pm', 145, 16000, 20),
(1002, 1057, 'Processing', '2018/05/14', 'ss', '02:26:08pm', 146, 16000, 200),
(1005, 1057, 'Processing', '2018/05/14', 'ss', '02:26:08pm', 147, 16000, 200),
(1009, 1057, 'Processing', '2018/05/14', 'ss', '02:26:08pm', 148, 16000, 200),
(1002, 1058, 'Processing', '2018/05/14', 'ss', '02:27:13pm', 149, 16000, 200),
(1005, 1058, 'Processing', '2018/05/14', 'ss', '02:27:13pm', 150, 16000, 200),
(1009, 1058, 'Processing', '2018/05/14', 'ss', '02:27:13pm', 151, 16000, 200),
(1002, 1059, 'Processing', '2018/05/14', 'ss', '02:27:33pm', 152, 16000, 200),
(1005, 1059, 'Processing', '2018/05/14', 'ss', '02:27:33pm', 153, 16000, 200),
(1009, 1059, 'Processing', '2018/05/14', 'ss', '02:27:33pm', 154, 16000, 200),
(1002, 1060, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 155, 16000, 200),
(1005, 1060, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 156, 16000, 200),
(1009, 1060, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 157, 16000, 200),
(1002, 1061, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 158, 16000, 200),
(1005, 1061, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 159, 16000, 200),
(1009, 1061, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 160, 16000, 200),
(1002, 1062, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 161, 16000, 200),
(1005, 1062, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 162, 16000, 200),
(1009, 1062, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 163, 16000, 200),
(1002, 1063, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 164, 16000, 200),
(1005, 1063, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 165, 16000, 200),
(1009, 1063, 'Processing', '2018/05/14', 'ss', '02:27:35pm', 166, 16000, 200),
(1002, 1064, 'Processing', '2018/05/14', 'ss', '02:30:23pm', 167, 16000, 200),
(1005, 1064, 'Processing', '2018/05/14', 'ss', '02:30:23pm', 168, 16000, 200),
(1009, 1064, 'Processing', '2018/05/14', 'ss', '02:30:23pm', 169, 16000, 200),
(1002, 1065, 'Processing', '2018/05/14', 'ss', '02:30:25pm', 170, 16000, 200),
(1005, 1065, 'Processing', '2018/05/14', 'ss', '02:30:25pm', 171, 16000, 200),
(1009, 1065, 'Processing', '2018/05/14', 'ss', '02:30:25pm', 172, 16000, 200),
(1002, 1066, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 173, 16000, 200),
(1005, 1066, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 174, 16000, 200),
(1009, 1066, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 175, 16000, 200),
(1002, 1067, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 176, 16000, 200),
(1005, 1067, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 177, 16000, 200),
(1009, 1067, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 178, 16000, 200),
(1002, 1068, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 179, 16000, 200),
(1005, 1068, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 180, 16000, 200),
(1009, 1068, 'Processing', '2018/05/14', 'ss', '02:30:26pm', 181, 16000, 200),
(1002, 1069, 'Processing', '2018/05/14', 'ss', '02:37:31pm', 182, 16000, 200),
(1005, 1069, 'Processing', '2018/05/14', 'ss', '02:37:31pm', 183, 16000, 200),
(1009, 1069, 'Processing', '2018/05/14', 'ss', '02:37:31pm', 184, 16000, 200),
(1002, 1070, 'Processing', '2018/05/14', 'ss', '02:37:54pm', 185, 16000, 200),
(1005, 1070, 'Processing', '2018/05/14', 'ss', '02:37:54pm', 186, 16000, 200),
(1009, 1070, 'Processing', '2018/05/14', 'ss', '02:37:54pm', 187, 16000, 200),
(1002, 1071, 'Processing', '2018/05/14', 'ss', '02:38:00pm', 188, 16000, 200),
(1005, 1071, 'Processing', '2018/05/14', 'ss', '02:38:00pm', 189, 16000, 200),
(1009, 1071, 'Processing', '2018/05/14', 'ss', '02:38:00pm', 190, 16000, 200),
(1002, 1072, 'Processing', '2018/05/14', 'ss', '02:38:09pm', 191, 16000, 200),
(1005, 1072, 'Processing', '2018/05/14', 'ss', '02:38:09pm', 192, 16000, 200),
(1009, 1072, 'Processing', '2018/05/14', 'ss', '02:38:09pm', 193, 16000, 200),
(1002, 1073, 'Processing', '2018/05/14', 'ss', '02:42:48pm', 194, 16000, 200),
(1005, 1073, 'Processing', '2018/05/14', 'ss', '02:42:48pm', 195, 16000, 200),
(1009, 1073, 'Processing', '2018/05/14', 'ss', '02:42:48pm', 196, 16000, 200),
(1002, 1074, 'Processing', '2018/05/14', 'ss', '02:43:12pm', 197, 16000, 200),
(1005, 1074, 'Processing', '2018/05/14', 'ss', '02:43:12pm', 198, 16000, 200),
(1009, 1074, 'Processing', '2018/05/14', 'ss', '02:43:12pm', 199, 16000, 200),
(1002, 1075, 'Processing', '2018/05/14', 'ss', '02:44:02pm', 200, 16000, 200),
(1005, 1075, 'Processing', '2018/05/14', 'ss', '02:44:02pm', 201, 16000, 200),
(1009, 1075, 'Processing', '2018/05/14', 'ss', '02:44:02pm', 202, 16000, 200),
(1002, 1076, 'Processing', '2018/05/14', 'ss', '03:04:42pm', 203, 10500, 200),
(1005, 1076, 'Processing', '2018/05/14', 'ss', '03:04:42pm', 204, 10500, 200),
(1009, 1076, 'Processing', '2018/05/14', 'ss', '03:04:42pm', 205, 10500, 200),
(1002, 1077, 'Processing', '2018/05/14', 'ss', '03:09:56pm', 206, 10500, 200),
(1005, 1077, 'Processing', '2018/05/14', 'ss', '03:09:56pm', 207, 10500, 200),
(1009, 1077, 'Processing', '2018/05/14', 'ss', '03:09:56pm', 208, 10500, 200);

-- --------------------------------------------------------

--
-- Table structure for table `Like_Product`
--

CREATE TABLE `Like_Product` (
  `SSN` int(10) NOT NULL,
  `ID_product` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `SSN` int(10) NOT NULL,
  `fullName` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `point` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`SSN`, `fullName`, `email`, `address`, `password`, `username`, `point`) VALUES
(4, 'ss', 'ss@ss.ss', '11/20 eiei', 'ss', 'ss', 210),
(65, 'eiei eiei', 'eiei@gmail.com', 'eiei', '1234', 'eiei', 0),
(66, 'Aom Ann', 'Aom@Ann.joy', 'AomHome', 'joy', 'AomAnn', 0),
(69, 'supanat bam', 'bond@hot.com', '111', '1234', 'bond', 0);

-- --------------------------------------------------------

--
-- Table structure for table `NowUser`
--

CREATE TABLE `NowUser` (
  `UserName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NowUser`
--

INSERT INTO `NowUser` (`UserName`) VALUES
('ss');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `nameProduct` varchar(200) NOT NULL,
  `img_product` varchar(80) NOT NULL,
  `id_Product` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `price` int(10) NOT NULL,
  `countProduct` int(10) NOT NULL,
  `SSN` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`nameProduct`, `img_product`, `id_Product`, `type`, `description`, `price`, `countProduct`, `SSN`) VALUES
('PUMA IGNITE Flash evoKNIT Sneaker', 'puman1.jpg', 1001, 1, 'The PUMA IGNITE Flash evoKNIT Sneaker is a lightweight, running-inspired sneaker. The tooling features IGNITE in the heel, providing a lightweight, comfortable, and cushioned feel under the foot. Molded rubber heel clip is designed to secure the heel and caps off the finishing details', 3000, 2, 1),
('adidas NEO Cloudfoam  Running Shoe', 'adidas1.jpg', 1002, 1, 'The ultimate in comfort and design, the adidas NEO Cloudfoam Ultimate Running Shoe marries the best of on-trend style with performance features for a contemporary feel that\'s as at home in the street, as it is in the gym. Sock-like knit upper creates a no fuss fit, and Cloudfoam outsole delivers exceptional cushioning and shock absorption. Great for neutral runners, or those who are neutral about running, this adidas sneaker fits true to size.', 4500, 2, 2),
('Skechers Elite Flex Ibache Sneaker', 'Skechers1.jpg', 1003, 1, 'Sleek, smooth and very comfortable style comes with almost no effort in the SKECHERS Elite Flex - Ibache Sneaker. Skech Knit Mesh nearly seamless woven fabric upper in a slip on sporty comfort walking and training sneaker with interwoven designs. Air Cooled Memory Foam insole, highly flexible comfort midsole.', 3000, 1, 3),
('UGG Neumel Unlined Leather Chukka Boot', 'UGG1.jpg', 1004, 2, 'The UGG Neumel Unlined Leather Chukka Boot is the perfect blend of style and comfort. This lightweight and breathable boot features a textile-lined die-cut EVA insole that ensures comfort and the Treadlite by UGG™ outsole that provides cushioning, traction, and durability.', 3900, 3, 4),
('Timberland Classic 6\" Basic Waterproof', 'Timberland1.jpg', 1005, 2, 'Timberland Classic 6\" Basic Waterproof Product Description\r\n\r\nWhen Timberland set out to make a durable waterproof boot some 40 years ago, they had no idea that quality craftsmanship would become a cultural icon in the form of the Timberland 6\" Basic Waterproof Boot. These iconic Tims include long-wearing features that can stand up to the wear and tear of any climate and any weather. Premium full grain and nubuck upper is waterproof and seam-sealed to the injection molded rubber lug outsole to keep feet dry. 4 Rows of nylon stitching in the upper resist rot and prevent stress. PrimaLoft ECO insulation in the interior is made from 50% PET (made from recycled plastic bottles) to insulate feet and retain warmth, even when wet. Padded leather collar hugs the ankle while and 100% recycled nylon Taslan laces stay tied for a perfect fit. ', 4400, 40, 5),
('Dr. Martens Pascal 8-Eye Boot', 'Martens1.jpg', 1006, 2, 'The modern classic Pascal from Dr. Martens has the original Dr. Martens air-cushioned sole, providing underfoot comfort and durability since 1960. It\'s oil and fat resistant, tough, and offers good abrasion and slip resistance! This 8-eye boot is a Goodyear-welted product. The upper and sole are sewn together, not merely glued, like many other footwear constructions. This, with the Dr. Martens Z welt-stitch and heat sealing process, makes this shoe unique! This above the ankle boot is both fashionable and functional!', 6700, 30, 7),
('adidas adilette CF + Stripes C Sandal ', 'adidas2.jpg', 1007, 3, 'Adidas adilette CF + Stripes C Sandal features an injected EVA outsole for maximum cushioning, these men\'s lightweight slides bring relaxed style. Designed with an extra-soft CLOUDFOAM Plus footbed for an ultra-comfortable fit, providing relaxing comfort for tired feet.', 1400, 20, 8),
('Teva Original Universal ', 'tava1.jpg', 1008, 3, '30 years ago, a Grand Canyon river guide forever changed adventure when he invented the Teva Sports Sandal. Revered for its utility, trusted for its reliability and loved for its timeless style, the sandal is an icon of the adventurous spirit. Today, we honor this heritage by reintroducing the Original Universal. We didn\'t change the nylon webbing, contoured EVA footbed or durable rubber sole of the 1984 version, but we energized the classic silhouette with modern, vibrant colors for today\'s adventurers.', 2100, 40, 9),
('Nunn Bush Kent Loafer', 'nunn1.jpg', 1009, 4, 'Flaunt a chic look with the Kent penny loafer. Easy to slip on, this loafer can be worn on everyday occasions in a variety of settings. The Horseshoe Comfort Gel footbed provides underfoot protection. It offers comfort and cushioning with every step you take. Rubber outsole.', 1600, 70, 10),
('Converse Chuck Taylor All Star Low Sneaker', 'Converse1.jpg', 1010, 5, 'The Converse Chuck Taylor All Star Low Sneaker is a high-impact statement-maker that will never go out of style. The low-top canvas silhouette, lace-up front, and a vulcanized rubber sole provide a great fit and easy everyday feel. The All-Star heel patch certifies these shoes as a true cultural icon, so whether you\'re rocking classic black, clean white, or any of our other colorful options, your unique style will shine through in your new Chucks.', 2400, 30, 11),
('Cole Haan GrandEvolution Shortwing Oxford', 'cole1.jpg', 1011, 6, 'Combining the elegance of a wingtip with the sporty style of a sneaker, the Cole Haan GrandEvolution Shortwing Oxford is a bold casual shoe with unbeatable Grand.OS cushioning technology.', 2300, 20, 17),
('Telic Flip Flop', 'telie.jpg', 1012, 3, 'Plush comfort makes the Telic Flip Flop a must-have addition to your sandals collection. Made with a lightweight cushioned footbed that offers arch support and shock absorbing features during impact for pain relief. The Telic Flip Flop for men and women is carefully constructed with a deep heel cup for added stability. These flip flops are recyclable and machine washable. Synthetic upper and outsole.', 600, 230, 18),
('Skechers Skech-Air Bounce N Bop Sneaker', 'Skechers2.jpg', 1014, 5, 'The world is her bouncy castle when she\'s wearing the SKECHERS Skech-Air - Bounce N Bop Sneaker. Skech Knit Mesh fabric upper in a lace up athletic walking and training shoe with unique visible air cushioned outsole. Air Cooled Memory Foam insole.', 1500, 40, 21),
('Clarks Clarkdale Gobi Chelsea Boot', 'Clarks1.jpg', 1015, 2, 'Say yes to impeccable casual styling with the Clarks Clarkdale Gobi Chelsea Boot. Part of the ClarksÂ® Artisan Collection, this boot provides excellent arch support, and features a removable polyurethane footbed.', 1200, 120, 23),
('hello', 'a09.jpg', 3001, 3, 'world', 2000, 30, 24);

-- --------------------------------------------------------

--
-- Table structure for table `Promotion`
--

CREATE TABLE `Promotion` (
  `PromotionID` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `point` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Promotion`
--

INSERT INTO `Promotion` (`PromotionID`, `amount`, `discount`, `point`) VALUES
(1, 5000, 200, 10),
(2, 1200, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Shopping_Cart`
--

CREATE TABLE `Shopping_Cart` (
  `ID_product` int(10) NOT NULL,
  `num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Shopping_Cart`
--

INSERT INTO `Shopping_Cart` (`ID_product`, `num`) VALUES
(1002, 25),
(1005, 26),
(1009, 27);

-- --------------------------------------------------------

--
-- Table structure for table `Subscribe_Promotion`
--

CREATE TABLE `Subscribe_Promotion` (
  `email` varchar(40) NOT NULL,
  `ssn` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Subscribe_Promotion`
--

INSERT INTO `Subscribe_Promotion` (`email`, `ssn`) VALUES
('aa', 1),
('eiei', 2),
('eiei', 3),
('eiei', 4),
('', 5),
('eiei', 6),
('', 7),
('bond9509@hotmail.com', 8),
('aomann@mail.com', 9),
('bonf@hotmai.com', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `History`
--
ALTER TABLE `History`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `Like_Product`
--
ALTER TABLE `Like_Product`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `Promotion`
--
ALTER TABLE `Promotion`
  ADD PRIMARY KEY (`PromotionID`);

--
-- Indexes for table `Shopping_Cart`
--
ALTER TABLE `Shopping_Cart`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `Subscribe_Promotion`
--
ALTER TABLE `Subscribe_Promotion`
  ADD PRIMARY KEY (`ssn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `History`
--
ALTER TABLE `History`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `Like_Product`
--
ALTER TABLE `Like_Product`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `Promotion`
--
ALTER TABLE `Promotion`
  MODIFY `PromotionID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Shopping_Cart`
--
ALTER TABLE `Shopping_Cart`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Subscribe_Promotion`
--
ALTER TABLE `Subscribe_Promotion`
  MODIFY `ssn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
