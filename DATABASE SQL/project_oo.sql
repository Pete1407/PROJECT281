-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 06:49 PM
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
-- Table structure for table `Like_Product`
--

CREATE TABLE `Like_Product` (
  `SSN` int(10) NOT NULL,
  `ID_product` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Like_Product`
--

INSERT INTO `Like_Product` (`SSN`, `ID_product`) VALUES
(75, 1005),
(76, 1003);

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
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`SSN`, `fullName`, `email`, `address`, `password`, `username`) VALUES
(4, 'ss', 'ss@ss.ss', 'ss', 'ss', 'ss'),
(50, 'sdf', 'sd@asd.asd', 'asdf', 'werf', '3efv'),
(54, 'asd', 'asd@asd.asd', 'asd', 'asdf', 'asdasd'),
(55, 'sa', 'sa@sa.sa', 'sa', 'sasa', 'ss'),
(56, 'sa', 'ss@ss.ss', 'ss', 'ss', 'ss'),
(57, 'ss', 'ss@ss.ss', 'ss', 'ss', 'ss'),
(58, 'aa', 'aa@aa.aa', 'aa', 'aa', 'aa'),
(59, 'as', 'aa@aa.aa', 'ewgrw', 'rwgw', 'wegv'),
(60, 'ss', 'aa@aa.aa', 'aa', 'grhtngb', 'efr56j7um'),
(61, 'aa', 'aa@aa.aa', 'aa', 'derf', 'aades'),
(62, 'aa', 'aa@aa.aa', 'aa', 'dfg', 'tred'),
(63, '', '', '', '', ''),
(64, 'Supanat Bampennorakij', 'bond_sk@hotmail.com', 'bangkok', 'eiei', 'bond1234');

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
('Skechers Skech-Air Bounce N Bop Sneaker', 'Skechers2.jpg', 1014, 5, 'The world is her bouncy castle when she\'s wearing the SKECHERS Skech-Air - Bounce N Bop Sneaker. Skech Knit Mesh fabric upper in a lace up athletic walking and training shoe with unique visible air cushioned outsole. Air Cooled Memory Foam insole.', 1500, 40, 21);

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
(1008, 1),
(1002, 3),
(1002, 15),
(1001, 16),
(1005, 17);

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
('', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
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
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Like_Product`
--
ALTER TABLE `Like_Product`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `SSN` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `Shopping_Cart`
--
ALTER TABLE `Shopping_Cart`
  MODIFY `num` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Subscribe_Promotion`
--
ALTER TABLE `Subscribe_Promotion`
  MODIFY `ssn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
