-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2016 at 02:37 PM
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
  `contact_num` varchar(255) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `description`, `address`, `contact_num`, `branch_id`) VALUES
(1, 'The Food Hall by Todd English', 'Elegant interiors and the variety of well-prepared dishes', 'Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City', '(02) 2469069', 1),
(2, 'Cafe Seolhwa', 'Known for The variety of Bing Su dishes they have.\r\n', 'The Forum, 7th Avenue Corner Federacion Drive, Bonifacio Global City, Taguig City', '(02) 2469069 ', 1),
(3, 'Kettle', '', 'Fifth Floor, SM Aura Premier, C5 Corner 26th Street, Bonifacio Global City, Taguig City', '(02)8873564', 1),
(4, 'NIU by Vikings', 'Known For Vikings'' higher-notch version of their already well-known buffet.', 'Sixth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)4783888, (02)8473888', 1),
(5, 'Mamou', 'Known For Quality Angus steak, all while still being very affordable!', 'Ground Floor, Serendra, Bonifacio Global City, Taguig City', '(02)2469069', 1),
(6, 'Locavore', '', 'Forbes Town Center, Burgos Circle, Bonifacio Global City, Taguig City', '+63 9062858264', 1),
(7, 'Ramen Nagi', 'Known For Their wide selection and well-balanced flavors of authentic Japanese ramen', 'Fifth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)8286793', 1),
(8, 'Va Bene Pasta Deli', 'Known For Vibrant ambiance and innovative Italian classic dishes', 'Third Floor, Cinema Level, Central Square Building, Bonifacio High Street, 5th corner 30th, Bonifacio Global City, Taguig City', '(02)9585018', 1),
(9, 'High Street Cafe - Shangri-La at the Fort', 'Known For their breakfast buffet and nine theatre kitchens offering savory international dishes.', 'Second Level, Shangri-La at the Fort, Bonifacio Global City, Taguig City', '(02) 2469069', 1),
(10, 'Yabu', 'Known For Their modern designed interiors and scrumptious authentic Japanese dishes.', 'Fifth Floor, SM Aura Premier, C5 Road Corner 26th Street, Bonifacio Global City, Taguig City', '(02)5561001', 1),
(11, 'Cafe Poblacion', '', 'Ground Floor, Vizione Plaza Building, 505 A. Mabini Avenue,South Caloocan, Caloocan City', '(02)3664961', 2),
(12, 'Chef Patricks Kitchen', '', '263 UE Tech Street, University Hills Subdivision, South Caloocan, Caloocan City', '(02)2469069', 2),
(13, 'Mr. Swabergers', '', '621 A. Mabini Street, South Caloocan, Caloocan City', '+63 9329133303', 2),
(14, 'Luk Foo', '', 'Ground Floor, Puregold Monumento, 300 Samson Road,South Caloocan, Caloocan City', '(02)3654978, (02)3653908', 2),
(15, 'Playground Hobby Cafe', '', 'Second Floor, L.O.L. Realty Building, Asuncion Street Corner EDSA, Morning Breeze, Monumento, South Caloocan, Caloocan City', '(02)9612667', 2),
(16, 'King Sisig', '', 'Ground Floor, OK Plaza, Samson Road, South Caloocan, Caloocan City', '+63 9169831853', 2),
(17, 'Silver Crown', '', '240 Samson Road, South Caloocan, Caloocan City', '(02)3623493', 2),
(18, 'City Cakes Coffee and Pastries', '', 'Ground Floor, Luzvic Building, 260 Samson Road Corner Francisco Street, Grace Park, South Caloocan, Caloocan City', '(02)3628582, +63 9999546005', 2),
(19, 'Cafe Alezon', '', '146 Tropical Avenue, BF International, Las Piñas City', '(02)4045576, +63 9175447586', 3),
(20, 'Cafe Mary Grace', '', 'Ground Floor, SM Southmall, Alabang-Zapote Road, Las Pinas City, Almanza, Las Piñas City', '(02)9191055, +63 9178528636', 3),
(21, 'Ersao', '', 'Lower Ground Floor, SM Southmall Alabang-Zapote Road, Almanza, Las Piñas City', '(02)2469069', 3),
(22, 'Mang Rauls BBQ', '', 'CRM Avenue, Near Holy Family Parish, Almanza, Las Piñas City', '+63 9206122150', 3),
(23, 'Mesa', '', 'Ground Floor, SM Southmall, Alabang-Zapote Road, Almanza, Las Piñas City', '(02)2469069 ext. 401', 3),
(24, 'Project Pie', '', 'Food Street, Upper Ground Floor, SM Southmall, Almanza, Las Piñas City', '(02)8333106', 3),
(25, 'Sambo Kojin', '', 'Food Street, Upper Ground Floor, SM Southmall, Almanza, Las Piñas City', '(02) 5117853, (02) 5117843', 3),
(26, 'Test Kitchen Caffe', '', 'Block 6 Lot 7 Tropical Avenue, BF International, Las Piñas City', '(02)2469069 ext. 535', 3),
(27, 'The Rib Shack', '', 'PDC Compound, Pilar Village,Almanza, Las Piñas City', '+63 9178874225', 3),
(28, 'Mama Lous Kitchen', '', 'Block 1, Lot 36, Tropical Avenue Corner Tropical Palace, BF International, Las Piñas City', '(02)2469069 ext. 927', 3),
(29, 'El Chupacabra', '', '5782 Felipe Street, Poblacion, Makati City', '(02)7293358', 4),
(30, 'Royal Indian Curry House', '', '5345 General Luna Street, Poblacion, Makati City', '(02)2469069 ext. 793', 4),
(31, 'Izakaya Kikufuji', '', 'Little Tokyo, 2277 Chino Roces Avenue, Legaspi Village, Makati City', '(02)8937319, (02)8936131', 4),
(32, 'Benis Falafel', '', 'Ground Floor, A. Venue Mall, 7829 Makati Avenue, Poblacion, Makati City', '+63 9063491300', 4),
(33, '101 Hawker Food House', '', 'Urban Avenue Corner Amorsolo Street, Legaspi Village, Makati City', '(02)8867329', 4),
(34, 'RUB', '', '1703 Nicanor Garcia Corner Baler Street, Poblacion, Makati City', '+63 9177198522, (02)8900972', 4),
(35, 'The Plantation Bar & Bistro', '', 'Ground Floor, SCC Building, 106 Carlos Palanca Street, Legaspi Village, Makati City', '(02)5015727, +63 9276874153', 4),
(36, 'Mom & Tinas Bakery Cafe', '', 'Unit 14, Ground Floor, Tropical Palms Condominium, 103 Dela Rosa Street Corner Perea Street, Legaspi Village, Makati City', '(02)8943598, (02)8404299', 4),
(37, 'Mendokoro Ramenba', '', 'V. Corporate Center, Soliman Street, Salcedo Village, Makati City', '(02)2151751, (02)4789625', 4),
(38, 'Bubba Gump Shrimp Co', '', 'Level 2, Greenbelt 3, Ayala Center, Greenbelt, Makati City', '(02)2469069 ext. 117', 4),
(39, 'Cocina Luna', '', '144 Gen. Luna Street, Metro Manila, Concepcion, Malabon City', '(02)3731420', 5),
(40, 'Zoeys Burger', '', 'General Luna Street, Concepcion, Malabon City', '(02)3641009, +63 9266199639\r\n', 5),
(41, 'Staycees Tea House', '', 'Manapat Street, Near Rizal Avenue, Metro Manila, Tañong, Tañong, Malabon City', '(02)3518402', 5),
(42, 'Cups N Cones', '', '247 General Luna Street, Concepcion, Malabon City', '(02)2942194, +63 9189023004', 5),
(43, 'Master Garden', '', '7 Gen. Luna Street, San Agustin, Malabon City', '(02)3731524, (02)3731530', 5),
(44, 'Nacho Bandido', '', '223-D Gen. Luna Street, Concepcion, Malabon City 1470', '(02)7092417, (02)5793910', 5),
(45, 'Eskinita Resto Bar', '', '4A Lopez Jaena Street, Barangay Baba, Concepcion, Malabon City', '+63 9337177143', 5),
(46, 'Tea Pop', '', 'Gen. Luna Street, Concepcion, Malabon City', '', 5),
(47, 'Sushi Master', '', '40 Gov. Pascual Avenue, Concepcion, Malabon City', '+63 9328864744', 5),
(48, 'The Hideout Tea and Coffee House', '', '428 Gen. Luna Street, Concepcion, Malabon City', '+63 9212170909', 5),
(49, 'Pablo', '', 'Ground Floor, Robinsons Place Manila, Ermita, Manila', '', 6),
(50, 'Amo Yamie Crib Coffee', '', 'Second Floor, Gordi Plaza, 2125 Legarda Street, Quiapo, Manila', '+63 9178335017', 6),
(51, 'Zarks Burgers', '', 'Ground Floor, Burgundy Building, Taft Avenue, Malate, Manila', '+63 9166877755', 6),
(52, 'Wai Ying Fastfood', '', '810 Benavidez Street, Binondo, Manila', '(02)2436665, (02)2420310', 6),
(53, 'Cafe Travel', '', 'Second Floor, Archer''s Nook Center, 2624 Taft Avenue, Malate, Manila', '+63 9052248003, +63 9291559770', 6),
(54, 'Plane Bistro', '', '1920 España Boulevard, Corner Kundiman Street, Sampaloc, Manila', '(02)2469069 ext. 357', 6),
(55, 'The Aristocrat', '', '432 San Andres Street Corner Roxas Boulevard, Malate, Manila', '(02)5247671, (02)5247680', 6),
(56, 'Amor Bakery', '', '8010 Espana Corner Tolentino Street, Sampaloc, Manila', '(02)2469069 ext. 903', 6),
(57, 'Beckys Kitchen', '', '1061 Pablo Ocampo Corner Bautista Street, Malate, Manila', '(02)5251648, (02)5234245', 6),
(58, 'Brinner Cafe', '', '1676 Piy Margal Corner M. Dela Fuente Street, Sampaloc, Manila', '+63 9064103969', 6),
(59, 'Cafe Lidia', '', '64 Calderon Street, Calumpang, Marikina City', '(02)2469069 ext. 821', 7),
(60, 'Miguel & Maria', '', '89 Lilac Corner Panaroma Street, Concepcion Dos, Marikina City', '(02)2469069 ext. 864', 7),
(61, 'Rustic Mornings by Isabelo', '', '11 Isabelo Mendoza Street, San Roque, Marikina City', '(02)4258610, (02)6812461', 7),
(62, 'Brad and Pits Ribshack', '', '116 Lilac Street, SSS Village, Concepcion Dos, Marikina City', '(02)2469069 ext. 521', 7),
(63, 'Patio Vera', '', '70 General F. Santos Street, Calumpang, Marikina City', '(02)2390615, +63 9054241593', 7),
(64, 'Mogu Tree Noodle House', '', '60-E Lilac Street, Hacienda Heights, Concepcion Dos, Marikina City', '0917 5539426', 7),
(65, 'Blakes Wings and Steaks', '', '75 Gil Fernando Avenue, San Roque, Marikina City', '(02)6327190, +63 9069044919', 7),
(66, 'Karnevore', '', 'Pitpitan Corner Gunting Street, San Roque, Marikina City', '+63 9178157562, (02)3400856', 7),
(67, 'Beeffalo by Hotrocks', '', 'Lot 6, Block 3, Gil Fernando Avenue, Santo Niño, Marikina City', '+63 9391130772', 7),
(68, 'Forget Me Not', '', '41 Lilac Street, Hacienda Heights, Concepcion Dos, Marikina City', '(02)2385021, (02)9420087', 7),
(69, 'Omakase', '', 'Molito Commercial Complex, Alabang, Muntinlupa City', '(02)2469069 ext. 432', 8),
(70, 'Yushoken', '', 'Molito Commercial Complex, Alabang, Muntinlupa City', '(02)8087424', 8),
(71, 'Sushi Ninja', '', 'Westgate Center, Filinvest City, Muntinlupa City', '(02)5567706, +63 9178378744', 8),
(72, 'Burger Geek', '', 'Molito Commercial Complex, Alabang, Muntinlupa City', '(02)8012903', 8),
(73, 'California Pizza Kitchen', '', 'Ground Floor, Alabang Town Center, Alabang, Muntinlupa City', '(02)8505771, (02)8525782', 8),
(74, 'Vanilla Cupcake Bakery', '', 'Second Floor, Alabang Town Center, Alabang, Muntinlupa City', '(02)4256238, +63 9188264552', 8),
(75, 'Kenji Tei Ramen House', '', 'Ground Floor, Alabang Town Center Cinema Area, Alabang, Muntinlupa City', '(02)5118980', 8),
(76, 'The Nest - Vivere Hotel', '', 'Vivere Hotel, 5102 Bridgeway Avenue Corner Asean Drive, Filinvest City, Muntinlupa City', '(02)2469069 ext. 275', 8),
(77, 'Neils Kitchen', '', 'Westgate Center, Filinvest City, Muntinlupa City', '(02)2469069 ext. 745', 8),
(78, 'Banapple', '', 'Lower Ground Floor, Alabang Town Center, Alabang, Muntinlupa City', '(02)8282675, (02)2121212', 8),
(79, 'The Urban Farm', '', '4 Presidents Avenue, Tahanan Village, Paranaque City, BF Homes, Parañaque City', '(02)2469069 ext. 355', 9),
(80, 'Outre Manila', '', 'Unit A, JJAC Building, 169 Aguirre Avenue, BF Homes, Parañaque City', '(02)8322990', 9),
(81, 'Sensei', '', '268 Aguirre Avenue, Phase 3, BF Homes, Parañaque City', '(02)3581387', 9),
(82, 'Bamba Bistro', '', '55 Aguirre Avenue, BF Homes, Paranaque City', '(02)5197097', 9),
(83, 'Serye', '', 'Santana Grove, Dr. A. Santos Avenue, San Antonio, Parañaque City', '(02)2469069 ext. 744', 9),
(84, 'The Burgery', '', '231-C Aguirre Avenue, BF Homes, Parañaque City', '+63 9771625022, (02)2382284', 9),
(85, 'Carpe Diem', '', '153 Aguirre Avenue, BF Homes, Parañaque City', '(02)8086481', 9),
(86, 'Mandarin Palace Seafood and Shabu Shabu', '', '142 Aguirre Avenue, BF Homes, Parañaque City', '(02)2469069 ext. 104', 9),
(87, 'Little Quiapo', '', '42 Aguirre Avenue Corner Lirag Street, BF Homes, Parañaque City Parañaque City Paranaque City', '(02)8075045, (02)8070220', 9),
(88, 'Ramen Kuroda', '', '96 Aguirre Avenue, BF Homes, Parañaque City', '(02)5536824', 9),
(89, 'Blackbeards Seafood Island', '', 'Building G, SM By The Bay, Seaside Boulevard, Mall of Asia Complex (MOA), Pasay City', '(02)8040130', 10),
(90, 'Buffet 101', '', 'Building K, SM By The Bay, Sunset Boulevard, Mall of Asia Complex (MOA), Pasay City', '(02)5569888, (02)5563888', 10),
(91, 'TGI Fridays', '', 'Ground Floor, Entertainment Mall, Mall of Asia Complex (MOA), Pasay City', '(02)5564390', 10),
(92, 'IHOP', '', 'Ground Floor, Entertainment Mall, Mall of Asia Complex (MOA), Pasay City', '(02)5510690', 10),
(93, 'Cabalen', '', 'Ground Floor, Entertainment Mall, Mall of Asia Complex (MOA), Pasay City', '(02)5564874', 10),
(94, 'Yakimix', '', 'Ground Floor, Entertainment Mall, Mall of Asia Complex (MOA), Pasay City', '(02)8361535, (02)8361536', 10),
(95, 'Tajimaya', '', 'Second Floor, Entertainment Mall, Mall of Asia Complex (MOA), Pasay City', '(02)5568929', 10),
(96, 'Vikings', '', 'Building B, By The Bay, Seaside Boulevard, Mall of Asia Complex (MOA), Pasay City', '(02)8463888, (02)8464888', 10),
(97, 'Spiral', '', 'Plaza Level, Sofitel Philippine Plaza Manila, CCP Complex, Pasay City', '(02)2469069 ext. 816', 10),
(98, '8 Cuts Burger Blends', '', 'Ground Floor, South Wing, Mall of Asia Complex (MOA), Pasay City', '(02)8316957', 10),
(99, 'Ethans Cafe', '', '14 Fausto Sreet, Manotoc Subdivision, Marulas, Valenzuela City', '(02)2469069 ext. 161', 11),
(100, 'Little Beijing', '', 'McArthur Highway, Karuhatan, Valenzuela City, Karuhatan, Valenzuela City', '(02)2469069 ext. 880', 11),
(101, 'Caffe La Tea', '', 'KM. 14 McArthur Highway, Malinta, Valenzuela City', '(02)2813308', 11),
(102, 'Tullys Coffee', '', 'In Front of Valenzuela City Hall, McArthur Highway, Malinta, Metro Manila, Malinta, Valenzuela City', '(02)4410366', 11),
(103, 'Barneys Burger', '', '#9 Villa Teresa Subdivision, Sampaguita Street, Marulas, Valenzuela City Metro Manila', '+63 9193126874', 11),
(104, 'Golden Crown Food Center', '', '51 McArthur Highway, Marulas, Valenzuela City', '(02)2916652', 11),
(105, 'North Park Noodles', '', 'South Supermarket, Karuhatan, Metro Manila, Karuhatan, Valenzuela City', '(02)2940541', 11),
(106, 'T-Cup Zone', '', 'McArthur Highway Corner Sampaguita Street, Metro Manila, Marulas, Valenzuela City', '(02)2257223', 11),
(107, 'Papa Froi Grill & Restaurant', '', 'ARCA North Center, 286 McArthur Highway, Karuhatan, Valenzuela City', '(02)9042721', 11),
(108, 'Davids Tea House', '', 'Puregold Valenzuela, McArthur Highway, Dalandanan, Metro Manila', '(02)3769181', 11);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_has_category`
--

CREATE TABLE `restaurant_has_category` (
  `restaurant_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_has_category`
--

INSERT INTO `restaurant_has_category` (`restaurant_id`, `category_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(15, 1),
(27, 1),
(34, 1),
(35, 1),
(36, 1),
(38, 1),
(39, 1),
(51, 1),
(54, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(65, 1),
(66, 1),
(68, 1),
(74, 1),
(78, 1),
(79, 1),
(84, 1),
(85, 1),
(91, 1),
(92, 1),
(101, 1),
(9, 2),
(23, 2),
(26, 2),
(33, 2),
(64, 2),
(66, 2),
(75, 2),
(76, 2),
(88, 2),
(90, 2),
(96, 2),
(97, 2),
(101, 2),
(105, 2),
(107, 2),
(1, 3),
(8, 3),
(19, 3),
(20, 3),
(28, 3),
(60, 3),
(73, 3),
(78, 3),
(82, 3),
(1, 4),
(4, 4),
(38, 4),
(86, 4),
(89, 4),
(96, 4),
(2, 5),
(25, 5),
(94, 5),
(2, 6),
(42, 6),
(50, 6),
(56, 6),
(58, 6),
(78, 6),
(80, 6),
(9, 7),
(15, 7),
(18, 7),
(26, 7),
(36, 7),
(42, 7),
(48, 7),
(50, 7),
(53, 7),
(56, 7),
(58, 7),
(68, 7),
(85, 7),
(99, 7),
(101, 7),
(102, 7),
(3, 8),
(5, 8),
(8, 8),
(35, 8),
(39, 8),
(59, 8),
(79, 8),
(90, 8),
(96, 8),
(97, 8),
(4, 9),
(9, 9),
(4, 10),
(7, 10),
(9, 10),
(10, 10),
(25, 10),
(31, 10),
(37, 10),
(47, 10),
(49, 10),
(69, 10),
(70, 10),
(71, 10),
(75, 10),
(81, 10),
(88, 10),
(94, 10),
(95, 10),
(5, 11),
(6, 11),
(11, 11),
(12, 11),
(16, 11),
(20, 11),
(22, 11),
(23, 11),
(35, 11),
(41, 11),
(43, 11),
(45, 11),
(46, 11),
(48, 11),
(52, 11),
(55, 11),
(61, 11),
(63, 11),
(67, 11),
(77, 11),
(78, 11),
(83, 11),
(87, 11),
(89, 11),
(93, 11),
(96, 11),
(99, 11),
(107, 11),
(9, 12),
(12, 12),
(14, 12),
(17, 12),
(33, 12),
(52, 12),
(64, 12),
(86, 12),
(94, 12),
(100, 12),
(104, 12),
(105, 12),
(108, 12),
(13, 13),
(40, 13),
(51, 13),
(72, 13),
(84, 13),
(98, 13),
(103, 13),
(18, 14),
(20, 14),
(26, 14),
(36, 14),
(49, 14),
(56, 14),
(57, 14),
(74, 14),
(78, 14),
(19, 15),
(44, 15),
(91, 15),
(21, 16),
(106, 16),
(21, 17),
(41, 17),
(46, 17),
(106, 17),
(108, 17),
(26, 18),
(82, 18),
(30, 19),
(97, 19),
(32, 20),
(62, 21),
(63, 22),
(82, 22),
(99, 22),
(80, 23);

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
(3, 'sample', 'qwerty1234', 'sample@sample.com'),
(4, 'qwerty', 'qwerty', 'qwerty@example.com'),
(5, 'password', 'QWERTY', 'password@example.com');

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
  ADD PRIMARY KEY (`id`,`branch_id`) USING BTREE,
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_branch_id_idx` (`branch_id`);

--
-- Indexes for table `restaurant_has_category`
--
ALTER TABLE `restaurant_has_category`
  ADD KEY `fk_category_id_idx` (`category_id`) USING BTREE,
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `fk_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
