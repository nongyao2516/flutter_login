-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 06:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`) VALUES
(1, 'Notebook ASUS', 25000.00, 'โน้ตบุ๊กสำหรับทำงานและเรียนออนไลน์', '1773031607_1760502827_p7.jpg'),
(2, 'iPhone 15', 35900.00, 'สมาร์ทโฟนประสิทธิภาพสูง กล้องคมชัด', '1771829324_m5.jfif'),
(4, 'Mechanical Keyboard', 2490.00, 'คีย์บอร์ด Mechanical สำหรับเกมและพิมพ์งาน', '1771829336_m2.jpg'),
(5, 'Monitor 27 นิ้ว', 8900.00, 'จอภาพ Full HD ขนาด 27 นิ้ว', '1771837643_1761180238_3.jfif'),
(12, 'กระเป๋า', 350.00, 'กหดกหดกห', '1771298436_img1.webp'),
(13, 'Logo IT', 5000.00, 'ออกแบบโลโก้', '1771298904_logo.jpg'),
(14, 'สมุดรายงานหลากสี', 49.00, 'สมุดรายงานปกแข็งหลากสี', '1771832810_p4.webp'),
(15, 'ชุดชาบูเนื้อหมูสด', 250.00, 'ชุดชาบูเนื้อหมูสด รวมผัดสด น้ำดำ', '1771833175_1760498996_p6.jpg'),
(19, 'ชุดหมูสามชั้น', 140.00, 'ชุดชาบูหมูสามชั้น', '1772426210_2.jfif'),
(20, 'น้ำดื่มตาสิง', 10.00, 'น้ำดื่มสะอาด', '1773031640_m01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`id`, `name`, `description`, `image`) VALUES
(1, 'บางแสน', 'ชายหาดยอดนิยมใกล้กรุงเทพ เหมาะสำหรับพักผ่อนและท่องเที่ยวแบบไปเช้าเย็นกลับ', 'bangsaen.jpg'),
(2, 'หาดจอมเทียน', 'ชายหาดชื่อดังพัทยา น้ำทะเลสวย มีกิจกรรมทางน้ำมากมาย', 'jomtien_beach.jpg'),
(3, 'ดอยอินทนนท์', 'ยอดเขาที่สูงที่สุดในประเทศไทย อากาศเย็นตลอดปี และมีน้ำตกสวยงาม', 'doi_inthanon.jpg'),
(4, 'ภูเก็ต', 'เกาะท่องเที่ยวระดับโลก มีชายหาดสวยงามและวัฒนธรรมที่หลากหลาย', 'phuket.jpg'),
(5, 'เชียงคาน', 'เมืองเล็กริมแม่น้ำโขง บรรยากาศสงบ มีถนนคนเดินและบ้านไม้โบราณ', 'chiang_khan.jpg'),
(6, 'เกาะล้าน', 'เกาะใกล้พัทยา น้ำทะเลใส ชายหาดสวย เหมาะกับการดำน้ำและพักผ่อน', 'koh_larn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234'),
(2, 'user', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
