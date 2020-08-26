-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 07:27 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fundraise`
--

-- --------------------------------------------------------

--
-- Table structure for table `donationlist`
--

CREATE TABLE `donationlist` (
  `donation_list_id` int(11) NOT NULL,
  `d_user_id` int(11) NOT NULL,
  `d_user_name` varchar(100) NOT NULL,
  `d_amount` double NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_user_name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donationlist`
--

INSERT INTO `donationlist` (`donation_list_id`, `d_user_id`, `d_user_name`, `d_amount`, `p_user_id`, `p_user_name`, `date`, `post_id`) VALUES
(8, 8, 'Antika Saha', 100, 6, '', '2020-08-26 10:59:42', 26),
(9, 8, 'Antika Saha', 500, 6, '', '2020-08-26 11:57:22', 26),
(10, 9, 'suvo sir', 56, 8, '', '2020-08-26 12:13:46', 27),
(11, 11, 'bkg ghj', 200, 6, '', '2020-08-26 13:45:50', 26),
(12, 12, 'abc saha', 1000, 6, '', '2020-08-26 15:19:51', 25);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(500) NOT NULL,
  `post_amount` varchar(50) NOT NULL,
  `post_details` varchar(1200) NOT NULL,
  `post_pic1` varchar(500) NOT NULL,
  `post_pic2` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `post_date` varchar(100) NOT NULL,
  `getamount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_amount`, `post_details`, `post_pic1`, `post_pic2`, `user_id`, `user_name`, `post_date`, `getamount`) VALUES
(25, 'aaaaas', '8000', 'vjnhgbjhmhjhik;opcddsedsr4678ghgkp[;p iokpop', '20200414070728-cb.jpeg', 'Critical Things Business Leaders Should Do About Coronavirus Right Now-v2-04.png', 6, 'rakhi saha', '2020-08-26 02:30:09', 1000),
(26, 'need money', '4000', 'trdxzjhchcsjklo[;fdop[kl;', 'Critical Things Business Leaders Should Do About Coronavirus Right Now-v2-04.png', 'dp achol.PNG', 6, 'rakhi saha', '2020-08-26 10:54:54', 800),
(27, 'apply for money', '6000', 'duygfygdbbmd iwuiwieikijhh uhuheejkl', '20200414070728-cb.jpeg', 'b7cccbd9a37b9c42cbef962588a9e4d2.jpg', 8, 'Antika Saha', '2020-08-26 11:56:48', 56),
(28, 'need money', '8000', 'yttyygy ujhjjkoljkik', 'dp achol.PNG', '20200414070728-cb.jpeg', 12, 'abc saha', '2020-08-26 15:18:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `address`, `contact`, `password`, `photo`) VALUES
(6, 'rakhi', 'saha', 'ra@gmail.com', 'Shahzadpur', '11233', '1234', '20200307160823_IMG_7201-01.jpeg'),
(7, 'Rahul', 'Saha', 'a@gmail.com', 'Shahzadpur', '11233', '1234', 'b7cccbd9a37b9c42cbef962588a9e4d2.jpg'),
(8, 'Antika', 'Saha', 'antika@gmail.com', 'dhaka', '234546', '1234', 'IMG_20200524_183944.jpg'),
(9, 'suvo', 'sir', 'sir@gmail.com', 'dhaka', '4735487', '123456', 'b7cccbd9a37b9c42cbef962588a9e4d2.jpg'),
(10, 'Mr', 'John', 'john@mail.com', 'spur', '0097', '123456', '67464568_2563324040384374_8202938552363778048_o.jpg'),
(11, 'bkg', 'ghj', 'bkg@gmail.com', 'dhaka', '233456', '123456', 'b7cccbd9a37b9c42cbef962588a9e4d2.jpg'),
(12, 'abc', 'saha', 'abc@gmail.com', 'dhaka', '345667', '123456', 'Critical Things Business Leaders Should Do About Coronavirus Right Now-v2-04.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donationlist`
--
ALTER TABLE `donationlist`
  ADD PRIMARY KEY (`donation_list_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donationlist`
--
ALTER TABLE `donationlist`
  MODIFY `donation_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
