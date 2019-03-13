-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 13, 2019 at 09:54 PM
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
-- Table structure for table `tbl_audio`
--

CREATE TABLE `tbl_audio` (
  `audio_id` int(10) NOT NULL,
  `audio_cover` varchar(20) NOT NULL,
  `audio_title` varchar(20) NOT NULL,
  `audio_artist` varchar(50) NOT NULL,
  `audio_released` date NOT NULL,
  `audio_runtime` varchar(10) NOT NULL,
  `audio_song` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_cover`, `audio_title`, `audio_artist`, `audio_released`, `audio_runtime`, `audio_song`) VALUES
(1, 'thankunext.jpg', 'Thank U, Next', 'Ariana Grande', '2019-02-08', '3:27', ''),
(2, 'perfect.jpg', 'Perfect', 'Ed Sheeran', '2017-11-24', '4:23', ''),
(3, 'mercy.jpg', 'Mercy', 'Shawn Mendes', '2016-09-23', '3:28', ''),
(4, 'sucker.jpg', 'Sucker', 'Jonas Brothers', '2019-03-01', '3:01', ''),
(5, 'theclimb.jpg', 'The Climb', 'Miley Cyrus', '2009-03-05', '3:56', ''),
(6, 'girlslikeyou.jpg', 'Girls Like You', 'Maroon 5', '2018-05-30', '3:55', ''),
(7, 'halo.png', 'Halo', 'Beyonce', '2009-01-20', '4:21', ''),
(8, 'herecomesthesun.jpg', 'Here Comes The Sun', 'The Beatles', '1969-09-26', '3:05', ''),
(9, 'rollinginthedeep.jpg', 'Rolling In The Deep', 'Adele', '2011-01-24', '3:48', ''),
(10, 'letitgo.png', 'Let It Go', 'Idina Menzel', '2013-11-27', '3:44', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio_genre`
--

CREATE TABLE `tbl_audio_genre` (
  `audio_genre_id` tinyint(4) NOT NULL,
  `audio_id` tinyint(4) NOT NULL,
  `genre_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio_genre`
--

INSERT INTO `tbl_audio_genre` (`audio_genre_id`, `audio_id`, `genre_id`) VALUES
(1, 1, 17),
(2, 1, 17),
(3, 3, 22),
(4, 4, 17),
(5, 5, 27),
(6, 6, 17),
(7, 7, 17),
(8, 8, 22),
(9, 9, 17),
(10, 10, 27);

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
(26, 'Instrumental'),
(27, 'Soundtrack');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` int(20) NOT NULL,
  `movie_type` varchar(20) NOT NULL,
  `movie_cover` varchar(50) NOT NULL,
  `movie_title` varchar(50) NOT NULL,
  `movie_year` date NOT NULL,
  `movie_runtime` varchar(20) NOT NULL,
  `movie_trailer` varchar(100) NOT NULL,
  `movie_rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_type`, `movie_cover`, `movie_title`, `movie_year`, `movie_runtime`, `movie_trailer`, `movie_rating`) VALUES
(1, 'Movie', 'arrival.jpg', 'Arrival', '2016-11-11', '116 minutes', '', 'PG-13'),
(2, 'Movie', 'beautyandthebeast.jpg', 'Beauty and the Beast', '2017-03-17', '129 min', '', 'PG'),
(3, 'Movie', 'deadpool.png', 'Deadpool', '2016-02-12', '108 min', '', 'R'),
(4, 'Movie', 'blackpanther.jpg', 'Black Panther', '2018-02-16', '134 min', '', 'PG-13'),
(5, 'Movie', 'trolls.jpg', 'Trolls', '2016-11-04', '92 min', '', 'PG'),
(6, 'Movie', 'starwars.jpg', 'Star Wars: Episode VII - The Force Awakens', '2015-12-18', '136 min', '', 'PG-13'),
(7, 'Movie', 'silverliningsplaybook.jpg', 'Silver Linings Playbook', '2012-12-25', '122 min', '', 'R'),
(8, 'Movie', 'whiplash.jpg', 'Whiplash', '2014-09-15', '106 min', '', 'R'),
(9, 'Movie', 'inception.jpg', 'Inception', '2010-06-16', '148 min', '', 'PG-13'),
(10, 'Movie', 'lifeofpi.png', 'Life of Pi', '2012-11-21', '127 min', '', 'PG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies_genre`
--

CREATE TABLE `tbl_movies_genre` (
  `movies_genre_id` int(20) NOT NULL,
  `movie_id` int(20) NOT NULL,
  `genre_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies_genre`
--

INSERT INTO `tbl_movies_genre` (`movies_genre_id`, `movie_id`, `genre_id`) VALUES
(4, 1, 5),
(5, 1, 9),
(6, 2, 13),
(7, 2, 14),
(8, 2, 8),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3),
(12, 4, 1),
(13, 4, 2),
(14, 4, 9),
(15, 5, 2),
(16, 5, 3),
(17, 5, 12),
(18, 6, 1),
(19, 6, 2),
(20, 6, 14),
(21, 7, 3),
(22, 7, 5),
(23, 7, 15),
(24, 8, 5),
(25, 9, 1),
(26, 9, 2),
(27, 9, 9),
(28, 10, 2),
(29, 10, 5),
(30, 10, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(20) NOT NULL,
  `tv_cover` varchar(20) NOT NULL,
  `tv_title` varchar(30) NOT NULL,
  `tv_season` varchar(10) NOT NULL,
  `tv_released` date NOT NULL,
  `tv_runtime` varchar(10) NOT NULL,
  `tv_rating` varchar(10) NOT NULL,
  `tv_trailer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_season`, `tv_released`, `tv_runtime`, `tv_rating`, `tv_trailer`) VALUES
(1, 'gameofthrones.jpg', 'Game of Thrones', '1-7', '2011-04-17', '60', 'TV-MA', ''),
(2, 'greys.jpg', 'Grey\'s Anatomy', '1', '2005-03-27', '40', 'TV-14', ''),
(3, 'bigbang.jpg', 'The Big Bang Theory', '1-11', '2006-05-01', '22 min', 'TV-14', ''),
(4, 'strangerthings.jpg', 'Stranger Things', '1-2', '2016-07-15', '51 mins', 'TV-14', ''),
(5, 'modernfamily.jpg', 'Modern Family', '1-10', '2009-09-22', '22', 'TV-PG', ''),
(6, 'theoffice.jpg', 'The Office', '1-9', '2005-03-24', '22 min', 'TV-PG', ''),
(7, 'friends.jpg', 'Friends', '1-10', '1994-09-22', '22 min', 'TV-14', ''),
(8, 'spongebob.jpg', 'Spongebob Squarepants', '1-12', '1999-04-30', '23 min', 'TV-Y', ''),
(9, 'hannahmontana.jpg', 'Hannah Montana', '1-4', '2006-03-24', '23 mins', 'TV-G', ''),
(10, 'recess.jpg', 'Disney\'s Recess', '1-6', '1997-08-31', '23 mins', 'TV-Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_genre`
--

CREATE TABLE `tbl_tv_genre` (
  `tv_genre_id` tinyint(4) NOT NULL,
  `tv_id` tinyint(4) NOT NULL,
  `genre_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_genre`
--

INSERT INTO `tbl_tv_genre` (`tv_genre_id`, `tv_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 5),
(5, 2, 15),
(6, 3, 3),
(7, 3, 15),
(8, 4, 5),
(9, 4, 14),
(10, 4, 7),
(11, 5, 3),
(12, 5, 15),
(13, 6, 3),
(14, 7, 3),
(15, 7, 15),
(16, 8, 3),
(17, 8, 13),
(18, 8, 12),
(19, 9, 3),
(20, 9, 13),
(21, 10, 2),
(22, 10, 3),
(23, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(20) NOT NULL,
  `user_fname` varchar(30) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_access` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_access`) VALUES
(1, 'admin', 'admin', '123', 'admin@admin.com', 1),
(2, 'Jaclyn', 'Jaclyn', 'jrf', 'jaclynflomen@hotmail.com', 2),
(3, 'Ethan', 'Ethan', 'mara', 'ethan@mara.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `tbl_audio_genre`
--
ALTER TABLE `tbl_audio_genre`
  ADD PRIMARY KEY (`audio_genre_id`,`genre_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_movies_genre`
--
ALTER TABLE `tbl_movies_genre`
  ADD PRIMARY KEY (`movies_genre_id`,`movie_id`,`genre_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  ADD PRIMARY KEY (`tv_genre_id`,`tv_id`,`genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  MODIFY `audio_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_audio_genre`
--
ALTER TABLE `tbl_audio_genre`
  MODIFY `audio_genre_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_movies_genre`
--
ALTER TABLE `tbl_movies_genre`
  MODIFY `movies_genre_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv_genre`
--
ALTER TABLE `tbl_tv_genre`
  MODIFY `tv_genre_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
