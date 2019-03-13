-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 13, 2019 at 04:36 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(20) NOT NULL,
  `genre_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Sci-Fi'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sports'),
(17, 'Pop'),
(18, 'Country'),
(19, 'R&B/Soul'),
(20, 'Rap/Hip-Hop'),
(21, 'Alternative'),
(22, 'Rock'),
(23, 'Musical-Theatre'),
(24, 'Jazz'),
(25, 'Heavy Metal'),
(26, 'Instrumental');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media`
--

CREATE TABLE `tbl_media` (
  `media_id` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cover` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `year` date NOT NULL,
  `runtime` varchar(20) NOT NULL,
  `trailer` varchar(100) NOT NULL,
  `rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_media`
--

INSERT INTO `tbl_media` (`media_id`, `type`, `cover`, `title`, `year`, `runtime`, `trailer`, `rating`) VALUES
(1, 'Movie', 'arrival.jpg', 'Arrival', '2016-11-11', '116 minutes', '', 'Adults'),
(2, 'Movie', 'beautyandthebeast.jpg', 'Beauty and the Beast', '2017-03-17', '129 min', '', 'Kids'),
(3, 'TV', 'bigbang.jpg', 'The Big Bang theory', '2006-05-01', '22min', '', 'Adults');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_media_genre`
--

CREATE TABLE `tbl_media_genre` (
  `id` int(20) NOT NULL,
  `media_id` int(20) NOT NULL,
  `genre_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL,
  `user_ip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `first_name`, `user_name`, `password`, `email`, `status`, `user_ip`) VALUES
(1, 'admin', 'admin', '123', 'admin@admin.com', 'Admin', ''),
(2, 'Jaclyn', 'Jaclyn', 'jrf', 'jaclynflomen@hotmail.com', 'Adult(13+)', ''),
(3, 'Ethan', 'Ethan', 'mara', 'ethan@mara.com', 'Child(0-12)', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_media`
--
ALTER TABLE `tbl_media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `tbl_media_genre`
--
ALTER TABLE `tbl_media_genre`
  ADD PRIMARY KEY (`id`,`media_id`,`genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_media`
--
ALTER TABLE `tbl_media`
  MODIFY `media_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_media_genre`
--
ALTER TABLE `tbl_media_genre`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
