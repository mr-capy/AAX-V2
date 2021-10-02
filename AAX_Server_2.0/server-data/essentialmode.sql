-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 09:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `essentialmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('property_black_money', 'Property Dirty Money', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'police', 1),
('society_realestateagent', 'Real Estate Company', 1),
('society_venom', 'venom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_cardealer', 0, NULL),
(3, 'society_mechanic', 2142911647, NULL),
(4, 'society_police', 0, NULL),
(5, 'society_realestateagent', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'property', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'police', 1),
('society_venom', 'venom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bennycardealer_vehicles`
--

CREATE TABLE `bennycardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bwh_identifiers`
--

CREATE TABLE `bwh_identifiers` (
  `steam` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `xbl` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `live` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `fivem` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bwh_warnings`
--

CREATE TABLE `bwh_warnings` (
  `id` int(11) NOT NULL,
  `receiver` text COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `message` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `communityservice`
--

CREATE TABLE `communityservice` (
  `identifier` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `actions_remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'property', 0),
('society_ambulance', 'Ambulance', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'police', 1),
('society_venom', 'venom', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(102, 'society_ambulance', NULL, '{}'),
(103, 'society_mechanic', NULL, '{}'),
(104, 'society_police', NULL, '{}'),
(105, 'society_venom', NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dpkeybinds`
--


-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Misuse of a horn', 30, 0),
(2, 'Illegally Crossing a continuous Line', 40, 0),
(3, 'Driving on the wrong side of the road', 250, 0),
(4, 'Illegal U-Turn', 250, 0),
(5, 'Illegally Driving Off-road', 170, 0),
(6, 'Refusing a Lawful Command', 30, 0),
(7, 'Illegally Stopping a Vehicle', 150, 0),
(8, 'Illegal Parking', 70, 0),
(9, 'Failing to Yield to the right', 70, 0),
(10, 'Failure to comply with Vehicle Information', 90, 0),
(11, 'Failing to stop at a Stop Sign ', 105, 0),
(12, 'Failing to stop at a Red Light', 130, 0),
(13, 'Illegal Passing', 100, 0),
(14, 'Driving an illegal Vehicle', 100, 0),
(15, 'Driving without a License', 1500, 0),
(16, 'Hit and Run', 800, 0),
(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
(21, 'Impeding traffic flow', 110, 1),
(22, 'Public Intoxication', 90, 1),
(23, 'Disorderly conduct', 90, 1),
(24, 'Obstruction of Justice', 130, 1),
(25, 'Insults towards Civilans', 75, 1),
(26, 'Disrespecting of an LEO', 110, 1),
(27, 'Verbal Threat towards a Civilan', 90, 1),
(28, 'Verbal Threat towards an LEO', 150, 1),
(29, 'Providing False Information', 250, 1),
(30, 'Attempt of Corruption', 1500, 1),
(31, 'Brandishing a weapon in city Limits', 120, 2),
(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(33, 'No Firearms License', 600, 2),
(34, 'Possession of an Illegal Weapon', 700, 2),
(35, 'Possession of Burglary Tools', 300, 2),
(36, 'Grand Theft Auto', 1800, 2),
(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(38, 'Frabrication of an Illegal Substance', 1500, 2),
(39, 'Possession of an Illegal Substance ', 650, 2),
(40, 'Kidnapping of a Civilan', 1500, 2),
(41, 'Kidnapping of an LEO', 2000, 2),
(42, 'Robbery', 650, 2),
(43, 'Armed Robbery of a Store', 650, 2),
(44, 'Armed Robbery of a Bank', 1500, 2),
(45, 'Assault on a Civilian', 2000, 3),
(46, 'Assault of an LEO', 2500, 3),
(47, 'Attempt of Murder of a Civilian', 3000, 3),
(48, 'Attempt of Murder of an LEO', 5000, 3),
(49, 'Murder of a Civilian', 10000, 3),
(50, 'Murder of an LEO', 30000, 3),
(51, 'Involuntary manslaughter', 1800, 3),
(52, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `h_impounded_vehicles`
--

CREATE TABLE `h_impounded_vehicles` (
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `officer` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `mechanic` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `releasedate` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `fee` double NOT NULL,
  `reason` text COLLATE utf8mb4_bin NOT NULL,
  `notes` text COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicle` text COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(30) COLLATE utf8mb4_bin NOT NULL,
  `hold_o` tinyint(1) DEFAULT 0,
  `hold_m` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `insto_accounts`
--

CREATE TABLE `insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `insto_instas`
--

CREATE TABLE `insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insto_likes`
--

CREATE TABLE `insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('acetone', 'Acetone', 30, 0, 1),
('armor', 'Armor', 1, 0, 1),
('bandage', 'Bandage', 20, 0, 1),
('beer', 'Beer', 5, 0, 1),
('blowpipe', 'Blowtorch', 10, 0, 1),
('bread', 'Bread', 20, 0, 1),
('cannabis', 'Cannabis', 30, 0, 1),
('clip', 'Ammo Magazine', 10, 0, 1),
('coke', 'Coca Leaves', 20, 0, 1),
('coke_pooch', 'Bagged Cocaine', 10, 0, 1),
('dairymilk', 'Dairy Milk', 5, 0, 1),
('fish', 'Fish', 100, 0, 1),
('fishbait', 'Fish Bait', 30, 0, 1),
('fishingrod', 'Fishing Rod', 2, 0, 1),
('fixkit', 'Repair Kit', 5, 0, 1),
('fixtool', 'Repair Tools', 10, 0, 1),
('gazbottle', 'Gas Bottle', 10, 0, 1),
('gps', 'Google Map', 5, 0, 1),
('id_card_f', 'Malicious Card', 2, 0, 1),
('jewels', 'jewels', 280, 0, 1),
('leather', 'Leather', 50, 0, 1),
('lithium', 'Lithium Batteries', 20, 0, 1),
('marijuana', 'Marijuana', 15, 0, 1),
('meat', 'Meat', 30, 0, 1),
('medikit', 'Medikit', 25, 0, 1),
('meth', 'Meth', 30, 0, 1),
('methlab', 'Portable Methlab', 2, 0, 1),
('pendrive', 'PenDrive', 2, 0, 1),
('radio', 'Radio', 5, 0, 1),
('rice', 'paddy', 100, 0, 1),
('rice_pro', 'rice', 100, 0, 1),
('safecracker', 'Safe Cracker', 2, 0, 1),
('secure_card', 'Secure ID Card', 2, 0, 1),
('shark', 'Shark', 1, 0, 1),
('sickle', 'Reaping sickle', 1, 0, 1),
('terminaldevice', 'Terminal Device', 1, 0, 1),
('tracker', 'Tracker', 5, 0, 1),
('turtle', 'Sea Turtle', 3, 0, 1),
('turtlebait', 'Turtle Bait', 10, 0, 1),
('water', 'Water', 30, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('cardealer', 'Cardealer', 1),
('mechanic', 'Mechanic', 1),
('offambulance', 'Off-Duty', 1),
('offmechanic', 'Off-Duty', 1),
('offpolice', 'Off-Duty', 1),
('police', 'Police', 1),
('realestateagent', 'Real Estate Agent', 1),
('unemployed', 'Unemployed', 0),
('venom', 'Venom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Farig', 0, '{}', '{}'),
(2, 'cardealer', 0, 'recruit', 'Recruit', 0, '{}', '{}'),
(3, 'cardealer', 1, 'novice', 'Novice', 0, '{}', '{}'),
(4, 'cardealer', 2, 'experienced', 'Experienced', 0, '{}', '{}'),
(5, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(6, 'police', 0, 'recruit', 'Constable', 0, '{}', '{}'),
(7, 'police', 1, 'officer', 'Head-Constable', 0, '{}', '{}'),
(8, 'police', 2, 'sergeant', 'Inspector', 0, '{}', '{}'),
(9, 'police', 3, 'intendent', 'DSP', 0, '{}', '{}'),
(10, 'police', 4, 'lieutenant', 'SSP', 0, '{}', '{}'),
(11, 'police', 5, 'chief', 'DIG', 0, '{}', '{}'),
(12, 'police', 6, 'boss', 'IG', 10, '{}', '{}'),
(13, 'ambulance', 0, 'ambulance', 'Compunder', 8000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":1,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}'),
(14, 'ambulance', 1, 'doctor', 'Doctor', 9000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":1,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}'),
(15, 'ambulance', 2, 'chief_doctor', 'Surgeon', 10000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":1,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}'),
(16, 'ambulance', 3, 'boss', 'Chief Doctor', 1, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":2,\"shoes\":36,\"torso_2\":5,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":1,\"decals_2\":0,\"tshirt_1\":129,\"helmet_1\":-1,\"chain_1\":126,\"chain_2\":0,\"helmet_2\":0,\"arms\":81,\"face\":19,\"decals_1\":57,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}'),
(17, 'mechanic', 0, 'recrue', 'Choto', 5000, '{\"glasses_1\":1,\"glasses_2\":1,\"shoes\":16,\"pants_1\":42,\"pants_2\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"arms\":52,\"torso_1\":146,\"torso_2\":1,\"chain_1\":0,\"chain_2\":0,}', '{}'),
(18, 'mechanic', 1, 'novice', 'New Mechanic', 7000, '{\"glasses_1\":1,\"glasses_2\":1,\"shoes\":16,\"pants_1\":42,\"pants_2\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"arms\":52,\"torso_1\":146,\"torso_2\":1,\"chain_1\":0,\"chain_2\":0,}', '{}'),
(19, 'mechanic', 2, 'experimente', 'Experienced Mechanic', 8000, '{\"glasses_1\":1,\"glasses_2\":1,\"shoes\":16,\"pants_1\":42,\"pants_2\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"arms\":52,\"torso_1\":146,\"torso_2\":1,\"chain_1\":0,\"chain_2\":0,}', '{}'),
(20, 'mechanic', 3, 'chief', 'Mechanic Master', 9000, '{\"glasses_1\":1,\"glasses_2\":1,\"shoes\":16,\"pants_1\":42,\"pants_2\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"arms\":52,\"torso_1\":146,\"torso_2\":1,\"chain_1\":0,\"chain_2\":0,}', '{}'),
(21, 'mechanic', 4, 'boss', 'Ustad', 10000, '{\"glasses_1\":1,\"glasses_2\":1,\"shoes\":16,\"pants_1\":42,\"pants_2\":0,\"tshirt_1\":15,\"tshirt_2\":0,\"arms\":52,\"torso_1\":146,\"torso_2\":1,\"chain_1\":0,\"chain_2\":0,}', '{}'),
(22, 'offpolice', 0, 'recruit', 'Constable', 0, '{}', '{}'),
(23, 'offpolice', 1, 'officer', 'Head-Constable', 0, '{}', '{}'),
(24, 'offpolice', 2, 'sergeant', 'Inspector', 0, '{}', '{}'),
(25, 'offpolice', 3, 'intendent', 'DSP', 0, '{}', '{}'),
(26, 'offpolice', 4, 'lieutenant', 'SSP', 0, '{}', '{}'),
(27, 'offpolice', 5, 'chief', 'DIG', 0, '{}', '{}'),
(28, 'offpolice', 6, 'boss', 'IG', 0, '{}', '{}'),
(29, 'offambulance', 0, 'ambulance', 'Compunder', 0, '{}', '{}'),
(30, 'offambulance', 1, 'doctor', 'Doctor', 0, '{}', '{}'),
(31, 'offambulance', 2, 'chief_doctor', 'Surgeon', 0, '{}', '{}'),
(32, 'offambulance', 3, 'boss', 'Chief Doctor', 0, '{}', '{}'),
(33, 'realestateagent', 0, 'location', 'Renting Agent', 0, '{}', '{}'),
(34, 'realestateagent', 1, 'vendeur', 'Agent', 0, '{}', '{}'),
(35, 'realestateagent', 2, 'gestion', 'Management', 0, '{}', '{}'),
(36, 'realestateagent', 3, 'boss', 'Broker', 0, '{}', '{}'),
(83, 'offmechanic', 0, 'recrue', 'Choto', 0, '{}', '{}'),
(84, 'offmechanic', 1, 'novice', 'New Mechanic', 0, '{}', '{}'),
(85, 'offmechanic', 2, 'experimente', 'Experienced Mechanic', 0, '{}', '{}'),
(86, 'offmechanic', 3, 'chief', 'Mechanic Master', 0, '{}', '{}'),
(87, 'offmechanic', 4, 'boss', 'Ustad', 0, '{}', '{}'),
(88, 'venom', 0, 'recruit', 'New Guy', 0, '{}', '{}'),
(89, 'venom', 1, 'officer', 'Member', 0, '{}', '{}'),
(90, 'venom', 2, 'sergeant', 'Trusted', 0, '{}', '{}'),
(91, 'venom', 3, 'intendent', 'Family', 0, '{}', '{}'),
(92, 'venom', 4, 'lieutenant', 'Left-Hand', 0, '{}', '{}'),
(93, 'venom', 5, 'chief', 'Right-Hand', 0, '{}', '{}'),
(94, 'venom', 6, 'boss', 'Don', 0, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Oral Driving License only'),
('drive', 'Drivers License'),
('drive_bike', 'Motorcycle License'),
('drive_truck', 'Commercial Drivers License'),
('weapon', 'Weapon License'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `garage` varchar(200) COLLATE utf8mb4_bin DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '977-9375', '112', 1, '2021-02-05 20:01:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_ch_reddit`
--

CREATE TABLE `phone_ch_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_reddit`
--

CREATE TABLE `phone_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_shops`
--

CREATE TABLE `phone_shops` (
  `id` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone_shops`
--

INSERT INTO `phone_shops` (`id`, `store`, `item`, `price`, `label`) VALUES
(18, 'https://img.pngio.com/sim-card-png-clipart-sim-cards-png-1483_1162.png', 'sim', 50, 'SIM CARD');

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":183.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":184.304}', '{\"y\":557.032,\"z\":184.301,\"x\":118.037}', '{\"y\":567.798,\"z\":183.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":176.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":145.685}', '{\"x\":373.548,\"y\":422.982,\"z\":145.907},', '{\"y\":420.075,\"z\":146.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":144.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":138.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.962,\"x\":-936.363}', '{\"y\":-365.476,\"z\":114.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":114.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":38.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":113.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":147.702,\"x\":346.964}', '{\"y\":437.456,\"z\":149.394,\"x\":341.683}', '{\"y\":435.626,\"z\":149.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":146.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":141.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":137.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":137.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":137.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":136.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":130.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":143.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":145.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":145.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":143.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":137.769}', 1500000),
(7, 'LowEndApartment', 'High End Appartement', '{\"y\":-1078.735,\"z\":29.4031,\"x\":292.528}', '{\"y\":-1007.36,\"z\":-101.01,\"x\":266.05}', '{\"y\":-1002.802,\"z\":-101.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":29.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.74,\"y\":-999.37,\"z\":-99.01}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":97.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":97.902}', '{\"y\":446.322,\"z\":97.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":97.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":90.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":148.782}', '{\"y\":690.875,\"z\":152.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":152.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":148.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":145.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":142.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":144.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":144.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":142.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":136.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":43.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":98.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":98.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":43.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":97.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":85.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":85.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":211.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":211.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":211.396}', 1500000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":187.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":187.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":187.313}', 1500000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":196.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":196.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":196.08}', 1500000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":37.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":36.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":80.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":80.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":79.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":90.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":90.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":90.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":34.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":34.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":74.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":74.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":73.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":56.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":56.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":56.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":44.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":44.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":243.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":243.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-76.49,\"y\":-826.80,\"z\":243.38}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":35.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":35.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":108.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":108.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1577.68,\"y\":-565.91,\"z\":108.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":33.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":33.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":72.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":72.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 20),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 20),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 20),
(7, 'TwentyFourSeven', 'beer', 100),
(8, 'RobsLiquor', 'beer', 100),
(9, 'LTDgasoline', 'beer', 100),
(10, 'BlackItemShop', 'armor', 15000),
(11, 'BlackItemShop', 'id_card_f', 5000),
(12, 'BlackItemShop', 'secure_card', 5000),
(20, 'TwentyFourSeven', 'clip', 5000),
(21, 'RobsLiquor', 'clip', 5000),
(22, 'LTDgasoline', 'clip', 5000),
(23, 'LTDgasoline', 'sickle', 3000),
(24, 'LTDgasoline', 'fishbait', 2000),
(25, 'LTDgasoline', 'fishingrod', 2000),
(26, 'LTDgasoline', 'turtlebait', 4000),
(28, 'RobsLiquor', 'sickle', 3000),
(29, 'RobsLiquor', 'fishbait', 2000),
(30, 'RobsLiquor', 'turtlebait', 4000),
(32, 'TwentyFourSeven', 'sickle', 3000),
(33, 'TwentyFourSeven', 'fishbait', 2000),
(34, 'RobsLiquor', 'fishingrod', 2000),
(35, 'TwentyFourSeven', 'fishingrod', 2000),
(36, 'TwentyFourSeven', 'turtlebait', 4000),
(38, 'BlackItemShop', 'pendrive', 50000),
(39, 'TwentyFourSeven', 'gps', 500),
(40, 'RobsLiquor', 'gps', 500),
(41, 'LTDgasoline', 'gps', 500),
(42, 'TwentyFourSeven', 'radio', 1000),
(43, 'RobsLiquor', 'radio', 1000),
(44, 'LTDgasoline', 'radio', 1000),
(45, 'TwentyFourSeven', 'tracker', 500),
(46, 'RobsLiquor', 'tracker', 500),
(47, 'LTDgasoline', 'tracker', 500),
(48, 'BlackItemShop', 'safecracker', 1000),
(49, 'BlackItemShop', 'terminaldevice', 30000),
(50, 'TwentyFourSeven', 'dairymilk', 50000),
(51, 'RobsLiquor', 'dairymilk', 50000),
(52, 'LTDgasoline', 'dairymilk', 50000),
(53, 'TwentyFourSeven', 'methlab', 5000),
(54, 'RobsLiquor', 'methlab', 5000),
(55, 'LTDgasoline', 'methlab', 5000),
(56, 'TwentyFourSeven', 'acetone', 500),
(57, 'RobsLiquor', 'acetone', 500),
(58, 'LTDgasoline', 'acetone', 500),
(59, 'RobsLiquor', 'lithium', 300),
(60, 'LTDgasoline', 'lithium', 300),
(61, 'TwentyFourSeven', 'lithium', 300),
(62, 'TwentyFourSeven', 'fixkit', 1000),
(63, 'RobsLiquor', 'fixkit', 1000),
(64, 'LTDgasoline', 'fixkit', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) COLLATE utf8mb4_bin NOT NULL,
  `data` text COLLATE utf8mb4_bin NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Honda 125', '125', 800000, 'custom'),
('Akuma', 'AKUMA', 55000, 'motorcycles'),
('Camery', 'Exemplar', 850000, 'custom'),
('Adder', 'adder', 900000, 'super'),
('Alpha', 'alpha', 200000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 90000, 'sedans'),
('Autarch', 'autarch', 2505000, 'super'),
('Avarus', 'avarus', 35000, 'motorcycles'),
('Bagger', 'bagger', 25000, 'motorcycles'),
('Baller', 'baller2', 500000, 'suvs'),
('Baller Sport', 'baller3', 600000, 'suvs'),
('Banshee', 'banshee', 500000, 'sports'),
('Banshee 900R', 'banshee2', 855000, 'super'),
('Bati 801', 'bati', 65000, 'motorcycles'),
('Bati 801RR', 'bati2', 70000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 450000, 'sports'),
('BF400', 'bf400', 80000, 'motorcycles'),
('Bf Injection', 'bfinjection', 120000, 'offroad'),
('Bifta', 'bifta', 72000, 'offroad'),
('Bison', 'bison', 350000, 'vans'),
('Blade', 'blade', 80000, 'muscle'),
('Blazer', 'blazer', 80000, 'offroad'),
('Blazer Sport', 'blazer4', 110000, 'offroad'),
('Blista', 'blista', 25000, 'compacts'),
('BMW Bike', 'bmws', 1100000, 'custom'),
('BMX (velo)', 'bmx', 5000, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 380000, 'vans'),
('Brawler', 'brawler', 150000, 'offroad'),
('Brioso R/A', 'brioso', 20000, 'compacts'),
('Btype', 'btype', 350000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 450000, 'sportsclassics'),
('Btype Luxe', 'btype3', 500000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 90000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 95000, 'muscle'),
('Buffalo', 'buffalo', 400000, 'sports'),
('Buffalo S', 'buffalo2', 450000, 'sports'),
('Bullet', 'bullet', 590000, 'super'),
('Burrito', 'burrito3', 180000, 'vans'),
('Camper', 'camper', 150000, 'vans'),
('Carbonizzare', 'carbonizzare', 500000, 'sports'),
('Carbon RS', 'carbonrs', 60000, 'motorcycles'),
('Casco', 'casco', 400000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 500000, 'suvs'),
('Cheetah', 'cheetah', 775000, 'super'),
('Chimera', 'chimera', 80000, 'motorcycles'),
('Chino', 'chino', 75000, 'muscle'),
('Chino Luxe', 'chino2', 80000, 'muscle'),
('Cliffhanger', 'cliffhanger', 75000, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 100000, 'coupes'),
('Cognoscenti', 'cognoscenti', 355000, 'sedans'),
('Comet', 'comet2', 475000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 600000, 'suvs'),
('Coquette', 'coquette', 600000, 'sports'),
('Coquette Classic', 'coquette2', 500000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 140000, 'muscle'),
('Cruiser (velo)', 'cruiser', 6000, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 40000, 'motorcycles'),
('Daemon High', 'daemon2', 55000, 'motorcycles'),
('Defiler', 'defiler', 70000, 'motorcycles'),
('Dominator', 'dominator', 170000, 'muscle'),
('Double T', 'double', 80000, 'motorcycles'),
('Dubsta', 'dubsta', 400000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 650000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 400000, 'offroad'),
('Dukes', 'dukes', 100000, 'muscle'),
('Elegy', 'elegy2', 400000, 'sports'),
('Emperor', 'emperor', 85000, 'sedans'),
('Enduro', 'enduro', 70000, 'motorcycles'),
('Entity XF', 'entityxf', 925000, 'super'),
('Esskey', 'esskey', 65000, 'motorcycles'),
('F620', 'f620', 110000, 'coupes'),
('Faction', 'faction', 70000, 'muscle'),
('Faction Rider', 'faction2', 75000, 'muscle'),
('Faction XL', 'faction3', 85000, 'muscle'),
('Faggio', 'faggio', 40000, 'motorcycles'),
('Vespa', 'faggio2', 35000, 'motorcycles'),
('Felon', 'felon', 80000, 'coupes'),
('Felon GT', 'felon2', 100000, 'coupes'),
('Feltzer', 'feltzer2', 500000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 7000, 'motorcycles'),
('FMJ', 'fmj', 1185000, 'super'),
('Fhantom', 'fq2', 800000, 'suvs'),
('Fugitive', 'fugitive', 120000, 'sedans'),
('Furore GT', 'furoregt', 550000, 'sports'),
('Fusilade', 'fusilade', 400000, 'sports'),
('Gargoyle', 'gargoyle', 85000, 'motorcycles'),
('Gauntlet', 'gauntlet', 110000, 'muscle'),
('Gang Burrito', 'gburrito', 180000, 'vans'),
('Burrito', 'gburrito2', 170000, 'vans'),
('Glendale', 'glendale', 70000, 'sedans'),
('Gresley', 'gresley', 550000, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 160000, 'offroad'),
('Hakuchou', 'hakuchou', 90000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 95000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 65000, 'motorcycles'),
('Hotknife', 'hotknife', 170000, 'muscle'),
('Lexus', 'huntley', 1500000, 'custom'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 480000, 'super'),
('Innovation', 'innovation', 70000, 'motorcycles'),
('Intruder', 'intruder', 80000, 'sedans'),
('Issi', 'issi2', 50000, 'compacts'),
('Jackal', 'jackal', 70000, 'coupes'),
('Jawa Bike', 'jawa', 900000, 'custom'),
('Jester', 'jester', 450000, 'sports'),
('Jester(Racecar)', 'jester2', 500000, 'sports'),
('Journey', 'journey', 80000, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 600000, 'sports'),
('Kuruma', 'kuruma', 500000, 'sports'),
('Landstalker', 'landstalker', 400000, 'suvs'),
('RE-7B', 'le7b', 525000, 'super'),
('Lamborghini Aventador', 'lp700r', 2500000, 'custom'),
('Lynx', 'lynx', 600000, 'sports'),
('BMW', 'm6f13', 1200000, 'custom'),
('Mamba', 'mamba', 650000, 'sports'),
('Manana', 'manana', 350000, 'sportsclassics'),
('Manchez', 'manchez', 75000, 'motorcycles'),
('Massacro', 'massacro', 450000, 'sports'),
('Massacro(Racecar)', 'massacro2', 500000, 'sports'),
('Mesa', 'mesa', 450000, 'suvs'),
('Mesa Trail', 'mesa3', 900000, 'suvs'),
('Minivan', 'minivan', 300000, 'vans'),
('Monroe', 'monroe', 500000, 'sportsclassics'),
('The Liberator', 'monster', 500000, 'offroad'),
('Moonbeam', 'moonbeam', 40000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 50000, 'vans'),
('Nemesis', 'nemesis', 6000, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 100000, 'motorcycles'),
('Nightshade', 'nightshade', 140000, 'muscle'),
('9F', 'ninef', 400000, 'sports'),
('9F Cabrio', 'ninef2', 450000, 'sports'),
('Omnis', 'omnis', 450000, 'sports'),
('Oracle XS', 'oracle2', 125000, 'coupes'),
('Osiris', 'osiris', 1060000, 'super'),
('Wagon R', 'paksuzuki', 500000, 'custom'),
('Panto', 'panto', 15000, 'compacts'),
('Paradise', 'paradise', 100000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 600000, 'suvs'),
('PCJ-600', 'pcj', 80000, 'motorcycles'),
('Penumbra', 'penumbra', 450000, 'sports'),
('Pfister', 'pfister811', 785000, 'super'),
('Phoenix', 'phoenix', 170000, 'muscle'),
('Picador', 'picador', 80000, 'muscle'),
('Pigalle', 'pigalle', 300000, 'sportsclassics'),
('Prairie', 'prairie', 60000, 'compacts'),
('Premier', 'premier', 70000, 'sedans'),
('Primo Custom', 'primo2', 160000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 420000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 500000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 450000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 1150000, 'super'),
('Rebel', 'rebel2', 120000, 'offroad'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 500000, 'suvs'),
('Rolls Royce', 'rrphantom', 2000000, 'custom'),
('Ruffian', 'ruffian', 75000, 'motorcycles'),
('Rumpo', 'rumpo', 80000, 'vans'),
('Rumpo Trail', 'rumpo3', 200000, 'vans'),
('Sabre Turbo', 'sabregt', 120000, 'muscle'),
('Sabre GT', 'sabregt2', 150000, 'muscle'),
('Sanchez', 'sanchez', 95000, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 95000, 'motorcycles'),
('Sandking', 'sandking', 200000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 150000, 'sedans'),
('Schafter V12', 'schafter3', 500000, 'sports'),
('Scorcher (velo)', 'scorcher', 8000, 'motorcycles'),
('Seminole', 'seminole', 480000, 'suvs'),
('Sentinel', 'sentinel', 90000, 'coupes'),
('Sentinel XS', 'sentinel2', 110000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 700000, 'sports'),
('ETR1', 'sheava', 720000, 'super'),
('Shotaro Concept', 'shotaro', 160000, 'motorcycles'),
('Slam Van', 'slamvan3', 75000, 'muscle'),
('Sovereign', 'sovereign', 70000, 'motorcycles'),
('Stinger', 'stinger', 500000, 'sportsclassics'),
('Stinger GT', 'stingergt', 550000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Sultan', 'sultan', 400000, 'sports'),
('Sultan RS', 'sultanrs', 850000, 'super'),
('Super Diamond', 'superd', 300000, 'sedans'),
('Surano', 'surano', 400000, 'sports'),
('Surfer', 'surfer', 65000, 'vans'),
('Suzuki Swift', 'suzuswift', 600000, 'custom'),
('T20', 't20', 900000, 'super'),
('Tailgater', 'tailgater', 200000, 'sedans'),
('Tampa', 'tampa', 140000, 'muscle'),
('Drift Tampa', 'tampa2', 500000, 'sports'),
('Thrust', 'thrust', 80000, 'motorcycles'),
('Demon Hawk', 'trhawk', 1800000, 'custom'),
('Tri bike (velo)', 'tribike3', 10000, 'motorcycles'),
('Trophy Truck', 'trophytruck', 180000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 190000, 'offroad'),
('Tropos', 'tropos', 450000, 'sports'),
('Turismo R', 'turismor', 950000, 'super'),
('Tyrus', 'tyrus', 800000, 'super'),
('Vacca', 'vacca', 750000, 'super'),
('Vader', 'vader', 75000, 'motorcycles'),
('Verlierer', 'verlierer2', 500000, 'sports'),
('Vigero', 'vigero', 120000, 'muscle'),
('Virgo', 'virgo', 100000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voodoo', 'voodoo', 100000, 'muscle'),
('Vortex', 'vortex', 85000, 'motorcycles'),
('Land Cruiser', 'vxr', 1400000, 'custom'),
('Warrener', 'warrener', 180000, 'sedans'),
('Washington', 'washington', 170000, 'sedans'),
('Windsor', 'windsor', 150000, 'coupes'),
('Windsor Drop', 'windsor2', 170000, 'coupes'),
('Woflsbane', 'wolfsbane', 65000, 'motorcycles'),
('XLS', 'xls', 800000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 70000, 'vans'),
('Youga Luxuary', 'youga2', 75000, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 75000, 'coupes'),
('Zion Cabrio', 'zion2', 85000, 'coupes'),
('Zombie', 'zombiea', 70000, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 75000, 'motorcycles'),
('Z-Type', 'ztype', 820000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupes'),
('custom', 'Custom Vehicles'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `name`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 2500),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 1500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 500),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 15000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 50000),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 65000),
(41, 'BlackWeashop', 'WEAPON_SMG', 40000),
(42, 'BlackWeashop', 'WEAPON_GUSENBERG', 45000),
(43, 'GunShop', 'WEAPON_DOUBLEACTION', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `yellow_tweets`
--

CREATE TABLE `yellow_tweets` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bennycardealer_vehicles`
--
ALTER TABLE `bennycardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bwh_identifiers`
--
ALTER TABLE `bwh_identifiers`
  ADD PRIMARY KEY (`steam`);

--
-- Indexes for table `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communityservice`
--
ALTER TABLE `communityservice`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h_impounded_vehicles`
--
ALTER TABLE `h_impounded_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `insto_accounts`
--
ALTER TABLE `insto_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_instas_insto_accounts` (`authorId`);

--
-- Indexes for table `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_likes_insto_accounts` (`authorId`),
  ADD KEY `FK_insto_likes_insto_instas` (`inapId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_shops`
--
ALTER TABLE `phone_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexes for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `bennycardealer_vehicles`
--
ALTER TABLE `bennycardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bwh_warnings`
--
ALTER TABLE `bwh_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `insto_accounts`
--
ALTER TABLE `insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `insto_instas`
--
ALTER TABLE `insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `insto_likes`
--
ALTER TABLE `insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `phone_reddit`
--
ALTER TABLE `phone_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_shops`
--
ALTER TABLE `phone_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10702;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1167;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`);

--
-- Constraints for table `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  ADD CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
