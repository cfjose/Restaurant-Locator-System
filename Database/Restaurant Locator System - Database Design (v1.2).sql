-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2016 at 02:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rls_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `location`) VALUES
(1, 'Taguig'),
(2, 'Caloocan'),
(3, 'Las Pinas'),
(4, 'Makati'),
(5, 'Malabon'),
(6, 'Manila'),
(7, 'Marikina'),
(8, 'Muntinlupa'),
(9, 'Paranaque'),
(10, 'Pasay'),
(11, 'Valenzuela');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'American'),
(2, 'Asian'),
(3, 'Italian'),
(4, 'Seafood'),
(5, 'Korean'),
(6, 'Desserts'),
(7, 'Cafe'),
(8, 'European'),
(9, 'Mediterranean'),
(10, 'Japanese'),
(11, 'Filipino'),
(12, 'Chinese'),
(13, 'Burger'),
(14, 'Bakery'),
(15, 'Mexican'),
(16, 'Taiwanese'),
(17, 'Tea'),
(18, 'French'),
(19, 'Indian'),
(20, 'Middle Eastern'),
(21, 'Latin American'),
(22, 'Spanish'),
(23, 'Australian');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `address`, `contact_num`) VALUES
(3, 'The Food Hall by Todd English', 'Elegant interiors and the variety of well-prepared dishes', 'Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City', '(02) 2469069'),
(4, 'Cafe Seolhwa', 'Known for The variety of Bing Su dishes they have.\r\n', 'The Forum, 7th Avenue Corner Federacion Drive, Bonifacio Global City, Taguig City', '(02) 2469069 '),
(6, 'Kettle', '', 'Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City', '(02)8873564'),
(7, 'NIU by Vikings', 'Known For Vikings'' higher-notch version of their already well-known buffet.', 'Sixth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)4783888, (02)8473888'),
(8, 'Mamou', 'Known For Quality Angus steak, all while still being very affordable!', 'Ground Floor, Serendra, Bonifacio Global City, Taguig City', '(02)2469069'),
(9, 'Locavore', '', 'Forbes Town Center, Burgos Circle, Bonifacio Global City, Taguig City', '+63 9062858264'),
(10, 'Ramen Nagi', 'Known For Their wide selection and well-balanced flavors of authentic Japanese ramen', 'Fifth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)8286793'),
(11, 'Va Bene Pasta Deli', 'Known For Vibrant ambiance and innovative Italian classic dishes', 'Third Floor, Cinema Level, Central Square Building, Bonifacio High Street, 5th corner 30th, Bonifacio Global City, Taguig City', '(02)9585018'),
(12, 'High Street Cafe - Shangri-La at the Fort', 'Known For their breakfast buffet and nine theatre kitchens offering savory international dishes.', 'Second Level, Shangri-La at the Fort, Bonifacio Global City, Taguig City', '(02) 2469069'),
(13, 'Yabu', 'Known For Their modern designed interiors and scrumptious authentic Japanese dishes.', 'Fifth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)5561001'),
(14, 'Cafe Poblacion', '', 'Ground Floor, Vizione Plaza Building, 505 A. Mabini Avenue,South Caloocan, Caloocan City', '(02)3664961'),
(15, 'Chef Patrick''s Kitchen', '', '263 UE Tech Street, University Hills Subdivision, South Caloocan, Caloocan City', '(02)2469069'),
(16, 'Mr. Swabergers', '', '621 A. Mabini Street, South Caloocan, Caloocan City', '+63 9329133303'),
(17, 'Luk Foo', '', 'Ground Floor, Puregold Monumento, 300 Samson Road,South Caloocan, Caloocan City', '(02)3654978, (02)3653908'),
(18, 'Playground Hobby Cafe', '', 'Second Floor, L.O.L. Realty Building, Asuncion Street Corner EDSA, Morning Breeze, Monumento, South Caloocan, Caloocan City', '(02)9612667'),
(19, 'King Sisig', '', 'Ground Floor, OK Plaza, Samson Road, South Caloocan, Caloocan City', '+63 9169831853'),
(20, 'Silver Crown', '', '240 Samson Road, South Caloocan, Caloocan City', '(02)3623493'),
(21, 'City Cakes Coffee and Pastries', '', 'Ground Floor, Luzvic Building, 260 Samson Road Corner Francisco Street, Grace Park, South Caloocan, Caloocan City', '(02)3628582, +63 9999546005'),
(22, 'Cafe Alezon', '', '146 Tropical Avenue, BF International, Las Piñas City', '(02)4045576, +63 9175447586'),
(23, 'Cafe Mary Grace', '', 'Ground Floor, SM Southmall, Alabang-Zapote Road, Las Pinas City, Almanza, Las Piñas City', '(02)9191055, +63 9178528636'),
(24, 'Ersao', '', 'Lower Ground Floor, SM Southmall Alabang-Zapote Road, Almanza, Las Piñas City', '(02)2469069'),
(25, 'Mang Raul''s BBQ', '', 'CRM Avenue, Near Holy Family Parish, Almanza, Las Piñas City', '+63 9206122150'),
(26, 'Mesa', '', 'Ground Floor, SM Southmall, Alabang-Zapote Road, Almanza, Las Piñas City', '(02)2469069 ext. 401'),
(27, 'Project Pie', '', 'Food Street, Upper Ground Floor, SM Southmall, Almanza, Las Piñas City', '(02)8333106'),
(28, 'Sambo Kojin', '', 'Food Street, Upper Ground Floor, SM Southmall, Almanza, Las Piñas City', '(02) 5117853, (02) 5117843'),
(29, 'Test Kitchen Caffe', '', 'Block 6 Lot 7 Tropical Avenue, BF International, Las Piñas City', '(02)2469069 ext. 535'),
(30, 'The Rib Shack', '', 'PDC Compound, Pilar Village,Almanza, Las Piñas City', '+63 9178874225'),
(31, 'Mama Lou''s Kitchen', '', 'Block 1, Lot 36, Tropical Avenue Corner Tropical Palace, BF International, Las Piñas City', '(02)2469069 ext. 927'),
(32, 'El Chupacabra', '', '5782 Felipe Street, Poblacion, Makati City', '(02)7293358'),
(33, 'Royal Indian Curry House', '', '5345 General Luna Street, Poblacion, Makati City', '(02)2469069 ext. 793'),
(34, 'Izakaya Kikufuji', '', 'Little Tokyo, 2277 Chino Roces Avenue, Legaspi Village, Makati City', '(02)8937319, (02)8936131'),
(35, 'Beni''s Falafel', '', 'Ground Floor, A. Venue Mall, 7829 Makati Avenue, Poblacion, Makati City', '+63 9063491300'),
(36, '101 Hawker Food House', '', 'Urban Avenue Corner Amorsolo Street, Legaspi Village, Makati City', '(02)8867329'),
(37, 'RUB', '', '1703 Nicanor Garcia Corner Baler Street, Poblacion, Makati City', '+63 9177198522, (02)8900972'),
(38, 'The Plantation Bar & Bistro', '', 'Ground Floor, SCC Building, 106 Carlos Palanca Street, Legaspi Village, Makati City', '(02)5015727, +63 9276874153'),
(39, 'Mom & Tina''s Bakery Cafe', '', 'Unit 14, Ground Floor, Tropical Palms Condominium, 103 Dela Rosa Street Corner Perea Street, Legaspi Village, Makati City', '(02)8943598, (02)8404299'),
(40, 'Mendokoro Ramenba', '', 'V. Corporate Center, Soliman Street, Salcedo Village, Makati City', '(02)2151751, (02)4789625'),
(41, 'Bubba Gump Shrimp Co.', '', 'Level 2, Greenbelt 3, Ayala Center, Greenbelt, Makati City', '(02)2469069 ext. 117'),
(42, 'Cocina Luna', '', '144 Gen. Luna Street, Metro Manila, Concepcion, Malabon City', '(02)3731420'),
(43, 'Zoey''s Burger', '', 'General Luna Street, Concepcion, Malabon City', '(02)3641009, +63 9266199639\r\n'),
(44, 'Staycee''s Tea House', '', 'Manapat Street, Near Rizal Avenue, Metro Manila, Tañong, Tañong, Malabon City', '(02)3518402'),
(45, 'Cups N Cones', '', '247 General Luna Street, Concepcion, Malabon City', '(02)2942194, +63 9189023004'),
(46, 'Master Garden', '', '7 Gen. Luna Street, San Agustin, Malabon City', '(02)3731524, (02)3731530'),
(47, 'Nacho Bandido', '', '223-D Gen. Luna Street, Concepcion, Malabon City 1470', '(02)7092417, (02)5793910'),
(48, 'Eskinita Resto Bar', '', '4A Lopez Jaena Street, Barangay Baba, Concepcion, Malabon City', '+63 9337177143'),
(49, 'Tea Pop', '', 'Gen. Luna Street, Concepcion, Malabon City', ''),
(50, 'Sushi Master', '', '40 Gov. Pascual Avenue, Concepcion, Malabon City', '+63 9328864744'),
(51, 'The Hideout Tea and Coffee House', '', '428 Gen. Luna Street, Concepcion, Malabon City', '+63 9212170909'),
(52, 'Pablo', '', 'Ground Floor, Robinsons Place Manila, Ermita, Manila', ''),
(53, 'Amo Yamie Crib Coffee', '', 'Second Floor, Gordi Plaza, 2125 Legarda Street, Quiapo, Manila', '+63 9178335017'),
(54, 'Zark''s Burgers', '', 'Ground Floor, Burgundy Building, Taft Avenue, Malate, Manila', '+63 9166877755'),
(55, 'Wai Ying Fastfood', '', '810 Benavidez Street, Binondo, Manila', '(02)2436665, (02)2420310'),
(56, 'Cafe Travel', '', 'Second Floor, Archer''s Nook Center, 2624 Taft Avenue, Malate, Manila', '+63 9052248003, +63 9291559770'),
(57, 'Plane Bistro', '', '1920 España Boulevard, Corner Kundiman Street, Sampaloc, Manila', '(02)2469069 ext. 357'),
(58, 'The Aristocrat', '', '432 San Andres Street Corner Roxas Boulevard, Malate, Manila', '(02)5247671, (02)5247680'),
(59, 'Amor Bakery', '', '8010 Espana Corner Tolentino Street, Sampaloc, Manila', '(02)2469069 ext. 903'),
(60, 'Becky''s Kitchen', '', '1061 Pablo Ocampo Corner Bautista Street, Malate, Manila', '(02)5251648, (02)5234245'),
(61, 'Brinner Cafe', '', '1676 Piy Margal Corner M. Dela Fuente Street, Sampaloc, Manila', '+63 9064103969'),
(62, 'Cafe Lidia', '', '64 Calderon Street, Calumpang, Marikina City', '(02)2469069 ext. 821'),
(63, 'Miguel & Maria', '', '89 Lilac Corner Panaroma Street, Concepcion Dos, Marikina City', '(02)2469069 ext. 864'),
(64, 'Rustic Mornings by Isabelo', '', '11 Isabelo Mendoza Street, San Roque, Marikina City', '(02)4258610, (02)6812461');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_has_category`
--

CREATE TABLE `restaurant_has_category` (
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_has_review`
--

CREATE TABLE `restaurant_has_review` (
  `restaurant_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review_has_user`
--

CREATE TABLE `review_has_user` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(2, 'user', 'password', 'user@example.com'),
(3, 'sample', 'qwerty1234', 'sample@sample.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `restaurant_has_category`
--
ALTER TABLE `restaurant_has_category`
  ADD PRIMARY KEY (`restaurant_id`,`category_id`),
  ADD UNIQUE KEY `fk_category_id_idx` (`category_id`),
  ADD KEY `fk_restaurant_id_idx` (`restaurant_id`);

--
-- Indexes for table `restaurant_has_review`
--
ALTER TABLE `restaurant_has_review`
  ADD PRIMARY KEY (`restaurant_id`,`review_id`),
  ADD KEY `fk_restaurant_has_review_review1_idx` (`review_id`),
  ADD KEY `fk_restaurant_has_review_restaurant1_idx` (`restaurant_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `review_has_user`
--
ALTER TABLE `review_has_user`
  ADD PRIMARY KEY (`review_id`,`user_id`,`user_person_id`),
  ADD KEY `fk_review_has_user_review1_idx` (`review_id`),
  ADD KEY `fk_review_has_user_user1_idx` (`user_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurant_has_category`
--
ALTER TABLE `restaurant_has_category`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `restaurant_has_review`
--
ALTER TABLE `restaurant_has_review`
  ADD CONSTRAINT `fk_restaurant_has_review_restaurant1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_restaurant_has_review_review1` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `review_has_user`
--
ALTER TABLE `review_has_user`
  ADD CONSTRAINT `fk_review_has_user_review1` FOREIGN KEY (`review_id`) REFERENCES `review` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_review_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
