-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2023 at 11:52 AM
-- Server version: 10.5.19-MariaDB-0+deb11u2
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
(80, '2023-10-27', '', '$2a$10$loK6eNp5edcNsImKSoI3feR7kuRFm1BswlDD8AVALTW0H2e5/kltC', b'1', 'INSTRUCTOR', b'1'),
(82, '2023-10-27', 'g', '$2a$10$ePmJGQhs2FF8T86CphrLgO9VVWE573SNijk3PAjTkiEAP/pUUFM7y', b'1', 'INSTRUCTOR', b'1'),
(84, '2023-10-27', 'nahida2@gmail.com', '$2a$10$.5he6rLdYZAGzWd3rxYjjeBE9cNwspTFBxw/UZ7Ll5LFhx.X3RL2u', b'1', 'INSTRUCTOR', b'1'),
(86, '2023-10-27', 'nahida3@gmail.com', '$2a$10$IGqWfSz5qo.xKrr36hU4EuKKYRNQGDbplrAbu497b5tYiQU7LAy/6', b'1', 'INSTRUCTOR', b'1'),
(87, '2023-10-27', 'nahida4@gmail.com', '$2a$10$evAjgC18FnA29J0FXplnX.Sv6VydCJwNlIug2z6qMGX/v7lM9h0p.', b'1', 'INSTRUCTOR', b'1'),
(91, '2023-10-28', 'ngoquangthang12345', '$2a$10$0DpqBu5lOlC8dJZ4xXSk2.2GEpZQhshEPdx58dAlRIWzHyufhN71C', b'1', 'CUSTOMER', b'1');

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
(3, '', 12),
(4, '15,8,7,6,5', 18),
(6, '16,11,7', 10),
(7, '5,4,3,1', 20),
(8, '2', 21);

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
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `description`, `duration`, `course_name`, `price`, `instructor_id`, `status`) VALUES
(1, 'A course for beginer', '3 weeks', 'Loli Draw Course For Beginner', 106, 1, b'0'),
(2, 'A course for beginer', '6 weeks', 'Loli Draw Course For Beginner V2', 58, 1, b'0'),
(3, 'Charcoal drawing for beginners', '3 weeks', 'Charcoal Drawing Fundamentals', 121, 3, b'0'),
(4, 'Portrait drawing workshop', '5 weeks', 'Portrait Drawing Intensive', 81, 1, b'0'),
(5, 'Watercolor painting for all levels', '6 weeks', 'Watercolor Artistry', 93, 4, b'0'),
(6, 'Introduction to comic book art', '4 weeks', 'Comic Book Art Basics', 70, 2, b'0'),
(7, 'Acrylic painting techniques', '5 weeks', 'Acrylic Painting Workshop', 120, 3, b'0'),
(8, 'Figure drawing masterclass', '6 weeks', 'Figure Drawing Excellence', 142, 1, b'0'),
(9, 'Digital illustration for beginners', '4 weeks', 'Digital Illustration Starter', 101, 4, b'0'),
(10, 'Ink and pen drawing workshop', '3 weeks', 'Ink and Pen Mastery', 127, 2, b'0'),
(11, 'Landscapes in oil painting', '5 weeks', 'Oil Painting Landscapes', 84, 3, b'0'),
(12, 'Character design for animation', '6 weeks', 'Character Design for Animation', 90, 4, b'0'),
(13, 'Mixed media art exploration', '4 weeks', 'Mixed Media Art Adventure', 146, 1, b'0'),
(14, 'Realistic pencil drawing techniques', '5 weeks', 'Realistic Pencil Drawing', 112, 2, b'0'),
(15, 'Abstract art and creativity', '4 weeks', 'Abstract Art Expressions', 73, 3, b'0'),
(16, 'Still life painting essentials', '3 weeks', 'Still Life Painting Basics', 78, 4, b'0'),
(17, 'Manga drawing for beginners', '4 weeks', 'Manga Drawing 101', 120, 1, b'0'),
(18, 'Oil pastel art for all ages', '3 weeks', 'Oil Pastel Artistry', 117, 2, b'0'),
(19, 'Color theory in painting', '4 weeks', 'Color Theory Mastery', 73, 3, b'0'),
(20, 'Cartooning and caricature', '5 weeks', 'Cartooning and Caricature', 65, 4, b'0'),
(21, 'Learn the basics of sketching', '4 weeks', 'Sketching 101', 57, 1, b'0'),
(22, 'Digital painting techniques', '6 weeks', 'Digital Painting Mastery', 141, 2, b'0'),
(23, '<p><strong>Welcome to Draw Nahida Course For Beginner Path 4</strong><br /><em><strong>When you come to this course, you will have</strong></em></p>\n<ul>\n<li style=\"list-style-type: none;\">\n<ul style=\"list-style-type: circle;\">\n<li>A powerful Lover with nahida</li>\n<li>Can join Mihoyo for work</li>\n<li>Can have Nahida</li>\n<li>Can draw lewd Nahida</li>\n<li>Can lewd Nahida</li>\n</ul>\n</li>\n</ul>', '180 mins', 'Draw Nahida Course For Beginner Path 4', 150, 12, b'0'),
(24, 'Draw lewd Nahida', '1 week', 'Draw Nahida', 146, 12, b'0'),
(27, 'Loli Course For Beginner v6, let make lews nahida', '100 min', 'Loli Course For Beginner v6', 126, 12, b'0'),
(28, 'hhhhh', '30', 'ggg', 144, 6, b'0'),
(29, 'Love Nahida', '14 weeks', 'Lewd Nahida', 500, 11, b'1'),
(30, 'Course Basic Drawing', '1 day', 'Course Basic Drawing', 10000, 12, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `id` bigint(20) NOT NULL,
  `create_date` date DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_date` date DEFAULT NULL,
  `video_link` varchar(255) NOT NULL,
  `section_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`id`, `create_date`, `description`, `title`, `updated_date`, `video_link`, `section_id`) VALUES
(1, '2023-10-17', '<p><strong>Before start course, let\'s prepare some thing</strong></p>\n<ul>\n<li style=\"list-style-type: none;\">\n<ul style=\"list-style-type: square;\">\n<li>Nahida\'s image</li>\n<li>Photoshop</li>\n<li>After Effects</li>\n</ul>\n</li>\n</ul>', 'Before we started with Nahida', '2023-10-26', 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(2, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(3, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(4, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(5, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(6, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(7, '2023-10-17', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(8, '2023-10-19', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(9, '2023-10-19', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(10, '2023-10-19', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(11, '2023-10-19', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(12, '2023-10-19', 'Before start course', 'Before we started again', NULL, 'https://www.youtube.com/embed/mcY3Kb2awIE', 2),
(13, '2023-10-20', 'Start Advance Course Learning By Draw Lews Nahida', 'Start Advance Course Learning By Draw Lews Nahida', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 14),
(14, '2023-10-20', 'Start Advance Course Learning By Draw Lews Nahida', 'Start Advance Course Learning', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 15),
(15, '2023-10-20', 'Advance Draw Loli Course', 'Advance Draw Loli Course', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 16),
(16, '2023-10-20', 'Lets Draw Nahida Lews', 'Lets Draw Nahida Lews', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 17),
(17, '2023-10-20', 'Lets Draw Nahida Lews x5', 'Lets Draw Nahida Lews', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 16),
(18, '2023-10-20', 'Lets Draw Nahida Lews', 'Lets Draw Nahida Lews x6', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 17),
(19, '2023-10-20', 'Draw Nahida', 'Draw Nahida', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 17),
(20, '2023-10-20', 'Arisu draw for beginner', 'Arisu draw for beginner', NULL, 'https://youtu.be/OIBODIPC_8Y?si=4ClzoxkjxP3oAHCi', 16),
(22, '2023-10-26', 'Lewd Nahida', 'Nahida <3', NULL, 'https://youtu.be/v1POP-m76ac?si=p0xaj1Ab6qXZVJzb', 20),
(23, '2023-10-27', '<p><strong>Before start course, let\'s prepare some thing</strong></p>\n<ul>\n<li style=\"list-style-type: none;\">\n<ul style=\"list-style-type: square;\">\n<li>Nahida\'s image</li>\n<li>Photoshop</li>\n<li>After Effects</li>\n</ul>\n</li>\n</ul>', 'The Begining Of Nahida', '2023-10-28', 'https://www.youtube.com/embed/Uj8bnZ5cDVE?si=J3fIeiV7dQOq1WZc', 5),
(25, '2023-10-28', 'Before ending this course', 'Before Ending', NULL, 'https://www.youtube.com/embed/K2Id3WLZWJI', 22),
(26, '2023-10-28', 'Before start course', 'Let begin some thing', NULL, 'https://www.youtube.com/embed/sJx3OExybGM', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_content_completion`
--

CREATE TABLE `course_content_completion` (
  `id` bigint(20) NOT NULL,
  `finish_date` date DEFAULT NULL,
  `done` bit(1) DEFAULT NULL,
  `course_content_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_content_completion`
--

INSERT INTO `course_content_completion` (`id`, `finish_date`, `done`, `course_content_id`, `customer_id`) VALUES
(2, NULL, b'1', 2, 12),
(3, NULL, b'1', 1, 12),
(4, NULL, b'1', 4, 12),
(5, '2023-10-26', b'1', 3, 12),
(6, '2023-10-26', b'1', 5, 12),
(7, '2023-10-26', b'1', 10, 12),
(8, '2023-10-26', b'1', 12, 12),
(9, '2023-10-26', b'1', 8, 12),
(10, '2023-10-26', b'1', 6, 12),
(11, '2023-10-26', b'1', 16, 12),
(12, '2023-10-26', b'1', 18, 12);

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
(1, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 20),
(2, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 21),
(3, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 22),
(4, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 23),
(5, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 25),
(6, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 26),
(7, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 27),
(8, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 28),
(9, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 29),
(10, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 30),
(11, '2023-09-01', 'Nguyen Quang Vinh', 1, '', 32),
(12, '2023-06-09', 'Nguyen Quang Vinh', 0, '', 33),
(13, NULL, 'Nguyen Quang Vinh', 1, '', 36),
(14, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 39),
(15, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 40),
(16, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 43),
(17, '2023-09-01', 'Le Quang Thang', 1, '', 45),
(18, '2023-09-22', 'Nguyen Quang Vinh', 1, '', 46),
(19, '2023-10-07', '1', 1, '', 47),
(20, '2023-10-01', 'Nguyen Quang Vinh', 0, '', 48),
(21, '2023-10-07', 'Nguyen Quang Vinh', 0, '', 49),
(22, '2003-11-23', 'Ngo Quang Thang', 0, NULL, 37),
(23, '2023-10-28', 'Thang', 0, '', 91);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `section_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(3, 'Arisu.png', 'ademyimage/images', '_DXoxuHOJ.ifPsWKOHFibi2mNG07tbZP');

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
(1, 'Nguyen Quang Vinh', '0918125719', 'A specialzation', 1, NULL),
(2, 'Tran Gia Bao', '123456789', 'Loli', 27, NULL),
(3, 'Tran Gia Nhan', '123456789', 'Loli', 26, NULL),
(4, 'Le Hong Ngoc', '123456789', 'Loli', 9, NULL),
(5, 'Le Thanh Long', '0123456789', 'Loli', 4, NULL),
(6, 'Ngo Quang Thang', '0986342445', 'love loli', 61, NULL),
(7, 'Ngo Quang Thang', '0986342445', 'love loli', 63, NULL),
(8, 'Not Thang', '0923432354', 'love nahida', 64, NULL),
(9, '', '0986342445', 'love loli', 66, NULL),
(10, 'null', '0986342445', 'love loli', 68, NULL),
(11, 'Thang Dep Trai', '0986342445', 'love loli', 74, NULL),
(12, 'Nguyen Quang Vinh', '+84918125719', 'Master of Science', 75, NULL),
(13, 'Ngo Quang Thang', '908', 'love loli', 77, NULL),
(14, 'Ngo Quang Thang', '', 'love loli', 79, NULL),
(15, 'Ngo Quang Thang', '', 'love loli', 80, NULL),
(16, 'Ngo Quang Thang', '', 'love loli', 82, NULL),
(17, 'Ngo Quang Thang', '', 'love loli', 84, NULL),
(18, 'Ngo Quang Thang', ' ', 'love loli', 86, NULL),
(19, 'Ngo Quang Thang', '1', 'love loli', 87, NULL);

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
(12, 3),
(12, 4),
(12, 1),
(12, 23);

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
(1, 'Nice Course', '2023-10-27', 4, NULL, 23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `recipient_wallet` varchar(255) NOT NULL,
  `instructor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 1, 'Introduction', 23),
(5, 1, 'Introduction', 23),
(10, 1, 'Lets Draw Nahida Lews', 27),
(11, 1, 'Lets Draw Nahida Lews', 27),
(12, 1, 'Lets Draw Nahida Lews', 27),
(13, 1, 'Lets Draw Nahida Lews', 27),
(14, 1, ' Advanced Style', 27),
(15, 1, ' Advanced Style', 24),
(16, 1, ' Advanced Style', 24),
(17, 1, ' First Styled Site', 23),
(18, 1, ' Advanced Style X5', 23),
(19, 1, 'zz', 28),
(20, 1, 'How to draw Nahida', 29),
(22, 1, 'The Final', 23);

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
(175, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJnIiwiaWF0IjoxNjk4MzkwMDcyLCJleHAiOjE2OTg0NzY0NzJ9.wU6tm9vC0NMs-aVZ2JlnZpKHEaA-lF-gHHhnVcXa2Dg', 'BEARER', 82),
(176, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGEyQGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MDUzNiwiZXhwIjoxNjk4NDc2OTM2fQ.6-oEG-Z2sd_-aZFvIE1pZSc5r8sj4Ix5u1dRDCIhq6w', 'BEARER', 84),
(177, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGEzQGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MDkyNiwiZXhwIjoxNjk4NDc3MzI2fQ.V-b9uq1RlB7_Uj6XP-xnhl7F_4s7fFu00Bes_-L0OQ0', 'BEARER', 86),
(178, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuYWhpZGE0QGdtYWlsLmNvbSIsImlhdCI6MTY5ODM5MTE1OSwiZXhwIjoxNjk4NDc3NTU5fQ.cw-YDSinMJynFickNsmC24T4LuMZNSw-j8Cm8y1nLyE', 'BEARER', 87),
(179, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTgzOTI2ODksImV4cCI6MTY5ODQ3OTA4OX0.PYLOB6yyYt_nVu2-Ix6Gvu4E-QgWuk7GCSygg1kYNR8', 'BEARER', 74),
(180, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg0MDEwMDAsImV4cCI6MTY5ODQ4NzQwMH0.QQrds0TexLxfux2Gk68caJpmQN6-yn8yFnJVP1sAl5g', 'BEARER', 74),
(181, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MTY1OTksImV4cCI6MTY5ODUwMjk5OX0.Ax8IGj0kHUpOtpycEiCZ-bWXNk4Q2kjbJg1cJOVcAuk', 'BEARER', 75),
(182, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MTcxNjIsImV4cCI6MTY5ODUwMzU2Mn0.BiVwpLpspH-O279CC3NoQRigb01esO4tMUGq3fkkAog', 'BEARER', 75),
(183, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMUBmcHQuZWR1LnZuIiwiaWF0IjoxNjk4NDM1NjQ3LCJleHAiOjE2OTg1MjIwNDd9.hT_UArPfjFoMLi4MFexfsYrxchXx1mAr2VviKqF1eXY', 'BEARER', 33),
(184, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ2aW5obnFzZTE3MDUwMTA5QGZwdC5lZHUudm4iLCJpYXQiOjE2OTg0MzYwNDYsImV4cCI6MTY5ODUyMjQ0Nn0.t2FMiJ6QWsHrtqzF1Bul81bT8F6NENjLVO8cCnW16bs', 'BEARER', 75),
(185, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDU2N0BnbWFpbC5jb20iLCJpYXQiOjE2OTg0NjE2NTEsImV4cCI6MTY5ODU0ODA1MX0.781kKbVMvskZqCwqY0aWoc71tXZjaJd3dMu9t5DaD34', 'BEARER', 74),
(186, b'1', b'1', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuZ25xc2UxNzM0NDVAZnB0LmVkdS52biIsImlhdCI6MTY5ODQ2MTc3NCwiZXhwIjoxNjk4NTQ4MTc0fQ.PPHzhGJ4G_C33RmENWmwftj5btiPY0J_3UxVUXPn9HM', 'BEARER', 52),
(187, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuZ25xc2UxNzM0NDVAZnB0LmVkdS52biIsImlhdCI6MTY5ODQ2MjcwMiwiZXhwIjoxNjk4NTQ5MTAyfQ.8BEmH8d89EvVw1ZXCMhpxYO440xjRsUT31Y8GKpReYE', 'BEARER', 52),
(188, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzQGdtYWlsLmNvbSIsImlhdCI6MTY5ODQ2MzQ0MywiZXhwIjoxNjk4NTQ5ODQzfQ.B5XYCPRe2FjFMXjCOaFXN9HltsmF41kanTu_CfATzKQ', 'BEARER', 61),
(189, b'0', b'0', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ29xdWFuZ3RoYW5nMTIzNDUiLCJpYXQiOjE2OTg0NjM3OTYsImV4cCI6MTY5ODU1MDE5Nn0.cFXO_QBP5IvjnOr4dCowUKmqdUnkAEEAy-SxZyO_iwA', 'BEARER', 91);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `total_amount` bigint(20) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `FKjh0ku2omy5qv8ecrq1oeprkqq` (`customer_id`);

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
  ADD KEY `FK7fhw0ivn4bd4vad9g8emv458v` (`customer_id`);

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
  ADD KEY `FKcwhjt979a5edxofbhqb8rih8u` (`exam_id`);

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
  ADD KEY `FK2ia2jorxw7asdrfdtny1pnui9` (`section_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `centificate`
--
ALTER TABLE `centificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certification`
--
ALTER TABLE `certification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `course_content_completion`
--
ALTER TABLE `course_content_completion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_meta`
--
ALTER TABLE `file_meta`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FKdbi3kp3h31y403402oykv77so` FOREIGN KEY (`course_content_id`) REFERENCES `course_content` (`id`);

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
  ADD CONSTRAINT `FK2ia2jorxw7asdrfdtny1pnui9` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

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
