-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 09:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingid` int(11) NOT NULL,
  `theaterid` int(11) NOT NULL,
  `bookingdate` date NOT NULL,
  `person` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `jam` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `theaterid`, `bookingdate`, `person`, `userid`, `status`, `jam`) VALUES
(17, 2, '2024-04-03', '1', 8, 1, '09:00'),
(20, 5, '2024-03-13', '5', 9, 1, '11:00'),
(26, 5, '2024-04-05', '8', 8, 0, '12:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `catname`) VALUES
(1, 'Comedy'),
(2, 'Horror'),
(5, 'Romance'),
(6, 'Animation');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `releasedate` date NOT NULL,
  `image` varchar(1000) NOT NULL,
  `trailer` varchar(1000) NOT NULL,
  `movie` varchar(10000) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `description`, `releasedate`, `image`, `trailer`, `movie`, `rating`, `catid`) VALUES
(2, 'Danur', 'Danur most popular horror film in Indonesia. True story based on her own experience as an indigo ', '2024-04-01', 'Danur_poster.jpg', 'DANUR 3_ Sunyaruri - Official Trailer _ Prilly Latuconsina, Rizky Nazar, Syifa Hadju.mp4', 'DANUR 3_ Sunyaruri - Official Trailer _ Prilly Latuconsina, Rizky Nazar, Syifa Hadju.mp4', '', 2),
(3, 'Ancika', 'Friendship between Dilan and Ancika Mehrunisa Rabu. Their increasingly close relationship ', '2024-04-03', 'MV5BYzJjYzQ5N2QtMjZiZC00ODcxLWFjNDAtY2VmMDc4N2FhODA1XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_FMjpg_UX1000_.jpg', 'videoplayback.mp4', '', '', 5),
(4, 'Agak Laen', '\"Agak Laen\" is an Indonesian horror comedy film released in 2024, directed and written by Muhadkly A', '2024-04-27', 'Poster_Agak_Laen_(2024).jpg', 'AGAK LAEN Official Trailer.mp4', 'AGAK LAEN Official Trailer.mp4', '', 1),
(7, 'KUNG FU PANDA 4', 'After Po (Jack Black) is appointed as the Spiritual Leader of the Valley of Peace, he embarks ', '2024-04-13', '24KFP4.jpg', 'KUNG FU PANDA 4 _ Official Trailer.mp4', 'KUNG FU PANDA 4 _ Official Trailer.mp4', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterid` int(11) NOT NULL,
  `theater_name` varchar(100) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterid`, `theater_name`, `timing`, `days`, `date`, `price`, `location`, `movieid`) VALUES
(2, 'Teater 1', '15:30', 'Friday', '2024-03-23', 30000, 'Balikpapan', 2),
(5, 'Teater 2', '20:00', 'Monday', '2024-04-04', 25000, 'Balikpapan', 7),
(6, 'Teater 3', '13:00', 'Monday', '2024-03-31', 25000, 'Balikpapan', 3),
(7, 'Teater 4', '17:00', 'Tuesday', '2024-04-04', 25000, 'Balikpapan', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roteype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `email`, `password`, `roteype`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 1),
(7, 'yasir', 'yasir@gmail.com', '123', 2),
(8, 'aufa', 'aufa.trihapsari@gmail.com', '123', 2),
(9, 'Nauvaldi Caesar', 'aufa.@gmail.com', '111', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `FK_booking_users` (`userid`),
  ADD KEY `FK_booking` (`theaterid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `FK_movies` (`catid`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterid`),
  ADD KEY `FK_theater` (`movieid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking` FOREIGN KEY (`theaterid`) REFERENCES `theater` (`theaterid`),
  ADD CONSTRAINT `FK_booking_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK_movies` FOREIGN KEY (`catid`) REFERENCES `categories` (`catid`);

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `FK_theater` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
