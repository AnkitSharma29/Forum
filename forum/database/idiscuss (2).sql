-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 01:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is an interpreted, high-level, general-purpose programming language. ', '2020-07-01 14:31:59'),
(2, 'JavaScript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-or', '2020-07-01 14:32:55'),
(3, 'Django', 'Django is a Python-based free and open-source web framework that follows the model-template-view architectural pattern. It is maintained by the Django Software Foundation, an American independent organization established as a 501 non-profit.', '2020-07-01 16:30:59'),
(4, 'Flask', 'This is another python framework.', '2020-07-01 16:30:59'),
(5, 'React Js', 'React Js is an webprogrammiing language framwork.', '2020-07-01 14:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(255) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(255) NOT NULL,
  `comment_by` int(255) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'this is comment', 1, 1, '2020-07-02 09:33:46'),
(2, 'good', 1, 8, '2020-07-02 09:47:02'),
(3, 'good', 1, 2, '2020-07-02 09:47:06'),
(4, 'this is a good design\r\n', 1, 3, '2020-07-02 09:55:07'),
(5, 'good any way', 2, 9, '2020-07-02 09:55:30'),
(6, 'this is a solve problem', 12, 4, '2020-07-02 09:59:38'),
(7, '$_SERVER is an array containing information such as headers, paths, and script locations. The entries in this array are created by the web server. There is no guarantee that every web server will provide any of these; servers may omit some, or provide others not listed here. That said, a large number of these variables are accounted for in the » CGI/1.1 specification, so you should be able to expect those.', 1, 5, '2020-07-02 10:05:22'),
(8, 'dae', 1, 6, '2020-07-02 10:05:29'),
(9, '\r\nThis is peer to peer Forum. No Spam / Advertising / Self-promote in the forums is not allowed.Do not post copyright-infringing material. Do not post “offensive” posts, links or images. Do not cross post questions.Remain respectful of other members at all times.', 3, 11, '2020-07-02 10:10:04'),
(10, 'hii', 11, 7, '2020-07-04 06:07:20'),
(11, 'this is a comment success', 1, 0, '2020-07-04 08:04:29'),
(12, 'this', 1, 0, '2020-07-04 08:16:28'),
(13, 'this', 1, 0, '2020-07-04 08:17:08'),
(14, 'sdas', 1, 0, '2020-07-04 08:33:37'),
(15, 'zddfsfsfs', 1, 0, '2020-07-04 08:33:53'),
(16, 'erearwe', 1, 0, '2020-07-04 08:35:45'),
(17, 'ankit', 1, 13, '2020-07-04 08:36:04'),
(18, 'aswqeqw', 1, 13, '2020-07-04 08:36:12'),
(19, 'gfg', 9, 13, '2020-07-04 08:43:42'),
(20, 'sdasds', 4, 13, '2020-07-04 08:53:12'),
(21, 'adsfdfd', 1, 14, '2020-07-04 09:10:46'),
(22, 'cxdfesdw', 12, 14, '2020-07-04 09:13:13'),
(23, '&lt;script&gt;alert(\"hello\")&lt;/script&gt;', 2, 14, '2020-07-04 09:22:07'),
(24, '&lt;script&gt;alert(\"hello\")&lt;/script&gt;', 2, 14, '2020-07-04 09:22:30'),
(25, 'fgdfg', 2, 14, '2020-07-04 09:23:27'),
(26, 'fgdfg', 2, 14, '2020-07-04 09:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(255) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(255) NOT NULL,
  `thread_user_id` int(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'unable to pyaudio', 'i am not install pyaudio', 1, 6, '2020-07-02 09:30:08'),
(2, 'python not install', 'please help me', 1, 4, '2020-07-02 09:47:34'),
(3, 'java script no work', 'please all of youhelp', 2, 1, '2020-07-02 09:54:14'),
(4, 'not work', 'not work', 1, 2, '2020-07-02 12:46:30'),
(6, 'asmdmbas', 'sdsdsaa', 1, 7, '2020-07-02 12:51:22'),
(9, 'good', 'wok on', 2, 2, '2020-07-02 12:52:28'),
(10, 'work on djano', 'please else me', 3, 8, '2020-07-02 12:59:38'),
(11, 'please do not work jquery', 'please help me not work on', 2, 9, '2020-07-02 13:02:45'),
(12, 'react js not install', 'react js is webdesign framwork', 5, 3, '2020-07-02 15:29:21'),
(13, 'zxx', 'xsxa', 1, 5, '2020-07-03 14:42:47'),
(14, 'ddfse', 'werqew', 2, 0, '2020-07-04 13:51:41'),
(15, 'ddfse', 'werqew', 2, 0, '2020-07-04 13:54:20'),
(16, 'ddfse', 'werqew', 2, 0, '2020-07-04 13:55:33'),
(17, 'this ', 'any', 2, 13, '2020-07-04 13:56:45'),
(18, 'zd', 'sds', 1, 13, '2020-07-04 13:57:14'),
(19, 'ankit', 'ankit', 1, 13, '2020-07-04 14:06:34'),
(20, 'ankit', 'ankit', 1, 0, '2020-07-04 14:07:34'),
(21, 'dfe', 'ferw', 1, 0, '2020-07-04 14:07:42'),
(22, 'dfe', 'ferw', 1, 0, '2020-07-04 14:08:43'),
(23, 'dfe', 'ferw', 1, 0, '2020-07-04 14:12:51'),
(24, 'wed', 'dsfsd', 1, 0, '2020-07-04 14:13:04'),
(25, 'gfgf', 'sdaew', 3, 0, '2020-07-04 14:14:13'),
(26, 'gfgf', 'sdaew', 3, 0, '2020-07-04 14:18:59'),
(27, 'gfgf', 'sdaew', 3, 0, '2020-07-04 14:19:27'),
(28, 'sasas', 'asaa', 1, 13, '2020-07-04 14:20:13'),
(29, 'sasas', 'asaa', 1, 13, '2020-07-04 14:22:26'),
(30, 'sdr', 'erer', 1, 13, '2020-07-04 14:22:36'),
(31, 'ankit sharma', 'eqwqwfefrwe', 1, 13, '2020-07-04 14:22:58'),
(32, 'djanfo good', 'dfd', 3, 13, '2020-07-04 14:24:03'),
(33, 'rder', 'srre', 5, 13, '2020-07-04 14:24:24'),
(34, 'erwe', 'ererere', 1, 14, '2020-07-04 14:30:25'),
(35, 'erwe', 'ererere', 1, 14, '2020-07-04 14:34:06'),
(36, '&lt;script&gt;alert(\"hello this is a title\")&lt;/script&gt;', '&lt;script&gt;alert(\"hello this is a title\")&lt;/script&gt;', 1, 14, '2020-07-04 14:59:41'),
(37, 'djanog', 'djanog good', 3, 15, '2020-07-04 16:44:57'),
(38, 'djanog', 'djanog dsfa', 3, 15, '2020-07-04 16:45:05'),
(39, 'djanog  ', 'djanog ffsf', 3, 15, '2020-07-04 16:45:13'),
(40, 'django', 'django', 3, 15, '2020-07-04 16:49:13'),
(41, 'django', 'django', 3, 15, '2020-07-04 16:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'ankit@gmail.com', 'ankit', '2020-07-03 21:27:50'),
(2, 'this@this.com', '$2y$10$HjbfylOrJ96Ng6akSGDww.T6slwGHqn6PxITBSuXlkLmn54ojiV12', '2020-07-03 22:10:14'),
(3, 'this12@gmail.com', '$2y$10$BiFSgYW/Lg8iWZORh6AaoOxSCtJilh7xli7u1GRotv6Ok9K3ln7Iy', '2020-07-03 22:16:21'),
(4, 'qwe@sd.com', '$2y$10$6TlJ1HVQn80dFMBZoZFIR.NJ84WyHF0iysT.IYSacDlQcLGwj20w6', '2020-07-03 22:22:17'),
(5, 'ankit@a.com', '$2y$10$X0fbaavxGuBKwzHM2gA1y.EYNSWegW9KsgrStdgTn3m2PmJxwjYme', '2020-07-04 09:01:40'),
(6, 'ankit@ankit1.com', '$2y$10$C.porDYwI.cdHVIw8aY5H.g5.9yefE5RA7cVNR.n/Y9XN8UXFFBda', '2020-07-04 09:52:43'),
(7, 'ankisharma@gmail.com', '$2y$10$S.llHjQlRzxRiVJepHNfoeEKsG72xgXyiP1nE56zdq3etHFG/4L8K', '2020-07-04 09:58:10'),
(8, 'ankit123456@gmail.com', '$2y$10$pS2eyStBZXi455OIik534uyDRROF06IFWtJS7jt6XKQ/GDK3qotRW', '2020-07-04 10:01:42'),
(9, 'ankit@ankit.com', '$2y$10$.ciKqvVp18k3FEmaX6CXGugYw9twHhk6vzowJ7NBXKBFiY4LGV9d.', '2020-07-04 11:00:53'),
(10, 'ankit1234@ak.com', '$2y$10$DvJNIjpodOGQB3JejdHmae86e5uhKXQJwfYgAWVXY6pY9EHBvdM6a', '2020-07-04 11:04:22'),
(11, 'h@h.com', '$2y$10$yKmuPA/02ctjbsjy/POHA.ZV3/BDsnCTtCv06.2RopV5gwNj5Mxv6', '2020-07-04 11:04:57'),
(12, 'g@g.com', '$2y$10$xRG0kRK25vN21SIBWJJh8./xPBSjxqGdjNT4h18IkIb4bhM1dIYDm', '2020-07-04 11:06:16'),
(13, 'qw@as.com', '$2y$10$MMs43amCwN2JrXXvftDNlOUcNAnkqh40fMdAHI9dzDDGvxT24NxLK', '2020-07-04 11:07:49'),
(14, 'ankit', '$2y$10$tRLcws/qmvhvru8MAwXMBuhI.f6E1S/841JwwbcqriC5ihnQAiY9S', '2020-07-04 14:30:00'),
(15, 'admin', '$2y$10$fPrw.xCqABRLhD2FsI.WjOjAdzAAGyLrLgOrlm/tbp.v3byhgLNxi', '2020-07-04 15:35:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
