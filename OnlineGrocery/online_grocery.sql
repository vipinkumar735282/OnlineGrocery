-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 10:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('rittikgoyal22', 'Rittik Goyal', 'rittikgoyal22@gmail.com', '9517478984', 'Zirakpur', 'Rittik@95174');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(86, 'Onion, 1Kg', 29, 'Onion can fill your kitchen with a thick spicy aroma. It is a common base vegetable in most Indian dishes', 8, 'images/onion.jpg', 'ENABLE'),
(87, 'Potato, 1Kg', 26, 'It\'s a tasty and versatile potato with an exceptionally creamy and melting texture.', 8, 'images/potato.png', 'ENABLE'),
(88, 'Tomato, 1Kg', 15, 'Tomatoes contain numerous edible seeds and are red in colour due to lycopene, an anti-oxidant.', 8, 'images/tomato.jpeg', 'ENABLE'),
(89, 'Green Chilli, 250gm', 20, 'Green chillis are the best kitchen ingredient to bring a dash of spiciness to recipes.', 8, 'images/green.jpg', 'ENABLE'),
(90, 'Banana, 500gm', 18, 'Soft, buttery texture of bananas that are light green and have a great fragrance and taste.', 9, 'images/Banana.jpg', 'ENABLE'),
(91, 'Apple, 1Kg', 135, 'Best apples with residue and wax free peel from the trusted growers.', 9, 'images/Apple.jpg', 'ENABLE'),
(92, 'Orange, 1Kg', 90, 'Lovely, bright, reddish, glossy and smooth skinned fruits, these little oranges are a sheer experience.', 9, 'images/Oranges.jpg', 'ENABLE'),
(93, 'Papaya, 500gm', 30, 'Initially green and slightly bitter in taste, papayas are butter-yellow when fully ripe and shaped like a pear.', 9, 'images/papaya.jpeg', 'ENABLE'),
(94, 'Milk, 1ltr', 62, 'We start with high-quality milk which is sourced after careful selection that makes the milk germ-free.', 10, 'images/milk.jpg', 'ENABLE'),
(95, 'Bread, 450gm', 56, 'Bread is low in saturated fat and doubles up as a good source of fibre.', 10, 'images/bread.jpg', 'ENABLE'),
(96, 'Paneer, 200gm', 80, 'It is freshly made paneer in a hygienical method of packing with multilayer thermo-forming packaging.', 10, 'images/paneer.png', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('bobylahiri0302', 'Boby Kumari', 'bobylahiri0302@gmail.com', '7372805994', 'Patna', 'Boby@0302'),
('rittikgoyal22', 'Rittik Goyal', 'rittikgoyal22@gmail.com', '9517478984', 'Zirakpur', 'Rittik@95174'),
('vipinkumar12', 'Vipin Kumar', 'vipinkumar12@gmail.com', '7352822354', 'Kharar', 'Vipin@12');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 87, 'Potato, 1Kg', 26, 1, '2023-04-20', 'rittikgoyal22', 8),
(2, 89, 'Green Chilli, 250gm', 20, 1, '2023-04-20', 'rittikgoyal22', 8),
(3, 90, 'Banana, 500gm', 18, 1, '2023-04-20', 'rittikgoyal22', 9),
(4, 94, 'Milk, 1ltr', 62, 1, '2023-04-20', 'rittikgoyal22', 10);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(8, 'Fresh Grocery Store', 'freshgrocery@gmail.com', '159357456', 'Zirakpur', 'rittikgoyal22'),
(9, 'Farm to You', 'farmtoyou@gmail.com', '753951123', 'Patna', 'bobylahiri0302'),
(10, 'Grocery Gurus', 'grocerygurus@gmail.com', '456753951', 'Kharar', 'vipinkumar12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
