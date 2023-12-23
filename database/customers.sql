-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 08:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `Product_id` bigint(10) NOT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `product_discription` varchar(200) DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `price` bigint(10) DEFAULT NULL,
  `discount` bigint(10) DEFAULT NULL,
  `actual_price` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`Product_id`, `product_name`, `product_discription`, `product_category`, `image`, `price`, `discount`, `actual_price`) VALUES
(6, 'Chicken Roll', 'our company is the formost in offering chicken roll to the clients.It is made under the strict vigilance of our dexterous chefs. ', 'Chicken Roll', 'image/Aloo Kathi Roll.jfif', 400, 30, 370),
(7, 'Barbeque', 'Barbecue is probably the world\'s oldest cooking method.  It has come a long way from the traditional pit BBQ that originated in the Caribbean to the great Indian tandoor.', 'Chicken Roll', 'image/barbieque.jfif', 400, 30, 370),
(8, 'Chicken Biryani', 'Chicken Biryani is a delicious savory rice dish loaded with spicy marinated chicken,caramelized onions,and flavorful saffron rice.', 'Biryani', 'image/biryana.jfif', 300, 30, 370),
(9, 'Fried Fish', 'This delicious,crispy and spicy fish fry  makes for a great appetizer or a side to a meal.', 'Chicken Roll', 'image/fried fish.jpg', 300, 30, 370),
(10, 'Tandoori Chicken', 'Tandoori chicken is a chicken dish prepared by roasting chicken marinated in yoghurt and spices in a tandoor, a cylindrical clay oven.', 'Tunduri Chicken', 'image/tandoori chicken.jfif', 400, 30, 370),
(11, 'Jelly bee', 'Jalebi is a popular Indian dessert made with maida and sugar syrup. ', 'Pizza', 'image/jell bee.jpg', 300, 30, 270),
(12, 'Kathi Roll', 'Kathi or Kati Rolls are one of the delicious food that you can enjoy anytime. This snack recipe is stomach-filling and is best for office-goers.', 'Chicken Roll', 'image/kathi roll.jpg', 300, 30, 270),
(13, 'Shawarma Roll', 'Shawarma is prepared from thin cuts of seasoned marinated lamb,mutton,veal,beef,chicken.', 'Pizza', 'image/shawarma roll.jfif', 400, 30, 370),
(14, 'Sunday Roast', 'The Sunday roast is a main meal that is typically served on Sunday, consisting of roasted meat, roast potato, and accompaniments such as Yorkshire pudding, stuffing, vegetables and gravy.', 'Pizza', 'image/sunday_roast.png', 300, 30, 370),
(15, 'pizza', 'Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and various other ingredients baked at a high temper', 'Pizza', 'image/pizza.webp', 200, 30, 0),
(18, 'sandwich', 'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread.', 'Pizza', 'image/sandwich.jfif', 100, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `landmark` varchar(50) DEFAULT NULL,
  `pincode` bigint(6) DEFAULT NULL,
  `phone_number` bigint(12) DEFAULT NULL,
  `alternate_number` bigint(12) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `firstname`, `lastname`, `address`, `landmark`, `pincode`, `phone_number`, `alternate_number`, `email_id`) VALUES
(91, 1, 'nayeem', 'majeed', 'natipora', 'naytipora', 190001, 7889722045, 9907770106, 'mallabasit499@gmail.com'),
(92, 2, 'beigh', 'farooq', 'kupwara', 'kupwara', 193224, 7889722045, 9907770106, 'beighfarooq@gmail.com'),
(93, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(94, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(95, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(96, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'naytipora', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(97, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(98, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(99, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(100, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 9988788787, 9906770106, 'mallabasit499@gmail.com'),
(101, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 9988788787, 9906770106, 'mallabasit499@gmail.com'),
(102, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 9988788787, 9906770106, 'mallabasit499@gmail.com'),
(103, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(104, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(105, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'budgam', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(106, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(107, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(108, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 98788778687, 'mallabasit499@gmail.com'),
(109, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(110, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(111, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(112, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(113, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(114, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(115, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(116, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(117, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(118, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(119, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(120, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(121, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(122, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(123, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(124, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(125, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(126, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(127, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(128, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(129, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(130, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(131, 0, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(132, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(133, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(134, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(135, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(136, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(137, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(138, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(139, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(140, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(141, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(142, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(143, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(144, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(145, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(146, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(147, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com'),
(148, 1, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 9988788787, 9906770106, 'mallabasit499@gmail.com'),
(149, 11, 'basit', 'naseem', 'shutre shahi srinagar', 'botingooo', 190001, 7889722045, 9906770106, 'mallabasit499@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'Food cart', 'foodcart@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` bigint(20) NOT NULL,
  `pid` varchar(30) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `joined` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id`, `pid`, `quantity`, `userid`, `joined`) VALUES
(1, '8', '1', '2', '2019-07-23 17:57:31'),
(2, '8', '1', '2', '2019-07-23 17:57:34'),
(3, '12', '-1', '10', '2019-09-17 19:18:21'),
(4, '12', '1', '10', '2019-09-17 19:18:23'),
(5, '6', '1', '10', '2019-09-19 02:54:36'),
(6, '6', '1', '1', '2019-10-28 05:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `SerialNumber` bigint(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`SerialNumber`, `name`, `email`, `message`, `date/time`) VALUES
(2, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 07:12:22'),
(3, 'farooq ahmad beigh', 'beighfarooq199@gmail.com', 'i am facing a problem while signing in', '2019-07-16 07:13:15'),
(4, 'Nayeem Majeed', 'nayeem@gmail.com', 'i am facing a problem while signing in', '2019-07-16 07:14:43'),
(5, 'Aadil shafi', 'aadil@gmail.com', 'i am facing a problem while signing in', '2019-07-16 07:16:05'),
(6, 'Junaid', 'junaid@123', 'i am facing a problem while signing in', '2019-07-16 16:09:20'),
(7, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 16:24:23'),
(8, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 16:28:04'),
(9, 'farooq ahmad beigh', 'foodcart@gmail.com', 'i am facing a problem while signing in', '2019-07-16 16:31:52'),
(10, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:36:10'),
(11, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:36:58'),
(12, 'Nayeem Majeed', 'nayeem@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:40:05'),
(13, 'Nayeem Majeed', 'nayeem@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:40:33'),
(14, 'basit naseem', 'mallabasit499@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:44:12'),
(15, 'farooq ahmad beigh', 'foodcart@gmail.com', 'i am facing a problem while signing in', '2019-07-16 19:47:03'),
(16, 'basit naseem', 'foodcart@gmail.com', 'i am facing a problem while signing in', '2020-06-04 04:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'foodcart@gmail.com', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` bigint(10) NOT NULL,
  `order_number` bigint(10) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date/time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_number`, `order_status`, `user_id`, `date/time`) VALUES
(13049, 65, 'pending', 1, '2019-07-15 23:27:20'),
(13050, 66, 'pending', 1, '2019-07-15 23:27:20'),
(13051, 66, 'pending', 1, '2019-07-19 00:35:37'),
(13052, 67, 'pending', 1, '2019-07-19 00:35:37'),
(13053, 66, 'pending', 1, '2019-07-19 07:34:35'),
(13054, 67, 'pending', 1, '2019-07-19 07:34:35'),
(13055, 68, 'pending', 1, '2019-07-19 07:34:35'),
(13056, 69, 'pending', 1, '2019-07-19 07:34:35'),
(13057, 70, 'pending', 1, '2019-07-19 07:34:35'),
(13058, 71, 'pending', 2, '2019-07-19 07:37:45'),
(13059, 72, 'pending', 2, '2019-07-19 07:37:45'),
(13060, 73, 'pending', 2, '2019-07-19 07:37:45'),
(13061, 66, 'pending', 1, '2019-07-22 16:20:19'),
(13062, 67, 'pending', 1, '2019-07-22 16:20:19'),
(13063, 68, 'pending', 1, '2019-07-22 16:20:19'),
(13064, 69, 'pending', 1, '2019-07-22 16:20:19'),
(13065, 70, 'pending', 1, '2019-07-22 16:20:19'),
(13066, 74, 'pending', 1, '2019-07-22 16:20:19'),
(13067, 75, 'pending', 1, '2019-07-22 16:20:19'),
(13068, 76, 'pending', 1, '2019-07-22 16:20:19'),
(13069, 66, 'pending', 1, '2019-07-22 16:20:51'),
(13070, 67, 'pending', 1, '2019-07-22 16:20:51'),
(13071, 68, 'pending', 1, '2019-07-22 16:20:51'),
(13072, 69, 'pending', 1, '2019-07-22 16:20:51'),
(13073, 70, 'pending', 1, '2019-07-22 16:20:51'),
(13074, 74, 'pending', 1, '2019-07-22 16:20:51'),
(13075, 75, 'pending', 1, '2019-07-22 16:20:51'),
(13076, 76, 'pending', 1, '2019-07-22 16:20:51'),
(13077, 66, 'pending', 1, '2019-07-22 16:21:21'),
(13078, 67, 'pending', 1, '2019-07-22 16:21:21'),
(13079, 68, 'pending', 1, '2019-07-22 16:21:21'),
(13080, 69, 'pending', 1, '2019-07-22 16:21:21'),
(13081, 70, 'pending', 1, '2019-07-22 16:21:21'),
(13082, 74, 'pending', 1, '2019-07-22 16:21:21'),
(13083, 75, 'pending', 1, '2019-07-22 16:21:21'),
(13084, 76, 'pending', 1, '2019-07-22 16:21:21'),
(13085, 66, 'pending', 1, '2019-07-22 16:23:49'),
(13086, 67, 'pending', 1, '2019-07-22 16:23:49'),
(13087, 68, 'pending', 1, '2019-07-22 16:23:49'),
(13088, 69, 'pending', 1, '2019-07-22 16:23:49'),
(13089, 70, 'pending', 1, '2019-07-22 16:23:49'),
(13090, 74, 'pending', 1, '2019-07-22 16:23:49'),
(13091, 75, 'pending', 1, '2019-07-22 16:23:49'),
(13092, 76, 'pending', 1, '2019-07-22 16:23:49'),
(13093, 66, 'pending', 1, '2019-07-22 16:25:16'),
(13094, 67, 'pending', 1, '2019-07-22 16:25:17'),
(13095, 68, 'pending', 1, '2019-07-22 16:25:17'),
(13096, 69, 'pending', 1, '2019-07-22 16:25:17'),
(13097, 70, 'pending', 1, '2019-07-22 16:25:17'),
(13098, 74, 'pending', 1, '2019-07-22 16:25:17'),
(13099, 75, 'pending', 1, '2019-07-22 16:25:17'),
(13100, 76, 'pending', 1, '2019-07-22 16:25:17'),
(13101, 66, 'pending', 1, '2019-07-22 16:25:35'),
(13102, 67, 'pending', 1, '2019-07-22 16:25:35'),
(13103, 68, 'pending', 1, '2019-07-22 16:25:35'),
(13104, 69, 'pending', 1, '2019-07-22 16:25:35'),
(13105, 70, 'pending', 1, '2019-07-22 16:25:35'),
(13106, 74, 'pending', 1, '2019-07-22 16:25:35'),
(13107, 75, 'pending', 1, '2019-07-22 16:25:35'),
(13108, 76, 'pending', 1, '2019-07-22 16:25:35'),
(13109, 66, 'pending', 1, '2019-07-22 16:25:59'),
(13110, 67, 'pending', 1, '2019-07-22 16:25:59'),
(13111, 68, 'pending', 1, '2019-07-22 16:25:59'),
(13112, 69, 'pending', 1, '2019-07-22 16:25:59'),
(13113, 70, 'pending', 1, '2019-07-22 16:25:59'),
(13114, 74, 'pending', 1, '2019-07-22 16:25:59'),
(13115, 75, 'pending', 1, '2019-07-22 16:25:59'),
(13116, 76, 'pending', 1, '2019-07-22 16:25:59'),
(13117, 66, 'pending', 1, '2019-07-22 16:26:30'),
(13118, 67, 'pending', 1, '2019-07-22 16:26:30'),
(13119, 68, 'pending', 1, '2019-07-22 16:26:30'),
(13120, 69, 'pending', 1, '2019-07-22 16:26:30'),
(13121, 70, 'pending', 1, '2019-07-22 16:26:30'),
(13122, 74, 'pending', 1, '2019-07-22 16:26:30'),
(13123, 75, 'pending', 1, '2019-07-22 16:26:30'),
(13124, 76, 'pending', 1, '2019-07-22 16:26:30'),
(13125, 66, 'pending', 1, '2019-07-22 16:30:48'),
(13126, 67, 'pending', 1, '2019-07-22 16:30:48'),
(13127, 68, 'pending', 1, '2019-07-22 16:30:48'),
(13128, 69, 'pending', 1, '2019-07-22 16:30:48'),
(13129, 70, 'pending', 1, '2019-07-22 16:30:48'),
(13130, 74, 'pending', 1, '2019-07-22 16:30:48'),
(13131, 75, 'pending', 1, '2019-07-22 16:30:48'),
(13132, 76, 'pending', 1, '2019-07-22 16:30:48'),
(13133, 77, 'pending', 1, '2019-07-22 16:30:48'),
(13134, 66, 'pending', 1, '2019-07-22 16:31:19'),
(13135, 67, 'pending', 1, '2019-07-22 16:31:19'),
(13136, 68, 'pending', 1, '2019-07-22 16:31:19'),
(13137, 69, 'pending', 1, '2019-07-22 16:31:19'),
(13138, 70, 'pending', 1, '2019-07-22 16:31:19'),
(13139, 74, 'pending', 1, '2019-07-22 16:31:19'),
(13140, 75, 'pending', 1, '2019-07-22 16:31:19'),
(13141, 76, 'pending', 1, '2019-07-22 16:31:19'),
(13142, 77, 'pending', 1, '2019-07-22 16:31:19'),
(13143, 66, 'pending', 1, '2019-07-22 16:32:52'),
(13144, 67, 'pending', 1, '2019-07-22 16:32:52'),
(13145, 68, 'pending', 1, '2019-07-22 16:32:52'),
(13146, 69, 'pending', 1, '2019-07-22 16:32:52'),
(13147, 70, 'pending', 1, '2019-07-22 16:32:52'),
(13148, 74, 'pending', 1, '2019-07-22 16:32:53'),
(13149, 75, 'pending', 1, '2019-07-22 16:32:53'),
(13150, 76, 'pending', 1, '2019-07-22 16:32:53'),
(13151, 77, 'pending', 1, '2019-07-22 16:32:53'),
(13152, 66, 'pending', 1, '2019-07-22 16:37:27'),
(13153, 67, 'pending', 1, '2019-07-22 16:37:27'),
(13154, 68, 'pending', 1, '2019-07-22 16:37:27'),
(13155, 69, 'pending', 1, '2019-07-22 16:37:27'),
(13156, 70, 'pending', 1, '2019-07-22 16:37:27'),
(13157, 74, 'pending', 1, '2019-07-22 16:37:27'),
(13158, 75, 'pending', 1, '2019-07-22 16:37:27'),
(13159, 76, 'pending', 1, '2019-07-22 16:37:27'),
(13160, 77, 'pending', 1, '2019-07-22 16:37:27'),
(13161, 66, 'pending', 1, '2019-07-22 16:38:44'),
(13162, 67, 'pending', 1, '2019-07-22 16:38:44'),
(13163, 68, 'pending', 1, '2019-07-22 16:38:44'),
(13164, 69, 'pending', 1, '2019-07-22 16:38:44'),
(13165, 70, 'pending', 1, '2019-07-22 16:38:44'),
(13166, 74, 'pending', 1, '2019-07-22 16:38:44'),
(13167, 75, 'pending', 1, '2019-07-22 16:38:44'),
(13168, 76, 'pending', 1, '2019-07-22 16:38:44'),
(13169, 77, 'pending', 1, '2019-07-22 16:38:44'),
(13170, 66, 'pending', 1, '2019-07-23 02:23:02'),
(13171, 67, 'pending', 1, '2019-07-23 02:23:02'),
(13172, 68, 'pending', 1, '2019-07-23 02:23:02'),
(13173, 69, 'pending', 1, '2019-07-23 02:23:02'),
(13174, 70, 'pending', 1, '2019-07-23 02:23:02'),
(13175, 74, 'pending', 1, '2019-07-23 02:23:02'),
(13176, 75, 'pending', 1, '2019-07-23 02:23:02'),
(13177, 76, 'pending', 1, '2019-07-23 02:23:02'),
(13178, 77, 'pending', 1, '2019-07-23 02:23:02'),
(13179, 78, 'pending', 1, '2019-07-23 02:23:02'),
(13180, 79, 'pending', 1, '2019-07-23 02:23:02'),
(13181, 80, 'pending', 1, '2019-07-23 02:23:02'),
(13182, 81, 'pending', 1, '2019-07-23 02:23:02'),
(13183, 82, 'pending', 1, '2019-07-23 02:23:02'),
(13184, 83, 'pending', 1, '2019-07-23 02:23:02'),
(13185, 66, 'pending', 1, '2019-07-23 02:48:13'),
(13186, 67, 'pending', 1, '2019-07-23 02:48:13'),
(13187, 68, 'pending', 1, '2019-07-23 02:48:13'),
(13188, 69, 'pending', 1, '2019-07-23 02:48:13'),
(13189, 70, 'pending', 1, '2019-07-23 02:48:13'),
(13190, 74, 'pending', 1, '2019-07-23 02:48:13'),
(13191, 75, 'pending', 1, '2019-07-23 02:48:13'),
(13192, 76, 'pending', 1, '2019-07-23 02:48:13'),
(13193, 77, 'pending', 1, '2019-07-23 02:48:13'),
(13194, 78, 'pending', 1, '2019-07-23 02:48:13'),
(13195, 79, 'pending', 1, '2019-07-23 02:48:13'),
(13196, 80, 'pending', 1, '2019-07-23 02:48:13'),
(13197, 81, 'pending', 1, '2019-07-23 02:48:13'),
(13198, 82, 'pending', 1, '2019-07-23 02:48:13'),
(13199, 83, 'pending', 1, '2019-07-23 02:48:13'),
(13200, 66, 'pending', 1, '2019-07-23 02:49:03'),
(13201, 67, 'pending', 1, '2019-07-23 02:49:03'),
(13202, 68, 'pending', 1, '2019-07-23 02:49:03'),
(13203, 69, 'pending', 1, '2019-07-23 02:49:03'),
(13204, 70, 'pending', 1, '2019-07-23 02:49:03'),
(13205, 74, 'pending', 1, '2019-07-23 02:49:03'),
(13206, 75, 'pending', 1, '2019-07-23 02:49:03'),
(13207, 76, 'pending', 1, '2019-07-23 02:49:03'),
(13208, 77, 'pending', 1, '2019-07-23 02:49:03'),
(13209, 78, 'pending', 1, '2019-07-23 02:49:03'),
(13210, 79, 'pending', 1, '2019-07-23 02:49:03'),
(13211, 80, 'pending', 1, '2019-07-23 02:49:03'),
(13212, 81, 'pending', 1, '2019-07-23 02:49:03'),
(13213, 82, 'pending', 1, '2019-07-23 02:49:03'),
(13214, 83, 'pending', 1, '2019-07-23 02:49:04'),
(13215, 66, 'pending', 1, '2019-07-23 02:49:22'),
(13216, 67, 'pending', 1, '2019-07-23 02:49:22'),
(13217, 68, 'pending', 1, '2019-07-23 02:49:22'),
(13218, 69, 'pending', 1, '2019-07-23 02:49:22'),
(13219, 70, 'pending', 1, '2019-07-23 02:49:22'),
(13220, 74, 'pending', 1, '2019-07-23 02:49:22'),
(13221, 75, 'pending', 1, '2019-07-23 02:49:22'),
(13222, 76, 'pending', 1, '2019-07-23 02:49:22'),
(13223, 77, 'pending', 1, '2019-07-23 02:49:23'),
(13224, 78, 'pending', 1, '2019-07-23 02:49:23'),
(13225, 79, 'pending', 1, '2019-07-23 02:49:23'),
(13226, 80, 'pending', 1, '2019-07-23 02:49:23'),
(13227, 81, 'pending', 1, '2019-07-23 02:49:23'),
(13228, 82, 'pending', 1, '2019-07-23 02:49:23'),
(13229, 83, 'pending', 1, '2019-07-23 02:49:23'),
(13230, 66, 'pending', 1, '2019-07-23 02:51:19'),
(13231, 67, 'pending', 1, '2019-07-23 02:51:19'),
(13232, 68, 'pending', 1, '2019-07-23 02:51:19'),
(13233, 69, 'pending', 1, '2019-07-23 02:51:19'),
(13234, 70, 'pending', 1, '2019-07-23 02:51:19'),
(13235, 74, 'pending', 1, '2019-07-23 02:51:19'),
(13236, 75, 'pending', 1, '2019-07-23 02:51:19'),
(13237, 76, 'pending', 1, '2019-07-23 02:51:19'),
(13238, 77, 'pending', 1, '2019-07-23 02:51:20'),
(13239, 78, 'pending', 1, '2019-07-23 02:51:20'),
(13240, 79, 'pending', 1, '2019-07-23 02:51:20'),
(13241, 80, 'pending', 1, '2019-07-23 02:51:20'),
(13242, 81, 'pending', 1, '2019-07-23 02:51:20'),
(13243, 82, 'pending', 1, '2019-07-23 02:51:20'),
(13244, 83, 'pending', 1, '2019-07-23 02:51:20'),
(13245, 66, 'pending', 1, '2019-07-23 02:51:35'),
(13246, 67, 'pending', 1, '2019-07-23 02:51:35'),
(13247, 68, 'pending', 1, '2019-07-23 02:51:35'),
(13248, 69, 'pending', 1, '2019-07-23 02:51:35'),
(13249, 70, 'pending', 1, '2019-07-23 02:51:35'),
(13250, 74, 'pending', 1, '2019-07-23 02:51:35'),
(13251, 75, 'pending', 1, '2019-07-23 02:51:35'),
(13252, 76, 'pending', 1, '2019-07-23 02:51:36'),
(13253, 77, 'pending', 1, '2019-07-23 02:51:36'),
(13254, 78, 'pending', 1, '2019-07-23 02:51:36'),
(13255, 79, 'pending', 1, '2019-07-23 02:51:36'),
(13256, 80, 'pending', 1, '2019-07-23 02:51:36'),
(13257, 81, 'pending', 1, '2019-07-23 02:51:36'),
(13258, 82, 'pending', 1, '2019-07-23 02:51:36'),
(13259, 83, 'pending', 1, '2019-07-23 02:51:36'),
(13260, 66, 'pending', 1, '2019-07-23 02:52:21'),
(13261, 67, 'pending', 1, '2019-07-23 02:52:21'),
(13262, 68, 'pending', 1, '2019-07-23 02:52:21'),
(13263, 69, 'pending', 1, '2019-07-23 02:52:21'),
(13264, 70, 'pending', 1, '2019-07-23 02:52:21'),
(13265, 74, 'pending', 1, '2019-07-23 02:52:21'),
(13266, 75, 'pending', 1, '2019-07-23 02:52:21'),
(13267, 76, 'pending', 1, '2019-07-23 02:52:21'),
(13268, 77, 'pending', 1, '2019-07-23 02:52:21'),
(13269, 78, 'pending', 1, '2019-07-23 02:52:21'),
(13270, 79, 'pending', 1, '2019-07-23 02:52:22'),
(13271, 80, 'pending', 1, '2019-07-23 02:52:22'),
(13272, 81, 'pending', 1, '2019-07-23 02:52:22'),
(13273, 82, 'pending', 1, '2019-07-23 02:52:22'),
(13274, 83, 'pending', 1, '2019-07-23 02:52:22'),
(13275, 66, 'pending', 1, '2019-07-23 02:53:25'),
(13276, 67, 'pending', 1, '2019-07-23 02:53:25'),
(13277, 68, 'pending', 1, '2019-07-23 02:53:25'),
(13278, 69, 'pending', 1, '2019-07-23 02:53:25'),
(13279, 70, 'pending', 1, '2019-07-23 02:53:25'),
(13280, 74, 'pending', 1, '2019-07-23 02:53:25'),
(13281, 75, 'pending', 1, '2019-07-23 02:53:25'),
(13282, 76, 'pending', 1, '2019-07-23 02:53:25'),
(13283, 77, 'pending', 1, '2019-07-23 02:53:25'),
(13284, 78, 'pending', 1, '2019-07-23 02:53:25'),
(13285, 79, 'pending', 1, '2019-07-23 02:53:25'),
(13286, 80, 'pending', 1, '2019-07-23 02:53:25'),
(13287, 81, 'pending', 1, '2019-07-23 02:53:25'),
(13288, 82, 'pending', 1, '2019-07-23 02:53:25'),
(13289, 83, 'pending', 1, '2019-07-23 02:53:25'),
(13290, 66, 'pending', 1, '2019-07-23 02:53:43'),
(13291, 67, 'pending', 1, '2019-07-23 02:53:43'),
(13292, 68, 'pending', 1, '2019-07-23 02:53:43'),
(13293, 69, 'pending', 1, '2019-07-23 02:53:43'),
(13294, 70, 'pending', 1, '2019-07-23 02:53:44'),
(13295, 74, 'pending', 1, '2019-07-23 02:53:44'),
(13296, 75, 'pending', 1, '2019-07-23 02:53:44'),
(13297, 76, 'pending', 1, '2019-07-23 02:53:44'),
(13298, 77, 'pending', 1, '2019-07-23 02:53:44'),
(13299, 78, 'pending', 1, '2019-07-23 02:53:44'),
(13300, 79, 'pending', 1, '2019-07-23 02:53:44'),
(13301, 80, 'pending', 1, '2019-07-23 02:53:44'),
(13302, 81, 'pending', 1, '2019-07-23 02:53:44'),
(13303, 82, 'pending', 1, '2019-07-23 02:53:44'),
(13304, 83, 'pending', 1, '2019-07-23 02:53:44'),
(13305, 66, 'pending', 1, '2019-07-23 03:00:47'),
(13306, 67, 'pending', 1, '2019-07-23 03:00:48'),
(13307, 68, 'pending', 1, '2019-07-23 03:00:48'),
(13308, 69, 'pending', 1, '2019-07-23 03:00:48'),
(13309, 70, 'pending', 1, '2019-07-23 03:00:48'),
(13310, 74, 'pending', 1, '2019-07-23 03:00:48'),
(13311, 75, 'pending', 1, '2019-07-23 03:00:48'),
(13312, 76, 'pending', 1, '2019-07-23 03:00:48'),
(13313, 77, 'pending', 1, '2019-07-23 03:00:48'),
(13314, 78, 'pending', 1, '2019-07-23 03:00:48'),
(13315, 79, 'pending', 1, '2019-07-23 03:00:48'),
(13316, 80, 'pending', 1, '2019-07-23 03:00:48'),
(13317, 81, 'pending', 1, '2019-07-23 03:00:48'),
(13318, 82, 'pending', 1, '2019-07-23 03:00:48'),
(13319, 83, 'pending', 1, '2019-07-23 03:00:48'),
(13320, 84, 'pending', 1, '2019-07-23 03:00:48'),
(13321, 66, 'pending', 1, '2019-07-23 21:29:26'),
(13322, 67, 'pending', 1, '2019-07-23 21:29:26'),
(13323, 68, 'pending', 1, '2019-07-23 21:29:26'),
(13324, 69, 'pending', 1, '2019-07-23 21:29:27'),
(13325, 70, 'pending', 1, '2019-07-23 21:29:27'),
(13326, 74, 'pending', 1, '2019-07-23 21:29:27'),
(13327, 75, 'pending', 1, '2019-07-23 21:29:27'),
(13328, 76, 'pending', 1, '2019-07-23 21:29:27'),
(13329, 77, 'pending', 1, '2019-07-23 21:29:27'),
(13330, 78, 'pending', 1, '2019-07-23 21:29:27'),
(13331, 79, 'pending', 1, '2019-07-23 21:29:27'),
(13332, 80, 'pending', 1, '2019-07-23 21:29:27'),
(13333, 81, 'pending', 1, '2019-07-23 21:29:27'),
(13334, 82, 'pending', 1, '2019-07-23 21:29:27'),
(13335, 83, 'pending', 1, '2019-07-23 21:29:27'),
(13336, 84, 'pending', 1, '2019-07-23 21:29:27'),
(13337, 85, 'pending', 1, '2019-07-23 21:29:27'),
(13338, 65, 'Confirm Order', 1, '2019-07-23 21:31:34'),
(13339, 66, 'pending', 1, '2019-07-28 16:08:09'),
(13340, 67, 'pending', 1, '2019-07-28 16:08:09'),
(13341, 68, 'pending', 1, '2019-07-28 16:08:09'),
(13342, 69, 'pending', 1, '2019-07-28 16:08:09'),
(13343, 70, 'pending', 1, '2019-07-28 16:08:09'),
(13344, 74, 'pending', 1, '2019-07-28 16:08:09'),
(13345, 75, 'pending', 1, '2019-07-28 16:08:09'),
(13346, 76, 'pending', 1, '2019-07-28 16:08:09'),
(13347, 77, 'pending', 1, '2019-07-28 16:08:09'),
(13348, 78, 'pending', 1, '2019-07-28 16:08:09'),
(13349, 79, 'pending', 1, '2019-07-28 16:08:09'),
(13350, 80, 'pending', 1, '2019-07-28 16:08:09'),
(13351, 81, 'pending', 1, '2019-07-28 16:08:10'),
(13352, 82, 'pending', 1, '2019-07-28 16:08:10'),
(13353, 83, 'pending', 1, '2019-07-28 16:08:10'),
(13354, 84, 'pending', 1, '2019-07-28 16:08:10'),
(13355, 85, 'pending', 1, '2019-07-28 16:08:10'),
(13356, 86, 'pending', 1, '2019-07-28 16:08:10'),
(13357, 66, 'Confirm Order', 1, '2020-01-02 06:10:48'),
(13358, 87, 'pending', 11, '2020-06-04 05:03:49'),
(13359, 0, 'Confirm Order', 0, '2023-10-24 07:39:07'),
(13360, 0, 'Confirm Order', 0, '2023-10-24 07:48:13'),
(13361, 0, 'Dispatch', 0, '2023-10-24 07:48:16'),
(13362, 0, 'Select Item', 0, '2023-10-24 07:48:18'),
(13363, 0, 'Order Delivered', 0, '2023-10-24 07:48:23'),
(13364, 0, 'Confirm Order', 0, '2023-12-23 19:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `orrder`
--

CREATE TABLE `orrder` (
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `Product_id` bigint(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'pending',
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orrder`
--

INSERT INTO `orrder` (`order_id`, `user_id`, `Product_id`, `quantity`, `address_id`, `status`, `date_time`) VALUES
(65, 1, 7, 2, 85, 'Confirm Order', '2019-07-23 21:31:34'),
(66, 1, 11, 1, 85, 'Confirm Order', '2020-01-02 06:10:48'),
(67, 1, 8, 1, 86, 'pending', '2019-07-19 00:35:37'),
(68, 1, 14, 1, 91, 'pending', '2019-07-19 07:34:35'),
(69, 1, 7, 1, 91, 'pending', '2019-07-19 07:34:35'),
(70, 1, 11, 1, 91, 'pending', '2019-07-19 07:34:35'),
(71, 2, 7, 1, 92, 'pending', '2019-07-19 07:37:45'),
(72, 2, 7, 1, 92, 'pending', '2019-07-19 07:37:45'),
(73, 2, 10, 1, 92, 'pending', '2019-07-19 07:37:45'),
(74, 1, 6, 1, 121, 'pending', '2019-07-22 16:20:18'),
(75, 1, 7, 1, 121, 'pending', '2019-07-22 16:20:18'),
(76, 1, 6, 1, 121, 'pending', '2019-07-22 16:20:18'),
(77, 1, 7, 1, 132, 'pending', '2019-07-22 16:30:48'),
(78, 1, 7, 8, 137, 'pending', '2019-07-23 02:23:01'),
(79, 1, 8, 1, 137, 'pending', '2019-07-23 02:23:01'),
(80, 1, 8, 2, 137, 'pending', '2019-07-23 02:23:01'),
(81, 1, 8, 1, 137, 'pending', '2019-07-23 02:23:01'),
(82, 1, 13, 1, 137, 'pending', '2019-07-23 02:23:02'),
(83, 1, 8, 1, 137, 'pending', '2019-07-23 02:23:02'),
(84, 1, 7, 1, 146, 'pending', '2019-07-23 03:00:47'),
(85, 1, 7, 1, 147, 'pending', '2019-07-23 21:29:26'),
(86, 1, 6, 1, 148, 'pending', '2019-07-28 16:08:09'),
(87, 11, 6, 1, 149, 'pending', '2020-06-04 05:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `pincode` bigint(6) DEFAULT NULL,
  `phonenumber` bigint(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `confirmpassword` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `address`, `pincode`, `phonenumber`, `password`, `confirmpassword`) VALUES
(1, 'mir', 'nayeem', 'mirnayeem@gmail.com', 'budshah nagar irmlan', 190015, 8491980553, 'nayeem@mir', 'nayeem@mir'),
(2, 'junaid', 'nazir', 'qwer.com', 'asxasxa', 12234, 9875433333, 'admin', 'admin'),
(3, 'FAROOQ', 'BEIGH', 'QWERT', 'batamalo', 637383, 8491980553, '123', '123'),
(4, 'ADIL', 'DFG', 'QKHFRT', 'gulmarg', 637, 849198055, '123', '123'),
(5, 'BASIT', 'MALLA', '9622617183', 'sopore', 190015, 9875433333, 'admin', 'admin'),
(6, 'BILAL', 'ASAL', '9622617183', 'HMT', 190015, 9875433333, 'admin', 'admin'),
(7, 'bbbbb', 'malla', 'foodcart@gmail.com', 'sopore', 193201, 7889722045, 'zzzz', 'zzzz'),
(8, 'www', 'mmm', 'wwmmm@gmail.com', 'hyderpora', 190001, 9988788787, 'qwertyuiop', 'qwertyuiop'),
(9, 'alviya ', 'couper', 'alviyacouper@gmail.com', 'hp', 126778, 7889722045, 'couper', 'couper'),
(10, 'basit', 'naseem', 'mallabasit499@gmail.com', 'shutre shahi srinagar', 190001, 7889722045, 'basit', 'basit'),
(11, 'basit', 'naseem', 'mallabasit499@gmail.com', 'shutre shahi srinagar', 190001, 7889722045, 'hhhhhh', 'hhhhhh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`Product_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`SerialNumber`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orrder`
--
ALTER TABLE `orrder`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `Product_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `SerialNumber` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13365;

--
-- AUTO_INCREMENT for table `orrder`
--
ALTER TABLE `orrder`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
