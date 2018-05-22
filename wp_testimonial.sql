-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 08:07 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project-name`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_testimonial`
--

CREATE TABLE IF NOT EXISTS `wp_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `state` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_testimonial`
--

INSERT INTO `wp_testimonial` (`id`, `name`, `description`, `category`, `image`, `state`) VALUES
(15, 'fh', 'fd', 'digitalmarkter', 'http://localhost/project-name/wp-content/uploads/2016/11/Animal-Feed-Bags.jpg', 1),
(19, 'Bread Bags', 'Bread Bags', 'it_consultancy', 'http://localhost/project-name/wp-content/uploads/2016/11/Hydrangeas-Copy2.jpg', 1),
(20, 'Cooking Bags', 'Cooking Bags', 'digitalmarkter', 'http://localhost/project-name/wp-content/uploads/2016/11/Cooking-Bags.jpg', 1),
(26, 'vaccum bags', 'bags', 'it_consultancy', 'http://localhost/project-name/wp-content/uploads/2016/11/Cooking-Bags.jpg', 1),
(27, 'test', 'test', 'it_consultancy', 'http://localhost/project-name/wp-content/uploads/2016/12/Chrysanthemum.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_testimonial`
--
ALTER TABLE `wp_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_testimonial`
--
ALTER TABLE `wp_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
