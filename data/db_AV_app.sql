-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2018 at 01:09 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_AV_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

CREATE TABLE `tbl_audio` (
  `audio_id` int(10) NOT NULL,
  `audio_name` varchar(50) NOT NULL,
  `audio_desc` varchar(500) NOT NULL,
  `audio_genre` varchar(25) NOT NULL,
  `audio_path` varchar(30) NOT NULL,
  `audio_thumb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_name`, `audio_desc`, `audio_genre`, `audio_path`, `audio_thumb`) VALUES
(1, 'thank u, next', 'Ariana Grande - Single\r\nReleased in November 2018\r\nRepublic Records', 'Pop', 'thankunext.mp3', 'thankunext.png'),
(2, 'Happier', 'Marshmello & Bastille\r\nSingle\r\nReleased August 2018\r\nJoytime Collective', 'Dance', 'happier.mp3', 'happier.jpg'),
(3, 'Eastside', 'benny blanco, Halsey & Khalid\r\nSingle\r\nReleased July 2018\r\nInterscope Records', 'Pop', 'eastside.mp3', 'eastside.jpg'),
(4, 'I Love It', 'Kanye West & Lil Pump\r\nSingle\r\nReleased September 2018\r\nLLC & Warner Brothers Records', 'Hip Hop, Rap', 'ILoveIt.mp3', 'ILoveIt.jpg'),
(5, 'Money', 'Cardi B\r\nSingle\r\nReleased October 2018\r\nAtlantic Recording Corporation', 'Hip Hop, Rap', 'moneyCardiB.mp3', 'moneyCardiB.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` int(10) NOT NULL,
  `movies_name` varchar(50) NOT NULL,
  `movies_desc` varchar(500) NOT NULL,
  `movies_path` varchar(50) NOT NULL,
  `movies_genre` varchar(30) NOT NULL,
  `movies_thumb` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_name`, `movies_desc`, `movies_path`, `movies_genre`, `movies_thumb`) VALUES
(1, 'Ready Player One', '(2018) When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune.', 'RPO.mp4', 'Thriller, Sci-Fi', 'RPO1.jpg'),
(2, 'Black Panther', '(2018) T\'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.', 'BP.mp4', 'Action, Adventure', 'BP.jpg'),
(3, 'The Shawshank Redemption', '(1994) Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'TSR.mp4', 'Drama', 'TSR.jpg'),
(4, 'Inception', '(2010) A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.', 'Inception.mp4', 'Action, Adventure, Sci Fi', 'Inception.jpg'),
(5, 'The Shining', 'A family heads to an isolated hotel for the winter where an evil spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.', 'TheShining.mp4', 'Drama, Horror', 'TheShining.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(10) NOT NULL,
  `tv_name` varchar(30) NOT NULL,
  `tv_desc` varchar(500) NOT NULL,
  `tv_genre` varchar(50) NOT NULL,
  `tv_episode` varchar(25) NOT NULL,
  `tv_path` varchar(30) NOT NULL,
  `tv_thumb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_name`, `tv_desc`, `tv_genre`, `tv_episode`, `tv_path`, `tv_thumb`) VALUES
(1, 'Game of Thrones', 'Nine noble families fight for control over the mythical lands of Westeros, while an ancient enemy returns after being dormant for thousands of years.', 'Action, Adventure, Drama', '4x02', 'GOT4x02.mp4', 'GOT1.jpg'),
(2, 'Breaking Bad', 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family\'s future.', 'Crime, Drama, Thriller', '1x01', 'BB1x01.mp4', 'BB.jpg'),
(3, 'Black Mirror', 'An anthology series exploring a twisted, high-tech world where humanity\'s greatest innovations and darkest instincts collide.', 'Drama, Sci Fi, Thriller', '1x12', 'BlackMirror1x12.mp4', 'BM.jpg'),
(4, 'Friends', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'Comedy, Romance', '7x10', 'Friends7x10.mp4', 'friends.jpg'),
(5, 'Stranger Things', 'When a young boy disappears, his mother, a police chief, and his friends must confront terrifying forces in order to get him back.', 'Drama, Fantasy, Horror', '2x03', 'StrangerThings2x03.mp4', 'StrangerThings.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
