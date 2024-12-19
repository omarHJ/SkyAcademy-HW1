-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2024 at 09:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database for a company system`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'HR'),
(4, 'IT'),
(5, 'Finance'),
(6, 'Operations'),
(7, 'Customer Support');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `department_id`, `hire_date`) VALUES
(1, 'Mohammad', 'Mohammad', 1, '2020-01-15'),
(2, 'Fatimah', 'Fatimah', 1, '2019-03-22'),
(3, 'Ahmed', 'Ahmed', 2, '2021-07-30'),
(4, 'Ali', 'Ali', 2, '2018-11-10'),
(5, 'Sara', 'Sara', 3, '2022-06-05'),
(6, 'Khalid', 'Khalid', 3, '2021-04-12'),
(7, 'Hala', 'Hala', 4, '2020-09-18'),
(8, 'Hassan', 'Hassan', 4, '2019-08-23'),
(9, 'Noor', 'Noor', 5, '2017-12-01'),
(10, 'Layla', 'Layla', 5, '2020-02-10'),
(11, 'Salman', 'Salman', 6, '2023-03-18'),
(12, 'Raed', 'Raed', 6, '2022-08-25'),
(13, 'Taha', 'Taha', 7, '2021-11-30'),
(14, 'Mahdi', 'Mahdi', 7, '2020-04-14'),
(15, 'Momen', 'Momen', 1, '2023-05-21'),
(16, 'Anas', 'Anas', 2, '2022-01-10'),
(17, 'Omar', 'Omar', 4, '2021-09-09'),
(18, 'Ibraheem', 'Ibraheem', 5, '2021-06-15'),
(19, 'Khalid', 'Khalid', 6, '2023-02-01'),
(20, 'Rasha', 'Rasha', 7, '2019-10-29');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `salary_id` int NOT NULL,
  `employee_id` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`salary_id`, `employee_id`, `salary`, `start_date`, `end_date`) VALUES
(1, 1, 550, '2020-01-15', '2025-06-05'),
(2, 2, 600, '2019-03-22', '2025-06-05'),
(3, 3, 450, '2021-07-30', '2025-06-05'),
(4, 4, 520, '2018-11-10', '2025-06-05'),
(5, 5, 480, '2022-06-05', '2025-06-05'),
(6, 6, 530, '2021-04-12', '2025-06-05'),
(7, 7, 700, '2020-09-18', '2025-06-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
