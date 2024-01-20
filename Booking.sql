-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 04:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_2`
--

CREATE TABLE `accommodation_2` (
  `accommodation_id` int(11) NOT NULL,
  `accommodation_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `accommodation_type_id` int(11) NOT NULL,
  `accommodation_brand_id` int(11) DEFAULT NULL,
  `destination_id` int(11) NOT NULL,
  `travel_sustainable_id` int(11) DEFAULT NULL,
  `accommodation_address_id` int(11) NOT NULL,
  `accommodation_star_rating_id` int(11) NOT NULL,
  `distance_from_centre_miles` decimal(5,2) NOT NULL,
  `check_in_time_start` time NOT NULL,
  `check_in_time_end` time NOT NULL,
  `check_out_time_start` time NOT NULL,
  `check_out_time_end` time NOT NULL,
  `free_cancellation_cost_per_night` decimal(10,2) DEFAULT NULL,
  `num_days_from_booking_until_free_cancellation_expires` int(11) DEFAULT NULL,
  `min_check_in_age` int(11) DEFAULT NULL,
  `crib_cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_2`
--

INSERT INTO `accommodation_2` (`accommodation_id`, `accommodation_name`, `description`, `accommodation_type_id`, `accommodation_brand_id`, `destination_id`, `travel_sustainable_id`, `accommodation_address_id`, `accommodation_star_rating_id`, `distance_from_centre_miles`, `check_in_time_start`, `check_in_time_end`, `check_out_time_start`, `check_out_time_end`, `free_cancellation_cost_per_night`, `num_days_from_booking_until_free_cancellation_expires`, `min_check_in_age`, `crib_cost`) VALUES
(2, 'Hotel Mountain Paradise', 'Mountain Paradise in Zermatt has a sauna and a steam room. Quiet surroundings and views of the Matterhorn Mountain can be enjoyed at the property which is located in the Winkelmatten suburb.\r\n\r\nAll rooms have a balcony, seating area with cable TV and a private bathroom. Some have unobstructed views of Winkelmatten. Several have views of Mount Matterhorn. All are rustically furnished. Several have a wood-paneled ceiling and solid wood ceiling beams. Wi-Fi is available free of charge.\r\n\r\nbreakfast buffet can be enjoyed in the large dining room which features floor-to-ceiling windows or on the outdoor terrace. Drinks can be enjoyed at the bar.\r\n\r\nThe Winkelmatten Bus Stop is located in front of the property. The Klein Matterhorn Cable Car can be reached on foot in 4 minutes. The Matterhorn Glacier Paradise Cable Car Station is a 5-minute drive away. Zermatt is a car-free resort.', 3, NULL, 4, 1, 2, 3, '0.70', '14:00:00', '19:00:00', '07:30:00', '10:30:00', '5.00', 70, 18, 10),
(3, 'Boutique Hotel Albana Real - Restaurants & Spa', 'The Hotel Boutique Hotel Albana Real - Restaurants & Spa is located in the centre of Zermatt, a 2-minute walk from restaurants and shops and a 10-minute walk from all cable cars and trains. Free WiFi is available on-site. A free ski shuttle is 50 metres away.\r\n\r\nThe rooms and suites all have a balcony, some offer Matterhorn views. The bathroom features full amenities such as a bathrobe and slippers.\r\n\r\nBreakfast is served in the dining room and dinner can be enjoyed in the exotic Thai restaurant Rua Thai or in the authentic Japanese Teppanyaki and Sushi restaurant Fuji of Zermatt.\r\n\r\nThe hotel bar and smoking lounge with fireplace offer the perfect atmosphere to enjoy an aperitif, drink or nightcap.\r\n\r\nThe Spa facilities include an indoor swimming pool, spa bath, steam bath, sauna and fitness room. Massages and treatments can be booked for a surcharge.\r\n\r\nShuttle transfers to and from Zermatt Train Station or the taxi stand are available upon request and at an additional cost.', 3, NULL, 4, NULL, 3, 3, '0.26', '15:00:00', '21:00:00', '07:30:00', '11:00:00', '5.00', 75, 18, NULL),
(5, 'Residencial Suites Valldemossa - Turismo de Interior', '', 4, NULL, 1, NULL, 4, 4, '0.11', '14:00:00', '20:00:00', '07:00:00', '11:00:00', NULL, NULL, NULL, NULL),
(6, 'Le Chalet du Petit Ours', 'Just 1.6 km from Chamonix Ski School and 1.5 km from Brévent-Flégère (Chamonix), Le Chalet du Petit Ours features accommodation in Chamonix-Mont-Blanc, with a terrace. The accommodation is 1.5 km from the Aiguille du Midi cable car station.\r\n\r\nThe chalet features a flat-screen TV. A fridge and an oven can be found in the kitchenette.\r\n\r\nStep Into the Void is 4.1 km from the chalet, while Chamonix Casino is 1.6 km from the property. The nearest international airport is Geneva Airport, 99 km from Le Chalet du Petit Ours', 11, NULL, 3, NULL, 5, 2, '1.00', '16:00:00', '00:00:00', '00:00:00', '10:00:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_address`
--

CREATE TABLE `accommodation_address` (
  `accommodation_address_id` int(11) NOT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `building_number` int(11) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `post_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_address`
--

INSERT INTO `accommodation_address` (`accommodation_address_id`, `building_name`, `building_number`, `address_line_1`, `city`, `country`, `post_code`) VALUES
(2, NULL, 130, 'Schluhmattstrasse', 'Zermatt', 'Swtizerland', '3920'),
(3, NULL, 19, 'Schluhmattstrasse', 'Zermatt', 'Swtizerland', '3920'),
(4, NULL, 11, 'Catalina Homar', 'Valldemossa', 'Spain', '07170'),
(5, NULL, 194, 'Parc de la Yagire', 'Chamonix-Mont-Blanc', 'France', '74400');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_brand`
--

CREATE TABLE `accommodation_brand` (
  `accommodation_brand_id` int(11) NOT NULL,
  `accommodation_brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_brand`
--

INSERT INTO `accommodation_brand` (`accommodation_brand_id`, `accommodation_brand`) VALUES
(1, 'example_brand');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_email`
--

CREATE TABLE `accommodation_email` (
  `accommodation_email_id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `accommodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facilities`
--

CREATE TABLE `accommodation_facilities` (
  `accommodation_facilities_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `accommodation_facility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facility`
--

CREATE TABLE `accommodation_facility` (
  `accommodation_facility_id` int(11) NOT NULL,
  `accommodation_facility` varchar(50) NOT NULL,
  `accommodation_facility_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_facility`
--

INSERT INTO `accommodation_facility` (`accommodation_facility_id`, `accommodation_facility`, `accommodation_facility_type`) VALUES
(1, 'private bathroom', 'bathroom'),
(2, 'hairdryer', 'bathroom'),
(3, 'bathroom', 'free toiletries'),
(4, 'wardrobe or closet', 'bedroom'),
(5, 'linens', 'bedroom'),
(6, 'minibar', 'food & drink'),
(7, 'restaurant', 'food & drink'),
(8, 'elevator', 'general'),
(9, 'heating', 'general'),
(10, 'car rental', 'general'),
(11, 'iron', 'general'),
(12, 'concierge', 'front desk services'),
(13, '24-hour front desk', 'front desk services'),
(14, 'baggage storage', 'front desk services'),
(15, 'beachfront', 'outdoors'),
(16, 'sun deck', 'outdoors'),
(17, 'daily housekeeping', 'cleaning services'),
(18, 'dry cleaning', 'cleaning services'),
(19, 'flat-screen tv', 'media & technology'),
(20, 'private bathroom', 'bathroom'),
(21, 'hairdryer', 'bathroom'),
(22, 'bathroom', 'free toiletries'),
(23, 'wardrobe or closet', 'bedroom'),
(24, 'linens', 'bedroom'),
(25, 'minibar', 'food & drink'),
(26, 'restaurant', 'food & drink'),
(27, 'elevator', 'general'),
(28, 'heating', 'general'),
(29, 'car rental', 'general'),
(30, 'iron', 'general'),
(31, 'concierge', 'front desk services'),
(32, '24-hour front desk', 'front desk services'),
(33, 'baggage storage', 'front desk services'),
(34, 'beachfront', 'outdoors'),
(35, 'sun deck', 'outdoors'),
(36, 'daily housekeeping', 'cleaning services'),
(37, 'dry cleaning', 'cleaning services'),
(38, 'flat-screen tv', 'media & technology'),
(39, 'private bathroom', 'bathroom'),
(40, 'hairdryer', 'bathroom'),
(41, 'bathroom', 'free toiletries'),
(42, 'wardrobe or closet', 'bedroom'),
(43, 'linens', 'bedroom'),
(44, 'minibar', 'food & drink'),
(45, 'restaurant', 'food & drink'),
(46, 'elevator', 'general'),
(47, 'heating', 'general'),
(48, 'car rental', 'general'),
(49, 'iron', 'general'),
(50, 'concierge', 'front desk services'),
(51, '24-hour front desk', 'front desk services'),
(52, 'baggage storage', 'front desk services'),
(53, 'beachfront', 'outdoors'),
(54, 'sun deck', 'outdoors'),
(55, 'daily housekeeping', 'cleaning services'),
(56, 'dry cleaning', 'cleaning services'),
(57, 'flat-screen tv', 'media & technology');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_meal_options`
--

CREATE TABLE `accommodation_meal_options` (
  `accommodation_meal_options_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `meal_option_id` int(11) NOT NULL,
  `meal_option_cost_per_night` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_meal_options`
--

INSERT INTO `accommodation_meal_options` (`accommodation_meal_options_id`, `accommodation_id`, `meal_option_id`, `meal_option_cost_per_night`) VALUES
(1, 2, 5, '0.00'),
(2, 2, 2, '15.00'),
(3, 2, 3, '35.00'),
(4, 2, 4, '25.00'),
(5, 2, 1, '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_payment_methods`
--

CREATE TABLE `accommodation_payment_methods` (
  `accommodation_payment_methods_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_star_rating`
--

CREATE TABLE `accommodation_star_rating` (
  `accommodation_star_rating_id` int(11) NOT NULL,
  `accommodation_star_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_star_rating`
--

INSERT INTO `accommodation_star_rating` (`accommodation_star_rating_id`, `accommodation_star_rating`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_type`
--

CREATE TABLE `accommodation_type` (
  `accommodation_type_id` int(11) NOT NULL,
  `accommodation_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation_type`
--

INSERT INTO `accommodation_type` (`accommodation_type_id`, `accommodation_type`) VALUES
(1, 'entire home/apartment'),
(2, 'villa'),
(3, 'hotel'),
(4, 'apartment'),
(5, 'vacation home'),
(6, 'hostel'),
(7, 'resort'),
(8, 'bed and breakfast'),
(9, 'boat'),
(10, 'farm stay'),
(11, 'chalet');

-- --------------------------------------------------------

--
-- Table structure for table `account_user`
--

CREATE TABLE `account_user` (
  `account_user_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `account_user_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_user`
--

INSERT INTO `account_user` (`account_user_id`, `password`, `first_name`, `last_name`, `email`, `phone_number`, `date_of_birth`, `nationality`, `gender`, `account_user_address_id`) VALUES
(1, 'd3055554c39a95bcf18831f5707999d103df40788c97c', 'Chloe', 'Edgar', 'chloeedgar@hotmail.co.uk', '07851412165', '1996-11-30', 'British', 'Female', 1),
(2, 'd30860667c39a95bcf18831f5707999d103df40788c97c', NULL, NULL, 'chloe@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(3, '81012d908179b3fe4db03d7b3d64670c129ee9d8a6eaf4', NULL, NULL, 'chloe1234@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(4, 'f0128378e3f4e48104205b1677b14ab36d52eacf5fb9c1', NULL, NULL, 'britney@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(5, 'f119c6a0088d0a0e54273bf5305ec0cb35c78bb5a9b995', NULL, NULL, 'harry@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(6, '03564fa2dd7c30c08bdaed90243855308613729af62c9b', NULL, NULL, 'jonathan@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(7, 'aada00893eeae21ba135f70374cee0e17d31c391f693b7', NULL, NULL, 'patricia@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(8, '44f4b37ade38bc602542e6cc1cb28fcd3a7b2457baa19f', NULL, NULL, 'britney123@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(9, '9e340fbb342b0ba43dea6d8b52527ce2348cf4aeed654a', NULL, NULL, 'sam@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(10, '2dd48d8055184c571b7b6372c7817238c2831139873f40', NULL, NULL, 'britney@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(11, '824a2b328d49861c7c3e8f9c22cf7c1225be2de3d7de27', NULL, NULL, 'chloeedgar@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(12, '0138522f1c2d1f700069d1ebb51e785d7fdecc464383ac', NULL, NULL, 'chloeedgar123@qub.ac.uk', NULL, NULL, NULL, NULL, NULL),
(13, '1fdfa59398632a86cd3795e0740802691f6a84ddded65b', NULL, NULL, 'chloeedgar123@qub.ac.uk', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bed_type`
--

CREATE TABLE `bed_type` (
  `bed_type_id` int(11) NOT NULL,
  `bed_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `account_user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `booking_date_created` date NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `is_travelling_for_work` tinyint(1) NOT NULL,
  `cot_required` tinyint(1) NOT NULL,
  `special_requests` varchar(255) DEFAULT NULL,
  `est_arrival_time` time NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `is_main_guest` tinyint(1) NOT NULL,
  `meal_option_id` int(11) NOT NULL,
  `promo_code_id` int(11) DEFAULT NULL,
  `total_cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `booking_room_types`
--

CREATE TABLE `booking_room_types` (
  `booking_rooms_types_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `number_of_rooms` int(11) NOT NULL,
  `number_of_guests` int(11) NOT NULL,
  `cost_of_room_for_booking` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` char(3) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `exchange_rate` decimal(10,4) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_code`, `currency_name`, `exchange_rate`, `symbol`) VALUES
(1, 'EUR', 'euro', '0.8700', '€');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `destination_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `city`, `country`, `currency_id`, `destination_type_id`) VALUES
(1, 'Valldemossa', 'Mallorca', 1, 3),
(2, 'Barcelona', 'Spain', 1, 2),
(3, 'Chamonix-Mont-Blanc', 'France', 1, 5),
(4, 'Zermatt', 'Switzerland', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `destination_type`
--

CREATE TABLE `destination_type` (
  `destination_type_id` int(11) NOT NULL,
  `destination_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destination_type`
--

INSERT INTO `destination_type` (`destination_type_id`, `destination_type`) VALUES
(1, 'romance'),
(2, 'city'),
(3, 'beach'),
(4, 'outdoors'),
(5, 'ski'),
(6, 'relax');

-- --------------------------------------------------------

--
-- Table structure for table `meal_option`
--

CREATE TABLE `meal_option` (
  `meal_option_id` int(11) NOT NULL,
  `meal_option` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meal_option`
--

INSERT INTO `meal_option` (`meal_option_id`, `meal_option`) VALUES
(1, 'all inclusive'),
(2, 'breakfast included'),
(3, 'all meals included'),
(4, 'breakfast & dinner included'),
(5, 'no meals included');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `payment_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`, `payment_date`, `payment_method_id`) VALUES
(1, '2049.00', '2023-11-06 16:06:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `payment_method`) VALUES
(1, 'mastercard'),
(2, 'visa'),
(3, 'american express'),
(4, 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `promo_code_id` int(11) NOT NULL,
  `promo_code` varchar(50) NOT NULL,
  `percentage_discount` decimal(5,2) NOT NULL,
  `is_eligible` tinyint(1) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`promo_code_id`, `promo_code`, `percentage_discount`, `is_eligible`, `expiry_date`) VALUES
(1, 'SKI2024', '5.00', 1, '2023-12-31'),
(2, 'SUMMER2024', '10.00', 1, '2023-11-30'),
(3, 'WELCOME15', '15.00', 1, '2025-01-31'),
(4, 'BFRIDAY2022', '0.00', 0, '2022-11-26'),
(5, 'BFRIDAY2022', '20.00', 0, '2022-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `rating_per_category`
--

CREATE TABLE `rating_per_category` (
  `rating_per_category_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `review_category_id` int(11) NOT NULL,
  `rating_for_category` decimal(4,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating_per_category`
--

INSERT INTO `rating_per_category` (`rating_per_category_id`, `review_id`, `review_category_id`, `rating_for_category`) VALUES
(39, 11, 1, '9.5'),
(40, 11, 2, '10.0'),
(41, 11, 3, '8.0'),
(42, 11, 3, '8.0'),
(43, 11, 3, '8.0'),
(44, 11, 3, '7.0'),
(45, 11, 3, '6.0'),
(46, 12, 1, '9.5'),
(47, 12, 2, '10.0'),
(48, 12, 3, '8.0'),
(49, 12, 3, '7.5'),
(50, 12, 3, '8.0'),
(51, 12, 3, '9.0'),
(52, 12, 3, '6.5'),
(53, 13, 1, '9.0'),
(54, 13, 2, '8.0'),
(55, 13, 3, '8.0'),
(56, 13, 3, '7.0'),
(57, 13, 3, '7.0'),
(58, 13, 3, '6.5'),
(59, 13, 3, '8.0'),
(60, 14, 1, '9.0'),
(61, 14, 2, '7.5'),
(62, 14, 3, '8.0'),
(63, 14, 3, '7.0'),
(64, 14, 3, '9.0'),
(65, 14, 3, '9.0'),
(66, 14, 3, '8.0'),
(67, 15, 1, '9.0'),
(68, 15, 2, '9.0'),
(69, 15, 3, '9.0'),
(70, 15, 3, '9.0'),
(71, 15, 3, '9.0'),
(72, 15, 3, '9.0'),
(73, 15, 3, '9.0'),
(74, 16, 1, '10.0'),
(75, 16, 2, '7.0'),
(76, 16, 3, '10.0'),
(77, 16, 3, '8.0'),
(78, 16, 3, '8.0'),
(79, 16, 3, '10.0'),
(80, 16, 3, '10.0'),
(81, 17, 1, '7.0'),
(82, 17, 2, '7.0'),
(83, 17, 3, '8.0'),
(84, 17, 3, '8.5'),
(85, 17, 3, '6.5'),
(86, 17, 3, '9.5'),
(87, 17, 3, '10.0'),
(88, 18, 1, '9.5'),
(89, 18, 2, '10.0'),
(90, 18, 3, '8.0'),
(91, 18, 3, '7.5'),
(92, 18, 3, '8.0'),
(93, 18, 3, '9.0'),
(94, 18, 3, '6.5'),
(95, 19, 1, '9.5'),
(96, 19, 2, '10.0'),
(97, 19, 3, '8.0'),
(98, 19, 3, '7.5'),
(99, 19, 3, '8.0'),
(100, 19, 3, '9.0'),
(101, 19, 3, '6.5');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_title` varchar(50) NOT NULL,
  `account_user_id` int(11) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `review_pros` text DEFAULT NULL,
  `review_cons` text DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `overall_review_rating` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_title`, `account_user_id`, `accommodation_id`, `review_pros`, `review_cons`, `date_created`, `overall_review_rating`) VALUES
(11, 'Amazing view! highly recommend', 4, 6, 'The chalet was lovely! Great little place to stay, I couldn’t recommend it more. Slightly further out from the centre of Chamonix, it’s very peaceful and quiet, with amazing views during the day, and gorgeous starry skies at night. Amazing value for money, especially in an expensive place like Chamonix.', 'It’s not a long walk from the bus stations, but it’s definitely not the easiest if you’re carrying luggage. It wasn’t a problem for us, having only backpacks and a small suitcase, but this is just something to bear in mind if you’re bringing big bags!', '2023-11-12', '8.1'),
(12, 'Amazing view! highly recommend', 1, 2, 'everything was great ! amazing view, comfortable bed and pillows, everything is clean, great location. The guys at the reception are very kind, I have not seen this even in 5 star hotels. Thanks a lot! If you come to Zermatt then only in this hotel!', 'Location is a bit far from city centre. short 20 min walk!', '2023-11-12', '8.4'),
(13, 'We had a lovely time!', 4, 2, 'Room very comfortable, lovely view, friendly staff. Highly reccomend!', 'Bit far from the city but not too long a walk.', '2023-11-12', '7.6'),
(14, 'Come here to see the Matterhorn right from your ro', 5, 2, 'Superb view of the Matterhorn right outside the balcony and during breakfast. Nice and helpful staff to show us our room and guide us around Zermatt. Even lent us an umbrella when it is snowing.', 'Not as easy to get to the hotel considering the frequency of the bus, but definitely worth the unblocked view. May opt to take a taxi for a small sum.', '2023-11-12', '8.2'),
(15, 'Come here to see the Matterhorn right from your ro', 6, 6, 'Small chalet very cozy with everything you needed, very well equipped and very pretty Welcome of the host, bcq of advice and available and precise', 'Nothing', '2023-11-12', '9.0'),
(16, 'Excellent', 6, 6, 'Small chalet very cozy with everything you needed, very well equipped and very pretty Welcome of the host, bcq of advice and available and precise', 'Nothing', '2023-11-12', '9.0'),
(17, 'Great', 6, 6, 'Small chalet very cozy with everything you needed, very well equipped and very pretty Welcome of the host, bcq of advice and available and precise', 'Nothing', '2023-11-12', '8.1'),
(18, 'Amazing view!', 1, 2, 'everything was great! amazing view, comfortable bed and pillows, everything is clean, great location. The guys at the reception are very kind, I have not seen this even in 5-star hotels. Thanks a lot! If you come to Zermatt, then only in this hotel!', 'Location is a bit far from city centre. short 20 min walk!', '2023-11-12', '8.4'),
(19, 'Amazing view! highly recommend', 1, 2, 'everything was great! amazing view, comfortable bed and pillows, everything is clean, great location. The guys at the reception are very kind, I have not seen this even in 5-star hotels. Thanks a lot! If you come to Zermatt, then only in this hotel!', 'Location is a bit far from city centre. short 20 min walk!', '2023-11-13', '8.4');

-- --------------------------------------------------------

--
-- Table structure for table `review_category`
--

CREATE TABLE `review_category` (
  `review_category_id` int(11) NOT NULL,
  `review_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review_category`
--

INSERT INTO `review_category` (`review_category_id`, `review_category`) VALUES
(1, 'staff'),
(2, 'facilities'),
(3, 'comfort'),
(4, 'free wi-fi'),
(5, 'value for money'),
(6, 'cleanliness'),
(7, 'location');

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `room_facilities_id` int(11) NOT NULL,
  `room_facility_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_facility`
--

CREATE TABLE `room_facility` (
  `room_facility_id` int(11) NOT NULL,
  `room_facility` varchar(50) NOT NULL,
  `room_facility_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_facility`
--

INSERT INTO `room_facility` (`room_facility_id`, `room_facility`, `room_facility_type_id`) VALUES
(1, 'toilet', 1),
(2, 'bath or shower', 1),
(3, 'hairdryer', 1),
(4, 'toilet paper', 1),
(5, 'balcony', 1),
(6, 'view', 1),
(7, 'desk', 3),
(8, 'tv', 3),
(9, 'linen', 3),
(10, 'safety deposit box', 3),
(11, 'carpeted', 3),
(12, 'flat-screen tv', 3),
(13, 'alarm clock', 3),
(14, 'cable channels', 3),
(15, 'heating', 3),
(16, 'seating area', 3),
(17, 'soundproofing', 3),
(18, 'satelite channels', 3),
(19, 'socket near bed', 3),
(20, 'towels', 3),
(21, 'free toiletries', 1),
(22, 'mountain view', 1),
(23, 'coffee machine', 3),
(24, 'tea/coffee maker', 3),
(25, 'streaming service (like netflix)', 3),
(26, 'mini bar', 3),
(27, 'electric kettle', 3),
(28, 'radio', 3),
(29, 'refrigerator', 1),
(30, 'tea/Coffee maker', 1),
(31, 'kitchenware', 1),
(32, 'dishwasher', 1),
(33, 'stovetop', 1),
(34, 'dining area', 1),
(35, 'coffee machine', 1),
(36, 'microwave', 1),
(37, 'electric kettle', 1),
(38, 'oven', 1),
(39, 'toaster', 1),
(40, 'dining table', 1),
(41, 'city view', 1),
(42, 'landmark view', 1),
(43, 'refrigerator', 4),
(44, 'microwave', 4),
(45, 'electric kettle', 4),
(46, 'oven', 4),
(47, 'toaster', 4),
(48, 'terrace', 2),
(49, 'kitchenette', 5),
(50, 'dishwasher', 5),
(51, 'barbeque', 5),
(52, 'dining area', 5),
(53, 'barbeque', 5);

-- --------------------------------------------------------

--
-- Table structure for table `room_facility_type`
--

CREATE TABLE `room_facility_type` (
  `room_facility_type_id` int(11) NOT NULL,
  `room_facility_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_facility_type`
--

INSERT INTO `room_facility_type` (`room_facility_type_id`, `room_facility_type`) VALUES
(1, 'private bathroom'),
(2, 'view'),
(3, 'room'),
(4, 'private kitchen'),
(5, 'chalet');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `num_bedrooms` int(11) NOT NULL,
  `room_size` decimal(10,2) NOT NULL,
  `num_private_bathroom` int(11) NOT NULL,
  `max_guests` int(11) NOT NULL,
  `date_forsale_from` date DEFAULT NULL,
  `date_forsale_to` date DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `accommodation_id`, `num_bedrooms`, `room_size`, `num_private_bathroom`, `max_guests`, `date_forsale_from`, `date_forsale_to`, `quantity`) VALUES
(2, 'Double Room with Balcony', 2, 1, '248.00', 1, 2, '2023-11-25', '2024-04-07', 5),
(3, 'Double Room with Matternhorn View', 2, 1, '280.00', 1, 3, '2023-11-25', '2024-04-07', 3),
(4, 'Comfort Double Room', 3, 1, '215.00', 1, 3, '2023-11-10', '2024-04-17', 2),
(5, 'Executive Double Room with Spa Bath', 3, 1, '237.00', 1, 3, '2023-11-10', '2024-04-17', 4),
(6, 'Deluxe Room', 3, 1, '269.00', 1, 3, '2023-11-10', '2024-04-17', 4),
(7, 'Suite with Spa Bath', 5, 1, '753.00', 1, 3, '2024-03-16', '2023-11-30', 5),
(8, 'Executive Two-Bedroom Suite', 5, 2, '915.00', 1, 4, '2024-03-16', '2023-11-30', 5),
(9, 'Chalet', 6, 1, '172.00', 1, 2, '2023-12-17', '2024-04-14', 10);

-- --------------------------------------------------------

--
-- Table structure for table `room_type_bed_types`
--

CREATE TABLE `room_type_bed_types` (
  `room_type_bed_types_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_type_price_per_night`
--

CREATE TABLE `room_type_price_per_night` (
  `price_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `weekday_price_per_night` decimal(10,2) NOT NULL,
  `weekend_price_per_night` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type_price_per_night`
--

INSERT INTO `room_type_price_per_night` (`price_id`, `season_id`, `room_type_id`, `weekday_price_per_night`, `weekend_price_per_night`) VALUES
(1, 3, 2, '264.00', '305.00'),
(2, 2, 2, '260.00', '250.00'),
(3, 2, 9, '380.00', '390.00'),
(4, 3, 9, '420.00', '435.00'),
(5, 4, 9, '390.00', '400.00'),
(10, 3, 4, '250.00', '260.00'),
(11, 2, 4, '230.00', '220.00'),
(12, 2, 5, '300.00', '310.00'),
(13, 3, 5, '340.00', '350.00');

-- --------------------------------------------------------

--
-- Table structure for table `room_type_rule`
--

CREATE TABLE `room_type_rule` (
  `room_type_rule_id` int(11) NOT NULL,
  `room_type_rule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room_type_rules`
--

CREATE TABLE `room_type_rules` (
  `room_type_rules_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_type_rule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `season_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`season_id`, `season_name`, `start_date`, `end_date`) VALUES
(1, 'summer', '2023-06-21', '2023-09-22'),
(2, 'autumn', '2023-09-23', '2023-12-20'),
(3, 'winter', '2023-12-21', '2024-03-20'),
(4, 'spring', '2023-03-21', '2023-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `travel_sustainable`
--

CREATE TABLE `travel_sustainable` (
  `travel_sustainable_id` int(11) NOT NULL,
  `travel_sustainable_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travel_sustainable`
--

INSERT INTO `travel_sustainable` (`travel_sustainable_id`, `travel_sustainable_level`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `building_number` int(11) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `building_name`, `building_number`, `address_line_1`, `city`, `country`, `postcode`) VALUES
(1, NULL, 75, 'Ballyduff Road', 'Newtownabbey', 'Northern Ireland', 'BT36 6UT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodation_2`
--
ALTER TABLE `accommodation_2`
  ADD PRIMARY KEY (`accommodation_id`),
  ADD KEY `FK_accommodation_address_accommodation_address_id_3` (`accommodation_address_id`),
  ADD KEY `FK_accommodation_star_rating_accommodation_star_rating_3` (`accommodation_star_rating_id`),
  ADD KEY `FK_accommodation_type_accommodation_type_id_3` (`accommodation_type_id`),
  ADD KEY `FK_destination_destination_id_3` (`destination_id`),
  ADD KEY `FK_travel_sustainable_travel_sustainable_id_3` (`travel_sustainable_id`),
  ADD KEY `FK_accommodation_brand_accommodation_brand_id` (`accommodation_brand_id`);

--
-- Indexes for table `accommodation_address`
--
ALTER TABLE `accommodation_address`
  ADD PRIMARY KEY (`accommodation_address_id`);

--
-- Indexes for table `accommodation_brand`
--
ALTER TABLE `accommodation_brand`
  ADD PRIMARY KEY (`accommodation_brand_id`);

--
-- Indexes for table `accommodation_email`
--
ALTER TABLE `accommodation_email`
  ADD PRIMARY KEY (`accommodation_email_id`),
  ADD KEY `FK_accommodation_accommodation_id_two` (`accommodation_id`);

--
-- Indexes for table `accommodation_facilities`
--
ALTER TABLE `accommodation_facilities`
  ADD PRIMARY KEY (`accommodation_facilities_id`),
  ADD KEY `FK_accommodation_facility_accommodation_facility_id_seven` (`accommodation_facility_id`),
  ADD KEY `FK_accommodation_accommodation_id_13` (`accommodation_id`);

--
-- Indexes for table `accommodation_facility`
--
ALTER TABLE `accommodation_facility`
  ADD PRIMARY KEY (`accommodation_facility_id`);

--
-- Indexes for table `accommodation_meal_options`
--
ALTER TABLE `accommodation_meal_options`
  ADD PRIMARY KEY (`accommodation_meal_options_id`),
  ADD KEY `FK_meal_option_meal_option_id` (`meal_option_id`),
  ADD KEY `FK_accommodation_accommodation_id_12` (`accommodation_id`);

--
-- Indexes for table `accommodation_payment_methods`
--
ALTER TABLE `accommodation_payment_methods`
  ADD PRIMARY KEY (`accommodation_payment_methods_id`),
  ADD KEY `FK_accommodation_accommodation_id_8` (`accommodation_id`),
  ADD KEY `FK_payment_method_payment_method_id_3` (`payment_method_id`);

--
-- Indexes for table `accommodation_star_rating`
--
ALTER TABLE `accommodation_star_rating`
  ADD PRIMARY KEY (`accommodation_star_rating_id`);

--
-- Indexes for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  ADD PRIMARY KEY (`accommodation_type_id`);

--
-- Indexes for table `account_user`
--
ALTER TABLE `account_user`
  ADD PRIMARY KEY (`account_user_id`),
  ADD KEY `FK_user_address_account_user_address_id` (`account_user_address_id`);

--
-- Indexes for table `bed_type`
--
ALTER TABLE `bed_type`
  ADD PRIMARY KEY (`bed_type_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FK_account_user_account_user_id_2` (`account_user_id`),
  ADD KEY `FK_payment_payment_id_3` (`payment_id`),
  ADD KEY `FK_promo_code_promo_code_id_2` (`promo_code_id`),
  ADD KEY `FK_meal_option_3` (`meal_option_id`),
  ADD KEY `FK_accommodation_accommodation_id_4` (`accommodation_id`);

--
-- Indexes for table `booking_room_types`
--
ALTER TABLE `booking_room_types`
  ADD PRIMARY KEY (`booking_rooms_types_id`),
  ADD KEY `FK_booking_booking_id` (`booking_id`),
  ADD KEY `FK_room_type_room_type_id_three` (`room_type_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`),
  ADD KEY `FK_destination_type_destination_type_id` (`destination_type_id`),
  ADD KEY `FK_currency_currency_id` (`currency_id`);

--
-- Indexes for table `destination_type`
--
ALTER TABLE `destination_type`
  ADD PRIMARY KEY (`destination_type_id`);

--
-- Indexes for table `meal_option`
--
ALTER TABLE `meal_option`
  ADD PRIMARY KEY (`meal_option_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_method_payment_method_id_2` (`payment_method_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`promo_code_id`);

--
-- Indexes for table `rating_per_category`
--
ALTER TABLE `rating_per_category`
  ADD PRIMARY KEY (`rating_per_category_id`),
  ADD KEY `FK_review_review_id` (`review_id`),
  ADD KEY `FK_review_category_review_category_id` (`review_category_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `FK_room_type_room_type_id_2` (`room_type_id`),
  ADD KEY `FK_booking_booking_id_2` (`booking_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_account_user_account_user_id` (`account_user_id`),
  ADD KEY `FK_accommodation_accommodation_id_14` (`accommodation_id`);

--
-- Indexes for table `review_category`
--
ALTER TABLE `review_category`
  ADD PRIMARY KEY (`review_category_id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`room_facilities_id`),
  ADD KEY `FK_room_facility_room_facility_id` (`room_facility_id`),
  ADD KEY `FK_room_type_room_type_id` (`room_type_id`);

--
-- Indexes for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD PRIMARY KEY (`room_facility_id`),
  ADD KEY `FK_room_facility_type_room_facility_type_id` (`room_facility_type_id`);

--
-- Indexes for table `room_facility_type`
--
ALTER TABLE `room_facility_type`
  ADD PRIMARY KEY (`room_facility_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD KEY `FK_accommodation_accommodation_id_17` (`accommodation_id`);

--
-- Indexes for table `room_type_bed_types`
--
ALTER TABLE `room_type_bed_types`
  ADD PRIMARY KEY (`room_type_bed_types_id`),
  ADD KEY `FK_room_type_room_type_id_6` (`room_type_id`),
  ADD KEY `FK_bed_type_bed_type_id_1` (`bed_id`);

--
-- Indexes for table `room_type_price_per_night`
--
ALTER TABLE `room_type_price_per_night`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `FK_season_season_id` (`season_id`),
  ADD KEY `FK_room_type_room_type_id_four` (`room_type_id`);

--
-- Indexes for table `room_type_rule`
--
ALTER TABLE `room_type_rule`
  ADD PRIMARY KEY (`room_type_rule_id`);

--
-- Indexes for table `room_type_rules`
--
ALTER TABLE `room_type_rules`
  ADD PRIMARY KEY (`room_type_rules_id`),
  ADD KEY `FK_room_type_room_type_id_3` (`room_type_id`),
  ADD KEY `FK_room_type_rule_room_type_rule_id` (`room_type_rule_id`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);

--
-- Indexes for table `travel_sustainable`
--
ALTER TABLE `travel_sustainable`
  ADD PRIMARY KEY (`travel_sustainable_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodation_2`
--
ALTER TABLE `accommodation_2`
  MODIFY `accommodation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accommodation_address`
--
ALTER TABLE `accommodation_address`
  MODIFY `accommodation_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accommodation_brand`
--
ALTER TABLE `accommodation_brand`
  MODIFY `accommodation_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accommodation_email`
--
ALTER TABLE `accommodation_email`
  MODIFY `accommodation_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accommodation_facilities`
--
ALTER TABLE `accommodation_facilities`
  MODIFY `accommodation_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `accommodation_facility`
--
ALTER TABLE `accommodation_facility`
  MODIFY `accommodation_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `accommodation_meal_options`
--
ALTER TABLE `accommodation_meal_options`
  MODIFY `accommodation_meal_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accommodation_payment_methods`
--
ALTER TABLE `accommodation_payment_methods`
  MODIFY `accommodation_payment_methods_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accommodation_star_rating`
--
ALTER TABLE `accommodation_star_rating`
  MODIFY `accommodation_star_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accommodation_type`
--
ALTER TABLE `accommodation_type`
  MODIFY `accommodation_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `account_user`
--
ALTER TABLE `account_user`
  MODIFY `account_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bed_type`
--
ALTER TABLE `bed_type`
  MODIFY `bed_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_room_types`
--
ALTER TABLE `booking_room_types`
  MODIFY `booking_rooms_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `destination_type`
--
ALTER TABLE `destination_type`
  MODIFY `destination_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meal_option`
--
ALTER TABLE `meal_option`
  MODIFY `meal_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `promo_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating_per_category`
--
ALTER TABLE `rating_per_category`
  MODIFY `rating_per_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `review_category`
--
ALTER TABLE `review_category`
  MODIFY `review_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `room_facilities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `room_facility`
--
ALTER TABLE `room_facility`
  MODIFY `room_facility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `room_facility_type`
--
ALTER TABLE `room_facility_type`
  MODIFY `room_facility_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_type_bed_types`
--
ALTER TABLE `room_type_bed_types`
  MODIFY `room_type_bed_types_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type_price_per_night`
--
ALTER TABLE `room_type_price_per_night`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_type_rule`
--
ALTER TABLE `room_type_rule`
  MODIFY `room_type_rule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_type_rules`
--
ALTER TABLE `room_type_rules`
  MODIFY `room_type_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `travel_sustainable`
--
ALTER TABLE `travel_sustainable`
  MODIFY `travel_sustainable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation_2`
--
ALTER TABLE `accommodation_2`
  ADD CONSTRAINT `FK_accommodation_address_accommodation_address_id_3` FOREIGN KEY (`accommodation_address_id`) REFERENCES `accommodation_address` (`accommodation_address_id`),
  ADD CONSTRAINT `FK_accommodation_brand_accommodation_brand_id` FOREIGN KEY (`accommodation_brand_id`) REFERENCES `accommodation_brand` (`accommodation_brand_id`),
  ADD CONSTRAINT `FK_accommodation_star_rating_accommodation_star_rating_3` FOREIGN KEY (`accommodation_star_rating_id`) REFERENCES `accommodation_star_rating` (`accommodation_star_rating_id`),
  ADD CONSTRAINT `FK_accommodation_type_accommodation_type_id_3` FOREIGN KEY (`accommodation_type_id`) REFERENCES `accommodation_type` (`accommodation_type_id`),
  ADD CONSTRAINT `FK_destination_destination_id_3` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`destination_id`),
  ADD CONSTRAINT `FK_travel_sustainable_travel_sustainable_id_3` FOREIGN KEY (`travel_sustainable_id`) REFERENCES `travel_sustainable` (`travel_sustainable_id`);

--
-- Constraints for table `accommodation_email`
--
ALTER TABLE `accommodation_email`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_two` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`);

--
-- Constraints for table `accommodation_facilities`
--
ALTER TABLE `accommodation_facilities`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_13` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`),
  ADD CONSTRAINT `FK_accommodation_facility_accommodation_facility_id_seven` FOREIGN KEY (`accommodation_facility_id`) REFERENCES `accommodation_facility` (`accommodation_facility_id`);

--
-- Constraints for table `accommodation_meal_options`
--
ALTER TABLE `accommodation_meal_options`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_12` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`),
  ADD CONSTRAINT `FK_meal_option_meal_option_id` FOREIGN KEY (`meal_option_id`) REFERENCES `meal_option` (`meal_option_id`);

--
-- Constraints for table `accommodation_payment_methods`
--
ALTER TABLE `accommodation_payment_methods`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_8` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`),
  ADD CONSTRAINT `FK_payment_method_payment_method_id_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`);

--
-- Constraints for table `account_user`
--
ALTER TABLE `account_user`
  ADD CONSTRAINT `FK_user_address_account_user_address_id` FOREIGN KEY (`account_user_address_id`) REFERENCES `user_address` (`user_address_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_4` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`),
  ADD CONSTRAINT `FK_account_user_account_user_id_2` FOREIGN KEY (`account_user_id`) REFERENCES `account_user` (`account_user_id`),
  ADD CONSTRAINT `FK_account_user_account_user_id_two` FOREIGN KEY (`account_user_id`) REFERENCES `account_user` (`account_user_id`),
  ADD CONSTRAINT `FK_meal_option_3` FOREIGN KEY (`meal_option_id`) REFERENCES `meal_option` (`meal_option_id`),
  ADD CONSTRAINT `FK_payment_payment_id_3` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `FK_promo_code_promo_code_id` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`promo_code_id`);

--
-- Constraints for table `booking_room_types`
--
ALTER TABLE `booking_room_types`
  ADD CONSTRAINT `FK_booking_booking_id` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id_three` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `FK_currency_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  ADD CONSTRAINT `FK_destination_type_destination_type_id` FOREIGN KEY (`destination_type_id`) REFERENCES `destination_type` (`destination_type_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_payment_method_payment_method_id_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_method_id`);

--
-- Constraints for table `rating_per_category`
--
ALTER TABLE `rating_per_category`
  ADD CONSTRAINT `FK_review_category_review_category_id` FOREIGN KEY (`review_category_id`) REFERENCES `review_category` (`review_category_id`),
  ADD CONSTRAINT `FK_review_review_id` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK_booking_booking_id_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id_2` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_14` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`),
  ADD CONSTRAINT `FK_account_user_account_user_id` FOREIGN KEY (`account_user_id`) REFERENCES `account_user` (`account_user_id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `FK_room_facility_room_facility_id` FOREIGN KEY (`room_facility_id`) REFERENCES `room_facility` (`room_facility_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_facility`
--
ALTER TABLE `room_facility`
  ADD CONSTRAINT `FK_room_facility_type_room_facility_type_id` FOREIGN KEY (`room_facility_type_id`) REFERENCES `room_facility_type` (`room_facility_type_id`);

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `FK_accommodation_accommodation_id_17` FOREIGN KEY (`accommodation_id`) REFERENCES `accommodation_2` (`accommodation_id`);

--
-- Constraints for table `room_type_bed_types`
--
ALTER TABLE `room_type_bed_types`
  ADD CONSTRAINT `FK_bed_type_bed_type_id_1` FOREIGN KEY (`bed_id`) REFERENCES `bed_type` (`bed_type_id`),
  ADD CONSTRAINT `FK_room_type_room_type_id_6` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `room_type_price_per_night`
--
ALTER TABLE `room_type_price_per_night`
  ADD CONSTRAINT `FK_room_type_room_type_id_four` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`),
  ADD CONSTRAINT `FK_season_season_id` FOREIGN KEY (`season_id`) REFERENCES `season` (`season_id`);

--
-- Constraints for table `room_type_rules`
--
ALTER TABLE `room_type_rules`
  ADD CONSTRAINT `FK_room_type_room_type_id_3` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`),
  ADD CONSTRAINT `FK_room_type_rule_room_type_rule_id` FOREIGN KEY (`room_type_rule_id`) REFERENCES `room_type_rule` (`room_type_rule_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
