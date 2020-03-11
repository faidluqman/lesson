-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 02:35 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_login`
--

CREATE TABLE `project_login` (
  `idname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_login`
--

INSERT INTO `project_login` (`idname`, `password`, `role`) VALUES
('1234', '$2y$10$o.nV0RIzR6frV2AJi7H8XubYJR6yRoVH8EcCHJLDyOc/p.rLYxLJK', 'user'),
('1996', '$2y$10$x3BGWXvd5NEnYlqhdq0cxeVXPhWfsXGl.19ZdntSMFadw58YBeCRO', 'user'),
('1998', '$2y$10$njt624ExUv6ORdnwktxhtO2WmsVdKdmfZRsI6fRFe6qrZKpsEh7rq', 'user'),
('1998', '$2y$10$ji4xKlaeykh3w9fJCXCJDu2s.txIR6nKvmEHFTfTzwVioBmar8Bpq', 'user'),
('12345678912', '', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `idname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_user`
--

INSERT INTO `project_user` (`name`, `gender`, `idname`, `email`, `password`, `role`) VALUES
('abdo', 'M', '12345678910', 'abdo@gmail.com', '$2y$10$yguPUOgaDbdekQhXTJ0bEeE1L4J4A8E0Gv6Qo5W1OppZqM4oscXnC', 'user'),
('Yusuf', 'M', '12345678912', 'yusuf@gmail.com', '$2y$10$jg/ceF836aGNgcLsWypPFOnexF7m3fF6/veIEht55bjSEy2EWNGbe', 'user'),
('Soultane', 'M', '1996', 'moussashuaib@gmail.com', '$2y$10$QX6cJmPRxkd16et0o7fkhOyhueONF4yircdGk5qljLncqmVikMco.', 'user'),
('Faizah', 'F', '1998', 'faizahandfaouaz@gmail.com', '$2y$10$J6lOxl0zYQTnlW45BpK7MO1tgFj9xKoczK.f1WWZWGuD6YOA827Qq', 'user'),
('Fawaz', 'M', '2010', 'fawaz@gmail.com', '$2y$10$GbyIJsdEMmAgxlLoTPFw0ukVeFp3BJ5uUvsZoYf0v3LfsoUsF4vLi', 'user'),
('Maryam', 'F', '2018', 'maryam@gmail.com', '$2y$10$SoTwXNfAuUVGWDnswQHdj.EgMGSsExTMJG9PurUE1ESnG0X5cLiy2', 'user'),
('Lucy', 'F', '2019', 'lucy@gmail.com', '$2y$10$Yi7c8VKxwZFYTdSA9F6GW.BDi2JyYyOtx5.sd9ty3/CmhCNz/Ag3S', 'user'),
('Fatima', 'F', '8234567', 'fatima@gmail.com', '$2y$10$2kJamk.HRwevIn5DiyOFROuKWYCfKO6xwLyhr7KLhyhxx8I4FUbnK', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`idname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
