-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2023 at 10:09 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` bit(1) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `create_date`, `email`, `password`, `active`, `role`, `status`) VALUES
(1, '2023-09-21', 'kakata5455@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(3, '2023-09-21', 'kakata555@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(4, '2023-09-21', 'kakata55@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(5, '2023-09-21', 'kakata5566@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(7, '2023-09-21', 'kakata566@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(8, '2023-09-21', 'kakata56@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(9, '2023-09-21', 'kakata5612@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(12, '2023-09-21', 'kakata5613@gmail.com', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(15, '2023-09-22', 'kakata556666688888@gmail.com', '$2a$10$ROmnH3q2wx0uzF./BUBin.y1PHx8O1woi6IX0HZndOGYKZ.YhzeYy', b'1', 'CUSTOMER', b'1'),
(16, '2023-09-22', 'kakata556666688@gmail.com', '$2a$10$vA7YfJZC8xSSHkEq6I2dvOjF1PLAmQT1r.kLVZ19D2iWrKV4sJRXG', b'1', 'CUSTOMER', b'1'),
(19, '2023-09-22', 'kakata5566668@gmail.com', '$2a$10$q.68asa6dqMxSa8PwFW6HeTBrHUtMg.dwh2RxTrk5bBq1QVFmQHDq', b'1', 'CUSTOMER', b'1'),
(20, '2023-09-22', 'kakata55668@gmail.com', '$2a$10$eN4sSYNkLLrqf6b5LMmBee9e/OnFDpUdgAjHiIIb8546jg2ToQKAG', b'1', 'CUSTOMER', b'1'),
(21, '2023-09-22', 'kakata5568@gmail.com', '$2a$10$p8TpfRzO74A8uA1fCgh1X.5Qnns8fqEkYCW36ovMSloLVHiKpJZ0e', b'1', 'CUSTOMER', b'1'),
(22, '2023-09-22', 'kakata28419555@gmail.com', '$2a$10$dqczPWhVSToOGW/OqDR.vOS6VqH1aeRnkQCrZojfo.OokLUeka/y6', b'1', 'CUSTOMER', b'1'),
(23, '2023-09-22', 'kakata28419555555@gmail.com', '$2a$10$3FubybqnLt4QqHWAjF4hN.GWR3Yn8uhd6513NZThXtE843uaLB9LO', b'1', 'CUSTOMER', b'1'),
(25, '2023-09-23', 'kakata28415454549@gmail.com', '$2a$10$KxJiKoFhi/FjyTGICUg9N.6Wcypoepdss4yILh/X2nbbh2uwVbAgi', b'1', 'CUSTOMER', b'1'),
(26, '2023-09-23', 'kakata284195562665@gmail.com', '$2a$10$zPsfmVYR.np5xj3Hn2YtNO6m43UywRex8WVlBboGnxbaYnW5fWSdW', b'1', 'CUSTOMER', b'1'),
(27, '2023-09-23', 'kakata284195565@gmail.com', '$2a$10$DdfKdTZTDf/3kb7IzGiUQub3cQ263iJ8nz17X84UZNDsbafovf502', b'1', 'CUSTOMER', b'1'),
(28, '2023-09-23', 'kakata284156565629@gmail.com', '$2a$10$JckoNXhvw0jBtd434wP5IOeuB3I5zBCAp8iSMmirE3QpbXHO7Jala', b'1', 'CUSTOMER', b'1'),
(29, '2023-09-23', 'kakata284565656519@gmail.com', '$2a$10$4sfyGovF7vjg.wB7jDPR6OpjI9q1gY3Zzx3ybZ6IR1viVx8xRFzB.', b'1', 'CUSTOMER', b'1'),
(30, '2023-09-23', 'kakata28419@gmail.com', '$2a$10$QX4GwVuEwdkfTrXLGlm6/utvmaa75IHXgw3YYfRDdmYaXysllX0xG', b'1', 'CUSTOMER', b'1'),
(32, '2023-09-23', 'kakata2842312321321319@gmail.com', '$2a$10$XJnIdourCvgvTwLCxfQ1putlDWwwto7IbJ4t7LP8qrjhE9XdDlODm', b'1', 'CUSTOMER', b'1'),
(33, '2023-09-23', 'vinhnqse170501@fpt.edu.vn', '$2a$10$xfcOOSbVMONawOpoT7uijuwG/.z4gsQeuNiW5YSNi055o5z6dXIyG', b'1', 'CUSTOMER', b'1'),
(36, '2023-09-23', 'vinhnqse170501555@fpt.edu.vn', '$2a$10$sk22kqRgbpGpNd001uqJDuyo0tWJsTXllkU0HUUoc4UDpWzqt/hRu', b'1', 'CUSTOMER', b'1'),
(37, '2023-09-24', 'ngoquangthang2003@gmail.com', '$2a$10$DdbLOW4fwL9el9xMN/hCtuiwcQovkc6SYL0hAU/bWBkIUDH.ZFpwK', b'1', 'CUSTOMER', b'1'),
(39, '2023-09-26', 'kakata556555558@gmail.com', '$2a$10$hHLUWKMCIOwL3BQ0fhE.FeYC0Gw8igvVAZi.UPUGU5qUFL.qQWoGK', b'1', 'CUSTOMER', b'1'),
(40, '2023-09-26', 'kakata5565558@gmail.com', '$2a$10$XfpnX4pWoem5pSWXDoZ9OuHPbf.e68k6kDH7A3m2.JenuCMpA4y56', b'1', 'CUSTOMER', b'1'),
(43, '2023-09-26', 'kakata5565555586@gmail.com', '$2a$10$fjs9i.NQ7zIAFdNzorlZiucsEqX6Xh7kDOql2MUsqwCdFHGEFrvGy', b'1', 'CUSTOMER', b'1'),
(45, '2023-09-27', 'kakata2841555555559@gmail.com', '$2a$10$Gjl.mrMlKGSzrmpnXbLJn.Qp9xPKbqkGtROYTewqxD8AXMg25kt.S', b'1', 'CUSTOMER', b'1'),
(46, '2023-09-28', 'kakata556556@gmail.com', '$2a$10$SoppmxDUjPiwj3CrIJmqU.dRXDWQ/iYEOOLckfaEInbzbyLKayXlO', b'1', 'CUSTOMER', b'1'),
(47, '2023-09-30', 'vanvtt10@fpt.edu.vn', '$2a$10$nUpmbS.sXC1Dtidw.nMGTuNhxRncC5ZKn416l01buG2KboUM9N8m.', b'1', 'CUSTOMER', b'1'),
(48, '2023-10-07', 'kakata284195009@gmail.com', '$2a$10$OwOary1sioAIq9zYcb2EmO1jGf.udWC6f4qdBmWtr2h5mSeQL.M.i', b'1', 'CUSTOMER', b'1'),
(49, '2023-10-07', 'kakata123456789@gmail.com', '$2a$10$xUUrEE9/6OtFcX.oQFycG.ttjeK8MlGCI2uS6LTNzQRQlzDfy05zi', b'1', 'CUSTOMER', b'1'),
(52, '2023-10-09', 'thangnqse173445@fpt.edu.vn', '$2a$10$yREo/syKwhMbVOxPbprSUO/e2.2pox1a2Jesd1mKXshO9ZbdudxwK', b'1', 'INSTRUCTOR', b'1'),
(61, '2023-10-10', 'ngoquangthang123@gmail.com', '$2a$10$chQHRpQRLJcSFU/lcVf8oeHEzbl/fO.EatGeVqqAxllfK57M7MLl.', b'1', 'INSTRUCTOR', b'1'),
(63, '2023-10-10', 'ngoquangthang345@gmail.com', '$2a$10$C4SsnaIHuDnyt8Srziw4FuOB9PjInuBlLqcAU1OI9FU0p.79oLjBO', b'1', 'INSTRUCTOR', b'1'),
(64, '2023-10-10', 'ngoquangthang111@gmail.com', '$2a$10$/aDvLEtD2FO25NiYF0s6uehQQay5LGNHs0ozI55826VcirHYKHpaW', b'1', 'INSTRUCTOR', b'1'),
(66, '2023-10-11', 'ngoquangthang12345@gmail.com', '$2a$10$kjqabm30L6S8FsD.G5gSjOqQK2l5DQTs.DUN5qQoTJNt5C2a.43qO', b'1', 'INSTRUCTOR', b'1'),
(68, '2023-10-11', 'ngoquangthang123456@gmail.com', '$2a$10$9YMlnsk.9kKBLU8hV.Z7J.mdD1B.BiOisVm4ZbSnsvMTN0ECULAMW', b'1', 'INSTRUCTOR', b'1'),
(74, '2023-10-11', 'ngoquangthang1234567@gmail.com', '$2a$10$Pp9J0pP2k.qN.LhF0p.wJOJvrNfwNnKuccVTjFRHuyavAKlQDFmPe', b'1', 'INSTRUCTOR', b'1'),
(75, '2023-10-14', 'vinhnqse17050109@fpt.edu.vn', '$2a$10$f7qwJpsGKRyliT14njAAceXq5kAnBkP8JeZL9Z90JE.g0v7tLQ/CG', b'1', 'INSTRUCTOR', b'1'),
(77, '2023-10-27', 'nahida@gmail.com', '$2a$10$QEx0FklsqGOyr4.lcqWXnudptEmvk29gTn6/FDi7Q//OMdysJbjcK', b'1', 'INSTRUCTOR', b'1'),
(79, '2023-10-27', 'lovenahida@gmail.com', '$2a$10$3toJCTLcHlw3hYQGHnY08OAURJ82yc8W2.M5OptD8SCRxpmlrY81K', b'1', 'INSTRUCTOR', b'1'),
(80, '2023-10-27', 'onetwo@gmail.com', '$2a$10$loK6eNp5edcNsImKSoI3feR7kuRFm1BswlDD8AVALTW0H2e5/kltC', b'1', 'INSTRUCTOR', b'1'),
(82, '2023-10-27', 'gna@gmail.com', '$2a$10$ePmJGQhs2FF8T86CphrLgO9VVWE573SNijk3PAjTkiEAP/pUUFM7y', b'1', 'INSTRUCTOR', b'1'),
(84, '2023-10-27', 'nahida2@gmail.com', '$2a$10$.5he6rLdYZAGzWd3rxYjjeBE9cNwspTFBxw/UZ7Ll5LFhx.X3RL2u', b'1', 'INSTRUCTOR', b'1'),
(86, '2023-10-27', 'nahida3@gmail.com', '$2a$10$IGqWfSz5qo.xKrr36hU4EuKKYRNQGDbplrAbu497b5tYiQU7LAy/6', b'1', 'INSTRUCTOR', b'1'),
(87, '2023-10-27', 'nahida4@gmail.com', '$2a$10$evAjgC18FnA29J0FXplnX.Sv6VydCJwNlIug2z6qMGX/v7lM9h0p.', b'1', 'INSTRUCTOR', b'1'),
(91, '2023-10-28', 'ngoquangthang12345', '$2a$10$0DpqBu5lOlC8dJZ4xXSk2.2GEpZQhshEPdx58dAlRIWzHyufhN71C', b'1', 'CUSTOMER', b'1'),
(92, '2023-11-01', 'hanhse170435@fpt.edu.vn', '$2a$10$664l9R6hN86xOdbmrryBCeIeFDp/EZIsrcvTtfrvYdXFmTO4Jvp4S', b'1', 'CUSTOMER', b'1'),
(93, '2023-11-03', 'nguyenha1610@spievn.com', '$2a$10$YiIAjhEctBubDtLPTcKX9OXM4wzbLMeTBmh2bBV1Lw7tXJhTV6tEK', b'1', 'INSTRUCTOR', b'1'),
(99, '2023-11-07', 'hoangbaohuy@gmail.com', '$2a$10$zxjScoZx.mhfByTjYB5ZiOvY2BhS3JdMuYNh3gVISIA2ziRmzeUVm', b'1', 'CUSTOMER', b'1'),
(100, '2023-11-07', 'baohuy@gmail.com', '$2a$10$tjYGDuISRD1BbbyrVOZr4eKwu9ukekgZJY9sOXLcavVSoWQiy1a2m', b'1', 'INSTRUCTOR', b'1'),
(101, '2023-11-07', 'susan@gmail.com', '$2a$10$zjUO/Oo/L1GSLK8ycHfddeiS06ncYlaZE7v9NdfDjpqSMxs43AO46', b'1', 'INSTRUCTOR', b'1'),
(102, '2023-11-15', 'baovmse161280@fpt.edu.vn', '$2a$10$IR5IflRub6CFR0g6rRgXNu2yt5xtvljWreSzV0MNuxLvEadCUWZiW', b'1', 'CUSTOMER', b'1'),
(104, '2023-11-15', 'ngohoangtam113@gmail.com', '$2a$10$3E385c0F99Div8mWnZ.EdOhHZzphPoP8RUO0uUQTBXxELxcqqAy6W', b'1', 'CUSTOMER', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `cart_cookie` text DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_cookie`, `customer_id`) VALUES
(1, '1,2,3,4,5', 15),
(2, '1', 16),
(3, '7', 12),
(4, '15,8,7,6,5', 18),
(6, '16,11,7', 10),
(7, '5,4,3,1', 20),
(8, '2', 21),
(13, '', 24),
(14, '3', 2),
(15, '2', 13),
(16, '', 25),
(17, '', 26),
(18, '', 27);

-- --------------------------------------------------------

--
-- Table structure for table `centificate`
--

CREATE TABLE `centificate` (
  `id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `lecture_name` varchar(255) DEFAULT NULL,
  `recieve_date` date NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certification`
--

CREATE TABLE `certification` (
  `id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `lecture_name` varchar(255) DEFAULT NULL,
  `recieve_date` date NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `file_location` int(11) DEFAULT NULL,
  `certificate_file_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certification`
--

INSERT INTO `certification` (`id`, `path`, `lecture_name`, `recieve_date`, `course_id`, `customer_id`, `file_location`, `certificate_file_status`) VALUES
(1, NULL, 'Nguyen Quang Vinh', '2023-11-01', 23, 12, 102, 'CREATED'),
(8, NULL, 'Tran Gia Nhan', '2023-11-03', 3, 12, 97, 'CREATED'),
(9, NULL, 'Nguyen Quang Vinh', '2023-11-03', 4, 12, 103, 'CREATED'),
(10, NULL, 'Nguyen Quang Vinh', '2023-11-03', 1, 12, 90, 'CREATED'),
(11, NULL, 'Nguyen Quang Vinh', '2023-11-03', 4, 24, 100, 'CREATED'),
(12, NULL, 'Tran Gia Nhan', '2023-11-03', 3, 24, 96, 'CREATED'),
(13, NULL, 'Nguyen Quang Vinh', '2023-11-05', 1, 13, 99, 'CREATED'),
(14, NULL, 'Nguyen Quang Vinh', '2023-11-05', 23, 24, 91, 'CREATED'),
(15, NULL, 'Sarah Brown', '2023-11-07', 1, 25, 95, 'CREATED'),
(16, NULL, 'Susan Smith', '2023-11-07', 48, 24, 98, 'CREATED'),
(17, NULL, 'Susan Smith', '2023-11-07', 49, 24, 93, 'CREATED'),
(18, NULL, 'Susan Smith', '2023-11-08', 51, 24, 94, 'CREATED'),
(19, NULL, 'Nguyen Quang Vinh', '2023-11-15', 52, 24, 101, 'CREATED'),
(20, NULL, 'John Smith', '2023-11-15', 8, 27, 104, 'CREATED');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `course_content_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `status` bit(1) NOT NULL,
  `thumbnail_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `description`, `duration`, `course_name`, `price`, `instructor_id`, `status`, `thumbnail_path`) VALUES
(1, 'Introduction to drawing basics like perspective, shading, and still life', ' 8 weeks', 'Drawing Fundamentals', 106, 3, b'0', 'https://sfca.hawaii.gov/wp-content/uploads/2022/09/1578-176x300.jpg'),
(2, 'Realistic Pencil Drawing', '6 weeks', 'Learn to draw landscapes in graphite pencil from photo references', 58, 1, b'0', 'https://images.pexels.com/photos/3246665/pexels-photo-3246665.png?auto=compress&cs=tinysrgb&w=400'),
(3, 'Learn to draw landscapes in graphite pencil from photo references', '3 weeks', 'Drawing Landscapes in Pencil', 121, 3, b'0', 'https://images.pexels.com/photos/2911521/pexels-photo-2911521.jpeg?auto=compress&cs=tinysrgb&w=600'),
(4, 'Introduction to ink drawing techniques like hatching, contours, stippling', '5 weeks', 'Ink Drawing Techniques', 81, 1, b'0', 'https://images.pexels.com/photos/3530114/pexels-photo-3530114.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(5, 'Master drawing the clothed figure from reference photos', '6 weeks', 'Drawing the Clothed Figure', 93, 4, b'0', 'https://images.pexels.com/photos/2988383/pexels-photo-2988383.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
(6, 'Learn to draw facial expressions and capture emotions', '4 weeks', 'Drawing Facial Expressions', 70, 2, b'0', 'https://images.pexels.com/photos/2983293/pexels-photo-2983293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(7, 'Acrylic painting techniques', '5 weeks', 'Acrylic Painting Workshop', 120, 3, b'0', 'https://images.pexels.com/photos/3705942/pexels-photo-3705942.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(8, 'Figure drawing masterclass', '6 weeks', 'Figure Drawing Excellence', 142, 1, b'0', 'https://images.pexels.com/photos/3844788/pexels-photo-3844788.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(9, 'Introduction to drawing animals like pets, wildlife, and birds', '4 weeks', 'Drawing Animals', 101, 4, b'0', 'https://images.pexels.com/photos/3530057/pexels-photo-3530057.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(10, 'Ink and pen drawing workshop', '3 weeks', 'Ink and Pen Mastery', 127, 2, b'0', 'https://images.pexels.com/photos/3312887/pexels-photo-3312887.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(11, 'Landscapes in oil painting', '5 weeks', 'Oil Painting Landscapes', 84, 3, b'0', 'https://images.pexels.com/photos/2988383/pexels-photo-2988383.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(12, 'Character design for animation', '6 weeks', 'Character Design for Animation', 90, 4, b'0', 'https://images.pexels.com/photos/3690362/pexels-photo-3690362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(13, 'Mixed media art exploration', '4 weeks', 'Mixed Media Art Adventure', 146, 1, b'0', 'https://images.pexels.com/photos/3530114/pexels-photo-3530114.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(14, 'Realistic pencil drawing techniques', '5 weeks', 'Realistic Pencil Drawing', 112, 2, b'0', 'https://images.pexels.com/photos/3705963/pexels-photo-3705963.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(15, 'Abstract art and creativity', '4 weeks', 'Abstract Art Expressions', 73, 3, b'0', 'https://images.pexels.com/photos/3705846/pexels-photo-3705846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(16, 'Still life painting essentials', '3 weeks', 'Still Life Painting Basics', 78, 4, b'0', 'https://images.pexels.com/photos/971546/pexels-photo-971546.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(17, 'Manga drawing for beginners', '4 weeks', 'Manga Drawing 101', 120, 1, b'0', 'https://images.pexels.com/photos/3029543/pexels-photo-3029543.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(18, 'Oil pastel art for all ages', '3 weeks', 'Oil Pastel Artistry', 117, 2, b'0', 'https://images.pexels.com/photos/3705927/pexels-photo-3705927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(19, 'Color theory in painting', '4 weeks', 'Color Theory Mastery', 73, 3, b'0', 'https://images.pexels.com/photos/3705368/pexels-photo-3705368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(20, 'Cartooning and caricature', '5 weeks', 'Cartooning and Caricature', 65, 4, b'0', 'https://images.pexels.com/photos/3705169/pexels-photo-3705169.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(21, 'Learn the basics of sketching', '4 weeks', 'Sketching 101', 57, 1, b'0', 'https://images.pexels.com/photos/3156125/pexels-photo-3156125.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(22, 'Digital painting techniques', '6 weeks', 'Digital Painting Mastery', 141, 2, b'0', 'https://images.pexels.com/photos/1428169/pexels-photo-1428169.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(23, '<p><strong>Welcome to Draw Nahida Course For Beginner Path 4 </strong></p>\n<p><strong>When you come to this course, you will have </strong></p>\n<ul style=\"list-style-type: circle;\">\n<li>A powerful Lover with nahida</li>\n<li>Can join Mihoyo for work</li>\n<li>Can have Nahida</li>\n<li>Can draw lewd Nahida</li>\n<li>Can lewd Nahida</li>\n</ul>', '2 weeks', 'Draw Nahida Course For Beginner Path 4', 150, 12, b'0', 'https://images.pexels.com/photos/3444533/pexels-photo-3444533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(24, 'Master techniques for botanical and floral illustration', '1 week', 'Botanical and Floral Illustration', 146, 12, b'0', 'https://images.pexels.com/photos/3705929/pexels-photo-3705929.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(27, '<p>Beginner\'s Drawing Course</p>', '10 days', 'Beginner\'s Drawing Course', 126, 12, b'0', 'https://images.pexels.com/photos/3034871/pexels-photo-3034871.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(28, 'Introduction to drawing for beginners and total novices', '4 weeks', 'Drawing for Absolute Beginners', 150, 6, b'0', 'https://images.pexels.com/photos/3705390/pexels-photo-3705390.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(29, 'Learn perspective drawing techniques for comics and concept art', '14 weeks', 'Perspective for Comics and Concept Art', 500, 11, b'1', 'https://images.pexels.com/photos/3705473/pexels-photo-3705473.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(30, 'Introduction to stylizing reference photos into cool illustrations', '1 week', 'Drawing Stylized Illustrations from Photos', 100, 12, b'1', 'https://images.pexels.com/photos/3705844/pexels-photo-3705844.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(31, 'Learn to draw from photos for stronger realism in portraits', '5 days', 'Modern Drawing', 300, 12, b'1', 'https://images.pexels.com/photos/3705170/pexels-photo-3705170.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(32, 'Master drawing dynamic poses and motion with sketch techniques', '1 week', 'Gesture Drawing and Sketching', 30, 12, b'1', 'https://images.pexels.com/photos/3530113/pexels-photo-3530113.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(33, 'Introduction to drawing cartoons, comics, and graphic novels', '1 month', 'Cartoon and Comic Drawing', 400, 12, b'1', 'https://images.pexels.com/photos/3705236/pexels-photo-3705236.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(34, 'Learn to draw famous landmarks and recognizable places', '10 days', 'Drawing Landmarks and Scenes', 250, 12, b'1', 'https://images.pexels.com/photos/3705930/pexels-photo-3705930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(35, 'Master realistic animal portraits in colored pencil', '6 weeks', ' Realistic Animal Portraits in Colored Pencil', 175, 12, b'1', 'https://images.pexels.com/photos/3705368/pexels-photo-3705368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(40, 'Learn the Basics of Sketching ', '4 weeks', 'Sketching 101 ', 100, 16, b'1', 'https://images.pexels.com/photos/3029545/pexels-photo-3029545.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
(41, 'Introduction to Charcoal Drawing ', ' 6 weeks  ', 'Charcoal Fundamentals', 120, 16, b'1', 'https://images.pexels.com/photos/3530118/pexels-photo-3530118.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(42, 'Watercolor Painting Techniques', '8 weeks', 'Watercolor Mastery', 150, 16, b'1', 'https://images.pexels.com/photos/3705926/pexels-photo-3705926.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(43, 'Watercolor Florals ', '4 weeks', 'Floral Watercolors ', 95, 16, b'1', 'https://images.pexels.com/photos/3705238/pexels-photo-3705238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(44, 'Pen and Ink Landscapes', ' 8 weeks ', 'Inked Landscapes', 150, 16, b'1', 'https://images.pexels.com/photos/3705647/pexels-photo-3705647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(45, 'Abstract Photography ', '6 weeks', 'Abstract Photography', 70, 16, b'1', 'https://images.pexels.com/photos/3045825/pexels-photo-3045825.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(46, 'Urban Watercolor Scenes ', '4 weeks', 'Cityscape Watercolors', 80, 16, b'1', 'https://images.pexels.com/photos/3705846/pexels-photo-3705846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(47, 'Painting Object', '4 weeks', 'Drawing Object', 200, 21, b'1', NULL),
(48, 'Teaching Children to Draw', '2 weeks', 'Drawing Instruction and Methods', 150, 22, b'1', NULL),
(49, 'Advanced Perspective Theories\n', '3 weeks', 'Expressive Gesture and Motion', 160, 22, b'1', NULL),
(50, 'Surreal Figure Composition\n', '3 weeks', 'Imaginative Drawing Prompts', 150, 22, b'1', NULL),
(51, 'Surreal Figure Composition\n', '3 weeks', 'Imaginative Drawing Prompts', 150, 22, b'1', NULL),
(52, 'Contemporary Drawing Practices', '3 weeks', 'Art Historical Drawing Styles', 120, 12, b'1', NULL),
(60, 'Course with image', '3 weeks', 'Learn how to draw', 123, 6, b'1', 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/course_images/course_60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `id` bigint(20) NOT NULL,
  `create_date` date DEFAULT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_date` date DEFAULT NULL,
  `video_link` varchar(255) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `course_content_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`id`, `create_date`, `description`, `title`, `updated_date`, `video_link`, `section_id`, `course_content_type`) VALUES
(1, '2023-10-17', '<p><strong>Before start course, let\'s prepare some thing</strong></p>\n<ul>\n<li style=\"list-style-type: none;\">\n<ul style=\"list-style-type: square;\">\n<li>Nahida\'s image</li>\n<li>Photoshop</li>\n<li>After Effects</li>\n</ul>\n</li>\n</ul>', 'Introduction to Basic Drawing', '2023-10-26', 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 2, 'COURSE_CONTENT'),
(2, '2023-10-17', 'Explores music theory, composition techniques, and musical notation.', 'Calculus for Beginners', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 2, 'COURSE_CONTENT'),
(3, '2023-10-17', 'Explores music theory, composition techniques, and musical notation.', 'Digital Marketing Essentials', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 2, 'COURSE_CONTENT'),
(4, '2023-10-17', 'Explores music theory, composition techniques, and musical notation.', 'Creative Writing Workshop', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 2, 'COURSE_CONTENT'),
(5, '2023-10-17', 'Examines the relationship between diet, health, and nutrition.', 'Financial Literacy 101', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 2, 'COURSE_CONTENT'),
(6, '2023-10-17', 'Examines the relationship between diet, health, and nutrition.', ' Introduction to Psychology', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 2, 'COURSE_CONTENT'),
(7, '2023-10-17', 'Examines the relationship between diet, health, and nutrition.', 'Web Development Bootcamp', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 2, 'COURSE_CONTENT'),
(8, '2023-10-19', 'An overview of AI concepts, including machine learning, neural networks, and robotics.', 'Biology of Climate Change', NULL, 'https://www.youtube.com/embed/CSuzrrYmHEA?si=74XtgVbg6B8GIcAS', 2, 'COURSE_CONTENT'),
(9, '2023-10-19', 'An overview of AI concepts, including machine learning, neural networks, and robotics.', 'Public Speaking Mastery', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=sqPOnYvtUhgTmTBp', 2, 'COURSE_CONTENT'),
(10, '2023-10-19', 'An overview of AI concepts, including machine learning, neural networks, and robotics.', ' Machine Learning Fundamentals', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=yFLAkoOV8Lx5sHXN', 2, 'COURSE_CONTENT'),
(11, '2023-10-19', 'Provides a foundation in graphic design principles, tools, and techniques.', 'History of Art', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 2, 'COURSE_CONTENT'),
(12, '2023-10-19', 'Provides a foundation in graphic design principles, tools, and techniques.', 'Introduction to Astronomy', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 2, 'COURSE_CONTENT'),
(13, '2023-10-20', 'A study of society, social behavior, and human interaction.', 'Project Management Essentials', '2023-11-03', 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 14, 'COURSE_CONTENT'),
(14, '2023-10-20', 'A study of society, social behavior, and human interaction.', 'Start Advance Course Learning', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 15, 'COURSE_CONTENT'),
(15, '2023-10-20', 'A study of society, social behavior, and human interaction.', 'Environmental Ethics', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 16, 'COURSE_CONTENT'),
(16, '2023-10-20', 'Provides an understanding of economic principles, supply and demand, and market structures.', 'Lets Draw Nahida LewsSpanish for Travelers', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 17, 'COURSE_CONTENT'),
(17, '2023-10-20', 'An overview of game development concepts, game engines, and design principles.', 'Data Analysis with Python', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 16, 'COURSE_CONTENT'),
(18, '2023-10-20', 'An overview of game development concepts, game engines, and design principles.', 'Introduction to Philosophy', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=OiI0XpPmULMiAMYP', 17, 'COURSE_CONTENT'),
(19, '2023-10-20', 'An overview of game development concepts, game engines, and design principles.', 'Graphic Design Fundamentals', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=yFLAkoOV8Lx5sHXN', 17, 'COURSE_CONTENT'),
(20, '2023-10-20', 'An overview of game development concepts, game engines, and design principles.', 'Introduction to Artificial Intelligence', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=sqPOnYvtUhgTmTBp', 16, 'COURSE_CONTENT'),
(22, '2023-10-26', 'An overview of game development concepts, game engines, and design principles.', 'Health and Nutrition', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 20, 'COURSE_CONTENT'),
(23, '2023-10-27', '<p><strong>Before start course, let\'s prepare some thing</strong></p>\n<ul>\n<li style=\"list-style-type: none;\">\n<ul style=\"list-style-type: square;\">\n<li>Nahida\'s image</li>\n<li>Photoshop</li>\n<li>After Effects</li>\n</ul>\n</li>\n</ul>', 'Music Theory and Composition', '2023-10-28', 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 5, 'COURSE_CONTENT'),
(25, '2023-10-28', 'Before ending this course', 'Creative Photography', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 22, 'COURSE_CONTENT'),
(26, '2023-10-28', 'Before start course', 'Introduction to Sociology', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 2, 'COURSE_CONTENT'),
(27, '2023-11-01', 'Covers the fundamentals of cybersecurity and ethical hacking techniques.', 'Ethical Hacking and Cybersecurity', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 23, 'COURSE_CONTENT'),
(28, '2023-11-01', 'Covers data manipulation, visualization, and statistical analysis using Python.', 'Data Analysis with Python', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 23, 'COURSE_CONTENT'),
(29, '2023-11-03', 'Explores philosophical ideas, critical thinking, and ethical reasoning.', 'Introduction to Philosophy', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 13, 'COURSE_CONTENT'),
(30, '2023-11-03', 'This video was live streamed using the SlingStudio wireless broadcasting system. ', 'Draw a VALUE SCALE using Hatching and Blending! Free Basic Drawing Class #3', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 14, 'COURSE_CONTENT'),
(32, '2023-11-03', 'Covers data manipulation, visualization, and statistical analysis using Python.', 'Data Analysis with Python', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 26, 'COURSE_CONTENT'),
(33, '2023-11-03', 'A basic Spanish language course for travelers looking to communicate effectively while abroad.', 'Spanish for Travelers', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 27, 'COURSE_CONTENT'),
(34, '2023-11-03', 'Examines ethical issues related to environmental conservation and sustainability.', 'Environmental Ethics', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 28, 'COURSE_CONTENT'),
(35, '2023-11-03', 'Teaches project planning, execution, and management techniques.', 'Project Management Essentials', '2023-11-03', 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 28, 'COURSE_CONTENT'),
(36, '2023-11-04', 'Author wind & Kunaru - Run It Back', 'Author wind & Kunaru - Run It Back', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=OiI0XpPmULMiAMYP', 29, 'COURSE_CONTENT'),
(37, '2023-11-09', 'syllabus overview, required supplies', 'Introduction video', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=sqPOnYvtUhgTmTBp', 40, 'COURSE_CONTENT'),
(38, '2023-11-07', 'erasers, papers, tortillons, blending stumps', 'Drawing pencils', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=yFLAkoOV8Lx5sHXN', 40, 'COURSE_CONTENT'),
(39, '2023-11-21', 'lines, ellipses, shapes', 'Mark making', NULL, 'https://www.youtube.com/embed/G-DNgAp__s0?si=sjmnY-E3l6GjjUS5', 41, 'COURSE_CONTENT'),
(40, '2023-11-14', 'contours, positive and negative space', 'Outlines, blind contour', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 42, 'COURSE_CONTENT'),
(41, '2023-11-07', 'smudging, tonal values', 'Shading, crosshatching', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 44, 'COURSE_CONTENT'),
(42, '2023-11-30', 'metal, foliage, rock, brick, etc.', 'Textures like wood', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 45, 'COURSE_CONTENT'),
(43, '2022-11-16', 'Vine and compressed charcoal, charcoal pencils, blending', 'Basic still life with simple objects and drapery', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 46, 'COURSE_CONTENT'),
(44, '2022-11-18', '<p>Explore the beauty of still life composition and rendering objects in art.</p>', 'The Art of Still Life', '2023-11-05', 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 47, 'COURSE_CONTENT'),
(45, '2023-10-18', 'Eyes, nose, lips, ears, hair', 'Figure proportions,gesture, mannequins', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 46, 'COURSE_CONTENT'),
(46, '2023-09-13', 'Pets, wildlife, birds, proportion and anatomy', 'Skeleton, muscle, fat, gravity, motion', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=OiI0XpPmULMiAMYP', 58, 'COURSE_CONTENT'),
(48, '2023-10-03', 'Form, proportion, foreshortening', 'Drapery, folds, weight, transparency', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=sqPOnYvtUhgTmTBp', 59, 'COURSE_CONTENT'),
(49, '2023-11-12', 'Nibs, hatching, stippling, crosshatching', 'Varied line weights, contrast, mark making', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=yFLAkoOV8Lx5sHXN', 60, 'COURSE_CONTENT'),
(50, '2023-11-26', 'Varied line weights, contrast, mark making', 'Contour practice with complex objects', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 60, 'COURSE_CONTENT'),
(51, '2023-11-01', 'Drawing without looking at paper', 'Quick poses and timed practice', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 61, 'COURSE_CONTENT'),
(52, '2023-11-03', 'Quick poses and timed praFigures in action, sports, dancectice', 'Figures in action, sports, dance', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 62, 'COURSE_CONTENT'),
(53, '2023-11-05', 'Exaggeration, humor, visual storytelling', 'Realistic optical illusions and tricks', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 63, 'COURSE_CONTENT'),
(54, '2023-10-29', 'Flowers, leaves, vases, natural elements', 'Simple objects, fabric, lighting', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 64, 'COURSE_CONTENT'),
(55, '2023-10-03', 'Imagination, emotion, meaning, creative risk taking', 'Mixed media, combining drawing with painting', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 71, 'COURSE_CONTENT'),
(56, '2023-10-02', 'Watercolor Painting Fundamentals', 'Watercolor Painting Fundamentals', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 76, 'COURSE_CONTENT'),
(58, '2023-11-05', 'Explores the universe, celestial objects, and the basics of observational astronomy.', 'Introduction to Astronomy', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 15, 'COURSE_CONTENT'),
(59, '2023-10-30', 'Characters, creatures, concept art', 'Exaggeration, humor, visual storytelling', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 72, 'COURSE_CONTENT'),
(60, '2023-10-23', 'Figures in action, sports, dance', 'Quick poses and timed practice', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 73, 'COURSE_CONTENT'),
(61, '2023-10-07', 'Contour practice with complex objects', 'Drawing without looking at paper', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 74, 'COURSE_CONTENT'),
(62, '2023-10-17', 'Varied line weights, contrast, mark making', 'Nibs, hatching, stippling, crosshatching', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 74, 'COURSE_CONTENT'),
(63, '2021-11-18', 'Character Design and Concept Art', 'Drawing Fabric and Drapery', NULL, 'https://www.youtube.com/embed/CSuzrrYmHEA?si=74XtgVbg6B8GIcAS', 75, 'COURSE_CONTENT'),
(64, '2023-10-19', 'Perspective Drawing', 'Architectural Sketching', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=sqPOnYvtUhgTmTBp', 79, 'COURSE_CONTENT'),
(65, '2023-09-11', 'Urban Sketching', 'Drawing Trees and Plants', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=yFLAkoOV8Lx5sHXN', 80, 'COURSE_CONTENT'),
(66, '2023-11-14', 'Animal Drawing', 'Drawing Textures and Surfaces', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=3KRIAQ9V43Ql5PVB', 81, 'COURSE_CONTENT'),
(67, '2023-09-03', 'Composition and Design', 'Negative Space', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=jfY--LzQMoyTATPz', 81, 'COURSE_CONTENT'),
(68, '2023-09-12', 'Real Time Portrait drawing ', 'Expressive and Gestural Drawing', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=wjrer3IOK87NjP0i', 82, 'COURSE_CONTENT'),
(69, '2023-07-19', 'Balance and Rhythm', 'Drawing Practice', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=skNAqhQ_ATqzii0B', 83, 'COURSE_CONTENT'),
(70, '2023-08-21', 'Balance and Rhythm', 'Step by step real time portrait tutorial', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=i0mr1ieQbVj3zKxp', 84, 'COURSE_CONTENT'),
(71, '2023-07-02', 'Be BETTER on SHADING with Pencil!', 'A Realistic Drawing Tutorial for Beginners', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=I0zeN4IN8RfwcOI3', 85, 'COURSE_CONTENT'),
(72, '2023-04-24', 'How to Draw Trees with Pen and Ink', 'Linear Perspective', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=Efrr6MOOxHkDksxV', 86, 'COURSE_CONTENT'),
(73, '2023-11-16', 'This is the test', 'The first test', NULL, 'https://www.youtube.com/embed/6QOboH_wKL4?si=GD8MptAs0FmNbzmd', 5, 'TESTING'),
(74, '2023-11-01', 'Drawing for Animation', 'Drawing for Illustration', NULL, 'https://www.youtube.com/embed/bv3Yvfouf2o?si=mVd-CPE2MCvQFkOP', 87, 'COURSE_CONTENT'),
(75, '2023-10-02', 'Drawing Hands and Feet', 'Drawing the Human Head', NULL, 'https://www.youtube.com/embed/v3MsfZ-wjzA?si=Qgi9eBT0vm-t6LJT', 88, 'COURSE_CONTENT'),
(76, '2023-11-02', 'Drawing Trees and Plants', 'Animal Drawing', NULL, 'https://www.youtube.com/embed/bv3Yvfouf2o?si=mVd-CPE2MCvQFkOP', 89, 'COURSE_CONTENT'),
(77, '2023-10-02', 'Drawing Textures and Surfaces', 'Composition and Design', NULL, 'https://www.youtube.com/embed/OUODCm4SMN8?si=TbSN0Nbvi0AGhiUw', 90, 'COURSE_CONTENT'),
(78, '2023-11-28', 'Linear Perspective', 'Atmospheric Perspective', NULL, 'https://www.youtube.com/embed/OUODCm4SMN8?si=TbSN0Nbvi0AGhiUw', 91, 'COURSE_CONTENT'),
(79, '2023-10-02', 'Advanced Shading Techniques', 'Creating Dimension and Form', NULL, 'https://www.youtube.com/embed/kEtVZEmtkXA?si=heUa4Ggfu4IaR7zU', 92, 'COURSE_CONTENT'),
(80, '2023-10-02', 'Drawing with Charcoal', 'Drawing with Graphite', NULL, 'https://www.youtube.com/embed/4wAhko4LEvA?si=JJcWSmm1UIURFy6B', 93, 'COURSE_CONTENT'),
(81, '2023-09-11', 'Pastel Drawing', 'Colored Pencil Drawing', NULL, 'https://www.youtube.com/embed/bv3Yvfouf2o?si=mVd-CPE2MCvQFkOP', 94, 'COURSE_CONTENT'),
(82, '2023-06-20', 'Expressive Mark Making', 'Experimental Drawing Materials', NULL, 'https://www.youtube.com/embed/bv3Yvfouf2o?si=mVd-CPE2MCvQFkOP', 95, 'COURSE_CONTENT'),
(83, '2023-05-01', 'Figure Drawing Studio', 'Still Life Studio\r\n', NULL, 'https://www.youtube.com/embed/OUODCm4SMN8?si=TbSN0Nbvi0AGhiUw', 96, 'COURSE_CONTENT'),
(84, '2023-09-03', 'Drawing from Observation\r\n', 'Drawing from Photographs', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 97, 'COURSE_CONTENT'),
(85, '2023-04-10', 'Drawing from Imagination\r\n', 'Developing Personal Style', NULL, 'https://www.youtube.com/embed/tGRadnWCz3s?si=GlynAJ1IHTp9EP5n', 98, 'COURSE_CONTENT'),
(86, '2023-01-17', 'Abstract Drawing\r\n', 'Conceptual Drawing', NULL, 'https://www.youtube.com/embed/tGRadnWCz3s?si=GlynAJ1IHTp9EP5n', 99, 'COURSE_CONTENT'),
(87, '2023-04-13', 'Collage and Mixed Media\r\n', 'Sketchbooks and Journals', NULL, 'https://www.youtube.com/embed/AXZGwTHCDGM?si=kFxjQtHcobEFkN8u', 100, 'COURSE_CONTENT'),
(88, '2023-06-06', 'Exhibiting Drawings\r\n', 'Art History and Drawing', NULL, 'https://www.youtube.com/embed/m6gWfllyLsg?si=_3gy4nxgw4lwjp9s', 101, 'COURSE_CONTENT'),
(89, '2023-06-06', 'Contemporary Drawing Approaches', 'Advanced Studio Drawing', NULL, 'https://www.youtube.com/embed/47d6nsfS-o8?si=J304mKIa7gbdFcgP', 102, 'COURSE_CONTENT'),
(90, '2023-08-16', 'Portfolio Development\r\n', 'Drawing for Illustration', NULL, 'https://www.youtube.com/embed/4wAhko4LEvA?si=JJcWSmm1UIURFy6B', 103, 'COURSE_CONTENT'),
(91, '2023-07-11', 'Drawing for Animation\r\n', 'Drawing for Comics', NULL, 'https://www.youtube.com/embed/AXZGwTHCDGM?si=kFxjQtHcobEFkN8u', 104, 'COURSE_CONTENT'),
(92, '2023-11-01', 'Drawing the Human Head\r\n', 'Drawing Hands and Feet', NULL, 'https://www.youtube.com/embed/AXZGwTHCDGM?si=kFxjQtHcobEFkN8u', 105, 'COURSE_CONTENT'),
(93, '2023-08-07', 'Blind Contour Drawing\r\n', 'Continuous Line Drawing', NULL, 'https://www.youtube.com/embed/VSyX3NUv3Tc?si=FZl08aIsIHsvntlG', 106, 'COURSE_CONTENT'),
(94, '2023-11-02', 'Cross Contour Drawing\r\n', 'Scribble Drawings', NULL, 'https://www.youtube.com/embed/cbKzTy16a5E?si=46tP-UziyECpRw6d', 108, 'COURSE_CONTENT'),
(95, '2023-11-02', 'Quick Poses and Gestures', 'Gesture Drawing Essentials', NULL, 'https://www.youtube.com/embed/N3q2VfFiU_8?si=Wgw-DUyFsbYJmQJB', 107, 'COURSE_CONTENT'),
(96, '2023-11-04', 'Negative Space Contour Drawing', 'Contour Drawing Fundamentals\r\n', NULL, 'https://www.youtube.com/embed/PGNrnp-jLQg?si=szPsWmervNgku27a', 109, 'COURSE_CONTENT'),
(97, '2023-10-05', 'Figure Contour Drawing', 'Still Life Contour Drawing\r\n', NULL, 'https://www.youtube.com/embed/382HOlxJtw8?si=pHI1_K2WcPfOBAeP', 110, 'COURSE_CONTENT'),
(98, '2023-09-26', 'Drawing Linear Perspective\r\n', '1-Point Perspective Drawing', NULL, 'https://www.youtube.com/embed/5cJO0UVJGP4?si=3q8_U-l3Ss6nn9CZ', 111, 'COURSE_CONTENT'),
(99, '2023-07-02', '2-Point Perspective Drawing\r\n', 'Multi-Point Perspective', NULL, 'https://www.youtube.com/embed/rwQE142Z814?si=TX_ds_syb_7cJ3xG', 112, 'COURSE_CONTENT'),
(100, '2023-06-05', 'Aerial Perspective Drawing\r\n', 'Creating Value With Hatching', NULL, 'https://www.youtube.com/embed/ScCrqYtUwQo?si=aWbS1GU36equC41b', 113, 'COURSE_CONTENT'),
(101, '2023-11-01', 'Cross Hatching and Advanced Tone\r\n', 'Cast Shadows and Form', NULL, 'https://www.youtube.com/embed/rwQE142Z814?si=TX_ds_syb_7cJ3xG', 114, 'COURSE_CONTENT'),
(102, '2023-08-16', 'Value Scales and gradients\r\n', 'Figure Drawing Light and Shadow', NULL, 'https://www.youtube.com/embed/ScCrqYtUwQo?si=aWbS1GU36equC41b', 115, 'COURSE_CONTENT'),
(103, '2023-11-01', 'Aerial Perspective Drawing\r\n', 'Creating Value With Hatching', NULL, 'https://www.youtube.com/embed/f4HKKdh9tZ0?si=tZLACXE7lz20TU-x', 116, 'COURSE_CONTENT'),
(104, '2023-08-15', 'Cross Hatching and Advanced Tone\r\n', 'Cast Shadows and Form', NULL, 'https://www.youtube.com/embed/j_bnGWmRx-Q?si=EdOhesxFM2Q5o2i3', 117, 'COURSE_CONTENT'),
(105, '2023-08-28', 'Value Scales and gradients\r\n', 'Figure Drawing Light and Shadow', NULL, 'https://www.youtube.com/embed/j_bnGWmRx-Q?si=EdOhesxFM2Q5o2i3', 118, 'COURSE_CONTENT'),
(106, '2023-06-05', 'Drapery Folds and Light Logic\r\n', 'Basic Head Proportions', NULL, 'https://www.youtube.com/embed/tQIAnfU-zZM?si=sbdVoDctkYbvo1R1', 119, 'COURSE_CONTENT'),
(107, '2023-06-05', 'The Facial Landscape\r\n', 'Drawing Eyes, Nose and Mouth', NULL, 'https://www.youtube.com/embed/WH_I4w78neI?si=CWr4v7RK5EngosMk', 120, 'COURSE_CONTENT'),
(108, '2023-06-06', 'Capturing Likeness in a Portrait\r\n', 'Figure Proportion Basics', NULL, 'https://www.youtube.com/embed/JCwon6O-zNg?si=dbbsYftE6qAB5ZFf', 121, 'COURSE_CONTENT'),
(109, '2023-10-03', 'Gesture Drawing for Figures\r\n', 'Figure Drawing Anatomy', NULL, 'https://www.youtube.com/embed/tQIAnfU-zZM?si=GEgKaCExglBW4QyW', 122, 'COURSE_CONTENT'),
(110, '2023-08-06', 'Seated Figure Drawings', 'Figure Drawing Poses\r\n', NULL, 'https://www.youtube.com/embed/WH_I4w78neI?si=CWr4v7RK5EngosMk', 123, 'COURSE_CONTENT'),
(111, '2023-10-03', 'Figure Drawing Foreshortening', 'Figure Drawing Foreshortening', NULL, 'https://www.youtube.com/embed/j_bnGWmRx-Q?si=EdOhesxFM2Q5o2i3', 124, 'COURSE_CONTENT'),
(112, '2019-09-12', 'Urban Landscape Drawing', 'Rural Landscape Drawing', NULL, 'https://www.youtube.com/embed/tQIAnfU-zZM?si=sbdVoDctkYbvo1R1', 125, 'COURSE_CONTENT'),
(113, '2022-10-24', 'Perspective in Landscapes', 'Skies, Water and Atmosphere', NULL, 'https://www.youtube.com/embed/tQIAnfU-zZM?si=GEgKaCExglBW4QyW', 126, 'COURSE_CONTENT'),
(114, '2023-09-05', 'Drawing Trees and Foliage', 'Using Line Variety for Texture', NULL, 'https://www.youtube.com/embed/f4HKKdh9tZ0?si=tZLACXE7lz20TU-x', 127, 'COURSE_CONTENT'),
(115, '2022-10-10', 'Drapery Folds and Rhythms', 'Drawing Rough Textures', NULL, 'https://www.youtube.com/embed/ScCrqYtUwQo?si=aWbS1GU36equC41b', 128, 'COURSE_CONTENT'),
(116, '2023-10-05', 'Fabric Texture and Pattern', 'Drawing Smooth and Soft Textures', NULL, 'https://www.youtube.com/embed/rwQE142Z814?si=TX_ds_syb_7cJ3xG', 129, 'COURSE_CONTENT'),
(117, '2023-08-02', 'Incorporating Photocopies and Text', 'Mixed Media Collage', NULL, 'https://www.youtube.com/embed/382HOlxJtw8?si=pHI1_K2WcPfOBAeP', 130, 'COURSE_CONTENT'),
(119, '2023-09-04', 'Incorporating Photocopies and Text', 'Working with Tracings and Transfers', NULL, 'https://www.youtube.com/embed/f4HKKdh9tZ0?si=tZLACXE7lz20TU-x', 131, 'COURSE_CONTENT'),
(120, '2023-10-23', 'Drawing in a Sketchbook', 'Sketchbook Exploration and Creation', NULL, 'https://www.youtube.com/embed/oaq_zlWmq0g?si=EjEo-I5mgIvc-OJB', 132, 'COURSE_CONTENT'),
(121, '2023-09-24', 'Developing a Daily Drawing Practice', ' Mapping and Diagram Drawing', NULL, 'https://www.youtube.com/embed/2GRTWuhzzBE?si=IJWzjlzyxnoVowhk', 133, 'COURSE_CONTENT'),
(122, '1899-10-17', 'Visual Note Taking and Journaling', ' Bookbinding for Sketchbooks', NULL, 'https://www.youtube.com/embed/JCwon6O-zNg?si=dbbsYftE6qAB5ZFf', 134, 'COURSE_CONTENT'),
(123, '2023-11-06', 'Drawing Armor and Weapons', 'Drawing Armor and Weapons', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 135, 'COURSE_CONTENT'),
(124, '2023-11-06', 'Creating a Character Design', 'Creating a Character Design', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 136, 'COURSE_CONTENT'),
(125, '2023-11-06', 'Drawing Monsters and Aliens', 'Drawing Monsters and Aliens', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 137, 'COURSE_CONTENT'),
(126, '2023-11-06', 'Sci-Fi and Futuristic Landscapes', 'Sci-Fi and Futuristic Landscapes', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 138, 'COURSE_CONTENT'),
(127, '2023-11-06', 'Surreal Fantasy Worlds', 'Surreal Fantasy Worlds', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 139, 'COURSE_CONTENT'),
(128, '2023-11-06', 'Gothic and Horror Art', 'Gothic and Horror Art', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 140, 'COURSE_CONTENT'),
(129, '2023-11-06', 'Art Therapy and Drawing', 'Art Therapy and Drawing', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 180, 'COURSE_CONTENT'),
(130, '2023-11-06', 'Fantasy Art and Mythical Creatures', 'Fantasy Art and Mythical Creatures', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 141, 'COURSE_CONTENT'),
(131, '2023-11-06', 'Fashion Illustration', 'Fashion Illustration', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 142, 'COURSE_CONTENT'),
(132, '2023-11-06', 'Automotive Design Drawing', 'Automotive Design Drawing', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 143, 'COURSE_CONTENT'),
(133, '2023-11-06', 'Industrial Design Sketching', 'Industrial Design Sketching', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 144, 'COURSE_CONTENT'),
(134, '2023-11-06', 'Architectural Rendering', 'Architectural Rendering', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 145, 'COURSE_CONTENT'),
(135, '2023-11-06', 'Technical Drawing and CAD', 'Technical Drawing and CAD', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 146, 'COURSE_CONTENT'),
(136, '2023-11-06', 'Medical Illustration', 'Medical Illustration', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 147, 'COURSE_CONTENT'),
(137, '2023-11-06', 'Introduction to Basic Drawing Tools', 'Introduction to Basic Drawing Tools', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 235, 'COURSE_CONTENT'),
(138, '2023-11-06', 'Scientific Illustration', 'Scientific Illustration', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 148, 'COURSE_CONTENT'),
(139, '2023-11-06', 'Understanding Different Drawing Papers', 'Understanding Different Drawing Papers', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 234, 'COURSE_CONTENT'),
(140, '2023-11-06', 'Children\'s Book Illustration', 'Children\'s Book Illustration', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 149, 'COURSE_CONTENT'),
(141, '2023-11-06', 'Pencil Drawing Techniques for Beginners', 'Pencil Drawing Techniques for Beginners', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 233, 'COURSE_CONTENT'),
(142, '2023-11-06', 'Perspective in Animation', 'Perspective in Animation', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 150, 'COURSE_CONTENT'),
(143, '2023-11-06', 'Shading and Blending', 'Shading and Blending', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 232, 'COURSE_CONTENT'),
(144, '2023-11-06', 'Storyboarding for Animation', 'Storyboarding for Animation', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 151, 'COURSE_CONTENT'),
(145, '2023-11-06', 'Line Drawing and Contour Drawing', 'Line Drawing and Contour Drawing', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 231, 'COURSE_CONTENT'),
(146, '2023-11-06', 'Concept Art for Video Games', 'Concept Art for Video Games', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 152, 'COURSE_CONTENT'),
(147, '2023-11-06', 'Drawing Geometric Shapes', 'Drawing Geometric Shapes', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 230, 'COURSE_CONTENT'),
(148, '2023-11-06', 'Comic Strip Creation', 'Comic Strip Creation', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 153, 'COURSE_CONTENT'),
(149, '2023-11-06', 'Still Life Drawing', 'Still Life Drawing', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 230, 'COURSE_CONTENT'),
(150, '2023-11-06', 'Color Theory for Cartoonists', 'Color Theory for Cartoonists', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 154, 'COURSE_CONTENT'),
(151, '2023-11-06', 'Perspective Drawing', 'erspective Drawing', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 229, 'COURSE_CONTENT'),
(152, '2023-11-06', 'Sketching Landscapes', 'Sketching Landscapes', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 228, 'COURSE_CONTENT'),
(153, '2023-11-06', 'Figure Drawing: Proportions and Anatomy', 'Figure Drawing: Proportions and Anatomy', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 227, 'COURSE_CONTENT'),
(154, '2023-11-06', 'Inking Comics', 'Inking Comics', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 155, 'COURSE_CONTENT'),
(155, '2023-11-06', 'Gesture Drawing', 'Gesture Drawing', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 226, 'COURSE_CONTENT'),
(156, '2023-11-06', 'Comic Book and Graphic Novel Art', 'Comic Book and Graphic Novel Art', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 156, 'COURSE_CONTENT'),
(157, '2023-11-06', 'Portrait Drawing', 'Portrait Drawing', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 225, 'COURSE_CONTENT'),
(158, '2023-11-06', 'Caricature Celebrities', 'Caricature Celebrities', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 157, 'COURSE_CONTENT'),
(159, '2023-11-06', 'Caricature and Cartooning', 'Caricature and Cartooning', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 224, 'COURSE_CONTENT'),
(160, '2023-11-06', 'Caricature Techniques', 'Caricature Techniques', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 158, 'COURSE_CONTENT'),
(161, '2023-11-06', 'The Art of Charcoal Drawing', 'The Art of Charcoal Drawing', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 223, 'COURSE_CONTENT'),
(162, '2023-11-06', 'Clothing and Costume Design', 'Clothing and Costume Design', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 159, 'COURSE_CONTENT'),
(163, '2023-11-06', 'Ink Drawing Techniques', 'Ink Drawing Techniques', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 222, 'COURSE_CONTENT'),
(164, '2023-11-06', 'Pen and Ink Illustration', 'Pen and Ink Illustration', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 221, 'COURSE_CONTENT'),
(165, '2023-11-06', '<p>Cross-Hatching and Stippling</p>', 'Cross-Hatching and Stippling Method', '2023-11-08', 'https://www.youtube.com/watch?v=GX9tJShYmeU', 220, 'COURSE_CONTENT'),
(166, '2023-11-06', 'Scratchboard Art', 'Scratchboard Art', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 219, 'COURSE_CONTENT'),
(167, '2023-11-06', 'Drawing with Pastels', 'Drawing with Pastels', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 218, 'COURSE_CONTENT'),
(168, '2023-11-06', 'Soft and Hard Pastels', 'Soft and Hard Pastels', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 217, 'COURSE_CONTENT'),
(169, '2023-11-06', 'Chalk Pastel Techniques', 'Chalk Pastel Techniques', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 216, 'COURSE_CONTENT'),
(170, '2023-11-06', 'Pastel Portraits', 'Pastel Portraits', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 215, 'COURSE_CONTENT'),
(171, '2023-11-06', 'Watercolor Pencil Techniques', 'Watercolor Pencil Techniques', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 214, 'COURSE_CONTENT'),
(172, '2023-11-06', 'Colored Pencil Drawing', 'Colored Pencil Drawing', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 213, 'COURSE_CONTENT'),
(173, '2023-11-06', 'Blending Colored Pencils', 'Blending Colored Pencils', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 212, 'COURSE_CONTENT'),
(174, '2023-11-06', 'Creating Realistic Textures', 'Creating Realistic Textures', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 211, 'COURSE_CONTENT'),
(175, '2023-11-06', 'Wildlife Drawing', 'Wildlife Drawing', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 210, 'COURSE_CONTENT'),
(176, '2023-11-06', 'Botanical Illustration', 'Botanical Illustration', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 209, 'COURSE_CONTENT'),
(177, '2023-11-06', 'Architectural Drawing', 'Architectural Drawing', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 208, 'COURSE_CONTENT'),
(178, '2023-11-06', 'Urban Sketching', 'Urban Sketching', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 207, 'COURSE_CONTENT'),
(179, '2023-11-06', 'Animal Anatomy for Artists', 'Animal Anatomy for Artists', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 206, 'COURSE_CONTENT'),
(180, '2023-11-06', 'Capturing Light and Shadow', 'Capturing Light and Shadow', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 205, 'COURSE_CONTENT'),
(181, '2023-11-06', 'Drawing Hair and Hairstyles', 'Drawing Hair and Hairstyles', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 160, 'COURSE_CONTENT'),
(182, '2023-11-06', 'The Golden Ratio in Art', 'The Golden Ratio in Art', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 204, 'COURSE_CONTENT'),
(183, '2023-11-06', 'Drawing Expressive Emotions', 'Drawing Expressive Emotions', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 161, 'COURSE_CONTENT'),
(184, '2023-11-06', 'Composition and Design Principles', 'Composition and Design Principles', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 203, 'COURSE_CONTENT'),
(185, '2023-11-06', 'Foreshortening Techniques', 'Foreshortening Techniques', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 162, 'COURSE_CONTENT'),
(186, '2023-11-06', 'Creating Depth with Value', 'Creating Depth with Value', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 163, 'COURSE_CONTENT'),
(187, '2023-11-06', 'Negative Space Drawing', 'Negative Space Drawing', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 202, 'COURSE_CONTENT'),
(188, '2023-11-06', 'Portraiture: Mouth and Ears', 'Portraiture: Mouth and Ears', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 164, 'COURSE_CONTENT'),
(189, '2023-11-06', 'Abstraction and Non-Representational Art', 'Abstraction and Non-Representational Art', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 201, 'COURSE_CONTENT'),
(190, '2023-11-06', 'Portraiture: Eyes and Nose', 'Portraiture: Eyes and Nose', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 165, 'COURSE_CONTENT'),
(191, '2023-11-06', 'Mixed Media Drawing', 'Mixed Media Drawing', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 200, 'COURSE_CONTENT'),
(192, '2023-11-06', 'Drawing Hands and Feet', 'Drawing Hands and Feet', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 166, 'COURSE_CONTENT'),
(193, '2023-11-06', 'Collaborative Drawing Projects', 'Collaborative Drawing Projects', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 199, 'COURSE_CONTENT'),
(194, '2023-11-06', 'Capturing Movement and Action', 'Capturing Movement and Action', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 167, 'COURSE_CONTENT'),
(195, '2023-11-06', 'Drawing Fabric and Drapery', 'Drawing Fabric and Drapery', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 168, 'COURSE_CONTENT'),
(196, '2023-11-06', 'Drawing with Unconventional Tools', 'Drawing with Unconventional Tools', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 198, 'COURSE_CONTENT'),
(197, '2023-11-06', 'Reflections and Refractions', 'Reflections and Refractions', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 169, 'COURSE_CONTENT'),
(198, '2023-11-06', 'Experimental Mark-Making', 'Experimental Mark-Making', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 197, 'COURSE_CONTENT'),
(199, '2023-11-06', 'Texture and Pattern in Nature', 'Texture and Pattern in Nature', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 170, 'COURSE_CONTENT'),
(200, '2023-11-06', 'Atmospheric Perspective', 'Atmospheric Perspective', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 171, 'COURSE_CONTENT'),
(201, '2023-11-06', 'Surrealism in Drawing', 'Surrealism in Drawing', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 196, 'COURSE_CONTENT'),
(202, '2023-11-06', 'Watercolor Washes', 'Watercolor Washes', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 172, 'COURSE_CONTENT'),
(203, '2023-11-06', 'Art Movements: Impressionism and Post-Impressionism', 'Art Movements: Impressionism and Post-Impressionism', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 195, 'COURSE_CONTENT'),
(204, '2023-11-06', 'The Art of Hatching', 'The Art of Hatching', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 173, 'COURSE_CONTENT'),
(205, '2023-11-06', 'Art Movements: Cubism and Futurism', 'Art Movements: Cubism and Futurism', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 194, 'COURSE_CONTENT'),
(206, '2023-11-06', 'Chinese Brush Painting', 'Chinese Brush Painting', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 174, 'COURSE_CONTENT'),
(207, '2023-11-06', 'Art Movements: Abstract Expressionism', 'Art Movements: Abstract Expressionism', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 193, 'COURSE_CONTENT'),
(208, '2023-11-06', 'Art Movements: Pop Art', 'Art Movements: Pop Art', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 192, 'COURSE_CONTENT'),
(209, '2023-11-06', 'Japanese Ink Painting (Sumi-e)', 'Japanese Ink Painting (Sumi-e)', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 175, 'COURSE_CONTENT'),
(210, '2023-11-06', 'Art Movements: Minimalism', 'Art Movements: Minimalism', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 191, 'COURSE_CONTENT'),
(211, '2023-11-06', 'Art Movements: Contemporary Drawing', 'Art Movements: Contemporary Drawing', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 190, 'COURSE_CONTENT'),
(212, '2023-11-06', 'Famous Drawing Masters: Leonardo da Vinci', 'Famous Drawing Masters: Leonardo da Vinci', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 189, 'COURSE_CONTENT'),
(213, '2023-11-06', 'Famous Drawing Masters: Michelangelo', 'Famous Drawing Masters: Michelangelo', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 188, 'COURSE_CONTENT'),
(214, '2023-11-06', 'Famous Drawing Masters: Pablo Picasso', 'Famous Drawing Masters: Pablo Picasso', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 187, 'COURSE_CONTENT'),
(215, '2023-11-06', 'Famous Drawing Masters: Frida Kahlo', 'Famous Drawing Masters: Frida Kahlo', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 186, 'COURSE_CONTENT'),
(216, '2023-11-06', 'Famous Drawing Masters: Keith Haring', 'Famous Drawing Masters: Keith Haring', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 185, 'COURSE_CONTENT'),
(217, '2023-11-06', 'Drawing Historical Figures', 'Drawing Historical Figures', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 184, 'COURSE_CONTENT'),
(218, '2023-11-06', 'Drawing Cultural Icons', 'Drawing Cultural Icons', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 183, 'COURSE_CONTENT'),
(219, '2023-11-06', 'Recreating Masterpieces', 'Recreating Masterpieces', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 182, 'COURSE_CONTENT'),
(220, '2023-11-06', 'Drawing From Life vs. From Photos', 'Drawing From Life vs. From Photos', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 181, 'COURSE_CONTENT'),
(221, '2023-11-06', 'Sketchbook Journaling', 'Sketchbook Journaling', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 180, 'COURSE_CONTENT'),
(222, '2023-11-06', 'Zentangle and Doodling', 'Zentangle and Doodling', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 179, 'COURSE_CONTENT'),
(223, '2023-11-06', 'Drawing Mandalas', 'Drawing Mandalas', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 178, 'COURSE_CONTENT'),
(224, '2023-11-06', 'Abstract Patterns and Designs', 'Abstract Patterns and Designs', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 177, 'COURSE_CONTENT'),
(225, '2023-11-06', 'Calligraphy and Lettering', 'Calligraphy and Lettering', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 176, 'COURSE_CONTENT'),
(226, '2023-11-06', 'Drawing Animals in Motion', 'Drawing Animals in Motion', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 19, 'COURSE_CONTENT'),
(227, '2023-11-06', 'Wildlife in their Habitats', 'Wildlife in their Habitats', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 30, 'COURSE_CONTENT'),
(228, '2023-11-06', 'Botanical Art: Flowers and Plants', 'Botanical Art: Flowers and Plants', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 31, 'COURSE_CONTENT'),
(229, '2023-11-06', 'Botanical Art: Fruits and Vegetables', 'Botanical Art: Fruits and Vegetables', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 32, 'COURSE_CONTENT'),
(230, '2023-11-06', 'Landscape Elements: Trees and Forests', 'Landscape Elements: Trees and Forests', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 33, 'COURSE_CONTENT'),
(231, '2023-11-06', 'Landscape Elements: Water and Reflections', 'Landscape Elements: Water and Reflections', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 34, 'COURSE_CONTENT'),
(232, '2023-11-06', 'Landscape Elements: Mountains and Rocks', 'Landscape Elements: Mountains and Rocks', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 35, 'COURSE_CONTENT'),
(233, '2023-11-06', 'Sketching People in Public Places', 'Sketching People in Public Places', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 37, 'COURSE_CONTENT'),
(234, '2023-11-06', 'Drawing Urban Environments', 'Drawing Urban Environments', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 36, 'COURSE_CONTENT'),
(235, '2023-11-06', 'Drawing Markets and Street Scenes', 'Drawing Markets and Street Scenes', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 38, 'COURSE_CONTENT'),
(236, '2023-11-06', 'Architectural Details and Ornaments', 'Architectural Details and Ornaments', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 39, 'COURSE_CONTENT'),
(237, '2023-11-06', 'Historical Buildings and Landmarks', 'Historical Buildings and Landmarks', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 43, 'COURSE_CONTENT'),
(238, '2023-11-06', 'Drawing Interior Spaces', 'Drawing Interior Spaces', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 48, 'COURSE_CONTENT'),
(239, '2023-11-06', 'Vehicle and Transportation Drawing', 'Vehicle and Transportation Drawing', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 49, 'COURSE_CONTENT'),
(240, '2023-11-06', 'Airplanes and Aviation Art', 'Airplanes and Aviation Art', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 50, 'COURSE_CONTENT'),
(241, '2023-11-06', 'Maritime and Nautical Art', 'Maritime and Nautical Art', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 51, 'COURSE_CONTENT'),
(242, '2023-11-06', 'Trains and Railway Art', 'Trains and Railway Art', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 52, 'COURSE_CONTENT'),
(243, '2023-11-06', 'Urban Transportation Art', 'Urban Transportation Art', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 53, 'COURSE_CONTENT'),
(244, '2023-11-06', 'Drawing from Imagination', 'Drawing from Imagination', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 54, 'COURSE_CONTENT'),
(245, '2023-11-06', 'Abstract Expressionism', 'Abstract Expressionism', NULL, 'https://www.youtube.com/embed/ewMksAbgdBI?si=XKDfzSFbX6eE0QgE', 55, 'COURSE_CONTENT'),
(246, '2023-11-06', 'Mixed Media Collage', 'Mixed Media Collage', NULL, 'https://www.youtube.com/embed/nDe7kHa6MVo?si=OqlhgIbsd7sDnei_', 56, 'COURSE_CONTENT'),
(247, '2023-11-06', 'Graffiti Art and Street Art', 'Graffiti Art and Street Art', NULL, 'https://www.youtube.com/embed/5Zc1xVS_X7Q?si=Z12P7J8ZF9lGwo89', 57, 'COURSE_CONTENT'),
(248, '2023-11-06', 'Art and Social Commentary', 'Art and Social Commentary', NULL, 'https://www.youtube.com/embed/ByTxhyGtk-g?si=puHINdORNSv5v-67', 65, 'COURSE_CONTENT'),
(249, '2023-11-06', 'Art Education and Teaching', 'Art Education and Teaching', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 66, 'COURSE_CONTENT'),
(250, '2023-11-06', 'Art History and Criticism', 'Art History and Criticism', NULL, 'https://www.youtube.com/embed/8xdchD4lUXI?si=kEwrBoP2vpcu9MjO', 67, 'COURSE_CONTENT'),
(251, '2023-11-06', 'Art Museums and Collections', 'Art Museums and Collections', NULL, 'https://www.youtube.com/embed/GX9tJShYmeU?si=elj2Xkg8T-008X3f', 68, 'COURSE_CONTENT'),
(252, '2023-11-06', 'Contemporary Art Trends', 'Contemporary Art Trends', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ?si=KpGEozD8BoqWOKbh', 69, 'COURSE_CONTENT'),
(253, '2023-11-06', 'Art Installation and Sculpture', 'Art Installation and Sculpture', NULL, 'https://www.youtube.com/embed/lz33416kapQ?si=SNkKUJlTUdLuHdo9', 70, 'COURSE_CONTENT'),
(254, '2023-11-06', 'Digital Drawing and Tablets', 'Digital Drawing and Tablets', NULL, 'https://www.youtube.com/embed/CGB9VqSCRLU?si=xR1FuQJkTJINJHBi', 77, 'COURSE_CONTENT'),
(255, '2023-11-06', 'Augmented Reality Art', 'Augmented Reality Art', NULL, 'https://www.youtube.com/embed/F65D4ej4f-M?si=Z2DLyBJLsNJbiBfu', 78, 'COURSE_CONTENT'),
(260, '2023-11-06', '1', '1', NULL, 'https://www.youtube.com/embed/RB0JueDSs_o', 28, 'TESTING'),
(261, '2023-11-07', 'Assignment', 'Assignment', NULL, 'https://www.youtube.com/embed/YbQSU_2NPCY', 28, 'TESTING'),
(263, '2023-11-07', 'test', 'test', NULL, 'https://www.youtube.com/embed/YbQSU_2NPCY', 28, 'TESTING'),
(264, '2023-11-07', 'Introduce tools', 'Introduction ', NULL, 'https://www.youtube.com/embed/1jjmOF1hQqI', 237, 'COURSE_CONTENT'),
(265, '2023-11-07', 'Advanced Techniques Intensive', 'Dynamic Mark ', '2023-11-07', 'https://www.youtube.com/embed/gKijkM15Fso?si=P92rvjQl3KKpQXWc', 238, 'COURSE_CONTENT'),
(266, '2023-11-07', 'Abstract Landscape Compositions\n', 'Non-Objective Compositions', NULL, 'https://www.youtube.com/embed/5W3Wj-a_7Vo', 240, 'TESTING'),
(267, '2023-11-08', 'Learn to Draw #08 - Values & Edges', 'Learn to Draw #08 - Values & Edges', NULL, 'https://www.youtube.com/embed/01dLvv9RPVQ', 220, 'COURSE_CONTENT'),
(270, '2023-11-08', 'Visual Metaphor and Symbolic Drawing\n', 'Drawing for Visual Storytelling', NULL, 'https://www.youtube.com/embed/O53dIDTIaAY', 242, 'COURSE_CONTENT'),
(271, '2023-11-08', 'Visual Metaphor and Symbolic Drawing\n', 'Gestalt Principles of Perception', NULL, 'https://www.youtube.com/embed/DHzJMa_pqPY', 243, 'COURSE_CONTENT'),
(272, '2023-11-08', 'Rules of Spatial Organization\n', 'Mapping and Diagram Drawing', NULL, 'https://www.youtube.com/embed/HnmYMvYyHkg', 244, 'TESTING'),
(273, '2023-11-08', 'Photographing and Documenting Drawings', 'Building an Art Portfolio 1', '2023-11-08', 'https://www.youtube.com/embed/xyH6GllPn6s', 245, 'COURSE_CONTENT'),
(274, '2023-11-08', 'Contemporary Drawing', 'Photographing and Documenting Drawings', NULL, 'https://www.youtube.com/embed/EUScTFrSwFI', 245, 'COURSE_CONTENT'),
(275, '2023-11-08', 'Contemporary', 'Contemporary ', NULL, 'https://www.youtube.com/embed/zDq9s9ZG_Ts', 245, 'TESTING');

-- --------------------------------------------------------

--
-- Table structure for table `course_content_completion`
--

CREATE TABLE `course_content_completion` (
  `id` bigint(20) NOT NULL,
  `finish_date` date DEFAULT NULL,
  `done` bit(1) DEFAULT NULL,
  `course_content_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `content_exam` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_content_completion`
--

INSERT INTO `course_content_completion` (`id`, `finish_date`, `done`, `course_content_id`, `customer_id`, `content_exam`) VALUES
(2, NULL, b'1', 2, 12, NULL),
(3, NULL, b'1', 1, 12, NULL),
(4, NULL, b'1', 4, 12, NULL),
(5, '2023-10-26', b'1', 3, 12, NULL),
(6, '2023-10-26', b'1', 5, 12, NULL),
(7, '2023-10-26', b'1', 10, 12, NULL),
(8, '2023-10-26', b'1', 12, 12, NULL),
(9, '2023-10-26', b'1', 8, 12, NULL),
(10, '2023-10-26', b'1', 6, 12, NULL),
(11, '2023-10-26', b'1', 16, 12, NULL),
(12, '2023-10-26', b'1', 18, 12, NULL),
(13, '2023-10-30', b'1', 7, 12, NULL),
(14, '2023-10-30', b'1', 9, 12, NULL),
(15, '2023-10-30', b'1', 26, 12, NULL),
(16, '2023-10-30', b'1', 11, 12, NULL),
(17, '2023-10-30', b'1', 19, 12, NULL),
(18, '2023-10-30', b'1', 25, 12, NULL),
(19, '2023-10-30', b'1', 23, 12, NULL),
(20, '2023-11-02', b'1', 1, 24, NULL),
(21, '2023-11-02', b'1', 19, 24, NULL),
(22, '2023-11-02', b'1', 18, 24, NULL),
(23, '2023-11-02', b'1', 27, 24, NULL),
(24, '2023-11-02', b'1', 28, 24, NULL),
(25, '2023-11-03', b'1', 27, 12, NULL),
(26, '2023-11-03', b'1', 28, 12, NULL),
(27, '2023-11-03', b'1', 23, 24, NULL),
(28, '2023-11-03', b'1', 29, 12, NULL),
(29, '2023-11-03', b'1', 2, 24, NULL),
(30, '2023-11-03', b'1', 3, 24, NULL),
(31, '2023-11-03', b'1', 4, 24, NULL),
(32, '2023-11-03', b'1', 5, 24, NULL),
(33, '2023-11-03', b'1', 33, 24, NULL),
(34, '2023-11-03', b'1', 30, 12, NULL),
(35, '2023-11-05', b'1', 16, 24, NULL),
(36, '2023-11-05', b'1', 25, 24, NULL),
(37, '2023-11-05', b'1', 35, 24, NULL),
(38, '2023-11-05', b'1', 34, 24, NULL),
(42, '2023-11-07', b'1', 73, 12, 1),
(43, '2023-11-07', b'1', 260, 12, 2),
(44, '2023-11-07', b'1', 261, 12, NULL),
(45, '2023-11-07', b'1', 263, 12, 3),
(46, '2023-11-07', b'1', 1, 25, NULL),
(47, '2023-11-07', b'1', 2, 25, NULL),
(48, '2023-11-07', b'1', 3, 25, NULL),
(49, '2023-11-07', b'1', 7, 25, NULL),
(50, '2023-11-07', b'1', 6, 25, NULL),
(51, '2023-11-07', b'1', 5, 25, NULL),
(52, '2023-11-07', b'1', 4, 25, NULL),
(53, '2023-11-07', b'1', 8, 25, NULL),
(54, '2023-11-07', b'1', 9, 25, NULL),
(55, '2023-11-07', b'1', 11, 25, NULL),
(56, '2023-11-07', b'1', 12, 25, NULL),
(57, '2023-11-07', b'1', 26, 25, NULL),
(58, '2023-11-07', b'1', 37, 25, NULL),
(59, '2023-11-07', b'1', 38, 25, NULL),
(60, '2023-11-07', b'1', 39, 25, NULL),
(61, '2023-11-07', b'1', 40, 25, NULL),
(62, '2023-11-07', b'1', 237, 25, NULL),
(63, '2023-11-07', b'1', 41, 25, NULL),
(64, '2023-11-07', b'1', 42, 25, NULL),
(65, '2023-11-07', b'1', 43, 25, NULL),
(66, '2023-11-07', b'1', 45, 25, NULL),
(67, '2023-11-07', b'1', 10, 25, NULL),
(68, '2023-11-07', b'1', 265, 24, NULL),
(69, '2023-11-07', b'1', 123, 24, NULL),
(70, '2023-11-07', b'1', 266, 24, 4),
(71, '2023-11-07', b'1', 35, 12, NULL),
(72, '2023-11-07', b'1', 34, 12, NULL),
(73, '2023-11-08', b'1', 270, 24, NULL),
(74, '2023-11-08', b'1', 271, 24, NULL),
(75, '2023-11-08', b'1', 272, 24, 5),
(76, '2023-11-08', b'1', 64, 24, NULL),
(77, '2023-11-08', b'1', 65, 24, NULL),
(78, '2023-11-08', b'1', 66, 24, NULL),
(79, '2023-11-08', b'1', 67, 24, NULL),
(80, '2023-11-08', b'1', 68, 24, NULL),
(81, '2023-11-08', b'1', 273, 24, NULL),
(82, '2023-11-08', b'1', 274, 24, NULL),
(83, '2023-11-08', b'1', 275, 24, 6),
(84, '2023-11-15', b'1', 92, 27, NULL),
(85, '2023-11-15', b'1', 93, 27, NULL),
(86, '2023-11-15', b'1', 95, 27, NULL),
(87, '2023-11-15', b'1', 94, 27, NULL),
(88, '2023-11-15', b'1', 96, 27, NULL),
(89, '2023-11-16', b'1', 128, 12, NULL),
(90, '2023-11-16', b'1', 130, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_detail`
--

CREATE TABLE `course_detail` (
  `course_detail` bigint(20) NOT NULL,
  `about_course` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_exam_completion`
--

CREATE TABLE `course_exam_completion` (
  `id` bigint(20) NOT NULL,
  `score` double DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `submit_date` date DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_section_completion`
--

CREATE TABLE `course_section_completion` (
  `id` bigint(20) NOT NULL,
  `finish_date` date DEFAULT NULL,
  `done` bit(1) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `birhthdate` date DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` smallint(6) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `birhthdate`, `fullname`, `gender`, `avatar`, `account_id`) VALUES
(1, '2023-09-22', 'Nguyen Quang Vinh', 1, 'https://www.brandbird.app/assets/christmas/demo-portrait.png', 20),
(2, '2023-09-22', 'Mary Johnson', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSLSsSD_Bi4PjUv35MteekOUNtCne6MdFLE1tRMsoVWMMMveBBz6iQ1429_FxginjyHZg&usqp=CAU', 21),
(3, '2023-09-01', 'John Smith', 1, 'https://i.pinimg.com/736x/92/5c/8a/925c8ab403d620ded257128c948f75c2.jpg', 22),
(4, '2023-09-01', 'Mary Johnson', 1, 'https://previews.123rf.com/images/dimedrol68/dimedrol681603/dimedrol68160300176/55213982-serious-bearded-man-looking-straight-into-the-camera.jpg', 23),
(5, '2023-09-01', 'Michael Williams', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsBENgWM6aDXp7LIWUn-ZEvWjuNCdhYAZplDrUv3p5pJv6eX4HgyeBjEEsveXqkUmXIUA&usqp=CAU', 25),
(6, '2023-09-01', 'Jennifer Brown', 1, 'https://previews.123rf.com/images/rido/rido1010/rido101000545/8235686-sourire-de-jeune-homme-occasionnel-en-regardant-la-cam%C3%A9ra-avec-joie-et-confiance-isol%C3%A9-sur-fond.jpg', 26),
(7, '2023-09-01', 'David Jones', 1, 'https://us.123rf.com/450wm/vadymvdrobot/vadymvdrobot1711/vadymvdrobot171105118/90382907-portrait-de-a-jeune-homme-gai-dans-chemise-blanche-debout-regarder-loin-isol%C3%A9-sur-arri%C3%A8re.jpg?ver=6', 27),
(8, '2023-09-01', 'Sarah Davis', 1, 'https://us.123rf.com/450wm/tuiphotoengineer/tuiphotoengineer1708/tuiphotoengineer170800051/84566323-asiatique-bel-homme-avec-une-moustache-souriant-et-riant-isol%C3%A9-sur-fond-blanc.jpg?ver=6', 28),
(9, '2023-09-01', 'Robert Miller', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuR47TZ9ZChzRcpuhLgOOWQa57dglAb3-51vJemcRRFwj8g9a3c8yqLeFpKXhqfvXMJvY&usqp=CAU', 29),
(10, '2023-09-01', 'Karen Wilson', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBAwW5OHvmrEel4Aawe00qf4-LJYs8Mwf2wDcooFYhCXrgDW7jRrhvcIhJ0uln5EOI9KY&usqp=CAU', 30),
(11, '2023-09-01', 'Charles Garcia', 1, 'https://us.123rf.com/450wm/januaryxii/januaryxii1401/januaryxii140100298/25080701-beau-mec-avec-une-barbe-et-son-pouce-sur-blanc.jpg?ver=6', 32),
(12, '2023-06-09', 'Lisa Rodriguez', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRadgs_oYq3kiVgrfPgjPcRlNtoWtazlKpHLwoBqwTwAISxGlgLiB-ZwtfS6gcp7RLeFag&usqp=CAU', 33),
(13, '2013-11-02', 'William Martinez', 1, 'https://us.123rf.com/450wm/luissantos84/luissantos841104/luissantos84110400152/9304637-jeune-homme-souriant-thumbs-up-principalement-sur-le-main-sur-un-fond-blanc-isol%C3%A9.jpg?ver=6', 36),
(14, '2023-09-22', 'Patricia Hernandez', 1, 'https://us.123rf.com/450wm/peopleimages12/peopleimages122301/peopleimages12230119957/196971700-thumbs-up-ok-and-man-with-smile-portrait-with-hand-sign-yes-and-thank-you-with-feedback-against.jpg?ver=6', 39),
(15, '2023-09-22', 'Joseph Thompson', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdb_TY9Xwt3789u9FEmTbEN_Jtkh3s_Y1lHpnsWTlnmsGoD2pex5rbjJtJwwxwubKhwWE&usqp=CAU', 40),
(16, '2023-09-22', 'Barbara White', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUVaBFaKxuJoJ59w80vFilBDbmrR8xyy3avTo8AfaSAi5n0pUUSjsQmSAR0jBAEmcYF_M&usqp=CAU', 43),
(17, '2023-09-01', 'Thomas Perez', 1, 'https://media.istockphoto.com/id/1126690925/pt/foto/cheerful-young-hispanic-man-standing-in-a-studio-hands-arms-crossed-copy-space.jpg?s=612x612&w=0&k=20&c=Xsjo1aGm2obP46OlLZRfNb6mFk1PmkR_34AFQ8gBU2U=', 45),
(18, '2023-09-22', 'Nancy Lewis', 1, 'https://avatoon.me/wp-content/uploads/2021/07/avatar-looks-like-me_1.1..webp', 46),
(19, '2023-10-07', 'Daniel Turner', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi9zHAXhGJpq0LVkEKb_1TPCmcQL57STi6cQ&usqp=CAU', 47),
(20, '2023-10-01', 'Kathleen Allen', 0, 'https://imgv3.fotor.com/images/homepage-feature-card/realistic-3d-avatar-of-a-gold-hair-boy.jpg', 48),
(21, '2023-10-07', 'Paul Young', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg-5B4QzKAK0n161SAQG8HIKsMeMEbRE1FlQ&usqp=CAU', 49),
(22, '2003-11-23', 'Rebecca King', 0, 'https://assets-global.website-files.com/6245dc1e30cd521a34cf7059/64e8811384d35c546eda6fdd_fullbody.png', 37),
(23, '2023-10-28', 'Mark Taylor', 0, 'https://fiverr-res.cloudinary.com/video/upload/t_vzrthumb_large/phyqzcuolngyzpu4abzd.png', 91),
(24, '2003-01-01', 'Laura Scott', 1, 'https://assets-global.website-files.com/6245dc1e30cd521a34cf7059/64e883083d07a12f356aece3_Tile.png', 92),
(25, '2003-12-01', 'James Moore', 1, 'https://assets-global.website-files.com/6245dc1e30cd521a34cf7059/64e883083d07a12f356aece3_Tile.png', 99),
(26, '2002-12-05', 'Vo Minh Bao', 0, '', 102),
(27, '2003-02-07', 'Mr J', 0, '', 104);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` bigint(20) NOT NULL,
  `art_url` varchar(255) NOT NULL,
  `instructor_comment` varchar(255) DEFAULT NULL,
  `score` char(1) DEFAULT NULL,
  `submit_status` varchar(255) DEFAULT NULL,
  `assignment_instructor` bigint(20) DEFAULT NULL,
  `course_content_completion_id` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `art_url`, `instructor_comment`, `score`, `submit_status`, `assignment_instructor`, `course_content_completion_id`, `description`, `title`, `video_link`) VALUES
(1, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/23_73_12_ccontentexam.jpg', 'Nice', 'A', 'PASSED', 12, 42, NULL, NULL, NULL),
(2, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/23_260_12_ccontentexam.png', 'Nice', 'A', 'PASSED', 12, 43, NULL, NULL, NULL),
(3, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/23_263_12_ccontentexam.jpg', 'Very nice, good job', 'A', 'PASSED', 12, 45, NULL, NULL, NULL),
(4, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/49_266_24_ccontentexam.jpg', 'so good', 'A', 'PASSED', 22, 70, NULL, NULL, NULL),
(5, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/51_272_24_ccontentexam.jpg', '', 'A', 'PASSED', 22, 75, NULL, NULL, NULL),
(6, 'https://ademyimage.s3.ap-southeast-1.amazonaws.com/images/52_275_24_ccontentexam.jpg', 'Ok, Art good', 'A', 'PASSED', 12, 83, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `feedback_date` date DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_meta`
--

CREATE TABLE `file_meta` (
  `img_id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_meta`
--

INSERT INTO `file_meta` (`img_id`, `file_name`, `file_path`, `version`) VALUES
(1, 'Arisu.png', 'ademyimage/images', '7JUvh6udDjhS7wp5QpS2JONCbCc6DUQq'),
(2, 'Arisu.png', 'ademyimage/images', 'B3HK9rpfhVZc8QcI5JyHGoNS55_gY18j'),
(3, 'Arisu.png', 'ademyimage/images', '_DXoxuHOJ.ifPsWKOHFibi2mNG07tbZP'),
(4, 'certificate.pdf', 'ademyimage/certification', '7vXFNf9eYu3ZjHRDroxa6i9CsnqSWb21'),
(6, '23certificate12.pdf', 'ademyimage/certification', 'SrDMFY8hGVErqZiN04TR7NvHWhMAGirh'),
(7, '3certificate12.pdf', 'ademyimage/certification', 'sfz9qOtNbhHPSJ.uqlPcjYtHSJ7cQqL0'),
(8, '1certificate12.pdf', 'ademyimage/certification', 'GqPDZIPNfcydkkKerrI9ebnMe3P2q4JL'),
(9, '4certificate12.pdf', 'ademyimage/certification', 'CtZXXMh_6yygCPS5XGxEEA1pCaMGq9f5'),
(10, '4certificate24.pdf', 'ademyimage/certification', 'SmYPRdlhPDV741sW3.Hlk8YDqpu0QFYy'),
(11, '4certificate24.pdf', 'ademyimage/certification', 'GmR6PLDAnOUXI.3qgwLVbvI90XlF1NjZ'),
(12, '3certificate24.pdf', 'ademyimage/certification', 'A302BJtH08kjEIF.BE1zn0GJWSJkW7IE'),
(13, '3certificate24.pdf', 'ademyimage/certification', 'TIe3Jquu.t8XGBaJZyAMbdMsW9tQYVI9'),
(14, '1certificate13.pdf', 'ademyimage/certification', 'D53QNY52DUwyoyKjwGFob9uJrhBmjrZt'),
(15, '3certificate24.pdf', 'ademyimage/certification', 'lbxbFh9bRLNLk9q25FvE_Hxv1jb7_RUT'),
(16, '3certificate24.pdf', 'ademyimage/certification', 'ZUyKtSOBeIwwcxEc8zl_vHZyG4.JRnH0'),
(17, '3certificate24.pdf', 'ademyimage/certification', 'B6Ng3OM20Ya6gRXaZVDSVC_heT8dgsdT'),
(18, '3certificate24.pdf', 'ademyimage/certification', 'NRMJWFPVpUBPnGCCs1tf3Xz9OGimdzjL'),
(19, '3certificate24.pdf', 'ademyimage/certification', 'qugRlaGlPWczWYGFPY6OlxZT.LsB_.2G'),
(20, '3certificate24.pdf', 'ademyimage/certification', 'AD7Dzx5YrQG_dt79i8Ys5zlaK19nTryV'),
(21, '3certificate24.pdf', 'ademyimage/certification', 'H6iCQN2VtxlZ3ueUQm5NR8Yjj74mVSYK'),
(22, '3certificate24.pdf', 'ademyimage/certification', 'uIyY4qv7LUDbWg.VAQE_.dufAsDIwpOF'),
(23, '3certificate24.pdf', 'ademyimage/certification', 'o6x8yBNRVu67MMR.CgssPkFtg9Rx8nyJ'),
(24, '23certificate24.pdf', 'ademyimage/certification', '8Dn9DkEW875HFJr3DBu5KJg8AGGJ9efs'),
(25, '3certificate24.pdf', 'ademyimage/certification', '27tEyboilSukmFby.134VQSvCGtKTCfX'),
(26, '3certificate24.pdf', 'ademyimage/certification', 'mq7OgdAiDC.HJqFQm5QIcZiRe5RyR5m_'),
(27, '3certificate24.pdf', 'ademyimage/certification', 'mGOtkjDtIr23a32svyf_nRXcrxfz8Ne6'),
(28, '3certificate24.pdf', 'ademyimage/certification', 'MwtesquNvTrIIYU48x8o1PgaCfsmQaBM'),
(29, '3certificate24.pdf', 'ademyimage/certification', 'uFifjkhJ7FMGnjA0Pv2z56yxi4PB0ONv'),
(30, '3certificate24.pdf', 'ademyimage/certification', 'WHMBJ79OqZqwo3VlPw7Hv09eZ.BziJay'),
(31, '3certificate24.pdf', 'ademyimage/certification', 'G7AjwljDmWgKO30e3XK_W0OWjWXAJj_Z'),
(32, '3certificate24.pdf', 'ademyimage/certification', 'g2rQX1u.klqVULMoKEWy8AJi2dwIs3zX'),
(33, '3certificate24.pdf', 'ademyimage/certification', 'Kz7fnfOuSxCdhb5avHZicccdhrUYHdsy'),
(34, '3certificate24.pdf', 'ademyimage/certification', 'SYFO6Q5Sd5MOgDscSJlqRqt.5EBU_vik'),
(35, '3certificate24.pdf', 'ademyimage/certification', 'CHXv7fsWBXyYszXlvsJQZhOIqp3CKLjm'),
(36, '3certificate24.pdf', 'ademyimage/certification', 'sYj0VHNv9uq_YVjIgoOCswg44jA1ovcZ'),
(37, '3certificate24.pdf', 'ademyimage/certification', 'Pt49tMc71IYWHl73mtshzAxyoNyKk1In'),
(38, '3certificate24.pdf', 'ademyimage/certification', 'zP6c2I4CxNQLQZe4Y.kHWrJASOKz4Tht'),
(39, '3certificate24.pdf', 'ademyimage/certification', 'FM45KT_g8W6CMGvJ0FUN7oAihF71vUxu'),
(40, '3certificate24.pdf', 'ademyimage/certification', 'iSsSFRypjH2pBXyoLKlZpdqOr2CsITqg'),
(41, '3certificate24.pdf', 'ademyimage/certification', 'UsFHXBqDkuVxJy6FWL4foG4LYEZthXTJ'),
(42, '3certificate24.pdf', 'ademyimage/certification', '2JveY7PCaIRpjgZHxDQlHfKVWkidK49j'),
(43, 'Fzriy9waEAAZ-Tm.jpg', 'ademyimage/images', 'Ae0k4yUAAlwlc3poCDIUmlaN4_LpBeGh'),
(44, 'nahida_bikini.jpg', 'ademyimage/images', 'lOQZuuVcbKEbh3CCWSFejRzuEWarg.4n'),
(45, '3579a85a4edcc86ce74b72ddba2a469d_7190599680292126418.png', 'ademyimage/images', 'v.W1M.EtrVISGodvXrQGfztSat_lCsjS'),
(46, '3579a85a4edcc86ce74b72ddba2a469d_7190599680292126418.png', 'ademyimage/images', 'gs.nxSO_.rcVywNt2Tk.pR02lMzmEQoK'),
(47, '3579a85a4edcc86ce74b72ddba2a469d_7190599680292126418.png', 'ademyimage/images', 'JxsrPPX9hBTwdcZtasX1v754emP_AYBs'),
(48, 'Fzriy9waEAAZ-Tm.jpg', 'ademyimage/images', '2YPd7HbWTkMejlNFjIc8l1sVFRgVkL2a'),
(49, 'Fzriy9waEAAZ-Tm.jpg', 'ademyimage/images', 'PaLyaAJNwroGSNiuyugAgiZp7tGeFbJE'),
(50, 'Fzriy9waEAAZ-Tm.jpg', 'ademyimage/images', 'bCTvUMsZI6Ags_MVFTO4kad0.BDv.tQd'),
(51, 'Fzriy9waEAAZ-Tm.jpg', 'ademyimage/images', 'ir.H4cXLvTS7EVdCqi8c9nESAJiMMnjB'),
(52, '23_73_12_ccontentexam.jpg', 'ademyimage/images', '8CfFmB7NwNvsQu5GJciflO1hsO2Yq0F9'),
(53, '23_73_12_ccontentexam.jpg', 'ademyimage/images', 'bTPM0JU2wpsZpZUM1BAKYjSJG5gCzNyX'),
(54, '23_73_12_ccontentexam.jpg', 'ademyimage/images', '1F3h8s_GEY.X2riqoXNfX97UZlCPlF4y'),
(55, '23_73_12_ccontentexam.jpg', 'ademyimage/images', '9xx9a4GL2.J8V_Ny31i7lIfherhNELQ1'),
(56, '23_73_12_ccontentexam.jpg', 'ademyimage/images', 'go2FibQf3hCxyMRTVvZIxjxo9q5ZF3Vf'),
(57, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'R9zOpYPf2CrAGz4C0t2HCpZkMg3OJ9JR'),
(58, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'iMAkQ.LlQbxTIacvFfcqYHG4VXOs4cxh'),
(59, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'lrsETNbtxF4uaVTmr3Qqkba_E22DvOi9'),
(60, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'fdQDYgNvT9qISJnUgntn05di0dm0Jj4W'),
(61, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'hvvEhHgrJvETAGG7FxXhLCLvIS4m.BzW'),
(62, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'ZAM59bCtfvDVbCbRwZCjbrUgTATfybTJ'),
(63, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'AjUGtHBZNi5TTAhXqlYx04eg4dl.E8LR'),
(64, '23_260_12_ccontentexam.jpg', 'ademyimage/images', '4V6tOZzUgqdYQpks_68q4sy0MrqY2d3E'),
(65, '23_260_12_ccontentexam.jpg', 'ademyimage/images', 'V1HCoT8odT_vCIsYFN7dptVz4n6Jbpzv'),
(66, '23_260_12_ccontentexam.png', 'ademyimage/images', 'zawvfmkHjxMVWh74JOTFzFhz3DpQZ9Ur'),
(67, '23_260_12_ccontentexam.png', 'ademyimage/images', 'BsBFevyNVBakiRKrL_nlIzrjQPtA3jTK'),
(68, '23_263_12_ccontentexam.jpg', 'ademyimage/images', 'JM7R6vQ09osgK83Eu2OFgtFv.IQ0qT6Y'),
(69, '1certificate25.pdf', 'ademyimage/certification', '_RotW6IUL_C3mA_mA6GkkF0UTJa6TmfZ'),
(70, 'Ghost_0004_cap_Ghost_00_03_05_06.png', 'ademyimage/images', 'okkVumhDLTcXoD5coK5diNXF.TnkLt9E'),
(71, 'tree-drawing-6.jpg', 'ademyimage/images', 'lTLl_EYXY0U1LxvwivqidEtAUmLYkODh'),
(72, '48certificate24.pdf', 'ademyimage/certification', 'kvn0Z6KqPItrrtvUQM8nyZWD1YKoRYZ8'),
(73, 'tree-drawing-6.jpg', 'ademyimage/images', 'V9pWNbfnd0WGm7dY7cnhIWnPk7fdWoqJ'),
(74, '49_266_24_ccontentexam.jpg', 'ademyimage/images', '.HbSHRL8jF5slihrWPQJUF8Sx.4IMgi2'),
(75, '49certificate24.pdf', 'ademyimage/certification', 'MwGcWxFhwuuzSfw5XP05DFTEZ4us1Usm'),
(76, 'tree-drawing-6.jpg', 'ademyimage/images', 'jEgreDvLuzldnbb8h42MWIaC9McfhPK.'),
(77, 'download (1).jpg', 'ademyimage/images', 'qLsiDSsM0V66WppaMLA3LASHsIgMD8Mn'),
(78, '51_272_24_ccontentexam.jpg', 'ademyimage/images', 'h3p6.7dKN.N2AkUCqYbQ3sKGoRX50R9Z'),
(79, '51_272_24_ccontentexam.jpg', 'ademyimage/images', '_7cdHrOW9O8RkV4kpQMtXMHLGC9Wcz9j'),
(80, '51certificate24.pdf', 'ademyimage/certification', 'IgXgWYcHTli8yXiURiw7KNd0Y_umLPFX'),
(81, '385529869_1734208130340571_6735225611101081321_n.jpg', 'ademyimage/images', 'b_aXUPZKn76KHeRi4zGnpfd0KCvdsFxQ'),
(82, '52_275_24_ccontentexam.jpg', 'ademyimage/images', 'BmcJAhKOVojF9UXLunTjtcNd4PLxO7Y7'),
(83, '52_275_24_ccontentexam.jpg', 'ademyimage/images', 'e.fOiAJZqVNw.kaFfcR5pmeGb495X3aq'),
(84, '55.png', 'ademyimage/course_images', 'vnP3w5pJeTwVQyxZ7vlek86YtjLETOui'),
(85, '56.png', 'ademyimage/course_images', 'cq25O1.z6jSf5fJh0AXcoQAFoCJ29Nfy'),
(86, 'course_57.png', 'ademyimage/course_images', 'GSij2rCcfrIEiZCyPs54ieWH3oIniFns'),
(87, 'course_58.png', 'ademyimage/course_images', 'LXP_dIdfQUjcy2O8WsgfkkK5ridLgNIo'),
(88, 'course_59.jpg', 'ademyimage/course_images', 'IwlEQ5.2Uar7vmYJx4zOZcmV.cWf3BuL'),
(89, 'course_60.jpg', 'ademyimage/course_images', 'qrygj4r4R047aHEY.b.qVZbc5og87rjR'),
(90, '1certificate12.pdf', 'ademyimage/certification', '1wPsqQdqJLX5KQs8bwy3CNvec2CrM900'),
(91, '23certificate24.pdf', 'ademyimage/certification', 'fW9WLs6D63pRaoRJ8ya7rM39rzBomXCj'),
(92, '4certificate12.pdf', 'ademyimage/certification', 'Wztum7zyUb7ZylPuq2FuX4RQ1qefubRZ'),
(93, '49certificate24.pdf', 'ademyimage/certification', 'nkVpbEh4Yu6EI2Orb8UNNSmDRnEtK5rN'),
(94, '51certificate24.pdf', 'ademyimage/certification', 'oAoVWJtBfhVc8sG4nbkdHj1XJKawV9Xc'),
(95, '1certificate25.pdf', 'ademyimage/certification', 'aRxd0KMKrLeVccT27_RsG8c_uXuPgZ8j'),
(96, '3certificate24.pdf', 'ademyimage/certification', 'pQ96eBNApDJRMneaCRBBnqi0geqgcQkU'),
(97, '3certificate12.pdf', 'ademyimage/certification', 'VuRKMjbrhoGyrT0g7u1CkCwewfuKXSDv'),
(98, '48certificate24.pdf', 'ademyimage/certification', 'ZptZ.Ne2sb8VHC7CpxJ6Jn6z.PtLohS8'),
(99, '1certificate13.pdf', 'ademyimage/certification', 'RywuF7CJVxe.d2sybBdhL9uvscbMJvCc'),
(100, '4certificate24.pdf', 'ademyimage/certification', 'vnY.L3lUAcvdzirzVBTQZFPpnCSOaCqV'),
(101, '52certificate24.pdf', 'ademyimage/certification', 'hUqK.zpZtpHC0WyKAsI25YYHJYkWw5fy'),
(102, '23certificate12.pdf', 'ademyimage/certification', 'N166qHU_aJ4SnU4whoFo1DHnZuuPZWHb'),
(103, '4certificate12.pdf', 'ademyimage/certification', 'vny6yWMFmceP_5d9SJSkvA0n5h1pxVAy'),
(104, '8certificate27.pdf', 'ademyimage/certification', 'kAQLuRAat5eLS6zCOi.CDDmXr_6ZJwYz');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `fullname`, `phone_number`, `specialization`, `account_id`, `avatar_url`) VALUES
(1, 'John Smith', '0123456789', 'Portrait Artist', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtOtQutTuqumO5wEp6OPemfjo5_cbojnNauQ&usqp=CAU'),
(2, 'David Johnson', '123456789', 'Caricature Artist', 27, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBnWmvO2s_0Y3nnI522tF9A0U9-78FNJWNgvMOdcUea-2rad6odwp4ULBHa1XFcaBLB6w&usqp=CAU'),
(3, 'Sarah Brown', '0123456781', 'Manga Illustrator', 26, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Dkysr5shsd-eHbja4w0O3xpB-yManI3kkzUxhxdvpRiXwhct1ONGAbbmjynjO6lQmLY&usqp=CAU'),
(4, 'Le Hong Ngoc', '123456789', 'Watercolor Painter', 9, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShYYBSIcRqzZuY4P9LtLghTglDIt4hFX6R3Lju3Fln2MzYDLNgzRukDAl6UgflEVv9sxQ&usqp=CAU'),
(5, 'Le Thanh Long', '0123456783', 'Comic Book Artist', 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZycaAwan6jcpTNinqNG9VBlON9klV3ZmF8zoRo1e0Etb07N7o_w49ojQys-e0FGbCCHQ&usqp=CAU'),
(6, 'Ngo Quang Thang', '0986342445', 'Digital Illustrator', 61, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8VDRZGRkqHy8z0LhukSXkfdw59VCVIoXKDA3x1o8Vw0gkQiG3rlgAeEqXYbf4gDS_lGY&usqp=CAU'),
(7, 'James Miller', '0123456785', 'Street Artist', 63, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxWpZr0ZxT0wjShDqOYmT3TXyXwqd5ZQa9ghMkkZvX-KXbLk5ZQHmVvX_dldAxPa7abq0&usqp=CAU'),
(8, 'Olivia Taylor', '0923432354', 'Calligraphy Expert', 64, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK__qaa0XClwK7_ASIR35noXG2wgu0n_qg2EA5G8PZqkeuYhrBdVTfvH6lE8jIs4DcUZA&usqp=CAU'),
(9, 'William Anderson', '0123456787', 'Charcoal Sketch Artist', 66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh0v22CyjBbwnu6ABJB58qxw6nAnP3IGYFDQ2xgQhxyYYByXQC_EZ3oIuaNmy3BEWCqfE&usqp=CAU'),
(10, 'Sophia White', '0123456788', 'Landscape Painter', 68, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv3Yj8yr3vjKvhXdqJxLJE6CYdQSMW_KPyAvWLlcoYsCwk9LRQSwQ910nyy206-ynt4GE&usqp=CAU'),
(11, 'Daniel Clark', '0123456789', 'Digital Concept Artist\r\n', 74, 'https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/rnk6p1ndtrxnzryriill/create-a-realistic-talking-ai-avatar.png'),
(12, 'Nguyen Quang Vinh', '0918125719', 'Potrait Sculptor', 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpP2yywZgMwoZbZ41ru5crr0m8G7QHGkcrxNgWzucFtCW1PTY54Kzr-0-0DYgTsBXBB64&usqp=CAU'),
(13, 'Ethan Hall', '0123456702', 'Pen and Ink Illustrator', 77, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLR3hKDmkDNmi2wbkMro4BaEkd1ih9hYKgrcuzX_AkEaLZRZcRl2tASARh0aDok8KSk_4&usqp=CAU'),
(14, 'Ava Garcia', '0123456703', 'Storyboard Artist', 79, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWKg18nmbOm6KCGbwwfjofQYBylIKJ0GLHa_Q1nlr909PmaZo4_gJQkrnFxBaEwcT_qLU&usqp=CAU'),
(15, 'Noah King', '0123456704', 'Graffiti Artist', 80, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOjzT1-pPv1-TMif77yJKFb43eylSm0Q0uPw1ZAMchP9AsS_CV7uKVCU5HeGh6Sh6HS-A&usqp=CAU'),
(16, 'James Hernandez', '0123456706', 'Wildlife Illustrator', 82, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTofOYwKajRd0tzJnKLF_NDbHJ1HaHaK9pgRh1n94_i9ZJReS1zHnr52CasK2WjffmJxls&usqp=CAU'),
(17, 'Emma Martinez', '0123456707', 'Architectural Illustrator', 84, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAUjlZswjSRd0YDeZ4GD9dwumU-wqMaT8Yw1umf_3FBgu77AetByxOIW8qiTgaMwt_K-8&usqp=CAU'),
(18, 'Benjamin Adams', '0123456708', 'Abstract Painter', 86, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnK41bbOoEIUruUufKeg9mZwQb2Wi1oczFHH4f04dwaZga8cJVrCDOh2_3m-A2jC3K4EU&usqp=CAU'),
(19, 'Chloe Turner', '0123456709', 'Tattoo Artist', 87, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSr66MdbJq0riRezq4UN0H2fvNzfNuPF0uS0foJA-y0fNrUPN4qgvteSUN3zpQn-r9KkQ&usqp=CAU'),
(20, 'Samuel Parker', ' 0123456710', 'Street Art Muralist', 93, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD-fbyx-9rTd3whXxJrMMHjpZDNWa-92cKfbWt2o8oyQI5WxB2nFZVb6_tcbZlXGHU7z4&usqp=CAU'),
(21, 'hoangbaohuy', '1234567890', 'drawing course', 100, NULL),
(22, 'Susan Smith', '0111111111', 'Modern Drawing', 101, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` bigint(20) NOT NULL,
  `create_date` date NOT NULL,
  `description` text NOT NULL,
  `title` text NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_learning`
--

CREATE TABLE `my_learning` (
  `customer_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_learning`
--

INSERT INTO `my_learning` (`customer_id`, `course_id`) VALUES
(13, 1),
(25, 1),
(24, 4),
(24, 23),
(24, 3),
(24, 34),
(24, 48),
(24, 14),
(24, 49),
(24, 2),
(24, 5),
(24, 51),
(24, 52),
(27, 8),
(27, 15),
(12, 3),
(12, 4),
(12, 1),
(12, 23),
(12, 27),
(12, 16),
(12, 2),
(12, 15),
(12, 5),
(12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `feedback_date` date DEFAULT NULL,
  `rating` double NOT NULL,
  `update_date` date DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `comment`, `feedback_date`, `rating`, `update_date`, `course_id`, `customer_id`) VALUES
(10, 'The course content was very informative', '2023-08-24', 4.1, NULL, 23, 12),
(11, 'I enjoyed the practical exercises in this course', '2023-06-11', 4.6, NULL, 3, 12),
(12, 'The instructor presented the material very clearly', '2023-07-19', 4.8, NULL, 4, 12),
(13, 'Easy to follow along with the lectures', '2023-05-02', 4.3, NULL, 1, 12),
(14, 'I learned a lot of useful skills from this course', '2023-04-17', 4.5, NULL, 4, 24),
(15, 'The course material was well-organized', '2023-03-29', 4.2, NULL, 3, 24),
(16, 'Great introduction to this topic', '2023-09-05', 4.7, NULL, 1, 13),
(17, 'This course really expanded my knowledge', '2023-08-10', 4.9, NULL, 23, 24),
(18, 'Very engaging course with a lot of interaction', '2023-02-28', 3.8, NULL, 1, 25),
(19, 'The instructor answered all my questions', '2023-07-05', 4.6, NULL, 48, 24),
(20, 'Learned useful real-world skills', '2023-09-25', 4.3, NULL, 49, 24),
(21, 'Great course for beginners in this field', '2023-06-19', 4.1, NULL, 51, 24),
(22, 'The professor really knows the topic well', '2023-05-05', 4.4, NULL, 52, 24),
(23, 'Very clear explanations of concepts', '2023-04-02', 4, NULL, 8, 27);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(20,5) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `recipient_wallet` varchar(255) NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `salary_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `amount`, `currency`, `email`, `recipient_wallet`, `instructor_id`, `salary_date`) VALUES
(1, '378.00000', 'USD', 'kakata5455@gmail.com', 'PayPal', 1, '2023-11-16'),
(2, '100.80000', 'USD', 'kakata284195565@gmail.com', 'PayPal', 2, '2023-11-16'),
(3, '635.40000', 'USD', 'kakata284195562665@gmail.com', 'PayPal', 3, '2023-11-16'),
(4, '328.50000', 'USD', 'kakata5612@gmail.com', 'PayPal', 4, '2023-11-16'),
(5, '0.00000', 'USD', 'kakata55@gmail.com', 'PayPal', 5, '2023-11-16'),
(6, '0.00000', 'USD', 'ngoquangthang123@gmail.com', 'PayPal', 6, '2023-11-16'),
(7, '0.00000', 'USD', 'ngoquangthang345@gmail.com', 'PayPal', 7, '2023-11-16'),
(8, '0.00000', 'USD', 'ngoquangthang111@gmail.com', 'PayPal', 8, '2023-11-01'),
(9, '0.00000', 'USD', 'ngoquangthang12345@gmail.com', 'PayPal', 9, '2023-11-01'),
(10, '0.00000', 'USD', 'ngoquangthang123456@gmail.com', 'PayPal', 10, '2023-11-01'),
(11, '0.00000', 'USD', 'ngoquangthang1234567@gmail.com', 'PayPal', 11, '2023-11-01'),
(12, '716.40000', 'USD', 'vinhnqse17050109@fpt.edu.vn', 'PayPal', 12, '2023-11-01'),
(13, '0.00000', 'USD', 'nahida@gmail.com', 'PayPal', 13, '2023-11-01'),
(14, '0.00000', 'USD', 'lovenahida@gmail.com', 'PayPal', 14, '2023-11-01'),
(15, '0.00000', 'USD', 'onetwo@gmail.com', 'PayPal', 15, '2023-11-01'),
(16, '0.00000', 'USD', 'gna@gmail.com', 'PayPal', 16, '2023-11-01'),
(17, '0.00000', 'USD', 'nahida2@gmail.com', 'PayPal', 17, '2023-11-01'),
(18, '0.00000', 'USD', 'nahida3@gmail.com', 'PayPal', 18, '2023-11-01'),
(19, '0.00000', 'USD', 'nahida4@gmail.com', 'PayPal', 19, '2023-11-01'),
(20, '0.00000', 'USD', 'nguyenha1610@spievn.com', 'PayPal', 20, '2023-11-01'),
(21, '0.00000', 'USD', 'baohuy@gmail.com', 'PayPal', 22, '2023-11-29'),
(22, '414.00000', 'USD', 'susan@gmail.com', 'PayPal', 22, '2023-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` bigint(20) NOT NULL,
  `order_pos` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `order_pos`, `title`, `course_id`) VALUES
(2, 1, 'Digital Comic Art', 1),
(5, 1, 'Introduction to Calligraphy', 23),
(13, 1, 'Lets Draw Nahida Lews', 27),
(14, 1, ' Advanced Style', 27),
(15, 1, 'Shape and Form in Drawing', 24),
(16, 1, 'Still Life Drawing', 24),
(17, 1, ' First Styled Site', 23),
(19, 1, 'Drawing with Charcoal and Chalk', 28),
(20, 1, 'How to draw Nahida', 29),
(22, 1, 'The Final', 23),
(23, 1, 'Historical Drawing Techniques', 23),
(26, 1, 'Texture and Pattern in Art', 34),
(27, 1, 'Anatomy for Artists', 34),
(28, 1, 'Urban Sketching', 23),
(29, 1, 'Art Critique and Feedback', 32),
(30, 1, 'En Plein Air Drawing', 40),
(31, 1, 'Creating Art Portfolios', 40),
(32, 1, 'Watercolor Basics', 40),
(33, 1, 'Experiments in Abstract Expressionism', 40),
(34, 1, 'Concept Art and Illustration', 40),
(35, 1, 'Pen and Ink Artistry', 40),
(36, 1, 'Botanical Illustration', 40),
(37, 1, 'Charcoal Drawing Techniques', 40),
(38, 1, 'Still Life Studies', 40),
(39, 1, 'Digital Art Starter', 40),
(40, 1, 'Introduction to Drawing', 1),
(41, 2, 'Drawing Supplies Overview', 1),
(42, 3, 'Drawing Lines and Shapes', 1),
(43, 4, 'Contour Line Drawing', 1),
(44, 5, 'Blending and Shading Techniques', 1),
(45, 6, 'Creating Texture with Graphite', 1),
(46, 7, 'Drawing Still Life Objects', 1),
(47, 1, 'Introduction to Sketching', 41),
(48, 1, 'Art Conservation and Preservation', 41),
(49, 1, 'Art of Composition', 41),
(50, 1, 'Graduation and Showcase', 41),
(51, 1, 'Cartoon and Character Design', 41),
(52, 1, 'Proportions and Scale', 41),
(53, 1, 'Creative Drawing Prompts', 41),
(54, 1, 'Animal Illustration', 41),
(55, 1, 'Creating Realistic Textures', 41),
(56, 1, 'Digital Art for Beginners', 41),
(57, 1, 'Exploring Color Theory', 41),
(58, 1, 'Facial proportions, planes, rendering features', 2),
(59, 2, 'Skies, clouds, trees, pathways, buildings', 2),
(60, 3, 'Boxes, cubes, interiors, exteriors', 2),
(61, 4, 'Corner angles, two vanishing points', 2),
(62, 5, 'Above, below, 3 vanishing points', 2),
(63, 6, 'Cropping, rule of thirds, depth, visual paths', 2),
(64, 1, 'Flowers, leaves, vases, natural elements', 42),
(65, 1, 'Charcoal Techniques', 42),
(66, 1, 'Understanding Light and Shadow', 42),
(67, 1, 'Figure Drawing Fundamentals', 42),
(68, 1, 'Portrait Drawing', 42),
(69, 1, 'Shading Techniques', 42),
(70, 1, 'Landscape Sketching', 42),
(71, 1, 'Pastel Drawing', 3),
(72, 2, 'Abstract Art Exploration', 3),
(73, 3, 'Caricature Techniques', 3),
(74, 4, 'Anime and Manga Illustration', 3),
(75, 5, 'Botanical Drawing', 3),
(76, 1, 'Nature and Wildlife Sketching', 46),
(77, 1, 'Charcoal Drawing Techniques', 46),
(78, 1, 'Watercolor Painting Fundamentals', 46),
(79, 1, 'Art History and Drawing', 4),
(80, 2, 'Gesture Drawing', 4),
(81, 3, 'Value Studies', 4),
(82, 4, 'Urban Sketching', 4),
(83, 5, 'Drapery Drawing', 4),
(84, 6, 'Figure Drawing', 4),
(85, 7, 'Architectural Drawing', 4),
(86, 8, 'Landscape Drawing', 4),
(87, 1, 'Chapter 1', 5),
(88, 2, 'Chapter 2', 5),
(89, 3, 'Chapter 3', 5),
(90, 4, 'Chapter 4', 5),
(91, 5, 'Chapter 5', 5),
(92, 1, 'Chapter 1', 6),
(93, 2, 'Chapter 2', 6),
(94, 3, 'Chapter 3', 6),
(95, 4, 'Chapter 4', 6),
(96, 5, 'Chapter 5', 6),
(97, 1, 'Chapter 1', 7),
(98, 1, 'how to draw a realistic ey', 7),
(99, 2, 'Chapter 2', 7),
(100, 2, 'step by step drawing for beginners guide', 7),
(101, 3, 'Chapter 3', 7),
(102, 4, 'Chapter 4', 7),
(103, 5, 'Chapter 5', 7),
(104, 3, 'The  beginners Sketching\r\n', 7),
(105, 1, 'Chapter 1', 8),
(106, 2, 'Chapter 2', 8),
(107, 3, 'Chapter 3', 8),
(108, 4, 'Chapter 4', 8),
(109, 5, 'Chapter 5', 8),
(110, 1, 'Chapter 1', 9),
(111, 2, 'Chapter 2', 9),
(112, 3, 'Chapter 3', 9),
(113, 4, 'Chapter 4', 9),
(114, 5, 'Chapter 5', 9),
(115, 1, 'Chapter 1', 10),
(116, 2, 'Chapter 2', 10),
(117, 3, 'Chapter 3', 10),
(118, 4, 'Chapter 4', 10),
(119, 5, 'Chapter 5', 10),
(120, 1, 'Chapter 1', 12),
(121, 1, 'Chapter 1', 11),
(122, 2, 'Chapter 2', 11),
(123, 3, 'Chapter 3', 11),
(124, 4, 'Chapter 4', 11),
(125, 5, 'Chapter 5', 11),
(126, 2, 'Chapter 2', 12),
(127, 3, 'Chapter 3', 12),
(128, 4, 'Chapter 4', 12),
(129, 5, 'Chapter 5', 12),
(130, 1, 'Chapter 1', 13),
(131, 2, 'Chapter 2', 13),
(132, 3, 'Chapter 3', 13),
(133, 4, 'Chapter 4', 13),
(134, 5, 'Chapter 5', 13),
(135, 1, 'Chapter 1', 14),
(136, 2, 'Chapter 2', 14),
(137, 3, 'Chapter 3', 14),
(138, 4, 'Chapter 4', 14),
(139, 5, 'Chapter 5', 14),
(140, 1, 'Chapter 1', 15),
(141, 2, 'Chapter 2', 15),
(142, 3, 'Chapter 3', 15),
(143, 4, 'Chapter 4', 15),
(144, 5, 'Chapter 5', 15),
(145, 1, 'Chapter 1', 16),
(146, 2, 'Chapter 2', 16),
(147, 3, 'Chapter 3', 16),
(148, 4, 'Chapter 4', 16),
(149, 5, 'Chapter 5', 16),
(150, 1, 'Chapter 1', 17),
(151, 2, 'Chapter 2', 17),
(152, 3, 'Chapter 3', 17),
(153, 4, 'Chapter 4', 17),
(154, 5, 'Chapter 5', 17),
(155, 6, 'Chapter 6', 17),
(156, 1, 'Chapter 1', 18),
(157, 2, 'Chapter 2', 18),
(158, 3, 'Chapter 3', 18),
(159, 4, 'Chapter 4', 18),
(160, 5, 'Chapter 5', 18),
(161, 1, 'Chapter 1', 19),
(162, 2, 'Chapter 2', 19),
(163, 3, 'Chapter 3', 19),
(164, 4, 'Chapter 4', 19),
(165, 5, 'Chapter 5', 19),
(166, 1, 'Chapter 1', 20),
(167, 2, 'Chapter 2', 20),
(168, 3, 'Chapter 3', 20),
(169, 4, 'Chapter 4', 20),
(170, 5, 'Chapter 5', 20),
(171, 1, 'Chapter 1', 21),
(172, 2, 'Chapter 2', 21),
(173, 3, 'Chapter 3', 21),
(174, 4, 'Chapter 4', 21),
(175, 5, 'Chapter 5', 21),
(176, 1, 'Chapter 1', 22),
(177, 2, 'Chapter 2', 22),
(178, 3, 'Chapter 3', 22),
(179, 4, 'Chapter 4', 22),
(180, 5, 'Chapter 5', 22),
(181, 0, 'Chapter 0', 27),
(182, 1, 'Chapter 1', 28),
(183, 2, 'Chapter 3', 28),
(184, 3, 'Chapter 3', 28),
(185, 1, 'Chapter 1', 29),
(186, 2, 'Chapter 2', 29),
(187, 3, 'Chapter 3', 29),
(188, 4, 'Chapter 4', 29),
(189, 5, 'Chapter 5', 29),
(190, 1, 'Chapter 1', 30),
(191, 2, 'Chapter 2', 30),
(192, 3, 'Chapter 3', 30),
(193, 4, 'Chapter 4', 30),
(194, 5, 'Chapter 5', 30),
(195, 1, 'Chapter 1', 31),
(196, 2, 'Chapter 2', 31),
(197, 3, 'Chapter 3', 31),
(198, 4, 'Chapter 4', 31),
(199, 5, 'Chapter 5', 31),
(200, 1, 'Chapter 1', 32),
(201, 2, 'Chapter 2', 32),
(202, 3, 'Chapter 3', 32),
(203, 4, 'Chapter 4', 32),
(204, 5, 'Chapter 5', 32),
(205, 1, 'Chapter 1', 33),
(206, 2, 'Chapter 2', 33),
(207, 3, 'Chapter 3', 33),
(208, 4, 'Chapter 4', 33),
(209, 4, 'Chapter 4', 33),
(210, 5, 'Chapter 5', 33),
(211, 1, 'Chapter 1', 34),
(212, 2, 'Chapter 2', 34),
(213, 3, 'Chapter 3', 34),
(214, 4, 'Chapter 4', 34),
(215, 5, 'Chapter 5', 34),
(216, 1, 'Chapter 1', 35),
(217, 2, 'Chapter 2', 35),
(218, 3, 'Chapter 3', 35),
(219, 4, 'Chapter 4', 35),
(220, 5, 'Chapter 5', 35),
(221, 1, 'Chapter 1', 43),
(222, 2, 'Chapter 2', 43),
(223, 3, 'Chapter 3', 43),
(224, 4, 'Chapter 4', 43),
(225, 5, 'Chapter 5', 43),
(226, 1, 'Chapter 1', 44),
(227, 2, 'Chapter 2', 44),
(228, 3, 'Chapter 3', 44),
(229, 4, 'Chapter 4', 44),
(230, 1, 'Chapter 1', 45),
(231, 1, 'Chapter 1', 45),
(232, 2, 'Chapter 2', 45),
(233, 3, 'Chapter 3', 45),
(234, 4, 'Chapter 4', 45),
(235, 5, 'Chapter 5', 45),
(237, 1, 'Step 1 for beginner ', 47),
(238, 1, 'Drawing Fundamentals Review', 48),
(239, 1, 'Exam', 48),
(240, 1, 'Examination', 49),
(241, 1, ' Advanced Style', 35),
(242, 1, 'Teaching Drawing Techniques', 51),
(243, 1, 'The Artist Statement and Bio', 51),
(244, 1, 'Art Marketing and Social Media', 51),
(245, 1, 'Exhibiting, Framing and Displaying Art', 52);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `injob_date` date DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL,
  `expired` bit(1) DEFAULT NULL,
  `revoked` bit(1) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `expired`, `revoked`, `token`, `token_type`, `account_id`) VALUES
(5, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk1OTMyMzU2LCJleHAiOjE2OTU5MzM3OTZ9.Q-qDGjpGGXJXV56v-wYakR9vQdn-hanbDgLdn1AbBtw', 'BEARER', 33),
(6, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk1OTMyNTcxLCJleHAiOjE2OTU5MzQwMTF9.LjaTrOCo9hHWEMY9uX8fUABB9-ttEtf25XJ4k-zsQjc', 'BEARER', 33),
(7, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk1OTMyODMwLCJleHAiOjE2OTU5MzQyNzB9.crLu-ndNdy6gKkBe-slbUB06_HN4IbCrKLfUViQDp2M', 'BEARER', 33),
(8, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk1OTMzMDczLCJleHAiOjE2OTU5MzQ1MTN9.kxl_jfirhOergPQ5CrG1USCNsaTEH3lWVXDDFZELlOA', 'BEARER', 33),
(9, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk1OTM0NjM5LCJleHAiOjE2OTU5MzYwNzl9.JUIcTKPRvr-IDi5PQc2f1NwEo3ki3g2yhFL0VJ1S4bo', 'BEARER', 33),
(10, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MDQ0ODcwLCJleHAiOjE2OTYwNDYzMTB9.RRiT8X3ly1V0RAhQ9Mgixz1UqEy4Y4AonWJVeEyR9iU', 'BEARER', 33),
(11, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MDQ2NDA1LCJleHAiOjE2OTYwNDc4NDV9.1U80rA3HgSK-G1a8VMWXOQSfK83cVxSWkp2X7nDv_IQ', 'BEARER', 33),
(12, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MDQ3MTE3LCJleHAiOjE2OTYwNDg1NTd9.rtnOoRi7z44QQL6r9tXzif2Kw-C_lr_6OgUL29ryBCY', 'BEARER', 33),
(13, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MDU2Njk4LCJleHAiOjE2OTYwNTgxMzh9.llBFM0VEj1HnGw_zYk4nqhjSwCGwU78JpdIVdvCB4e8', 'BEARER', 33),
(14, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2YW52dHQxMEBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MDU5NTg0LCJleHAiOjE2OTYwNjEwMjR9.C23m2rfOz8QLaG8bI-oA16yCUtEFcjP3omUa6LMJsdY', 'BEARER', 47),
(15, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MjQyNTg3LCJleHAiOjE2OTYyNDQwMjd9.IPVV9O8MAMnR_JtxRk-ZvTTclQyMoVSXKWzz2aR4WLg', 'BEARER', 33),
(16, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUxNTgzLCJleHAiOjE2OTYzNTMwMjN9._XAOFVx5xQtob2G3YtzwW6246CDfQdYGQvNkqKqkj6k', 'BEARER', 33),
(17, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUyMTYzLCJleHAiOjE2OTYzNTM2MDN9.oMARU1RTx-ZDEmJ-Rn3m8rds6OR6kDW6zswJFIeB1JI', 'BEARER', 33),
(18, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUyMjY3LCJleHAiOjE2OTYzNTM3MDd9.LsCd9sLI2HP4svh9Xp53JcjlTbZvPOF7qBMO_zniu44', 'BEARER', 33),
(19, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUyNzg2LCJleHAiOjE2OTYzNTQyMjZ9.DvoTKQ5HZfimQz5NKJiPud5mSABC6hG1hV5K-K3qIDg', 'BEARER', 33),
(20, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUyODI2LCJleHAiOjE2OTYzNTQyNjZ9.PqDjsl8UhTWcVdoAySr65NDlkbz5zATJDvJUALwPgko', 'BEARER', 33),
(21, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2MzUyOTMzLCJleHAiOjE2OTYzNTQzNzN9._qPhNk4HXO9LzjCv7h01cO-BoWj-gH0Haor-jitSkCM', 'BEARER', 33),
(22, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDAyMzM0LCJleHAiOjE2OTY0MDM3NzR9.FwViIyauOrwcPjwuceoxlDTXl3c9KmctpQvhJtsTk_o', 'BEARER', 33),
(23, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDAyMzM2LCJleHAiOjE2OTY0MDM3NzZ9.UzWq_6m4NY91GvDOQeNMbSmqu8QJesTYR9jjlUSqm2E', 'BEARER', 33),
(24, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDAyNzk2LCJleHAiOjE2OTY0MDQyMzZ9.d3j6UBpWniYBDoZPG1OHaMSXcHeiOtVqm6iW1b5W_c4', 'BEARER', 33),
(25, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDAzOTU4LCJleHAiOjE2OTY0MDUzOTh9.-FJ7sBUrRd0ERY7TUlCQz_4sWMKZMHrEvjzqRS4p1HE', 'BEARER', 33),
(26, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDA1NTk1LCJleHAiOjE2OTY0MDcwMzV9.qEvspgxvDkphQwZHDZYgPOUruPHVL5wgHGfZR0dvICc', 'BEARER', 33),
(27, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDM2NTAzLCJleHAiOjE2OTY0Mzc5NDN9.DWPHE7G_1tE1mQfPvJxWZbp3J9qeORDAKuzb1QV8jsg', 'BEARER', 33),
(28, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDM4MDQ1LCJleHAiOjE2OTY0Mzk0ODV9.y9jUL5kjGFmFniRp47VK_sdXUAdubZq-Sj9RZ_2ZXeE', 'BEARER', 33),
(29, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDM5ODE5LCJleHAiOjE2OTY0NDEyNTl9.80eJQL2t-qdHzD4NWgiSyYo6wNbrJ3h9qpTZF6UdymI', 'BEARER', 33),
(30, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDQwODU4LCJleHAiOjE2OTY0NDIyOTh9.ldQWleuMFbO-DS38JFi2oyBA18QJyxwQ0HBPzNNyndM', 'BEARER', 33),
(31, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDQ2MTIyLCJleHAiOjE2OTY0NDc1NjJ9.K7QRi0mVYBOBvKDJTsrGg_R2VTm_-j7cQ2IXOueUF34', 'BEARER', 33),
(32, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDQ3NjA1LCJleHAiOjE2OTY0NDkwNDV9.mmJbY8GX3ypEi0PvOUgRl5YzQCLg5OHJZcpsUzpeovI', 'BEARER', 33),
(33, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDUwMjIzLCJleHAiOjE2OTY0NTE2NjN9.H7OHVrjM8jEn0nvUK64FkEgA9K2DxKnWuCfM7OQigtk', 'BEARER', 33),
(34, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDY2MTYxLCJleHAiOjE2OTY0Njc2MDF9.qV18f9dkD3dE0kw0ExxNSidaFeK4T_cpTumT_P1YuLc', 'BEARER', 33),
(35, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDY2MTYyLCJleHAiOjE2OTY0Njc2MDJ9.ntVWdf73eAzBKH6DJr9N_lLeOu4W1lTSah80a-Vv3Ug', 'BEARER', 33),
(36, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDc1MDYzLCJleHAiOjE2OTY0NzY1MDN9.aL1SYud3ErIWVlmdMhY6fVJ2CI47VPiZvEjqox679Rc', 'BEARER', 33),
(37, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDc2NzIzLCJleHAiOjE2OTY0NzgxNjN9.aQQG8oSJkVRK4znntgCwRbwzqxpahAoBkDjPEf9AWb0', 'BEARER', 33),
(38, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDgwNDk2LCJleHAiOjE2OTY0ODE5MzZ9.i1En6tPlN2Il4LTFZzy8U3wnLOs0_EsPt46Prc9D8Tc', 'BEARER', 33),
(39, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDg3NzU2LCJleHAiOjE2OTY0ODkxOTZ9.X1EBqZzY6tsMNdJRyPc-WjFDPLrsq6_Hq_VcaPrymaQ', 'BEARER', 33),
(40, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NDg3NzU3LCJleHAiOjE2OTY0ODkxOTd9.3GQqq7lvbrvPhYVwke3v3JXVgPCT88-lqerDpoHMh1Q', 'BEARER', 33),
(41, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NTA1MDU0LCJleHAiOjE2OTY1MDY0OTR9.V8lOvdBj8Ffa0HZje0O8Lrb0a3dnOjHD__bxx20plqE', 'BEARER', 33),
(42, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NTE2MTY0LCJleHAiOjE2OTY1MTc2MDR9.hog7pjFP3MclgNh92eNCmRKu3oIZAgwOzOg34gQIt9s', 'BEARER', 33),
(43, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjAzMTIxLCJleHAiOjE2OTY2MDQ1NjF9.hW5ZvhKFLU7-fV0DiSPh1cP1REBIHwNSzVxuwl2shnk', 'BEARER', 33),
(44, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGEyODQxOUBnbWFpbC5jb20iLCJpYXQiOjE2OTY2MDU2NDksImV4cCI6MTY5NjYwNzA4OX0.6a2vUbe5VxBxmiA0KxN7tzgbZKg2P-t_qPy6-M8wCg8', 'BEARER', 30),
(45, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGEyODQxOTUwMDlAZ21haWwuY29tIiwiaWF0IjoxNjk2NjM0MzIzLCJleHAiOjE2OTY2MzU3NjN9.twAFmPWCDp8IKD6_uTC2tkD7lNIguPYb-Z1XdfCIh1Q', 'BEARER', 48),
(46, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjM4NDg2LCJleHAiOjE2OTY2Mzk5MjZ9.5n_afx2X4jE-isoycsj1pyEWuQm0uxxmEFWmdHMSJe0', 'BEARER', 33),
(47, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjQwOTUxLCJleHAiOjE2OTY2NDIzOTF9.brsPYAQDT-4XZJt52aEPdEl5YcrBMbaEMPbr0et-Gd8', 'BEARER', 33),
(48, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjQzMjg0LCJleHAiOjE2OTY2NDQ3MjR9.ss15dRzkoFesMyScoP0VCEhkNJTaL-N4zcV4iyxGg8w', 'BEARER', 33),
(49, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjQ3NjA1LCJleHAiOjE2OTY2NDkwNDV9.HMvqmifuEYAVG9HYxJk55OD9tEKzFv8Qn2Ta3c2V_j0', 'BEARER', 33),
(50, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjUwODYyLCJleHAiOjE2OTY2NTIzMDJ9.KmZwokxlWBFJJvfeVO4cQ8q8sxv1ozcuntP3CYarOmo', 'BEARER', 33),
(51, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjUxMzAzLCJleHAiOjE2OTY2NTI3NDN9.LvLbays4MJOmWxgxpWLageEtgEakIgegAsuw4U2hRGk', 'BEARER', 33),
(52, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjUxMzgwLCJleHAiOjE2OTY2NTI4MjB9.Sjw4QDopKQ0V7vViDTKFRY5POV0NdNiWUfTjBPg4_0U', 'BEARER', 33),
(53, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjU0NDE3LCJleHAiOjE2OTY2NTU4NTd9.dVHh8c5I9VsmipLbUmPu3gz8uza49f6MGUn2FfcwyDM', 'BEARER', 33),
(54, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjU2NjQ2LCJleHAiOjE2OTY2NTgwODZ9.a2rQimRkZ7MRP4gM4DFRXariAAPgqm3vs9ZP-rUsG6g', 'BEARER', 33),
(55, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjU3NTQ3LCJleHAiOjE2OTY2NTg5ODd9.LujX0eZWas_uxgHVKib0zkXlMVj5wbOSdYSohlSU5qI', 'BEARER', 33),
(56, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGExMjM0NTY3ODlAZ21haWwuY29tIiwiaWF0IjoxNjk2NjU4NTA2LCJleHAiOjE2OTY2NTk5NDZ9.HOww5paK80cYL59BBy0LWIdIeIOd7zbyR3j4A6fv7Cw', 'BEARER', 49),
(57, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2NjY0MDQzLCJleHAiOjE2OTY2NjU0ODN9.8cZH79OBoVR0QMuFqVGXPrCal4Bthgpy65Yio_9_Jcs', 'BEARER', 33),
(58, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2Njc3MjMyLCJleHAiOjE2OTY2Nzg2NzJ9.rIgbAMq-GWz2_534hWKYAFYXR46rgUaAdQsWtyfG0tg', 'BEARER', 33),
(59, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5Njg3NTA5OSwiZXhwIjoxNjk2ODc2NTM5fQ.20u7PHBnR8OauNIbfpLatZRF0nplJJeNDjEWYxXDxR8', 'BEARER', 61),
(60, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMzQ1QGdtYWlsLmNvbSIsImlhdCI6MTY5Njg3NjEyOCwiZXhwIjoxNjk2ODc3NTY4fQ.XhMZDQktiG-LICINFIHJddvLN6cSsNw62RhOjjPGGpw', 'BEARER', 63),
(61, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2OTU0NDkzLCJleHAiOjE2OTY5NTU5MzN9.ZpF-Eqs4H2p38XPtpXndgLYjOTMVTmQJpaiq2JUiy7c', 'BEARER', 33),
(62, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTExQGdtYWlsLmNvbSIsImlhdCI6MTY5Njk1NDY4OCwiZXhwIjoxNjk2OTU2MTI4fQ.oECAgx_dDLsynjM1HscLQBq1NpwElOPGBVVODzBD7z0', 'BEARER', 64),
(63, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTExQGdtYWlsLmNvbSIsImlhdCI6MTY5Njk1NDczMSwiZXhwIjoxNjk2OTU2MTcxfQ.owNGiahbM98Z9qgZZUC3dqdUS36K10n9eXFiLAXE94U', 'BEARER', 64),
(64, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDVAZ21haWwuY29tIiwiaWF0IjoxNjk2OTg4MDIzLCJleHAiOjE2OTY5ODk0NjN9.9SJ4yn8AwkuDSLQvJBsXlnSBKP5bTcZEfNuPXC9AdyU', 'BEARER', 66),
(65, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2QGdtYWlsLmNvbSIsImlhdCI6MTY5Njk4ODA4NCwiZXhwIjoxNjk2OTg5NTI0fQ.kicA7Y9_YJOOhDFIO_SIVgFbMT8QY1gWGQWcBZ6CDpU', 'BEARER', 68),
(66, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTY5ODg1OTQsImV4cCI6MTY5Njk5MDAzNH0.zLMam_cE2ZYZwWj9ZtOwgUf87Tt8fr7o4qVEwAVxvU0', 'BEARER', 74),
(67, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2OTk2MTI2LCJleHAiOjE2OTY5OTc1NjZ9.68PgrgHdFCm5lwqqFXltaZRwDFU9Mn_XWmGfGDD6pFU', 'BEARER', 33),
(68, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2OTk2NDA2LCJleHAiOjE2OTY5OTc4NDZ9.zHlii3L6dkVuYGiJrKa9oWFvMQxFjVXuVvhMmxzMCS4', 'BEARER', 33),
(69, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk2OTk5MDE2LCJleHAiOjE2OTcwMDA0NTZ9.l2f27773uT_P7WEjniej6aOpci1nsS1dcRtdE_-x7_c', 'BEARER', 33),
(70, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MDAwNTI1LCJleHAiOjE2OTcwMDE5NjV9.tB4OxAQblksAdf3T_8meawMZBYNb_897dIJXKttfp1A', 'BEARER', 33),
(71, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MDA5MDU4LCJleHAiOjE2OTcwMTA0OTh9.qLJkv1flfVS7JqQlQtZ10Kc6IojLTb3twCKNg3imr_0', 'BEARER', 33),
(72, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTcxMzU5NjAsImV4cCI6MTY5NzEzNzQwMH0.9WvzAjgjZPknKW5sTNKET-vEBk2TnKfGRhGGgFX9ELY', 'BEARER', 37),
(73, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTcxNjcwNTgsImV4cCI6MTY5NzE2ODQ5OH0.MZRrStOTOmBiJfwqU_4IYwBDmFQr1Bq-tPU3sORThME', 'BEARER', 37),
(74, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MjA1OTc4LCJleHAiOjE2OTcyMDc0MTh9.vMRS3Vm1yXWcRmT1R_bypw6NTu56i7QtEj-p-OsQ2CU', 'BEARER', 33),
(75, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MjA1OTc4LCJleHAiOjE2OTcyMDc0MTh9.vMRS3Vm1yXWcRmT1R_bypw6NTu56i7QtEj-p-OsQ2CU', 'BEARER', 33),
(76, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MjA2MDQxLCJleHAiOjE2OTcyMDc0ODF9.j9ZJLUXkwr-s0WViAK5n-ttfxixey8wUL4Hakw6_RHI', 'BEARER', 33),
(77, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTcyMDgyMjgsImV4cCI6MTY5NzIwOTY2OH0.0KZOGXI0256OTRnJU6Qpdmh1TD5dvV3lYQDXQWpvRYc', 'BEARER', 37),
(78, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3MjE2MjUxLCJleHAiOjE2OTcyMTc2OTF9.Qd9AfBddXw76qlqDFcj1C7TrMlejuSzzCBhJpVP3uh0', 'BEARER', 33),
(79, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTcyMzMwMzUsImV4cCI6MTY5NzIzNDQ3NX0.8tKRxkx1d_YSqDLuVVPyvWNU_M7HRx7nK5ny0Z3E5tI', 'BEARER', 75),
(80, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTcyMzMwNjQsImV4cCI6MTY5NzIzNDUwNH0.WiXs1PO1bwTvWSCMRsy4moz8vNQgXwkFpIvLpqdTqic', 'BEARER', 75),
(81, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3Mzk1NDkyLCJleHAiOjE2OTczOTY5MzJ9.n5MZzfo14QgSO1eMnwHcLpWkSjqV05IGiay_THiG90o', 'BEARER', 33),
(82, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTczOTgxNzAsImV4cCI6MTY5NzM5OTYxMH0.P9yD2MKbsX1_oceblshCCpKoi2Axe6_WZbvu0OCGggQ', 'BEARER', 75),
(83, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTc0NDA5ODAsImV4cCI6MTY5NzQ0MjQyMH0.-Qy_9BD5WNaPFG3xLuUW7OcRnqfbsE3EtyKUtaP6BX0', 'BEARER', 37),
(84, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc0NjQxMDksImV4cCI6MTY5NzQ2NTU0OX0.IKl_-P6E0l4NiH9nV0Z-ZAvh_rNMQWMucqYYKxVXNTw', 'BEARER', 75),
(85, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NzQ2NTk4MiwiZXhwIjoxNjk3NDY3NDIyfQ.HzGcZ7OieT8fdZenvEHnS8MXFvvxl0Alu6XeKY8OK9c', 'BEARER', 61),
(86, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTc0NjgzMTYsImV4cCI6MTY5NzQ2OTc1Nn0.KwWBzSDgSvveZkbuc7KJvRvxvRxdmhafMp05L4GT9as', 'BEARER', 37),
(87, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTc0NjkwMzgsImV4cCI6MTY5NzQ3MDQ3OH0.3_vVqKiA_MNqFLXO9J8mk81CUJPL5wmajtQRgvUAIKs', 'BEARER', 37),
(88, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTc0Njk5ODAsImV4cCI6MTY5NzQ3MTQyMH0.0OMIbjChXBTtHm5PcCkpO75N6KO4X9PA7OAHzDXktK4', 'BEARER', 37),
(89, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NDcwMzMzLCJleHAiOjE2OTc0NzE3NzN9.9VybmL8niqPNWejKVo8LLNcl_V2dED2-Ddmqg0JIb6Y', 'BEARER', 33),
(90, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc0NzAzOTYsImV4cCI6MTY5NzQ3MTgzNn0.d2v-rfUFnAycoELWlBjffHqjLSgJPzbybyuf38trVS4', 'BEARER', 75),
(91, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc0NzA0NzIsImV4cCI6MTY5NzQ3MTkxMn0.GN1LJkAERykWuAVww3TdV9B_KU5VlpN517O1EbYPOVA', 'BEARER', 75),
(92, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NTExMTEyLCJleHAiOjE2OTc1MTI1NTJ9.wwtry3C73JCN68xd-16yvKM7B29cOqxzsvXVZN1Re6M', 'BEARER', 33),
(93, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1MTExNTMsImV4cCI6MTY5NzUxMjU5M30.IFcr6lSJ4hpcZXIWdsOrypJOC1p1MesAPoH4Wrj8ff0', 'BEARER', 75),
(94, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1MzQyMTMsImV4cCI6MTY5NzUzNTY1M30.k5iT8nR7jcGAHyZtB0GYB0VPcBuB2q_xp0dLRyyP21k', 'BEARER', 75),
(95, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NzUzNTEwMCwiZXhwIjoxNjk3NTM2NTQwfQ.Flq7HiwBNNkJ_2X5vDrO4BJYq_1lPqLs9QseRJNyolw', 'BEARER', 61),
(96, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1MzcwODksImV4cCI6MTY5NzUzODUyOX0.yars-uBZltO9F-TOLKMwb3x2-8yDeYKiOYwS4SSTsfg', 'BEARER', 75),
(97, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1MzkwMDIsImV4cCI6MTY5NzU0MDQ0Mn0.Qan3ULFwRR_czuDFA2yN3xnC07vcOH26-rpPeNKW4p8', 'BEARER', 75),
(98, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NTMwOTAsImV4cCI6MTY5NzU1NDUzMH0.oTFIg6glZkSXAzR13WqUMpvvDhgDCtZBNYinTXs6kbs', 'BEARER', 75),
(99, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NTU0MTM3LCJleHAiOjE2OTc1NTU1Nzd9.KlJGtgw2pGjcw_W88Ua6sdNYBzHd2_w61dYvk_1mTN4', 'BEARER', 33),
(100, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NTU0MjQwLCJleHAiOjE2OTc1NTU2ODB9.-5a6nsiXVOTnLnIwtMDIj9CP4e2M-dRFGM9itToOI54', 'BEARER', 33),
(101, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NTU0MzcyLCJleHAiOjE2OTc1NTU4MTJ9.PS6kqCQxeVeKJy0W6HcCaQ1t2WIYwTObvML2X1EYVac', 'BEARER', 33),
(102, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NTQ3NDEsImV4cCI6MTY5NzU1NjE4MX0.LpZfAYt1GDO9eF-xRimQwideUcoEPDak1SS6DPuPmqo', 'BEARER', 75),
(103, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NTQ3NTgsImV4cCI6MTY5NzU1NjE5OH0.fJ3z6UFqjuOVksFYznMWKGvwIulGng86AV_z1uzI2CU', 'BEARER', 75),
(104, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NTQ3OTEsImV4cCI6MTY5NzU1NjIzMX0.xejABCHgjcLFsdx2v-Ltms5ybUrLmHlniD5pxAXI7aQ', 'BEARER', 75),
(105, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NTk4MTQsImV4cCI6MTY5NzU2MTI1NH0.OmcAZCuSUu3AyWXCQyIfUhT-e5NF-Z4XnO3GaqKDVzs', 'BEARER', 75),
(106, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc1NjIzNDksImV4cCI6MTY5NzU2Mzc4OX0.MEFJrU7v5vbh8rjGp7nS3qZJgS-OSe_NAWGUx7Rbs-I', 'BEARER', 75),
(107, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NjA0MjMzLCJleHAiOjE2OTc2MDU2NzN9.HE-XRWE4k2dBeUNTv4UKsuPKnQnCSjgoprLuZ5755Vs', 'BEARER', 33),
(108, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc2MDU4MzksImV4cCI6MTY5NzYwNzI3OX0.LnHCxL8tGHQ-TOH6YUJF8SbSf7VjPVQIcAc6jGJAZys', 'BEARER', 75),
(109, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc2Mjc5NTAsImV4cCI6MTY5NzYyOTM5MH0.7mUs-ly1HfAuqFcQ2989MnCqhVDKp2jxKx5tV6ACpa8', 'BEARER', 75),
(110, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NjMwNDUzLCJleHAiOjE2OTc2MzE4OTN9.kdTOO0hXMpe-0QEx-u8-PDChm-8q4XkFCEv2kXGr7XQ', 'BEARER', 33),
(111, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NjMxOTg2LCJleHAiOjE2OTc2MzM0MjZ9.DWS4FrgAXfQqrZrLRVElGFU-VILUHHAN2ui5hfp-xWA', 'BEARER', 33),
(112, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NzI2NjAwLCJleHAiOjE2OTc3MjgwNDB9.54MdjMc7E2LKy1DGip0oD_6z3hBhtBVMQOCE_T-YC2c', 'BEARER', 33),
(113, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MjY2MDAsImV4cCI6MTY5NzcyODA0MH0.OcpQ_pMvoBRVHAUHFrAmS6zN1A0teuWBa6N1-Izm1a0', 'BEARER', 75),
(114, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NzI2NjUxLCJleHAiOjE2OTc3MjgwOTF9.BTkN1KdM7E80nZm9FQx1kPYhR-ScsPyhIGUr4vnDgg8', 'BEARER', 33),
(115, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3NzI3MTQ5LCJleHAiOjE2OTc3Mjg1ODl9.SH2KUN3pT37LbvKCdCcGoeT7roJref6twI-YhZ3p09A', 'BEARER', 33),
(116, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MjczNTEsImV4cCI6MTY5NzcyODc5MX0.hZn-VoYhhM55t6PhTGwpEkqm5aZznb6HOzawQXFjxuE', 'BEARER', 75),
(117, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MjgzOTAsImV4cCI6MTY5NzcyOTgzMH0.xEjv8ENw4cDzgnWIb6KARifa1oOo404QHDYewbIV_5w', 'BEARER', 75),
(118, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3Mjg2MzUsImV4cCI6MTY5NzczMDA3NX0.1k1dC0-VAQfZaL6hcx01rgeDGU-TEDx8jwIbdTCphhg', 'BEARER', 75),
(119, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MzEzMDgsImV4cCI6MTY5NzczMjc0OH0.Q0fkNsOA2ix4c21n86-Mcun_LRe8urdSWOE0HzOjOig', 'BEARER', 75),
(120, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MzI5NjMsImV4cCI6MTY5NzczNDQwM30.5zwCxCb1d4t7F0-4_MolqyGC2V3K6slOh3VByUe2bRc', 'BEARER', 75),
(121, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MzM4MDksImV4cCI6MTY5NzczNTI0OX0.0pU0q9xeoPTirF2pd1di04gsqImjwXPM-lKPOMo0js0', 'BEARER', 75),
(122, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3MzQ5ODEsImV4cCI6MTY5NzczNjQyMX0.twliZ0mSbQwAXRXKvIYxlBOpOgKO9K9AU2nunjYT5Uw', 'BEARER', 75),
(123, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3Mzk5NjgsImV4cCI6MTY5Nzc0MTQwOH0.kP7csV_4dzE0JinA26crH60AvQDsYIM72mHVEICAUP0', 'BEARER', 75),
(124, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3NDM0MzMsImV4cCI6MTY5Nzc0NDg3M30.mvtqSVshuXIyOX2nRUJRAi8JZmtLD2WG1q3zrZo72d4', 'BEARER', 75),
(125, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3NDc5MzksImV4cCI6MTY5Nzc0OTM3OX0.x274QgQsKSi10mmcXsGA8YSoI7iTPONXtHIFskvj2Sg', 'BEARER', 75),
(126, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3NDk1MzQsImV4cCI6MTY5Nzc1MDk3NH0._2MCyM_h_sihrDe5wWNylDAVN1J4aKtkbwECTPITZKI', 'BEARER', 75),
(127, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc3NTEwODQsImV4cCI6MTY5Nzc1MjUyNH0.ZbT37CdNroOw-miBDf5pY32ndy52Oam42SzTBMExJnU', 'BEARER', 75),
(128, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5NzgxMTg1OSwiZXhwIjoxNjk3ODEzMjk5fQ.2IRf2J1tNWtVRIspmKI-Zl1LLP7kaqcQahp0XT9sf60', 'BEARER', 61),
(129, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc4MTkwNTksImV4cCI6MTY5NzgyMDQ5OX0.nEK5iA0Utou6OH4ZD3X24hfVNjNJarM2DnYJvo3xXPg', 'BEARER', 75),
(130, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3ODMxMzA4LCJleHAiOjE2OTc4MzI3NDh9.dw2Hj9YFLlLuvADPzVqNFfd411Y3ThBqFehSm9P_kKk', 'BEARER', 33),
(131, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3ODMyMDY5LCJleHAiOjE2OTc4MzM1MDl9.8b1pVBforNgAac2xM0SYOfHempBVMFMZw1t9JNARcII', 'BEARER', 33),
(132, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3ODMyMTYxLCJleHAiOjE2OTc4MzM2MDF9.leG637no4tIPtvII4qapW78pJ3vnGf-cR3alxnrcBKQ', 'BEARER', 33),
(133, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTc4NzM0MDksImV4cCI6MTY5Nzg3NDg0OX0.dRgt2l8UNT7R1JI-dlrU72OX4a67ey4r5eYfa7nrbKY', 'BEARER', 37),
(134, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5MzU0NjUsImV4cCI6MTY5NzkzNjkwNX0.1NRn6c7YEeNPjYIPYn_XlnhnoZOveNJkkRP4-Cp7iPc', 'BEARER', 75),
(135, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5Mzc0NDAsImV4cCI6MTY5NzkzODg4MH0.rmIrb2P-7XE_kIjXphzYP04HWwgdzhrnYOSKFo7C3Ek', 'BEARER', 75),
(136, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5MzkzNzksImV4cCI6MTY5Nzk0MDgxOX0.4WVOeZyqr2pYdZ0NUbaA-W_QyBmk_uYh9eAWvA9RDTs', 'BEARER', 75),
(137, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5NDE0OTgsImV4cCI6MTY5Nzk0MjkzOH0.k2xWivGNTcEn9yrG22Jrf-wXjVm0ljeLPRpMForpge4', 'BEARER', 75),
(138, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5NjkxMTMsImV4cCI6MTY5Nzk3MDU1M30.eYU6usB0bKutC2u7pC5XaPpdbA4DysWSNBUK0lLNt9w', 'BEARER', 75),
(139, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5Njk4NzEsImV4cCI6MTY5Nzk3MTMxMX0.yktP4k5QNDJjzeFDIwbpTpbSJ04rp1kRhnt-fl6XnYE', 'BEARER', 75),
(140, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5NzM0MTIsImV4cCI6MTY5Nzk3NDg1Mn0.L6OS0LH_Q2Sx2LvMSzhjMT3OoHuM6OJ7XWDUotvyB9M', 'BEARER', 75),
(141, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5NzU1NzAsImV4cCI6MTY5Nzk3NzAxMH0.JRr_yjUhl1aNQIQXLv7AOeYGFWDIVhAgpCc3XGk8UOI', 'BEARER', 75),
(142, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTc5NzcwODAsImV4cCI6MTY5Nzk3ODUyMH0.cZiqLStQPbt0PGn0xrxepc_O10fM0URVptbKf0NPfY0', 'BEARER', 75),
(143, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTgwMjkzLCJleHAiOjE2OTc5ODE3MzN9.zQF3b2v5u4CnAGOGw6FhkNS4KUibwGH61wVY71_GctE', 'BEARER', 33),
(144, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTgxMDY2LCJleHAiOjE2OTc5ODI1MDZ9.wCH5E7AWxSMYQ6Iwn8TJBuQXWiFM_W-irSIFCVj26mM', 'BEARER', 33),
(145, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTkwNDIzLCJleHAiOjE2OTc5OTE4NjN9.yuYxBwZMJO72sxmR_Vzfh-Sjb-GoTja9V9mHUlOucj0', 'BEARER', 33),
(146, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTkxMDM5LCJleHAiOjE2OTc5OTI0Nzl9.1V9u2PjI4fOCNEyuB50opRGC7pjOnqLNfhezjebWdek', 'BEARER', 33),
(147, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTk2NDMwLCJleHAiOjE2OTc5OTc4NzB9.zmZoR7EUm0di_eiBhDNL7jwLQSL2S1CKCQJDY_kpyRE', 'BEARER', 33),
(148, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk3OTk4MzU2LCJleHAiOjE2OTc5OTk3OTZ9.fWtbQvLUlCiGRx-xnocmOHDZ0ADXsiyD6kbRatPlRfM', 'BEARER', 33),
(149, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgwMDA3MzIsImV4cCI6MTY5ODAwMjE3Mn0.g6vdFmUUvJGSezYZBG5SGMhKroKWNRGQZkKVwRNZh_E', 'BEARER', 75),
(150, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgwMDQyMzYsImV4cCI6MTY5ODAwNTY3Nn0.HlqeEGEJddceu-c50ZP7eBy5Qi3Jv_iYQw5tjpGcHuI', 'BEARER', 75),
(151, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgwMDU3NDYsImV4cCI6MTY5ODAwNzE4Nn0.NG0hooHgbqQkhTBSpXYwzKlK5V3uFPNwSxD138VrkC0', 'BEARER', 75),
(152, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgwMjQzODgsImV4cCI6MTY5ODExMDc4OH0.8nrOygR9MVxyhbKViWihC2UdfaH3NemCFDR7Gw_eauA', 'BEARER', 75),
(153, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4MDI5NTM3LCJleHAiOjE2OTgxMTU5Mzd9.9AyR7onZ4nBnCRJCzwuS8ZUYf8Ifsmd8N1meKijBJlc', 'BEARER', 33),
(154, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMjAwM0BnbWFpbC5jb20iLCJpYXQiOjE2OTgwNTA4OTcsImV4cCI6MTY5ODA1MjMzN30.Z99aecYqE6LQoQZAFcQPbgZM3xAPqe6VZL9r-L9paAk', 'BEARER', 37),
(155, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgwNzEzMzYsImV4cCI6MTY5ODE1NzczNn0.srKq4SvuICdKPc9gxyx9uc5ECqWBrjiGOplHUvX2WRk', 'BEARER', 75),
(156, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5ODA3NTYyMSwiZXhwIjoxNjk4MDc3MDYxfQ.LQLLih12otKXS97_IKR6NTigNwXdl82XDN-eEE8ZDFo', 'BEARER', 61),
(157, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgxNTkxMzcsImV4cCI6MTY5ODE2MDU3N30.3n3j9k_6wRxd_82X_hvrBzqyA-FVgxMwEVDpaMIrTjY', 'BEARER', 75),
(158, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgxNjY2OTMsImV4cCI6MTY5ODE2ODEzM30.0teEYXAAmDDm7sgfzrei1xDB7cttBcLymMGo3e5m0so', 'BEARER', 75),
(159, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgxOTYyMDAsImV4cCI6MTY5ODI4MjYwMH0.8wM__Kl2D4qOqXV4K2JfF7VD79o3m-DzRsrgLtS6ors', 'BEARER', 75),
(160, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyMTkxNDAsImV4cCI6MTY5ODIyMDU4MH0.F6TXxyBNYQUTbhtJOFA74Erhr8Fyenh97caqC9eLroU', 'BEARER', 75),
(161, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyMzQ4NzksImV4cCI6MTY5ODMyMTI3OX0._8bTRKwkU_-0uN369YzpnAOTcYPbchat88LHASN9Dp4', 'BEARER', 75),
(162, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4MjY1NzY0LCJleHAiOjE2OTgzNTIxNjR9.iamaxh1lCUMyz2PBUrlXyb4LG6NOzjtEg0k35I1bXys', 'BEARER', 33),
(163, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4MjY3MDg4LCJleHAiOjE2OTgzNTM0ODh9.T2JG1nafxFRZLl1IKhVDeePeeWwlLpVHSvKUqkrGZUg', 'BEARER', 33),
(164, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyNzM4NjYsImV4cCI6MTY5ODM2MDI2Nn0.7kp6RHSYA8CbKahynyW7jLdiogUCD__NfaJM0cl0ssI', 'BEARER', 75),
(165, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyNzk4NjEsImV4cCI6MTY5ODI4MTMwMX0.Yx3RcCOv1O6Vn_G85Uay47R0vZLu4_xeAgvL5qUkLlM', 'BEARER', 75),
(166, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyNzk4NjEsImV4cCI6MTY5ODI4MTMwMX0.Yx3RcCOv1O6Vn_G85Uay47R0vZLu4_xeAgvL5qUkLlM', 'BEARER', 75),
(167, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyNzk4NjEsImV4cCI6MTY5ODI4MTMwMX0.Yx3RcCOv1O6Vn_G85Uay47R0vZLu4_xeAgvL5qUkLlM', 'BEARER', 75),
(168, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyNzk4NjYsImV4cCI6MTY5ODI4MTMwNn0.aALhJqokzcV82esYnmZPDiBrGAppsVmTBzvfACCytp4', 'BEARER', 75),
(169, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgyODgwMTgsImV4cCI6MTY5ODI4OTQ1OH0.2xtpIg6XrsJBsLuPEHEbhk3TWruwcn2IK6t4arW2HqM', 'BEARER', 75),
(170, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTgzMjY4NzIsImV4cCI6MTY5ODQxMzI3Mn0.qyFlAjK8fx_-a145vu2NQ8Fn30onb4-4naHsBBnLyZs', 'BEARER', 74),
(171, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTgzMzAxMzUsImV4cCI6MTY5ODQxNjUzNX0.H412ZOtFataR2HgXHfAoCk4tRYI84enUIuMHmx8G8Pk', 'BEARER', 75),
(172, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGFAZ21haWwuY29tIiwiaWF0IjoxNjk4Mzg5NjAzLCJleHAiOjE2OTg0NzYwMDN9.fZiOy6TiFmfapzoqL2wp1-l83GC4t6RncEAtbJaaOdQ', 'BEARER', 77),
(173, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJsb3ZlbmFoaWRhQGdtYWlsLmNvbSIsImlhdCI6MTY5ODM4OTY5OCwiZXhwIjoxNjk4NDc2MDk4fQ.VFDtfZ5ZBIfhiD_XJ13G-kFBh_cjh63lD35cVtFcY7g', 'BEARER', 79),
(174, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIiLCJpYXQiOjE2OTgzOTAwMzAsImV4cCI6MTY5ODQ3NjQzMH0.jmv-FERRzQg_CvzvTSSwnXikCml8kcNtaqLKpnvcxbk', 'BEARER', 80),
(175, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJnIiwiaWF0IjoxNjk4MzkwMDcyLCJleHAiOjE2OTg0NzY0NzJ9.wU6tm9vC0NMs-aVZ2JlnZpKHEaA-lF-gHHhnVcXa2Dg', 'BEARER', 82),
(176, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGEyQGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MDUzNiwiZXhwIjoxNjk4NDc2OTM2fQ.6-oEG-Z2sd_-aZFvIE1pZSc5r8sj4Ix5u1dRDCIhq6w', 'BEARER', 84),
(177, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGEzQGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MDkyNiwiZXhwIjoxNjk4NDc3MzI2fQ.V-b9uq1RlB7_Uj6XP-xnhl7F_4s7fFu00Bes_-L0OQ0', 'BEARER', 86),
(178, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGE0QGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MTE1OSwiZXhwIjoxNjk4NDc3NTU5fQ.cw-YDSinMJynFickNsmC24T4LuMZNSw-j8Cm8y1nLyE', 'BEARER', 87),
(179, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTgzOTI2ODksImV4cCI6MTY5ODQ3OTA4OX0.PYLOB6yyYt_nVu2-Ix6Gvu4E-QgWuk7GCSygg1kYNR8', 'BEARER', 74),
(180, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg0MDEwMDAsImV4cCI6MTY5ODQ4NzQwMH0.QQrds0TexLxfux2Gk68caJpmQN6-yn8yFnJVP1sAl5g', 'BEARER', 74),
(181, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MTY1OTksImV4cCI6MTY5ODUwMjk5OX0.Ax8IGj0kHUpOtpycEiCZ-bWXNk4Q2kjbJg1cJOVcAuk', 'BEARER', 75),
(182, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MTcxNjIsImV4cCI6MTY5ODUwMzU2Mn0.BiVwpLpspH-O279CC3NoQRigb01esO4tMUGq3fkkAog', 'BEARER', 75),
(183, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4NDM1NjQ3LCJleHAiOjE2OTg1MjIwNDd9.hT_UArPfjFoMLi4MFexfsYrxchXx1mAr2VviKqF1eXY', 'BEARER', 33),
(184, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MzYwNDYsImV4cCI6MTY5ODUyMjQ0Nn0.t2FMiJ6QWsHrtqzF1Bul81bT8F6NENjLVO8cCnW16bs', 'BEARER', 75),
(185, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg0NjE2NTEsImV4cCI6MTY5ODU0ODA1MX0.781kKbVMvskZqCwqY0aWoc71tXZjaJd3dMu9t5DaD34', 'BEARER', 74),
(186, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuZ25xc2UxNzM0NDVAZnB0LmVkdS52biIsImlhdCI6MTY5ODQ2MTc3NCwiZXhwIjoxNjk4NTQ4MTc0fQ.PPHzhGJ4G_C33RmENWmwftj5btiPY0J_3UxVUXPn9HM', 'BEARER', 52),
(187, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuZ25xc2UxNzM0NDVAZnB0LmVkdS52biIsImlhdCI6MTY5ODQ2MjcwMiwiZXhwIjoxNjk4NTQ5MTAyfQ.8BEmH8d89EvVw1ZXCMhpxYO440xjRsUT31Y8GKpReYE', 'BEARER', 52),
(188, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5ODQ2MzQ0MywiZXhwIjoxNjk4NTQ5ODQzfQ.B5XYCPRe2FjFMXjCOaFXN9HltsmF41kanTu_CfATzKQ', 'BEARER', 61),
(189, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDUiLCJpYXQiOjE2OTg0NjM3OTYsImV4cCI6MTY5ODU1MDE5Nn0.cFXO_QBP5IvjnOr4dCowUKmqdUnkAEEAy-SxZyO_iwA', 'BEARER', 91),
(190, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg0NjUxODQsImV4cCI6MTY5ODU1MTU4NH0.OxvUnispI0lf-qfervsAqFaBmvv3Aa4UVRUrvcNqsuQ', 'BEARER', 74),
(191, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4NjM5MTIwLCJleHAiOjE2OTg3MjU1MjB9.0mOrofTerroc_93Po4cxZnxUXJ0Y1W01H_B3EknzZpM', 'BEARER', 33),
(192, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4Nzg3NjM2LCJleHAiOjE2OTg4NzQwMzZ9.9BeK0kEopTUghjtPWLlLVoV4VHbeBDzFTiMLyJBxH2Q', 'BEARER', 33),
(193, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDQsImV4cCI6MTY5ODg5NTYwNH0.CVJ2bIhe27kwMil-46xjNwm2bkwQ7KsdJg0z0CcTELY', 'BEARER', 75),
(194, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDYsImV4cCI6MTY5ODg5NTYwNn0.cZOx_wnsb1Z5XYkr6XtF5rDeUKGvJ68WESM3G-TBTnk', 'BEARER', 75),
(195, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDYsImV4cCI6MTY5ODg5NTYwNn0.cZOx_wnsb1Z5XYkr6XtF5rDeUKGvJ68WESM3G-TBTnk', 'BEARER', 75),
(196, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDcsImV4cCI6MTY5ODg5NTYwN30.q9moYVptelBA-uKCZMe2IOiDdhAbkHARB-F8Nn2KnVE', 'BEARER', 75),
(197, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDcsImV4cCI6MTY5ODg5NTYwN30.q9moYVptelBA-uKCZMe2IOiDdhAbkHARB-F8Nn2KnVE', 'BEARER', 75),
(198, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDcsImV4cCI6MTY5ODg5NTYwN30.q9moYVptelBA-uKCZMe2IOiDdhAbkHARB-F8Nn2KnVE', 'BEARER', 75),
(199, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDgsImV4cCI6MTY5ODg5NTYwOH0.w9X7JT7vo5viMXsuPyYZ7ITeUQH9zLvaSz93pu6N_QA', 'BEARER', 75),
(200, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDgsImV4cCI6MTY5ODg5NTYwOH0.w9X7JT7vo5viMXsuPyYZ7ITeUQH9zLvaSz93pu6N_QA', 'BEARER', 75),
(201, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MDkyMDksImV4cCI6MTY5ODg5NTYwOX0.rXY5RW4N56_mleVpfWyk0H2o6mdxgPHCyPI6n6cFag4', 'BEARER', 75),
(202, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgwOTkwNCwiZXhwIjoxNjk4ODk2MzA0fQ.dEkJVCcM3EkWg9pCBTkGGsvGNBQ_2Hx50TFTwfTHq_w', 'BEARER', 92),
(203, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MTExODcsImV4cCI6MTY5ODg5NzU4N30.MoJGOo7N13yPct2IBjWdGvZzqEbPEEerTLz3ij7e_eU', 'BEARER', 75),
(204, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MTE0NzcsImV4cCI6MTY5ODg5Nzg3N30.e_8368AANY2b-bWgjzHI740UV80qq8MfFi9Tp0gpDXc', 'BEARER', 75),
(205, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MTE0NzgsImV4cCI6MTY5ODg5Nzg3OH0.PCWG1iGpFOEcXEhaBqtME-wyQU8dYxfUI8jDrK4dq34', 'BEARER', 75),
(206, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MTE0NzgsImV4cCI6MTY5ODg5Nzg3OH0.PCWG1iGpFOEcXEhaBqtME-wyQU8dYxfUI8jDrK4dq34', 'BEARER', 75),
(207, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGE1NTY4QGdtYWlsLmNvbSIsImlhdCI6MTY5ODgxMTYyNSwiZXhwIjoxNjk4ODk4MDI1fQ.62bx5Y0dhhMHzR8on-IJn4ZMZz-NuNfgdwJsoWSZ9JI', 'BEARER', 21),
(208, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGE1NTY4QGdtYWlsLmNvbSIsImlhdCI6MTY5ODgxMTYyNiwiZXhwIjoxNjk4ODk4MDI2fQ.kks0HkG3GsVoywWMS9n0_YL0KnM-OckWgWMqEOBw0t4', 'BEARER', 21),
(209, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGE1NTY4QGdtYWlsLmNvbSIsImlhdCI6MTY5ODgxMTYyNywiZXhwIjoxNjk4ODk4MDI3fQ.QWsIdgGpMx6bl10z7JdgO8JM7_dAK70MHGOEOcGB508', 'BEARER', 21),
(210, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGE1NTY4QGdtYWlsLmNvbSIsImlhdCI6MTY5ODgxMTYyNywiZXhwIjoxNjk4ODk4MDI3fQ.QWsIdgGpMx6bl10z7JdgO8JM7_dAK70MHGOEOcGB508', 'BEARER', 21),
(211, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgxMTY3OCwiZXhwIjoxNjk4ODk4MDc4fQ.7vxYhxsIR28gP0vFMUfpbgUHkT1yQoRPtXj_Gp_cgoo', 'BEARER', 92),
(212, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgxNjk3OCwiZXhwIjoxNjk4OTAzMzc4fQ.vgXj8OW2V6GgkMA5Kkl9IwslT-WUa4uwPuuRHvDOctg', 'BEARER', 92),
(213, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgxNzY0MiwiZXhwIjoxNjk4OTA0MDQyfQ.8ouPSdwK-eqmWnTNsbZ-cERa53TBMKQ86kHJhG-Cv-E', 'BEARER', 92),
(214, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg4MTg0MTQsImV4cCI6MTY5ODkwNDgxNH0.Q56WcrkC5Hg6k3UtgXcNPU_dUJ17GvFJUD9_H_Ylc1c', 'BEARER', 74),
(215, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MTg2MTAsImV4cCI6MTY5ODkwNTAxMH0.gglI8kvP9fZgmYMo-CNPmhkGA7GQarxBlatN0lPrb1k', 'BEARER', 75),
(216, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgxODY1NCwiZXhwIjoxNjk4OTA1MDU0fQ.kFKAJI2tndbsq6cYP20m4gLuXlB_cvc1a2yCwPwVGrs', 'BEARER', 92),
(217, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgyNzQ5OCwiZXhwIjoxNjk4OTEzODk4fQ.Rc1VqCoO68nnsccA9G755BCSXtbMHoCewaCabYlFWQM', 'BEARER', 92),
(218, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODgzMzEyNywiZXhwIjoxNjk4OTE5NTI3fQ.CGEQ5y2ag8FWk4D-OKP9vKuq2KTo3ccowTJEmLlNjNI', 'BEARER', 92),
(219, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg4MzMzNzUsImV4cCI6MTY5ODkxOTc3NX0.u6Wp8-a5eHiydj2ROCB0C8_fWNFK-vEtiZTqbV-No3U', 'BEARER', 75),
(220, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODg1MzUyNSwiZXhwIjoxNjk4OTM5OTI1fQ.Uyr6Nc2itC7DJpVJTNKztfYZlRHf8GNOQwC5DXrlN4g', 'BEARER', 92),
(221, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODg1NDMwMCwiZXhwIjoxNjk4OTQwNzAwfQ.0h_9P13VxCU3UHFU3cU7U0O6ujLqAI9SAm4O-r8nlwc', 'BEARER', 92),
(222, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODg1NDQwOSwiZXhwIjoxNjk4OTQwODA5fQ.s54C3-zLRNKKv0dLd73otDVa-LFvv6RYB5rtcWiB5Vo', 'BEARER', 92),
(223, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODg1NDQ1MCwiZXhwIjoxNjk4OTQwODUwfQ.GoYQdnHIhY6ux5BYMHymTTkPnQO1x-YEmtY3txGTQ6Y', 'BEARER', 92),
(224, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODkyODY0OSwiZXhwIjoxNjk5MDE1MDQ5fQ.wLOaf2vXjW7Hp1NWE_e4GLRVFCFhY6FeSXo2QAJ2uww', 'BEARER', 92),
(225, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODkyODgzMCwiZXhwIjoxNjk5MDE1MjMwfQ.lat3KyjU6-dUzJK_d0747RPpy8QaVsmzzFPusuDusSM', 'BEARER', 92),
(226, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NDAzNDMsImV4cCI6MTY5OTAyNjc0M30.KZH5vbefas8FxRpMXKfE1j6WRYgJbZlhb_nInwZOpFk', 'BEARER', 75),
(227, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODk0MDM4NSwiZXhwIjoxNjk5MDI2Nzg1fQ.bxzwihE73vqaqEIATqVuLzKBZbkyj5-6YxBQae6j3RY', 'BEARER', 92),
(228, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NDA3MjAsImV4cCI6MTY5OTAyNzEyMH0.ROaKUy2bO3MmZimTy2NMuV2glm9xiIwC45e1FXNfzUE', 'BEARER', 75),
(229, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODk0MDc3NCwiZXhwIjoxNjk5MDI3MTc0fQ.7UajTrapEnMM8J4VbSkIOKdMTU3VSkqk4ZhP9pd3prI', 'BEARER', 92),
(230, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NDA4NjksImV4cCI6MTY5OTAyNzI2OX0.qaKpXi734J0j44WvIP5GX_58uL6aiUpLb7hlW46oA0Y', 'BEARER', 75),
(231, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODk0MTU3MywiZXhwIjoxNjk5MDI3OTczfQ.ujkHkBzbh56kGc9gnzoKSVPyE7uAeyVjEyPC7RcY6RI', 'BEARER', 92),
(232, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NDIxODQsImV4cCI6MTY5OTAyODU4NH0.7scXA81RJH28mlXpvimtVnGYfuax8FAbFFqUK_7PugU', 'BEARER', 75),
(233, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NDIyMzEsImV4cCI6MTY5OTAyODYzMX0.0E4_torZMEm-sIKgoX4juwDtcOvLxZZAeyiPYP6kPkE', 'BEARER', 75),
(234, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4OTQ2NTc2LCJleHAiOjE2OTkwMzI5NzZ9.ZB1o7L-ac3LYifE0vNLmk_cWfbtWXpTyxoi0Rv8PVz4', 'BEARER', 33),
(235, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4OTQ3OTI5LCJleHAiOjE2OTkwMzQzMjl9.1V4jUtUfupFsazGVD6bbef74xxPMmYas_FP7Pk1ekE0', 'BEARER', 33),
(236, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4OTUwMTAzLCJleHAiOjE2OTkwMzY1MDN9.AdH0NaN1IEE0BGlYdWqQEelg8fnRFfdp41oWrLiq8X8', 'BEARER', 33),
(237, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4OTUwMzk1LCJleHAiOjE2OTkwMzY3OTV9.mZi2YXYOE_8qH_uGoRp0XiV_CNLMvA-FxqT7ST7eHZs', 'BEARER', 33),
(238, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5NzgwNDgsImV4cCI6MTY5OTA2NDQ0OH0.r6Zqmp8BKrIltfTruyxi1svphR2FgcQBKz-79GDhLdU', 'BEARER', 75),
(239, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5ODk4MjAzNiwiZXhwIjoxNjk5MDY4NDM2fQ.NzdIhH6RLk14B1JbtrQKKdluuW6pzMil7coxPCrFX9Y', 'BEARER', 92),
(240, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ3V5ZW5oYTE2MTBAc3BpZXZuLmNvbSIsImlhdCI6MTY5ODk4MzkyNiwiZXhwIjoxNjk5MDcwMzI2fQ.lrgeLj8Yc-_fha3RLUJ8zkUm31Um7VYg1nTggCswoAM', 'BEARER', 93),
(241, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg5OTE3NzIsImV4cCI6MTY5OTA3ODE3Mn0.71WM96-gqcuWdnpMtnIrPqXSEGTf9a8Gm6CMcBQT8OA', 'BEARER', 75),
(242, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4OTkyMjEzLCJleHAiOjE2OTkwNzg2MTN9.kG3996KAu2CeEFsospLGypHv1vNHgEks9yC22Pq1At0', 'BEARER', 33),
(243, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTAwMzUyMywiZXhwIjoxNjk5MDg5OTIzfQ.tBIqwi2VuuFYPQ1WvYnRJLnFKzELrK-q01yc92i98pE', 'BEARER', 92),
(244, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkwMDQxNDQsImV4cCI6MTY5OTA5MDU0NH0.cdxKpjP_13ODm_cpGVHO9yPuKGfp1gcVBzNRLbi2Uj0', 'BEARER', 75),
(245, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTAwNDUzMSwiZXhwIjoxNjk5MDkwOTMxfQ.crLQmZIRj4LMDW_HrLXALD96ToJAOY9kCBnJEN9s3tg', 'BEARER', 92),
(246, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkwMTg3MTUsImV4cCI6MTY5OTEwNTExNX0.vU2Kykayj2UXNB6QigtLetbX9A-SFCt9K2yyewKc4NY', 'BEARER', 75),
(247, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkwMjQyODMsImV4cCI6MTY5OTExMDY4M30.7BqiPp29ooLHR89oiTRe20NLahTMTTp9vKdV6GKYoag', 'BEARER', 75),
(248, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkwMjk5MDIsImV4cCI6MTY5OTExNjMwMn0.IIbTwn95QeUH2ZAJRszv-UF4e-cOEds6dajvNJDSXrk', 'BEARER', 75),
(249, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGEyQGdtYWlsLmNvbSIsImlhdCI6MTY5OTE1OTE0NiwiZXhwIjoxNjk5MjQ1NTQ2fQ.DhGIn0vjv0uaZa11HdnfXvh75FHpmGXXe3rVWc4Jk1s', 'BEARER', 84),
(250, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTU5MTgwLCJleHAiOjE2OTkyNDU1ODB9.o_wGBwWGRh3YKDXje5ELJ1MIatSWPjmR-vwXWAUXjWQ', 'BEARER', 36),
(251, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTYwMDAxLCJleHAiOjE2OTkyNDY0MDF9.qIi8Zs-hYl8uGGHYlYnvINQMwyIo66ryGEP7tBKVKdE', 'BEARER', 33),
(252, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2MDM5NCwiZXhwIjoxNjk5MjQ2Nzk0fQ.U4Rv2VHOxFMUYt6ceQkfNBpCMUsaidOeZnqLYCHo90U', 'BEARER', 92),
(253, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTYzMDQ0LCJleHAiOjE2OTkyNDk0NDR9.Z6HKOzZ9QDdoTZW_44-IZrQ7I_G7SEuuwWM1_rrqmhg', 'BEARER', 33),
(254, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNjMwODgsImV4cCI6MTY5OTI0OTQ4OH0.f5QUqZ_qitc80XYZs48nkfcPjY26wkgGxAdg6j4WW3I', 'BEARER', 75),
(255, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2MzM0MCwiZXhwIjoxNjk5MjQ5NzQwfQ.-5IBPgh-0AYDBkul0FrSoXyUVjsvi9O_zkqwsn3J2kE', 'BEARER', 92),
(256, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNjMzNjgsImV4cCI6MTY5OTI0OTc2OH0.ao_1fuRX9QYXvzZEHLhxaj_nmxyU3sqY6eJiPpB9aBQ', 'BEARER', 75),
(257, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2MzQ0NCwiZXhwIjoxNjk5MjQ5ODQ0fQ.ogpYR4ydGdpREl7Uk4JP-UMIUkFtwfLkkLLuRplTXOQ', 'BEARER', 92),
(258, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJrYWthdGExMjM0NTY3ODlAZ21haWwuY29tIiwiaWF0IjoxNjk5MTYzNzEwLCJleHAiOjE2OTkyNTAxMTB9.vfDxPiWe4YfGohGUzp-4vpGcGPHtVjdTV0uuVc0EqVo', 'BEARER', 49),
(259, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTY0MTc0LCJleHAiOjE2OTkyNTA1NzR9.DZy8ZKr4rmSyld6WdwREM1lQrVfuEeEo_ymrP4rR8ps', 'BEARER', 33),
(260, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTY0MjI2LCJleHAiOjE2OTkyNTA2MjZ9.2QF5-EaGDzPj0pW9ze3sZswbrzRlMfHM3hV5onLoXrw', 'BEARER', 33),
(261, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNjQzNDUsImV4cCI6MTY5OTI1MDc0NX0.zWLaKqifeqT0zqBpVAdWKooXkH9RwYGCNvK83qx798g', 'BEARER', 75),
(262, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2NjQ2OSwiZXhwIjoxNjk5MjUyODY5fQ.VacF3PqJWmUarb4G2xzv7_nZmMJjGyLjr4SAR4qsY2g', 'BEARER', 92),
(263, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2NjUzMSwiZXhwIjoxNjk5MjUyOTMxfQ.dLk9BWhxM-yXSf-SUDziWN479gN531lKZxX_qyXCinU', 'BEARER', 92);
INSERT INTO `token` (`id`, `expired`, `revoked`, `token`, `token_type`, `account_id`) VALUES
(264, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2NjYxNCwiZXhwIjoxNjk5MjUzMDE0fQ.KHEMyFqlVz9pwjP4I6rJPJUWRSbuJEmxjhp6RIFNJao', 'BEARER', 92),
(265, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2NjY3MCwiZXhwIjoxNjk5MjUzMDcwfQ.LeMdjsKY-9M3_XLbIhoc7Wr4tT0Ur8zuNLH9WcJfcwo', 'BEARER', 92),
(266, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNjY3MTMsImV4cCI6MTY5OTI1MzExM30.dU0Oi4BHfwleqqtEU_TX4TOfx1DtXH22eAvgjoq6NcI', 'BEARER', 75),
(267, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE2NzEzMywiZXhwIjoxNjk5MjUzNTMzfQ.5MvP9ql43y1t9KpiAlbVYKGb0fg9V2icnr7XjnPdWMA', 'BEARER', 92),
(268, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MTY3MzU0LCJleHAiOjE2OTkyNTM3NTR9.IbgQ-Qx324nzGXYBkGHuNQo9-SXrnJ2q27MLH_lqlms', 'BEARER', 33),
(269, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNjgyNjQsImV4cCI6MTY5OTI1NDY2NH0.zQGXcT3_suHq8a531FDRmunY606-pf09BP6tP0D75-I', 'BEARER', 75),
(270, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE3MzMwMiwiZXhwIjoxNjk5MjU5NzAyfQ.nKImFU0s3V86rDNPUKcoXuMbhJLF6nCqZN_JxnSsRHw', 'BEARER', 92),
(271, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxNzcyNjMsImV4cCI6MTY5OTI2MzY2M30.kXfawfC6zL-THsuVbj3XAZKnI-13UQWoPJXdy8LEbNE', 'BEARER', 75),
(272, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5OTE3Nzg3NiwiZXhwIjoxNjk5MjY0Mjc2fQ.S9kWx5XckqqarqvCeycwSqRBuS2uo1NtWxdHf3dl5mQ', 'BEARER', 61),
(273, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5OTE4MTQ4MSwiZXhwIjoxNjk5MjY3ODgxfQ.-HQNRP005twnZr3q3TfbKz5WXfBWFzhdrE0DopHVnoQ', 'BEARER', 61),
(274, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJnbmFAZ21haWwuY29tIiwiaWF0IjoxNjk5MTk0NzgxLCJleHAiOjE2OTkyODExODF9.grM6cpYbuL80xZmASReHYsUMJazoCfktpRUO7D_fPzo', 'BEARER', 82),
(275, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE5Njk4NCwiZXhwIjoxNjk5MjgzMzg0fQ.eATilA4b2eNd0-6G7iR9UNnTFg2kfo4fJckah2razvg', 'BEARER', 92),
(276, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTE5ODQyOCwiZXhwIjoxNjk5Mjg0ODI4fQ.m9Rn15vMekQaOWfCsnrREB5JLsdgOFAcD48Bj4HUfwk', 'BEARER', 92),
(277, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJnbmFAZ21haWwuY29tIiwiaWF0IjoxNjk5MTk4NTU3LCJleHAiOjE2OTkyODQ5NTd9.Es_MWt73wXViBoEn0lKBGryr2SOeAqIri_pM4kI8vnE', 'BEARER', 82),
(278, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkxOTk0NTEsImV4cCI6MTY5OTI4NTg1MX0.Q-S_niEXOIxA6GjVTkicYFPgushsdGEOhXO7awI3uxQ', 'BEARER', 75),
(279, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MjY4MTUwLCJleHAiOjE2OTkzNTQ1NTB9.YLJ9jN8NTqjvXtinC7IqWjH-Fs-MGB8-5H-1PqKJBD0', 'BEARER', 33),
(280, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5OTI3NTU5NiwiZXhwIjoxNjk5MzYxOTk2fQ.QdkpMs5KtZs2VCDvyF3I4XxqsgNK6Fpyys65QZUsWfA', 'BEARER', 61),
(281, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTI3ODE5NiwiZXhwIjoxNjk5MzY0NTk2fQ.ngrLsFR4HWGvqLfAvlK6iCf_9XvSwBVQwIVhgS3oDOo', 'BEARER', 92),
(282, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mjc4ODk3LCJleHAiOjE2OTkzNjUyOTd9.fbCV0Fl2ex6uRCc0vsFLgd3rI5i6rlfj4pp1HvQUMuQ', 'BEARER', 36),
(283, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mjc4OTEzLCJleHAiOjE2OTkzNjUzMTN9.mNNCAxKm--T2GefPh0XscBOqRsfw25q6KSEz38AcbN4', 'BEARER', 36),
(284, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkyNzg5MzIsImV4cCI6MTY5OTM2NTMzMn0.hKZkhjyyKS92XgNfenQ5jeiUx7urXn0AwmgGITHwVG8', 'BEARER', 75),
(285, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mjg5ODQxLCJleHAiOjE2OTkzNzYyNDF9.1XxgJVaKZNpvjURjeQoqu6M8bkL6-DiJtkooQwEc_JU', 'BEARER', 33),
(286, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkzMDA4MDMsImV4cCI6MTY5OTM4NzIwM30.521pBMBbFZ7Vj_ukO0doX_ms7xIBAMVX0lAdTBQU1xU', 'BEARER', 75),
(287, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkzMjcyMzUsImV4cCI6MTY5OTQxMzYzNX0.pb2Yp1JUW_wBT2JOZwQy009mHdjV6TESWlmBJa6vVVE', 'BEARER', 75),
(288, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5MzQzNTI4LCJleHAiOjE2OTk0Mjk5Mjh9.tu10d99nYOT9w65s_BWbpKewZeIrBhiqUjYU5jcbjzs', 'BEARER', 33),
(289, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJob2FuZ2Jhb2h1eUBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzQyOTMsImV4cCI6MTY5OTQ2MDY5M30.LwnmakIiTArIM_DtgcRckpkewiqRuCtyWBSKjbt1Ebo', 'BEARER', 99),
(290, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiYW9odXlAZ21haWwuY29tIiwiaWF0IjoxNjk5Mzc1MDQ4LCJleHAiOjE2OTk0NjE0NDh9.nG_CCW8_B0ZIY2PrON8hDLSictG5r8fQN5zjPBTMJ4w', 'BEARER', 100),
(291, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzU5NDAsImV4cCI6MTY5OTQ2MjM0MH0.P4ojuMfUbsYJQkCnYq6Gr4Qlvj54dNOFeFDhr6w4J8o', 'BEARER', 101),
(292, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzU5ODAsImV4cCI6MTY5OTQ2MjM4MH0.Yflx_tD3SzZV1mHmelPsvkzygzu7LaLU59WrbBPoCyA', 'BEARER', 101),
(293, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJob2FuZ2Jhb2h1eUBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzYwMjgsImV4cCI6MTY5OTQ2MjQyOH0.2g8nnJwPJ9scbPk1r4RWGQ6RE4lXdQkeTIT1VmKEFi0', 'BEARER', 99),
(294, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3NjM5NiwiZXhwIjoxNjk5NDYyNzk2fQ.IG1fhumjMluxPlRbrpWBpHglEI9Y9A1CJ7sWPnzRBog', 'BEARER', 92),
(295, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3NzM0NywiZXhwIjoxNjk5NDYzNzQ3fQ.W2XdOuXuXDhCzuBSdAgmG9grML3NwvImSN1qRKW5rXY', 'BEARER', 92),
(296, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzczNzMsImV4cCI6MTY5OTQ2Mzc3M30.LmqT5Vpw1ix3Z9WOBNeUmuhQr7setfh0cdUMMLA7t6Q', 'BEARER', 101),
(297, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mzc3NDcwLCJleHAiOjE2OTk0NjM4NzB9.45hwpYXTq-Zb4GaYVAuUGobfrUkAdgQ7dKcanGtxuX0', 'BEARER', 33),
(298, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3Nzc1NSwiZXhwIjoxNjk5NDY0MTU1fQ.LW3eqtzOv9muQy5Yam6Azq6yrAOVVbeKek01Y7iaXr4', 'BEARER', 92),
(299, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3ODI0OSwiZXhwIjoxNjk5NDY0NjQ5fQ._eSwXBxJN9HCX3Zo-gFbBHzqoeBE0iFoq_AhOoAsx9s', 'BEARER', 92),
(300, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3ODI4NiwiZXhwIjoxNjk5NDY0Njg2fQ.rh2V5IhyA9sbEvYSzZVV4CGX6umXOWaQjCD8JFoGsWE', 'BEARER', 92),
(301, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzkwMzgsImV4cCI6MTY5OTQ2NTQzOH0.k_xJ-fNHyaU84cg15p2vqDXkui_pNCz7oHkCdbHWaco', 'BEARER', 101),
(302, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTM3OTA4NSwiZXhwIjoxNjk5NDY1NDg1fQ.hVXKwlrtLbQHpNK13O7ZJD6E2aqhwPSqWMeYdGN3pbc', 'BEARER', 92),
(303, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTkzNzk3ODcsImV4cCI6MTY5OTQ2NjE4N30.4Mkw8t2StLTlca3Q6sts8KKfel_4_F_xhr-jFrNjguk', 'BEARER', 101),
(304, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mzg0NTY4LCJleHAiOjE2OTk0NzA5Njh9.MCa-MN1OU1NR96gdf5yvPAARMyiTu1niVrQOkRnSv5A', 'BEARER', 33),
(305, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mzg2MzgxLCJleHAiOjE2OTk0NzI3ODF9.X1i15hAp_pjIemxsaYzXHrxXUSGc0paC_HZYWdvAMx8', 'BEARER', 33),
(306, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5Mzg3NjU1LCJleHAiOjE2OTk0NzQwNTV9.ufLDJ4r795OSf7Evaipd9dXVS6j89hIebWUCB1d1mME', 'BEARER', 33),
(307, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkzODkxOTQsImV4cCI6MTY5OTQ3NTU5NH0.s9Wq94pp3gK3At_nHtYtnJypQZQ0iP82k2aDqmD_29I', 'BEARER', 75),
(308, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTkzOTEzNDQsImV4cCI6MTY5OTQ3Nzc0NH0.mqom993UhYZ1-tPubZGSsTcD5neABdAqfTgeVSiDB68', 'BEARER', 75),
(309, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTk0MDYyNjgsImV4cCI6MTY5OTQ5MjY2OH0.ZZEQCeDbfh-evIAqlhycGr6rkz28KYxo6pkoCckDvAE', 'BEARER', 101),
(310, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTQwNjc5OCwiZXhwIjoxNjk5NDkzMTk4fQ.x63SSbuWilfz6GegrxQjSz_1g2kYFSckYdboPFOP9AE', 'BEARER', 92),
(311, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTk0MDY4OTYsImV4cCI6MTY5OTQ5MzI5Nn0.sEZyvdhEt9GAfuUuJvvdkaUNGc0d2AgEBXfSKPN5BZ0', 'BEARER', 101),
(312, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTQwNzA4OSwiZXhwIjoxNjk5NDkzNDg5fQ.e-fSWjjMZLszS_8XBhZ7vQZEuIwMxwvcGvZB6uhr5xI', 'BEARER', 92),
(313, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzdXNhbkBnbWFpbC5jb20iLCJpYXQiOjE2OTk0MDcxMjMsImV4cCI6MTY5OTQ5MzUyM30.RAl0TYUB7smxRhCJhU3yoqE3RAPOcFGNKD8gdThcu-c', 'BEARER', 101),
(314, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTQwNzIyOCwiZXhwIjoxNjk5NDkzNjI4fQ.MtKR25EWKOCSzHcO-w8pNJWKf1eww5FaZyQSolHbrb0', 'BEARER', 92),
(315, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTY5OTQwOTAzMCwiZXhwIjoxNjk5NDk1NDMwfQ.5P51wgrdSNk-xyebwXoT1ZS7DkS_foMIEtUysKQ5q5o', 'BEARER', 92),
(316, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTk0MDkyNDQsImV4cCI6MTY5OTQ5NTY0NH0.0py1h216IQg2Vn3VYNvssska7i3qskQZLzTdLTGBub0', 'BEARER', 75),
(317, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5NDExNjY0LCJleHAiOjE2OTk0OTgwNjR9.bX0lXJO41hmdC4dltGugolW4SK2y-mV1melnkyYXfMA', 'BEARER', 36),
(318, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5NzExODYxLCJleHAiOjE2OTk3OTgyNjF9.2K8EoA1NphV4JuQ_LNPg27aFKT0q7CDE1nEb0EPYwf8', 'BEARER', 33),
(319, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAwNjYzLCJleHAiOjE2OTk4ODcwNjN9.RHUK7NNehDteSmvnrROJnbipCB9vXgUdmtt9sSCXHF8', 'BEARER', 33),
(320, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAwODUwLCJleHAiOjE2OTk4ODcyNTB9.ItIuwnQlPa0fpOs3sWLPDGAjPzv8hbE7PA6QtaHgo2U', 'BEARER', 36),
(321, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAwOTUxLCJleHAiOjE2OTk4ODczNTF9.hZY8qf_Y2a8zUuqiOgbc_O3T5i9tlldZdRNukIJkklo', 'BEARER', 33),
(322, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTk4MDEwNDIsImV4cCI6MTY5OTg4NzQ0Mn0.NtHEmQlgfXJuj4FENycHvPm1zGlbCBdRM_ojf6Mm8gE', 'BEARER', 75),
(323, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAxMDg5LCJleHAiOjE2OTk4ODc0ODl9._xMWCQ2naGRJ8P9TucT_CZgru8CXBvUh5zsAG2huDXI', 'BEARER', 33),
(324, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAxMzA2LCJleHAiOjE2OTk4ODc3MDZ9.mMTnLODGZinhJphI4X1Y44tobUONIySIILltXmBBgP4', 'BEARER', 33),
(325, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODAzNDgzLCJleHAiOjE2OTk4ODk4ODN9.y96ZDHFYocTsuHwewSEE03UeslgMA9FOtwNzAKQcNEM', 'BEARER', 33),
(326, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk5ODA0NzA0LCJleHAiOjE2OTk4OTExMDR9.e3_ntTzddpk3v_02z943vxJ2SY6ifTmLbd1vIagZNDY', 'BEARER', 33),
(327, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTk5NzAzMDQsImV4cCI6MTcwMDA1NjcwNH0.j0d8kF-sRK5bWugC6kWFG6ItbCjBRNnPGwo06Tq99zg', 'BEARER', 75),
(328, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5OTk3MTkwNiwiZXhwIjoxNzAwMDU4MzA2fQ.RJ7GHlt2AvCoR-R8OTHCb77znp5aZsmAdTSaJKNZYBs', 'BEARER', 61),
(329, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMDA3NTgzLCJleHAiOjE3MDAwOTM5ODN9.lxosNjew3V8keK64XhsCoAQrUpo_BwOokAYJxTfSoEI', 'BEARER', 33),
(330, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiYW92bXNlMTYxMjgwQGZwdC5lZHUudm4iLCJpYXQiOjE3MDAwMzg2MDYsImV4cCI6MTcwMDEyNTAwNn0.1to0jEAqcrMnIAde8nwiIq8juYc1SZx3RO4qsfXynis', 'BEARER', 102),
(331, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJiYW92bXNlMTYxMjgwQGZwdC5lZHUudm4iLCJpYXQiOjE3MDAwMzkzMTgsImV4cCI6MTcwMDEyNTcxOH0.mVz1gLeOPFPQaNFUHXmqNZXA-Zj0V7i7NIicvfihtGk', 'BEARER', 102),
(332, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTcwMDAzOTM4OSwiZXhwIjoxNzAwMTI1Nzg5fQ.RVWDhfJktvOa_ah9kPdwXOkc5DlyzjoQuTzN2FQ5bWs', 'BEARER', 61),
(333, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMDM5NDQ5LCJleHAiOjE3MDAxMjU4NDl9.7vkwXBACIyNxJ-Uu_yqyqiyCSnFYMvWq-g8e6wq_7-A', 'BEARER', 33),
(334, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMDM5NjE4LCJleHAiOjE3MDAxMjYwMTh9.IoaaREQGY4gDEaKWB6Yo1dGqBCTDRk-hwOhCk6B0zyA', 'BEARER', 33),
(335, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMDQwMzg1LCJleHAiOjE3MDAxMjY3ODV9.5BvqhhVYPgZpYDcwzuZSQsgnE08eAFFZXUaoO0RY-1g', 'BEARER', 33),
(336, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTcwMDA0Nzc5OSwiZXhwIjoxNzAwMTM0MTk5fQ.KcLZjPjdtJizhfAqqpWSrqjTcZNUkRP2Yry7aRGafTk', 'BEARER', 92),
(337, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMDQ3ODA0LCJleHAiOjE3MDAxMzQyMDR9.Ptrb5c6S1cc6U6sftbGvlxOjAitWIR1LrADeX1oe7wg', 'BEARER', 33),
(338, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoYW5oc2UxNzA0MzVAZnB0LmVkdS52biIsImlhdCI6MTcwMDA0ODIxNiwiZXhwIjoxNzAwMTM0NjE2fQ.Nu1pDy7xbn7o6F7Cj2a2TXbWALMc04iLpoVq92UyMvQ', 'BEARER', 92),
(339, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29ob2FuZ3RhbTExM0BnbWFpbC5jb20iLCJpYXQiOjE3MDAwNTYzOTgsImV4cCI6MTcwMDE0Mjc5OH0.2X2tU-i93CazLXrXVex7nWujl_40VVAkHwXKJJIr5wA', 'BEARER', 104),
(340, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29ob2FuZ3RhbTExM0BnbWFpbC5jb20iLCJpYXQiOjE3MDAwNTcwNjUsImV4cCI6MTcwMDE0MzQ2NX0.VfIBxkU1Z21RyvSOgedXqnIUrQCA6QgqnjEtPf6eNvI', 'BEARER', 104),
(341, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29ob2FuZ3RhbTExM0BnbWFpbC5jb20iLCJpYXQiOjE3MDAwNTg1ODksImV4cCI6MTcwMDE0NDk4OX0.bWOs5BdTeIkBHDCn5OwXhRev2kr7bMLkrmr8oM-0_qI', 'BEARER', 104),
(342, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTA3NjkzLCJleHAiOjE3MDAxOTQwOTN9.hYgCq9xJfJ_U8fW0xlreNujQVpO5cel2MakydYlDdNk', 'BEARER', 33),
(343, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTcwMDEwODM2MSwiZXhwIjoxNzAwMTk0NzYxfQ.PgTl-LvZU_DnH6OgPpvGfkn1xccVGWkvsH2sdGdylSo', 'BEARER', 61),
(344, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTA5OTU0LCJleHAiOjE3MDAxOTYzNTR9.JGJXYxqxyzzsUWlSKn9NfubHCm4K6LWCo4WFFIjThfM', 'BEARER', 33),
(345, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE3MDAxMDk5OTUsImV4cCI6MTcwMDE5NjM5NX0.0WaP1xTyctyXDihTS3mM7gigRR-gAkKgcxl_CXCJNsI', 'BEARER', 75),
(346, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTEwNTExLCJleHAiOjE3MDAxOTY5MTF9.MYNvrl0uVqSODNKyDJp1zQhWwJe4bL7mdOndMRd0OjE', 'BEARER', 33),
(347, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTExMjY1LCJleHAiOjE3MDAxOTc2NjV9.dMIihTBSRi_5c_OSSE0GTYEeETFrJbuiAj9WShvjVfM', 'BEARER', 33),
(348, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTcwMDExNzg1MCwiZXhwIjoxNzAwMjA0MjUwfQ.uxM86kghK2B2nsIj99wOppOC0tmmWI6dPMYdChbLXnY', 'BEARER', 61),
(349, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE3MDAxMTk2OTYsImV4cCI6MTcwMDIwNjA5Nn0.NR9m9vcQQT1B4eWoqXrUqOm8ZD__6XbfeNJk97qUgKA', 'BEARER', 75),
(350, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTIyOTc4LCJleHAiOjE3MDAyMDkzNzh9.Re_nwEchM8aq1NDHvjWs4YpbDQpeWhWm_VREfGzH3eY', 'BEARER', 33),
(351, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTI1MDM5LCJleHAiOjE3MDAyMTE0Mzl9.SaynXHRhgOgdf42eo4QcBM9hkAIcVxyyLZptHlOT-do', 'BEARER', 33),
(352, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTU1NUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTI1OTUwLCJleHAiOjE3MDAyMTIzNTB9.qw9w81U-q6N--GVeiLZAiwEfpNrQddYL3O91OhMNjCc', 'BEARER', 36),
(353, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTI3NTkzLCJleHAiOjE3MDAyMTM5OTN9.bEOehGATov3kUfgER16A__EopvxtD1CnyJbOoDZv9TI', 'BEARER', 33),
(354, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNzAwMTM0Mjk1LCJleHAiOjE3MDAyMjA2OTV9.CZGIFXG2l1JuHUgf4HaYB8s_UWSz2tr3bWSVv4nzUqo', 'BEARER', 33);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `total_amount` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `payment_method`, `total_amount`, `customer_id`, `description`, `transaction_date`) VALUES
(1, 'PayPal', 106, 13, 'Payment for course 101', '2023-10-10'),
(2, 'PayPal', 106, 25, 'Monthly subscription fee', '2023-10-11'),
(3, 'PayPal', 121, 12, 'Book purchase', '2023-10-12'),
(4, 'PayPal', 81, 12, 'Video course bundle', '2023-10-13'),
(5, 'PayPal', 106, 12, '1-year membership', '2023-10-14'),
(6, 'PayPal', 150, 12, 'Course 201 materials', '2023-10-15'),
(7, 'PayPal', 126, 12, 'Conference registration', '2023-10-16'),
(8, 'PayPal', 78, 12, 'Software license renewal', '2023-10-17'),
(9, 'PayPal', 81, 24, 'Research paper access', '2023-10-18'),
(10, 'PayPal', 150, 24, 'Course 301 enrollment', '2023-10-19'),
(11, 'PayPal', 121, 24, 'Tutorial access pass', '2023-10-20'),
(12, 'PayPal', 250, 24, 'Workshop registration', '2023-10-21'),
(13, 'PayPal', 150, 24, 'Course 401 module access', '2023-10-22'),
(14, 'PayPal', 112, 24, 'Online class enrollment', '2023-10-23'),
(15, 'PayPal', 160, 24, 'Digital textbook purchase', '2023-10-24'),
(16, 'PayPal', 58, 24, 'Certification exam registration', '2023-10-25'),
(17, 'PayPal', 93, 24, 'Live training session ticket', '2023-10-26'),
(18, 'PayPal', 150, 24, 'Course 501 first installment', '2023-10-27'),
(19, 'PayPal', 120, 24, 'Web development course bundle', '2023-10-28'),
(20, 'PayPal', 58, 12, NULL, '2023-11-16'),
(21, 'PayPal', 73, 12, NULL, '2023-11-16'),
(22, 'PayPal', 93, 12, NULL, '2023-11-16'),
(23, 'PayPal', 101, 12, NULL, '2023-11-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_q0uja26qgu1atulenwup9rxyr` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdebwvad6pp1ekiqy5jtixqbaj` (`customer_id`);

--
-- Indexes for table `centificate`
--
ALTER TABLE `centificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1m01yp1s91klqieqdv1pl5lnn` (`course_id`),
  ADD KEY `FKl21kgdbsw0uyb0uw5frfv4nt1` (`customer_id`);

--
-- Indexes for table `certification`
--
ALTER TABLE `certification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqaxs9lt9s6wlu7rfg6alk70ln` (`course_id`),
  ADD KEY `FKjh0ku2omy5qv8ecrq1oeprkqq` (`customer_id`),
  ADD KEY `FK7evoss5c0h5phfc2j04ax1t2y` (`file_location`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtdiyrbengpv925w5k1bdovl0m` (`course_content_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqk2yq2yk124dhlsilomy36qr9` (`instructor_id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8qumm6flvao5e375jkyyjmac8` (`section_id`);

--
-- Indexes for table `course_content_completion`
--
ALTER TABLE `course_content_completion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdbi3kp3h31y403402oykv77so` (`course_content_id`),
  ADD KEY `FK7fhw0ivn4bd4vad9g8emv458v` (`customer_id`),
  ADD KEY `FKna7qujlanamlq765jg2hgaqp3` (`content_exam`);

--
-- Indexes for table `course_detail`
--
ALTER TABLE `course_detail`
  ADD PRIMARY KEY (`course_detail`),
  ADD KEY `FKonm6feulb9dmgri1ywpvid8l2` (`course_id`);

--
-- Indexes for table `course_exam_completion`
--
ALTER TABLE `course_exam_completion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh1xauoad30w0n5xkjto4jlkgq` (`customer_id`),
  ADD KEY `FKgk4aq3k4ynajo8r5ni1pl75li` (`exam_id`);

--
-- Indexes for table `course_section_completion`
--
ALTER TABLE `course_section_completion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp9hji9x2d6iu39s02j9bscg7l` (`customer_id`),
  ADD KEY `FKqmp7qfvccmkcuygvvvrmbvtql` (`section_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn9x2k8svpxj3r328iy1rpur83` (`account_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn1huykkugjyskdv4bvtsd2fvp` (`assignment_instructor`),
  ADD KEY `FKgsiey0ad7ptytcc0kvua460wk` (`course_content_completion_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKko7f08v61t5y67teh5jxxwrea` (`course_id`),
  ADD KEY `FKpi2y2j7n01ypo49fone3knjry` (`customer_id`);

--
-- Indexes for table `file_meta`
--
ALTER TABLE `file_meta`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKms02cl6550vacj6f8a7bmuu8x` (`account_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjs3c7skmg8bvdddok5lc7s807` (`course_id`);

--
-- Indexes for table `my_learning`
--
ALTER TABLE `my_learning`
  ADD KEY `FKeajo49dfoleqfm70syu0e9em0` (`course_id`),
  ADD KEY `FK7jytu6lyboabjss8n0htobe2h` (`customer_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrbuqjo7wyi9w281uaeupnk26m` (`course_id`),
  ADD KEY `FK92d54lg7br8t0wb68h23u4jkn` (`customer_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKprox8elgnr8u5wrq1983degk` (`course_id`),
  ADD KEY `FKgce54o0p6uugoc2tev4awewly` (`customer_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnbwbig8sdjlginnxw6l6x89s3` (`instructor_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoy8uc0ftpivwopwf5ptwdtar0` (`course_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs9jl798sgmtrl79dm4svocvaw` (`account_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKftkstvcfb74ogw02bo5261kno` (`account_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnbpjofb5abhjg5hiovi0t3k57` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `centificate`
--
ALTER TABLE `centificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `course_content_completion`
--
ALTER TABLE `course_content_completion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `course_detail`
--
ALTER TABLE `course_detail`
  MODIFY `course_detail` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_exam_completion`
--
ALTER TABLE `course_exam_completion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_section_completion`
--
ALTER TABLE `course_section_completion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_meta`
--
ALTER TABLE `file_meta`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FKdebwvad6pp1ekiqy5jtixqbaj` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `centificate`
--
ALTER TABLE `centificate`
  ADD CONSTRAINT `FK1m01yp1s91klqieqdv1pl5lnn` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FKl21kgdbsw0uyb0uw5frfv4nt1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `certification`
--
ALTER TABLE `certification`
  ADD CONSTRAINT `FK7evoss5c0h5phfc2j04ax1t2y` FOREIGN KEY (`file_location`) REFERENCES `file_meta` (`img_id`),
  ADD CONSTRAINT `FKjh0ku2omy5qv8ecrq1oeprkqq` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKqaxs9lt9s6wlu7rfg6alk70ln` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FKtdiyrbengpv925w5k1bdovl0m` FOREIGN KEY (`course_content_id`) REFERENCES `course_content` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FKqk2yq2yk124dhlsilomy36qr9` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`);

--
-- Constraints for table `course_content`
--
ALTER TABLE `course_content`
  ADD CONSTRAINT `FK8qumm6flvao5e375jkyyjmac8` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `course_content_completion`
--
ALTER TABLE `course_content_completion`
  ADD CONSTRAINT `FK7fhw0ivn4bd4vad9g8emv458v` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKdbi3kp3h31y403402oykv77so` FOREIGN KEY (`course_content_id`) REFERENCES `course_content` (`id`),
  ADD CONSTRAINT `FKna7qujlanamlq765jg2hgaqp3` FOREIGN KEY (`content_exam`) REFERENCES `exam` (`id`);

--
-- Constraints for table `course_detail`
--
ALTER TABLE `course_detail`
  ADD CONSTRAINT `FKonm6feulb9dmgri1ywpvid8l2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `course_exam_completion`
--
ALTER TABLE `course_exam_completion`
  ADD CONSTRAINT `FKcwhjt979a5edxofbhqb8rih8u` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `FKgk4aq3k4ynajo8r5ni1pl75li` FOREIGN KEY (`exam_id`) REFERENCES `course_content` (`id`),
  ADD CONSTRAINT `FKh1xauoad30w0n5xkjto4jlkgq` FOREIGN KEY (`customer_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `course_section_completion`
--
ALTER TABLE `course_section_completion`
  ADD CONSTRAINT `FKp9hji9x2d6iu39s02j9bscg7l` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKqmp7qfvccmkcuygvvvrmbvtql` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FKn9x2k8svpxj3r328iy1rpur83` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `FKgsiey0ad7ptytcc0kvua460wk` FOREIGN KEY (`course_content_completion_id`) REFERENCES `course_content_completion` (`id`),
  ADD CONSTRAINT `FKn1huykkugjyskdv4bvtsd2fvp` FOREIGN KEY (`assignment_instructor`) REFERENCES `instructor` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FKko7f08v61t5y67teh5jxxwrea` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FKpi2y2j7n01ypo49fone3knjry` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `FKms02cl6550vacj6f8a7bmuu8x` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FKjs3c7skmg8bvdddok5lc7s807` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `my_learning`
--
ALTER TABLE `my_learning`
  ADD CONSTRAINT `FK7jytu6lyboabjss8n0htobe2h` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKeajo49dfoleqfm70syu0e9em0` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK92d54lg7br8t0wb68h23u4jkn` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKrbuqjo7wyi9w281uaeupnk26m` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FKgce54o0p6uugoc2tev4awewly` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `FKprox8elgnr8u5wrq1983degk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `FKnbwbig8sdjlginnxw6l6x89s3` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `FKoy8uc0ftpivwopwf5ptwdtar0` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FKs9jl798sgmtrl79dm4svocvaw` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `FKftkstvcfb74ogw02bo5261kno` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FKnbpjofb5abhjg5hiovi0t3k57` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
