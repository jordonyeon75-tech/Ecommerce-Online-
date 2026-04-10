-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 02:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(26, 21, 38, 1),
(35, 21, 42, 100),
(64, 24, 53, 44);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Food Ingredients ', 'food'),
(8, 'Vegetable Section', 'vegetable'),
(9, 'Others', 'others'),
(10, 'Seafood Section', 'seafood'),
(13, 'Flesh meat', 'meat');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 48, 4),
(22, 11, 50, 2),
(23, 11, 38, 2),
(24, 12, 40, 12),
(25, 13, 40, 2),
(26, 14, 42, 3),
(27, 14, 43, 25),
(28, 15, 38, 1),
(29, 16, 35, 1),
(30, 16, 39, 1),
(31, 16, 42, 1),
(32, 17, 39, 1),
(33, 17, 43, 1),
(34, 18, 43, 1),
(35, 19, 59, 20),
(36, 20, 60, 5),
(37, 21, 60, 10),
(38, 22, 60, 1),
(39, 23, 35, 10),
(40, 24, 53, 80),
(41, 25, 30, 80),
(42, 30, 30, 2),
(43, 31, 30, 4),
(44, 32, 30, 80);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `stock` int(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `stock`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 10, 'Sadin Fish', '<p>1kg - RM10</p>\r\n\r\n<p>1.5kg - RM15</p>\r\n\r\n<p>2kg - RM20</p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, 'sadin-fish', 2.5, 'sadin-fish_1683790199.jpg', '2023-07-21', 28),
(35, 10, 'Prawn 5kg', '', 80, 'prawn-5kg', 30, 'prawn-5kg.jpg', '2023-07-21', 4),
(36, 10, 'Lobster 5kg', '', 90, 'lobster-5kg', 50, 'dragon-prawn-5kg.jpg', '2023-07-20', 3),
(37, 10, 'Big Prawn 5kg', '<p>nn</p>\r\n', 80, 'big-prawn-5kg', 40, 'big-prawn-5kg.jpg', '2023-07-21', 6),
(38, 8, 'Carrot Cina -  5kg', '', 90, 'carrot-cina-5kg', 20, 'carrot-cina-5kg.jpg', '2023-07-22', 1),
(39, 8, 'Carrot AUS -  5kg', '', 90, 'carrot-aus-5kg', 30, 'carrot-aus-5kg.jpg', '2023-07-21', 4),
(40, 8, 'Potato MYS - 5kg', '', 90, 'potato-mys-5kg', 25, 'potato-msg-5kg.jpg', '2023-06-26', 1),
(41, 8, 'Potato AUS - 5kg', '', 90, 'potato-aus-5kg', 40, 'potato-aus-5kg.jpg', '0000-00-00', 0),
(42, 5, 'Yeo\'s Soya sos (1 Box)', '', 90, 'yeo-s-soya-sos-1-box', 50, 'yeo-s-soya-sos-1-box.jpg', '2023-07-20', 19),
(43, 5, 'Life Thai Chili sos (1 box) ', '', 90, 'life-thai-chili-sos-1-box', 60, 'life-thai-chili-sos-1-box.jpg', '2023-07-21', 3),
(45, 5, 'Kicap soya (1 box)', '', 90, 'kicap-soya-1-box', 40, 'kicap-soya-1-box.jpg', '0000-00-00', 0),
(46, 5, 'Cap Pokok Kelapa (Soya sos) 1 box ', '', 90, 'cap-pokok-kelapa-soya-sos-1-box', 50, 'cap-pokok-kelapa-soya-sos-1-box.jpg', '0000-00-00', 0),
(47, 5, 'Chilli Hills (1 box) ', '', 90, 'chilli-hills-1-box', 80, 'chilli-hills-1-box.jpg', '2023-07-21', 1),
(48, 5, 'UTUT BABAS - Chilli Powder (1 box)', '', 90, 'utut-babas-chilli-powder-1-box', 55, 'utut-babas-chilli-powder-1-box.jpg', '2023-05-25', 4),
(49, 5, 'Maggi Chili sos (1box)', '', 90, 'maggi-chili-sos-1box', 65, 'maggi-chili-sos-1box.jpg', '0000-00-00', 0),
(50, 13, 'Breast (5kg)', '', 90, 'breast-5kg', 60, 'breast-5kg.jpg', '2023-06-26', 1),
(53, 9, 'Coconut - 20 cluster ', '', 90, 'coconut-20-cluster', 50, 'coconut-20-cluster.jpg', '2023-07-21', 4),
(54, 5, 'Sugar (1box) ', '', 90, 'sugar-1box', 30, 'sugar-1box.jpg', '0000-00-00', 0),
(63, 8, 'Green Chill - 5kg', '', 90, 'green-chill-5kg', 10, 'green-chill-5kg.jpg', '2023-07-21', 1),
(64, 10, 'watermelon 1box ', '', 90, 'watermelon-1box', 50, 'watermelon-1box.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(11, 21, 'PAYID-MR7LCGY94502529MD444700K', '2023-06-06'),
(12, 21, 'PAYID-MSJD5BY9BD7382683232853X', '2023-06-21'),
(13, 21, 'PAYID-MSJH4CI1AR89272N9613550X', '2023-06-21'),
(14, 21, 'PAYID-MSNIFAY7ME56139YJ1457046', '2023-06-27'),
(15, 21, 'PAYID-MSVUTTQ17G11224VX7630022', '2023-07-10'),
(16, 21, 'PAYID-MSX2WWA58429594KD858064H', '2023-07-13'),
(17, 21, 'PAYID-MS4NTGI8X7935186C7232741', '2023-07-20'),
(18, 26, 'PAYID-MS5ACFQ84K66473SN777771V', '2023-07-21'),
(19, 24, 'PAYID-MS5CQ4Y9U431882WD163721V', '2023-07-21'),
(20, 24, 'PAYID-MS5DHMQ7BD473109N639613F', '2023-07-21'),
(21, 24, 'PAYID-MS5DP7Q45P7230677712462C', '2023-07-21'),
(22, 24, 'PAYID-MS5DREA40A95739WV843630U', '2023-07-21'),
(23, 24, 'PAYID-MS5HYDQ1BS63961V0811721K', '2023-07-21'),
(24, 24, 'PAYID-MS5HYXA7WT28707S5313880T', '2023-07-21'),
(25, 24, 'PAYID-MS5H2DI7T1828515J205170Y', '2023-07-21'),
(26, 24, 'PAYID-MS5H2OY3YW11686TL426723A', '2023-07-21'),
(27, 24, 'PAYID-MS5IF3Q9YV19516698134635', '2023-07-21'),
(28, 24, 'PAYID-MS5IHPQ83328986X5304553X', '2023-07-21'),
(29, 24, 'PAYID-MS5IKQY537876635U6099124', '2023-07-21'),
(30, 24, 'PAYID-MS5IOVA7Y6821948X5391448', '2023-07-21'),
(31, 24, 'PAYID-MS5IPRY76699232EY798861F', '2023-07-21'),
(32, 24, 'PAYID-MS5IUSI85L33987DC0334209', '2023-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `address2` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `address2`, `city`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Acc', '', '', '', '', 'admin.jpg', 1, '', '', '2020-12-30'),
(24, 'm-2147905@moe-dl.edu.my', '$2y$10$OOre1jmbjOxViFTzqeCABO14FQpm9SQBJUjpoLkRr4Txo/UDwRqrG', 0, 'JO', 'Hai', 'air hitam', 'georgetown', 'malaysia', '0124567894', 'man.jpg', 1, 'aPsmqk5fo1Je', '', '2023-07-20'),
(26, 'sc07210074dc@sentral.edu.my', '$2y$10$CJRU0eIkpvaFNf7S8zohQeLaJbBi4ab8tIpI5s70sFuU9AYs1UdDS', 0, 'Jordon', 'yeon', 'air hitam', 'georgetown', 'malaysia', '0124567894', 'man.jpg', 1, 'FZnudGXbA8TL', '', '2023-07-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
