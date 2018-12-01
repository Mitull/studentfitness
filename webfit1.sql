-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 09:04 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webfit1`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `username` varchar(50) NOT NULL,
  `qid` int(11) NOT NULL,
  `ansid` int(11) NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`username`, `qid`, `ansid`, `answer`) VALUES
('PKK', 1, 1, 'answer1'),
('PKK', 1, 2, 'answer32e2'),
('myronic', 1, 3, 'answersre'),
('myy', 2, 4, 'answe3434'),
('myronic', 3, 5, 'answer121'),
('PKK', 3, 6, 'answer54'),
('myronic', 3, 7, 'answer45'),
('PKK', 1, 8, 'answer23'),
('PKK', 1, 23, 'answer1'),
('PKK', 4, 24, 'ans1'),
('PKK', 4, 25, 'answer2'),
('myy', 4, 26, 'ans3'),
('PKK', 5, 27, 'answer12'),
('PKK', 6, 28, 'answer13'),
('PKK', 5, 29, 'answer14'),
('myronic', 6, 30, 'answer15'),
('myronic', 7, 31, 'answer16'),
('PKK', 7, 32, 'answer17'),
('myronic', 14, 37, 'answer22'),
('myy', 14, 38, 'answer23'),
('PKK', 12, 39, 'answer24'),
('PKK', 12, 40, 'answer25'),
('PKK', 15, 41, 'answer26'),
('myronic', 15, 42, 'answer27'),
('myronic', 17, 43, 'answer28'),
('myy', 17, 44, 'answer29'),
('myy', 16, 45, 'answer30'),
('myy', 17, 46, 'answer31'),
('PKK', 4, 50, 'answer2'),
('PKK', 3, 54, 'Saturday');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `username` varchar(200) NOT NULL,
  `msg` varchar(30000) DEFAULT NULL,
  `received` varchar(30000) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `chatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`username`, `msg`, `received`, `status`, `chatid`) VALUES
('PKK', 'hiii~hello`i hav  a problem`protein shakes ~no wer`here in dom~now`hii', 'hii~hello`wat~prob~??`why~what happened~wer`why', 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `lchall`
--

CREATE TABLE `lchall` (
  `username` varchar(500) NOT NULL,
  `chname` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lchall`
--

INSERT INTO `lchall` (`username`, `chname`, `status`, `time`, `id`) VALUES
('PKK', 'pullups', 6, '2018-11-06 15:23:46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `username` varchar(50) NOT NULL,
  `qid` int(11) NOT NULL,
  `quest` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`username`, `qid`, `quest`) VALUES
('PKK', 1, 'What is cardio?'),
('PKK', 2, 'How many sets of bench press?'),
('myronic', 3, 'When to train legs?'),
('myy', 4, 'What is Whey?'),
('PKK', 5, 'What is BCAA'),
('PKK', 6, 'how to perform squats'),
('PKK', 7, 'What is melanine'),
('myronic', 8, 'What is keto diet'),
('myronic', 9, 'When to workout'),
('myy', 10, 'What is best time to start posing'),
('myronic', 11, 'What is BCAA3'),
('myy', 12, 'What is BCAA4'),
('PKK', 13, 'What is BCAA5'),
('PKK', 14, 'What is BCAA6'),
('myy', 15, 'What is BCAA7'),
('PKK', 16, 'What is BCAA8'),
('PKK', 17, 'What is BCAA9'),
('PKK', 18, 'what is bench press machine?');

-- --------------------------------------------------------

--
-- Table structure for table `schall`
--

CREATE TABLE `schall` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `goal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `email`, `username`, `password`, `height`, `weight`, `age`, `gender`, `goal`) VALUES
(29, 'aay', 'ay.ok@som.edu', 'aay', '$2y$10$8KXb8Lbbzv5s0xjeoJ0qS.QcOezwlT7rRonx107P.zvwzjwObqiNe', 179, 70, 20, 'Male', 'Fat Loss'),
(30, 'Prajwal', 'prajwal.kotian@somaiya.edu', 'PKK', '$2y$10$JhA.DLiH0PlSL1VF8lxDuuQtT5V1sQJ5pWGyyt2T/zcwT2UiEiUZq', 170, 62, 20, 'Male', 'Lean Mass'),
(31, 'Myron', 'my.c@som.edu', 'myronic', '$2y$10$KeFQUSN6hoAAzqWcj0.gROaadDu4oNROVrc44c9MEYay.uQKt5NMW', 178, 75, 20, 'Male', 'Mass Gain'),
(37, 'mitul', 'sd@gmail.com', 'mkkk', '$2y$10$xRDpczbaTQiw5iaRPjN7aeRk1VCTprNW00OBBxavrbowHFYzXIgv2', 185, 85, 20, 'Male', 'Mass Gain'),
(38, 'amol', 'amol.d@som.edu', 'amol', '$2y$10$kAtCultYDYUqFMnyF7UoJuGbwnJ.mPTy1dEjztYtfQx5UM3vwgpGu', 179, 78, 20, 'Male', 'Mass Gain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `lchall`
--
ALTER TABLE `lchall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `schall`
--
ALTER TABLE `schall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `ansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `lchall`
--
ALTER TABLE `lchall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `schall`
--
ALTER TABLE `schall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
