-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2024 at 04:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdf_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `column1` varchar(255) DEFAULT NULL,
  `column2` varchar(500) DEFAULT NULL,
  `column3` varchar(500) DEFAULT NULL,
  `column4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `column1`, `column2`, `column3`, `column4`) VALUES
(881, '03.02', 'Fish, fresh or chilled, excluding fish fillets and other fish meat of\nHeading 03.04', '10% or Rs.400.00 per Kg,the\namount of levy whichever is\nhigher', '14/10/2024'),
(882, '03.03', 'Fish, frozen, excluding fish fillets and other meat of Heading 03.04\n(other than the mackerel fish coming under HS 0303.54)', '10% or Rs.400.00 per Kg,the\namount of levy whichever is\nhigher', '14/10/2024'),
(883, '0303.54', 'Mackerel(Scomber scombrus, Scomber australasicus,Scomber\njaponicus)', '10% or Rs.400.00 per Kg,the\namount of levy whichever is\nhigher', '14/10/2024'),
(884, '0303.55', 'Jack and horse mackerel (Trachurus spp.)', '10% or Rs.400.00 per Kg,the\namount of levy whichever is\nhigher', '14/10/2024'),
(885, '0303.89.90', 'Other- Only Sail Fish (Istiophorus Platypterus) & Marlin Fish (Makaira\nspp)', 'Comes under SCL for Fish', ''),
(886, '0305.52.00', 'Tilapias (Oreochromis spp.), catfish (Pangasius spp., Silurus spp., Clarias\nspp., Ictalurus spp.), carp (Cyprinus spp., Carassius spp.,\nCtenopharyngodon idellus, Hypophthalmichthys spp., Cirrhinus spp.,\nMylopharyngodon piceus, Catla catla, Labeo spp., Osteochilus hasselti,\nLeptobarbus hoeveni, Megalobrama spp.), eels (Anguilla spp.), Nile\nperch (Lates niloticus) and snakeheads (Channa spp.)', 'Rs. 100/- per Kg', '31/12/2024'),
(887, '0305.53.00', 'Fish of the families Bregmacerotidae, Euclichthyidae, Gadidae,\nMacrouridae, Melanonidae, Merlucciidae, Moridae and\nMuraenolepididae, other than cod(Gadus morhua, Gadus ogac,Gadus\nmacrocephalus)', 'Rs. 100/- per Kg', '31/12/2024'),
(888, '0305.54.10', 'Sprats', 'Rs.100/- per kg', '31/12/2024'),
(889, '0305.54.90', 'Dried Fish', 'Rs. 100/- per Kg', '31/12/2024'),
(890, '0305.59.10', 'Maldive fish and substitutes thereof', 'Rs. 302/- per Kg', '13/10/2024'),
(891, '0305.59.30', 'Dried fish, other than edible fish offal, whether or not salted but not\nsmoked : Sharks', 'Rs. 100/- per Kg', '31/12/2024'),
(892, '0305.59.90', 'Dried fish, other than edible fish offal, whether or not salted but not\nsmoked : Other', 'Rs. 100/- per Kg', '31/12/2024'),
(893, '0403.20', 'Yougurt', 'Rs.2000/- per kg', '31/12/2024'),
(894, '0403.90', 'Other', 'Rs.2000/- per kg', '31/12/2024'),
(895, '0405.10', 'Butter', 'Rs.1500/- per kg', '31/12/2024'),
(896, '0405.20', 'Dairy Spreads', 'Rs.2000/- per kg', '31/12/2024'),
(897, '0405.90', 'Other', 'Rs.2000/- per kg', '31/12/2024'),
(898, '0406.20', 'Grated or Powdered Cheese, of all kinds', 'Rs.600/- per kg', '31/12/2024'),
(899, '0407.21', 'Other Fresh eggs: Of fowls of the species Gallus domesticus', 'CID waived off (19A)', '30/04/2024'),
(900, '0701.90', 'Potatoes ( other than seed potatoes )', 'Rs. 50/- per kg', '31/12/2024'),
(901, '0703.10.10', 'Red Onions', 'Rs. 50/- per kg', '31/12/2024'),
(902, '0703.10.20', 'B’ Onions', 'Rs. 10/- per kg', '31/12/2024'),
(903, '0703.20', 'Garlic', 'Rs. 50/- per kg', '31/12/2024'),
(904, '0713.10.10', 'Peas (Pisum sativum) – Whole', 'Rs. 5/- per kg', '31/12/2024'),
(905, '0713.10.20', 'Peas (Pisum sativum) - Split', 'Rs. 10/- per kg', '31/12/2024'),
(906, '0713.20.10', 'Chickpeas (Garbanzos) – Whole', 'Rs. 5/- per kg', '31/12/2024'),
(907, '0713.20.20', 'Chickpeas (Garbanzos) – Split', 'Rs. 10/- per kg', '31/12/2024'),
(908, '0713.31.19', 'Green gram (Moong)- other', 'Rs.300/- per kg', '31/12/2024'),
(909, '0713.31.22', 'Split/skinned whether or not split', 'Rs.300/- per kg', '31/12/2024'),
(910, '0713.31.29', 'Black gram- Other', 'Rs.300/- per kg', '31/12/2024'),
(911, '0713.35.90', 'Cowpea - other', 'Rs. 300/- per kg', '31/12/2024'),
(912, '0713.40.11', 'Masoor dhal (red lentils) - Whole', '25 cents per kg', '13/10/2024'),
(913, '0713.40.21', 'Masoor dhal (Yellow lentils) - Whole', '25 cents per kg', '13/10/2024'),
(914, '0713.40.22', 'Masoor dhal (Yellow lentils) - Split', '25 cents per kg', '13/10/2024'),
(915, '0804.10.10', 'Dates - Fresh', 'Rs. 200/- per Kg', '31/12/2024'),
(916, '0804.10.20', 'Dates - Dried', 'Rs. 200/- per Kg', '31/12/2024'),
(917, '0804.50.50', 'Mangoesteens - fresh', 'Rs. 200/- per Kg', '13/10/2024'),
(918, '0804.50.60', 'Mangoesteens - dried', 'Rs. 200/- per Kg', '13/10/2024'),
(919, '0805.10.10', 'Orange - Fresh', 'Rs. 600/- per kg', '31/12/2024'),
(920, '0805.10.20', 'Orange - dried', 'Rs. 125/- per kg', '31/12/2024'),
(921, '0805.22.10', 'Clemantines - Fresh', 'Rs. 120/- per kg', '31/12/2024'),
(922, '0805.22.20', 'Clemantines - Dried', 'Rs. 250/- per kg', '31/12/2024'),
(923, '0805.29.10', 'Other - Fresh', 'Rs. 120/- per kg', '31/12/2024'),
(924, '0805.29.20', 'Other -Dried', 'Rs. 250/- per kg', '31/12/2024'),
(925, '0805.40.10', 'Grape fruit including pomelos- Fresh', 'Rs. 285/- per kg', '31/12/2024'),
(926, '0805.40.20', 'Grape fruit including pomelos- Dried', 'Rs. 300/- per kg', '31/12/2024'),
(927, '0805.50.10', 'Lemons - Fresh', 'Rs. 350/- per kg', '31/12/2024'),
(928, '0805.50.20', 'Lemons - Dried', 'Rs. 400/- per kg', '31/12/2024'),
(929, '0805.90.10', 'Other - Fresh', 'Rs. 300/- per kg', '31/12/2024'),
(930, '0805.90.20', 'Other - Dried', 'Rs. 375/- per kg', '31/12/2024'),
(931, '0806.10', 'Grapes - Fresh', 'Rs. 600/- per kg', '31/12/2024'),
(932, '0806.20', 'Grapes - Dried', 'Rs. 600/- per kg', '31/12/2024'),
(933, '0808.10', 'Apples - Fresh', 'Rs. 600/- per kg', '31/12/2024'),
(934, '0808.30', 'Pears', 'Rs. 220/- per kg', '31/12/2024'),
(935, '0808.40', 'Quinces', 'Rs. 350/- per kg', '31/12/2024'),
(936, '0809.10', 'Apricots', 'Rs. 350/- per kg', '31/12/2024'),
(937, '0809.21', 'Sour Cherries', 'Rs. 330/- per kg', '31/12/2024'),
(938, '0809.29', 'Other - Cherries', 'Rs. 315/- per kg', '31/12/2024'),
(939, '0809.30', 'Peaches, including nectarines', 'Rs. 310/- per kg', '31/12/2024'),
(940, '0809.40', 'Plums and sloes', 'Rs. 250/- per kg', '31/12/2024'),
(941, '0810.50', 'Kiwifruit', 'Rs. 175/- per Kg', '13/10/2024'),
(942, '0810.90.90', 'Other', 'Rs.600/- per Kg', '31/12/2024'),
(943, '0904.21.10', 'Chillies – Neither crushed nor ground', 'Rs.100/- per Kg', '31/12/2024'),
(944, '0904.22.10', 'Chillies – crushed or ground', 'Rs. 125/- per Kg', '31/12/2024'),
(945, '0904.22.90', 'Other-Crushed or ground', 'Rs. 125/- per Kg', '31/12/2024'),
(946, '0909.21', 'Seeds of coriander – Neither crushed nor ground', 'Rs. 26/- per Kg', '31/12/2024'),
(947, '0909.22', 'Seeds of coriander – crushed or ground', 'Rs. 52/- per Kg', '31/12/2024'),
(948, '0909.31', 'Seeds of cumin-Neither crushed nor ground', 'Rs. 162/- per Kg', '31/12/2024'),
(949, '0909.32', 'Seeds of cumin-Crushed or ground', 'Rs. 162/- per Kg', '31/12/2024'),
(950, '0909.61.20', 'Seeds of fennel -Neither crushed nor ground', 'Rs. 162/- per Kg', '31/12/2024'),
(951, '0910.30.10', 'Turmeric – Neither crushed nor ground', 'Rs. 102/- per Kg', '31/12/2024'),
(952, '0910.30.90', 'Turmeric - other', 'Rs. 360/- per Kg', '31/12/2024'),
(953, '0910.99.10', 'Mathe seed', 'Rs. 50/- per kg', '31/12/2024'),
(954, '1005.90', 'Maize ( corn) - other', 'Rs. 25/- per kg', '31/12/2024'),
(955, '1006.20', 'Husked ( brown ) rice', 'Rs. 65/- per kg', '31/12/2024'),
(956, '1006.30.19', 'Other', 'Rs. 65/- per kg', '31/12/2024'),
(957, '1006.30.29', 'Other', 'Rs. 65/- per kg', '31/12/2024'),
(958, '1008.21.10', 'Kurakkan (Eleusine coracana spp.)', 'Rs. 300/- per Kg', '31/12/2024'),
(959, '1008.21.90', 'Other ( Millet )', 'Rs. 300/- per Kg', '31/12/2024'),
(960, '1008.29.10', 'Kurakkan (Eleusine coracana spp.)', 'Rs. 300/- per Kg', '31/12/2024'),
(961, '1101.00.10', 'Wheat Flour', 'Duty Waiver', 'Duty Waiver'),
(962, '1102.90.20', 'Kurakkan (Eleusine coracana spp.) flour', 'Rs. 150/- per kg', '31/12/2024'),
(963, '1106.10.10', 'Black gram flour', 'Rs. 325/- per Kg', '31/12/2024'),
(964, '1202.42', 'Ground Nut-Shelled', 'Rs. 220/- per Kg', '31/12/2024'),
(965, '1207.50', 'Mustard seeds', 'Rs. 62/- per kg', '31/12/2024'),
(966, '1507.10', 'Crude oil, whether or not degummed', 'Rs. 250/- per Kg', '31/12/2024'),
(967, '1507.90', 'Other', 'Rs. 275/- per Kg', '31/12/2024'),
(968, '1511.10', 'Crude oil', 'Rs. 250/- per Kg', '31/12/2024'),
(969, '1511.90.10', 'Serial fractions at room temperature (palm stearin)', 'Rs. 250/- per Kg', '31/12/2024'),
(970, '1511.90.20', 'NH', 'Rs. 275/- per Kg', '31/12/2024'),
(971, '1511.90.30', 'Crude palm olein', 'Rs. 255/- per Kg', '31/12/2024'),
(972, '1511.90.90', 'Other', 'Rs. 275/- per Kg', '31/12/2024'),
(973, '1512.11', 'Crude oil', 'Rs. 250/- per Kg', '31/12/2024'),
(974, '1512.19', 'Other', 'Rs. 275/- per Kg', '31/12/2024'),
(975, '1513.11.11', 'Virgin coconut oil', 'Rs. 125/- per kg', '31/12/2024'),
(976, '1513.11.19', 'Other', 'Rs. 125/- per kg', '31/12/2024'),
(977, '1513.11.21', 'Virgin coconut oil', 'Rs. 125/- per kg', '31/12/2024'),
(978, '1513.11.29', 'Other', 'Rs. 125/- per kg', '31/12/2024'),
(979, '1513.19.10', 'In bulk', 'Rs. 150/- per kg', '31/12/2024'),
(980, '1513.19.90', 'Other', 'Rs. 150/- per kg', '31/12/2024'),
(981, '1513.21', 'Crude oil', 'Rs. 250/- per Kg', '31/12/2024'),
(982, '1513.29', 'Other', 'Rs. 275/- per Kg', '31/12/2024'),
(983, '1516.20', 'Vegetable fats and oils and their fractions', 'Rs. 160/- per kg', '31/12/2024'),
(984, '1517.10.30', 'Margarine,excluding liquid margarine ,with fat contents 80% or more', 'Rs. 650/- per Kg', '31/12/2024'),
(985, '1517.10.90', 'Other', 'Rs. 650/- per Kg', '31/12/2024'),
(986, '1517.90', 'Other', 'Rs. 200/- per kg', '31/12/2024'),
(987, '1604.11', 'Salmon', 'Rs.200 per kg', '31/12/2024'),
(988, '1604.12', 'Herrings', 'Rs.200 per kg', '31/12/2024'),
(989, '1604.13', 'Sardines, sardinella and brisling or sprats', 'Rs.200 per kg', '31/12/2024'),
(990, '1604.14', 'Tunas, skipjack and bonito (Sarada spp.)', 'Rs.200 per kg', '31/12/2024'),
(991, '1604.15', 'Mackerel', 'Rs.200 per kg', '31/12/2024'),
(992, '1604.16', 'Anchovies', 'Rs.200 per kg', '31/12/2024'),
(993, '1604.17', 'Eals', 'Rs.200 per kg', '31/12/2024'),
(994, '1604.19', 'Other', 'Rs.200 per kg', '31/12/2024'),
(995, '1604.20', 'Other prepared or preserved fish', 'Rs.200 per kg', '31/12/2024'),
(996, '1701.91.10', 'Having polarimeter reading more than or equal to 99.70 ( ICUMSA\nvalue <=60)', 'Rs.50 per kg', '01/11/2024'),
(997, '1701.91.20', 'Having polarimeter reading of more than or equal to 99.50 and less\nthan 99.70 (60 < ICUMSA value <=200)', 'Rs.50 per kg', '01/11/2024'),
(998, '1701.99.10', 'Cane sugar having polarimeter reading of more than or equal to 99.70\n( ICUMSA value <=60)', 'Rs.50 per kg', '01/11/2024'),
(999, '1701.99.20', 'Cane sugar having polarimeter reading of more than or equal to 99.50\nand less than 99.70 (60 < ICUMSA value <=200)', 'Rs.50 per kg', '01/11/2024'),
(1000, '1701.99.30', 'Beet sugar having polarimeter reading of more than or equal to 99.70\n( ICUMSA value <=60)', 'Rs.50 per kg', '01/11/2024'),
(1001, '1701.99.40', 'Beet sugar having polarimeter reading of more than or equal to 99.50\nand less than 99.70 (60 < ICUMSA value <=200)', 'Rs.50 per kg', '01/11/2024'),
(1002, '2501.00', 'Salt ( Including Table salt and denatured salt ) and pure sodium\nchloride , whether or not in aqueous solution or containing added anti\ncaking or free flowing agents ; sea water', 'Rs. 40/- per kg', '31/12/2024'),
(1003, '2710.12.21', 'Petrol having Octana Number of 92', '19A Waiver Rs. 0 per L', ''),
(1004, '2710.12.22', 'Petrol having Octana Number of 95', '19A Waiver Rs. 21 per L', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
