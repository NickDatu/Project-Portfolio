-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2026 at 01:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `city_vet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `Appointment_ID` int(11) NOT NULL,
  `Event_ID` int(11) DEFAULT NULL,
  `Owner_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Service_ID` int(11) DEFAULT NULL,
  `Vet_ID` int(11) DEFAULT NULL,
  `Appointment_Date` datetime NOT NULL,
  `Status` enum('Pending','Confirmed','Checked In','In Consultation','Completed','No Show','Cancelled') DEFAULT 'Pending',
  `Confirmed_At` datetime DEFAULT NULL,
  `Confirmation_Attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Last_Contacted_At` datetime DEFAULT NULL,
  `Callback_Deadline` datetime DEFAULT NULL,
  `Owner_Confirmed_At` datetime DEFAULT NULL,
  `Owner_Confirmed_By` int(11) DEFAULT NULL,
  `Callback_SMS_Sent_At` datetime DEFAULT NULL,
  `Reminder_SMS_Sent_At` datetime DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `Correction_Reason` varchar(255) DEFAULT NULL,
  `Corrected_By` int(11) DEFAULT NULL,
  `Corrected_At` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointment_ID`, `Event_ID`, `Owner_ID`, `Pet_ID`, `Service_ID`, `Vet_ID`, `Appointment_Date`, `Status`, `Confirmed_At`, `Confirmation_Attempts`, `Last_Contacted_At`, `Callback_Deadline`, `Owner_Confirmed_At`, `Owner_Confirmed_By`, `Callback_SMS_Sent_At`, `Reminder_SMS_Sent_At`, `Notes`, `Correction_Reason`, `Corrected_By`, `Corrected_At`) VALUES
(115, 33, 46, 78, NULL, NULL, '2026-10-12 08:00:00', 'Cancelled', '2026-10-10 10:39:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by pet owner on 2026-10-10 10:39', NULL, NULL, NULL),
(116, 33, 46, 78, NULL, NULL, '2026-10-12 08:00:00', 'Cancelled', '2026-10-10 10:39:55', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by staff on 2026-10-10 10:39: Cancelled by owner after City Vet call.', NULL, NULL, NULL),
(117, 33, 46, 78, NULL, 6, '2026-10-12 08:00:00', 'Completed', '2026-10-10 10:40:12', 0, NULL, NULL, '2026-10-10 10:40:15', 5, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s).', NULL, NULL, NULL),
(118, 33, 45, 81, NULL, NULL, '2026-10-12 08:00:00', 'Completed', '2026-10-10 10:46:29', 0, NULL, NULL, '2026-10-10 10:46:32', 5, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s).', NULL, NULL, NULL),
(119, NULL, 45, 81, 8, 6, '2026-10-10 10:51:41', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(120, NULL, 45, 81, 8, 6, '2027-10-11 08:00:00', 'Confirmed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #34.', NULL, NULL, NULL),
(121, NULL, 47, 79, 1, 110, '2026-10-10 11:48:43', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(122, NULL, 47, 80, 1, 108, '2026-10-10 11:53:43', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(123, NULL, 46, 78, 7, 108, '2026-10-10 11:56:22', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(124, NULL, 46, 78, 7, 108, '2027-10-11 08:00:00', 'Confirmed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #37.', NULL, NULL, NULL),
(125, 34, 45, 81, NULL, NULL, '2026-10-13 08:00:00', 'Completed', '2026-10-10 12:54:45', 0, NULL, NULL, '2026-10-10 12:55:14', 5, NULL, '2026-10-10 12:54:49', 'Spay/Neuter event booking for 1 pet(s).', NULL, NULL, NULL),
(126, 34, 46, 78, NULL, NULL, '2026-10-13 08:00:00', 'Completed', '2026-10-10 12:58:57', 0, NULL, NULL, '2026-10-10 12:59:33', 5, NULL, '2026-10-10 12:59:02', 'Spay/Neuter event booking for 1 pet(s).', NULL, NULL, NULL),
(128, NULL, 47, 79, 653, 108, '2026-10-10 13:13:35', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(129, NULL, 47, 79, 653, 108, '2027-10-11 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #38. | Cancelled by pet owner on 2026-10-12 15:44', NULL, NULL, NULL),
(130, NULL, 51, 86, 8, 111, '2026-10-10 15:19:24', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(131, NULL, 51, 86, 8, 111, '2026-10-26 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #39.', NULL, NULL, NULL),
(132, NULL, 51, 87, 7, 111, '2026-10-10 15:41:29', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(133, NULL, 51, 87, 7, 111, '2027-10-11 08:00:00', 'Confirmed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #40.', NULL, NULL, NULL),
(134, NULL, 51, 87, 653, 111, '2026-10-10 15:44:25', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(135, NULL, 51, 87, 653, 111, '2027-10-11 08:00:00', 'Confirmed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #41.', NULL, NULL, NULL),
(136, NULL, 51, 87, 7, 110, '2026-10-10 15:48:13', 'Completed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Walk-in consultation', NULL, NULL, NULL),
(137, NULL, 51, 87, 7, 110, '2027-10-11 08:00:00', 'Confirmed', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Follow-up appointment from consultation #42.', NULL, NULL, NULL),
(138, 37, 51, 87, NULL, NULL, '2026-10-15 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by staff on 2026-10-10 15:54: Cancelled by owner after City Vet call.', NULL, NULL, NULL),
(139, 38, 51, 87, NULL, 6, '2026-10-16 08:00:00', 'Completed', '2026-10-10 15:54:46', 0, NULL, NULL, '2026-10-10 15:56:29', 5, NULL, '2026-10-10 15:54:50', 'Spay/Neuter event booking for 1 pet(s).', NULL, NULL, NULL),
(140, 39, 51, 87, NULL, NULL, '2026-10-19 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by staff on 2026-10-10 16:03: Cancelled by owner after City Vet call.', NULL, NULL, NULL),
(141, 39, 51, 88, NULL, NULL, '2026-10-19 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by pet owner on 2026-10-10 16:04', NULL, NULL, NULL),
(142, 39, 51, 89, NULL, NULL, '2026-10-19 08:00:00', 'Cancelled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Spay/Neuter event booking for 1 pet(s). | Cancelled by pet owner on 2026-10-10 16:04', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_pets`
--

CREATE TABLE `appointment_pets` (
  `Appointment_Pet_ID` int(11) NOT NULL,
  `Appointment_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_pets`
--

INSERT INTO `appointment_pets` (`Appointment_Pet_ID`, `Appointment_ID`, `Pet_ID`) VALUES
(53, 115, 78),
(54, 116, 78),
(55, 117, 78),
(56, 118, 81),
(57, 119, 81),
(58, 120, 81),
(59, 121, 79),
(60, 122, 80),
(61, 123, 78),
(62, 124, 78),
(63, 125, 81),
(64, 126, 78),
(66, 128, 79),
(67, 129, 79),
(68, 130, 86),
(69, 131, 86),
(70, 132, 87),
(71, 133, 87),
(72, 134, 87),
(73, 135, 87),
(74, 136, 87),
(75, 137, 87),
(76, 138, 87),
(77, 139, 87),
(78, 140, 87),
(79, 141, 88),
(80, 142, 89);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `Log_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Event_Type` varchar(50) NOT NULL DEFAULT 'data_change',
  `Table_Affected` varchar(50) DEFAULT NULL,
  `Record_ID` int(11) DEFAULT NULL,
  `Outcome` varchar(20) NOT NULL DEFAULT 'success',
  `Request_Method` varchar(10) DEFAULT NULL,
  `Endpoint` varchar(255) DEFAULT NULL,
  `IP_Address` varchar(45) DEFAULT NULL,
  `Session_ID` varchar(128) DEFAULT NULL,
  `Metadata` longtext DEFAULT NULL,
  `Timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(1, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-04-28 13:02:25'),
(2, 4, 'Update Profile', 'data_change', 'users', 4, 'success', NULL, NULL, NULL, NULL, NULL, '2026-04-28 13:02:25'),
(3, 4, 'View Reports', 'data_change', 'analytics', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-04-28 13:02:25'),
(4, 4, 'System Audit', 'data_change', 'audit_logs', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-04-28 13:02:25'),
(5, 11, 'Update Profile', 'data_change', 'users', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-09 23:05:16'),
(6, 11, 'Update Pet Record', 'data_change', 'pets', 6, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-09 23:06:00'),
(7, 11, 'Archive Pet Record', 'data_change', 'pets', 7, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-09 23:16:30'),
(8, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-09 23:49:01'),
(9, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-09 23:54:38'),
(10, 11, 'Add Pet Note', 'data_change', 'pet_notes', 2, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:24:31'),
(11, 11, 'Request Appointment', 'data_change', 'appointments', 9, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:24:45'),
(12, 6, 'Approve Appointment', 'data_change', 'appointments', 4, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:25:10'),
(13, 4, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:45:48'),
(14, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:45:56'),
(15, 4, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:46:09'),
(16, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:46:17'),
(17, 4, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:46:21'),
(18, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:46:28'),
(19, 4, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:46:59'),
(20, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:47:12'),
(21, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:59:29'),
(22, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:59:37'),
(23, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:59:46'),
(24, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-10 00:59:52'),
(25, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 21:53:51'),
(26, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:05:08'),
(27, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:13:27'),
(28, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:38:09'),
(29, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 1, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:38:32'),
(30, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:38:52'),
(31, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 10, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:39:21'),
(32, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:41:14'),
(33, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 10, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:42:33'),
(34, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:42:40'),
(35, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-06-17 22:47:18'),
(36, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:42:01'),
(37, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:43:41'),
(38, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:43:53'),
(39, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:45:38'),
(40, 11, 'Add Pet Note', 'data_change', 'pet_notes', 3, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:46:27'),
(41, 4, 'Update Pet Record', 'data_change', 'pets', 6, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:46:47'),
(42, 4, 'Update Appointment Status', 'data_change', 'appointments', 9, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:47:19'),
(43, 4, 'Update Appointment Status', 'data_change', 'appointments', 8, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:47:21'),
(44, 4, 'Update Appointment Status', 'data_change', 'appointments', 5, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:47:22'),
(45, 4, 'Update Appointment Status', 'data_change', 'appointments', 7, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-05 19:47:22'),
(46, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:18:31'),
(47, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:18:56'),
(48, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:20:20'),
(49, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:20:36'),
(50, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 2, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:21:06'),
(51, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:21:21'),
(52, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:21:39'),
(53, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:25:17'),
(54, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-09 15:27:06'),
(55, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 12:52:23'),
(56, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 12:53:09'),
(57, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 13:02:23'),
(58, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 13:17:32'),
(59, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 13:17:55'),
(60, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 13:37:54'),
(61, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 23:40:11'),
(62, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 23:46:25'),
(63, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 23:47:36'),
(64, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-15 23:50:57'),
(65, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:07:16'),
(66, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:10:13'),
(67, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:17:47'),
(68, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 3, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:20:08'),
(69, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:22:19'),
(70, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:22:31'),
(71, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:22:42'),
(72, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:24:05'),
(73, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:32:51'),
(74, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:32:56'),
(75, 5, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:33:08'),
(76, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:33:32'),
(77, 6, 'Save Vet Consultation', 'data_change', 'medical_records', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:34:35'),
(78, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:41:41'),
(79, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:41:53'),
(80, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:42:14'),
(81, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 13, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:42:23'),
(82, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 13, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:43:33'),
(83, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:48:32'),
(84, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:50:25'),
(85, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 4, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:50:34'),
(86, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 14, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:50:48'),
(87, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 14, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:50:55'),
(88, 5, 'Update Queue Status to Checked In', 'data_change', 'appointments', 14, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:51:12'),
(89, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:51:49'),
(90, 5, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:53:50'),
(91, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-07-16 00:53:53'),
(92, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:07:19'),
(93, 5, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:08:58'),
(94, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:08'),
(95, 11, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:15'),
(96, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:23'),
(97, 6, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:29'),
(98, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:36'),
(99, 4, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:41'),
(100, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:09:46'),
(101, 5, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:10:21'),
(102, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:30:17'),
(103, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:30:44'),
(104, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:32:12'),
(105, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:32:19'),
(106, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:32:57'),
(107, 5, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:33:31'),
(108, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:36:04'),
(109, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:38:04'),
(110, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:44:32'),
(111, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:50:56'),
(112, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 07:54:21'),
(113, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:00:42'),
(114, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:03:30'),
(115, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:04:40'),
(116, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:52:07'),
(117, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:54:20'),
(118, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 15, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:56:20'),
(119, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 08:56:36'),
(120, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:07:00'),
(121, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:10:41'),
(122, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 14, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:12:16'),
(123, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:12:25'),
(124, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:12:36'),
(125, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:15:45'),
(126, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:23:21'),
(127, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:45:37'),
(128, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 09:45:57'),
(129, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:11:10'),
(130, 5, 'Create General Event', 'data_change', 'calendar_events', 5, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:11:50'),
(131, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:12:00'),
(132, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:12:26'),
(133, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:13:34'),
(134, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:17:33'),
(135, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:17:45'),
(136, 6, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-01 10:17:53'),
(137, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-03 23:45:05'),
(138, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-03 23:48:23'),
(139, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-03 23:53:48'),
(140, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-03 23:56:00'),
(141, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:05:09'),
(142, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:14:52'),
(143, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:18:53'),
(144, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:25:03'),
(145, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:25:29'),
(146, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:30:11'),
(147, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-04 00:30:38'),
(148, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:34:04'),
(149, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:35:45'),
(150, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 6, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:35:50'),
(151, 5, 'Logout', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:36:55'),
(152, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:39:33'),
(153, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:54:00'),
(154, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 17, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:54:19'),
(155, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:54:26'),
(156, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 17, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:54:52'),
(157, 5, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:58:03'),
(158, 11, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:58:12'),
(159, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 18, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:59:24'),
(160, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 18, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-05 00:59:50'),
(161, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-14 00:45:34'),
(162, 4, 'Login', 'data_change', 'sessions', 0, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-14 01:25:19'),
(163, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'qgirqvehq8s6moud5p5acj8r2i', '{\"reason\":\"invalid_credentials\"}', '2026-08-14 01:37:52'),
(164, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', NULL, '2026-08-14 01:44:57'),
(165, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:45:01'),
(166, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:45:03'),
(167, 11, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', '{\"reason\":\"invalid_credentials\"}', '2026-08-14 01:45:30'),
(168, 11, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', '{\"reason\":\"invalid_credentials\"}', '2026-08-14 01:45:39'),
(169, 11, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', '{\"reason\":\"invalid_credentials\"}', '2026-08-14 01:45:41'),
(170, 11, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', '{\"reason\":\"invalid_credentials\"}', '2026-08-14 01:45:45'),
(171, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:45:48'),
(172, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:45:49'),
(173, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:45:51'),
(174, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', NULL, '2026-08-14 01:46:06'),
(175, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:46:08'),
(176, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:47:00'),
(177, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:47:00'),
(178, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/api/clinic/appointments.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', NULL, '2026-08-14 01:47:22'),
(179, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/api/clinic/appointments.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', NULL, '2026-08-14 01:47:24'),
(180, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/api/clinic/appointments.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', NULL, '2026-08-14 01:47:24'),
(181, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:47:25'),
(182, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/api/clinic/appointments.php', '::1', 'dhh3r2drdk1eelo2kkjcp7t30b', NULL, '2026-08-14 01:47:47'),
(183, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', NULL, '2026-08-14 01:54:17'),
(184, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:57:19'),
(185, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 01:58:11'),
(186, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', NULL, '2026-08-14 02:05:58'),
(187, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sfauea9kjuvcf3o7vmhrl5j72u', '{\"page\":1}', '2026-08-14 02:06:12'),
(188, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 00:43:44'),
(189, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 00:44:18'),
(190, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 00:44:57'),
(191, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 00:45:02'),
(192, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 00:45:12'),
(193, 4, 'Deactivate User Account', 'data_change', 'users', 13, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:45:44'),
(194, 4, 'Deactivate User Account', 'data_change', 'users', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:45:49'),
(195, 4, 'Deactivate User Account', 'data_change', 'users', 16, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:46:01'),
(196, 4, 'Deactivate User Account', 'data_change', 'users', 14, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:46:03'),
(197, 17, 'Register Account', 'security', 'users', 17, 'success', 'POST', '/city_vet/api/auth/register.php', '::1', NULL, '{\"role_id\":3,\"registration_type\":\"self_service\"}', '2026-08-20 00:49:50'),
(198, 17, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 00:51:03'),
(199, 4, 'Archive Pet Record', 'data_change', 'pets', 8, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:52:00'),
(200, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"page\":1}', '2026-08-20 00:52:13'),
(201, 4, 'Restore Archived Pet', 'data_change', 'pets', 8, 'success', 'POST', '/city_vet/api/records/restore_pet.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 00:52:23'),
(202, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"page\":1}', '2026-08-20 00:52:27'),
(203, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 00:58:20'),
(204, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 00:58:28'),
(205, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 7, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:58:45'),
(206, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 19, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:59:06'),
(207, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 19, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 00:59:13'),
(208, 5, 'Close Past Calendar Event', 'data_change', 'calendar_events', 6, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:03:57'),
(209, 5, 'Close Past Calendar Event', 'data_change', 'calendar_events', 5, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:04:05'),
(210, 5, 'Create General Event', 'data_change', 'calendar_events', 8, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:05:16'),
(211, 5, 'Close Calendar Event', 'data_change', 'calendar_events', 7, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:10:11'),
(212, 11, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"reason\":\"invalid_credentials\"}', '2026-08-20 01:14:19'),
(213, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:14:21'),
(214, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:14:34'),
(215, 5, 'Delete Calendar Event', 'data_change', 'calendar_events', 7, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:14:41'),
(216, 5, 'Delete Calendar Event', 'data_change', 'calendar_events', 8, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:14:43'),
(217, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:15:42'),
(218, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:15:47'),
(219, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:15:51'),
(220, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:15:55'),
(221, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:16:17'),
(222, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:16:27'),
(223, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:16:30'),
(224, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:16:58'),
(225, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:19:56'),
(226, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:20:04'),
(227, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:20:13'),
(228, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:20:18'),
(229, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:20:34'),
(230, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:20:38'),
(231, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:23:42'),
(232, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:28:11'),
(233, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:28:17'),
(234, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:28:28'),
(235, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:28:34'),
(236, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:28:42'),
(237, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:28:44'),
(238, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:29:22'),
(239, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:29:27'),
(240, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:29:40'),
(241, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"reason\":\"invalid_credentials\"}', '2026-08-20 01:29:44'),
(242, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:29:50'),
(243, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:30:01'),
(244, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:30:04'),
(245, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:33:44'),
(246, 11, 'Update Profile', 'data_change', 'users', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:33:56'),
(247, 11, 'Update Profile', 'data_change', 'users', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-08-20 01:34:18'),
(248, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:34:23'),
(249, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:34:33'),
(250, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:34:42'),
(251, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:34:47'),
(252, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'p2h3vab8t51ic2q6atfqv839rg', NULL, '2026-08-20 01:39:17'),
(253, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:41:19'),
(254, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:41:27'),
(255, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:43:07'),
(256, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:43:11'),
(257, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"page\":1}', '2026-08-20 01:47:07'),
(258, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:47:51'),
(259, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:47:56'),
(260, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:49:46'),
(261, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:49:53'),
(262, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:51:39'),
(263, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 01:51:43'),
(264, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 02:14:44'),
(265, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', NULL, '2026-08-20 02:15:04'),
(266, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"page\":1}', '2026-08-20 02:16:09'),
(267, 4, 'View Audit Logs', 'security', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'sm14asdpnh87b0johuc7pk5u09', '{\"page\":1}', '2026-08-20 02:16:17'),
(268, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:00:31'),
(269, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:00:42'),
(270, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:00:53'),
(271, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:28:24'),
(272, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:52:35'),
(273, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 01:59:22'),
(274, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:00:28'),
(275, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:00:51'),
(276, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:01:02'),
(277, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:01:10'),
(278, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:01:24'),
(279, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:01:35'),
(280, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:04:41'),
(281, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:06:33'),
(282, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:06:39'),
(283, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:21:56'),
(284, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:27:35'),
(285, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:27:43'),
(286, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:37:45'),
(287, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:59:21'),
(288, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:59:44'),
(289, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:59:49'),
(290, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 02:59:49'),
(291, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:00:11'),
(292, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:00:16'),
(293, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:01:09'),
(294, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:01:17'),
(295, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:02:07'),
(296, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:02:23'),
(297, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:03:00'),
(298, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:03:03'),
(299, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', '{\"reason\":\"invalid_credentials\"}', '2026-09-01 03:16:18'),
(300, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', '{\"reason\":\"invalid_credentials\"}', '2026-09-01 03:16:21'),
(301, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:16:31'),
(302, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:16:59'),
(303, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:17:05'),
(304, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:17:20'),
(305, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:17:24'),
(306, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:17:46'),
(307, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:17:50'),
(308, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:18:09'),
(309, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4m8t6ok5gdukbihdbbgvrhk89m', NULL, '2026-09-01 03:18:14'),
(310, 18, 'Register Account', 'data_change', 'users', 18, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 22:41:45'),
(311, 18, 'Login', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 22:42:06'),
(312, 11, 'Login', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:35:41'),
(313, 4, 'Login', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:44:11'),
(314, 4, 'Archive Pet Record', 'data_change', 'pets', 6, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:45:40'),
(315, 5, 'Login', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:45:52'),
(316, 4, 'Logout', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:46:44'),
(317, 6, 'Login', 'data_change', 'sessions', NULL, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-06 23:46:49'),
(318, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:50:05'),
(319, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:50:21'),
(320, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:50:29'),
(321, 4, 'View Audit Logs', 'data_change', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:51:11'),
(322, 4, 'View Audit Logs', 'data_change', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:51:28'),
(323, 4, 'View Audit Logs', 'data_change', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:51:35'),
(324, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'suqmt60dtf0q557491g22ba96k', NULL, '2026-09-07 00:51:47'),
(325, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'd99cab37eb94826116b5505b56a3b9cc3a29214ab707549b8ebfd584351671d3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(326, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'ff5f4f07ef4538eadf77c69da49f0edc5c9288119ec78bbb09e9da74ba36f0ad', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(327, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'bd51ae58a4b39d82955fe6124ac758656a22db635e40cc8b8c3ae90321a5bbcd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(328, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '09667635b194cac13eb276ae2647bd32235b9aba24b5bf731c76ec91c1ef7ea4', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(329, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '898f2d2d30763e432096ba8fd4154be103bf39ed1f216444b0adc399a334deb9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(330, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '5f8c16b36d7ee32c2fc51e000649f956c4e3f2ea8d6f54554c04912a81ab8122', NULL, '2026-09-10 09:28:07'),
(331, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'a6aea4a9c2b94bb03f57897a26f92a7b0d56b7db5cb5d44913967dbf5877c6a3', NULL, '2026-09-10 09:28:07'),
(332, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'a2c39a5a4923a2401ef5333d1601a000fd9cc3803af230fad0c2acc22adcb249', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:07'),
(333, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '6b25e2ef51a40b7788c1d1732be5854d1b1c8b491e64f7934a90a7fc9d6fede3', NULL, '2026-09-10 09:28:07'),
(334, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'cd13ce0db5431900307aaa42979adc751b0f4eae6071f7cf16ed0d8866b43040', NULL, '2026-09-10 09:28:07'),
(335, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'a28de034e05e4918cf72590b3bef796478a262061fea0f7a2845650f580fb1ba', NULL, '2026-09-10 09:28:07'),
(336, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'dead281ac350036b5a6f4d4d95cad6a31417d5febdfe4feea17d51fc972b49ca', '{\"reason\":\"missing_credentials\"}', '2026-09-10 09:28:22'),
(337, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'a8acb98331a11d382fa0153312d252f56ae13a6feff8a558272b8527a0720644', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32'),
(338, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'c5a7456f93607361c116ddcf1058f648a97450fe52502a95d0bc60efb01ee982', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32'),
(339, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'b43fadffa2b0f2210d5dfb22a7aaaf40ed2449ce96c3962d671d0bd995cd05c2', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32'),
(340, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '5678905c7ccbdd80ce7e46d0f638ffd41aa8f1c2172e50d608a7cd5b5a1510a3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32'),
(341, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'b1505c725083be501e4c7e953de3dd7e1f58cf11015df788a89b2ef7354d07f4', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32');
INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(342, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'd8d10569cbfd75d2dc8beeebbac03c182484dea49c95f250abbdca91045d27f0', NULL, '2026-09-10 09:28:32'),
(343, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'c735136678e5425c4526dc9395e6ec7bd1d77bc21609eaa53f2d5340f0ef553a', NULL, '2026-09-10 09:28:32'),
(344, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '1522825e4610060a996173827ae65f8ccd108707c68fa5e880f6d2067fbf3ddf', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:28:32'),
(345, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '5057dc3cef50d1701ca06bff3825956ff77d045c271bc0d2ab0191b51f73b977', NULL, '2026-09-10 09:28:32'),
(346, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4b6590839046b3ea11da4c6e828e92f36bfea2840bac00c080a7a1f275818e48', NULL, '2026-09-10 09:28:32'),
(347, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'c14416f60297b75560c9dd117c8a695ee76a5f70e381938cf4c9ed9421eb85b7', NULL, '2026-09-10 09:28:32'),
(348, NULL, 'Archive Pet Record', 'data_change', 'pets', 12, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 09:28:32'),
(349, NULL, 'Approve Appointment', 'data_change', 'appointments', 23, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', '4b6590839046b3ea11da4c6e828e92f36bfea2840bac00c080a7a1f275818e48', NULL, '2026-09-10 09:28:32'),
(350, NULL, 'Archive Pet Record', 'data_change', 'pets', 13, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 09:28:32'),
(351, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '6e1267384ab2ba96fd02226209a90827dcb32d3d20e61d8ed333cbc49579cbec', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:29:35'),
(352, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'd9c84013854687eacbc1376c6cbf99f5719af153f279747f3bbd45fab67b43c3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:29:35'),
(353, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '32f4ea3663fc9f7305e95546250a43ddbb0dd8068dd394a3d6bebc966ccada93', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:29:35'),
(354, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '9c83ab5967a526eae9611f9cfa15c500bbe7a8865213404a4405001ce3429888', NULL, '2026-09-10 09:29:35'),
(355, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '15c8ec231d8d2925a19585718cd21c879806a88bf5bc258a98c49e0b82833091', NULL, '2026-09-10 09:29:35'),
(356, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'a7a2e4eab1a95af5ed4743708642f3499ac6d86212a6bf37183efa70296a340c', NULL, '2026-09-10 09:29:35'),
(357, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '39b1fb4b2edfa4ac2c32c6d388e6b4465c638caa44da0ff3edb4380cff118860', NULL, '2026-09-10 09:29:35'),
(358, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '5182069c67fe1f805eb0453716255eb89e77a876a585c658bc67c1d817dce35d', NULL, '2026-09-10 09:29:35'),
(359, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'b2c7d3f6798cbd457e1b5f898527540613cf88736202c1367d3b4fead2508ac7', NULL, '2026-09-10 09:29:35'),
(360, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'bb9705a0bdfc772afeb2ecb2e300fe6c4059fcb7fa4bd0e0697cb7f9f31e040f', NULL, '2026-09-10 09:29:35'),
(361, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'a4f5f6f2104776a60d705932ed5dec4e0b93bfa3c43c3575bd9c942b0a74c17a', NULL, '2026-09-10 09:29:35'),
(362, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '0505e0b76202f611158d54deee4825361a7ff17be6fcd35504bae103661a21d9', NULL, '2026-09-10 09:29:35'),
(363, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '2a47e03f3376f9a093177da6537c481396fc2d70e47c0453fdfdd3becfcd3ac8', NULL, '2026-09-10 09:29:35'),
(364, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '5ff11681a01ea30926c8ccf0f737270b61d0763b9b5757a694d2a4830449a476', NULL, '2026-09-10 09:29:35'),
(365, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'fa6c7a81024c60f785c1761637cc0856b78633ae254dbcf6a8ff52cc7971afbb', NULL, '2026-09-10 09:29:35'),
(366, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'a2f77f9d1d78863930f5d17d1a82467a76a380d0e132f9a245ff98ef9b44d061', NULL, '2026-09-10 09:29:35'),
(367, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '2fe1f9dae62896977633a7f0d2cf3d43a7e36d93105c20701cb10cc22e30b57b', NULL, '2026-09-10 09:29:35'),
(368, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '6667a1a7934217868ec923eefbabae9fb658042676ffed6600ef3b2279e7668c', NULL, '2026-09-10 09:29:35'),
(369, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '9fafa32832d38fc39d679614affdcc91762c53d8cf160fb075a98f28d2673cd5', NULL, '2026-09-10 09:29:35'),
(370, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '4e063c331f49cc2357c77a189c58db71a0fdee9c49817ea9bed79f276aab4503', NULL, '2026-09-10 09:29:35'),
(371, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'cfc3756577c1eeb76ee1fb4c76e9222050445377baecf1633bfd32bb40d09646', NULL, '2026-09-10 09:29:36'),
(372, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '27a7d841049b3741993da01e96d868933e9cd72034f38e875f055bcbe3eb3369', NULL, '2026-09-10 09:29:36'),
(373, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '96a7484866c411909a570df83652baa1475ad1f6109e4356e2cca0e966efeeb9', NULL, '2026-09-10 09:29:36'),
(374, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '26552134a42ff44c6dc45634f3e64f944f1f022f3d02b54e863cb22b9929feef', NULL, '2026-09-10 09:29:36'),
(375, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', '26552134a42ff44c6dc45634f3e64f944f1f022f3d02b54e863cb22b9929feef', NULL, '2026-09-10 09:29:36'),
(376, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', '26552134a42ff44c6dc45634f3e64f944f1f022f3d02b54e863cb22b9929feef', NULL, '2026-09-10 09:29:36'),
(377, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'e21ff4dc46dfa051e8571b5f3262cd86fbb2ecfdca633da5d6808fb72df4b3ef', NULL, '2026-09-10 09:29:36'),
(378, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'd1baf942b22c3f4de18c4af6923029d08ba5069fa9b6ff0b1c39e8473826260d', NULL, '2026-09-10 09:29:36'),
(379, NULL, 'Unauthorized Appointment Approval', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', 'e21ff4dc46dfa051e8571b5f3262cd86fbb2ecfdca633da5d6808fb72df4b3ef', NULL, '2026-09-10 09:29:36'),
(380, NULL, 'Unauthorized Appointment Approval', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', 'e21ff4dc46dfa051e8571b5f3262cd86fbb2ecfdca633da5d6808fb72df4b3ef', NULL, '2026-09-10 09:29:36'),
(381, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', '26552134a42ff44c6dc45634f3e64f944f1f022f3d02b54e863cb22b9929feef', NULL, '2026-09-10 09:29:36'),
(382, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'be9aa00d47336396933ff58f4dccf63994d3e7614110196e56e662d12e0b199e', NULL, '2026-09-10 09:30:06'),
(383, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'f54e0708fcbb2559ffcd98953fe6c8999c16b16feaa8c7dbea08356411c41d1e', NULL, '2026-09-10 09:30:06'),
(384, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '5e37317818f5f7022293bb2e701b38dc2f676b1ab9a1272d6b23c8a3c86434a2', NULL, '2026-09-10 09:30:06'),
(385, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'f96795a7213a9feac14e9c9c3ba47bbcd659a1948644c16ca9878cf87b9a5e31', NULL, '2026-09-10 09:30:06'),
(386, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '3a0ff1a2ce250f7b619b7b998869d6c122cc0dc656c25ee3ce3cf7d4b6399a49', NULL, '2026-09-10 09:30:06'),
(387, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'd4330f72167f016dbb8cc54391eab51aad71e1b1d86e4e624b02582c97a002bf', NULL, '2026-09-10 09:30:06'),
(388, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '784086a5ac61c12c4205edced468eda74be39db2ea62c6d7968f54a610f60e96', NULL, '2026-09-10 09:30:06'),
(389, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'e691ebd7196a828bf644be53fc797c0ad7d54df8e76bee12d889cd8da867b143', NULL, '2026-09-10 09:30:06'),
(390, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'f5d84a0df00409b87496688559d9b7985f38372e6bf649a59a959f42b0de995f', NULL, '2026-09-10 09:30:06'),
(391, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'be636c97d63650d34b51f0405f1e3ff18f3f821663a6dd8a977d7a9087739c22', NULL, '2026-09-10 09:30:06'),
(392, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'ca499979872b6974ca8c67ccbf6924625ddf8ba403d8d4ea1b780048027cb93f', NULL, '2026-09-10 09:30:07'),
(393, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'effef09262831f8846ddff14941b6a7402a250e7530925bf78342dc50567a5e8', NULL, '2026-09-10 09:30:07'),
(394, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'fc98a7e02c8bd73e2e08e7b2e2f652a329a1548ebd55b04953ca690d34cb10b1', NULL, '2026-09-10 09:30:07'),
(395, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '60c7cb537d2c9401d8b2f8c0cac152ede5e81b2f665ea0149e1ec440b3517db9', NULL, '2026-09-10 09:30:07'),
(396, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'f0fea92b7df6e72df2c7869d1ea4ab967cebb85adf4ac3c9ab806b02537fd4f4', NULL, '2026-09-10 09:30:07'),
(397, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '78c9ddd4cc8983c376dcfa20a814a81160b89ac1ccc9701dd490c13843c401a6', NULL, '2026-09-10 09:30:07'),
(398, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '970cf54d3171e8a53355d97c7df0f7a8b4ec427419c3e4e324a243a9aaffc397', NULL, '2026-09-10 09:30:07'),
(399, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '0a3bc78ac1db55bb3344a5a3afc3bad5dfd9ec7de690dd21a15e2993a1a825d9', NULL, '2026-09-10 09:30:07'),
(400, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '7cb893c8387ee7c1dc2801bf23cdde7fccf99b06282f37b95d9de28daab76221', NULL, '2026-09-10 09:30:07'),
(401, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '2cd881b4d247522dbd004120b0be2f6f04f684c6a25027677617259f7c88fb56', NULL, '2026-09-10 09:30:07'),
(402, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '7f3733e784a6378930e2fd0541c00c3f2e99c10258f32605cb06428a915ccc1a', NULL, '2026-09-10 09:30:07'),
(403, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '54a9bbbc34efd0e103d28706979391d14456a7e67eb92e8f9b81c3627ac80f5f', NULL, '2026-09-10 09:30:07'),
(404, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'b9c34de3ddb2d214da21eae6b75afc3f329398aa66df95c0b59e838e0e9ae91c', NULL, '2026-09-10 09:30:07'),
(405, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'bb3f211e10eee0ae798f50ba540c4cdebe93fa105a7912367dcde3bc5419bde9', NULL, '2026-09-10 09:30:07'),
(406, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', 'bb3f211e10eee0ae798f50ba540c4cdebe93fa105a7912367dcde3bc5419bde9', NULL, '2026-09-10 09:30:07'),
(407, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', 'bb3f211e10eee0ae798f50ba540c4cdebe93fa105a7912367dcde3bc5419bde9', NULL, '2026-09-10 09:30:07'),
(408, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', '8a8bdc291c1eebb07271bbb54157566c7c4b4d5696cd524a9222aaa27f465343', NULL, '2026-09-10 09:30:07'),
(409, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '::1', 'f1d706db78454a639272dcc4455507f8880d204ce30528f4e6a04d9c6cbc48af', NULL, '2026-09-10 09:30:07'),
(410, NULL, 'Unauthorized Appointment Approval', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', '8a8bdc291c1eebb07271bbb54157566c7c4b4d5696cd524a9222aaa27f465343', NULL, '2026-09-10 09:30:07'),
(411, NULL, 'Unauthorized Appointment Approval', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', '8a8bdc291c1eebb07271bbb54157566c7c4b4d5696cd524a9222aaa27f465343', NULL, '2026-09-10 09:30:07'),
(412, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/city_vet/api/clinic/appointments.php', '::1', 'bb3f211e10eee0ae798f50ba540c4cdebe93fa105a7912367dcde3bc5419bde9', NULL, '2026-09-10 09:30:07'),
(413, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '9e673c6a78834d3c51ae7b5d2feef548ae504918645c2c2ce3107102fbb78a10', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(414, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ace08b9f554dd73d397b4af68a39d2158c1703238f09641e994f689626a40ec9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(415, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '86e258e689f7adef186f54ce2e4cbe42cb817fbedbad4ba5d2e6ff51841e412b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(416, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '1c5138251cc155c05f097b3fc322c822836043d82510fbf2d1736ceb27c77b0c', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(417, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c5cb4e7e1b7511da38dcb09bc48543fd6918827322b04f7357bbf4ed76ce2144', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(418, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '261643387dac9752f5250422c75cad8eecbd0ccc0babe3af59ce056b842c9be7', NULL, '2026-09-10 09:30:49'),
(419, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7fb7a70ee6ec721193a88799308b9583dc7dac9f33f8a290f8d2621baecc0056', NULL, '2026-09-10 09:30:49'),
(420, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a6ddd3db9df611e28c2d3a1377d23bb428710d9567f54bb3c4e4582a404f2a31', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(421, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'bfd5060bb1eba08cb3a075d9fff4afa68513a0003a3103b525950911c1ad6bd3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(422, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '55d68e217867bd80a09c81cbccea201fa01594001c125f86f24faebddf006a63', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(423, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '27ef2194bb66f71d1e5248c8ba979b7e500dca303f7f41cb8fcb13b31bce365b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(424, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c613b5839c86672133a844bc873855022cb74ee9792bbfbdb87a0a24e3ebc085', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(425, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5e659d0ab8f45553a636866565fa13f73254c528c88c8b1d28eb423483fd4558', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(426, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '24a400ca7ba5a0fc4c1f801ac1c89c34aae152497dd905dcdd6d3da9cc129ed8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(427, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '9f143bd9b31fbf65555673183fc52b53d501a3f3a310f58a4125c84847eb179c', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(428, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0f128b2c53dfd6d1f5c657262a2802bdb69771a10d1b0d945a39b601bf63469d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(429, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '415550bf35bedb7b8ef6e5a82ea042d68ddd58fa63137993b2fc44fd02f64920', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 09:30:49'),
(430, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c52e40a96c2edc4daec5e4c7eb32955e4cd158fbf13bb93d20d898e119a27e0f', NULL, '2026-09-10 09:30:49'),
(431, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4fd459da2b42bb70f285db444c7d9dda8f6a99dae10c79b2b2f044ff9b0dc22c', NULL, '2026-09-10 09:30:49'),
(432, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '97220c000a0d18d9b0f808d0736cd4ab4b0e41d0c77e43ec03b4c5afb02ef1a2', NULL, '2026-09-10 09:30:49'),
(433, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6b2cbb0a63439e5733aa99143073ba6f71d78aab3b4ef80c3e84a6045fbafe06', NULL, '2026-09-10 09:30:49'),
(434, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '8af735e893e21dce74525e580d0aef2ba37e7b60474ec98380723ac334b09b44', NULL, '2026-09-10 09:30:49'),
(435, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '295de4a55b46619e7d5c9fb4aafa53a9b627219efc25996ebfcd9ac91ba3a55e', NULL, '2026-09-10 09:30:49'),
(436, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'bf365b28e66a87004fbc9373bcf8d3b33dacba016832e0c8ac848959e05ed499', NULL, '2026-09-10 09:30:49'),
(437, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4fc11f7fd67bfe72cbdf33c7a6e730db395b2dcc6e5b1c83e45b25b223c4b6e4', NULL, '2026-09-10 09:30:50'),
(438, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '39a5e8a82725025a232cf850bf08951f6fae5eccacfdeed57f5c51258685610a', NULL, '2026-09-10 09:30:50'),
(439, NULL, 'Archive Pet Record', 'data_change', 'pets', 21, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 09:30:50'),
(440, NULL, 'Approve Appointment', 'data_change', 'appointments', 29, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '4fc11f7fd67bfe72cbdf33c7a6e730db395b2dcc6e5b1c83e45b25b223c4b6e4', NULL, '2026-09-10 09:30:50'),
(441, NULL, 'Archive Pet Record', 'data_change', 'pets', 22, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 09:30:50'),
(442, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a63103bb6055b6555411681a6769391798e44237b308d11ce08709aec3abe241', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(443, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '03080a75782eb41e691cb1d4deedd597f60dac45bb8bb38f30df0e04bda4c5cd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(444, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'dd5404b958b53be76fc632b091c20fd9cf02ad1cd1ce36c295e71d68078cfe58', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(445, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f6bb56bd09aafaf37f47e5ef43043e0cb2366c6c4b56774cdc0ff553838e8456', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(446, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f082e43aed70fbddfec620d187fd0747837985beab4c9f7b4658623ed85058a5', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(447, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'af00919aea91b9467e09a15405caad45e7e0bb9c1cd21d077235d4ac336e89f4', NULL, '2026-09-10 10:04:29'),
(448, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'de9034d6e3c8c92866c9dda6deb5875d97595fbe94e396dc42765a92e5e45a67', NULL, '2026-09-10 10:04:29'),
(449, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '83d59aa875a6bc0db1c3a5fd237baac249ab56488485165087e90bf3fc99f7fd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(450, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f01748cd25cb58a039725d0850ca1528c72e5085e041c3ea7c522616c183b74b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(451, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '14427703f5afeec84bf08285ce7e52c2fd2cd1be3aa2030ef97799f941ab66a0', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(452, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7e30959394b7c9d084efa8c4620592abfbd9cd15241233b0ef86d2f6afe3d353', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(453, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a837de260bbd14c04981d96a6b0e4ed157d5c786f9bb217bb601415e1fdb192f', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(454, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '76e53d1e1dc2718fdb52f087fa40156dac39a692a692bb6e70c90e4613eba265', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(455, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a31acc9b3300215ed341d3e50f761708f1f4675f14b70f4d09beaa0d58c87047', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(456, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'afd05af1ac61d9888e2b31b6d92613c233977421644e912428a8ccd47c024cc1', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(457, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '29acf1cd53cc759b0c4ef7fc5d84bc9b2ca7907289fec10d60aa2cec9e86c0db', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(458, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e7f8e0b21f621972b8a2f4ac71f4af8a6626decf3c184cbe22635fccadcfa24d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:29'),
(459, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'db24f8cb991eeba21334e1c16f02dbff978eec7cc7b7dd6a206e4ea1792313c6', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(460, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '81c377077cd491a3a7b51ba7f9a3dfb471dc0426cf462e8937a779aef1db6df5', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(461, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '19bd71b43e80a30540bffa68dff5d61c963fcca6329fe388717008b2c4e64164', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(462, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '07cd28001b2fe0ad8941adf77c03ec3ec6f3c649b197be03699c30c4a24c2129', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(463, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '371760adba4162c1268f5981b20d753661f792801caf90f56e0ddddee67d7f6e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(464, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2b8e2b0b4a1028ab05f9e283b394368f39fa92efb51c378e477b2b1cd091c171', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:30'),
(465, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2c8ded4ac6d52c55548d77180955537fea198fe1418de489d577e482e88fca44', NULL, '2026-09-10 10:04:30'),
(466, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b725837f7c172b9de593980c95ce75e7e579f714737b633f15d64d77e1654566', NULL, '2026-09-10 10:04:30'),
(467, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '77c006c3aa5a1c51fa6008401e3745559fcf1134b43e2afc74269be141cc075c', NULL, '2026-09-10 10:04:30'),
(468, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2cc8a9dedbed092c6ffc14489d1068295632cfcb76a3e8acde09df0464497e2a', NULL, '2026-09-10 10:04:30'),
(469, NULL, 'Update Appointment Status', 'data_change', 'appointments', 31, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '2c8ded4ac6d52c55548d77180955537fea198fe1418de489d577e482e88fca44', NULL, '2026-09-10 10:04:30'),
(470, NULL, 'Update Medical Record', 'data_change', 'medical_records', 15, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '2c8ded4ac6d52c55548d77180955537fea198fe1418de489d577e482e88fca44', NULL, '2026-09-10 10:04:30'),
(471, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 31, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:30'),
(472, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 16, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:30'),
(473, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 32, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:30'),
(474, NULL, 'Archive Pet Record', 'data_change', 'pets', 27, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:30'),
(475, NULL, 'Approve Appointment', 'data_change', 'appointments', 34, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', 'b725837f7c172b9de593980c95ce75e7e579f714737b633f15d64d77e1654566', NULL, '2026-09-10 10:04:30'),
(476, NULL, 'Archive Pet Record', 'data_change', 'pets', 28, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:30'),
(477, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6bf02c216645442e28d66ece8a01b1a0dae414929684e9fd7b071c4cac84a59a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(478, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4636a915083a7a4944d0f53ea1f4dd1004c1f69663c50dd344d8bd4083595821', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(479, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'de18f392c178ec92cd23ea43488fbb661783d8ae8746c192ebda8b1191ae6c6e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(480, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cd36fdadf39d19876c9258c70f9b6f702b53333f3d9896d4e1a0b0533d0cfb01', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(481, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '612aa08db9103b7ba51d12b67f0582cda67dcb628569ed33610985e21ceca5ec', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(482, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '46a1119768cdbb86654609262a163b5869749f8250df7c5f205054016fd2840d', NULL, '2026-09-10 10:04:41'),
(483, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '446b3c17e6f62385e8e8be41e5f92b3dbab666db3c972e21c55b1dc32040303c', NULL, '2026-09-10 10:04:41'),
(484, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '01c72769aa695346fca43e968abd0a57a2804b0d913d404bf61d43cc273049d5', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(485, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '386d886a44196fb28d870ae0e2882a998ecb598791eda88942b3fcfa6cc48b5a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(486, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7b116d232ab530622752a939d1241cf82dc356b5f2cfbec3e34d087d0485ea74', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(487, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '80c007f5c387a344a05d27a728dd58cb7004bea24a41c430e3039b40fbb1e4ca', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(488, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e454297911b73318bc7c96c1acb54d163d4fe123e509ca2be515f967eb83d857', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:41'),
(489, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a38613ced1a0d8ac36b2aca587b3ac25b74f51a125a03e5586bb11e6b5d0263a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(490, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd7eb34572f9ea42a79b61a7610182b99ad3b06b7e2fa34ce46c556edcb053673', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(491, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'dd64a10c1691c34e0d01ef8a115dd4bd376d30529699adb094b3970ffa930748', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(492, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cee7fdfd1d53edbb8b40aa57b1608849156d9ea94c47cf07be8cf9342db4fc47', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(493, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd6f8914d27cbb57e2404e8e40bf39158e98097bcf4e7f36ab4b803855af654ce', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(494, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '9ebd561d0a4310dd96dc7464c7a862d5a8ed25a60025651227d7194e272b7682', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(495, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '56af80738d1804b4c3fe909c3082b9b267ccc7ee5eb73f2aef377117bdbccfaf', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(496, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '09a37344cfb0697bc25a6bf1d9444456cb79a5681d95f3ef8e45dd45f15f7b97', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(497, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c4d00809af8e8e10636c0995741cf80d71cb9e479f87cb00930cc7973b8a1bcd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(498, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b064221beec242bc7a56505702186a727a565e1e209438b099120247637d6b48', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(499, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '255732506a1949600acf6c990de8eefa7478ed06b55245d110830fab1c677027', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:04:42'),
(500, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c810d452f05acc98a4fc9a981f89fc2a501d4a75db27d55b83f6144669fce71d', NULL, '2026-09-10 10:04:42'),
(501, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'aa099bdfec879e14bc6c1947197ab582ade36c3fecf70360a447297cb21d0c74', NULL, '2026-09-10 10:04:42'),
(502, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'fd56cd2969e46d924d5bfeeb42ca1753dccd588521fe703b3e35e57a3726c9dd', NULL, '2026-09-10 10:04:42'),
(503, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '9227f7cd6d802d03a4d8d751643e44e7b4d4cffe683fc5a9f1c017c3b736a3f0', NULL, '2026-09-10 10:04:42'),
(504, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c49a6bf15a152df045e8e0f44bf7191a8b87ad32b1406e563813c7d9cf34415c', NULL, '2026-09-10 10:04:42'),
(505, NULL, 'Update Appointment Status', 'data_change', 'appointments', 35, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', 'aa099bdfec879e14bc6c1947197ab582ade36c3fecf70360a447297cb21d0c74', NULL, '2026-09-10 10:04:42'),
(506, NULL, 'Update Medical Record', 'data_change', 'medical_records', 17, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', 'aa099bdfec879e14bc6c1947197ab582ade36c3fecf70360a447297cb21d0c74', NULL, '2026-09-10 10:04:42'),
(507, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 35, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:42'),
(508, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 18, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:42'),
(509, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 36, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:42'),
(510, NULL, 'Archive Pet Record', 'data_change', 'pets', 32, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:42'),
(511, NULL, 'Approve Appointment', 'data_change', 'appointments', 38, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', 'fd56cd2969e46d924d5bfeeb42ca1753dccd588521fe703b3e35e57a3726c9dd', NULL, '2026-09-10 10:04:43'),
(512, NULL, 'Archive Pet Record', 'data_change', 'pets', 33, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:04:43'),
(513, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b49754cb1a4e105865ad2605433c556bb0cb44be3723262520d99763a95ab295', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(514, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '977e4446278e31c856a5efe18c3a4f5f9ef722b5ec3203ba07a73f757a0595c2', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(515, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '794aca16e12fe51fb09766f57264faa1ef01b0124ad96aa994adfa23091e6fc8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(516, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '8901789a13b1f0912a36058ce39c60145201cdc1e72dc11d34e410c6d2b4058d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(517, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b08c47344a750fe7672cf608b0e7e17cc05c7999a1fe499f830d498069029fbe', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(518, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5c077f8ab93a90a64c0832776cb6b7d9144e80cfade8ae45237ff467d8561b22', NULL, '2026-09-10 10:05:19'),
(519, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ddcb7cf95050537b43f15335e15ccdbe73712f21a92bca6df2c62356fc358033', NULL, '2026-09-10 10:05:19'),
(520, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b3217311ec0522017fdba7308eb6ad61caba84a2f9859eaf3d76d43cb8c2e1bd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(521, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'bb90f28efac7aca4ec4c7ee76c770f9115e00b0c47cc3d5ac9f379c080e44b75', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(522, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '103bad9eafd8b701b19cd202f7fd7be524c3e1d2a84f3a4b5bef47c9181f3d31', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(523, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a9e1809eefaeb5048505b6023e8d0fdb2299cb3c3b05bc4c33962ca8bdc4d32a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(524, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '8cc9bb9de7de14f5f9eacd8d3e6d1b0786a6be56d562f8c1dda9f36a160e7e26', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(525, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'abd3d51d2a16ed03cbebe91d042447407320adfe3a9d512b98928543ce0f9daf', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(526, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7a8aae3824c39ebb2c08d0a53aa3d648a16abef75d4e501593f347f8fa29c7c9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:19'),
(527, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e5209d08ae254951e635f5448d20b59b1b64cd0902cf1a9b7ff87ef7019b86f8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(528, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e8d0545b16ac0e7072c7680c54547d3884495cc5252570619cd34b6b1fe5ec40', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(529, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ff685b121b87148f0bb966e1613282227644510cf004453eb2ae028daf436549', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(530, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ec957ade1dda81ade5b974f46c86cd3790aafbf002c1b1358aebc0276becfede', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(531, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4d67e9123afda08f6ffe2648932707786085b2bf29daaf0e431a97e3309bb6cc', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(532, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '79da2f7829a65a75e4cca23fee463f18f8be587f47ce0f966028788938b1b924', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(533, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'bbeb8c4be7deded22210b7afedc0d3f2dc92a3ee41331c87e6b2f51e6a0fc742', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(534, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '1dbc32945621622a4b1c88ebbda290192934fa62eb6fcc2dba3dfe496b40b2ec', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(535, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4becb8c5f7119ff21500a8630459c9416bfd7fb9dee9f9605fcd42bf310c1e86', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:05:20'),
(536, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '92e50ab7eee03eddbc1ddd0541e47fe2f9e260e9af4973e2ca7bc2273ee533a1', NULL, '2026-09-10 10:05:20'),
(537, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '15c1a439ec9d3b5590b19e5a697e3a57c7c40ae64eb4cb372388ce7891708d6c', NULL, '2026-09-10 10:05:20'),
(538, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4a082ab3c0bcb0523d8535f69fbbd301868d779b610c3827a1c2b4b0362e4c7c', NULL, '2026-09-10 10:05:20'),
(539, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '786c8de9b26e9d765d7fac76390193836b5362e88ca8dda303638b129905aac2', NULL, '2026-09-10 10:05:20'),
(540, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '07d34da6e3bb090b6851e9077435767616ac88c059d064498d5c18bc483773e4', NULL, '2026-09-10 10:05:20'),
(541, NULL, 'Update Appointment Status', 'data_change', 'appointments', 40, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '15c1a439ec9d3b5590b19e5a697e3a57c7c40ae64eb4cb372388ce7891708d6c', NULL, '2026-09-10 10:05:20'),
(542, NULL, 'Update Medical Record', 'data_change', 'medical_records', 19, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '15c1a439ec9d3b5590b19e5a697e3a57c7c40ae64eb4cb372388ce7891708d6c', NULL, '2026-09-10 10:05:20'),
(543, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 40, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:05:20'),
(544, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 20, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:05:20'),
(545, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 41, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:05:20'),
(546, NULL, 'Archive Pet Record', 'data_change', 'pets', 37, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:05:20'),
(547, NULL, 'Approve Appointment', 'data_change', 'appointments', 43, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '4a082ab3c0bcb0523d8535f69fbbd301868d779b610c3827a1c2b4b0362e4c7c', NULL, '2026-09-10 10:05:20'),
(548, NULL, 'Archive Pet Record', 'data_change', 'pets', 38, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:05:21'),
(549, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cfb8a8cf596fc33c59110aa6c76ffc171da5bb91c32655e2723f121fd876d29d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(550, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '93f6b89d42759bedc530cbf4e63ab31421374ebd5bd36d993c4879d2155585a8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(551, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '204e307948a8a05462c61ba21c590026e4ef6a2397b188eedffb7b940d4d8089', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(552, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '94763313719089ec7b8f4aaa9f0797cda1d14d3d794767e6a136ea79dac69723', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(553, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0116d950f4b4c697ec40d2cef4b570aaeaa2119b8c8c80047a4bdd14e9ea4324', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(554, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ef9c53e8499e846d0dffe7c1987cfe118330ca9394dd33818f098af6cdba3915', NULL, '2026-09-10 10:31:23'),
(555, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '8aaac4977aa562413d749db6d5d3854eecc279b760f6ecc21217ca0dbefaf2ca', NULL, '2026-09-10 10:31:23'),
(556, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '1966072a71e224fb261105b950309525fb78b8c1845bd91776f5ed940823762f', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(557, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd493486ef4572b3c70bd697739e1deb486e8267c4a9db116d3ea2f3c992ed998', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(558, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'fc9a506ceaea350580b2cd76b1bba6c1def423651bf2021ebe2d4dd360fa0d2c', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23');
INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(559, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4a22c8a029f737b655dd1c085f9be3c9eec844e8aa6bd0d1fdbe90144748241e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(560, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '87dff967372d04afe2731afcb6a96a512d64436fa175f8392582dbda770bfc6a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(561, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6ec29e2377630f4b35a39e564afac7d705e75503dc6508b6b63d28e4e7c33d1d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(562, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'bbf70d01704ba807e2408ed351362b9cbf81f25c47314fd7cdaef624ec9fdd1e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(563, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0e48ac931cefb95341fc657903e73def3d46f0cad1485a41a9048d5b7fd195db', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:23'),
(564, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '27098a079ecde4975b999268b27d15d3be9d911aa7907858ecd3fe1045296d1b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(565, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ebdfe0e588ff416200e04095549ec241a5bea63ac8e0074e356319a647b315c6', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(566, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '70d6f4fc5af76c2ae7c85ce98048cd63fd5367f8203361b33ac7296e5c8808d7', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(567, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '477372a83a1b05516f72f52870a0c70562f368829436484398108dac5b6aff96', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(568, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2f4b30a2b92422c5d7f581ea2e2d6802bbc83244766b6e43919cf13a1c944022', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(569, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '926ac9dfbef82a45ad27376042216c972204111bc8a9d9c4d8683997687430db', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(570, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cde140e7b70142ad70ebe18b4fffeab704cf124b8fd7134e4219ebbdba77e44b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(571, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b2128929caa49b18ef063cc619ac5786d2f39774a1ba3a4dcd5fa603b286a5ce', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:24'),
(572, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '22284768a7c88f2a81069a4bffef86e169eead3d018bc42bb679528e65b68808', NULL, '2026-09-10 10:31:24'),
(573, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:24'),
(574, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '3b68efef27f22219b903d9ca60597d4d0af2f0ceb1d7acca79447b612930707c', NULL, '2026-09-10 10:31:24'),
(575, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'df83def0cbcb8bb3b9cf2d16ea2f69d3387b0aa31737fd367084038c24d098d5', NULL, '2026-09-10 10:31:24'),
(576, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b017d4d8a451e9a302cf8e5035118346fee31c5e3c7dd0ed7c07f6e7c4fccfe5', NULL, '2026-09-10 10:31:24'),
(577, NULL, 'Update Appointment Status', 'data_change', 'appointments', 44, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:24'),
(578, NULL, 'Update Medical Record', 'data_change', 'medical_records', 21, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:24'),
(579, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 44, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:24'),
(580, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 22, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:24'),
(581, NULL, 'Update Appointment Status', 'data_change', 'appointments', 45, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:24'),
(582, NULL, 'Update Appointment Status', 'data_change', 'appointments', 45, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:25'),
(583, NULL, 'Update Appointment Status', 'data_change', 'appointments', 45, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '36810b5772d7e57352059dadc7b676fad1d71438f9354ae39d0128d37b3b3d08', NULL, '2026-09-10 10:31:25'),
(584, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 47, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:25'),
(585, NULL, 'Archive Pet Record', 'data_change', 'pets', 44, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:25'),
(586, NULL, 'Approve Appointment', 'data_change', 'appointments', 49, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '3b68efef27f22219b903d9ca60597d4d0af2f0ceb1d7acca79447b612930707c', NULL, '2026-09-10 10:31:25'),
(587, NULL, 'Archive Pet Record', 'data_change', 'pets', 45, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:25'),
(588, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'eae453fbcc64450ed256d5f4dfe97b1e0b1df8fe954d034cf0ee00df1c725661', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:40'),
(589, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c925f9f0424e35abb75c80e5ee5627c4cc7d2207e7fa313071634b814c4d4305', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:40'),
(590, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'be096715684cd00903e71adfb9401087c3a40bc0cd25ba32ae5fba6101a32bb4', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(591, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'dfd900cd285a3161d35da9e38fc296a237964de2e49ef73b23ca83be6a81b7d8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(592, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e4293603124b9a6c97b70acfa0b879c8db6ab4780eeacbdd66864f6a9a114046', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(593, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '25c5cde23faae0ff9c59563cc4454c8423b53e780378ba67db384dbd2805b463', NULL, '2026-09-10 10:31:41'),
(594, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a6fb48045ff0d38ef48086a1e11f1a07d2a63f91538c21f926d3d39373ce5850', NULL, '2026-09-10 10:31:41'),
(595, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '517b35e7bcabe3acd668d423aaf4ee8f3d093d7a6891e9bbc8ebc91b98a657a9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(596, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '752e1d976300dc75e2abb568d584409d839b7e453781ea6a88d355abf653c738', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(597, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f038555ab3ec555cf9695398a49c70432de00890673e1301742cec9d0747598d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(598, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '604b7ac1a5a1f9e92278ccc53888f33f82334e07353ca85a4cddb4002e439c11', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(599, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '120ae154c91873ffff9d18612e667d498d416f143b91a232d2bbc9b1bf2db1ad', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(600, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7cfdc01258badc32f5524e824cbbc72356db6167d98425d4cd264e848a0c8741', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(601, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'dc6c7572de21ca86e5a0b5b793ce472bb412b5bcf9ee13d45170740b0a68cf9f', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(602, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '162130ae816d77b653b82054e67d2b0a1aa557831c41780562ebf593a0355af3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(603, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '838a4e4d524ed0a9082f8dc3fd0a2c52a6865b275654616004728eda4813ac30', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(604, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'fecbe4ca55c57109329de7e606c0cc8e38769419730392d33fcefb393a7725ee', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(605, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '56f6016f90dc556b2cd4ffae852e7eaa40603d4ede65c76d0b317a24177908b9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(606, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '497e1891eeabc3c3ebdaba996580f889d32b43ba2c3ea9c0b983318ca37b0f0b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(607, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e6721bf117fe4cff3b6e6e2ca0d128a54639239c7c36eda2b1baf84995a9540d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(608, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cf2985baddb128a0782ce2b3f9d78125c0f8ecb8f2f7b34105ba95ab3eafa0ba', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(609, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '26d2010582b38c4d5db58341a37abde9842e5001d35420810bab7184255784ad', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(610, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '590d58d28b50e3893db75342f8b627abd8122bc7d2067700a85c042eec2e7436', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:31:41'),
(611, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'daf71e94fc43d77084286461658e6a7260f98a1e4c852028c5a70a808313a2f5', NULL, '2026-09-10 10:31:41'),
(612, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:41'),
(613, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0759941b3a8b9ddc4b808b814cbe9372d658caa351428d5b46dcf91931a408bd', NULL, '2026-09-10 10:31:41'),
(614, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '62ede761cb70db974abac6ba19170d8354c883407c9b812ee12804e9862962ee', NULL, '2026-09-10 10:31:41'),
(615, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'be793874ddf957837f298d0b5a26279da4fb1ac6b2e73462274143d8f8522d3c', NULL, '2026-09-10 10:31:41'),
(616, NULL, 'Update Appointment Status', 'data_change', 'appointments', 50, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:42'),
(617, NULL, 'Update Medical Record', 'data_change', 'medical_records', 23, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:42'),
(618, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 50, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:42'),
(619, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 24, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:42'),
(620, NULL, 'Update Appointment Status', 'data_change', 'appointments', 51, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:42'),
(621, NULL, 'Update Appointment Status', 'data_change', 'appointments', 51, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:42'),
(622, NULL, 'Update Appointment Status', 'data_change', 'appointments', 51, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', 'acb54ba4de5ef5175c3813f39bb8ebe54b5553fed1a8a7ea8fb7708af1330e60', NULL, '2026-09-10 10:31:42'),
(623, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 53, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:42'),
(624, NULL, 'Archive Pet Record', 'data_change', 'pets', 51, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:42'),
(625, NULL, 'Approve Appointment', 'data_change', 'appointments', 55, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '0759941b3a8b9ddc4b808b814cbe9372d658caa351428d5b46dcf91931a408bd', NULL, '2026-09-10 10:31:42'),
(626, NULL, 'Archive Pet Record', 'data_change', 'pets', 52, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:31:42'),
(627, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '1838f66408386881fb612a45db296a950c3cbc6e5ade1f56e6d2791a6aa0541d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:57'),
(628, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f45aaf27aa34df54207cd61100dc47f5864021509b83336e830359b20bd5684a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:57'),
(629, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b01260b623cc885791f913fac5782c6a361748d2fad79083f28c681e141816c0', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:57'),
(630, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'e7a8db24a832148d3a0aa10b78537aa477a9eac65230f36a24405e58d23936c1', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(631, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ed17689c324cc9e7872c166e47e4ea480d773818b70fda6b372e23f1be6ba34f', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(632, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'aaf87352e7b489f2fedfabd6d72ad94b66455f39ed6515c2b5c7fdf963ebc827', NULL, '2026-09-10 10:32:58'),
(633, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6dcf462236504ccdd228e01cc5f3ff1cb058eca04e09f419e4f9a4b2ce46fac1', NULL, '2026-09-10 10:32:58'),
(634, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '925f090d036fcb618ab076b9f716bf2dbf6d28828c7ea5d5d1298e5a391bd810', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(635, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '93c08e331a7f3dd75835038a0d7e8e143314479ce5f0ebe34a5390e2b636dbfe', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(636, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0b374c26516b916b18ea37a77d35a34245ee9f3426114128d4c44b1cc3a6214a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(637, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '43e8ae55254dc341d2ad284c6cde852a3785776e854be06e3d14b72e17bdb2f5', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(638, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '14a19872f2c4bb9be7a3476cb0de2192f8db947e1b3397e32044ca3f8d891586', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(639, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'dd35a644a4d4bfa0f80601c0a52901430a8461990513399a9177237cf5e54ac9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(640, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '40a90f6a3c24cf1799112d87d72c2e4f8b235c8c8636390346a3e9aac9385020', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(641, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '889baa06c4cc8efbddae388d917661f05358367dcddadbcba3d38e89fb04a0b6', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(642, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b047a9266e646d093f175cd6858f3d36bc824a46554c00c7bbb445d370b9a033', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(643, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f70a295ff53047662c479b72217b1f3871e41325472495b4d204ea27851f6ea4', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(644, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6b2383c4f0717e0707cfa8d8403cc67a8408ea9cf42d90671cf687d16f96a33e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(645, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4a6473133418062c2ba8d98fe78b31ac39885f8e66570dce9c174cbf329e3988', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(646, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd1712857013a8bec3bab86e60a8ed6ee4706d79f1103fcb9a063e24e04f154a2', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(647, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2339f367dea2ae8c12394613b70a1c9193ef24acfba29d3bff65c0550b436e9b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(648, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '3705d3759e0a0b75e370ef1236ddafea575d0ee25c00be21fe9fb6d13a39c976', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(649, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '11e465585108c3ca4938bcbfdc5b72d810e188cfe5414d7300420c5bfedb64a9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 10:32:58'),
(650, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '93c2e6bbb3c8328401450e78bb8c44e83f463389f20732adcad32b9b84fdc511', NULL, '2026-09-10 10:32:58'),
(651, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:58'),
(652, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4d3a6d80c8d1dfcb5c12816862093ab9f522f0731c56f12bd96de9ad343e7f15', NULL, '2026-09-10 10:32:58'),
(653, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f611e7dc01dd89b5adcaff45ccf2786b3688d03439e429ad9ca59fc3c76b2c38', NULL, '2026-09-10 10:32:58'),
(654, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '42bae8f4b8bf104b2f7435138581a3dda8292e1c81d81244299059089728b9db', NULL, '2026-09-10 10:32:58'),
(655, NULL, 'Update Appointment Status', 'data_change', 'appointments', 56, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:59'),
(656, NULL, 'Update Medical Record', 'data_change', 'medical_records', 25, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:59'),
(657, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 56, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:32:59'),
(658, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 26, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:32:59'),
(659, NULL, 'Update Appointment Status', 'data_change', 'appointments', 57, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:59'),
(660, NULL, 'Update Appointment Status', 'data_change', 'appointments', 57, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:59'),
(661, NULL, 'Update Appointment Status', 'data_change', 'appointments', 57, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '17647167834dbed5d7f23887b900ac1f34f9a50bdcd3a8f6383e795e9d56f0a3', NULL, '2026-09-10 10:32:59'),
(662, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 59, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:32:59'),
(663, NULL, 'Archive Pet Record', 'data_change', 'pets', 58, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:32:59'),
(664, NULL, 'Approve Appointment', 'data_change', 'appointments', 61, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '4d3a6d80c8d1dfcb5c12816862093ab9f522f0731c56f12bd96de9ad343e7f15', NULL, '2026-09-10 10:32:59'),
(665, NULL, 'Archive Pet Record', 'data_change', 'pets', 59, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 10:32:59'),
(666, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'aaee70363469aff3a6b71266fc9c5039abbe72ca856c887342616e37d3fc94d3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:40'),
(667, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c711c18f3b7a2219a4eb30e3fc68ecc011e677fdbb28dcd3e6e7d7b67ad69447', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:40'),
(668, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2333066c0f0de6f19b37fe96e1f5e3eae6922b321eb1e62df5bfb0b5520d8175', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(669, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'eee5333996feef5b812194d997d1a4f592fa15ecfdf50264bb0142e96d50719a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(670, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '82eaab9f5d350b8d6098701f3d03d170efe4d28eabeb7558607f2e73dbfd4905', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(671, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f70c88ee97fba83b57bf6360ba5bbeaed152feaf65a827ac3041b3fa324d5593', NULL, '2026-09-10 11:02:41'),
(672, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5f2425364a4453448612c8eda32cdc113aae35035606ba0b287d5b2dc05f738b', NULL, '2026-09-10 11:02:41'),
(673, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2ec8c82923981093a8b0721b63a1018e14cd9a88c2eb6c07e55d2735373c7498', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(674, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '6d10ab768618a50e15c88991f06a69d8406c9cdca39d0305e89237ef0ebbfe1d', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(675, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '86fd19d657355d4534b0f123cb138b1bf5404e49dd3821463a9c50eaee3a5575', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(676, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '031583570f8f4d74a0aa0be61517e0fe3ba55e52d9cd75e57259e43a8647694b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(677, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f1382e3627f0b699ab06300f10b81a0e78ede6f1a7264915322f34776e010e0f', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(678, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cc27b1431aaf075634381ed5075d9459f8627b2eb0c7ab82fdf9f8c8c88aebfd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(679, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '041442a9fb035998862118127721de4230a36b7e24c8272c564ed0d72b721df9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(680, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '21bc6189821a4ff3ddf175fc5c3337b1f2cda5f0c96463b740330905b447da5a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(681, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b14267a603a5987f0675378adde985a0ab67baded6f26f363e9d6d134a100c24', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(682, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '715b1b8dbb62c87ecc9f82c76b3f530a518e7977ca1fbf7fe5910864876eed35', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(683, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5d80ff8036cca7b28c50a71b0cb1a02bab96ce780dfe9ff74832f0c9d238fd53', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(684, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f99466b7961163d6f3048813691165b6a6586efdbc58a0f66cc91d7237cebb71', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(685, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '65f1dd316052fa9bc76a5d2571af91207003c87d192aba9e7eae36f903fc6efd', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(686, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '21ac759f0a7782fe91cd6d59131ec916b0c1e01482e16a4b19cb777a7e6b4469', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(687, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'c22f3705318c9f62300bbceefffb192df8a37a3970b6dc5640fcdb906d4ab6b9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(688, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '65f8cec8b009513459f76756e503a37e3626d1bd79821666ca2e6fef40a3ec93', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:02:41'),
(689, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5c803b08ea9b73543dfc656e8660c0ee94a90dd65b94a82a104ee0be7fa6f965', NULL, '2026-09-10 11:02:41'),
(690, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:41'),
(691, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '16a6f14abe7e141a6faa14d6052153bfa176821965f6140f86ddedb5d0ac2e7c', NULL, '2026-09-10 11:02:41'),
(692, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'ed76518afb4bb8f6dd834064ea94cea1c94896825f2bb5ca565a8e1ad4aa5d3a', NULL, '2026-09-10 11:02:41'),
(693, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2aac056d4f94fc8d001ecf43ace9a90cbd55153488a80486292b46a943614fa6', NULL, '2026-09-10 11:02:41'),
(694, NULL, 'Update Appointment Status', 'data_change', 'appointments', 62, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:41'),
(695, NULL, 'Update Medical Record', 'data_change', 'medical_records', 27, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:41'),
(696, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 62, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:02:41'),
(697, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 28, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:02:41'),
(698, NULL, 'Update Appointment Status', 'data_change', 'appointments', 63, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:42'),
(699, NULL, 'Update Appointment Status', 'data_change', 'appointments', 63, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:42'),
(700, NULL, 'Update Appointment Status', 'data_change', 'appointments', 63, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '8f8e9f161c12661079b04e390e2dc1150d1a57c4b0ad79b2cb8457b85ef98868', NULL, '2026-09-10 11:02:42'),
(701, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 65, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:02:42'),
(702, NULL, 'Archive Pet Record', 'data_change', 'pets', 65, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:02:42'),
(703, NULL, 'Approve Appointment', 'data_change', 'appointments', 67, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '16a6f14abe7e141a6faa14d6052153bfa176821965f6140f86ddedb5d0ac2e7c', NULL, '2026-09-10 11:02:42'),
(704, NULL, 'Archive Pet Record', 'data_change', 'pets', 66, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:02:42'),
(705, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'aa44801339d2a64c1bf910ce5f17f67e452b7d88c8ed0a65313529c4a50c7ce9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(706, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'f267ad6cc681226f7ac3e33cb2c28f30f0059f479f55352097da111c4060dca4', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(707, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'cc10ac65bfd61030aeabc871f199f05712cc7970fc57776f33b6f7e8de9754fb', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(708, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '1a14f15e1da4ccdb4bd0bb76496f1a1c43bb26c33a0c996751c7a3dc77fe5ce9', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(709, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '27030ebff1615f95f9eb53aafc3cc6d0d149f6609cd7da992cafb64a5ed8cd12', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(710, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a0955461967249c95aa35579b7e97b5f83a422c21004eaeeb141b4a88440a505', NULL, '2026-09-10 11:23:58'),
(711, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'b5a3545d8ed0a6fcc7615884270b0b303d221469c686c10257f04b498c656b73', NULL, '2026-09-10 11:23:58'),
(712, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '11ff46c817c50374293f048286b98e41bb278c942463787edaef68e2636fd7c3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(713, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '451532e8a56a951c1b05873a26dca2fc7fd512ef7ec0fd8bbff835e86429c7d6', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(714, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '4363ef7ce5647971d2d2fc8cab529056156648b405338c444ed517a5c03a0db8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(715, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd23d42c2563f34b90033554b672e8bbe6983cb0f0e424d7855e83737f879b30a', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(716, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'a7c7fa708f05eae1419e5effef07f4b0ebfa83d1d8c781b67e2f361b78869392', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(717, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '01ac0dc316443639f03cf4a8e71cf1c1659c78cacc7d66c1d70d7f40f2653dc1', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(718, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '98a7ab2338207ed9e853262a01ecd34d69a1191c9fcdb1f6ab07ae26a413fc24', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(719, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'd8d53aab34aa18cd461e2ede3c635cb9c043bff3526513ccccdb56c85ac275eb', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(720, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '93d034a16dd3c661d5e445cd4d2473966842ff927b45d9618d6dbf784e0029b3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(721, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '3df189ccd5b49d04eafc3b48ea852eaf6b4d4d740d5b9747711ad307be1622d3', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(722, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '7fd528f770ee7f07a83e4dd55649c5d05df63cdcf91b500a3e2a9e7bb598bf1e', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:58'),
(723, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '2aedf15c8d6eaf275d43f48487906c05a37370eea88e616605476ac647fb53ac', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:59'),
(724, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '9e3231e281ffae2382bcde5e5c1f4f73cd165715a47d340cdc305d96d095c48c', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:59'),
(725, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', 'df2c2cc1ade6838c2858149b198b9626c86aab6ad06f7d82a5a7ad48d12dcba8', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:59'),
(726, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '0a72fe8114f0e5ab59123ae96504257480916c39c4b6e320efa77394c200dc9b', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:59'),
(727, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '59b7d7d3de7b8ac0c620ff16bf090415b9e1adf2d9dee4f9d1f92ac862cda188', '{\"reason\":\"invalid_credentials\"}', '2026-09-10 11:23:59'),
(728, NULL, 'Login Rate Limited (IP)', 'security', 'sessions', NULL, 'blocked', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '72f43ae289643e4f39e2cfd29c936d18f91c352e41b09b54e92b14e59c49a43c', NULL, '2026-09-10 11:23:59'),
(729, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(730, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '5052b0dbaf8dc294c22fb7dabc074e8a3d172ecfa65301eeb292ca5524401380', NULL, '2026-09-10 11:23:59'),
(731, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '877fc9debb16713d33ff1ce5773989c2811bd155f1edc825c3b0cf75d5df9edf', NULL, '2026-09-10 11:23:59'),
(732, NULL, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '127.0.0.1', '917190904b705a3d65d314e1d6cd026b8eb76ff384ecd886c1229dd721f7d1f0', NULL, '2026-09-10 11:23:59'),
(733, NULL, 'Update Appointment Status', 'data_change', 'appointments', 68, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(734, NULL, 'Update Medical Record', 'data_change', 'medical_records', 29, 'success', 'POST', '/city_vet/api/clinic/manage_consultations.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(735, NULL, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 68, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:23:59'),
(736, NULL, 'Save Vet Consultation', 'data_change', 'medical_records', 30, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:23:59'),
(737, NULL, 'Update Appointment Status', 'data_change', 'appointments', 69, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(738, NULL, 'Update Appointment Status', 'data_change', 'appointments', 69, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(739, NULL, 'Update Appointment Status', 'data_change', 'appointments', 69, 'success', 'POST', '/city_vet/api/clinic/appointments.php', '127.0.0.1', '27771765cb32d97926daeaf093bca8587416156beb79f30a779a04f1acaeeb25', NULL, '2026-09-10 11:23:59'),
(740, NULL, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 71, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:24:00'),
(741, NULL, 'Archive Pet Record', 'data_change', 'pets', 72, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:24:00'),
(742, NULL, 'Approve Appointment', 'data_change', 'appointments', 73, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '127.0.0.1', '5052b0dbaf8dc294c22fb7dabc074e8a3d172ecfa65301eeb292ca5524401380', NULL, '2026-09-10 11:24:00'),
(743, NULL, 'Archive Pet Record', 'data_change', 'pets', 73, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-10 11:24:00'),
(744, 76, 'Register Account', 'data_change', 'users', 76, 'success', 'POST', '/city_vet/api/auth/register.php', '::1', 'ff6bb6fc28cb0dcd49fc362f0d4f270d462ceae718cf59568818bbe0d0a30ce0', NULL, '2026-09-12 23:37:10'),
(745, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'ff6bb6fc28cb0dcd49fc362f0d4f270d462ceae718cf59568818bbe0d0a30ce0', '{\"reason\":\"invalid_credentials\"}', '2026-09-12 23:37:24'),
(746, 76, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '9f91ee3056acfd86969b8b01ae9389da9c9230f8adf0119a6e34d340fbbd8e21', NULL, '2026-09-12 23:37:29'),
(747, 76, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '9f91ee3056acfd86969b8b01ae9389da9c9230f8adf0119a6e34d340fbbd8e21', NULL, '2026-09-12 23:37:33'),
(748, 77, 'Register Account', 'data_change', 'users', 77, 'success', 'POST', '/city_vet/api/auth/register.php', '::1', 'fc7c6577f0bc76a1f535fcf1589083bad97fa6b3f6a0390116aad45138e8c2af', NULL, '2026-09-15 23:03:22'),
(749, 77, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '1a179fecb7e67dca4d71f26931a3ed30d70101388c74b9b9ad7cc02fe399906b', NULL, '2026-09-15 23:03:37'),
(750, 77, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '1a179fecb7e67dca4d71f26931a3ed30d70101388c74b9b9ad7cc02fe399906b', NULL, '2026-09-15 23:03:58'),
(751, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'd86a01c6e89a2ae413d31cf5eceb3bfb98a98969da520f7f62def27bd4b1e87a', '{\"reason\":\"invalid_credentials\"}', '2026-09-15 23:04:05'),
(752, 77, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '7533ea66ca9ff5ee64aa6caa59b6ca1e9e5bd869ed1674ff65fd04239d9ba35d', NULL, '2026-09-15 23:04:26'),
(753, 77, 'Add Pet Record', 'data_change', 'pets', 74, 'success', 'POST', '/city_vet/api/owner/add_pet.php', '::1', '7533ea66ca9ff5ee64aa6caa59b6ca1e9e5bd869ed1674ff65fd04239d9ba35d', NULL, '2026-09-15 23:04:48'),
(754, 77, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '7533ea66ca9ff5ee64aa6caa59b6ca1e9e5bd869ed1674ff65fd04239d9ba35d', NULL, '2026-09-15 23:05:12'),
(755, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '3fa5b27fa7d08f6b6c1841c0e9bb783cd80d7d826f42249377cc3600a17bdf6b', NULL, '2026-09-15 23:05:16'),
(756, 4, 'View Audit Logs', 'data_change', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', '3fa5b27fa7d08f6b6c1841c0e9bb783cd80d7d826f42249377cc3600a17bdf6b', NULL, '2026-09-15 23:06:52'),
(757, 4, 'Archive Pet Record', 'data_change', 'pets', 74, 'success', NULL, NULL, NULL, NULL, NULL, '2026-09-15 23:44:03'),
(764, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'd86f2b76bdcfe5ecc66ee0fc8d19c56e3092cbcc95624d097556c656e1ca5ac1', NULL, '2026-09-16 02:00:09'),
(765, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'd86f2b76bdcfe5ecc66ee0fc8d19c56e3092cbcc95624d097556c656e1ca5ac1', NULL, '2026-09-16 02:00:26'),
(766, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'f226fc6fcb3f79b26580e35e405bdb10331b7dc0e5175c0de39db7b224dfb310', NULL, '2026-09-16 02:00:31'),
(768, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'db60eb67845b270c50aa0ad02f231a7bdfda1a21e96da479ff37b748da07a686', NULL, '2026-10-01 03:24:12'),
(769, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 82, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'db60eb67845b270c50aa0ad02f231a7bdfda1a21e96da479ff37b748da07a686', NULL, '2026-10-01 03:25:38'),
(770, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 83, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'db60eb67845b270c50aa0ad02f231a7bdfda1a21e96da479ff37b748da07a686', NULL, '2026-10-01 03:26:24'),
(771, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'db60eb67845b270c50aa0ad02f231a7bdfda1a21e96da479ff37b748da07a686', NULL, '2026-10-01 03:26:31'),
(772, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'c1ffba322e14d61114baa308ca807e13f3503489dbb86e08cda140167c8a00dc', NULL, '2026-10-01 03:26:35'),
(773, 6, 'Approve Appointment', 'data_change', 'appointments', 21, 'success', 'POST', '/city_vet/api/clinic/vet_approve_appt.php', '::1', 'c1ffba322e14d61114baa308ca807e13f3503489dbb86e08cda140167c8a00dc', NULL, '2026-10-01 03:27:02'),
(774, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'b40f530aceb7044184ea288f52cd0fca4b3d21b4389b150cd4d2e14b5efd0139', NULL, '2026-10-07 14:22:42'),
(775, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'b40f530aceb7044184ea288f52cd0fca4b3d21b4389b150cd4d2e14b5efd0139', NULL, '2026-10-07 14:22:57'),
(776, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'a136f357ac7f11fa73f00a760260d7575bb62d46270f55a2d7750321cf4c1164', NULL, '2026-10-07 14:23:01'),
(777, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'a136f357ac7f11fa73f00a760260d7575bb62d46270f55a2d7750321cf4c1164', NULL, '2026-10-07 14:23:19'),
(778, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '97ac38a4931e6bfb55135fab8ee31ed8ef39f063f863ea61b1e152b00f19d17e', NULL, '2026-10-08 23:45:41'),
(779, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 84, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', '97ac38a4931e6bfb55135fab8ee31ed8ef39f063f863ea61b1e152b00f19d17e', NULL, '2026-10-08 23:46:18'),
(780, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/api/clinic/appointments.php', '127.0.0.1', 'c5db3cbe9af40fcbefafe4dae6129f271e5a66a30cacc5bab98dc90ab7b40c96', NULL, '2026-10-09 01:36:28'),
(781, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', NULL, 'C:\\temp\\call_appointments.php', NULL, '984080b7ef50765e0d5f002f40a8ffcee00de49bebf3e9bee8a07600c56aef2c', NULL, '2026-10-09 01:40:08'),
(782, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'POST', '/api/clinic/appointments.php', '127.0.0.1', '6f0a3324989163a4afbbffdb2dcf86eff4a1e680e616a54b2f2c69ff9ab06ec1', NULL, '2026-10-09 01:41:04'),
(784, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/api/clinic/appointments.php', '127.0.0.1', '28a99aa9e01f6641cdf8000a8820ea04356d4ed8bf7c4004bbf4e16998256140', NULL, '2026-10-09 01:41:25'),
(785, 6, 'Create Medical Record', 'data_change', 'medical_records', 31, 'success', 'POST', 'C:\\temp\\consult_bypass.php', NULL, '2ef10ab589b2ad9f5d24a2c47542d1e0b48a4119f38626eab4eb6c591348c24a', '{\"owner_id\":7,\"pet_id\":2,\"vet_id\":6}', '2026-10-09 01:51:06');
INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(787, 4, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 25, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:12:43'),
(788, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 86, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:12:49'),
(789, 11, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 86, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:13:01'),
(790, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'b31342ccd4e090eae05dc9a4bca868cd6e371319fd9aad9f62b8b2565a94c365', NULL, '2026-10-09 02:36:12'),
(791, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 88, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:56:23'),
(792, 11, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 88, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:56:23'),
(793, 11, 'Cancel Appointment', 'data_change', 'appointments', 87, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:56:23'),
(794, 11, 'Cancel Appointment', 'data_change', 'appointments', 85, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:56:23'),
(795, 11, 'Cancel Appointment', 'data_change', 'appointments', 92, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:58:45'),
(796, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 93, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:59:08'),
(797, 11, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 93, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 02:59:29'),
(798, 11, 'Cancel Appointment', 'data_change', 'appointments', 94, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 03:00:00'),
(799, 11, 'Cancel Appointment', 'data_change', 'appointments', 95, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 03:01:47'),
(800, 11, 'Cancel Appointment', 'data_change', 'appointments', 96, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 03:02:19'),
(801, 11, 'Cancel Appointment', 'data_change', 'appointments', 100, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 03:03:22'),
(802, 11, 'Cancel Appointment', 'data_change', 'appointments', 101, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 03:05:27'),
(803, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/api/clinic/appointments.php', '::1', '2a5261748def5af019a823fb1d72312317e5bdfa0e692621a0156ecb7c5ec627', NULL, '2026-10-09 03:54:05'),
(804, NULL, 'Unauthorized Appointment Access', 'security', 'appointments', NULL, 'denied', 'GET', '/city_vet/city_vet/api/clinic/appointments.php', '::1', 'bc6cbe6ec60b6e257ccd53d433e18639a4c492bc1836afdba6be1a4e9b33aff1', NULL, '2026-10-09 03:54:05'),
(805, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'd8ed58d4a70ccbfaf8cf2f880643ec4ca4538155c04cbb3eb14b1c108ae667e2', NULL, '2026-10-09 08:30:01'),
(806, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '091fe4d179d898b6d375241608f4d193d0f0058b59b633d60be03392ba955ce0', NULL, '2026-10-09 08:31:58'),
(807, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '2634b6c517237d148d6e103c6f92e6c123cf35b1a3dcb105d12d74b9e651ecdf', NULL, '2026-10-09 08:41:56'),
(808, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '6c3f787f19fb46a8a556467ca99edeed3ad81b84b59b9ee31beb3b9f454c1ba0', NULL, '2026-10-09 08:42:39'),
(809, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 102, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', '6c3f787f19fb46a8a556467ca99edeed3ad81b84b59b9ee31beb3b9f454c1ba0', NULL, '2026-10-09 08:43:49'),
(810, 5, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 102, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', '6c3f787f19fb46a8a556467ca99edeed3ad81b84b59b9ee31beb3b9f454c1ba0', NULL, '2026-10-09 08:47:21'),
(811, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 26, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 08:47:42'),
(812, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 103, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 08:49:11'),
(813, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 103, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 08:49:20'),
(814, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '6fbf7dc4f807fa9b316a4fcd4feed0a4d496dc96790d9f4de5d2efa61fe65eab', NULL, '2026-10-09 08:55:02'),
(815, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'a92cbecdbc946893f424157526aa5518da0f2afdd4ec900a093814797464cbb2', NULL, '2026-10-09 08:56:42'),
(816, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'a92cbecdbc946893f424157526aa5518da0f2afdd4ec900a093814797464cbb2', '{\"date\":\"2026-10-02\",\"vet_ids\":[6]}', '2026-10-09 09:05:19'),
(817, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'a92cbecdbc946893f424157526aa5518da0f2afdd4ec900a093814797464cbb2', '{\"date\":\"2026-10-01\",\"vet_ids\":[6]}', '2026-10-09 09:05:47'),
(818, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'a92cbecdbc946893f424157526aa5518da0f2afdd4ec900a093814797464cbb2', '{\"date\":\"2026-10-05\",\"vet_ids\":[6]}', '2026-10-09 09:05:51'),
(819, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'a92cbecdbc946893f424157526aa5518da0f2afdd4ec900a093814797464cbb2', '{\"date\":\"2026-10-06\",\"vet_ids\":[6]}', '2026-10-09 09:05:55'),
(820, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', NULL, '2026-10-09 10:35:26'),
(821, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', '{\"date\":\"2026-10-09\",\"vet_ids\":[6]}', '2026-10-09 10:35:51'),
(822, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', '{\"date\":\"2026-10-12\",\"vet_ids\":[92]}', '2026-10-09 10:35:56'),
(823, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', '{\"date\":\"2026-10-13\",\"vet_ids\":[6]}', '2026-10-09 10:36:01'),
(824, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/city_vet/api/clinic/upload_medicine_picture.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', NULL, '2026-10-09 10:45:45'),
(825, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 32, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', '{\"vet_id\":6,\"recorded_by_role\":4}', '2026-10-09 10:45:45'),
(826, 11, 'Update Pet Record', 'data_change', 'pets', 2, 'success', 'POST', '/city_vet/api/owner/update_pet.php', '::1', '6fbf7dc4f807fa9b316a4fcd4feed0a4d496dc96790d9f4de5d2efa61fe65eab', NULL, '2026-10-09 10:47:00'),
(827, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', 'ce2f62dc742a2e1eef6a413456c91f41a53a08efddb111f3b8596b31d743105b', '{\"reason\":\"invalid_credentials\"}', '2026-10-09 10:57:14'),
(828, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 105, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', NULL, '2026-10-09 11:04:46'),
(829, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/city_vet/api/clinic/upload_medicine_picture.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', NULL, '2026-10-09 11:09:30'),
(830, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 33, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'af2ed8954770808b6486bace941c9cf638cab8ec6c2e2682f4c6c49b9459a656', '{\"vet_id\":6,\"recorded_by_role\":4}', '2026-10-09 11:09:30'),
(831, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '6fbf7dc4f807fa9b316a4fcd4feed0a4d496dc96790d9f4de5d2efa61fe65eab', NULL, '2026-10-09 11:10:55'),
(832, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '20942d429a5f781e116aea232034209fbc5d7435cad2a21f5d68e0e0ac78c63b', NULL, '2026-10-09 11:12:05'),
(833, 5, 'Create General Event', 'data_change', 'calendar_events', 27, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 11:27:41'),
(834, 5, 'Delete Calendar Event', 'data_change', 'calendar_events', 27, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 11:27:51'),
(835, 5, 'Create General Event', 'data_change', 'calendar_events', 28, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 11:28:28'),
(836, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '3b1f3f9df0010ba6b70a1e66d710f83875e3bd577bd2df3e25a8d5e0c2219b8f', NULL, '2026-10-09 11:33:31'),
(837, 96, 'Register Account', 'data_change', 'users', 96, 'success', 'POST', '/city_vet/api/auth/register.php', '::1', 'b932166a840251391e1cef015b00ece18ed9df0d6d02d0538fb99cefd7cbdff2', NULL, '2026-10-09 12:30:14'),
(838, 96, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '9c868cea7ef6ef23716ce5015bf7ed25bdf149b0456e93afadc02dd2e3c1016b', NULL, '2026-10-09 12:30:26'),
(839, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '8499b5bc965557255976b0528ee27620bcb49f8c0c8bffe6c66e0e0143d45404', NULL, '2026-10-09 15:17:45'),
(840, 97, 'Register Account', 'data_change', 'users', 97, 'success', 'POST', '/city_vet/api/auth/register.php', '::1', 'e19c92bc19e42667e242460e7baf847cdb05d8c9c7abeb4ff0ae4469baec7913', NULL, '2026-10-09 15:20:56'),
(841, 97, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'e25e8a9b7d16fd733000026a71dabc6c5601fa43487b635e5e09c2ed6b9be834', NULL, '2026-10-09 15:21:15'),
(842, 97, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'e25e8a9b7d16fd733000026a71dabc6c5601fa43487b635e5e09c2ed6b9be834', NULL, '2026-10-09 15:21:41'),
(843, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '3e0e83ed92064bacb19f874399d073f385d33a111b8db3f6a348221801a98984', NULL, '2026-10-09 15:21:45'),
(844, 5, 'Create General Event', 'data_change', 'calendar_events', 29, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 15:22:16'),
(845, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '8499b5bc965557255976b0528ee27620bcb49f8c0c8bffe6c66e0e0143d45404', NULL, '2026-10-09 15:22:22'),
(846, 97, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4b16c88fa5bd4960a057a977f8d9bab7ee8778a1b05b493c81985043f3e20417', NULL, '2026-10-09 15:22:29'),
(847, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '3e0e83ed92064bacb19f874399d073f385d33a111b8db3f6a348221801a98984', NULL, '2026-10-09 15:28:10'),
(848, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'ddd4c48cfbfdc526077e5b2d0d14d3521a186a56b4fb73be62aab78e07297628', NULL, '2026-10-09 15:28:14'),
(849, 97, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '4b16c88fa5bd4960a057a977f8d9bab7ee8778a1b05b493c81985043f3e20417', NULL, '2026-10-09 15:29:02'),
(850, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '7dba0ff3e8d1669b4f62fb8012e6bf448f8b1db0dc72b2da84f073711f215068', NULL, '2026-10-09 15:29:05'),
(851, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/city_vet/api/clinic/vet_duty_schedule.php', '::1', '7dba0ff3e8d1669b4f62fb8012e6bf448f8b1db0dc72b2da84f073711f215068', '{\"date\":\"2026-10-09\",\"vet_ids\":[6,92]}', '2026-10-09 15:29:29'),
(852, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'ddd4c48cfbfdc526077e5b2d0d14d3521a186a56b4fb73be62aab78e07297628', NULL, '2026-10-09 16:29:41'),
(853, 97, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '5335f7979b030ef0781c110f4bd8f2291a347a1ba25e5f6af6c209cdf4ff5871', NULL, '2026-10-09 16:29:50'),
(854, 97, 'Add Pet Record', 'data_change', 'pets', 77, 'success', 'POST', '/city_vet/api/owner/add_pet.php', '::1', '5335f7979b030ef0781c110f4bd8f2291a347a1ba25e5f6af6c209cdf4ff5871', NULL, '2026-10-09 16:30:46'),
(855, 97, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 106, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:31:08'),
(856, 5, 'Record Spay/Neuter Call Attempt 1', 'data_change', 'appointments', 106, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:31:44'),
(857, 5, 'Record Spay/Neuter Call Attempt 2', 'data_change', 'appointments', 106, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:31:49'),
(858, 5, 'Record Spay/Neuter Call Attempt 3', 'data_change', 'appointments', 106, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:31:52'),
(859, 5, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 106, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:34:19'),
(860, 97, 'Update Profile Details', 'data_change', 'owners', 97, 'success', 'POST', '/city_vet/api/auth/update_profile_details.php', '::1', '5335f7979b030ef0781c110f4bd8f2291a347a1ba25e5f6af6c209cdf4ff5871', '{\"updated_fields\":[\"first_name\",\"last_name\",\"contact_number\",\"address\"]}', '2026-10-09 16:35:29'),
(861, 97, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:35:46'),
(862, 5, 'Record Spay/Neuter Call Attempt 1', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:35:55'),
(863, 5, 'Record Spay/Neuter Call Attempt 2', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:35:58'),
(864, 5, 'Record Spay/Neuter Call Attempt 3', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:36:01'),
(865, 5, 'Record Owner Callback Confirmation', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:36:06'),
(866, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 107, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:36:33'),
(867, 5, 'Delete Calendar Event', 'data_change', 'calendar_events', 26, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:58:04'),
(868, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 30, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:58:13'),
(869, 97, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 108, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:58:23'),
(870, 5, 'Record Spay/Neuter Call Attempt 3', 'data_change', 'appointments', 108, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:58:57'),
(871, 5, 'Record Owner Callback Confirmation', 'data_change', 'appointments', 108, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 16:59:27'),
(872, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 31, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 17:06:29'),
(873, 97, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 109, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 17:06:37'),
(874, 5, 'Record Spay/Neuter Call Attempt 3', 'data_change', 'appointments', 109, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 17:06:43'),
(875, 97, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 110, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 17:07:03'),
(876, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 110, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 17:09:02'),
(877, 97, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '5335f7979b030ef0781c110f4bd8f2291a347a1ba25e5f6af6c209cdf4ff5871', NULL, '2026-10-09 17:39:35'),
(878, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'c9c3bb2bafd27f0461fca1054059cd7ca39867a6fa2187b88bd638252c95cd76', NULL, '2026-10-09 17:39:42'),
(879, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 111, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', '7dba0ff3e8d1669b4f62fb8012e6bf448f8b1db0dc72b2da84f073711f215068', NULL, '2026-10-09 17:41:21'),
(880, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'c9c3bb2bafd27f0461fca1054059cd7ca39867a6fa2187b88bd638252c95cd76', NULL, '2026-10-09 17:50:28'),
(881, 97, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'f13ee4f3781a840978c604baab87412546762162fd9e4ed45a1d8135850b6a0b', NULL, '2026-10-09 17:50:31'),
(882, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '6d7dfcf946e5b3ae22b441ed8934a580f6ab0b884cd3170c8598b46cfa519f32', NULL, '2026-10-09 18:48:04'),
(883, 5, 'Create Holiday Event', 'data_change', 'calendar_events', 32, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-09 19:01:17'),
(884, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '7dba0ff3e8d1669b4f62fb8012e6bf448f8b1db0dc72b2da84f073711f215068', NULL, '2026-10-09 19:27:58'),
(885, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '3b8db8297d4e76d434c0ff17ae4f07323dfaf190a79ab7517f85acadcaecdbc7', NULL, '2026-10-09 19:28:04'),
(886, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '6d7dfcf946e5b3ae22b441ed8934a580f6ab0b884cd3170c8598b46cfa519f32', NULL, '2026-10-09 20:03:37'),
(887, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '1796f7ba1aab1e65556f27b90fc9405c493234c537f9e1b1243dfa17829036d2', NULL, '2026-10-09 20:03:41'),
(888, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '3b8db8297d4e76d434c0ff17ae4f07323dfaf190a79ab7517f85acadcaecdbc7', NULL, '2026-10-09 20:13:53'),
(889, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '5da0a247c9704389acdd16409bacf42efaf36aa324d6391884fbcedd43efb6dc', NULL, '2026-10-09 20:13:56'),
(890, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '5da0a247c9704389acdd16409bacf42efaf36aa324d6391884fbcedd43efb6dc', NULL, '2026-10-09 20:15:37'),
(891, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'dd5da3254d8bef471e51cab7f07de1236299738b475927a783a271a9e41164eb', NULL, '2026-10-09 20:15:41'),
(892, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'ae5d0ec3c39a17c5987ac4f7e4f5d1b97d453b104efce5d452873700da2d00dd', NULL, '2026-10-09 22:30:11'),
(893, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '45778ae878907c641a9b10e5880aa1205e2f3ba6990224d2a279c71969253a26', NULL, '2026-10-09 22:31:46'),
(894, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '45778ae878907c641a9b10e5880aa1205e2f3ba6990224d2a279c71969253a26', NULL, '2026-10-09 22:55:50'),
(895, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4eda5b294dc972bc884cf06a8e96fa676cd5a35bcdd16e61b1089186bf8c3ffb', NULL, '2026-10-09 22:55:56'),
(896, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'ae5d0ec3c39a17c5987ac4f7e4f5d1b97d453b104efce5d452873700da2d00dd', NULL, '2026-10-09 22:56:24'),
(897, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'c25a5bbb82a026ac07d8894cdda523c50066e92006e21e65cb516c50a1b4d378', NULL, '2026-10-09 22:56:27'),
(898, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'dba323c0608cca946d074c02d365a23707b1c19110026887b2df61b12666cd5f', NULL, '2026-10-09 23:30:32'),
(899, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'c25a5bbb82a026ac07d8894cdda523c50066e92006e21e65cb516c50a1b4d378', NULL, '2026-10-09 23:39:15'),
(900, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '88531ec0007216492e9fa51ae9bcc49ddacb5403c1c796126453b135b580ec2b', NULL, '2026-10-09 23:39:21'),
(901, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/TEsT/city_vet1/api/auth/login.php', '::1', '1f98885c3a7a7463a6dba5c02210ba9bda505d6ca41b77a2641ae8f519fbdb99', NULL, '2026-10-09 23:44:22'),
(902, 4, 'View Audit Logs', 'data_change', 'audit_logs', NULL, 'success', 'GET', '/city_vet/api/system/get_logs.php', '::1', 'dba323c0608cca946d074c02d365a23707b1c19110026887b2df61b12666cd5f', NULL, '2026-10-10 00:03:32'),
(903, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'dba323c0608cca946d074c02d365a23707b1c19110026887b2df61b12666cd5f', NULL, '2026-10-10 00:05:18'),
(904, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'adf13a41148c1856e16331eeab488002637e64af2a1b6b97211f0373c22dcec8', NULL, '2026-10-10 00:05:21'),
(905, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'adf13a41148c1856e16331eeab488002637e64af2a1b6b97211f0373c22dcec8', NULL, '2026-10-10 00:07:37'),
(906, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'cba855a212ef79d1bd48cde5e4c3fd67ef29fb7efebaee4098698a2b7365270f', NULL, '2026-10-10 00:07:45'),
(907, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'cba855a212ef79d1bd48cde5e4c3fd67ef29fb7efebaee4098698a2b7365270f', NULL, '2026-10-10 01:37:17'),
(908, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 01:37:21'),
(909, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 112, 'success', 'POST', '/city_vet/api/clinic/vet_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 01:37:40'),
(910, 5, 'Create Live Queue Ticket', 'data_change', 'live_queue_tickets', 1, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', '{\"service\":\"CONSULTATION\",\"ticket_number\":1,\"owner_id\":\"\"}', '2026-10-10 01:40:32'),
(911, 5, 'Call Live Queue Ticket', 'data_change', 'live_queue_tickets', 1, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 01:40:38'),
(912, 5, 'Serve Live Queue Ticket', 'data_change', 'live_queue_tickets', 1, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 01:40:45'),
(913, 5, 'Complete Live Queue Ticket', 'data_change', 'live_queue_tickets', 1, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 01:40:46'),
(914, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '071c3dceac5a20dee3d5a3a0c95bbf326e5f2135f5d8129d71f63daca60da442', NULL, '2026-10-10 01:54:11'),
(915, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:25:48'),
(916, 5, 'Record Spay/Neuter Call Attempt 1', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:26:19'),
(917, 5, 'Record Spay/Neuter Call Attempt 2', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:26:23'),
(918, 5, 'Record Spay/Neuter Call Attempt 3', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:26:26'),
(919, 5, 'Record Owner Callback Confirmation', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:26:38'),
(920, 5, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 113, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:27:24'),
(921, 11, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 114, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:31:42'),
(922, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 114, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 02:51:11'),
(923, 5, 'Create Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', '{\"service\":\"DEWORMING\",\"ticket_number\":1,\"owner_id\":\"\"}', '2026-10-10 02:58:21'),
(924, 5, 'Call Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 02:58:25'),
(925, 5, 'Recall Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 03:00:28'),
(926, 5, 'Recall Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 03:00:35'),
(927, 5, 'Recall Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/city_vet/api/queue/live_queue.php', '::1', 'ae5d4fd55737071ae1634fc635df6ac002d105a5b82cd32cbb2d97b267c07e34', NULL, '2026-10-10 03:01:38'),
(928, 97, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '143.44.192.105', '68962599e21fe74d360a6a00edb808b361929232b17cbda1e2f36a2454ecff73', NULL, '2026-10-10 07:40:39'),
(929, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '143.44.192.105', '9596bb48991c7eac9754cc4e604c71a2f025ac754da2b561b3dececf101e10e3', NULL, '2026-10-10 07:44:09'),
(930, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '103.62.155.89', '5ff362782b1821f373c28741701db9f0e545d97d12715ee9919249ae4e42e983', NULL, '2026-10-10 09:02:22'),
(931, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', '3e697c79dcde013f02182213dfd4422af013dc8c08b3c628dc601e9dbefc92c8', NULL, '2026-10-10 10:04:47'),
(932, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.249', '3e697c79dcde013f02182213dfd4422af013dc8c08b3c628dc601e9dbefc92c8', NULL, '2026-10-10 10:05:33'),
(933, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', 'c6c8a6244a95425e5caa199a88fdf625ccbaca3649565040e214555722382f3a', NULL, '2026-10-10 10:05:41'),
(934, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.249', 'c6c8a6244a95425e5caa199a88fdf625ccbaca3649565040e214555722382f3a', NULL, '2026-10-10 10:06:53'),
(935, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', '46fbabb7683b36f42dfb7a9588ce50dd132a0fa1bf9881b2f0d33c42d30ae563', NULL, '2026-10-10 10:07:03'),
(936, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.249', '46fbabb7683b36f42dfb7a9588ce50dd132a0fa1bf9881b2f0d33c42d30ae563', NULL, '2026-10-10 10:07:30'),
(937, 11, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', '30cd9f4ac755e9e7632656ad80dee48d38dd9b033c9392e261faa44963ac0f7c', NULL, '2026-10-10 10:07:41'),
(938, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', 'b8027ac2fb151fc25a51187c255a4472fb85c7a874fddd52ce385c0328fa3247', NULL, '2026-10-10 10:08:15'),
(939, 11, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.249', '30cd9f4ac755e9e7632656ad80dee48d38dd9b033c9392e261faa44963ac0f7c', NULL, '2026-10-10 10:08:21'),
(940, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', '0009796803a9828a05ef3133806eaa12051f2629915ebe8b1deeeb29d17e95b6', NULL, '2026-10-10 10:08:39'),
(941, 5, 'Delete Carousel Item', 'data_change', 'carousel_images', 1, 'success', 'POST', '/api/cms/carousel.php', '175.176.83.249', '0009796803a9828a05ef3133806eaa12051f2629915ebe8b1deeeb29d17e95b6', NULL, '2026-10-10 10:09:03'),
(942, 5, 'Delete Homepage Post', 'data_change', 'homepage_posts', 5, 'success', 'POST', '/api/cms/homepage_posts.php', '175.176.83.249', '0009796803a9828a05ef3133806eaa12051f2629915ebe8b1deeeb29d17e95b6', NULL, '2026-10-10 10:09:08'),
(943, 4, 'Update User Email and Password', 'data_change', 'users', 96, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:10'),
(944, 4, 'Deactivate User Account', 'data_change', 'users', 96, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:18'),
(945, 4, 'Deactivate User Account', 'data_change', 'users', 76, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:21'),
(946, 4, 'Deactivate User Account', 'data_change', 'users', 17, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:28'),
(947, 4, 'Deactivate User Account', 'data_change', 'users', 92, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:32'),
(948, 4, 'Deactivate User Account', 'data_change', 'users', 11, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:41'),
(949, 4, 'Deactivate User Account', 'data_change', 'users', 18, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:50'),
(950, 4, 'Deactivate User Account', 'data_change', 'users', 97, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:09:57'),
(951, 4, 'Deactivate User Account', 'data_change', 'users', 77, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:10:02'),
(952, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.249', 'b8027ac2fb151fc25a51187c255a4472fb85c7a874fddd52ce385c0328fa3247', NULL, '2026-10-10 10:10:22'),
(953, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', '4d449cce5d41b9618404e8b9d2c2b9c98fa6481d1401fc9b970959570a070b55', NULL, '2026-10-10 10:10:33'),
(954, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.249', 'c614e415dc02c83dca1bfe11bc0dc15fa8216513cdbade5a154c48d088cb1dd0', NULL, '2026-10-10 10:10:36'),
(955, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 114, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:11:58'),
(956, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', '377b22984838776d7aa398df401a6b23273d57a8fd5ad70d8946868d7bfb0c64', NULL, '2026-10-10 10:14:56'),
(957, 4, 'Delete Calendar Event', 'data_change', 'calendar_events', 31, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:15:07'),
(958, 4, 'Delete Calendar Event', 'data_change', 'calendar_events', 32, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:15:15'),
(959, 4, 'Deactivate Staff Account', 'data_change', 'staff', 35, 'success', 'POST', '/api/records/staff.php', '131.226.114.47', '377b22984838776d7aa398df401a6b23273d57a8fd5ad70d8946868d7bfb0c64', NULL, '2026-10-10 10:15:30'),
(960, 4, 'Update User Email and Password', 'data_change', 'users', 97, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:16:08'),
(961, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '131.226.114.47', '377b22984838776d7aa398df401a6b23273d57a8fd5ad70d8946868d7bfb0c64', NULL, '2026-10-10 10:16:38'),
(962, 11, 'Login Rejected (Deactivated)', 'security', 'sessions', NULL, 'denied', 'POST', '/api/auth/login.php', '131.226.114.47', '8e2dc263d5e833eb83477fc34b93efa553eb8c7383dba1d8dee0d6566824d5aa', '{\"reason\":\"account_deactivated\",\"status\":\"inactive\"}', '2026-10-10 10:16:47'),
(963, 11, 'Login Rejected (Deactivated)', 'security', 'sessions', NULL, 'denied', 'POST', '/api/auth/login.php', '131.226.114.47', '8e2dc263d5e833eb83477fc34b93efa553eb8c7383dba1d8dee0d6566824d5aa', '{\"reason\":\"account_deactivated\",\"status\":\"inactive\"}', '2026-10-10 10:16:49'),
(964, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', '32e2ba5f4e325adfa117f7ebb04081e3da1e09c2c8bc7dcf191f46a5bfac489d', NULL, '2026-10-10 10:16:59'),
(965, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '131.226.114.47', '32e2ba5f4e325adfa117f7ebb04081e3da1e09c2c8bc7dcf191f46a5bfac489d', NULL, '2026-10-10 10:17:16'),
(966, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', 'e874cadfab8e4677ee41f3801a75ea4188f27103b635c99568e0b9881824ed18', NULL, '2026-10-10 10:17:21'),
(967, 4, 'Update User Email and Password', 'data_change', 'users', 5, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:17:45'),
(968, 101, 'Register Account', 'data_change', 'users', 101, 'success', 'POST', '/api/auth/register.php', '175.176.83.186', '3f8dff067ccc739edae59157349ce3989a94f0eea24fba9e8fc2b74c7d1b8951', NULL, '2026-10-10 10:18:23'),
(969, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '1675526399a37fc55b43c055cfc76bcf3f03cf167a979277fe32e9215bca9f43', NULL, '2026-10-10 10:18:40'),
(970, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '131.226.114.47', 'e874cadfab8e4677ee41f3801a75ea4188f27103b635c99568e0b9881824ed18', NULL, '2026-10-10 10:18:48'),
(971, 103, 'Register Account', 'data_change', 'users', 103, 'success', 'POST', '/api/auth/register.php', '110.54.171.8', '3f2af7770b886e90ed657455ca6f8c6d214bbf693be1d925d638b98f2f3863b5', NULL, '2026-10-10 10:24:35'),
(972, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', '407e219bb070f804af2628e1f0c5e924cdf8739c485b9abf266b1b633eac6faf', NULL, '2026-10-10 10:30:30'),
(973, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 33, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:30:57'),
(974, 103, 'Update Profile', 'system_error', 'users', 103, 'failure', 'POST', '/api/system/all_users.php', '131.226.114.47', '407e219bb070f804af2628e1f0c5e924cdf8739c485b9abf266b1b633eac6faf', '{\"reason\":\"database_error\"}', '2026-10-10 10:31:22'),
(975, 103, 'Update Profile', 'system_error', 'users', 103, 'failure', 'POST', '/api/system/all_users.php', '131.226.114.47', '407e219bb070f804af2628e1f0c5e924cdf8739c485b9abf266b1b633eac6faf', '{\"reason\":\"database_error\"}', '2026-10-10 10:31:41'),
(976, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', '1014bf7b20d430e4dfed83d7b044abc41fa1cc29efa4d3999702ee9a3504dde7', NULL, '2026-10-10 10:32:18'),
(977, 101, 'Update Profile', 'data_change', 'users', 101, 'success', 'POST', '/api/system/all_users.php', '175.176.83.186', '1675526399a37fc55b43c055cfc76bcf3f03cf167a979277fe32e9215bca9f43', '{\"updated_fields\":[\"username\"]}', '2026-10-10 10:32:57'),
(978, 101, 'Update Profile', 'data_change', 'users', 101, 'success', 'POST', '/api/system/all_users.php', '175.176.83.186', '1675526399a37fc55b43c055cfc76bcf3f03cf167a979277fe32e9215bca9f43', '{\"updated_fields\":[\"username\"]}', '2026-10-10 10:35:10'),
(979, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '1675526399a37fc55b43c055cfc76bcf3f03cf167a979277fe32e9215bca9f43', NULL, '2026-10-10 10:35:26'),
(980, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'bf83c4b7dbce9a63592891a35adfa785c8330f3dddac01d9f5d7266d271f17d2', NULL, '2026-10-10 10:35:48'),
(981, 103, 'Update Profile', 'data_change', 'users', 103, 'success', 'POST', '/api/system/all_users.php', '175.176.83.186', 'bf83c4b7dbce9a63592891a35adfa785c8330f3dddac01d9f5d7266d271f17d2', '{\"updated_fields\":[\"username\"]}', '2026-10-10 10:36:16'),
(982, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '131.226.114.47', '80e477303af1866fb924aa9930c9043875a20c7ed5a1ee53770024f085e91674', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 10:38:26'),
(983, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '131.226.114.47', '80e477303af1866fb924aa9930c9043875a20c7ed5a1ee53770024f085e91674', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 10:38:27'),
(984, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '131.226.114.47', '80e477303af1866fb924aa9930c9043875a20c7ed5a1ee53770024f085e91674', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 10:38:34'),
(985, 103, 'Add Pet Record', 'data_change', 'pets', 78, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.186', 'bf83c4b7dbce9a63592891a35adfa785c8330f3dddac01d9f5d7266d271f17d2', NULL, '2026-10-10 10:38:39'),
(986, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', '814fc4ba328b45ce150d5945a37909e81744ba3333a69b7e1b75b2af13e245f7', NULL, '2026-10-10 10:38:39'),
(987, 103, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 115, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:24'),
(988, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 115, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:34'),
(989, 103, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 115, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:44'),
(990, 103, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 116, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:52'),
(991, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 116, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:55'),
(992, 5, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 116, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:39:58'),
(993, 103, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 117, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:40:08'),
(994, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 117, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:40:12'),
(995, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 117, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:40:15'),
(996, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'bf83c4b7dbce9a63592891a35adfa785c8330f3dddac01d9f5d7266d271f17d2', NULL, '2026-10-10 10:42:20'),
(997, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '131.226.114.47', '407e219bb070f804af2628e1f0c5e924cdf8739c485b9abf266b1b633eac6faf', NULL, '2026-10-10 10:42:22'),
(998, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '131.226.114.47', '03c59b1456e3e21d2239647d6f4f31d8ad4579794be4ff03ac5dac377b36e1ea', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 10:42:29'),
(999, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'a96d50cb4e4727dee7ff9c378137c0777e427aecc6d45b45b031f9fd490002bf', NULL, '2026-10-10 10:42:31'),
(1000, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '0009796803a9828a05ef3133806eaa12051f2629915ebe8b1deeeb29d17e95b6', NULL, '2026-10-10 10:42:43'),
(1001, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '135c60e28e96ded47cd201430f7665d42d71076c8dabbeb612893b7fde053e3c', NULL, '2026-10-10 10:42:49'),
(1002, 104, 'Register Account', 'data_change', 'users', 104, 'success', 'POST', '/api/auth/register.php', '131.226.114.47', '03c59b1456e3e21d2239647d6f4f31d8ad4579794be4ff03ac5dac377b36e1ea', NULL, '2026-10-10 10:42:51'),
(1003, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '131.226.114.47', 'ac629d2b178358fe462379137ccecad1bddad18a2893b3e6ebd9d80ac7c75834', NULL, '2026-10-10 10:43:02'),
(1004, 104, 'Update Profile', 'data_change', 'users', 104, 'success', 'POST', '/api/system/all_users.php', '131.226.114.47', 'ac629d2b178358fe462379137ccecad1bddad18a2893b3e6ebd9d80ac7c75834', '{\"updated_fields\":[\"username\"]}', '2026-10-10 10:43:33'),
(1005, 104, 'Add Pet Record', 'data_change', 'pets', 79, 'success', 'POST', '/api/owner/add_pet.php', '131.226.114.47', 'ac629d2b178358fe462379137ccecad1bddad18a2893b3e6ebd9d80ac7c75834', NULL, '2026-10-10 10:44:32'),
(1006, 4, 'Create Breed', 'data_change', 'breeds', 34, 'success', 'POST', '/api/clinic/manage_species_breeds.php', '175.176.83.186', '135c60e28e96ded47cd201430f7665d42d71076c8dabbeb612893b7fde053e3c', '{\"name\":\"Sokoke\",\"species_id\":2}', '2026-10-10 10:44:47'),
(1007, 104, 'Add Pet Record', 'data_change', 'pets', 80, 'success', 'POST', '/api/owner/add_pet.php', '131.226.114.47', 'ac629d2b178358fe462379137ccecad1bddad18a2893b3e6ebd9d80ac7c75834', NULL, '2026-10-10 10:45:11'),
(1008, 101, 'Add Pet Record', 'data_change', 'pets', 81, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.186', 'a96d50cb4e4727dee7ff9c378137c0777e427aecc6d45b45b031f9fd490002bf', NULL, '2026-10-10 10:45:41'),
(1009, 101, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 118, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:45:57'),
(1010, 105, 'Register Account', 'data_change', 'users', 105, 'success', 'POST', '/api/auth/register.php', '110.54.171.8', '40c96402e5b7b3f0db1cc1694bba8ead4ce8b12ddc0332dc15e837d6d94ce018', NULL, '2026-10-10 10:46:01'),
(1011, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '135c60e28e96ded47cd201430f7665d42d71076c8dabbeb612893b7fde053e3c', NULL, '2026-10-10 10:46:06'),
(1012, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:46:16'),
(1013, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 118, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:46:29'),
(1014, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 118, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 10:46:32'),
(1015, 105, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '110.54.171.8', 'e4abb65bb6e2cb683e5a58cd8b40862b108f003b8d860f212b650e64d2dcd7cd', NULL, '2026-10-10 10:46:55'),
(1016, 5, 'Complete Live Queue Ticket', 'data_change', 'live_queue_tickets', 2, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:47:55'),
(1017, 5, 'Create Live Queue Ticket', 'data_change', 'live_queue_tickets', 3, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', '{\"service\":\"VACCINATION\",\"ticket_number\":1,\"owner_id\":45}', '2026-10-10 10:48:21'),
(1018, 5, 'Call Live Queue Ticket', 'data_change', 'live_queue_tickets', 3, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:48:38'),
(1019, 5, 'Recall Live Queue Ticket', 'data_change', 'live_queue_tickets', 3, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:48:46'),
(1020, 5, 'Create Live Queue Ticket', 'data_change', 'live_queue_tickets', 4, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', '{\"service\":\"VACCINATION\",\"ticket_number\":2,\"owner_id\":46}', '2026-10-10 10:49:21'),
(1021, 5, 'Serve Live Queue Ticket', 'data_change', 'live_queue_tickets', 3, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:49:30'),
(1022, 105, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 10:49:30'),
(1023, 5, 'Complete Live Queue Ticket', 'data_change', 'live_queue_tickets', 3, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:49:33'),
(1024, 5, 'Call Live Queue Ticket', 'data_change', 'live_queue_tickets', 4, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:49:35'),
(1025, 5, 'Create Live Queue Ticket', 'data_change', 'live_queue_tickets', 5, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', '{\"service\":\"VACCINATION\",\"ticket_number\":3,\"owner_id\":\"\"}', '2026-10-10 10:49:52'),
(1026, 5, 'Recall Live Queue Ticket', 'data_change', 'live_queue_tickets', 4, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:49:59'),
(1027, 5, 'Serve Live Queue Ticket', 'data_change', 'live_queue_tickets', 4, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:02'),
(1028, 5, 'Complete Live Queue Ticket', 'data_change', 'live_queue_tickets', 4, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:07'),
(1029, 5, 'Skip Live Queue Ticket', 'data_change', 'live_queue_tickets', 5, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:09'),
(1030, 5, 'Requeue Live Queue Ticket', 'data_change', 'live_queue_tickets', 5, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:20'),
(1031, 5, 'Call Live Queue Ticket', 'data_change', 'live_queue_tickets', 5, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:24'),
(1032, 5, 'Complete Live Queue Ticket', 'data_change', 'live_queue_tickets', 5, 'success', 'POST', '/api/queue/live_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:50:28'),
(1033, 105, 'Add Pet Record', 'data_change', 'pets', 82, 'success', 'POST', '/api/owner/add_pet.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 10:51:20'),
(1034, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 119, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:51:43'),
(1035, 105, 'Update Pet Record', 'data_change', 'pets', 82, 'success', 'POST', '/api/owner/update_pet.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 10:51:45'),
(1036, 5, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 119, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:51:51'),
(1037, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'a96d50cb4e4727dee7ff9c378137c0777e427aecc6d45b45b031f9fd490002bf', NULL, '2026-10-10 10:52:17'),
(1038, 6, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '3e96f298a760961f80a64226d7cb051da5686675433bf08d7413ab8734269911', NULL, '2026-10-10 10:52:29');
INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(1039, 6, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.186', '3e96f298a760961f80a64226d7cb051da5686675433bf08d7413ab8734269911', NULL, '2026-10-10 10:54:32'),
(1040, 6, 'Save Vet Consultation', 'data_change', 'medical_records', 34, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', '3e96f298a760961f80a64226d7cb051da5686675433bf08d7413ab8734269911', '{\"vet_id\":6,\"recorded_by_role\":2}', '2026-10-10 10:54:32'),
(1041, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '80fd97cd838c95544c94756088512a749b894654222bcf51a8f1f833abceb9e2', NULL, '2026-10-10 10:54:40'),
(1042, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'f00cb0dc7e29013060599afbdce0a84a0594ca20da24e7db86dc6c107af91364', NULL, '2026-10-10 10:55:05'),
(1043, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'f00cb0dc7e29013060599afbdce0a84a0594ca20da24e7db86dc6c107af91364', NULL, '2026-10-10 10:55:15'),
(1044, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '9240d93ee61ba83950985758aad9ffee4821ea11f6a068b6b154517c410364af', NULL, '2026-10-10 10:55:25'),
(1045, 105, 'Add Pet Record', 'data_change', 'pets', 83, 'success', 'POST', '/api/owner/add_pet.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 10:55:41'),
(1046, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '9240d93ee61ba83950985758aad9ffee4821ea11f6a068b6b154517c410364af', NULL, '2026-10-10 10:55:53'),
(1047, 106, 'Register Account', 'data_change', 'users', 106, 'success', 'POST', '/api/auth/register.php', '175.176.83.186', 'f99e826569ac19fcffbb722402fef4f6dbb971a002d8486f3ba17013c1e972a0', NULL, '2026-10-10 10:56:55'),
(1048, 106, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '9278f9fa4b2104c09361e1004161feb2c838ef3950bd5e8060e4416d13b2ca86', NULL, '2026-10-10 10:57:55'),
(1049, 106, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '9278f9fa4b2104c09361e1004161feb2c838ef3950bd5e8060e4416d13b2ca86', NULL, '2026-10-10 10:57:58'),
(1050, 105, 'Add Pet Record', 'data_change', 'pets', 84, 'success', 'POST', '/api/owner/add_pet.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 11:01:28'),
(1051, 105, 'Add Pet Record', 'data_change', 'pets', 85, 'success', 'POST', '/api/owner/add_pet.php', '110.54.171.8', 'fd51b370e4bc201fcd827020ee99669a8d027944099e8dd571483d46339d8716', NULL, '2026-10-10 11:01:29'),
(1052, 105, 'Archive Pet Record', 'data_change', 'pets', 85, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 11:01:53'),
(1053, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '1d95c5f6b4c3c00ca0a0f51696e01711b4843e841b6197b10450fa8511493295', NULL, '2026-10-10 11:01:54'),
(1054, 6, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '3e96f298a760961f80a64226d7cb051da5686675433bf08d7413ab8734269911', NULL, '2026-10-10 11:02:09'),
(1055, 107, 'Register Account', 'data_change', 'users', 107, 'success', 'POST', '/api/auth/register.php', '175.176.83.186', 'fa4dad05e9752fd5b68caa5fff11788092b04d1da688fa2cec0d42a240acba19', NULL, '2026-10-10 11:02:59'),
(1056, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:33:08'),
(1057, 4, 'Create Staff Account', 'data_change', 'staff', 36, 'success', 'POST', '/api/records/staff.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:35:46'),
(1058, 4, 'Create Staff Account', 'data_change', 'staff', 37, 'success', 'POST', '/api/records/staff.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:36:58'),
(1059, 4, 'Create Staff Account', 'data_change', 'staff', 38, 'success', 'POST', '/api/records/staff.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:38:04'),
(1060, 4, 'Create Staff Account', 'data_change', 'staff', 39, 'success', 'POST', '/api/records/staff.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:38:51'),
(1061, 4, 'Create Staff Account', 'data_change', 'staff', 40, 'success', 'POST', '/api/records/staff.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:39:39'),
(1062, 108, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '30915176355b58677c0c4c98c8f3946c4ffe8d640d59a0debc49af2f5798ed0e', NULL, '2026-10-10 11:40:49'),
(1063, 108, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '5bdc6b0298c409f6f7f518e450c7aca9bf6e5901dfb99bfe7fb59c769122ccb6', NULL, '2026-10-10 11:41:00'),
(1064, 108, 'Update Profile', 'data_change', 'users', 108, 'success', 'POST', '/api/system/all_users.php', '175.176.83.186', '5bdc6b0298c409f6f7f518e450c7aca9bf6e5901dfb99bfe7fb59c769122ccb6', '{\"updated_fields\":[\"username\",\"email\"]}', '2026-10-10 11:41:39'),
(1065, 108, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '5bdc6b0298c409f6f7f518e450c7aca9bf6e5901dfb99bfe7fb59c769122ccb6', NULL, '2026-10-10 11:41:44'),
(1066, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.186', 'e7356ec4dc860644a10031e2bbd5933d9fcbfad33b39fa71a6f606a68e7b368f', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 11:42:15'),
(1067, 108, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'd9f3e0e05c7fdc5cf59a2b7d5b7da9820a5401624efce0de932cad6f593f6ef7', NULL, '2026-10-10 11:42:23'),
(1068, 108, 'Update Profile', 'data_change', 'users', 108, 'success', 'POST', '/api/system/all_users.php', '175.176.83.186', 'd9f3e0e05c7fdc5cf59a2b7d5b7da9820a5401624efce0de932cad6f593f6ef7', '{\"updated_fields\":[\"username\"]}', '2026-10-10 11:43:14'),
(1069, 108, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'd9f3e0e05c7fdc5cf59a2b7d5b7da9820a5401624efce0de932cad6f593f6ef7', NULL, '2026-10-10 11:43:19'),
(1070, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '4aea78a34495e105013322f39552f46ecd085c43dad3cf8ca21c65d1d018e1d6', NULL, '2026-10-10 11:43:32'),
(1071, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '86bb3fc8e72f059e5e38cd0d42ef03063629d65ba4125278d74604b1480d0fb6', NULL, '2026-10-10 11:43:33'),
(1072, 110, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '86bb3fc8e72f059e5e38cd0d42ef03063629d65ba4125278d74604b1480d0fb6', NULL, '2026-10-10 11:43:38'),
(1073, 109, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '3f2f9e98c819fec13958f3d06c479e360fb6fefb0da38a576707c5807f86af74', NULL, '2026-10-10 11:43:49'),
(1074, 109, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '3f2f9e98c819fec13958f3d06c479e360fb6fefb0da38a576707c5807f86af74', NULL, '2026-10-10 11:43:59'),
(1075, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.186', '76911f18d386046edd70b0ab074e128cf008525b529bc1aa175a5f26cffb83b8', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 11:44:10'),
(1076, 111, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '3a5fd67a1ca37e6931c893e852a32908e4ee0c6f754e6f25c44ea85a6e1c4d03', NULL, '2026-10-10 11:44:21'),
(1077, 111, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '3a5fd67a1ca37e6931c893e852a32908e4ee0c6f754e6f25c44ea85a6e1c4d03', NULL, '2026-10-10 11:44:28'),
(1078, 112, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '20445e896f8f49e038b124f0133b38137f283a35561d27dd1b86c7516a8f7847', NULL, '2026-10-10 11:44:54'),
(1079, 112, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '20445e896f8f49e038b124f0133b38137f283a35561d27dd1b86c7516a8f7847', NULL, '2026-10-10 11:45:04'),
(1080, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:45:15'),
(1081, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-01\",\"vet_ids\":[108]}', '2026-10-10 11:45:31'),
(1082, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-02\",\"vet_ids\":[109]}', '2026-10-10 11:45:37'),
(1083, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-05\",\"vet_ids\":[110]}', '2026-10-10 11:45:43'),
(1084, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-06\",\"vet_ids\":[111]}', '2026-10-10 11:45:50'),
(1085, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-07\",\"vet_ids\":[112]}', '2026-10-10 11:45:56'),
(1086, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-08\",\"vet_ids\":[108]}', '2026-10-10 11:46:01'),
(1087, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-09\",\"vet_ids\":[109]}', '2026-10-10 11:46:10'),
(1088, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-12\",\"vet_ids\":[110]}', '2026-10-10 11:46:23'),
(1089, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-13\",\"vet_ids\":[111]}', '2026-10-10 11:46:33'),
(1090, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-14\",\"vet_ids\":[112]}', '2026-10-10 11:46:42'),
(1091, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-15\",\"vet_ids\":[108]}', '2026-10-10 11:46:47'),
(1092, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-16\",\"vet_ids\":[109]}', '2026-10-10 11:46:54'),
(1093, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-19\",\"vet_ids\":[110]}', '2026-10-10 11:47:03'),
(1094, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-20\",\"vet_ids\":[111]}', '2026-10-10 11:47:12'),
(1095, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-21\",\"vet_ids\":[112]}', '2026-10-10 11:47:19'),
(1096, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-22\",\"vet_ids\":[108]}', '2026-10-10 11:47:25'),
(1097, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-23\",\"vet_ids\":[109]}', '2026-10-10 11:47:32'),
(1098, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-26\",\"vet_ids\":[110]}', '2026-10-10 11:47:39'),
(1099, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-27\",\"vet_ids\":[111]}', '2026-10-10 11:47:46'),
(1100, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-28\",\"vet_ids\":[112]}', '2026-10-10 11:47:56'),
(1101, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-29\",\"vet_ids\":[108]}', '2026-10-10 11:48:02'),
(1102, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-30\",\"vet_ids\":[109]}', '2026-10-10 11:48:09'),
(1103, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 121, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:48:45'),
(1104, 5, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 121, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:49:01'),
(1105, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '15761c7ac9ee411a6d3656b73c914df4a1594be9b146d2f1a172022cb37b17f9', NULL, '2026-10-10 11:49:08'),
(1106, 108, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '89e3579c746b71883fce69b2a70faa6d7058dac6cf82cf2044778a572384bf81', NULL, '2026-10-10 11:49:26'),
(1107, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '512f95b2dd0dc61562d7a8a2737c65a320f2cdc8f1d46c0438eaf0bef820d0bc', NULL, '2026-10-10 11:50:40'),
(1108, 110, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.186', '512f95b2dd0dc61562d7a8a2737c65a320f2cdc8f1d46c0438eaf0bef820d0bc', NULL, '2026-10-10 11:51:09'),
(1109, 110, 'Save Vet Consultation', 'data_change', 'medical_records', 35, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', '512f95b2dd0dc61562d7a8a2737c65a320f2cdc8f1d46c0438eaf0bef820d0bc', '{\"vet_id\":110,\"recorded_by_role\":2}', '2026-10-10 11:51:09'),
(1110, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'f2c8be732d8d15d6a9913b9de2f32cc71e973f5df97a98492a02cb791856620e', NULL, '2026-10-10 11:52:48'),
(1111, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 122, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:53:45'),
(1112, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"date\":\"2026-10-10\",\"vet_ids\":[108]}', '2026-10-10 11:54:16'),
(1113, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:54:55'),
(1114, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 36, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"vet_id\":108,\"recorded_by_role\":4}', '2026-10-10 11:54:55'),
(1115, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 123, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:56:24'),
(1116, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', NULL, '2026-10-10 11:57:34'),
(1117, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 37, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.186', 'e7164ef716b7d20a45458780918988840fa58e195a13586fdff3fca33d2cc1c3', '{\"vet_id\":108,\"recorded_by_role\":4}', '2026-10-10 11:57:34'),
(1118, 104, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'f2c8be732d8d15d6a9913b9de2f32cc71e973f5df97a98492a02cb791856620e', NULL, '2026-10-10 11:57:41'),
(1119, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '67eb2580b81d70452639bab50234f296893143e940518cf05f34fa8b796b8226', NULL, '2026-10-10 11:58:34'),
(1120, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '2812757f356c1470f66bcd784ee0b67bb2d2f73b621d03fa6593e87a84bbe542', NULL, '2026-10-10 12:02:27'),
(1121, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '0a8d6f71d46f2dde0d5bc34fb60525bfceaec2d6ec9ae5a86ab0b60f94c5ef3c', NULL, '2026-10-10 12:02:38'),
(1122, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'ff03b1fd1bcd79239eaeedb03e6e4531b158f968747ab941ba639fddc334e56c', NULL, '2026-10-10 12:03:11'),
(1123, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '6e4f52e6a6fc89bb1e4aa5f3c939fe7a62c5c817007fb1e2ae920578e27c855a', NULL, '2026-10-10 12:03:11'),
(1124, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:06:23'),
(1125, 5, 'Create Homepage Post', 'data_change', 'homepage_posts', 6, 'success', 'POST', '/api/cms/homepage_posts.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', '{\"section\":\"announcement\",\"status\":\"active\"}', '2026-10-10 12:08:48'),
(1126, 5, 'Delete Homepage Post', 'data_change', 'homepage_posts', 6, 'success', 'POST', '/api/cms/homepage_posts.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:09:31'),
(1127, 5, 'Create Carousel Item', 'data_change', 'carousel_images', 3, 'success', 'POST', '/api/cms/carousel.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:10:19'),
(1128, 5, 'Create Carousel Item', 'data_change', 'carousel_images', 4, 'success', 'POST', '/api/cms/carousel.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:11:22'),
(1129, 5, 'Create Carousel Item', 'data_change', 'carousel_images', 5, 'success', 'POST', '/api/cms/carousel.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:12:45'),
(1130, 5, 'Create Carousel Item', 'data_change', 'carousel_images', 6, 'success', 'POST', '/api/cms/carousel.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:14:02'),
(1131, 5, 'Create First Aid Video', 'data_change', 'first_aid_videos', 2, 'success', 'POST', '/api/cms/first_aid_videos.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:15:01'),
(1132, 5, 'Create First Aid Video', 'data_change', 'first_aid_videos', 3, 'success', 'POST', '/api/cms/first_aid_videos.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:17:13'),
(1133, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '90fe2b0060c556ba7249c3bf63fbccd65d7fa4ca2246ef82dedc8f4f8f34a5aa', NULL, '2026-10-10 12:17:23'),
(1134, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '933b2a28179d2811fd2a04c6b9d46f3963bfb592866db5f612f31547dae51975', NULL, '2026-10-10 12:18:19'),
(1135, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '933b2a28179d2811fd2a04c6b9d46f3963bfb592866db5f612f31547dae51975', NULL, '2026-10-10 12:18:51'),
(1136, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'a8af510f6173b212b4b6869e63e1c20ab80346aa8594e94053ae45513629442c', NULL, '2026-10-10 12:19:09'),
(1137, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', '05b21cde9e23f36f20ba0f3c8349016a4f9d2ce6dab51c7a99f522e05c70a032', NULL, '2026-10-10 12:20:28'),
(1138, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'a8af510f6173b212b4b6869e63e1c20ab80346aa8594e94053ae45513629442c', NULL, '2026-10-10 12:21:45'),
(1139, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'c0a33b1580d00b708f493aaf9622e15672ea2f0703f86a13bd97b1ac32afe9e0', NULL, '2026-10-10 12:22:03'),
(1140, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', 'c0a33b1580d00b708f493aaf9622e15672ea2f0703f86a13bd97b1ac32afe9e0', NULL, '2026-10-10 12:22:26'),
(1141, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'e0f7a479b9aeb6636ce4cce1d12a53eed6dd576ad091700fbf7f4dfbfed8526e', NULL, '2026-10-10 12:22:31'),
(1142, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.186', '05b21cde9e23f36f20ba0f3c8349016a4f9d2ce6dab51c7a99f522e05c70a032', NULL, '2026-10-10 12:24:28'),
(1143, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.186', 'a67b932ab9d931cc3feb306d156fe863b036918feb8162bbbfcf201ad65ee835', NULL, '2026-10-10 12:24:42'),
(1144, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'd04a769288f8204d8c71ba1349089daae28142a02b3d188438ddb529a7eb91d4', NULL, '2026-10-10 12:53:19'),
(1145, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', 'd04a769288f8204d8c71ba1349089daae28142a02b3d188438ddb529a7eb91d4', NULL, '2026-10-10 12:53:24'),
(1146, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '3410819632463fb787740c3b23b77a20fca56c48c9a305dd68d86a290d9c8375', NULL, '2026-10-10 12:53:45'),
(1147, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 34, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:54:32'),
(1148, 101, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 125, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:54:41'),
(1149, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 125, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:54:49'),
(1150, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 125, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:55:14'),
(1151, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '3410819632463fb787740c3b23b77a20fca56c48c9a305dd68d86a290d9c8375', NULL, '2026-10-10 12:58:26'),
(1152, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '28f73a3f1c9fd0ddcd352e6e1b4fdbe5a27f4ed3b479edaee527fc208ebdceca', NULL, '2026-10-10 12:58:33'),
(1153, 103, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 126, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:58:51'),
(1154, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 126, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:59:02'),
(1155, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 126, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 12:59:33'),
(1156, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '28f73a3f1c9fd0ddcd352e6e1b4fdbe5a27f4ed3b479edaee527fc208ebdceca', NULL, '2026-10-10 13:08:34'),
(1157, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '867da28260ffec6a7a227146e636ca5cd40dd2659a1d05893e5540763d69319e', NULL, '2026-10-10 13:08:39'),
(1158, 4, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 35, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 13:08:51'),
(1159, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', 'a67b932ab9d931cc3feb306d156fe863b036918feb8162bbbfcf201ad65ee835', NULL, '2026-10-10 13:09:15'),
(1160, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '9927a998403a13f80e2f2676a48c4dc18f0ea9521d8b39ae615005344dff71e3', NULL, '2026-10-10 13:09:20'),
(1161, 103, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 127, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 13:09:49'),
(1162, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '867da28260ffec6a7a227146e636ca5cd40dd2659a1d05893e5540763d69319e', NULL, '2026-10-10 13:09:57'),
(1163, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '64550567c7325c7a9631972be3921d117428b1095bf9af6ef90937827291d9f9', NULL, '2026-10-10 13:10:04'),
(1164, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 127, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 13:10:15'),
(1165, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 127, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 13:10:49'),
(1166, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '160d0873eeae0b4451d5a79eec1332c966ae603d53af2a4dbad6d744435c4fce', NULL, '2026-10-10 13:11:26'),
(1167, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', NULL, '2026-10-10 13:12:10'),
(1168, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 128, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', NULL, '2026-10-10 13:13:35'),
(1169, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', NULL, '2026-10-10 13:14:39'),
(1170, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 38, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', '{\"vet_id\":108,\"recorded_by_role\":4}', '2026-10-10 13:14:39'),
(1171, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '64550567c7325c7a9631972be3921d117428b1095bf9af6ef90937827291d9f9', NULL, '2026-10-10 13:29:45'),
(1172, 4, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '5f1af88d8a8c0e42d56ae2bfc71f3a0161c25be0a788f1c6d9a4bdb336f0729d', NULL, '2026-10-10 13:29:49'),
(1173, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '160d0873eeae0b4451d5a79eec1332c966ae603d53af2a4dbad6d744435c4fce', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:31:28'),
(1174, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '160d0873eeae0b4451d5a79eec1332c966ae603d53af2a4dbad6d744435c4fce', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:31:40'),
(1175, 4, 'Update Profile', 'security', 'users', 4, 'failure', 'POST', '/api/system/all_users.php', '175.176.83.12', '5f1af88d8a8c0e42d56ae2bfc71f3a0161c25be0a788f1c6d9a4bdb336f0729d', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:31:51'),
(1176, 4, 'Update Profile', 'security', 'users', 4, 'failure', 'POST', '/api/system/all_users.php', '175.176.83.12', '5f1af88d8a8c0e42d56ae2bfc71f3a0161c25be0a788f1c6d9a4bdb336f0729d', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:32:02'),
(1177, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:33:06'),
(1178, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:33:15'),
(1179, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:34:00'),
(1180, NULL, 'Login Rate Limited (Account)', 'security', 'sessions', NULL, 'blocked', 'POST', '/api/auth/login.php', '175.176.83.12', '14e15bcd9e8dcb629cb85b44915c447d5a4f9ff03d42d46fdb7e29029c9cf654', NULL, '2026-10-10 13:34:14'),
(1181, 4, 'Create Staff Account', 'data_change', 'staff', 41, 'success', 'POST', '/api/records/staff.php', '175.176.83.12', '5f1af88d8a8c0e42d56ae2bfc71f3a0161c25be0a788f1c6d9a4bdb336f0729d', NULL, '2026-10-10 13:36:17'),
(1182, 4, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '5f1af88d8a8c0e42d56ae2bfc71f3a0161c25be0a788f1c6d9a4bdb336f0729d', NULL, '2026-10-10 13:36:29'),
(1183, 113, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'b68b7bb39d558bf9a23cef44a2ecef2ed1aba09a59843d08678cacb0a36ee27e', NULL, '2026-10-10 13:36:38'),
(1184, 113, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.12', 'b68b7bb39d558bf9a23cef44a2ecef2ed1aba09a59843d08678cacb0a36ee27e', '{\"date\":\"2026-10-10\",\"vet_ids\":[]}', '2026-10-10 13:37:07'),
(1185, 113, 'Delete Calendar Event', 'data_change', 'calendar_events', 35, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 13:37:20'),
(1186, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/api/auth/login.php', '175.176.83.12', '01e03ac618913deacd41b0b8a9a90f90dec72cd243180f81eea914fd774abadb', '{\"reason\":\"invalid_credentials\"}', '2026-10-10 13:45:58'),
(1187, 113, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'b7357aaf3538812f09a319fee2b19f704808ebeadb42967db89780f20d667c4c', NULL, '2026-10-10 14:40:01'),
(1188, 113, 'Update Profile', 'data_change', 'users', 113, 'success', 'POST', '/api/system/all_users.php', '175.176.83.12', 'b7357aaf3538812f09a319fee2b19f704808ebeadb42967db89780f20d667c4c', '{\"updated_fields\":[\"username\"]}', '2026-10-10 14:41:02'),
(1189, 114, 'Register Account', 'data_change', 'users', 114, 'success', 'POST', '/api/auth/register.php', '175.176.83.12', '12e9ef10ae8dfb654a01d2752311fb4d3c304f9fad4a639210b917d2e284e4ad', NULL, '2026-10-10 15:00:11'),
(1190, 114, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'bc0c0705779dd79997b72201f549170a1582eab2f3d376b6544bdc0f760f7766', NULL, '2026-10-10 15:00:41'),
(1191, 114, 'Add Pet Record', 'data_change', 'pets', 86, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.12', 'bc0c0705779dd79997b72201f549170a1582eab2f3d376b6544bdc0f760f7766', NULL, '2026-10-10 15:06:34'),
(1192, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '86bfc1d0c78af111e2a88c0bdae7a2314e37664acea4402af0cbaae1c24128a2', NULL, '2026-10-10 15:08:28'),
(1193, 5, 'Create General Event', 'data_change', 'calendar_events', 36, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:12:22'),
(1194, 114, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', 'bc0c0705779dd79997b72201f549170a1582eab2f3d376b6544bdc0f760f7766', NULL, '2026-10-10 15:12:39'),
(1195, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '6e76c23b9e4842c5ffa824776941c1d00710485a47c0ae1d45db275cb3169ddb', NULL, '2026-10-10 15:12:45'),
(1196, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '6e76c23b9e4842c5ffa824776941c1d00710485a47c0ae1d45db275cb3169ddb', NULL, '2026-10-10 15:14:45'),
(1197, 114, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '56b1ef4dde2b91911deddeda3a9b95a6e1d5436249a0ee77ea2104c67e6a6e8c', NULL, '2026-10-10 15:14:50'),
(1198, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 37, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:15:13'),
(1199, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 130, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '86bfc1d0c78af111e2a88c0bdae7a2314e37664acea4402af0cbaae1c24128a2', NULL, '2026-10-10 15:19:25'),
(1200, 5, 'Update Vet Duty Day', 'data_change', 'vet_duty_schedule', NULL, 'success', 'POST', '/api/clinic/vet_duty_schedule.php', '175.176.83.12', '86bfc1d0c78af111e2a88c0bdae7a2314e37664acea4402af0cbaae1c24128a2', '{\"date\":\"2026-10-10\",\"vet_ids\":[111]}', '2026-10-10 15:22:56'),
(1201, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '86bfc1d0c78af111e2a88c0bdae7a2314e37664acea4402af0cbaae1c24128a2', NULL, '2026-10-10 15:25:40'),
(1202, 113, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'd003b80891fc2b7e6f8deaac78ed7f92a63d46189aa5f61f125980d11a9f1ff0', NULL, '2026-10-10 15:26:12'),
(1203, 113, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', 'd06345cbe36aec9a65f99f3b5558dbc88ca1f5973eaed6aa7bf9461c20bb8b2e', NULL, '2026-10-10 15:26:20'),
(1204, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '0df735c446247e922dae265ef820c528874df6fa12bcb767808366b1c77ca1b2', NULL, '2026-10-10 15:27:30'),
(1205, 114, 'Update Pet Record', 'data_change', 'pets', 86, 'success', 'POST', '/api/owner/update_pet.php', '175.176.83.12', '56b1ef4dde2b91911deddeda3a9b95a6e1d5436249a0ee77ea2104c67e6a6e8c', NULL, '2026-10-10 15:29:21'),
(1206, 114, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '56b1ef4dde2b91911deddeda3a9b95a6e1d5436249a0ee77ea2104c67e6a6e8c', NULL, '2026-10-10 15:29:45'),
(1207, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:29:59'),
(1208, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:33:09'),
(1209, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 39, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', '{\"vet_id\":111,\"recorded_by_role\":4}', '2026-10-10 15:33:10'),
(1210, 110, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '0df735c446247e922dae265ef820c528874df6fa12bcb767808366b1c77ca1b2', NULL, '2026-10-10 15:35:22'),
(1211, 114, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '987303b9491fa5beab88e8141db0cf5d2a5daf7a768d835bfb9210b6dc88a642', NULL, '2026-10-10 15:35:27'),
(1212, 114, 'Archive Pet Record', 'data_change', 'pets', 86, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:36:37'),
(1213, 114, 'Add Pet Record', 'data_change', 'pets', 87, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.12', '987303b9491fa5beab88e8141db0cf5d2a5daf7a768d835bfb9210b6dc88a642', NULL, '2026-10-10 15:40:14'),
(1214, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 132, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:41:30'),
(1215, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:42:18'),
(1216, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 40, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', '{\"vet_id\":111,\"recorded_by_role\":4}', '2026-10-10 15:42:18'),
(1217, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 134, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:44:26'),
(1218, 5, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:45:36'),
(1219, 5, 'Save Vet Consultation', 'data_change', 'medical_records', 41, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', '{\"vet_id\":111,\"recorded_by_role\":4}', '2026-10-10 15:45:36'),
(1220, 5, 'Create Walk-in Queue Item', 'data_change', 'appointments', 136, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:48:14'),
(1221, 5, 'Update Queue Status to In Consultation', 'data_change', 'appointments', 136, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:48:28'),
(1222, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '46fd11084cc57c772cbb5289c12a12d58e521697a68c595d4f44929631fbd7d2', NULL, '2026-10-10 15:49:12'),
(1223, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '59861198fb9b88b34bbd2a1eca9bd5cff7a1bc8814c3ee59bf4598c42b2567d9', NULL, '2026-10-10 15:49:34'),
(1224, 110, 'Upload Medicine Picture', 'data_change', 'medical_records', NULL, 'success', 'POST', '/api/clinic/upload_medicine_picture.php', '175.176.83.12', '59861198fb9b88b34bbd2a1eca9bd5cff7a1bc8814c3ee59bf4598c42b2567d9', NULL, '2026-10-10 15:50:22'),
(1225, 110, 'Save Vet Consultation', 'data_change', 'medical_records', 42, 'success', 'POST', '/api/clinic/vet_queue.php', '175.176.83.12', '59861198fb9b88b34bbd2a1eca9bd5cff7a1bc8814c3ee59bf4598c42b2567d9', '{\"vet_id\":110,\"recorded_by_role\":2}', '2026-10-10 15:50:22'),
(1226, 114, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 138, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:52:51'),
(1227, 110, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '59861198fb9b88b34bbd2a1eca9bd5cff7a1bc8814c3ee59bf4598c42b2567d9', NULL, '2026-10-10 15:52:54'),
(1228, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '8459cfc2a2b4e5d00c73a772cc848c6713a18a3155f2ab019aa9d5ba3264e60e', NULL, '2026-10-10 15:52:59'),
(1229, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 38, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:53:12'),
(1230, 114, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 139, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:54:08'),
(1231, 5, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 138, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:54:17'),
(1232, 5, 'Confirm Spay/Neuter Booking', 'data_change', 'appointments', 139, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:54:50'),
(1233, 5, 'Confirm Spay/Neuter Attendance', 'data_change', 'appointments', 139, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 15:56:29'),
(1234, 114, 'Add Pet Record', 'data_change', 'pets', 88, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.12', '987303b9491fa5beab88e8141db0cf5d2a5daf7a768d835bfb9210b6dc88a642', NULL, '2026-10-10 15:57:16'),
(1235, 114, 'Add Pet Record', 'data_change', 'pets', 89, 'success', 'POST', '/api/owner/add_pet.php', '175.176.83.12', '987303b9491fa5beab88e8141db0cf5d2a5daf7a768d835bfb9210b6dc88a642', NULL, '2026-10-10 15:57:50'),
(1236, 5, 'Create Spay/Neuter Event', 'data_change', 'calendar_events', 39, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:02:26'),
(1237, 114, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 140, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:02:54'),
(1238, 5, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 140, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:03:44'),
(1239, 114, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 141, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:04:11'),
(1240, 114, 'Request Spay/Neuter Booking', 'data_change', 'appointments', 142, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:04:11'),
(1241, 114, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 142, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:04:23'),
(1242, 114, 'Cancel Spay/Neuter Booking', 'data_change', 'appointments', 141, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-10 16:04:27'),
(1243, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '96a2ee2fee1023dc81b985b77d6c61de8b847f65ff4e022b81a1218a7fa15107', NULL, '2026-10-10 16:05:17'),
(1244, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/api/auth/logout.php', '175.176.83.12', '96a2ee2fee1023dc81b985b77d6c61de8b847f65ff4e022b81a1218a7fa15107', NULL, '2026-10-10 16:07:04'),
(1245, 110, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/api/auth/login.php', '175.176.83.12', '09cef93cd765c4ebebe2adf36c39acbc45236e9c18fae4ab21dba083d0676523', NULL, '2026-10-10 16:07:16'),
(1246, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '53be886750275b77ff2a5c8d7771878d48554aa5baa5eb1bd010508e88a712ee', '{\"reason\":\"invalid_credentials\"}', '2026-10-12 15:15:53'),
(1247, 103, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '74238a23af0d0e2504aad53f7215a594e246ead24df661722599a2135d94f01f', NULL, '2026-10-12 15:16:00'),
(1248, 103, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '74238a23af0d0e2504aad53f7215a594e246ead24df661722599a2135d94f01f', NULL, '2026-10-12 15:25:05'),
(1249, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', NULL, '2026-10-12 15:25:10'),
(1250, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 1, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"pet_id\":80,\"from_owner_id\":47,\"to_owner_id\":50}', '2026-10-12 15:25:45'),
(1251, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 2, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"pet_id\":80,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 15:27:08'),
(1252, 104, 'Cancel Pet Transfer', 'data_change', 'pet_transfer_requests', 2, 'success', 'POST', '/city_vet/api/owner/transfer_pet_cancel.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', NULL, '2026-10-12 15:32:35'),
(1253, 104, 'Accept Pet Transfer', 'data_change', 'pet_transfer_requests', NULL, 'denied', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"reason\":\"Transfer request is unavailable.\"}', '2026-10-12 15:42:22'),
(1254, 104, 'Accept Pet Transfer', 'data_change', 'pet_transfer_requests', NULL, 'denied', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"reason\":\"Transfer request is unavailable.\"}', '2026-10-12 15:43:09'),
(1255, 104, 'Accept Pet Transfer', 'data_change', 'pet_transfer_requests', NULL, 'denied', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"reason\":\"Transfer request is unavailable.\"}', '2026-10-12 15:43:39'),
(1256, 104, 'Cancel Appointment', 'data_change', 'appointments', 129, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-12 15:44:12'),
(1257, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 3, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 15:44:24'),
(1258, 104, 'Cancel Pet Transfer', 'data_change', 'pet_transfer_requests', 3, 'success', 'POST', '/city_vet/api/owner/transfer_pet_cancel.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', NULL, '2026-10-12 15:52:26'),
(1259, 104, 'Accept Pet Transfer', 'data_change', 'pet_transfer_requests', NULL, 'denied', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"reason\":\"Transfer request is unavailable.\"}', '2026-10-12 16:00:19'),
(1260, 104, 'Accept Pet Transfer', 'data_change', 'pet_transfer_requests', NULL, 'denied', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"reason\":\"Transfer request is unavailable.\"}', '2026-10-12 16:00:28'),
(1261, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 4, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 16:06:06'),
(1262, 104, 'Cancel Pet Transfer', 'data_change', 'pet_transfer_requests', 4, 'success', 'POST', '/city_vet/api/owner/transfer_pet_cancel.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', NULL, '2026-10-12 16:07:16'),
(1263, 104, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '8c99ea04c981f0fa2ce5e992d3ceaf40b2151d714ed15bbc501d7c6c74242b01', NULL, '2026-10-12 16:07:20');
INSERT INTO `audit_logs` (`Log_ID`, `User_ID`, `Action`, `Event_Type`, `Table_Affected`, `Record_ID`, `Outcome`, `Request_Method`, `Endpoint`, `IP_Address`, `Session_ID`, `Metadata`, `Timestamp`) VALUES
(1264, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'a32a2049500ff7872a0e41062a8a93e0cd26373a380d08790782adfa354821b1', NULL, '2026-10-12 16:09:42'),
(1265, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 5, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', 'a32a2049500ff7872a0e41062a8a93e0cd26373a380d08790782adfa354821b1', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 16:10:07'),
(1266, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 6, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', 'a32a2049500ff7872a0e41062a8a93e0cd26373a380d08790782adfa354821b1', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 16:10:15'),
(1267, 104, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'a32a2049500ff7872a0e41062a8a93e0cd26373a380d08790782adfa354821b1', NULL, '2026-10-12 16:11:06'),
(1268, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '63aea7e8a9d16d47b332f454bdc8df1c480e018e9f54f016d5873800f621c502', '{\"reason\":\"invalid_credentials\"}', '2026-10-12 16:11:17'),
(1269, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '3725cb9c03314c070986f3e80ca21f86d1f44e05abbc46508ba06ce495a5ad4b', NULL, '2026-10-12 16:11:21'),
(1270, 101, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '2f373dcb8e08ffb4e2325f48fc4a22f0abcc26c7951fe45690283c86b0b5ddea', NULL, '2026-10-12 16:11:41'),
(1271, 101, 'Complete Pet Transfer', 'data_change', 'pet_transfer_requests', 6, 'success', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '2f373dcb8e08ffb4e2325f48fc4a22f0abcc26c7951fe45690283c86b0b5ddea', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45,\"transfer_id\":6}', '2026-10-12 16:11:59'),
(1272, 101, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 7, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '2f373dcb8e08ffb4e2325f48fc4a22f0abcc26c7951fe45690283c86b0b5ddea', '{\"pet_id\":79,\"from_owner_id\":45,\"to_owner_id\":47}', '2026-10-12 16:12:50'),
(1273, 104, 'Complete Pet Transfer', 'data_change', 'pet_transfer_requests', 7, 'success', 'POST', '/city_vet/api/owner/transfer_pet_accept.php', '::1', '3725cb9c03314c070986f3e80ca21f86d1f44e05abbc46508ba06ce495a5ad4b', '{\"pet_id\":79,\"from_owner_id\":45,\"to_owner_id\":47,\"transfer_id\":7}', '2026-10-12 16:13:40'),
(1274, 104, 'Start Pet Transfer', 'data_change', 'pet_transfer_requests', 8, 'success', 'POST', '/city_vet/api/owner/transfer_pet_start.php', '::1', '3725cb9c03314c070986f3e80ca21f86d1f44e05abbc46508ba06ce495a5ad4b', '{\"pet_id\":79,\"from_owner_id\":47,\"to_owner_id\":45}', '2026-10-12 16:14:14'),
(1275, 104, 'Cancel Pet Transfer', 'data_change', 'pet_transfer_requests', 8, 'success', 'POST', '/city_vet/api/owner/transfer_pet_cancel.php', '::1', '3725cb9c03314c070986f3e80ca21f86d1f44e05abbc46508ba06ce495a5ad4b', NULL, '2026-10-12 16:21:00'),
(1276, 101, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '2f373dcb8e08ffb4e2325f48fc4a22f0abcc26c7951fe45690283c86b0b5ddea', NULL, '2026-10-12 18:55:49'),
(1277, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', '4460628b5813a4aeef577179b1eca3220a3d8fbcd0c3a20afdb7bb94eaf20b83', NULL, '2026-10-12 18:55:56'),
(1278, 104, 'Archive Pet Record', 'data_change', 'pets', 79, 'success', NULL, NULL, NULL, NULL, NULL, '2026-10-12 18:56:48'),
(1279, 104, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', '3725cb9c03314c070986f3e80ca21f86d1f44e05abbc46508ba06ce495a5ad4b', NULL, '2026-10-12 18:59:06'),
(1280, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'a37958d22974fa95e4b72071347de0abf10318cb95343b95be5ae8a65184d451', NULL, '2026-10-12 22:39:33'),
(1281, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'f2b90ceae08131efa89677a04e2c61bcefca2c484fb01b6301ffd8f1fe605578', NULL, '2026-10-13 06:56:56'),
(1282, 5, 'Create Homepage Post', 'data_change', 'homepage_posts', 7, 'success', 'POST', '/city_vet/api/cms/homepage_posts.php', '::1', 'f2b90ceae08131efa89677a04e2c61bcefca2c484fb01b6301ffd8f1fe605578', '{\"section\":\"announcement\",\"status\":\"active\"}', '2026-10-13 06:57:47'),
(1283, 5, 'Delete Homepage Post', 'data_change', 'homepage_posts', 7, 'success', 'POST', '/city_vet/api/cms/homepage_posts.php', '::1', 'f2b90ceae08131efa89677a04e2c61bcefca2c484fb01b6301ffd8f1fe605578', NULL, '2026-10-13 07:02:17'),
(1284, 5, 'Create Homepage Post', 'data_change', 'homepage_posts', 8, 'success', 'POST', '/city_vet/api/cms/homepage_posts.php', '::1', 'f2b90ceae08131efa89677a04e2c61bcefca2c484fb01b6301ffd8f1fe605578', '{\"section\":\"announcement\",\"status\":\"active\"}', '2026-10-13 07:03:11'),
(1285, 5, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'f2b90ceae08131efa89677a04e2c61bcefca2c484fb01b6301ffd8f1fe605578', NULL, '2026-10-13 07:03:20'),
(1286, NULL, 'Login Failed', 'security', 'sessions', NULL, 'failure', 'POST', '/city_vet/api/auth/login.php', '::1', '598a85bab8bb1351d190769a2a43bc0e6ae376f18f9f79e79c82053f7ab985a7', '{\"reason\":\"invalid_credentials\"}', '2026-10-13 07:03:25'),
(1287, 104, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'f837ed0edf81399250ff19cafea451c939ddb8968eaaa6316e4fcb5d37917eb9', NULL, '2026-10-13 07:03:30'),
(1288, 104, 'Logout', 'security', 'sessions', NULL, 'success', 'GET', '/city_vet/api/auth/logout.php', '::1', 'f837ed0edf81399250ff19cafea451c939ddb8968eaaa6316e4fcb5d37917eb9', NULL, '2026-10-13 07:03:59'),
(1289, 5, 'Login', 'security', 'sessions', NULL, 'success', 'POST', '/city_vet/api/auth/login.php', '::1', 'cabda8f4be1bff127df28e5a7fb10164804fad54909814472c58fbfd31ae7ed1', NULL, '2026-10-13 07:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `breeds`
--

CREATE TABLE `breeds` (
  `Breed_ID` int(11) NOT NULL,
  `Species_ID` int(11) NOT NULL,
  `Breed_Name` varchar(100) NOT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeds`
--

INSERT INTO `breeds` (`Breed_ID`, `Species_ID`, `Breed_Name`, `Status`) VALUES
(1, 1, 'Aspin (Asong Pinoy)', 'active'),
(2, 1, 'Shih Tzu', 'active'),
(3, 1, 'German Shepherd', 'active'),
(4, 1, 'Golden Retriever', 'active'),
(5, 1, 'Labrador Retriever', 'active'),
(6, 1, 'Bulldog', 'active'),
(7, 1, 'Husky', 'active'),
(8, 1, 'Beagle', 'active'),
(9, 1, 'Chihuahua', 'active'),
(10, 1, 'Pug', 'active'),
(11, 1, 'Poodle', 'active'),
(12, 1, 'Chow Chow', 'active'),
(13, 1, 'Rottweiler', 'active'),
(14, 1, 'Pomeranian', 'active'),
(15, 1, 'American Bully', 'active'),
(16, 1, 'Belgian Malinois', 'active'),
(17, 1, 'Dachshund', 'active'),
(18, 1, 'Jack Russell Terrier', 'active'),
(19, 1, 'Dalmatian', 'active'),
(20, 1, 'Boxer', 'active'),
(21, 2, 'Puspin (Pusang Pinoy)', 'active'),
(22, 2, 'Siamese', 'active'),
(23, 2, 'Persian', 'active'),
(24, 2, 'Maine Coon', 'active'),
(25, 2, 'Bengal', 'active'),
(26, 2, 'British Shorthair', 'active'),
(27, 2, 'Ragdoll', 'active'),
(28, 2, 'Munchkin', 'active'),
(29, 2, 'Sphynx', 'active'),
(30, 3, 'Native Rabbit', 'active'),
(31, 3, 'Guinea Pig', 'active'),
(32, 3, 'Hamster', 'active'),
(33, 4, 'isda', 'active'),
(34, 2, 'Sokoke', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `Event_ID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Event_Type` enum('SpayNeuter','General','Holiday') NOT NULL DEFAULT 'SpayNeuter',
  `Event_Date` date NOT NULL,
  `Barangay` varchar(100) DEFAULT NULL,
  `Max_Slots` int(11) NOT NULL,
  `Content` text DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Status` enum('Open','Closed','Cancelled') NOT NULL DEFAULT 'Open',
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Correction_Reason` varchar(255) DEFAULT NULL,
  `Corrected_By` int(11) DEFAULT NULL,
  `Corrected_At` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`Event_ID`, `Title`, `Event_Type`, `Event_Date`, `Barangay`, `Max_Slots`, `Content`, `Created_By`, `Status`, `Created_At`, `Correction_Reason`, `Corrected_By`, `Corrected_At`) VALUES
(4, 'Free Spay & Neuter', 'SpayNeuter', '2026-07-16', NULL, 2, NULL, 5, 'Closed', '2026-07-16 00:50:34', NULL, NULL, NULL),
(5, 'Anti-Rabies Vaccine', 'General', '2026-08-13', NULL, 0, 'Anti-Rabies Vaccine at barangay Lapasan', 5, 'Closed', '2026-08-01 10:11:50', NULL, NULL, NULL),
(6, 'Free Spay & Neuter', 'SpayNeuter', '2026-08-05', NULL, 50, '', 5, 'Closed', '2026-08-05 00:35:50', NULL, NULL, NULL),
(12, 'Automated Test Spay Campaign', 'SpayNeuter', '2026-09-17', NULL, 20, 'Automated test slot reservation', 5, 'Closed', '2026-09-10 10:05:16', NULL, NULL, NULL),
(24, 'Validation Cancel Test Event', 'SpayNeuter', '2030-01-15', NULL, 5, 'Temporary validation event', 1, 'Open', '2026-10-09 02:12:32', NULL, NULL, NULL),
(25, 'Validation Cancel Test Event', 'SpayNeuter', '2030-01-15', NULL, 5, 'Temporary validation event', 4, 'Open', '2026-10-09 02:12:43', NULL, NULL, NULL),
(28, 'Free Vaccine', 'General', '2026-10-09', 'Carmen', 0, 'Free anti-rabies vaccine', 5, 'Closed', '2026-10-09 11:28:28', NULL, NULL, NULL),
(29, 'Free anti rabies', 'General', '2026-10-09', 'Carmen', 0, '', 5, 'Closed', '2026-10-09 15:22:16', NULL, NULL, NULL),
(30, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-09', NULL, 50, '', 5, 'Closed', '2026-10-09 16:58:13', NULL, NULL, NULL),
(33, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-12', NULL, 300, '', 5, 'Closed', '2026-10-10 10:30:57', NULL, NULL, NULL),
(34, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-13', NULL, 300, '', 5, 'Open', '2026-10-10 12:54:32', NULL, NULL, NULL),
(36, 'Free Vaccination', 'General', '2026-10-14', 'Carmen', 0, '', 5, 'Open', '2026-10-10 15:12:22', NULL, NULL, NULL),
(37, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-15', NULL, 500, '', 5, 'Open', '2026-10-10 15:15:13', NULL, NULL, NULL),
(38, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-16', NULL, 300, '', 5, 'Open', '2026-10-10 15:53:12', NULL, NULL, NULL),
(39, 'Free Spay & Neuter', 'SpayNeuter', '2026-10-19', NULL, 300, '', 5, 'Open', '2026-10-10 16:02:26', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carousel_images`
--

CREATE TABLE `carousel_images` (
  `Carousel_ID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Image_Path` varchar(255) NOT NULL,
  `Sort_Order` int(11) NOT NULL DEFAULT 0,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `Created_By` int(11) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel_images`
--

INSERT INTO `carousel_images` (`Carousel_ID`, `Title`, `Subtitle`, `Image_Path`, `Sort_Order`, `Status`, `Created_By`, `Created_At`) VALUES
(3, '𝐋𝐆𝐔 𝐂𝐃𝐎 𝐂𝐈𝐓𝐘 𝐕𝐄𝐓𝐄𝐑𝐈𝐍𝐀𝐑𝐘 𝐎𝐅𝐅𝐈𝐂𝐄 | 𝐈𝐍𝐒𝐏𝐄𝐂𝐓𝐈𝐎𝐍 𝐀𝐍𝐃 𝐌𝐎𝐍𝐈𝐓𝐎𝐑𝐈𝐍𝐆', 'Yesterday,  meat inspectors and checkpoint personnel of the City Veterinary Office – Meat Inspection Division of Cagayan de Oro City conducted an inspection of livestock holding pens and lechon establishments within the city.\r\nThe activity focused on veri', 'uploads/carousel/carousel_a163a7b7f1b237003529d53cdf306bec.jpg', 0, 'active', 5, '2026-10-10 12:10:19'),
(4, 'Spay and Neuter Activity', 'The City Veterinary Office successfully participated in a Spay and Neuter Activity at Limketkai Mall in celebration of Animal Welfare Week, providing essential veterinary services to help promote responsible pet ownership and improve the welfare of our fu', 'uploads/carousel/carousel_5a418eb6ab3b854351436e2b4bb6cf61.jpg', 0, 'active', 5, '2026-10-10 12:11:22'),
(5, '𝐍𝐌𝐈𝐒 𝐑𝐓𝐎𝐂 𝐗 𝐚𝐧𝐝 𝐂𝐢𝐭𝐲 𝐕𝐞𝐭𝐞𝐫𝐢𝐧𝐚𝐫𝐲 𝐎𝐟𝐟𝐢𝐜𝐞 𝐒𝐭𝐫𝐞𝐧𝐠𝐭𝐡𝐞𝐧 𝐂𝐨𝐨𝐫𝐝𝐢𝐧𝐚𝐭𝐢𝐨𝐧 𝐟𝐨𝐫 𝐌𝐞𝐚𝐭 𝐒𝐚𝐟𝐞𝐭𝐲 𝐚𝐧𝐝 𝐏𝐮𝐛𝐥𝐢𝐜 𝐇𝐞𝐚𝐥𝐭𝐡', 'On October 2, 2026, the National Meat Inspection Service – Regional Technical Operation Center X (NMIS RTOC X) conducted a coordination meeting with the City Veterinary Office of Cagayan de Oro City.\r\nThe meeting provided an opportunity to discuss updates', 'uploads/carousel/carousel_dbc0634720a36cdcb060a7b9a8fb11d1.jpg', 0, 'active', 5, '2026-10-10 12:12:45'),
(6, '𝙇𝙞𝙗𝙧𝙚𝙣𝙜 𝘽𝙖𝙠𝙪𝙣𝙖 𝙆𝙤𝙣𝙩𝙧𝙖 𝙍𝙖𝙗𝙞𝙚𝙨 𝙨𝙖 𝘽𝙖𝙧𝙖𝙣𝙜𝙖𝙮 𝙋𝙪𝙚𝙧𝙩𝙤', 'Ang City Veterinary Office nagdapit sa tanang tag-iya og iro ug iring sa 𝘽𝘼𝙍𝘼𝙉𝙂𝘼𝙔 𝙋𝙐𝙀𝙍𝙏𝙊, nga dalhon ang ilang mga alagang hayop alang sa LIBRENG Rabies Vaccination.\r\nProtect your pets and keep your family safe from rabies. Responsible pet ownership start', 'uploads/carousel/carousel_8a2a5cddefc5af4346d62d72ab9a5086.jpg', 0, 'active', 5, '2026-10-10 12:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `cityvet_reminder_runs`
--

CREATE TABLE `cityvet_reminder_runs` (
  `Reminder_Key` varchar(80) NOT NULL,
  `Last_Run_Date` date DEFAULT NULL,
  `Updated_At` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cityvet_reminder_runs`
--

INSERT INTO `cityvet_reminder_runs` (`Reminder_Key`, `Last_Run_Date`, `Updated_At`) VALUES
('appointment_reminders', '2026-10-13', '2026-10-13 06:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `Consultation_ID` int(11) NOT NULL,
  `Owner_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vet_ID` int(11) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Concern_Description` text DEFAULT NULL,
  `Status` enum('Pending','Ongoing','Completed','Cancelled') DEFAULT 'Pending',
  `Meeting_Link` varchar(255) DEFAULT NULL,
  `Consultation_Date` datetime DEFAULT NULL,
  `Created_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultation_findings`
--

CREATE TABLE `consultation_findings` (
  `Finding_ID` int(11) NOT NULL,
  `Record_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Weight_Status` varchar(30) DEFAULT NULL,
  `Body_Condition_Score` tinyint(4) DEFAULT NULL,
  `Purpose` longtext DEFAULT NULL,
  `Findings` longtext DEFAULT NULL,
  `Diagnosis_Text` text DEFAULT NULL,
  `Recommendations` text DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultation_findings`
--

INSERT INTO `consultation_findings` (`Finding_ID`, `Record_ID`, `Pet_ID`, `Weight_Status`, `Body_Condition_Score`, `Purpose`, `Findings`, `Diagnosis_Text`, `Recommendations`, `Created_At`) VALUES
(2, 34, 81, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 10:54:32'),
(3, 35, 79, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 11:51:09'),
(4, 36, 80, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 11:54:55'),
(5, 37, 78, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 11:57:34'),
(6, 38, 79, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 13:14:39'),
(7, 39, 86, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 15:33:10'),
(8, 40, 87, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 15:42:18'),
(9, 41, 87, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 15:45:36'),
(10, 42, 87, NULL, NULL, '[]', '{\"mentation\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"eyes\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"ears\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"mouth_teeth_gums\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"skin_coat\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"neurologic\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"respiratory_lungs\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"cardiac_heart\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"gastrointestinal\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"abdomen\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"urogenital\":{\"normal\":false,\"items\":[],\"other\":\"\"},\"musculoskeletal\":{\"normal\":false,\"items\":[],\"other\":\"\"}}', NULL, NULL, '2026-10-10 15:50:22');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_master`
--

CREATE TABLE `diagnosis_master` (
  `Diagnosis_ID` int(11) NOT NULL,
  `Diagnosis_Name` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis_master`
--

INSERT INTO `diagnosis_master` (`Diagnosis_ID`, `Diagnosis_Name`, `Description`, `Status`) VALUES
(1, 'Preventive Care', 'Used for Anti-Rabies, Deworming, and other routine shots.', 'active'),
(2, 'Surgical Procedure', 'Used for Spay, Neuter, or minor surgeries.', 'active'),
(3, 'Follow-up/Routine', 'Used for post-op checkups or progress monitoring.', 'active'),
(4, 'Clinical Observation', 'Used when a pet is brought in for general symptoms.', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `first_aid_contents`
--

CREATE TABLE `first_aid_contents` (
  `Content_ID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  `Steps_Html` text NOT NULL,
  `Video_URL` varchar(255) DEFAULT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `first_aid_videos`
--

CREATE TABLE `first_aid_videos` (
  `Video_ID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Embed_Url` varchar(500) NOT NULL,
  `Tags` varchar(255) DEFAULT NULL,
  `Pet_Category` enum('cat','dog','all') NOT NULL DEFAULT 'all',
  `Video_Type` varchar(80) DEFAULT NULL,
  `Sort_Order` int(11) NOT NULL DEFAULT 0,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `Created_By` int(11) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_aid_videos`
--

INSERT INTO `first_aid_videos` (`Video_ID`, `Title`, `Description`, `Embed_Url`, `Tags`, `Pet_Category`, `Video_Type`, `Sort_Order`, `Status`, `Created_By`, `Created_At`) VALUES
(1, 'How to treat your dog\'s upset stomach', 'There are many ways you can treat your dog\'s upset stomach and diarrhea, both common reasons why pet parents bring their dogs to the vet. Get these tips from a veterinarian on how you can settle your dog\'s stomach and get their poops back to A+ status.', 'https://www.youtube.com/embed/kBVewt04Des', 'Treatment', 'all', NULL, 0, 'active', 5, '2026-08-04 00:30:31'),
(2, 'How to perform CPR on your dog or cat l GMA', 'Steve Ross of First Aid and CPR, LLC demonstrates how to perform CPR on a dog or cat.', 'https://www.youtube.com/embed/11d88s_iEUk', 'First Aid', 'all', NULL, 0, 'active', 5, '2026-10-10 12:15:01'),
(3, 'Home Remedies For Vomiting In Dogs', 'Dog vomiting isn’t pleasant for anyone ... but you can manage treatment at home with these natural remedies.', 'https://www.youtube.com/embed/9aNQU7_ifk0', 'Treatment', 'all', NULL, 0, 'active', 5, '2026-10-10 12:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_posts`
--

CREATE TABLE `homepage_posts` (
  `Post_ID` int(11) NOT NULL,
  `Section` enum('highlight','announcement') NOT NULL DEFAULT 'announcement',
  `Title` varchar(150) NOT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Badge` varchar(60) DEFAULT NULL,
  `Image_Path` varchar(255) DEFAULT NULL,
  `Facebook_URL` varchar(500) DEFAULT NULL,
  `Sort_Order` int(11) NOT NULL DEFAULT 0,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `Created_By` int(11) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `homepage_posts`
--

INSERT INTO `homepage_posts` (`Post_ID`, `Section`, `Title`, `Subtitle`, `Badge`, `Image_Path`, `Facebook_URL`, `Sort_Order`, `Status`, `Created_By`, `Created_At`) VALUES
(8, 'announcement', 'Free anti-rabies', 'Rabies Vaccination Drive in Barangay Puerto', '', NULL, 'https://www.facebook.com/photo/?fbid=1458765473101377&set=a.173778901600047', 0, 'active', 5, '2026-10-13 07:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `live_queue_counters`
--

CREATE TABLE `live_queue_counters` (
  `Session_Date` date NOT NULL,
  `Service_Code` varchar(20) NOT NULL,
  `Last_Number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `live_queue_counters`
--

INSERT INTO `live_queue_counters` (`Session_Date`, `Service_Code`, `Last_Number`) VALUES
('2026-10-10', 'CONSULTATION', 1),
('2026-10-10', 'DEWORMING', 1),
('2026-10-10', 'VACCINATION', 3);

-- --------------------------------------------------------

--
-- Table structure for table `live_queue_services`
--

CREATE TABLE `live_queue_services` (
  `Service_Code` varchar(20) NOT NULL,
  `Service_Name` varchar(60) NOT NULL,
  `Sort_Order` int(11) NOT NULL DEFAULT 0,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `live_queue_services`
--

INSERT INTO `live_queue_services` (`Service_Code`, `Service_Name`, `Sort_Order`, `Status`) VALUES
('CONSULTATION', 'Consultation', 2, 'active'),
('DEWORMING', 'Deworming', 3, 'active'),
('OTHER', 'Other', 99, 'active'),
('VACCINATION', 'Vaccination', 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `live_queue_tickets`
--

CREATE TABLE `live_queue_tickets` (
  `Ticket_ID` int(11) NOT NULL,
  `Session_Date` date NOT NULL,
  `Service_Code` varchar(20) NOT NULL,
  `Ticket_Number` int(11) NOT NULL,
  `Owner_ID` int(11) DEFAULT NULL,
  `Pet_ID` int(11) DEFAULT NULL,
  `Note` varchar(100) DEFAULT NULL,
  `Status` enum('Waiting','Called','Serving','Completed','Skipped','Cancelled') NOT NULL DEFAULT 'Waiting',
  `Recall_Count` int(11) NOT NULL DEFAULT 0,
  `Created_By` int(11) DEFAULT NULL,
  `Handled_By` int(11) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Called_At` datetime DEFAULT NULL,
  `Serving_At` datetime DEFAULT NULL,
  `Completed_At` datetime DEFAULT NULL,
  `Last_Recalled_At` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `live_queue_tickets`
--

INSERT INTO `live_queue_tickets` (`Ticket_ID`, `Session_Date`, `Service_Code`, `Ticket_Number`, `Owner_ID`, `Pet_ID`, `Note`, `Status`, `Recall_Count`, `Created_By`, `Handled_By`, `Created_At`, `Called_At`, `Serving_At`, `Completed_At`, `Last_Recalled_At`) VALUES
(1, '2026-10-10', 'CONSULTATION', 1, NULL, NULL, 'Jez', 'Completed', 0, 5, 5, '2026-10-10 01:40:32', '2026-10-10 01:40:38', '2026-10-10 01:40:45', '2026-10-10 01:40:46', NULL),
(2, '2026-10-10', 'DEWORMING', 1, NULL, NULL, 'he', 'Completed', 3, 5, 5, '2026-10-10 02:58:21', '2026-10-10 02:58:25', NULL, '2026-10-10 10:47:55', '2026-10-10 03:01:38'),
(3, '2026-10-10', 'VACCINATION', 1, 45, 81, 'cat vaccine', 'Completed', 1, 5, 5, '2026-10-10 10:48:21', '2026-10-10 10:48:38', '2026-10-10 10:49:30', '2026-10-10 10:49:33', '2026-10-10 10:48:46'),
(4, '2026-10-10', 'VACCINATION', 2, 46, 78, 'dog vaccine', 'Completed', 1, 5, 5, '2026-10-10 10:49:21', '2026-10-10 10:49:35', '2026-10-10 10:50:02', '2026-10-10 10:50:07', '2026-10-10 10:49:59'),
(5, '2026-10-10', 'VACCINATION', 3, NULL, NULL, 'Husky', 'Completed', 0, 5, 5, '2026-10-10 10:49:52', '2026-10-10 10:50:24', NULL, '2026-10-10 10:50:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_rate_limits`
--

CREATE TABLE `login_rate_limits` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `failed_attempts` int(11) NOT NULL DEFAULT 1,
  `last_attempt` int(11) NOT NULL,
  `locked_until` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_rate_limits`
--

INSERT INTO `login_rate_limits` (`id`, `ip_address`, `email`, `failed_attempts`, `last_attempt`, `locked_until`) VALUES
(172, '131.226.114.47', '', 4, 1791600148, 0),
(175, '175.176.83.186', '', 2, 1791603849, 0),
(177, '175.176.83.12', 'admin@gmail.com', 5, 1791610439, 1791610499),
(178, '175.176.83.12', '', 1, 1791611157, 0),
(181, '::1', '', 1, 1791846205, 0);

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `Record_ID` int(11) NOT NULL,
  `Appointment_ID` int(11) DEFAULT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vet_ID` int(11) DEFAULT NULL,
  `Diagnosis_ID` int(11) DEFAULT NULL,
  `Treatment` text DEFAULT NULL,
  `Visit_Date` datetime DEFAULT current_timestamp(),
  `Notes` text DEFAULT NULL,
  `Booklet` varchar(255) DEFAULT NULL,
  `Medicine_Used` text DEFAULT NULL,
  `Medicine_Picture` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `Lot_Number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`Record_ID`, `Appointment_ID`, `Pet_ID`, `Vet_ID`, `Diagnosis_ID`, `Treatment`, `Visit_Date`, `Notes`, `Booklet`, `Medicine_Used`, `Medicine_Picture`, `is_deleted`, `Lot_Number`) VALUES
(34, 119, 81, 6, NULL, '3-in-1 / 4-in-1 Vaccination', '2026-10-10 10:54:32', 'Walk-in consultation', NULL, 'Amoxicillin', 'uploads/medicine/48e605496b5bc8f519ee2b16e37b9aa8.webp', 0, NULL),
(35, 121, 79, 110, NULL, 'General Checkup', '2026-10-10 11:51:09', 'Walk-in consultation', NULL, 'Diphenhydramine', 'uploads/medicine/b5daa3b9299f651951895d49ef1c771b.jpg', 0, NULL),
(36, 122, 80, 108, NULL, 'General Checkup', '2026-10-10 11:54:55', 'Walk-in consultation', NULL, 'Metronidazole', 'uploads/medicine/8517939c4b45e045a22c72185a9a943b.jpg', 0, NULL),
(37, 123, 78, 108, NULL, '5-in-1 Vaccine', '2026-10-10 11:57:34', 'Walk-in consultation', NULL, 'Other: Nobivac', 'uploads/medicine/7dffafc055c51de0a57f8f9add797ead.jpg', 0, NULL),
(38, 128, 79, 108, NULL, 'Anti-Rabies Vaccination', '2026-10-10 13:14:39', 'Walk-in consultation', NULL, 'Other: Nobivac Rabies', 'uploads/medicine/89a75df0015970c2a7948aa76a284367.jpg', 0, NULL),
(39, 130, 86, 111, NULL, 'Deworming', '2026-10-10 15:33:10', 'Walk-in consultation', NULL, 'Amoxicillin', 'uploads/medicine/4261ee4fcd1ec0267b5a306ed4fffc14.webp', 0, NULL),
(40, 132, 87, 111, NULL, '5-in-1 Vaccine', '2026-10-10 15:42:18', 'Walk-in consultation', NULL, 'Amoxicillin', 'uploads/medicine/5969a5727bf53e2be73f05cc3d7517d4.webp', 0, NULL),
(41, 134, 87, 111, NULL, 'Anti-Rabies Vaccination', '2026-10-10 15:45:36', 'Walk-in consultation', NULL, 'Amoxicillin', 'uploads/medicine/c6a2f92184b08e2397086fcfae23320b.webp', 0, NULL),
(42, 136, 87, 110, NULL, '5-in-1 Vaccine', '2026-10-10 15:50:22', 'Walk-in consultation', NULL, 'Amoxicillin', 'uploads/medicine/8543c37646e158af17ebc25e72fba593.webp', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_catalog`
--

CREATE TABLE `medicine_catalog` (
  `Medicine_ID` int(11) NOT NULL,
  `Medicine_Name` varchar(120) NOT NULL,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Updated_At` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine_catalog`
--

INSERT INTO `medicine_catalog` (`Medicine_ID`, `Medicine_Name`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'Amoxicillin', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(2, 'Cephalexin', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(3, 'Doxycycline', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(4, 'Metronidazole', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(5, 'Meloxicam', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(6, 'Carprofen', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(7, 'Prednisolone', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(8, 'Diphenhydramine', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(9, 'Pyrantel Pamoate', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(10, 'Fenbendazole', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(11, 'Praziquantel', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(12, 'Fipronil', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Notification_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `Type` enum('Appointment','Vaccination','Consultation','System','SpayNeuter') NOT NULL,
  `Event_ID` int(11) DEFAULT NULL,
  `Is_Read` tinyint(1) DEFAULT 0,
  `Sent_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`Notification_ID`, `User_ID`, `Title`, `Message`, `Type`, `Event_ID`, `Is_Read`, `Sent_At`) VALUES
(1, 11, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-08-20. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 1, '2026-08-20 00:58:45'),
(2, 17, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-08-20. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-08-20 00:58:45'),
(3, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-08-20.', 'SpayNeuter', NULL, 1, '2026-08-20 00:59:06'),
(4, 11, 'Confirm Your Attendance', 'Your Spay/Neuter appointment for Free Spay & Neuter on 2026-08-20 has been confirmed. Please reply or contact the clinic to confirm attendance.', 'SpayNeuter', NULL, 1, '2026-08-20 00:59:11'),
(5, 11, 'New Event: Free Spay & Neuter', 'Free Spay & Neuter on 2026-08-21. ', 'System', NULL, 1, '2026-08-20 01:05:16'),
(6, 17, 'New Event: Free Spay & Neuter', 'Free Spay & Neuter on 2026-08-21. ', 'System', NULL, 0, '2026-08-20 01:05:16'),
(7, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:04:30'),
(8, 46, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:04:30'),
(9, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:04:42'),
(10, 50, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:04:42'),
(11, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:05:20'),
(12, 54, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:05:20'),
(13, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:31:25'),
(14, 58, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:31:25'),
(15, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:31:42'),
(16, 62, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:31:42'),
(17, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 10:32:59'),
(18, 66, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 10:32:59'),
(19, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 11:02:42'),
(20, 70, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 11:02:42'),
(21, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 1, '2026-09-10 11:23:59'),
(22, 74, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Concurrency Spay Event on 2026-09-24.', 'SpayNeuter', NULL, 0, '2026-09-10 11:24:00'),
(24, 11, 'New Spay & Neuter Schedule', 'Validation Cancel Test Event is available on 2030-01-15. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 1, '2026-10-09 02:12:43'),
(25, 17, 'New Spay & Neuter Schedule', 'Validation Cancel Test Event is available on 2030-01-15. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 02:12:43'),
(26, 18, 'New Spay & Neuter Schedule', 'Validation Cancel Test Event is available on 2030-01-15. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 02:12:43'),
(27, 76, 'New Spay & Neuter Schedule', 'Validation Cancel Test Event is available on 2030-01-15. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 02:12:43'),
(28, 77, 'New Spay & Neuter Schedule', 'Validation Cancel Test Event is available on 2030-01-15. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 02:12:43'),
(29, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:12:49'),
(30, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:13:01'),
(31, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:56:23'),
(32, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:56:23'),
(35, 5, 'Appointment Cancelled', 'A pet owner cancelled a General Checkup appointment scheduled for 2026-10-16 11:30:00.', 'Appointment', NULL, 1, '2026-10-09 02:58:45'),
(36, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:59:08'),
(37, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Validation Cancel Test Event on 2030-01-15.', 'SpayNeuter', NULL, 1, '2026-10-09 02:59:29'),
(38, 5, 'Appointment Cancelled', 'A pet owner cancelled a General Checkup appointment scheduled for 2026-10-17 09:30:00.', 'Appointment', NULL, 1, '2026-10-09 03:00:00'),
(39, 5, 'Appointment Cancelled', 'A pet owner cancelled a Deworming appointment scheduled for 2026-10-15 13:15:00.', 'Appointment', NULL, 1, '2026-10-09 03:01:47'),
(40, 5, 'Appointment Cancelled', 'A pet owner cancelled a General Checkup appointment scheduled for 2026-10-18 09:15:00.', 'Appointment', NULL, 1, '2026-10-09 03:02:19'),
(41, 5, 'Appointment Cancelled', 'A pet owner cancelled a General Checkup appointment scheduled for 2026-10-20 10:00:00.', 'Appointment', NULL, 1, '2026-10-09 03:03:22'),
(42, 5, 'Appointment Cancelled', 'A pet owner cancelled a Online Consultation appointment scheduled for 2026-10-17 14:00:00.', 'Appointment', NULL, 1, '2026-10-09 03:05:27'),
(43, 11, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 1, '2026-10-09 08:47:42'),
(44, 17, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 08:47:42'),
(45, 18, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 08:47:42'),
(46, 76, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 08:47:42'),
(47, 77, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', NULL, 0, '2026-10-09 08:47:42'),
(48, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-09.', 'SpayNeuter', NULL, 1, '2026-10-09 08:49:11'),
(49, 11, 'Confirm Your Attendance', 'Your Spay/Neuter appointment for Free Spay & Neuter on 2026-10-09 has been confirmed. Please reply or contact the office to confirm attendance.', 'SpayNeuter', NULL, 1, '2026-10-09 08:49:20'),
(50, 11, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 09, 2027.', 'Appointment', NULL, 1, '2026-10-09 10:45:45'),
(51, 11, 'New Event: Free Vaccine', 'Free Vaccine on 2026-10-09. Free rabies vaccine', 'System', 27, 1, '2026-10-09 11:27:41'),
(52, 11, 'New Event: Free Vaccine', 'Free Vaccine on 2026-10-09. Free anti-rabies vaccine', 'System', 28, 1, '2026-10-09 11:28:28'),
(53, 11, 'New Event: Free anti rabies', 'Free anti rabies on 2026-10-09. ', 'System', 29, 1, '2026-10-09 15:22:16'),
(54, 97, 'New Event: Free anti rabies', 'Free anti rabies on 2026-10-09. ', 'System', 29, 1, '2026-10-09 15:22:16'),
(55, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-09.', 'SpayNeuter', 26, 1, '2026-10-09 16:31:08'),
(56, 97, 'Callback Required for Spay/Neuter Request', 'We tried to contact you 3 times about your spay/neuter request for Free Spay & Neuter on 2026-10-09. Please call the City Veterinary Office today to confirm. Your slot will be cancelled if we do not hear from you by 5:00 PM.', 'SpayNeuter', NULL, 1, '2026-10-09 16:31:52'),
(57, 97, 'Spay/Neuter Booking Cancelled', 'Your booking for Free Spay & Neuter on 2026-10-09 was cancelled by the office.', 'SpayNeuter', 26, 1, '2026-10-09 16:34:19'),
(58, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-09.', 'SpayNeuter', 26, 1, '2026-10-09 16:35:46'),
(59, 97, 'Callback Required for Spay/Neuter Request', 'We tried to contact you 3 times about your spay/neuter request for Free Spay & Neuter on 2026-10-09. Please call the City Veterinary Office today to confirm. Your slot will be cancelled if we do not hear from you by 5:00 PM.', 'SpayNeuter', NULL, 1, '2026-10-09 16:36:01'),
(60, 97, 'Spay/Neuter Slot Confirmed', 'Your Spay/Neuter appointment for Free Spay & Neuter on 2026-10-09 is confirmed. Fast your pet for 8 hours before surgery: no food or water. Cut-off time is 1:00 PM. Bring a carrier/crate, bedding, and ballpen.\n\nSpay/Neuter reminders: first come, first served. Maximum 2 pets per owner. Pregnant, nursing, or sick pets are not allowed. Only 1 owner and 1 assistant may accompany the pet. Please avoid bringing children.', 'SpayNeuter', 26, 1, '2026-10-09 16:36:25'),
(61, 11, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 1, '2026-10-09 16:58:13'),
(62, 17, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(63, 18, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(64, 76, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(65, 77, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(66, 96, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(67, 97, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-09. Book your registered pets while slots are available.', 'SpayNeuter', 30, 0, '2026-10-09 16:58:13'),
(68, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-09.', 'SpayNeuter', 30, 1, '2026-10-09 16:58:23'),
(69, 97, 'Callback Required for Spay/Neuter Request', 'We tried to contact you 3 times about your spay/neuter request for Free Spay & Neuter on 2026-10-09. Please call the City Veterinary Office today to confirm. Your slot will be cancelled if we do not hear from you by 5:00 PM.', 'SpayNeuter', NULL, 1, '2026-10-09 16:58:57'),
(70, 11, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 1, '2026-10-09 17:06:29'),
(71, 17, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(72, 18, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(73, 76, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(74, 77, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(75, 96, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(76, 97, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 31, 0, '2026-10-09 17:06:29'),
(77, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 31, 1, '2026-10-09 17:06:37'),
(78, 97, 'Callback Required for Spay/Neuter Request', 'We tried to contact you 3 times about your spay/neuter request for Free Spay & Neuter on 2026-10-12. Please call the City Veterinary Office today to confirm. Your slot will be cancelled if we do not hear from you by 5:00 PM.', 'SpayNeuter', NULL, 0, '2026-10-09 17:06:43'),
(79, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 31, 1, '2026-10-09 17:07:03'),
(80, 97, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 31, 0, '2026-10-09 17:08:55'),
(81, 11, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 1, '2026-10-09 19:01:17'),
(82, 17, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(83, 18, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(84, 76, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(85, 77, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(86, 96, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(87, 97, 'New Event: Holiday', 'Holiday on 2026-10-13. ', 'System', 32, 0, '2026-10-09 19:01:17'),
(88, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 31, 1, '2026-10-10 02:25:48'),
(89, 11, 'Callback Required for Spay/Neuter Request', 'We tried to contact you 3 times about your spay/neuter request for Free Spay & Neuter on 2026-10-12. Please call the City Veterinary Office today to confirm. Your slot will be cancelled if we do not hear from you by 5:00 PM.', 'SpayNeuter', NULL, 1, '2026-10-10 02:26:26'),
(90, 11, 'Spay/Neuter Booking Cancelled', 'Your booking for Free Spay & Neuter on 2026-10-12 was cancelled by the office.', 'SpayNeuter', 31, 1, '2026-10-10 02:27:24'),
(91, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 31, 1, '2026-10-10 02:31:42'),
(92, 11, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 31, 1, '2026-10-10 02:51:06'),
(93, 11, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-12 has been confirmed by City Vet staff.', 'SpayNeuter', 31, 0, '2026-10-10 10:11:58'),
(94, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 33, 1, '2026-10-10 10:30:57'),
(95, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-12. Book your registered pets while slots are available.', 'SpayNeuter', 33, 1, '2026-10-10 10:30:57'),
(96, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:24'),
(97, 103, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:34'),
(98, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:44'),
(99, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:52'),
(100, 103, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:55'),
(101, 103, 'Spay/Neuter Booking Cancelled', 'Your booking for Free Spay & Neuter on 2026-10-12 was cancelled by the office.', 'SpayNeuter', 33, 1, '2026-10-10 10:39:58'),
(102, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 33, 1, '2026-10-10 10:40:08'),
(103, 103, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 33, 1, '2026-10-10 10:40:12'),
(104, 103, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-12 has been confirmed by City Vet staff.', 'SpayNeuter', 33, 1, '2026-10-10 10:40:15'),
(105, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-12.', 'SpayNeuter', 33, 1, '2026-10-10 10:45:57'),
(106, 101, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 33, 1, '2026-10-10 10:46:29'),
(107, 101, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-12 has been confirmed by City Vet staff.', 'SpayNeuter', 33, 1, '2026-10-10 10:46:32'),
(108, 101, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 1, '2026-10-10 10:54:32'),
(109, 103, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 1, '2026-10-10 11:57:34'),
(110, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 1, '2026-10-10 12:54:32'),
(111, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 1, '2026-10-10 12:54:32'),
(112, 104, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 1, '2026-10-10 12:54:32'),
(113, 105, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 0, '2026-10-10 12:54:32'),
(114, 106, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 0, '2026-10-10 12:54:32'),
(115, 107, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-13. Book your registered pets while slots are available.', 'SpayNeuter', 34, 0, '2026-10-10 12:54:32'),
(116, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-13.', 'SpayNeuter', 34, 1, '2026-10-10 12:54:41'),
(117, 101, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 34, 1, '2026-10-10 12:54:45'),
(118, 101, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-13 has been confirmed by City Vet staff.', 'SpayNeuter', 34, 1, '2026-10-10 12:55:14'),
(119, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-13.', 'SpayNeuter', 34, 1, '2026-10-10 12:58:51'),
(120, 103, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 34, 1, '2026-10-10 12:58:57'),
(121, 103, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-13 has been confirmed by City Vet staff.', 'SpayNeuter', 34, 1, '2026-10-10 12:59:33'),
(122, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 1, '2026-10-10 13:08:51'),
(123, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 1, '2026-10-10 13:08:51'),
(124, 104, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 1, '2026-10-10 13:08:51'),
(125, 105, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 0, '2026-10-10 13:08:51'),
(126, 106, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 0, '2026-10-10 13:08:51'),
(127, 107, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-10. Book your registered pets while slots are available.', 'SpayNeuter', 35, 0, '2026-10-10 13:08:51'),
(128, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-10.', 'SpayNeuter', 35, 1, '2026-10-10 13:09:49'),
(129, 103, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 35, 1, '2026-10-10 13:10:11'),
(130, 103, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-10 has been confirmed by City Vet staff.', 'SpayNeuter', 35, 1, '2026-10-10 13:10:49'),
(131, 104, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 1, '2026-10-10 13:14:39'),
(132, 101, 'New Event: Free Vaccination', 'Free Vaccination on 2026-10-14. ', 'System', 36, 1, '2026-10-10 15:12:22'),
(133, 105, 'New Event: Free Vaccination', 'Free Vaccination on 2026-10-14. ', 'System', 36, 0, '2026-10-10 15:12:22'),
(134, 114, 'New Event: Free Vaccination', 'Free Vaccination on 2026-10-14. ', 'System', 36, 0, '2026-10-10 15:12:22'),
(135, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 1, '2026-10-10 15:15:13'),
(136, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 1, '2026-10-10 15:15:13'),
(137, 104, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 1, '2026-10-10 15:15:13'),
(138, 105, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 0, '2026-10-10 15:15:13'),
(139, 106, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 0, '2026-10-10 15:15:13'),
(140, 107, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 0, '2026-10-10 15:15:13'),
(141, 114, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-15. Book your registered pets while slots are available.', 'SpayNeuter', 37, 0, '2026-10-10 15:15:13'),
(142, 114, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 26, 2026.', 'Appointment', NULL, 0, '2026-10-10 15:33:10'),
(143, 114, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 0, '2026-10-10 15:42:18'),
(144, 114, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 0, '2026-10-10 15:45:36'),
(145, 114, 'Follow-up Appointment Scheduled', 'A follow-up appointment has been scheduled on October 11, 2027.', 'Appointment', NULL, 0, '2026-10-10 15:50:22'),
(146, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-15.', 'SpayNeuter', 37, 1, '2026-10-10 15:52:51'),
(147, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 1, '2026-10-10 15:53:12'),
(148, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 1, '2026-10-10 15:53:12'),
(149, 104, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 1, '2026-10-10 15:53:12'),
(150, 105, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 0, '2026-10-10 15:53:12'),
(151, 106, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 0, '2026-10-10 15:53:12'),
(152, 107, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 0, '2026-10-10 15:53:12'),
(153, 114, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-16. Book your registered pets while slots are available.', 'SpayNeuter', 38, 0, '2026-10-10 15:53:12'),
(154, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-16.', 'SpayNeuter', 38, 1, '2026-10-10 15:54:08'),
(155, 114, 'Spay/Neuter Booking Cancelled', 'Your booking for Free Spay & Neuter on 2026-10-15 was cancelled by the office.', 'SpayNeuter', 37, 0, '2026-10-10 15:54:17'),
(156, 114, 'Spay/Neuter Slot Confirmed', 'THINGS TO DO / IMPORTANT REMINDERS\n\nTo ensure a safe and organized Spay and Neuter Activity, please observe the following:\n\n1. FAST YOUR PET FOR 8 HOURS BEFORE THE OPERATION. No food or water for 8 hours before surgery.\n2. Bring your own pet carrier or crate, especially for cats.\n3. First come, first served.\n4. Pregnant, nursing, or sick dogs and cats are not allowed to undergo the procedure.\n5. Bring your own bedding (sack or used tarp) for post-operative recovery.\n6. Cut-off time is 1:00 PM only. Latecomers will not be accepted.\n7. Maximum of 2 pets per owner is allowed.\n8. Only pet owners who confirmed their participation will be accepted.\n9. Bring your own ballpen for registration and documentation.\n10. Only 1 pet owner and 1 assistant may stay with the pet. Please avoid bringing children when possible.\n\nThank you for your cooperation and understanding. Your participation helps promote responsible pet ownership, animal welfare, and a rabies-free community.', 'SpayNeuter', 38, 0, '2026-10-10 15:54:46'),
(157, 114, 'Spay/Neuter Attendance Confirmed', 'Your attendance for Free Spay & Neuter on 2026-10-16 has been confirmed by City Vet staff.', 'SpayNeuter', 38, 0, '2026-10-10 15:56:29'),
(158, 101, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 1, '2026-10-10 16:02:26'),
(159, 103, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 1, '2026-10-10 16:02:26'),
(160, 104, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 1, '2026-10-10 16:02:26'),
(161, 105, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 0, '2026-10-10 16:02:26'),
(162, 106, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 0, '2026-10-10 16:02:26'),
(163, 107, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 0, '2026-10-10 16:02:26'),
(164, 114, 'New Spay & Neuter Schedule', 'Free Spay & Neuter is available on 2026-10-19. Book your registered pets while slots are available.', 'SpayNeuter', 39, 0, '2026-10-10 16:02:26'),
(165, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-19.', 'SpayNeuter', 39, 1, '2026-10-10 16:02:54'),
(166, 114, 'Spay/Neuter Booking Cancelled', 'Your booking for Free Spay & Neuter on 2026-10-19 was cancelled by the office.', 'SpayNeuter', 39, 0, '2026-10-10 16:03:44'),
(167, 5, 'Pending Spay/Neuter Booking', 'A pet owner submitted a booking request for Free Spay & Neuter on 2026-10-19.', 'SpayNeuter', 39, 1, '2026-10-10 16:04:11'),
(168, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Free Spay & Neuter on 2026-10-19.', 'SpayNeuter', 39, 1, '2026-10-10 16:04:23'),
(169, 5, 'Spay/Neuter Booking Cancelled', 'A pet owner cancelled a booking for Free Spay & Neuter on 2026-10-19.', 'SpayNeuter', 39, 1, '2026-10-10 16:04:27'),
(170, 107, 'Pet transfer request', 'Mimaw is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 0, '2026-10-12 15:25:45'),
(171, 101, 'Pet transfer request', 'Mimaw is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 15:27:08'),
(172, 101, 'Pet transfer cancelled', 'Mimaw transfer was cancelled by the current owner.', 'System', NULL, 1, '2026-10-12 15:32:35'),
(173, 5, 'Appointment Cancelled', 'A pet owner cancelled a Anti-Rabies Vaccination appointment scheduled for 2027-10-11 08:00:00.', 'Appointment', NULL, 1, '2026-10-12 15:44:12'),
(174, 101, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 15:44:24'),
(175, 101, 'Pet transfer cancelled', 'Hammy transfer was cancelled by the current owner.', 'System', NULL, 1, '2026-10-12 15:52:26'),
(176, 101, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 16:06:06'),
(177, 101, 'Pet transfer cancelled', 'Hammy transfer was cancelled by the current owner.', 'System', NULL, 1, '2026-10-12 16:07:16'),
(178, 101, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 16:10:07'),
(179, 101, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 16:10:15'),
(180, 101, 'Pet transfer completed', 'Hammy has been transferred to your account.', 'System', NULL, 1, '2026-10-12 16:11:59'),
(181, 104, 'Pet transfer completed', 'Hammy has been transferred to the new owner.', 'System', NULL, 1, '2026-10-12 16:11:59'),
(182, 104, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 16:12:50'),
(183, 104, 'Pet transfer completed', 'Hammy has been transferred to your account.', 'System', NULL, 1, '2026-10-12 16:13:40'),
(184, 101, 'Pet transfer completed', 'Hammy has been transferred to the new owner.', 'System', NULL, 1, '2026-10-12 16:13:40'),
(185, 101, 'Pet transfer request', 'Hammy is waiting for your transfer code. Enter the code given by the current owner to accept the pet.', 'System', NULL, 1, '2026-10-12 16:14:14'),
(186, 101, 'Pet transfer cancelled', 'Hammy transfer was cancelled by the current owner.', 'System', NULL, 0, '2026-10-12 16:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `otp_codes`
--

CREATE TABLE `otp_codes` (
  `OTP_ID` int(11) NOT NULL,
  `Purpose` enum('register','password_reset') NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Code_Hash` varchar(255) NOT NULL,
  `Expires_At` datetime NOT NULL,
  `Attempts` int(11) NOT NULL DEFAULT 0,
  `Used_At` datetime DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `Owner_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `Contact_number` varchar(15) NOT NULL,
  `Address` text DEFAULT NULL,
  `Barangay` varchar(100) DEFAULT NULL,
  `Status` enum('active','inactive') DEFAULT 'active',
  `Registration_Date` datetime DEFAULT current_timestamp(),
  `Owner_Code` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`Owner_ID`, `User_ID`, `First_name`, `Last_name`, `Contact_number`, `Address`, `Barangay`, `Status`, `Registration_Date`, `Owner_Code`) VALUES
(1, 4, 'Jessel Von', 'admin', '56952626566', 'lapasan, Carmen', NULL, 'active', '2026-02-14 09:42:01', 'OWN-2026-000001'),
(2, 6, 'manzano', 'Manzano', '09867541354', 'phinma coc, Carmen', NULL, 'active', '2026-02-14 09:46:56', 'OWN-2026-000002'),
(45, 101, 'Nick Rysher', 'Datu', '09617249115', 'ZONE 10 MUCO CARMEN, Carmen', 'Carmen', 'active', '2026-10-10 10:18:23', 'OWN-2026-000045'),
(46, 103, 'Jessel Von', 'Sabellina', '09056567514', 'Ubay-Ubay Street, Bayabas', 'Bayabas', 'active', '2026-10-10 10:24:35', 'OWN-2026-000046'),
(47, 104, 'Jezreel', 'Torion', '09943501652', 'Zone 2 Lapaz 2 Kolambog, Lapasan', 'Lapasan', 'active', '2026-10-10 10:42:51', 'OWN-2026-000047'),
(48, 105, 'Shin', 'Xio', '09266692596', 'Zone 6, Carmen', 'Carmen', 'active', '2026-10-10 10:46:01', 'OWN-2026-000048'),
(49, 106, 'Louie', 'Zapico', '09617249115', 'ZONE 10 MUCO CARMEN, Bulua', 'Bulua', 'active', '2026-10-10 10:56:55', 'OWN-2026-000049'),
(50, 107, 'Renee Fe', 'Casicas', '09617249115', 'ZONE 10 MUCO CARMEN, Kauswagan', 'Kauswagan', 'active', '2026-10-10 11:02:59', 'OWN-2026-000050'),
(51, 114, 'John', 'Ramos', '09056567514', 'ZONE 10 MUCO CARMEN, Carmen', 'Carmen', 'active', '2026-10-10 15:00:11', 'OWN-2026-000051');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `Pet_ID` int(11) NOT NULL,
  `Owner_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Species_ID` int(11) DEFAULT NULL,
  `Breed_ID` int(11) DEFAULT NULL,
  `Gender` enum('Male','Female','Unknown') DEFAULT 'Unknown',
  `Birthdate` date DEFAULT NULL,
  `Weight` decimal(5,2) DEFAULT NULL,
  `Color_Markings` varchar(100) DEFAULT NULL,
  `Status` enum('active','deceased','transferred','archived') DEFAULT 'active',
  `Profile_Pic` varchar(255) DEFAULT NULL,
  `Pet_Code` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`Pet_ID`, `Owner_ID`, `Name`, `Species_ID`, `Breed_ID`, `Gender`, `Birthdate`, `Weight`, `Color_Markings`, `Status`, `Profile_Pic`, `Pet_Code`) VALUES
(78, 46, 'Winter', 1, 7, 'Male', '2024-11-14', 20.00, 'Black and White', 'active', 'pet_658153868e9484a9fef1380f2e07c074.jpg', 'PET-2026-000078'),
(79, 47, 'Hammy', 1, 7, 'Male', '2026-03-10', 8.00, 'has heart shape mark in face', 'archived', 'pet_d2083b0e20e48da5540fc1c1d7a908e1.jpg', 'PET-2026-000079'),
(80, 47, 'Mimaw', 2, 23, 'Female', '2026-06-10', 4.00, '', 'active', 'pet_e1fde1b800f8880b10c0c77cf3e7461d.jpg', 'PET-2026-000080'),
(81, 45, 'Catto', 2, 34, 'Female', '2023-08-22', 15.00, 'mixed colors', 'active', 'pet_5270ecec7d62d9362df888d455c13e9b.jpg', 'PET-2026-000081'),
(82, 48, 'Xin', 2, 27, 'Female', '2026-01-10', 3.00, 'black spots', 'active', 'pet_2ed91876906fd2e0abfbe30aaa294a1e.jpg', 'PET-2026-000082'),
(83, 48, 'Sagi', 1, 1, 'Male', '2026-03-30', 3.00, 'white', 'active', 'pet_952fd8d087855205b2290f965148a20f.jpg', 'PET-2026-000083'),
(84, 48, 'Zhang', 2, 23, 'Male', '2025-10-11', 4.00, '', 'active', 'pet_df25f1c29250cbf50d1270b9347a2eac.jpg', 'PET-2026-000084'),
(85, 48, 'Zhang', 2, 23, 'Male', '2025-10-11', 4.00, '', 'archived', 'pet_96995351068a9f9815e2885b18e53ec7.jpg', 'PET-2026-000085'),
(86, 51, 'Kitty', 2, 34, 'Female', '2026-09-01', 15.00, '', 'archived', 'pet_f140bb3dc5a8faa126f84fdc2c6d747f.jpg', 'PET-2026-000086'),
(87, 51, 'Chuchu', 1, 7, 'Male', '2025-08-01', 25.00, '', 'active', 'pet_a74ec3aea297f0b4c722a7c7c642a921.jpg', 'PET-2026-000087'),
(88, 51, 'Chacha', 2, 24, 'Female', '2025-08-13', 15.00, '', 'active', NULL, 'PET-2026-000088'),
(89, 51, 'Chichi', 2, 34, 'Female', '2025-06-26', 18.00, '', 'active', 'pet_316fd3e0f7fee7b225e774ab94216fbd.jpg', 'PET-2026-000089');

-- --------------------------------------------------------

--
-- Table structure for table `pet_external_records`
--

CREATE TABLE `pet_external_records` (
  `External_Record_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Source_Clinic` varchar(255) DEFAULT NULL,
  `Record_Type` enum('Vaccination','Treatment','Deworming','Other') NOT NULL DEFAULT 'Other',
  `Record_Date` date DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Medicine` varchar(255) DEFAULT NULL,
  `Dosage` varchar(120) DEFAULT NULL,
  `Lot_Number` varchar(100) DEFAULT NULL,
  `Provider` varchar(255) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `Attachment_Path` varchar(255) DEFAULT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Verified_By` int(11) DEFAULT NULL,
  `Verified_At` datetime DEFAULT NULL,
  `Is_Deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_notes`
--

CREATE TABLE `pet_notes` (
  `Note_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Note_Text` text DEFAULT NULL,
  `Created_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_transfer_requests`
--

CREATE TABLE `pet_transfer_requests` (
  `Transfer_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `From_Owner_ID` int(11) NOT NULL,
  `To_Owner_ID` int(11) NOT NULL,
  `OTP_Hash` varchar(255) NOT NULL,
  `Expires_At` datetime NOT NULL,
  `Attempts` int(11) NOT NULL DEFAULT 0,
  `Status` enum('pending','completed','cancelled','expired') NOT NULL DEFAULT 'pending',
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Completed_At` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet_transfer_requests`
--

INSERT INTO `pet_transfer_requests` (`Transfer_ID`, `Pet_ID`, `From_Owner_ID`, `To_Owner_ID`, `OTP_Hash`, `Expires_At`, `Attempts`, `Status`, `Created_At`, `Completed_At`) VALUES
(1, 80, 47, 50, '$2y$10$f/HQB3Nt6VehNWq7EsUuHuS1R0pbBmIlEY9wQmvVyS0oQUhPnQ6iO', '2026-10-12 15:35:40', 0, 'expired', '2026-10-12 15:25:40', NULL),
(2, 80, 47, 45, '$2y$10$0duYehbckSA2bokwCdYuBO5tf60dbWPwpPlT3bn9AtJYi6cT5biTK', '2026-10-12 15:37:03', 0, 'cancelled', '2026-10-12 15:27:03', NULL),
(3, 79, 47, 45, '$2y$10$rUGMxAclqYllsaYpbkf2weAEKjsVwESAju.csAzE1.lB2AaDkNIgW', '2026-10-12 15:54:18', 0, 'cancelled', '2026-10-12 15:44:18', NULL),
(4, 79, 47, 45, '$2y$10$pmvEjx5HW6TfVm7GMolwm.Ta9b/Pa27grhqk98chz5LD.6YZPq5Au', '2026-10-12 16:16:01', 0, 'cancelled', '2026-10-12 16:06:01', NULL),
(5, 79, 47, 45, '$2y$10$YqRdtjGxGIz9TV6pVz22ceDSJL.iXVuiJV03l1SnMwQXbOeToXggS', '2026-10-12 16:20:02', 0, 'expired', '2026-10-12 16:10:02', NULL),
(6, 79, 47, 45, '$2y$10$ymgnB.TxjwLAoxvDzTnrYezeSEuVoctVH7kwRjoDwjJWxCPbU2PnO', '2026-10-12 16:20:10', 0, 'completed', '2026-10-12 16:10:10', '2026-10-12 16:11:59'),
(7, 79, 45, 47, '$2y$10$Jdfp3sXbnttkJkPOzpr.weftLGZTUTHHAQopLcNc7I9jYcys0UYqW', '2026-10-12 16:22:45', 0, 'completed', '2026-10-12 16:12:45', '2026-10-12 16:13:40'),
(8, 79, 47, 45, '$2y$10$tkXYfGKYl5nZ/1WiP42sVuFgWg3BwrcRvCNxmWVhqXHT36d/Whfyi', '2026-10-12 16:24:08', 0, 'cancelled', '2026-10-12 16:14:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Role_ID` int(11) NOT NULL,
  `Role_name` varchar(50) NOT NULL,
  `Description` text DEFAULT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`Role_ID`, `Role_name`, `Description`, `Status`) VALUES
(1, 'Administrator', 'Full system access', 'active'),
(2, 'Veterinarian', 'Medical record access', 'active'),
(3, 'Pet Owner', 'Client/Pet management', 'active'),
(4, 'Staff', 'Front desk operations', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `Service_ID` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Service_Name` varchar(100) NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Service_ID`, `Category_ID`, `Service_Name`, `Price`, `Status`) VALUES
(1, 1, 'General Checkup', 0.00, 'active'),
(3, 2, 'Spay/Neuter (Cat)', 20.00, 'active'),
(4, 2, 'Spay/Neuter (Dog)', 20.00, 'active'),
(6, 3, 'Deworming', 0.00, 'active'),
(7, 3, '5-in-1 Vaccine', 0.00, 'active'),
(8, 3, '3-in-1 / 4-in-1 Vaccination', 0.00, 'active'),
(653, 3, 'Anti-Rabies Vaccination', 0.00, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `Category_ID` int(11) NOT NULL,
  `Category_Name` varchar(50) NOT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`Category_ID`, `Category_Name`, `Status`) VALUES
(1, 'Consultation', 'active'),
(2, 'Surgery', 'active'),
(3, 'Vaccination', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `Species_ID` int(11) NOT NULL,
  `Species_Name` varchar(50) NOT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`Species_ID`, `Species_Name`, `Status`) VALUES
(1, 'Dog', 'active'),
(2, 'Cat', 'active'),
(3, 'Other/Exotic', 'active'),
(4, 'fish', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `First_name` varchar(100) DEFAULT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Status` enum('active','resigned','on_leave') DEFAULT 'active',
  `Is_Online` tinyint(1) NOT NULL DEFAULT 0,
  `Last_Activity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `User_ID`, `First_name`, `Last_name`, `Position`, `Status`, `Is_Online`, `Last_Activity`) VALUES
(1, 5, 'Nick Rysher', 'Datu', 'Front Desk', 'active', 1, '2026-08-20 01:20:26'),
(3, 6, 'John Angelo', 'Manzano', 'Lead Veterinarian', 'active', 0, NULL),
(4, 20, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(5, 21, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(10, 35, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(11, 36, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(12, 40, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(13, 41, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(14, 45, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(15, 46, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(16, 49, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(17, 50, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(18, 53, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(19, 54, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(20, 57, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(21, 58, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(22, 56, 'Admin', 'Sec', 'Administrator', 'active', 0, NULL),
(23, 61, 'Vet', 'Sec', 'Veterinarian', 'active', 0, NULL),
(24, 62, 'Staff', 'Sec', 'Clinic Staff', 'active', 0, NULL),
(25, 60, 'Admin', 'Sec', 'Administrator', 'active', 0, NULL),
(35, 92, 'Temp', 'Vet', 'Veterinarian', 'resigned', 0, NULL),
(36, 108, 'Xandrah Mae', 'Brua', 'Veterinarian', 'active', 0, NULL),
(37, 109, 'Rod Grayson', 'Baylo', 'Veterinarian', 'active', 0, NULL),
(38, 110, 'Ruperto', 'Desuyo', 'Veterinarian', 'active', 0, NULL),
(39, 111, 'Christopher Rhys', 'Gonzales', 'Veterinarian', 'active', 0, NULL),
(40, 112, 'Norman', 'Enriquez', 'Veterinarian', 'active', 0, NULL),
(41, 113, 'Helen Ann', 'Tacandong', 'Admin', 'active', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_catalog`
--

CREATE TABLE `treatment_catalog` (
  `Treatment_ID` int(11) NOT NULL,
  `Treatment_Name` varchar(120) NOT NULL,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `Created_At` datetime NOT NULL DEFAULT current_timestamp(),
  `Updated_At` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_catalog`
--

INSERT INTO `treatment_catalog` (`Treatment_ID`, `Treatment_Name`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'General Consultation', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(2, 'General Checkup', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(3, 'Physical Examination', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(4, 'Anti-Rabies Vaccination', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(5, '5-in-1 Vaccination', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(6, 'Parvo Vaccination', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(7, 'Deworming', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(8, 'Spay/Neuter', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(9, 'Post-Operative Checkup', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(10, 'Wound Care', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01'),
(11, 'Ear Cleaning', 'active', '2026-10-09 09:04:01', '2026-10-09 09:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Role_ID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password_Hash` varchar(255) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Status` enum('active','inactive','banned') DEFAULT 'active',
  `Is_Online` tinyint(1) NOT NULL DEFAULT 0,
  `Last_Activity` datetime DEFAULT NULL,
  `Created_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Role_ID`, `Username`, `Password_Hash`, `Email`, `Phone_number`, `Status`, `Is_Online`, `Last_Activity`, `Created_At`) VALUES
(4, 1, 'Jessel Von', '$2y$12$K3v0K9E6X8z2M1N4O7P0ReG5H6I7J8K9L0M1N2O3P4Q5R6S7T8U9V', 'admin@gmail.com', '56952626566', 'active', 0, NULL, '2026-02-14 09:42:01'),
(5, 4, 'Datu', '$2y$12$zJxTuFs1FMYaP/7UgdvtPuTaRDSV.sxru.Is6ysJddq07b0KXgfli', 'datu@gmail.com', '0986754135', 'active', 1, '2026-10-13 07:04:07', '2026-02-14 09:46:17'),
(6, 2, 'manzano', '$2y$10$j3E1xqpTBCUEBpV9lv3nGO1WbyZHEkWri98OD8CYZRBftfk7WMmpK', 'manzano@gmail.com', '09867541354', 'active', 0, NULL, '2026-02-14 09:46:56'),
(11, 3, 'Jezi', '$2y$10$vJiRKSDSdlMBcdS301Vv2OJurtVfgCrZ8PrbvhXcg3V5Fpc.WyyEu', 'jezreel@gmail.com', '09658254825', 'inactive', 0, NULL, '2026-03-29 16:41:39'),
(17, 3, 'Kent Vj', '$2y$10$kdQ3h20C96AtDQE.TcaoG.BtbHWL8TpY5MTlfFLIBUevym/r/qd5y', 'asxxs@gmail.com', '09943501652', 'inactive', 0, NULL, '2026-08-20 00:49:50'),
(18, 3, 'mike@gmail.com', '$2y$10$Z8Y7pRM1vsZxdOWd5xP4xunShl6CYB/Nu1EJYq62igyCI/ZSCo5a2', 'mike@gmail.com', '09943501652', 'inactive', 0, NULL, '2026-09-06 22:41:45'),
(76, 3, 'jaylyn@gmail.com', '$2y$10$8G.axSyxYjDfCrEOnxBL6uf8gD0O5QM0cQMLvpvfUcXU4f6kO9kcG', 'jaylyn@gmail.com', '09630961156', 'inactive', 0, NULL, '2026-09-12 23:37:10'),
(77, 3, 'test@gmail.com', '$2y$10$tTs9drAOfPjPiZJlF85Zw.0wCTAxffXJNY2l8Nk7HPQ7ABEqQAZQu', 'test@gmail.com', '09943501652', 'inactive', 0, NULL, '2026-09-15 23:03:22'),
(92, 2, '__temp_vet_999__', '', '__temp_vet_999__@example.com', '0900000000', 'inactive', 0, NULL, '2026-10-09 01:35:49'),
(96, 3, 'Kurt Tenajeros', '$2y$12$xMjSYXUF8HM0aX9DJz3LTuKIrNb5JVftUA5kVGevnSpzy3eosa6i.', 'Jes@gmail.com', '09943501652', 'inactive', 1, '2026-10-09 12:30:27', '2026-10-09 12:30:14'),
(97, 3, 'nick', '$2y$12$Q.0UvASaKiVKNGOsWTAs3.EviQkeaJML0WT3WmPRU0svsd9ukfj5q', 'nickr@gmail.com', '09056567514', 'inactive', 1, '2026-10-10 07:40:41', '2026-10-09 15:20:56'),
(101, 3, 'Nick Rysher Paculba Datu', '$2y$12$E3cYrY.pXObisajXF6mWAugAfixCfmTnendkrCsRY03u7dxUr9z4K', 'shintarokojinowaro@gmail.com', '09617249115', 'active', 0, NULL, '2026-10-10 10:18:23'),
(103, 3, 'Jessel Von Sabellina', '$2y$12$9ZCFc2pc8M7T7nEVVog40OL5VwYRJy9GmT3HVrviAKzo//tTazzZa', 'jvsabellina7@gmail.com', '09056567514', 'active', 0, NULL, '2026-10-10 10:24:35'),
(104, 3, 'Jezreel Adrian', '$2y$12$PabLuiB6nVGfkrRHSDHq2O9IAZ.UUzTf7.9RzxDkhwQaQScoy.2w.', 'jema.torion.coc@phinmaed.com', '09943501652', 'active', 0, NULL, '2026-10-10 10:42:51'),
(105, 3, 'taeegasm@gmail.com', '$2y$12$6d.GsBcMaBjef2jaQ4exNOC3AOTx9PLzE80/GyWvlr8QL99u1tWuK', 'taeegasm@gmail.com', '09266692596', 'active', 1, '2026-10-10 11:17:36', '2026-10-10 10:46:01'),
(106, 3, 'louie.zapico101@gmail.com', '$2y$12$iTPO35BC2ZKneGuj4NFqwu.Wm1wnPYYqiA41O.nzZGo4xAVC5W1e2', 'louie.zapico101@gmail.com', '09617249115', 'active', 0, NULL, '2026-10-10 10:56:55'),
(107, 3, 'shizoukojinowaro@gmail.com', '$2y$12$JYvFD.qMJBeZm13n53VvFO780MQcUrcsJb1immGG9TIJ3c7tSIPlO', 'shizoukojinowaro@gmail.com', '09617249115', 'active', 0, NULL, '2026-10-10 11:02:59'),
(108, 2, 'Xandrah', '$2y$12$3y1q.8DnBPXi1Ojfflc83OmJO2QNe4Ij4xrVcj0Bkq1zVmE1Mza6S', 'xandrah@gmail.com', '', 'active', 1, '2026-10-10 11:52:01', '2026-10-10 11:35:46'),
(109, 2, 'grayson', '$2y$12$gzFI.u8BTPaaJA.pP3lv3O2sYXR071..dRQmps.QcDUKjd9Xb6MqS', 'grayson@gmail.com', '', 'active', 0, NULL, '2026-10-10 11:36:58'),
(110, 2, 'ruperto', '$2y$12$3FG49tZx60z/IntymGuwW.DEi7huWrJLp7OSWJWjZxZHhsLwOmJj2', 'ruperto@gmail.com', '', 'active', 1, '2026-10-10 16:09:38', '2026-10-10 11:38:04'),
(111, 2, 'gonzales', '$2y$12$FTHpmZ/a2x1ftB2Ka7YxIe/cGCchhSkFZQhOOU9bXvdJtV6a6aNF2', 'gonzales@gmail.com', '', 'active', 0, NULL, '2026-10-10 11:38:51'),
(112, 2, 'norman', '$2y$12$bzLih/n0I2ZpOjPvYpa6Ae318vVmrPre7cshoYM2PCC9JmyU0dHbq', 'norman@gmail.com', '', 'active', 0, NULL, '2026-10-10 11:39:39'),
(113, 1, 'Helen Ann', '$2y$12$0uCbNMXnxN5tgxpnVuEKB.dle1Dx8/d1mrMQMEqdlkhZHb2ouYYyW', 'nickrysherdatu@gmail.com', '', 'active', 1, '2026-10-10 15:30:18', '2026-10-10 13:36:17'),
(114, 3, 'nipa.datu.coc@phinmaed.com', '$2y$12$pQAJixxexAIfyf5O8v8.3Oxx3TOdnY4UeyR1NHuy7M/16C836gE02', 'nipa.datu.coc@phinmaed.com', '09056567514', 'active', 1, '2026-10-10 16:04:32', '2026-10-10 15:00:11');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinations`
--

CREATE TABLE `vaccinations` (
  `Vaccination_ID` int(11) NOT NULL,
  `Pet_ID` int(11) NOT NULL,
  `Vaccine_Name` varchar(100) NOT NULL,
  `Date_Administered` date NOT NULL,
  `Next_Due_Date` date DEFAULT NULL,
  `Vet_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccinations`
--

INSERT INTO `vaccinations` (`Vaccination_ID`, `Pet_ID`, `Vaccine_Name`, `Date_Administered`, `Next_Due_Date`, `Vet_ID`) VALUES
(1, 2, 'Anti-Rabies Vaccination', '2026-10-09', '2027-10-09', 6),
(2, 81, '3-in-1 / 4-in-1 Vaccination', '2026-10-10', '2027-10-11', 6),
(3, 78, '5-in-1 Vaccine', '2026-10-10', '2027-10-11', 108),
(4, 79, 'Anti-Rabies Vaccination', '2026-10-10', '2027-10-11', 108),
(5, 86, '3-in-1 / 4-in-1 Vaccination', '2026-10-10', '2026-10-26', 111),
(6, 87, '5-in-1 Vaccine', '2026-10-10', '2027-10-11', 111),
(7, 87, 'Anti-Rabies Vaccination', '2026-10-10', '2027-10-11', 111),
(8, 87, '5-in-1 Vaccine', '2026-10-10', '2027-10-11', 110);

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_schedule_rules`
--

CREATE TABLE `vaccination_schedule_rules` (
  `Rule_ID` int(11) NOT NULL,
  `Species_ID` int(11) NOT NULL,
  `Age_Weeks` int(11) NOT NULL,
  `Procedure_Name` varchar(100) NOT NULL,
  `Repeat_Value` int(11) NOT NULL,
  `Repeat_Unit` enum('days','weeks','months','years') NOT NULL,
  `Repeat_Note` varchar(120) DEFAULT NULL,
  `Sort_Order` int(11) NOT NULL DEFAULT 0,
  `Status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccination_schedule_rules`
--

INSERT INTO `vaccination_schedule_rules` (`Rule_ID`, `Species_ID`, `Age_Weeks`, `Procedure_Name`, `Repeat_Value`, `Repeat_Unit`, `Repeat_Note`, `Sort_Order`, `Status`) VALUES
(1, 1, 2, 'Deworming', 2, 'weeks', '', 1, 'active'),
(2, 1, 4, 'Deworming', 2, 'weeks', '', 2, 'active'),
(3, 1, 6, '5-in-1 Vaccine', 2, 'weeks', 'Private clinic', 3, 'active'),
(4, 1, 8, '5-in-1 Vaccine', 2, 'weeks', 'Private clinic', 4, 'active'),
(5, 1, 10, 'Deworming', 4, 'weeks', '', 5, 'active'),
(6, 1, 10, '5-in-1 Vaccine', 3, 'months', '', 6, 'active'),
(7, 1, 12, 'Anti-Rabies Vaccination', 1, 'years', 'City Veterinary Office', 7, 'active'),
(8, 1, 14, '5-in-1 Vaccine', 1, 'years', 'City Veterinary Office', 8, 'active'),
(9, 2, 4, 'Deworming', 2, 'weeks', '', 1, 'active'),
(10, 2, 6, 'Deworming', 2, 'weeks', '', 2, 'active'),
(11, 2, 8, '3-in-1 or 4-in-1 Vaccine', 2, 'weeks', '', 3, 'active'),
(12, 2, 8, 'Deworming', 3, 'months', '', 4, 'active'),
(13, 2, 11, '3-in-1 or 4-in-1 Vaccine', 3, 'weeks', '', 5, 'active'),
(14, 2, 12, 'Anti-Rabies Vaccination', 1, 'years', 'City Veterinary Office', 6, 'active'),
(15, 2, 14, '3-in-1 or 4-in-1 Vaccine', 1, 'years', '', 7, 'active'),
(22, 1, 6, 'Deworming', 4, 'weeks', '', 3, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `vet_availability`
--

CREATE TABLE `vet_availability` (
  `Availability_ID` int(11) NOT NULL,
  `Vet_User_ID` int(11) NOT NULL,
  `Day_Of_Week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `Status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vet_availability`
--

INSERT INTO `vet_availability` (`Availability_ID`, `Vet_User_ID`, `Day_Of_Week`, `Start_Time`, `End_Time`, `Status`) VALUES
(1, 35, 'Monday', '09:00:00', '17:00:00', 'active'),
(2, 6, 'Monday', '09:00:00', '17:00:00', 'active'),
(3, 92, 'Monday', '09:00:00', '17:00:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `vet_duty_schedule`
--

CREATE TABLE `vet_duty_schedule` (
  `Duty_ID` int(11) NOT NULL,
  `Duty_Date` date NOT NULL,
  `Vet_User_ID` int(11) NOT NULL,
  `Created_By` int(11) DEFAULT NULL,
  `Created_At` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vet_duty_schedule`
--

INSERT INTO `vet_duty_schedule` (`Duty_ID`, `Duty_Date`, `Vet_User_ID`, `Created_By`, `Created_At`) VALUES
(10, '2026-10-01', 108, 5, '2026-10-10 11:45:31'),
(11, '2026-10-02', 109, 5, '2026-10-10 11:45:37'),
(12, '2026-10-05', 110, 5, '2026-10-10 11:45:43'),
(13, '2026-10-06', 111, 5, '2026-10-10 11:45:50'),
(14, '2026-10-07', 112, 5, '2026-10-10 11:45:56'),
(15, '2026-10-08', 108, 5, '2026-10-10 11:46:01'),
(16, '2026-10-09', 109, 5, '2026-10-10 11:46:10'),
(17, '2026-10-12', 110, 5, '2026-10-10 11:46:23'),
(18, '2026-10-13', 111, 5, '2026-10-10 11:46:33'),
(19, '2026-10-14', 112, 5, '2026-10-10 11:46:42'),
(20, '2026-10-15', 108, 5, '2026-10-10 11:46:47'),
(21, '2026-10-16', 109, 5, '2026-10-10 11:46:54'),
(22, '2026-10-19', 110, 5, '2026-10-10 11:47:03'),
(23, '2026-10-20', 111, 5, '2026-10-10 11:47:12'),
(24, '2026-10-21', 112, 5, '2026-10-10 11:47:19'),
(25, '2026-10-22', 108, 5, '2026-10-10 11:47:25'),
(26, '2026-10-23', 109, 5, '2026-10-10 11:47:32'),
(27, '2026-10-26', 110, 5, '2026-10-10 11:47:39'),
(28, '2026-10-27', 111, 5, '2026-10-10 11:47:46'),
(29, '2026-10-28', 112, 5, '2026-10-10 11:47:56'),
(30, '2026-10-29', 108, 5, '2026-10-10 11:48:02'),
(31, '2026-10-30', 109, 5, '2026-10-10 11:48:09'),
(33, '2026-10-10', 111, 5, '2026-10-10 15:22:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Service_ID` (`Service_ID`),
  ADD KEY `idx_appointments_event_status` (`Event_ID`,`Status`);

--
-- Indexes for table `appointment_pets`
--
ALTER TABLE `appointment_pets`
  ADD PRIMARY KEY (`Appointment_Pet_ID`),
  ADD UNIQUE KEY `uniq_appointment_pet` (`Appointment_ID`,`Pet_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`Log_ID`),
  ADD KEY `idx_audit_timestamp` (`Timestamp`),
  ADD KEY `idx_audit_actor_timestamp` (`User_ID`,`Timestamp`),
  ADD KEY `idx_audit_entity_record` (`Table_Affected`,`Record_ID`),
  ADD KEY `idx_audit_action_timestamp` (`Action`,`Timestamp`);

--
-- Indexes for table `breeds`
--
ALTER TABLE `breeds`
  ADD PRIMARY KEY (`Breed_ID`),
  ADD KEY `Species_ID` (`Species_ID`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `carousel_images`
--
ALTER TABLE `carousel_images`
  ADD PRIMARY KEY (`Carousel_ID`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `cityvet_reminder_runs`
--
ALTER TABLE `cityvet_reminder_runs`
  ADD PRIMARY KEY (`Reminder_Key`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`Consultation_ID`),
  ADD KEY `Owner_ID` (`Owner_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`);

--
-- Indexes for table `consultation_findings`
--
ALTER TABLE `consultation_findings`
  ADD PRIMARY KEY (`Finding_ID`),
  ADD UNIQUE KEY `uq_consultation_finding_record` (`Record_ID`),
  ADD KEY `idx_consultation_finding_pet` (`Pet_ID`);

--
-- Indexes for table `diagnosis_master`
--
ALTER TABLE `diagnosis_master`
  ADD PRIMARY KEY (`Diagnosis_ID`),
  ADD UNIQUE KEY `Diagnosis_Name` (`Diagnosis_Name`);

--
-- Indexes for table `first_aid_contents`
--
ALTER TABLE `first_aid_contents`
  ADD PRIMARY KEY (`Content_ID`);

--
-- Indexes for table `first_aid_videos`
--
ALTER TABLE `first_aid_videos`
  ADD PRIMARY KEY (`Video_ID`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `homepage_posts`
--
ALTER TABLE `homepage_posts`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `Section` (`Section`),
  ADD KEY `Created_By` (`Created_By`);

--
-- Indexes for table `live_queue_counters`
--
ALTER TABLE `live_queue_counters`
  ADD PRIMARY KEY (`Session_Date`,`Service_Code`);

--
-- Indexes for table `live_queue_services`
--
ALTER TABLE `live_queue_services`
  ADD PRIMARY KEY (`Service_Code`);

--
-- Indexes for table `live_queue_tickets`
--
ALTER TABLE `live_queue_tickets`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD UNIQUE KEY `uniq_ticket_per_session` (`Session_Date`,`Service_Code`,`Ticket_Number`),
  ADD KEY `idx_lq_session_status` (`Session_Date`,`Status`),
  ADD KEY `idx_lq_owner` (`Owner_ID`),
  ADD KEY `idx_lq_pet` (`Pet_ID`),
  ADD KEY `idx_lq_service` (`Service_Code`),
  ADD KEY `idx_lq_created_by` (`Created_By`),
  ADD KEY `idx_lq_handled_by` (`Handled_By`);

--
-- Indexes for table `login_rate_limits`
--
ALTER TABLE `login_rate_limits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ip_email` (`ip_address`,`email`),
  ADD KEY `idx_last_attempt` (`last_attempt`),
  ADD KEY `idx_ip` (`ip_address`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`Record_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`),
  ADD KEY `Vet_ID` (`Vet_ID`),
  ADD KEY `fk_medical_diagnosis` (`Diagnosis_ID`),
  ADD KEY `idx_medical_records_appointment` (`Appointment_ID`);

--
-- Indexes for table `medicine_catalog`
--
ALTER TABLE `medicine_catalog`
  ADD PRIMARY KEY (`Medicine_ID`),
  ADD UNIQUE KEY `uq_medicine_name` (`Medicine_Name`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Notification_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `idx_notifications_event` (`Event_ID`);

--
-- Indexes for table `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`OTP_ID`),
  ADD KEY `idx_email` (`Email`),
  ADD KEY `idx_email_purpose` (`Email`,`Purpose`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`Owner_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`),
  ADD UNIQUE KEY `uq_owners_owner_code` (`Owner_Code`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`Pet_ID`),
  ADD UNIQUE KEY `uq_pets_pet_code` (`Pet_Code`),
  ADD KEY `Owner_ID` (`Owner_ID`),
  ADD KEY `Species_ID` (`Species_ID`),
  ADD KEY `Breed_ID` (`Breed_ID`);

--
-- Indexes for table `pet_external_records`
--
ALTER TABLE `pet_external_records`
  ADD PRIMARY KEY (`External_Record_ID`),
  ADD KEY `idx_external_pet` (`Pet_ID`),
  ADD KEY `pet_external_records_created_by_fk` (`Created_By`),
  ADD KEY `pet_external_records_verified_by_fk` (`Verified_By`);

--
-- Indexes for table `pet_notes`
--
ALTER TABLE `pet_notes`
  ADD PRIMARY KEY (`Note_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`);

--
-- Indexes for table `pet_transfer_requests`
--
ALTER TABLE `pet_transfer_requests`
  ADD PRIMARY KEY (`Transfer_ID`),
  ADD KEY `idx_ptr_pet` (`Pet_ID`),
  ADD KEY `idx_ptr_from_owner` (`From_Owner_ID`),
  ADD KEY `idx_ptr_to_owner` (`To_Owner_ID`),
  ADD KEY `idx_ptr_status` (`Status`),
  ADD KEY `idx_ptr_expires` (`Expires_At`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Role_ID`),
  ADD UNIQUE KEY `Role_name` (`Role_name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Service_ID`),
  ADD UNIQUE KEY `Service_Name` (`Service_Name`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`Category_ID`),
  ADD UNIQUE KEY `Category_Name` (`Category_Name`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`Species_ID`),
  ADD UNIQUE KEY `Species_Name` (`Species_Name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD UNIQUE KEY `User_ID` (`User_ID`);

--
-- Indexes for table `treatment_catalog`
--
ALTER TABLE `treatment_catalog`
  ADD PRIMARY KEY (`Treatment_ID`),
  ADD UNIQUE KEY `uq_treatment_name` (`Treatment_Name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `Role_ID` (`Role_ID`);

--
-- Indexes for table `vaccinations`
--
ALTER TABLE `vaccinations`
  ADD PRIMARY KEY (`Vaccination_ID`),
  ADD KEY `Pet_ID` (`Pet_ID`);

--
-- Indexes for table `vaccination_schedule_rules`
--
ALTER TABLE `vaccination_schedule_rules`
  ADD PRIMARY KEY (`Rule_ID`),
  ADD UNIQUE KEY `uq_vaccination_rule` (`Species_ID`,`Age_Weeks`,`Procedure_Name`),
  ADD KEY `idx_vaccination_rule_species` (`Species_ID`);

--
-- Indexes for table `vet_availability`
--
ALTER TABLE `vet_availability`
  ADD PRIMARY KEY (`Availability_ID`),
  ADD KEY `Vet_User_ID` (`Vet_User_ID`);

--
-- Indexes for table `vet_duty_schedule`
--
ALTER TABLE `vet_duty_schedule`
  ADD PRIMARY KEY (`Duty_ID`),
  ADD UNIQUE KEY `uq_duty_date_vet` (`Duty_Date`,`Vet_User_ID`),
  ADD KEY `idx_duty_vet` (`Vet_User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `appointment_pets`
--
ALTER TABLE `appointment_pets`
  MODIFY `Appointment_Pet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `Log_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1290;

--
-- AUTO_INCREMENT for table `breeds`
--
ALTER TABLE `breeds`
  MODIFY `Breed_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `carousel_images`
--
ALTER TABLE `carousel_images`
  MODIFY `Carousel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `Consultation_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultation_findings`
--
ALTER TABLE `consultation_findings`
  MODIFY `Finding_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `diagnosis_master`
--
ALTER TABLE `diagnosis_master`
  MODIFY `Diagnosis_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `first_aid_contents`
--
ALTER TABLE `first_aid_contents`
  MODIFY `Content_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_aid_videos`
--
ALTER TABLE `first_aid_videos`
  MODIFY `Video_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `homepage_posts`
--
ALTER TABLE `homepage_posts`
  MODIFY `Post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `live_queue_tickets`
--
ALTER TABLE `live_queue_tickets`
  MODIFY `Ticket_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_rate_limits`
--
ALTER TABLE `login_rate_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `Record_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `medicine_catalog`
--
ALTER TABLE `medicine_catalog`
  MODIFY `Medicine_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6159;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `Notification_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `OTP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `Owner_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `Pet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `pet_external_records`
--
ALTER TABLE `pet_external_records`
  MODIFY `External_Record_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_notes`
--
ALTER TABLE `pet_notes`
  MODIFY `Note_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pet_transfer_requests`
--
ALTER TABLE `pet_transfer_requests`
  MODIFY `Transfer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `Role_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `Service_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=823;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `Species_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `treatment_catalog`
--
ALTER TABLE `treatment_catalog`
  MODIFY `Treatment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5646;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `vaccinations`
--
ALTER TABLE `vaccinations`
  MODIFY `Vaccination_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vaccination_schedule_rules`
--
ALTER TABLE `vaccination_schedule_rules`
  MODIFY `Rule_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12917;

--
-- AUTO_INCREMENT for table `vet_availability`
--
ALTER TABLE `vet_availability`
  MODIFY `Availability_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vet_duty_schedule`
--
ALTER TABLE `vet_duty_schedule`
  MODIFY `Duty_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_event_fk` FOREIGN KEY (`Event_ID`) REFERENCES `calendar_events` (`Event_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Owner_ID`) REFERENCES `owners` (`Owner_ID`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`),
  ADD CONSTRAINT `appointments_ibfk_3` FOREIGN KEY (`Service_ID`) REFERENCES `services` (`Service_ID`);

--
-- Constraints for table `appointment_pets`
--
ALTER TABLE `appointment_pets`
  ADD CONSTRAINT `appointment_pets_appointment_fk` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointments` (`Appointment_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointment_pets_pet_fk` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`) ON DELETE CASCADE;

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`);

--
-- Constraints for table `breeds`
--
ALTER TABLE `breeds`
  ADD CONSTRAINT `breeds_ibfk_1` FOREIGN KEY (`Species_ID`) REFERENCES `species` (`Species_ID`);

--
-- Constraints for table `consultation_findings`
--
ALTER TABLE `consultation_findings`
  ADD CONSTRAINT `consultation_findings_pet_fk` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultation_findings_record_fk` FOREIGN KEY (`Record_ID`) REFERENCES `medical_records` (`Record_ID`) ON DELETE CASCADE;

--
-- Constraints for table `live_queue_tickets`
--
ALTER TABLE `live_queue_tickets`
  ADD CONSTRAINT `lq_tickets_created_by_fk` FOREIGN KEY (`Created_By`) REFERENCES `users` (`User_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `lq_tickets_handled_by_fk` FOREIGN KEY (`Handled_By`) REFERENCES `users` (`User_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `lq_tickets_owner_fk` FOREIGN KEY (`Owner_ID`) REFERENCES `owners` (`Owner_ID`),
  ADD CONSTRAINT `lq_tickets_pet_fk` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `lq_tickets_service_fk` FOREIGN KEY (`Service_Code`) REFERENCES `live_queue_services` (`Service_Code`);

--
-- Constraints for table `pet_external_records`
--
ALTER TABLE `pet_external_records`
  ADD CONSTRAINT `pet_external_records_created_by_fk` FOREIGN KEY (`Created_By`) REFERENCES `users` (`User_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `pet_external_records_pet_fk` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `pet_external_records_verified_by_fk` FOREIGN KEY (`Verified_By`) REFERENCES `users` (`User_ID`) ON DELETE SET NULL;

--
-- Constraints for table `pet_transfer_requests`
--
ALTER TABLE `pet_transfer_requests`
  ADD CONSTRAINT `ptr_from_owner_fk` FOREIGN KEY (`From_Owner_ID`) REFERENCES `owners` (`Owner_ID`),
  ADD CONSTRAINT `ptr_pet_fk` FOREIGN KEY (`Pet_ID`) REFERENCES `pets` (`Pet_ID`),
  ADD CONSTRAINT `ptr_to_owner_fk` FOREIGN KEY (`To_Owner_ID`) REFERENCES `owners` (`Owner_ID`);

--
-- Constraints for table `vaccination_schedule_rules`
--
ALTER TABLE `vaccination_schedule_rules`
  ADD CONSTRAINT `vaccination_rules_species_fk` FOREIGN KEY (`Species_ID`) REFERENCES `species` (`Species_ID`);

--
-- Constraints for table `vet_duty_schedule`
--
ALTER TABLE `vet_duty_schedule`
  ADD CONSTRAINT `vet_duty_vet_fk` FOREIGN KEY (`Vet_User_ID`) REFERENCES `users` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
