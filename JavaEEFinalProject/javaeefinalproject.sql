-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 10:12 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javaeefinalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `q_id`) VALUES
(25, 'hh', 1),
(26, 'mmmm', 4),
(27, 'kevva', 4),
(28, 'ses', 4),
(29, 'aaaaaaaaaaaaaa', 10),
(30, 'chabzi', 10),
(31, 'kevva', 11),
(32, 'nsbm', 11),
(33, 'virtusa', 11),
(34, 'iiiiiiiiiiiiiiii', 14),
(35, 'aaaaa', 5),
(36, 'kevva', 15),
(37, 'testing', 12),
(38, 'abc\r\n', 13);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `ID` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL,
  `imgName` varchar(500) DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `imgPath` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `title`, `description`, `date`, `imgName`, `contact_no`, `imgPath`) VALUES
(37, 'A1', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2019-04-01', '1.png', 123456789, 'C:UsersASHMINIDocumentsNetBeansProjectsashminiprojectwebimagesimages1.png'),
(38, 'B2', 'bbbbbbbbbbbbbbbbbbbbbbb', '2019-04-02', '2.jpg', 812256879, 'C:UsersASHMINIDocumentsNetBeansProjectsashminiprojectwebimagesimages2.jpg'),
(39, 'abc', 'abcd', '2019-04-11', 'iot.jpg', 1234567890, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagesiot.jpg'),
(40, 'kevva', 'kevva', '2019-04-12', 'propic.png', 2222222222, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagespropic.png'),
(41, 'testing', 'testing', '2019-04-16', 'propic.png', 1111111111, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagespropic.png'),
(42, 'qqqqqqqqq', 'qqqqqqqqqqq', '2019-04-26', 'iot.jpg', 2222222222, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagesiot.jpg'),
(43, 'nsbm', 'nsbm', '2019-04-16', 'propic.png', 1234567890, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagespropic.png'),
(44, 'virtusa', 'virtusa', '2019-04-10', 'sign.png', 1111111111, 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesimagessign.png');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `university` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `university`) VALUES
(1, 'exams', '2019-04-05', '2019-04-12', ''),
(2, 'dinesh', '2019-04-14', '2019-04-15', ''),
(3, 'exams', '2019-04-16', '2019-04-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `industryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`username`, `email`, `password`, `industryname`) VALUES
('abc', 'abc@gmail.com', 'abc', 'ABC'),
('null', 'null', 'null', 'null'),
('virtusa123', 'virtusa@gmail.com', 'virtusa', 'Virtusa');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `companyName` varchar(200) NOT NULL,
  `title` varchar(250) NOT NULL,
  `Description` longtext NOT NULL,
  `Qualitifications` longtext NOT NULL,
  `imgName` varchar(250) NOT NULL,
  `imgPath` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `companyName`, `title`, `Description`, `Qualitifications`, `imgName`, `imgPath`) VALUES
(1, 'abc', 'Application Developer', 'mukuth na', 'mukuthna', 'Floral-Wallpaper-for-Desktop-1.jpg', 'C:UsersASHMINIDocumentsNetBeansProjectsashminiprojectwebimagesjobimagesjobimagesFloral-Wallpaper-for-Desktop-1.jpg'),
(2, 'virtusa', 'Developer', 'ASzd', 'asd', '3.jpg', 'C:UsersASHMINIDocumentsNetBeansProjectsashminiprojectwebimagesjobimagesjobimages3.jpg'),
(3, 'aaa', 'Associate Developer', 'aaaa', 'aaaa', 'sign.png', 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesjobimagesjobimagessign.png'),
(4, 'qqq', 'Applications Engineer', 'qqq', 'aa', 'iot 3.png', 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesjobimagesjobimagesiot 3.png'),
(5, 'wwww', 'Applications Engineer', 'awqdqdq', 'sadadads', 'propic.png', 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesjobimagesjobimagespropic.png'),
(6, 'abc', 'IT Analyst', 'abc', 'abc', 'IMG_20190321_154610.jpg', 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesjobimagesjobimagesIMG_20190321_154610.jpg'),
(7, 'virtusa', 'Application Developer', 'virtusa', 'virtusa', 'sign.png', 'C:UsersAsusDocumentsNetBeansProjectsJavaEEFinalProjectwebimagesjobimagesjobimagessign.png');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `tags` varchar(45) NOT NULL,
  `question` varchar(45) NOT NULL,
  `posted_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `title`, `tags`, `question`, `posted_by`) VALUES
(1, 'title1', 'java,script', 'is this working?', ''),
(4, 'why dosen\'t jdbc work', 'jsp,jdbc', 'my jdbc connectivity dont work.', ''),
(5, 'balamu', 'who is this', 'testing balanawa ', ''),
(6, 'testing testing', 'testing balanawa', 'balalakfafakdnajdnkajdna,jdnas,cjnaiowdjada', ''),
(7, 'testing 1', 'testing', 'This is just for testing purpose', ''),
(8, '', '', '', ''),
(9, '111111', '11111', '11111111111111111111111', ''),
(10, 'aaaa', 'aaaa', 'aaaa', ''),
(11, 'kevva', 'kevva', 'kevva', 'kevva'),
(12, 'nsbm', 'nsbm', 'nsbm', 'nsbm'),
(13, 'virtusa', 'virtusa', 'virtusa', 'virtusa'),
(14, 'testing final', 'final', 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', 'kevva'),
(15, 'dinesh', 'dinesh', 'dienshhsvfksedflsefsc', 'dinesh');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `university` varchar(50) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `batch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `email`, `password`, `firstname`, `lastname`, `university`, `degree`, `batch`) VALUES
('kevva', 'kevva@gmail.com', 'kevva', 'Kevin', 'Samaraweera', 'NSBM', 'Software Engineering', '17.2'),
('null', 'null', 'null', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `universityname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`username`, `email`, `password`, `universityname`) VALUES
('nibm123', 'nibm@gmail.com', 'nibm', 'NIBM'),
('nsbm123', 'nsbm@gmail.com', 'nsbm', 'NSBM'),
('null', 'null', 'null', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `q_id` (`q_id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`q_id`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
