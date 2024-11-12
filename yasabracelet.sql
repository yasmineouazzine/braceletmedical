-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 08:09 PM
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
-- Database: `yasabracelet`
--

-- --------------------------------------------------------

--
-- Table structure for table `braceletinfo`
--

CREATE TABLE `braceletinfo` (
  `Bracelet_id` varchar(255) NOT NULL,
  `Full_Name` varchar(255) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Relative_Phone` int(11) DEFAULT NULL,
  `Temp_measure` varchar(255) DEFAULT NULL,
  `Bloodpress_measure` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `braceletinfo`
--

INSERT INTO `braceletinfo` (`Bracelet_id`, `Full_Name`, `Phone`, `Relative_Phone`, `Temp_measure`, `Bloodpress_measure`) VALUES
('BI001', 'Kaoutar Hafidi', 645345678, 666010234, '37', '23');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_No` varchar(255) NOT NULL,
  `Doctor_Name` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `log_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_No`, `Doctor_Name`, `specialization`, `phone`, `log_id`) VALUES
('DS001', 'yasmine', 'heart doctor', '0665450160', '1'),
('DS002', 'Safa', 'brain', '0641634517', '2'),
('DS003', 'Medroumi', 'General', '0645234512', '3');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Pt_No` varchar(255) NOT NULL,
  `Doctor_Name` varchar(255) DEFAULT NULL,
  `Pt_Name` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Diag_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Pt_No`, `Doctor_Name`, `Pt_Name`, `Location`, `Diag_Date`) VALUES
('PN001', 'DS001', 'PS001', 'Lissasfa', '2023-04-23'),
('PN002', 'DS002', 'PS002', 'Chaymae', '2023-02-23'),
('PN003', 'DS003', 'PS003', 'Agdal', '2023-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `moreinformations`
--

CREATE TABLE `moreinformations` (
  `Patcond_no` varchar(255) NOT NULL,
  `Pt_No` varchar(255) DEFAULT NULL,
  `Threshold` int(11) DEFAULT NULL,
  `Diagnostic` varchar(255) DEFAULT NULL,
  `Doctor_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moreinformations`
--

INSERT INTO `moreinformations` (`Patcond_no`, `Pt_No`, `Threshold`, `Diagnostic`, `Doctor_Name`) VALUES
('PA001', 'PS001', 4, 'The patient status is very stable at this point, needs to watch their sugar\'s consumption', 'Safa'),
('PA002', 'PS002', 2, 'Cough, fever, and difficulty breathing. Suspected pneumonia. Chest X-ray and sputum test advised.', 'Yasmine'),
('PA003', 'PS003', 4, 'Patient reports abdominal pain, nausea, and vomiting. Upon palpation, tenderness in the right lower quadrant noted. Clinical suspicion of appendicitis. Urgent imaging and surgical consult recommended.', 'Safa'),
('PA004', 'PS004', 5, 'Patient complains of headache, sensitivity to light, and neck stiffness. Suspected meningitis. Immediate lumbar puncture and antibiotic therapy indicated.', 'Medroumi');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientno`, `name`, `age`) VALUES
('PS001', 'Kaoutar', 36),
('PS002', 'Keltoum', 44),
('PS003', 'Amine', 29);

-- --------------------------------------------------------

--
-- Table structure for table `relative`
--

CREATE TABLE `relative` (
  `Relative_No` varchar(255) NOT NULL,
  `Relative_Name` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relative`
--

INSERT INTO `relative` (`Relative_No`, `Relative_Name`, `Relationship`, `Phone`) VALUES
('RN001', 'Hassan Baz', 'Cousin', 645367299);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'yasmine', 'ouazzine', '2003', 'Doctor'),
(2, 'safa', 'bechchaa', '2002', 'Relative'),
(3, 'hicham', 'medroumi', '2000', 'Patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `braceletinfo`
--
ALTER TABLE `braceletinfo`
  ADD PRIMARY KEY (`Bracelet_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_No`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Pt_No`);

--
-- Indexes for table `moreinformations`
--
ALTER TABLE `moreinformations`
  ADD PRIMARY KEY (`Patcond_no`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientno`);

--
-- Indexes for table `relative`
--
ALTER TABLE `relative`
  ADD PRIMARY KEY (`Relative_No`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
