-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2019 at 04:26 PM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carformy_cab700`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Gabriel maurin', 'gmaurin@gmail.com', '1155556666', '$2y$10$cnZKBp69gIJ0GcXWUMOfLeaw5WIxpReQycCYRS6TjKxquoKkHgsbq', 'IpTPB9Xrqhu2aKnFe5AnRxIbGg0d39zZDPpiCM0PtxnhCYBsOJvc47vsQba2', '2019-05-18 22:55:38', '2019-05-19 22:27:12');

-- --------------------------------------------------------

--
-- Table structure for table `account_password_resets`
--

CREATE TABLE `account_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ePon', 'gustavo@oha.com.ar', '$2y$10$4x76dOLo/tLl5K.bUmWsv.fNIbnMHy4HxqKluTy9crBxzNlI7fM.i', NULL, '54SHDwTBn9OPSNCb8uwqMiyLKt2m8Y4FGFz9MV8nmhazgKt2cg2CR3Hv3UAE', NULL, '2019-05-25 23:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('up','pu') COLLATE utf8_unicode_ci NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_pushes`
--

CREATE TABLE `custom_pushes` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_to` enum('ALL','USERS','PROVIDERS') COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('ACTIVE','LOCATION','RIDES','AMOUNT') COLLATE utf8_unicode_ci NOT NULL,
  `condition_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_to` int(11) NOT NULL DEFAULT 0,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dispatchers`
--

CREATE TABLE `dispatchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dispatchers`
--

INSERT INTO `dispatchers` (`id`, `name`, `email`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Grupo Azul', 'gustavoz@oha.com.arz', '1153187633', '$2y$10$4UmuUyEwD7EVGrV9aO6Ff.zSAfS5u0tZiKF/Iw1Enk9TnjHhABOEK', 'jx30WjLTnwsrj2ebnuhkp71WZqGG5xKu2kbAsNhjWFhZwkcOfjOXEFXVxXkd', '2019-05-18 22:49:39', '2019-05-19 21:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_password_resets`
--

CREATE TABLE `dispatcher_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('DRIVER','VEHICLE') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Driving Licence', 'DRIVER', NULL, NULL),
(2, 'Bank Passbook', 'DRIVER', NULL, NULL),
(3, 'Joining Form', 'DRIVER', NULL, NULL),
(4, 'Work Permit', 'DRIVER', NULL, NULL),
(5, 'Registration Certificate', 'VEHICLE', NULL, NULL),
(6, 'Insurance Certificate', 'VEHICLE', NULL, NULL),
(7, 'Fitness Certificate', 'VEHICLE', NULL, NULL),
(8, 'id card', 'DRIVER', '2019-04-15 16:54:19', '2019-04-15 16:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_locations`
--

CREATE TABLE `favourite_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `type` enum('home','work','recent','others') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'others',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favourite_locations`
--

INSERT INTO `favourite_locations` (`id`, `user_id`, `address`, `latitude`, `longitude`, `type`, `created_at`, `updated_at`) VALUES
(1, 113, 'g10/3 Street 55, G-10/3 G 10/3 G-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.68620080, 73.01837790, 'home', '2019-03-27 22:16:15', '2019-03-27 22:16:15'),
(2, 113, 'National Incubation Center, Street 6, Sector H-9/1 H 9/1 H-9, Islamabad, Islamabad Capital Territory 44000, Pakistan', 33.66672560, 73.04062440, 'work', '2019-04-02 10:22:05', '2019-04-02 10:22:05'),
(3, 122, 'Rizwan Shaheed Rd, Kot Hathyal, Islamabad, Islamabad Capital Territory, Pakistan', 33.75713120, 73.18064850, 'home', '2019-04-25 18:15:22', '2019-04-25 18:15:22'),
(4, 122, '4 Street 102, G-13/1 G 13/1 G-13, Islamabad, Islamabad Capital Territory, Pakistan', 33.64384360, 72.96517630, 'work', '2019-04-25 18:15:26', '2019-04-25 18:15:26'),
(5, 136, 'Av. Corrientes 1250, C1043AAZ CABA, Argentina', -34.60398790, -58.38433290, 'home', '2019-05-15 05:15:11', '2019-05-15 05:15:11'),
(6, 136, 'Av. Corrientes 1250, C1043AAZ CABA, Argentina', -34.60398790, -58.38433290, 'home', '2019-05-15 05:15:11', '2019-05-15 05:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `name`, `email`, `password`, `company`, `mobile`, `logo`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Sergio Gonzalez Mauriño', 'agroingenieriasur@gmail.com', '$2y$10$GcJjCsSNhaaq0kdbJvv1ReTTu03gyPPwoddpENe555mPh4AQi/W0i', 'Flota Gonzalez Mauriño', '237461545', 'fleet/profile/b2810b093e0501968fa7e5195e7f00cc.jpeg', 'eUGjzXe60GOsHSOd9AhFnKUgTSXpSbUKG3BVrADMzjP09nR1vMC79ADnirCS', '2019-05-18 22:53:43', '2019-05-19 22:20:13'),
(3, 'Gustavo Basciano', 'Gbasciano@gmail.com', '$2y$10$2j7S4qwRILDs3oSM3/ljwOi7LhzHxhIU1mKlKKGeEYlBhBa/imSuu', 'AutoSur SA', '1177774444', NULL, NULL, '2019-05-19 22:30:24', '2019-05-19 22:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_password_resets`
--

CREATE TABLE `fleet_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'api', 'user.incorrect_password', 'Incorrect Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(2, 0, 'en', 'api', 'user.change_password', 'Required is new password should \nnot be same as old password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(3, 0, 'en', 'api', 'user.password_updated', 'Password Updated', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(4, 0, 'en', 'api', 'user.location_updated', 'Location Updated', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(5, 0, 'en', 'api', 'user.profile_updated', 'Profile Updated', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(6, 0, 'en', 'api', 'user.user_not_found', 'User Not Found', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(7, 0, 'en', 'api', 'user.not_paid', 'User Not Paid', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(8, 0, 'en', 'api', 'ride.request_inprogress', 'Already Request in Progress', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(9, 0, 'en', 'api', 'ride.no_providers_found', 'No Drivers Found', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(10, 0, 'en', 'api', 'ride.request_cancelled', 'Your Ride Cancelled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(11, 0, 'en', 'api', 'ride.already_cancelled', 'Already Ride Cancelled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(12, 0, 'en', 'api', 'ride.already_onride', 'Already You are Onride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(13, 0, 'en', 'api', 'ride.provider_rated', 'Driver Rated', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(14, 0, 'en', 'api', 'ride.request_scheduled', 'Ride Scheduled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(15, 0, 'en', 'api', 'ride.request_already_scheduled', 'Ride Already Scheduled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(16, 0, 'en', 'api', 'ride.request_modify_location', 'User Changed Destination Address', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(17, 0, 'en', 'api', 'something_went_wrong', 'Something Went Wrong', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(18, 0, 'en', 'api', 'logout_success', 'Logged out Successfully', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(19, 0, 'en', 'api', 'email_available', 'Email Available', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(20, 0, 'en', 'api', 'services_not_found', 'Services Not Found', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(21, 0, 'en', 'api', 'promocode_applied', 'Promocode Applied', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(22, 0, 'en', 'api', 'promocode_expired', 'Promocode Expired', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(23, 0, 'en', 'api', 'promocode_already_in_use', 'Promocode Already in Use', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(24, 0, 'en', 'api', 'paid', 'Paid', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(25, 0, 'en', 'api', 'added_to_your_wallet', 'Added to your Wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(26, 0, 'en', 'api', 'push.request_accepted', 'Your Ride Accepted by a Driver', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(27, 0, 'en', 'api', 'push.arrived', 'Driver Arrived at your Location', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(28, 0, 'en', 'api', 'push.dropped', 'Your ride is completed successfully. you have to pay', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(29, 0, 'en', 'api', 'push.incoming_request', 'New Incoming Ride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(30, 0, 'en', 'api', 'push.added_money_to_wallet', ' Added to your Wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(31, 0, 'en', 'api', 'push.charged_from_wallet', ' Charged from your Wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(32, 0, 'en', 'api', 'push.document_verfied', 'Your Documents are verified, Now you are ready to Start your Business', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(33, 0, 'en', 'api', 'push.provider_not_available', 'Sorry for inconvience time, Our partner or busy. Please try after some time', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(34, 0, 'en', 'api', 'push.user_cancelled', 'User Cancelled the Ride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(35, 0, 'en', 'api', 'push.provider_cancelled', 'Driver Cancelled the Ride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(36, 0, 'en', 'api', 'push.schedule_start', 'Your schedule ride has been started', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(37, 0, 'en', 'servicetypes', 'MIN', 'Per Minute Pricing', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(38, 0, 'en', 'servicetypes', 'HOUR', 'Per Hour Pricing', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(39, 0, 'en', 'servicetypes', 'DISTANCE', 'Distance Pricing', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(40, 0, 'en', 'servicetypes', 'DISTANCEMIN', 'Distance and Per Minute Pricing', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(41, 0, 'en', 'servicetypes', 'DISTANCEHOUR', 'Distance and Per Hour Pricing', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(42, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(43, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(44, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(45, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(46, 0, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(47, 0, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, and dashes.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(48, 0, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(49, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(50, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(51, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(52, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(53, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(54, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(55, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(56, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(57, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(58, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(59, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(60, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(61, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(62, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(63, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(64, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(65, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(66, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(67, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(68, 0, 'en', 'validation', 'filled', 'The :attribute field is required.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(69, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(70, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(71, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(72, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(73, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(74, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(75, 0, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(76, 0, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(77, 0, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(78, 0, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(79, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(80, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(81, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(82, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(83, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(84, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(85, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(86, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(87, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(88, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(89, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(90, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(91, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(92, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(93, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(94, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(95, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(96, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(97, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(98, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(99, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(100, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(101, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(102, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(103, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(104, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(105, 0, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(106, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(107, 0, 'en', 'user', 'profile.old_password', 'Old Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(108, 0, 'en', 'user', 'profile.password', 'Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(109, 0, 'en', 'user', 'profile.confirm_password', 'Confirm Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(110, 0, 'en', 'user', 'profile.first_name', 'First Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(111, 0, 'en', 'user', 'profile.last_name', 'Last Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(112, 0, 'en', 'user', 'profile.email', 'Email', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(113, 0, 'en', 'user', 'profile.mobile', 'Mobile', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(114, 0, 'en', 'user', 'profile.general_information', 'General Information', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(115, 0, 'en', 'user', 'profile.profile_picture', 'Profile Picture', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(116, 0, 'en', 'user', 'profile.wallet_balance', 'Wallet Balance', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(117, 0, 'en', 'user', 'profile.edit', 'Edit', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(118, 0, 'en', 'user', 'profile.save', 'Save', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(119, 0, 'en', 'user', 'profile.edit_information', 'Edit Information', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(120, 0, 'en', 'user', 'profile.change_password', 'Change Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(121, 0, 'en', 'user', 'profile.profile', 'Profile', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(122, 0, 'en', 'user', 'profile.logout', 'Logout', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(123, 0, 'en', 'user', 'profile.name', 'Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(124, 0, 'en', 'user', 'cash', 'CASH', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(125, 0, 'en', 'user', 'booking_id', 'Booking Id', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(126, 0, 'en', 'user', 'service_number', 'Car Number', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(127, 0, 'en', 'user', 'service_model', 'Car Model', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(128, 0, 'en', 'user', 'card.fullname', 'Full Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(129, 0, 'en', 'user', 'card.card_no', 'Card Number', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(130, 0, 'en', 'user', 'card.cvv', 'CVV', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(131, 0, 'en', 'user', 'card.add_card', 'Add Card', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(132, 0, 'en', 'user', 'card.delete', 'Delete', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(133, 0, 'en', 'user', 'card.month', 'Month', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(134, 0, 'en', 'user', 'card.year', 'Year', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(135, 0, 'en', 'user', 'card.default', 'Default', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(136, 0, 'en', 'user', 'fare_breakdown', 'FARE BREAKDOWN', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(137, 0, 'en', 'user', 'ride.finding_driver', 'Finding your Driver', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(138, 0, 'en', 'user', 'ride.accepted_ride', 'Accepted Your Ride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(139, 0, 'en', 'user', 'ride.arrived_ride', 'Arrived At your Location', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(140, 0, 'en', 'user', 'ride.onride', 'Enjoy your Ride', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(141, 0, 'en', 'user', 'ride.waiting_payment', 'Waiting for Payment', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(142, 0, 'en', 'user', 'ride.rate_and_review', 'Rate and Review', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(143, 0, 'en', 'user', 'ride.ride_now', 'Ride Now', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(144, 0, 'en', 'user', 'ride.cancel_request', 'Cancel Request', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(145, 0, 'en', 'user', 'ride.ride_status', 'Ride Status', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(146, 0, 'en', 'user', 'ride.dropped_ride', 'Your Ride is Completed', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(147, 0, 'en', 'user', 'ride.ride_details', 'Ride Details', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(148, 0, 'en', 'user', 'ride.invoice', 'Invoice', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(149, 0, 'en', 'user', 'ride.base_price', 'Base Fare', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(150, 0, 'en', 'user', 'ride.tax_price', 'Tax Fare', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(151, 0, 'en', 'user', 'ride.distance_price', 'Distance Fare', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(152, 0, 'en', 'user', 'ride.comment', 'Comment', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(153, 0, 'en', 'user', 'ride.detection_wallet', 'Wallet Detection', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(154, 0, 'en', 'user', 'ride.rating', 'Rating', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(155, 0, 'en', 'user', 'ride.km', 'Kilometer', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(156, 0, 'en', 'user', 'ride.total', 'Total', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(157, 0, 'en', 'user', 'ride.amount_paid', 'Amount to be Paid', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(158, 0, 'en', 'user', 'ride.promotion_applied', 'Promotion Applied', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(159, 0, 'en', 'user', 'ride.request_inprogress', 'Ride Already in Progress', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(160, 0, 'en', 'user', 'ride.request_scheduled', 'Ride Already Scheduled on this time', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(161, 0, 'en', 'user', 'ride.cancel_reason', 'Cancel Reason', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(162, 0, 'en', 'user', 'ride.wallet_deduction', 'Wallet Deduction', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(163, 0, 'en', 'user', 'dashboard', 'Dashboard', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(164, 0, 'en', 'user', 'payment', 'Payment', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(165, 0, 'en', 'user', 'wallet', 'Wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(166, 0, 'en', 'user', 'my_wallet', 'My Wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(167, 0, 'en', 'user', 'my_trips', 'My Trips', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(168, 0, 'en', 'user', 'in_your_wallet', 'in your wallet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(169, 0, 'en', 'user', 'status', 'Status', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(170, 0, 'en', 'user', 'driver_name', 'Driver Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(171, 0, 'en', 'user', 'driver_rating', 'Driver Rating', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(172, 0, 'en', 'user', 'payment_mode', 'Payment Mode', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(173, 0, 'en', 'user', 'add_money', 'Add Money', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(174, 0, 'en', 'user', 'date', 'Date', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(175, 0, 'en', 'user', 'schedule_date', 'Scheduled Date', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(176, 0, 'en', 'user', 'amount', 'Total Amount', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(177, 0, 'en', 'user', 'type', 'Type', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(178, 0, 'en', 'user', 'time', 'Time', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(179, 0, 'en', 'user', 'request_id', 'Request ID', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(180, 0, 'en', 'user', 'paid_via', 'PAID VIA', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(181, 0, 'en', 'user', 'from', 'From', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(182, 0, 'en', 'user', 'total_distance', 'Total Distance', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(183, 0, 'en', 'user', 'eta', 'ETA', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(184, 0, 'en', 'user', 'to', 'To', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(185, 0, 'en', 'user', 'use_wallet_balance', 'Use Wallet Balance', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(186, 0, 'en', 'user', 'available_wallet_balance', 'Available Wallet Balance', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(187, 0, 'en', 'user', 'estimated_fare', 'Estimated Fare', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(188, 0, 'en', 'user', 'charged', 'CHARGED', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(189, 0, 'en', 'user', 'payment_method', 'Payment Methods', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(190, 0, 'en', 'user', 'promotion', 'Promotions', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(191, 0, 'en', 'user', 'add_promocode', 'Add Promocode', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(192, 0, 'en', 'user', 'upcoming_trips', 'Upcoming trips', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(193, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(194, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(195, 0, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(196, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(197, 0, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(198, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(199, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(200, 0, 'en', 'admin', 'name', 'Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(201, 0, 'en', 'admin', 'email', 'Email', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(202, 0, 'en', 'admin', 'first_name', 'First Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(203, 0, 'en', 'admin', 'last_name', 'Last Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(204, 0, 'en', 'admin', 'picture', 'Picture', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(205, 0, 'en', 'admin', 'password', 'Password ', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(206, 0, 'en', 'admin', 'mobile', 'Mobile', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(207, 0, 'en', 'admin', 'cancel', 'Cancel', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(208, 0, 'en', 'admin', 'back', 'Back', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(209, 0, 'en', 'admin', 'id', 'ID', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(210, 0, 'en', 'admin', 'edit', 'Edit', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(211, 0, 'en', 'admin', 'gender', 'Gender', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(212, 0, 'en', 'admin', 'address', 'Address', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(213, 0, 'en', 'admin', 'action', 'Action', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(214, 0, 'en', 'admin', 'Enable', 'Enable', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(215, 0, 'en', 'admin', 'Disable', 'Disable', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(216, 0, 'en', 'admin', 'type', 'Type', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(217, 0, 'en', 'admin', 'delete', 'Delete', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(218, 0, 'en', 'admin', 'help', 'Help', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(219, 0, 'en', 'admin', 'status', 'Status', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(220, 0, 'en', 'admin', 'message', 'Message', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(221, 0, 'en', 'admin', 'History', 'History', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(222, 0, 'en', 'admin', 'Statements', 'Statements', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(223, 0, 'en', 'admin', 'amount', 'Amount', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(224, 0, 'en', 'admin', 'account.change_password', 'Change Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(225, 0, 'en', 'admin', 'account.old_password', 'Old Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(226, 0, 'en', 'admin', 'account.password', 'Password ', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(227, 0, 'en', 'admin', 'account.password_confirmation', 'Password Confirmation', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(228, 0, 'en', 'admin', 'account.update_profile', 'Update Profile', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(229, 0, 'en', 'admin', 'account-manager.add_account_manager', 'Add Account Manager', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(230, 0, 'en', 'admin', 'account-manager.full_name', 'Full Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(231, 0, 'en', 'admin', 'account-manager.password_confirmation', 'Password Confirmation', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(232, 0, 'en', 'admin', 'account-manager.update_account_manager', 'Update Account Manager', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(233, 0, 'en', 'admin', 'account-manager.account_manager', 'Account Manager', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(234, 0, 'en', 'admin', 'account-manager.add_new_account_manager', 'Add New Account Manager', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(235, 0, 'en', 'admin', 'auth.reset_password', 'Reset Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(236, 0, 'en', 'admin', 'auth.admin_login', 'Admin Login', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(237, 0, 'en', 'admin', 'auth.login_here', 'Login Here', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(238, 0, 'en', 'admin', 'auth.remember_me', 'Remember Me', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(239, 0, 'en', 'admin', 'auth.sign_in', 'Sign In', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(240, 0, 'en', 'admin', 'auth.forgot_your_password', 'Forgot Your Password', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(241, 0, 'en', 'admin', 'auth.request_scheduled', 'Ride Scheduled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(242, 0, 'en', 'admin', 'auth.request_already_scheduled', 'Ride Already Scheduled', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(243, 0, 'en', 'admin', 'dispatcher.add_dispatcher', 'Add Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(244, 0, 'en', 'admin', 'dispatcher.update_dispatcher', 'Update Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(245, 0, 'en', 'admin', 'dispatcher.dispatcher', 'Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(246, 0, 'en', 'admin', 'dispatcher.add_new_dispatcher', 'Add New Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(247, 0, 'en', 'admin', 'document.add_Document', 'Add Document', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(248, 0, 'en', 'admin', 'document.document_name', 'Document Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(249, 0, 'en', 'admin', 'document.document_type', 'Document Type', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(250, 0, 'en', 'admin', 'document.driver_review', 'Driver Review', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(251, 0, 'en', 'admin', 'document.vehicle_review', 'Vehicle Review', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(252, 0, 'en', 'admin', 'document.update_document', 'Update Document', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(253, 0, 'en', 'admin', 'document.document', 'Document', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(254, 0, 'en', 'admin', 'fleet.add_fleet_owner', 'Add Fleet Owner', '2019-05-19 22:32:33', '2019-05-19 22:32:33'),
(255, 0, 'en', 'admin', 'fleet.company_name', 'Company Name', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(256, 0, 'en', 'admin', 'fleet.company_logo', 'Company Logo', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(257, 0, 'en', 'admin', 'fleet.update_fleet_owner', 'Update Fleet Owner', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(258, 0, 'en', 'admin', 'fleet.update_fleet', 'Update Fleet', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(259, 0, 'en', 'admin', 'fleet.fleet_owners', 'Fleet Owners', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(260, 0, 'en', 'admin', 'fleet.add_new_fleet_owner', 'Add New Fleet Owner', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(261, 0, 'en', 'admin', 'fleet.show_provider', 'Show Provider', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(262, 0, 'en', 'admin', 'include.profile', 'Profile', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(263, 0, 'en', 'admin', 'include.sign_out', 'Sign out', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(264, 0, 'en', 'admin', 'include.admin_dashboard', 'Admin Dashboard', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(265, 0, 'en', 'admin', 'include.dashboard', 'Dashboard', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(266, 0, 'en', 'admin', 'include.dispatcher_panel', 'Dispatcher Panel', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(267, 0, 'en', 'admin', 'include.heat_map', 'Heat Map', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(268, 0, 'en', 'admin', 'include.members', 'Members', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(269, 0, 'en', 'admin', 'include.users', 'Users', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(270, 0, 'en', 'admin', 'include.list_users', 'List Users', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(271, 0, 'en', 'admin', 'include.add_new_user', 'Add New User', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(272, 0, 'en', 'admin', 'include.providers', 'Providers', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(273, 0, 'en', 'admin', 'include.list_providers', 'List Providers', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(274, 0, 'en', 'admin', 'include.add_new_provider', 'Add New Provider', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(275, 0, 'en', 'admin', 'include.dispatcher', 'Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(276, 0, 'en', 'admin', 'include.list_dispatcher', 'List Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(277, 0, 'en', 'admin', 'include.add_new_dispatcher', 'Add New Dispatcher', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(278, 0, 'en', 'admin', 'include.fleet_owner', 'Fleet Owner', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(279, 0, 'en', 'admin', 'include.list_fleets', 'List Fleets', '2019-05-19 22:32:33', '2019-05-19 22:32:48'),
(280, 0, 'en', 'admin', 'include.add_new_fleet_owner', 'Add New Fleet Owner', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(281, 0, 'en', 'admin', 'include.account_manager', 'Account Manager', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(282, 0, 'en', 'admin', 'include.list_account_managers', 'List Account Managers', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(283, 0, 'en', 'admin', 'include.add_new_account_manager', 'Add New Account Manager', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(284, 0, 'en', 'admin', 'include.accounts', 'Accounts', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(285, 0, 'en', 'admin', 'include.statements', 'Statements', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(286, 0, 'en', 'admin', 'include.overall_ride_statments', 'Overall Ride Statments', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(287, 0, 'en', 'admin', 'include.provider_statement', 'Provider Statement', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(288, 0, 'en', 'admin', 'include.daily_statement', 'Daily Statement', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(289, 0, 'en', 'admin', 'include.monthly_statement', 'Monthly Statement', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(290, 0, 'en', 'admin', 'include.yearly_statement', 'Yearly Statement', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(291, 0, 'en', 'admin', 'include.details', 'Details', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(292, 0, 'en', 'admin', 'include.map', 'Map', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(293, 0, 'en', 'admin', 'include.ratings', 'Ratings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(294, 0, 'en', 'admin', 'include.reviews', 'Reviews', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(295, 0, 'en', 'admin', 'include.user_ratings', 'User Ratings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(296, 0, 'en', 'admin', 'include.provider_ratings', 'Provider Ratings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(297, 0, 'en', 'admin', 'include.requests', 'Requests', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(298, 0, 'en', 'admin', 'include.request_history', 'Request History', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(299, 0, 'en', 'admin', 'include.scheduled_rides', 'Scheduled Rides', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(300, 0, 'en', 'admin', 'include.general', 'General', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(301, 0, 'en', 'admin', 'include.service_types', 'Service Types', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(302, 0, 'en', 'admin', 'include.list_service_types', 'List Service Types', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(303, 0, 'en', 'admin', 'include.add_new_service_type', 'Add New Service Type', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(304, 0, 'en', 'admin', 'include.documents', 'Documents', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(305, 0, 'en', 'admin', 'include.list_documents', 'List Documents', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(306, 0, 'en', 'admin', 'include.add_new_document', 'Add New Document', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(307, 0, 'en', 'admin', 'include.promocodes', 'Promocodes', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(308, 0, 'en', 'admin', 'include.list_promocodes', 'List Promocodes', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(309, 0, 'en', 'admin', 'include.add_new_promocode', 'Add New Promocode', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(310, 0, 'en', 'admin', 'include.payment_details', 'Payment Details', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(311, 0, 'en', 'admin', 'include.payment_history', 'Payment History', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(312, 0, 'en', 'admin', 'include.payment_settings', 'Payment Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(313, 0, 'en', 'admin', 'include.settings', 'Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(314, 0, 'en', 'admin', 'include.site_settings', 'Site Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(315, 0, 'en', 'admin', 'include.others', 'Others', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(316, 0, 'en', 'admin', 'include.privacy_policy', 'Privacy Policy', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(317, 0, 'en', 'admin', 'include.help', 'Help', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(318, 0, 'en', 'admin', 'include.custom_push', 'Custom Push', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(319, 0, 'en', 'admin', 'include.translations', 'Translations', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(320, 0, 'en', 'admin', 'include.account', 'Account', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(321, 0, 'en', 'admin', 'include.account_settings', 'Account Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(322, 0, 'en', 'admin', 'include.change_password', 'Change Password', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(323, 0, 'en', 'admin', 'include.logout', 'Logout', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(324, 0, 'en', 'admin', 'pages.pages', 'Pages', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(325, 0, 'en', 'admin', 'payment.payment_history', 'Payment History', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(326, 0, 'en', 'admin', 'payment.request_id', 'Request ID', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(327, 0, 'en', 'admin', 'payment.transaction_id', 'Transaction ID', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(328, 0, 'en', 'admin', 'payment.from', 'From', '2019-05-19 22:32:34', '2019-05-19 22:32:48'),
(329, 0, 'en', 'admin', 'payment.to', 'To', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(330, 0, 'en', 'admin', 'payment.total_amount', 'Total Amount', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(331, 0, 'en', 'admin', 'payment.provider_amount', 'Provider Amount', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(332, 0, 'en', 'admin', 'payment.payment_mode', 'Payment Mode', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(333, 0, 'en', 'admin', 'payment.payment_status', 'Payment Status', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(334, 0, 'en', 'admin', 'payment.payment_modes', 'Payment Modes', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(335, 0, 'en', 'admin', 'payment.card_payments', 'Stripe (Card Payments)', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(336, 0, 'en', 'admin', 'payment.stripe_secret_key', 'Stripe Secret key', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(337, 0, 'en', 'admin', 'payment.stripe_publishable_key', 'Stripe Publishable key', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(338, 0, 'en', 'admin', 'payment.cash_payments', 'Cash Payments', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(339, 0, 'en', 'admin', 'payment.payment_settings', 'Payment Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(340, 0, 'en', 'admin', 'payment.daily_target', 'Daily Target', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(341, 0, 'en', 'admin', 'payment.tax_percentage', 'Tax percentage(%)', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(342, 0, 'en', 'admin', 'payment.surge_trigger_point', 'Surge Trigger Point', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(343, 0, 'en', 'admin', 'payment.surge_percentage', 'Surge Percentage(%)', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(344, 0, 'en', 'admin', 'payment.commission_percentage', 'Commission Percentage(%)', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(345, 0, 'en', 'admin', 'payment.provider_commission_percentage', 'Provider Commission Percentage(%)', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(346, 0, 'en', 'admin', 'payment.booking_id_prefix', 'Booking ID Prefix', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(347, 0, 'en', 'admin', 'payment.currency', 'Currency', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(348, 0, 'en', 'admin', 'payment.update_site_settings', 'Update Site Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(349, 0, 'en', 'admin', 'promocode.add_promocode', 'Add Promocode', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(350, 0, 'en', 'admin', 'promocode.discount', 'Discount', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(351, 0, 'en', 'admin', 'promocode.expiration', 'Expiration', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(352, 0, 'en', 'admin', 'promocode.promocode', 'Promocode', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(353, 0, 'en', 'admin', 'promocode.update_promocode', 'Update Promocode', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(354, 0, 'en', 'admin', 'promocode.used_count', 'Used Count', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(355, 0, 'en', 'admin', 'promocode.promocodes', 'Promocodes', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(356, 0, 'en', 'admin', 'promocode.discount_type', 'Promocode Use ', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(357, 0, 'en', 'admin', 'provides.provider_name', 'Provider Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(358, 0, 'en', 'admin', 'provides.approve', 'Approve', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(359, 0, 'en', 'admin', 'provides.delete', 'Delete', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(360, 0, 'en', 'admin', 'provides.add_provider', 'Add Provider', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(361, 0, 'en', 'admin', 'provides.password_confirmation', 'Password Confirmation', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(362, 0, 'en', 'admin', 'provides.update_provider', 'Update Provider', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(363, 0, 'en', 'admin', 'provides.type_allocation', 'Provider Service Type Allocation', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(364, 0, 'en', 'admin', 'provides.service_name', 'Service Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(365, 0, 'en', 'admin', 'provides.service_number', 'Service Number', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(366, 0, 'en', 'admin', 'provides.service_model', 'Service Model', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(367, 0, 'en', 'admin', 'provides.provider_documents', 'Provider Documents', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(368, 0, 'en', 'admin', 'provides.document_type', 'Document Type', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(369, 0, 'en', 'admin', 'provides.providers', 'Providers', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(370, 0, 'en', 'admin', 'provides.add_new_provider', 'add New Provider', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(371, 0, 'en', 'admin', 'provides.total_requests', 'Total Requests', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(372, 0, 'en', 'admin', 'provides.full_name', 'Full Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(373, 0, 'en', 'admin', 'provides.accepted_requests', 'Accepted Requests', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(374, 0, 'en', 'admin', 'provides.cancelled_requests', 'Cancelled Requests', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(375, 0, 'en', 'admin', 'provides.service_type', 'Documents / Service Type', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(376, 0, 'en', 'admin', 'provides.online', 'Online', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(377, 0, 'en', 'admin', 'provides.Provider_Details', 'Provider Details', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(378, 0, 'en', 'admin', 'provides.Approved', 'Approved', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(379, 0, 'en', 'admin', 'provides.Not_Approved', 'Not Approved', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(380, 0, 'en', 'admin', 'provides.Total_Rides', 'Total Rides', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(381, 0, 'en', 'admin', 'provides.Total_Earning', 'Total Earning', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(382, 0, 'en', 'admin', 'provides.Commission', 'Commission', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(383, 0, 'en', 'admin', 'provides.Joined_at', 'Joined at', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(384, 0, 'en', 'admin', 'provides.Details', 'Details', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(385, 0, 'en', 'admin', 'request.Booking_ID', 'Booking ID', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(386, 0, 'en', 'admin', 'request.User_Name', 'User Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(387, 0, 'en', 'admin', 'request.Date_Time', 'Date &amp; Time', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(388, 0, 'en', 'admin', 'request.Provider_Name', 'Provider Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(389, 0, 'en', 'admin', 'request.Payment_Mode', 'Payment Mode', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(390, 0, 'en', 'admin', 'request.Payment_Status', 'Payment Status', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(391, 0, 'en', 'admin', 'request.Request_Id', 'Request Id', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(392, 0, 'en', 'admin', 'request.Scheduled_Date_Time', 'Scheduled Date & Time', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(393, 0, 'en', 'admin', 'review.Request_ID', 'Request ID', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(394, 0, 'en', 'admin', 'review.Rating', 'Rating', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(395, 0, 'en', 'admin', 'review.Comments', 'Comments', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(396, 0, 'en', 'admin', 'review.Provider_Reviews', 'Provider Reviews', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(397, 0, 'en', 'admin', 'review.User_Reviews', 'User Reviews', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(398, 0, 'en', 'admin', 'service.Add_Service_Type', 'Add Service Type', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(399, 0, 'en', 'admin', 'service.Service_Name', 'Service Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(400, 0, 'en', 'admin', 'service.Provider_Name', 'Provider Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(401, 0, 'en', 'admin', 'service.Service_Image', 'Service Image', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(402, 0, 'en', 'admin', 'service.Base_Price', 'Base Price', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(403, 0, 'en', 'admin', 'service.Base_Distance', 'Base Distance', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(404, 0, 'en', 'admin', 'service.unit_time', 'Unit Time Pricing (For Rental amount per hour / 60) ', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(405, 0, 'en', 'admin', 'service.unit', 'Unit Distance Price', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(406, 0, 'en', 'admin', 'service.Seat_Capacity', 'Seat Capacity', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(407, 0, 'en', 'admin', 'service.Pricing_Logic', 'Pricing Logic', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(408, 0, 'en', 'admin', 'service.Description', 'Description', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(409, 0, 'en', 'admin', 'service.Update_User', 'Update User', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(410, 0, 'en', 'admin', 'service.Update_Service_Type', 'Update Service Type', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(411, 0, 'en', 'admin', 'setting.Site_Settings', 'Site Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(412, 0, 'en', 'admin', 'setting.Site_Name', 'Site Name', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(413, 0, 'en', 'admin', 'setting.Site_Logo', 'Site Logo', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(414, 0, 'en', 'admin', 'setting.Site_Icon', 'Site Icon', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(415, 0, 'en', 'admin', 'setting.Copyright_Content', 'Copyright Content', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(416, 0, 'en', 'admin', 'setting.Playstore_link', 'Playstore link', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(417, 0, 'en', 'admin', 'setting.Appstore_Link', 'Appstore Link', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(418, 0, 'en', 'admin', 'setting.Provider_Accept_Timeout', 'Provider Accept Timeout', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(419, 0, 'en', 'admin', 'setting.Provider_Search_Radius', 'Provider Search Radius', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(420, 0, 'en', 'admin', 'setting.SOS_Number', 'SOS Number', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(421, 0, 'en', 'admin', 'setting.Contact_Number', 'Contact Number', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(422, 0, 'en', 'admin', 'setting.Contact_Email', 'Contact Email', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(423, 0, 'en', 'admin', 'setting.Social_Login', 'Social Login', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(424, 0, 'en', 'admin', 'setting.Update_Site_Settings', 'Update Site Settings', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(425, 0, 'en', 'admin', 'setting.map_key', 'Google Map Key', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(426, 0, 'en', 'admin', 'setting.fb_app_version', 'FB App Version', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(427, 0, 'en', 'admin', 'setting.fb_app_id', 'FB App ID', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(428, 0, 'en', 'admin', 'setting.fb_app_secret', 'FB App Secret', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(429, 0, 'en', 'admin', 'users.Add_User', 'Add User', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(430, 0, 'en', 'admin', 'users.Update_User', 'Update User', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(431, 0, 'en', 'admin', 'users.Users', 'Users', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(432, 0, 'en', 'admin', 'users.Rating', 'Rating', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(433, 0, 'en', 'admin', 'users.Wallet_Amount', 'Wallet Amount', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(434, 0, 'en', 'admin', 'users.User_Details', 'User Details', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(435, 0, 'en', 'admin', 'users.Wallet_Balance', 'Wallet Balance', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(436, 1, 'en', 'admin', 'dashboard.Rides', 'Total Cancelled Rides', '2019-05-19 22:32:34', '2019-05-19 22:33:00'),
(437, 0, 'en', 'admin', 'dashboard.Revenue', 'Revenue', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(438, 0, 'en', 'admin', 'dashboard.service', 'No. of Service Types', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(439, 0, 'en', 'admin', 'dashboard.cancel_count', 'User Cancelled Count', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(440, 0, 'en', 'admin', 'dashboard.provider_cancel_count', 'Provider Cancelled Count', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(441, 0, 'en', 'admin', 'dashboard.fleets', 'No. of Fleets', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(442, 0, 'en', 'admin', 'dashboard.scheduled', 'No. of Scheduled Rides', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(443, 0, 'en', 'admin', 'dashboard.Recent_Rides', 'Recent Rides', '2019-05-19 22:32:34', '2019-05-19 22:32:49');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(444, 0, 'en', 'admin', 'dashboard.View_Ride_Details', 'View Ride Details', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(445, 0, 'en', 'admin', 'dashboard.No_Details_Found', 'No Details Found', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(446, 0, 'en', 'admin', 'heatmap.Ride_Heatmap', 'Ride Heatmap', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(447, 0, 'en', 'admin', 'push.Push_Notification', 'Push Notification', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(448, 0, 'en', 'admin', 'push.Sent_to', 'Sent to', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(449, 0, 'en', 'admin', 'push.Push_Now', 'Push Now', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(450, 0, 'en', 'admin', 'push.Schedule_Push', 'Schedule Push', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(451, 0, 'en', 'admin', 'push.Condition', 'Condition', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(452, 0, 'en', 'admin', 'push.Notification_History', 'Notification History', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(453, 0, 'en', 'admin', 'push.Sent_on', 'Sent on', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(454, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(455, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2019-05-19 22:32:34', '2019-05-19 22:32:49'),
(456, 0, 'en', 'api', 'ride.ride_cancelled', NULL, '2019-05-19 22:34:29', '2019-05-19 22:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2015_08_25_172600_create_settings_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2017_01_11_180503_create_admins_table', 1),
(11, '2017_01_11_180511_create_providers_table', 1),
(12, '2017_01_11_181312_create_cards_table', 1),
(13, '2017_01_11_181357_create_chats_table', 1),
(14, '2017_01_11_181558_create_promocodes_table', 1),
(15, '2017_01_11_182454_create_provider_documents_table', 1),
(16, '2017_01_11_182536_create_provider_services_table', 1),
(17, '2017_01_11_182649_create_user_requests_table', 1),
(18, '2017_01_11_182717_create_request_filters_table', 1),
(19, '2017_01_11_182738_create_service_types_table', 1),
(20, '2017_01_25_172422_create_documents_table', 1),
(21, '2017_01_31_122021_create_provider_devices_table', 1),
(22, '2017_02_02_192703_create_user_request_ratings_table', 1),
(23, '2017_02_06_080124_create_user_request_payments_table', 1),
(24, '2017_02_14_135859_create_provider_profiles_table', 1),
(25, '2017_02_21_131429_create_promocode_usages_table', 1),
(26, '2017_06_07_045207_add_social_login_to_providers_tables', 1),
(27, '2017_06_17_151030_create_dispatchers_table', 1),
(28, '2017_06_17_151031_create_dispatcher_password_resets_table', 1),
(29, '2017_06_17_151145_create_fleets_table', 1),
(30, '2017_06_17_151146_create_fleet_password_resets_table', 1),
(31, '2017_06_17_151150_add_fleet_to_providers_table', 1),
(32, '2017_06_19_130022_add_booking_id_to_user_request', 1),
(33, '2017_06_19_155736_add_cancel_reason_to_user_request', 1),
(34, '2017_06_20_154148_create_accounts_table', 1),
(35, '2017_06_20_154149_create_account_password_resets_table', 1),
(36, '2017_08_03_194354_create_custom_pushes_table', 1),
(37, '2017_09_01_190333_create_wallet_passbooks_table', 1),
(38, '2017_09_01_190355_create_promocode_passbooks_table', 1),
(39, '2017_09_15_145235_add_travel_tracking_distance_to_user_requests_table', 1),
(40, '2017_09_15_152718_add_provider_payments_to_user_request_payments_table', 1),
(41, '2017_09_19_104042_add_genders_to_providers_table', 1),
(42, '2017_09_19_104042_add_genders_to_users_table', 1),
(43, '2017_09_26_144027_add_travel_time_to_user_requests_table', 1),
(44, '2017_09_26_160101_create_favourite_locations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ac1fd9087351a94f9a39acd7a8b6797441867b0ca9fc7073b8d31c502ce1df0656c7a4782b7c2af', 112, 2, NULL, '[]', 0, '2019-03-27 17:48:53', '2019-03-27 17:48:53', '2019-04-11 13:48:53'),
('1bf4607ea8496a5aa8b44fdadbdc90db1a658a3ad0d5d7d16758cac93292a400ab33afb711c1549b', 113, 2, NULL, '[]', 0, '2019-03-27 19:41:28', '2019-03-27 19:41:28', '2019-04-11 15:41:28'),
('c414b03a672cfb39c0288269c3b2d1225073e289fda4bfbc2c163e5041f65e6cb950c2a5c942d865', 113, 2, NULL, '[]', 1, '2019-03-27 21:00:54', '2019-03-27 21:00:54', '2019-04-11 17:00:54'),
('f46750391d3e2d3d0e5f78c6edc693e28bf30c36c430a387f78709d30677e779bc5bd5091b708b67', 111, 2, NULL, '[]', 0, '2019-03-27 21:11:34', '2019-03-27 21:11:34', '2019-04-11 17:11:34'),
('78c0fd2a9ace751d21e907282d39ebf76f3f96c39078236ac18397d36be127ae7ae247e90a8d30cc', 112, 2, NULL, '[]', 0, '2019-03-28 13:01:35', '2019-03-28 13:01:35', '2019-04-12 09:01:35'),
('a2c15010277353d8863dbaab0d1b57fb96ded1e109e81359883b91f8a0ff925344b4687a35764f72', 114, 2, NULL, '[]', 1, '2019-03-28 13:21:43', '2019-03-28 13:21:43', '2019-04-12 09:21:43'),
('4c59a1778cbcedb19a51fc66c2f8c6cc1e2cf695c046aa4fe658f5b87bb33dfe31edaabd4a34e15f', 115, 2, NULL, '[]', 0, '2019-03-31 09:42:37', '2019-03-31 09:42:37', '2019-04-15 05:42:37'),
('802eb46c1b75bcd773e345ac4dd07b470bbbc0bd1233c0a907914c1fbb2510cd03b7e2d67d28da4c', 113, 2, NULL, '[]', 0, '2019-04-03 18:41:32', '2019-04-03 18:41:32', '2019-04-18 14:41:32'),
('313457603fb385e61735f7e0b82d218c781657b5a2538d505939834334e9e4d02fb4a4723d69a081', 111, 2, NULL, '[]', 0, '2019-04-04 17:48:31', '2019-04-04 17:48:31', '2019-04-19 13:48:31'),
('0f27885f50e3855ed1705d4d51be34120f2fee16631ce47b2ff06b75a584e5aa9ec9103e3e11d208', 116, 2, NULL, '[]', 0, '2019-04-05 10:05:06', '2019-04-05 10:05:06', '2019-04-20 06:05:06'),
('fc258d48feb391c25808e9886aabee547e73fdf869a00fc9892da05d2657c38de826ac5abda63abd', 117, 2, NULL, '[]', 0, '2019-04-05 17:14:23', '2019-04-05 17:14:23', '2019-04-20 13:14:23'),
('1a03ad24c75ed3a07ac96e279e9c9105dc45ae1fb61a55f7b2a76cbc5abd7bcb8ddcab48a12cba9c', 117, 2, NULL, '[]', 0, '2019-04-05 17:38:41', '2019-04-05 17:38:41', '2019-04-20 13:38:41'),
('acadef34545bf8cad827f64a4790f39271c3e4452eacfab3de3fa3f1f3b99c0ce99d0f23f402f59e', 117, 2, NULL, '[]', 0, '2019-04-05 17:38:44', '2019-04-05 17:38:44', '2019-04-20 13:38:44'),
('9c88460cbecd5e38b66bc5c88a358d5ba91844579705200bfbd70b9a2fd3f6bd4e1f8ee6b385b204', 118, 2, NULL, '[]', 1, '2019-04-06 07:46:22', '2019-04-06 07:46:22', '2019-04-21 03:46:22'),
('9f60caef656b718dc4ee954bcda1ee589a9393ef19aa77ac5c28932956b679dcd212cd198b517096', 113, 2, NULL, '[]', 1, '2019-04-12 22:56:17', '2019-04-12 22:56:17', '2019-04-27 18:56:17'),
('c544bcdd05d380e2ef4a14ca2e4a4e433176e2d74d4b660b272ea6e3ad66898f93da70a3433dcd9a', 113, 2, NULL, '[]', 0, '2019-04-12 22:56:20', '2019-04-12 22:56:20', '2019-04-27 18:56:20'),
('8740a0336c6fffe1a408eeb6da0b35f00900856950d8460c33e6832698c8b25a8df60baa156b3802', 119, 2, NULL, '[]', 0, '2019-04-15 13:19:25', '2019-04-15 13:19:25', '2019-04-30 09:19:25'),
('561aad1b9a23de1499e2d8ed1927a8f44066aa84cab0a1c3b77a270cceb8b4bab7bd02aebec73abd', 114, 2, NULL, '[]', 0, '2019-04-15 16:28:55', '2019-04-15 16:28:55', '2019-04-30 12:28:55'),
('5326b02e8c7f952a16d9b0264c96aecd714f126693eb59a2303dba8ec43c2387a5291468b0f06fee', 114, 2, NULL, '[]', 1, '2019-04-15 18:44:43', '2019-04-15 18:44:43', '2019-04-30 14:44:43'),
('6abff5382249848f574593b38ed347d28a568989550fe65356aaba5cddfa1c7d12dd35c75bd01ea3', 111, 2, NULL, '[]', 0, '2019-04-23 21:31:45', '2019-04-23 21:31:45', '2019-05-08 17:31:45'),
('2df0a773948747e90f4dca219d6644aa4ed14bb22a9a22198c63b1f77ae20ecf2b318692bcc24d43', 120, 2, NULL, '[]', 0, '2019-04-23 23:14:54', '2019-04-23 23:14:54', '2019-05-08 19:14:54'),
('bf1456227911b260b2ccae03cb95408d1720a000155895070c00cddf7b94f3b15e25d0b32629d7b0', 111, 2, NULL, '[]', 0, '2019-04-25 08:38:17', '2019-04-25 08:38:17', '2019-05-10 04:38:17'),
('19e77d073ff00dc5462fb5a26b2452fae7e4b76a4b1a78da74148adcd15064d0be5e9d9ac85d8bad', 121, 2, NULL, '[]', 0, '2019-04-25 08:46:40', '2019-04-25 08:46:40', '2019-05-10 04:46:40'),
('95afc6acd627105b876795e5ec242547a2f9ee458bf1e0380035063bc537d61c46ffe59bfc0259a6', 121, 2, NULL, '[]', 0, '2019-04-25 15:52:16', '2019-04-25 15:52:16', '2019-05-10 11:52:16'),
('738c0c4fc8a4881fcfb27d709ecfd97d387e825c1091895ad214d726d7d9233353112340a8df2fe4', 122, 2, NULL, '[]', 0, '2019-04-25 18:13:29', '2019-04-25 18:13:29', '2019-05-10 14:13:29'),
('b7e1226d80407eb2986ffc6ee6cfc3c23fe04dc30fe78523bfdf98c20d5b94d8dda845ec4a218d61', 118, 2, NULL, '[]', 1, '2019-04-26 06:37:48', '2019-04-26 06:37:48', '2019-05-11 02:37:48'),
('d4e05539c423a60bd3c9e189e52bfd115e703991acafcda483e3456f3740090c501112940de32061', 118, 2, NULL, '[]', 0, '2019-04-26 06:37:51', '2019-04-26 06:37:51', '2019-05-11 02:37:51'),
('af150e44f6e7e57dcd8e3208885b3ecdab6d69fbc15bc40357ff74493b28811c8b88a32f078c596c', 123, 2, NULL, '[]', 0, '2019-04-26 09:02:47', '2019-04-26 09:02:47', '2019-05-11 05:02:47'),
('a0a31c9431ab25818792b6b085d82822279b9bd3d52af920cd3e4e05b7e6415bb56ea5e8c2950fe5', 123, 2, NULL, '[]', 0, '2019-04-26 09:02:51', '2019-04-26 09:02:51', '2019-05-11 05:02:51'),
('8b0beae0ff523874ba5569d19809fb6f1e61666bf9b2df62f35ebb66db09cd458b77b5ead45bd48e', 124, 2, NULL, '[]', 0, '2019-04-26 11:26:01', '2019-04-26 11:26:01', '2019-05-11 07:26:01'),
('5dbad02313d78663b046f5853a606056642e180171ec414256a93e866929493bbe1d2edcdc535482', 125, 2, NULL, '[]', 0, '2019-04-26 13:34:33', '2019-04-26 13:34:33', '2019-05-11 09:34:33'),
('7e9fe0850a8577174cf3d86a7247daaf6e40678467d5400427db138367eb39e9e2bcfb3fe79eb6bc', 126, 2, NULL, '[]', 0, '2019-04-26 13:53:31', '2019-04-26 13:53:31', '2019-05-11 09:53:31'),
('ed3b97d1f2e1d79ed295810ef367174fd8503b353bbb053db72c1aca80e3b296ea36f2898f87c7f6', 127, 2, NULL, '[]', 0, '2019-04-26 13:56:47', '2019-04-26 13:56:47', '2019-05-11 09:56:47'),
('4215a52a22f0085111be464f229ba839972e83d4d6f73dc23c6c14fa51d65d2f79ec15078820f2c4', 128, 2, NULL, '[]', 0, '2019-04-26 13:57:19', '2019-04-26 13:57:19', '2019-05-11 09:57:19'),
('c8f75626b738e05ec64628c8d961851b8ae2e517d8a734c2ea7fab8b730e62955f45ead986cac3d0', 117, 2, NULL, '[]', 0, '2019-04-26 18:54:48', '2019-04-26 18:54:48', '2019-05-11 14:54:47'),
('e6be8cd04d5fd8a9a156303438b388f40d6236cb8964dded3c38c9a0399cac05da44719d2604c263', 129, 2, NULL, '[]', 0, '2019-04-26 19:26:07', '2019-04-26 19:26:07', '2019-05-11 15:26:06'),
('177b47fc44b3e00bea105920fc1fe131a5e1d3f15cc99dc0be221b79cd2b586115253ef99b57a817', 130, 2, NULL, '[]', 0, '2019-04-28 16:43:17', '2019-04-28 16:43:17', '2019-05-13 12:43:17'),
('23525ff867c7236f9f26eb360bdded1a10d6d7daf167fd16b2eb3ca12102e35a22fbc4c181f2e93a', 131, 2, NULL, '[]', 0, '2019-04-29 18:04:41', '2019-04-29 18:04:41', '2019-05-14 14:04:41'),
('162d544b3c58e0f7ae97e2ea1af9ef40c3612f2dc94a772a58fb0fa197468975cb13ea75c4beba0c', 132, 2, NULL, '[]', 0, '2019-05-01 16:10:19', '2019-05-01 16:10:19', '2019-05-16 12:10:19'),
('d522d858428262e32b1deed1f9aef9142488de1bcd2ac6f8f4bed2218f1cbf0a0539fbb1add7464c', 114, 2, NULL, '[]', 0, '2019-05-01 18:02:29', '2019-05-01 18:02:29', '2019-05-16 14:02:29'),
('9842a584bc8a9929d3ccca6adf8e0d97cc3ea56e8d2b4eb4d7e6fc85d1b99437a60317fe582c6632', 113, 1, 'socialLogin', '[]', 0, '2019-05-03 22:11:21', '2019-05-03 22:11:21', '2029-05-03 18:11:21'),
('556f9ce64d567702ff7b44025ac37324d38c6eeb4b810013a77ef649988e740e1e4d5f1cfc37c324', 133, 2, NULL, '[]', 0, '2019-05-04 06:46:23', '2019-05-04 06:46:23', '2019-05-19 02:46:23'),
('7375ef6b1251c6425b2d9da344a3b76583dcfb37ccee522468c3e83fe5ae0106bc52d1cee10c9ef0', 134, 2, NULL, '[]', 0, '2019-05-04 07:06:54', '2019-05-04 07:06:54', '2019-05-19 03:06:54'),
('772461d4ec1c1a23f1072faa97a64076e6a4f00b4cbbcfbc10599a17f7a78b28009f40d0566d19c5', 135, 2, NULL, '[]', 0, '2019-05-14 22:20:54', '2019-05-14 22:20:54', '2019-05-29 18:20:54'),
('f681035782cc08b907f5fb9fb7e1a1af49fdbea969a41db3303e4a97a5e0f2cb8fb5f05171cd7529', 136, 2, NULL, '[]', 1, '2019-05-15 05:13:49', '2019-05-15 05:13:49', '2019-05-30 01:13:49'),
('90bfd91862acb6a01de8fb6c2b47b2469417cff4979ed014b09e692b7332893b2735cd536d222084', 137, 2, NULL, '[]', 0, '2019-05-15 06:01:12', '2019-05-15 06:01:12', '2019-05-30 02:01:12'),
('6b8eabfeed53618b434d66925f7ee826552e62f0662c5f2dcaeb18f48a2583d79e17f07731f3f7bf', 138, 2, NULL, '[]', 0, '2019-05-19 00:33:39', '2019-05-19 00:33:39', '2019-06-02 20:33:39'),
('c378f9699c1876658f43bf6c2487ed4475df1c6f54a2a8174b82277fcb2bf5a748152f8907993282', 140, 2, NULL, '[]', 0, '2019-05-30 07:28:00', '2019-05-30 07:28:00', '2019-06-14 03:28:00'),
('9157594cb6dc76544c32b2a96e67613fc9e3fbe5dd68a9a426f2fdc47b0acda404ae063566118231', 136, 2, NULL, '[]', 0, '2019-06-04 22:12:30', '2019-06-04 22:12:30', '2019-06-19 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AfridiCab Personal Access Client', 'g56qa5FfNpOBCVyHav1VZPR122dMfG0ANLeUp6TZ', 'http://localhost', 1, 0, 0, '2019-03-27 16:51:36', '2019-03-27 16:51:36'),
(2, NULL, 'AfridiCab Password Grant Client', 'WX2IZR5Yi6gpZ3ajSJ4meKik3R0K1z2vomJVc2Qw', 'http://localhost', 0, 1, 0, '2019-03-27 16:51:36', '2019-03-27 16:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-27 16:51:36', '2019-03-27 16:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('ea3897826d3719eb39fc95742c9915a766843f98abb05556e522bc564d7ac02b47f8e999146a4fd5', '0ac1fd9087351a94f9a39acd7a8b6797441867b0ca9fc7073b8d31c502ce1df0656c7a4782b7c2af', 0, '2019-06-25 13:48:53'),
('b674e340b80b34fb94082528baf518f6c960ff42075c2139bf57c0e83dd3dd8a731f8034058af07f', '1bf4607ea8496a5aa8b44fdadbdc90db1a658a3ad0d5d7d16758cac93292a400ab33afb711c1549b', 0, '2019-06-25 15:41:28'),
('d68ccf1ebbf997f1ac79c4a0fcd306363ea03908e2396831cb4594a18c6e4d8f196d53c4b1041d93', 'c414b03a672cfb39c0288269c3b2d1225073e289fda4bfbc2c163e5041f65e6cb950c2a5c942d865', 1, '2019-06-25 17:00:54'),
('2bc86f5c68bcd2562fe3cb1aab1db65ac070980decaa66155b02a6ef52d016ef74f8da9dac68a9c8', 'f46750391d3e2d3d0e5f78c6edc693e28bf30c36c430a387f78709d30677e779bc5bd5091b708b67', 0, '2019-06-25 17:11:34'),
('eef9858b1b47110799b4cade705f83ff19795d3b3e9ceaf2b826e8c85064211916e96eac68eda04a', '78c0fd2a9ace751d21e907282d39ebf76f3f96c39078236ac18397d36be127ae7ae247e90a8d30cc', 0, '2019-06-26 09:01:35'),
('ea7318256941494c17489feed783df0c6907187b97c1d32d9339cb98e33f6b172c9a99af22dff29b', 'a2c15010277353d8863dbaab0d1b57fb96ded1e109e81359883b91f8a0ff925344b4687a35764f72', 1, '2019-06-26 09:21:43'),
('23117ca35b516cc9160bf67bdebe6d0a141e6a61ddcfea8bb3a6cadba77531300512a6fbc7c157f3', '4c59a1778cbcedb19a51fc66c2f8c6cc1e2cf695c046aa4fe658f5b87bb33dfe31edaabd4a34e15f', 0, '2019-06-29 05:42:37'),
('3e66159dc16a9c3eab7b492467a081adb633d645946674e0e63bbd419a27042feb4738d3f9035b57', '802eb46c1b75bcd773e345ac4dd07b470bbbc0bd1233c0a907914c1fbb2510cd03b7e2d67d28da4c', 0, '2019-07-02 14:41:32'),
('1d38f40a3db6e6446de619ca1515595bf259dc80e7356f7250a3553f33771653000a68a4bbaa9e44', '313457603fb385e61735f7e0b82d218c781657b5a2538d505939834334e9e4d02fb4a4723d69a081', 0, '2019-07-03 13:48:31'),
('18eab6dded8831fc09c0cb64aefedd175816d42605ca3a639b96e5313c5d193e9ce24b8d73504e1b', '0f27885f50e3855ed1705d4d51be34120f2fee16631ce47b2ff06b75a584e5aa9ec9103e3e11d208', 0, '2019-07-04 06:05:06'),
('fd7ba1491949c82f17bbae41ba75626ec6483330662ad01187636693d2db33a66c3cad32488b3f13', 'fc258d48feb391c25808e9886aabee547e73fdf869a00fc9892da05d2657c38de826ac5abda63abd', 0, '2019-07-04 13:14:23'),
('d411c3c5a8fcc1ed6585c2ea712e33d2bda25851afc20fef4e8ed70ec650fe0210d9a8e8cb39abd8', '1a03ad24c75ed3a07ac96e279e9c9105dc45ae1fb61a55f7b2a76cbc5abd7bcb8ddcab48a12cba9c', 0, '2019-07-04 13:38:41'),
('adc6ba982c6dccf9006432342c4dd56e61dfdddc36a98641fc45d44cb11bd98f6c5640caff4f8099', 'acadef34545bf8cad827f64a4790f39271c3e4452eacfab3de3fa3f1f3b99c0ce99d0f23f402f59e', 0, '2019-07-04 13:38:44'),
('24377d735e8210eb54a2cfa36fff02a68533db5d62824de375158b2af048ea9142cd9fb4d17fc52f', '9c88460cbecd5e38b66bc5c88a358d5ba91844579705200bfbd70b9a2fd3f6bd4e1f8ee6b385b204', 1, '2019-07-05 03:46:22'),
('a4ee8d0295f35a4bb5838ba1e996ee0fe9a97f7c2641c18c41ed3bacfa21ea25c96bbb0e5240be94', '9f60caef656b718dc4ee954bcda1ee589a9393ef19aa77ac5c28932956b679dcd212cd198b517096', 1, '2019-07-11 18:56:17'),
('f3eeb157c06abb4e8432ae755fc3499961be51add3239dd18fbf437d48f43e495de848151799c628', 'c544bcdd05d380e2ef4a14ca2e4a4e433176e2d74d4b660b272ea6e3ad66898f93da70a3433dcd9a', 0, '2019-07-11 18:56:20'),
('5e63d29fb36b1514ec3e3f0df8ddcf734d142dd208de7b53325a0cc3436142259c98d1b31ec323b6', '8740a0336c6fffe1a408eeb6da0b35f00900856950d8460c33e6832698c8b25a8df60baa156b3802', 0, '2019-07-14 09:19:25'),
('0eb9fc6a7bed8159b2627363b902398c90d6b580886947bc9b33ccd9a0b747f9140b6be682a806fa', '561aad1b9a23de1499e2d8ed1927a8f44066aa84cab0a1c3b77a270cceb8b4bab7bd02aebec73abd', 0, '2019-07-14 12:28:55'),
('92d6dece4763c7ba3ce52149ba0fafef5f99339316b1913ed8685d4492d1c6a17b5be508fd8403bf', '5326b02e8c7f952a16d9b0264c96aecd714f126693eb59a2303dba8ec43c2387a5291468b0f06fee', 1, '2019-07-14 14:44:43'),
('1ac4d1f8287d18ab46ab13f0e06fb29cec5ac87be97b6f3ac8815f8a564e6e815b9017fec8411a9f', '6abff5382249848f574593b38ed347d28a568989550fe65356aaba5cddfa1c7d12dd35c75bd01ea3', 0, '2019-07-22 17:31:45'),
('1f5e417187879a8d609adbf75cd36031402a32ffa92a6535e9c2ed683ab24c4bc264c3571175e0f2', '2df0a773948747e90f4dca219d6644aa4ed14bb22a9a22198c63b1f77ae20ecf2b318692bcc24d43', 0, '2019-07-22 19:14:54'),
('0367e31c728643e9aa87c0c67622f584cd92a14dfa8db42d56f69b9bd779a456ede05f1e160c8ba8', 'bf1456227911b260b2ccae03cb95408d1720a000155895070c00cddf7b94f3b15e25d0b32629d7b0', 0, '2019-07-24 04:38:17'),
('72712973a494ccfeada2e458cf51dbb9f20e9aad2c0197c45d461dccc15dc67dd3c0f670683d8313', '19e77d073ff00dc5462fb5a26b2452fae7e4b76a4b1a78da74148adcd15064d0be5e9d9ac85d8bad', 0, '2019-07-24 04:46:40'),
('6531767ec6edaffd67ae96c81e2136f9a5a410eb3cc406c167fdad2bd802a73d9bc54992eb3244fa', '95afc6acd627105b876795e5ec242547a2f9ee458bf1e0380035063bc537d61c46ffe59bfc0259a6', 0, '2019-07-24 11:52:16'),
('9587124cb96bf06f33f0bc953a6079d6e002d24b4b9c9f2dcfb35d25333084e5908ec48b7fe50632', '738c0c4fc8a4881fcfb27d709ecfd97d387e825c1091895ad214d726d7d9233353112340a8df2fe4', 0, '2019-07-24 14:13:29'),
('f53f8992b2cb9bdb6ca1019f859510697f5fef5f30615fac80253cd0923d135d66c4778cd8708a79', 'b7e1226d80407eb2986ffc6ee6cfc3c23fe04dc30fe78523bfdf98c20d5b94d8dda845ec4a218d61', 1, '2019-07-25 02:37:48'),
('7c71e3917f9b1bb0f1c39c37f5b2f20d7293ed1b2e55c407491192da380ab56053772b0789503006', 'd4e05539c423a60bd3c9e189e52bfd115e703991acafcda483e3456f3740090c501112940de32061', 0, '2019-07-25 02:37:51'),
('a718db5e7dd887527abb007576936d371bcebd6ac7ddfd669fbf9863fd1035772fab2c1ec9b45b97', 'af150e44f6e7e57dcd8e3208885b3ecdab6d69fbc15bc40357ff74493b28811c8b88a32f078c596c', 0, '2019-07-25 05:02:47'),
('25665327b8d23ffcf0977403eeec4c66f8beb7371efa33271d29cb5ee4025760c96b4d1c6eaf2a01', 'a0a31c9431ab25818792b6b085d82822279b9bd3d52af920cd3e4e05b7e6415bb56ea5e8c2950fe5', 0, '2019-07-25 05:02:51'),
('86a4f1bca3f36cbe9042836faaba8b2cb45b009343ef245b24bac08163c94f885064a7b9c0f9dc12', '8b0beae0ff523874ba5569d19809fb6f1e61666bf9b2df62f35ebb66db09cd458b77b5ead45bd48e', 0, '2019-07-25 07:26:01'),
('0ce4e5a7ac2c25a135db222fd814e90899572152d3350bf3165424212a8114a011c168d6b7a97a55', '5dbad02313d78663b046f5853a606056642e180171ec414256a93e866929493bbe1d2edcdc535482', 0, '2019-07-25 09:34:33'),
('7fed7c7fe1fddd41e8c5bd1752224f170a4f380fdd244cdd9d8384cda708bd1fff4f53752d37c6e7', '7e9fe0850a8577174cf3d86a7247daaf6e40678467d5400427db138367eb39e9e2bcfb3fe79eb6bc', 0, '2019-07-25 09:53:31'),
('859959af6058a71ae8dad88fa496bf7b1d48b9b43c9c119b465b1cc3a485d831bc7d24ea6c92931f', 'ed3b97d1f2e1d79ed295810ef367174fd8503b353bbb053db72c1aca80e3b296ea36f2898f87c7f6', 0, '2019-07-25 09:56:47'),
('b1845556f3cb619a6b7af744716e6afb46cb4d72c5ccd29f3465af3d540c010cd881376f8cc00863', '4215a52a22f0085111be464f229ba839972e83d4d6f73dc23c6c14fa51d65d2f79ec15078820f2c4', 0, '2019-07-25 09:57:19'),
('524d12598bb5d89ad50202edd7d89960121b6d51256f4d30fdfcab00805c4a023691f2470e4ad904', 'c8f75626b738e05ec64628c8d961851b8ae2e517d8a734c2ea7fab8b730e62955f45ead986cac3d0', 0, '2019-07-25 14:54:47'),
('cda7592b9f77e6eeeb89497af4bd572d1ae86b13de016d84daf78c1880eaabac02ecc1d7022356a7', 'e6be8cd04d5fd8a9a156303438b388f40d6236cb8964dded3c38c9a0399cac05da44719d2604c263', 0, '2019-07-25 15:26:07'),
('d2125f34e87f9cd4374543614954b71bab000292eafc2078ae14785bebdd87fe92a1ab52cb842699', '177b47fc44b3e00bea105920fc1fe131a5e1d3f15cc99dc0be221b79cd2b586115253ef99b57a817', 0, '2019-07-27 12:43:17'),
('f1615eeaa5f7e3638e79f8cda0f44acedbdf6e8bc2d3b996aeab64d8e757c53dd2a1ae4df9f7ea50', '23525ff867c7236f9f26eb360bdded1a10d6d7daf167fd16b2eb3ca12102e35a22fbc4c181f2e93a', 0, '2019-07-28 14:04:41'),
('d52becba8cf41d2bc9a019897b0980e7687b74063c309780efba61c5176938cc0e6e0c40bc1f8906', '162d544b3c58e0f7ae97e2ea1af9ef40c3612f2dc94a772a58fb0fa197468975cb13ea75c4beba0c', 0, '2019-07-30 12:10:19'),
('4507c16afa44d3afcd0dc868e1b887d8c3769192bfd466ff7e6b667b392aee5cb9277b55bc8f9206', 'd522d858428262e32b1deed1f9aef9142488de1bcd2ac6f8f4bed2218f1cbf0a0539fbb1add7464c', 0, '2019-07-30 14:02:29'),
('062dac0563074d6db878ed2cb7c3b4697efc08e025a822a7642c425165afccd1af28e7a50cae6e1f', '556f9ce64d567702ff7b44025ac37324d38c6eeb4b810013a77ef649988e740e1e4d5f1cfc37c324', 0, '2019-08-02 02:46:23'),
('174d1322326bea632c78ec2a73fa932dbeb0044f76155d04e0d88072cd378d2d875a3a0e05f0bc95', '7375ef6b1251c6425b2d9da344a3b76583dcfb37ccee522468c3e83fe5ae0106bc52d1cee10c9ef0', 0, '2019-08-02 03:06:54'),
('45f76354ee5846d98c92485fe3dd3e9cf0191ba2413a7a3b6d0352cd097676f0963553719bc7ee1a', '772461d4ec1c1a23f1072faa97a64076e6a4f00b4cbbcfbc10599a17f7a78b28009f40d0566d19c5', 0, '2019-08-12 18:20:54'),
('a480622901dc3845bc26f77189d9d737450b4e40e65577a71f58aa8d23757cc000b07750c9b5a4e2', 'f681035782cc08b907f5fb9fb7e1a1af49fdbea969a41db3303e4a97a5e0f2cb8fb5f05171cd7529', 1, '2019-08-13 01:13:49'),
('3def030f47b71aefe24aa64aab00753eb3cc35ba1cbab8ddaa497aba00c0b47f9c988d509e7103b7', '90bfd91862acb6a01de8fb6c2b47b2469417cff4979ed014b09e692b7332893b2735cd536d222084', 0, '2019-08-13 02:01:12'),
('36cf86eaa24335220e8e7ee02744ea3115c629651d682f565327f641ab0fc460fcb680adfeab0abd', '6b8eabfeed53618b434d66925f7ee826552e62f0662c5f2dcaeb18f48a2583d79e17f07731f3f7bf', 0, '2019-08-16 20:33:39'),
('208db2c7ba494e25cc2de370d0857d9e74006787637c02cbb742668f08bd18673aef3dd0a5d723ac', 'c378f9699c1876658f43bf6c2487ed4475df1c6f54a2a8174b82277fcb2bf5a748152f8907993282', 0, '2019-08-28 03:28:00'),
('e752c547998852ebc90f6ac38e2d0673e77b59153f11c74ded1c2b5ca8946fcac90d5415e7b10be1', '9157594cb6dc76544c32b2a96e67613fc9e3fbe5dd68a9a426f2fdc47b0acda404ae063566118231', 0, '2019-09-02 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shakeelgujjar.qau@gmail.com', 'd006b4e9c8725bb8483cb885d92695212c032d45a18b9e494f41f4a09152f620', '2019-05-03 23:52:50'),
('gustavo@oha.com.ar', 'aa471530f941b5002db5f1b02aa67ec45b69feabe4c046fcbbae6b051629c467', '2019-05-18 19:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` int(10) UNSIGNED NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('percent','amount') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'percent',
  `expiration` datetime NOT NULL,
  `status` enum('ADDED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_passbooks`
--

CREATE TABLE `promocode_passbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promocode_usages`
--

CREATE TABLE `promocode_usages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `promocode_id` int(11) NOT NULL,
  `status` enum('ADDED','USED','EXPIRED') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MALE',
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `status` enum('onboarding','approved','banned') COLLATE utf8_unicode_ci NOT NULL,
  `fleet` int(11) NOT NULL DEFAULT 0,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`id`, `first_name`, `last_name`, `email`, `gender`, `mobile`, `password`, `avatar`, `rating`, `status`, `fleet`, `latitude`, `longitude`, `otp`, `remember_token`, `created_at`, `updated_at`, `login_by`, `social_unique_id`) VALUES
(124, 'Denise', 'Zalazar', 'den.zalazar@gmail.com', 'MALE', '+542615398915', '$2y$10$eturnC4I6XAJF1yKfQHbT.4KCes5pAUJaHc31MQGT4w6eX4q6FzDe', NULL, '5.00', 'onboarding', 0, NULL, NULL, 0, NULL, '2019-05-30 00:36:24', '2019-05-30 00:36:24', 'manual', NULL),
(122, 'Marcelo Maurin', 'maurin (S.Gonzalez)', 'marcelo.maurin@com.ar', 'MALE', '1166665555', '$2y$10$x6/dHd0gT8yvKXO8n803.eHTWDI6Slw3zmz8UWEnn6wHHQoNx2HKO', 'provider/profile/52ab252f66efd19a2dc82253d281b59e.jpeg', '5.00', 'approved', 2, NULL, NULL, 0, NULL, '2019-05-19 22:12:58', '2019-05-30 00:18:10', 'manual', NULL),
(123, 'shakeel', 'Ahmed', 'shakeelgujjar12@gmail.com', 'MALE', '+923036781757', '$2y$10$4UpWXJVUVZ6XjVRYIkDnuO0g4bqH7Bbytx0uqOte1MQudXpPLE82u', NULL, '5.00', 'approved', 0, 33.63999200, 73.03967630, 0, 'VpZMD6Ult2jmxRhukDrSSKWukm8T4twWt0jj4wTQRbMtcUj0mAxaaiGfgSVc', '2019-05-30 00:12:09', '2019-05-30 00:21:11', 'manual', NULL),
(121, 'Rubén', 'Zalazar', 'hotelsahara@oha.com.ar', 'MALE', '2255602628', '$2y$10$crbBMyt.yfkvFyv46d1pS.7dgBvtMdAMItUf.5HEZ8qwicJmyQE/G', 'provider/profile/4ccae404d2657ba642ac5819716f0591.png', '3.00', 'approved', 0, -34.57779460, -58.64243670, 719312, NULL, '2019-05-18 19:45:21', '2019-05-19 20:23:18', 'manual', NULL),
(120, 'Ariel', 'Matías Villalba', 'arielmvillalba@gmail.com', 'MALE', '541165390836', '$2y$10$SfL9tn5uMJZaMWYLt5h0VOtRIS30NSxn7BT4e/4mtc9Pi9nFO3SjS', 'provider/profile/4ec431371572f935dd9066a42e0e224d.jpeg', '5.00', 'approved', 0, -34.66123910, -58.78637920, 0, NULL, '2019-05-18 04:40:38', '2019-05-25 19:27:24', 'manual', '10219188530128111');

-- --------------------------------------------------------

--
-- Table structure for table `provider_devices`
--

CREATE TABLE `provider_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `udid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sns_arn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_devices`
--

INSERT INTO `provider_devices` (`id`, `provider_id`, `udid`, `token`, `sns_arn`, `type`, `created_at`, `updated_at`) VALUES
(1, 111, '18fc71fd1bd1ba79', 'dm01lj3QebM:APA91bH-BRchHXJqa4fphLt3cX9Amdig_mgkG3FJU-N1iQlWNYXm2mUq7GLwqJGEQMr40pIB6pkyTms_cF1xaWHLs_mdZWtogfNmgp2tg6jcgiWksVVn80DG6fbol2LWTDhTJ6BhdBtP', NULL, 'android', '2019-03-28 12:55:13', '2019-03-28 12:59:50'),
(2, 112, 'fcf661d521369bb6', 'fZj3v8hwjFo:APA91bFnENBhkdIkJdYXlQCkWqQc9Z2tJy70ASgxK35LpOyeO552JEKen3_SKmvGhfpdms3wjw4o5hNwtb98BBOyG2-wL7TvyHT1lQeHvSEZLfkrEvYvpXT_Mse4A0FTtGQQexWxo3ZD', NULL, 'android', '2019-03-28 13:38:11', '2019-04-26 13:57:50'),
(3, 113, '18fc71fd1bd1ba79', 'eA-m434nEQk:APA91bFfLL11ODK7Jn0D0y1dqSKAcF30XeV03cYdTXcUUVmGMq413MjRdLDOWhj_ufqs6kj4mF1Y7wD-oMMm367-cSFNpWeAACv6U49A90r3KpEiMp2E5_Ka3i-wWCo0XcKZyW30ZEE_', NULL, 'android', '2019-04-10 10:05:48', '2019-04-26 14:24:39'),
(4, 114, 'b46cfd055e645145', 'f54dRlu5YCA:APA91bHSx6nH1KamuAO2TI-H56UEzBiJvfiOEKpn9N3F3bBG4ahRmI3o-CmDLxL2JhYepFexaqFCrtOrgymo4OjHWMgqA37jAXNnCGhwN18kkfKZmpMC9jO5t4O504_-dBJFVe-Yzryp', NULL, 'android', '2019-04-15 16:49:32', '2019-04-15 16:49:33'),
(5, 115, '438a9400ca9c9d43', 'c57p9UekqZ0:APA91bEloMMspO9mH2JhefYy-mT0Yg1qrCGciVfR9ain5PWx1UVoObwgdvX5RxsmD71Q9sfkwvy0kMzcAmafNNNW5lKbJbK7Set4ZxfpXHjhRc9G8DaySyLreGBdQy1q9bjc9wb6iwwE', NULL, 'android', '2019-04-15 17:13:43', '2019-04-15 17:13:44'),
(6, 116, '4d60fef9a493882d', 'ey-iyYfWiTg:APA91bEJAKfNJc9EKcn-epaROIUNZbUYgO4FrYtCKNvOkx2UhDhKuq0LAztL-IwacmepRQ0-j48GB9m6ahkLpOmvgs417ulj1z8B1vwUg0nKfZskL0I4jG4R9l61zUdCJjBPwN6k_QME', NULL, 'android', '2019-05-01 16:18:36', '2019-05-01 16:20:17'),
(7, 117, 'cb7e21f01dfd9ea2', 'dECG2s67wy0:APA91bEDkRV5ynQRzcnwMhCts9a6g7YPXPszCtOVrVuA-VvYb5W8MqmGPGtxv3PSY2t10JI-kKDzZU7Ur2OClMJ4HjCsRSnbPq6KORVPfR2JxOEteb8cZbsmJJagAH7yqVYQeF3H1ehn', NULL, 'android', '2019-05-03 22:21:45', '2019-05-03 22:21:46'),
(8, 118, '27bdcdd73abd3ef7', 'c2spFeqEJN0:APA91bFDuAd4ehPVFx3kZmtoeQv2-AIly_vPx9Pn7hAIbJgSlTYWGxmlSLVTyCnNlrziT9oQxbEt8ubbpaPHXsaRF4O8TIMRdbqUdLflEgRZJCORigMurSINuK8eCPskl3hGj0vlbi9Q', NULL, 'android', '2019-05-04 07:10:41', '2019-05-04 07:10:42'),
(9, 119, 'cb7e21f01dfd9ea2', 'dm15JzIQ6KY:APA91bE7ybxSw5DqxZvOw6O44KA57q9HKObo_0_UI3nCiYcPELlNl6EghpVRG3p9FAk-Fk7IhIgWAL3SUIy93aCEC52EdGJZmPPNftUMRsrN0hpSHQ1UwBPc_zl2sxeCtpKwvdSsax9M', NULL, 'android', '2019-05-14 23:01:46', '2019-05-15 00:24:00'),
(10, 120, 'cfc4208ac10279ae', 'eUp5dF4Z3_c:APA91bH7OqSvV5prhpANri0oo0_rxsPF2-W6op7yIoEg1OXRD4i-BM-yc_WCLd8SHo3iM1_qX3WNxsSPTbooHfWbU_eO0qUNbw_yPsTuNuCjtfjA7u5DtE2OqxhGe_Y4lYFPJJIU45IJ', NULL, 'android', '2019-05-18 04:40:38', '2019-05-18 04:40:38'),
(11, 121, '39a339261a44794a', 'fpFv6cXif9Y:APA91bGtK2OWxstujSj1taFcz2Kn6QHIVYdcUBDoVH0Nc5IfgfSIyYMPq5EqsHIA082CVyCnkWlKvsXdnzUE8Z5CVyTxhsmb56ndWch94eUfeQpPJGQbFmXYR_WFu5V0RzwUBV_4tQSo', NULL, 'android', '2019-05-18 19:45:21', '2019-05-18 20:52:03'),
(12, 123, 'cb7e21f01dfd9ea2', 'dm15JzIQ6KY:APA91bE7ybxSw5DqxZvOw6O44KA57q9HKObo_0_UI3nCiYcPELlNl6EghpVRG3p9FAk-Fk7IhIgWAL3SUIy93aCEC52EdGJZmPPNftUMRsrN0hpSHQ1UwBPc_zl2sxeCtpKwvdSsax9M', NULL, 'android', '2019-05-30 00:13:56', '2019-05-30 00:13:56'),
(13, 124, 'e140a2393e249f2e', 'e1u17EkytYg:APA91bFznurVw0XDqO1Y0BHzWsgT8NortgKdUO8zkw-6jjd9HEZc_6_4ZwAl5rJ3JhrGaJ5yUIYSvsvv6_EKL5OndMI3kAg-SfGVmIhT8-ktvQWOJXsMgfABTEy5WKdqRVP9QciUT6t2', NULL, 'android', '2019-05-30 00:36:24', '2019-05-30 00:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `provider_documents`
--

CREATE TABLE `provider_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('ASSESSING','ACTIVE') COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_profiles`
--

CREATE TABLE `provider_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_secondary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_profiles`
--

INSERT INTO `provider_profiles` (`id`, `provider_id`, `language`, `address`, `address_secondary`, `city`, `country`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 118, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-04 07:18:21', '2019-05-04 07:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `provider_services`
--

CREATE TABLE `provider_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('active','offline','riding') COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider_services`
--

INSERT INTO `provider_services` (`id`, `provider_id`, `service_type_id`, `status`, `service_number`, `service_model`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(2, 2, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(3, 3, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(4, 4, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(5, 5, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(6, 6, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(7, 7, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(8, 8, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(9, 9, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(10, 10, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(11, 11, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(12, 12, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(13, 13, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(14, 14, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(15, 15, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(16, 16, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(17, 17, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(18, 18, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(19, 19, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(20, 20, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(21, 21, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(22, 22, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(23, 23, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(24, 24, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(25, 25, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(26, 26, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(27, 27, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(28, 28, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(29, 29, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(30, 30, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(31, 31, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(32, 32, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(33, 33, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(34, 34, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(35, 35, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(36, 36, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(37, 37, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(38, 38, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(39, 39, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(40, 40, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(41, 41, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(42, 42, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(43, 43, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(44, 44, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(45, 45, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(46, 46, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(47, 47, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(48, 48, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(49, 49, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(50, 50, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(51, 51, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(52, 52, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(53, 53, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(54, 54, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(55, 55, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(56, 56, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(57, 57, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(58, 58, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(59, 59, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(60, 60, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(61, 61, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(62, 62, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(63, 63, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(64, 64, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(65, 65, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(66, 66, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(67, 67, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(68, 68, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(69, 69, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(70, 70, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(71, 71, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(72, 72, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(73, 73, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(74, 74, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(75, 75, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(76, 76, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(77, 77, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(78, 78, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(79, 79, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(80, 80, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(81, 81, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(82, 82, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(83, 83, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(84, 84, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(85, 85, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(86, 86, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(87, 87, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(88, 88, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(89, 89, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(90, 90, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(91, 91, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(92, 92, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(93, 93, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(94, 94, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(95, 95, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(96, 96, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(97, 97, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(98, 98, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(99, 99, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(100, 100, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(101, 101, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(102, 102, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(103, 103, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(104, 104, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(105, 105, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(106, 106, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(107, 107, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(108, 108, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(109, 109, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(110, 110, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(111, 110, 1, 'active', '4ppo3ts', 'Audi R8', '2019-03-27 16:44:24', '2019-03-27 16:44:24'),
(112, 111, 1, 'active', 'cy786', 'Mehran', '2019-03-28 12:59:16', '2019-03-28 13:06:20'),
(113, 112, 1, 'active', 'cy777', 'Audu A6', '2019-03-28 13:48:28', '2019-04-29 17:36:04'),
(114, 113, 1, 'active', '22233', 'Audu A6', '2019-04-10 10:07:34', '2019-04-26 14:24:52'),
(115, 114, 2, 'active', '78654', 'al55', '2019-04-15 16:51:45', '2019-04-15 17:45:34'),
(116, 117, 1, 'active', '1234', 'abc', '2019-05-03 22:22:17', '2019-05-03 22:24:49'),
(117, 118, 3, 'riding', '8274-183', 'Mitsubishi Outlander 20010', '2019-05-04 07:15:34', '2019-05-04 08:28:40'),
(118, 119, 1, 'active', '1234', 'Audi A8', '2019-05-14 23:02:22', '2019-05-15 00:24:09'),
(119, 121, 3, 'offline', 'fuh774', 'Volvo S40', '2019-05-18 20:23:11', '2019-05-19 20:23:19'),
(120, 120, 1, 'offline', 'rty345', 'ford K', '2019-05-18 23:00:57', '2019-05-18 23:00:57'),
(121, 123, 3, 'active', '1234', 'ABC', '2019-05-30 00:12:09', '2019-05-30 00:12:09'),
(122, 122, 1, 'offline', '1234', 'Audi Black', '2019-05-30 00:18:01', '2019-05-30 00:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `request_filters`
--

CREATE TABLE `request_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `request_filters`
--

INSERT INTO `request_filters` (`id`, `request_id`, `provider_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 111, 2, '2019-03-28 13:04:00', '2019-03-28 13:05:10'),
(4, 4, 112, 2, '2019-03-31 09:46:03', '2019-03-31 09:46:26'),
(5, 5, 111, 0, '2019-03-31 13:09:01', '2019-03-31 13:09:01'),
(32, 31, 118, 0, '2019-05-04 08:28:30', '2019-05-04 08:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `fixed` decimal(25,2) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `minute` decimal(25,2) NOT NULL,
  `distance` int(11) NOT NULL,
  `calculator` enum('MIN','HOUR','DISTANCE','DISTANCEMIN','DISTANCEHOUR') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `name`, `provider_name`, `image`, `capacity`, `fixed`, `price`, `minute`, `distance`, `calculator`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'economico', 'Driver', 'https://carformy.com/public/uploads/38049847c7491fa39409a0cb27f5e2bdbadf7a6f.png', 4, '5.00', '12.00', '3.00', 15, 'DISTANCEMIN', NULL, 1, '2019-03-27 16:44:08', '2019-05-25 19:35:35'),
(2, 'Std', 'Driver', 'https://afridicab.com/public/asset/img/cars/hatchback.png', 0, '20.00', '10.00', '0.00', 1, 'DISTANCE', NULL, 1, '2019-03-27 16:44:08', '2019-05-20 03:55:26'),
(3, 'SUV', 'Driver', 'https://afridicab.com/public/asset/img/cars/suv.png', 5, '6.00', '0.90', '0.10', 1, 'DISTANCE', NULL, 1, '2019-03-27 16:44:08', '2019-05-04 08:26:43'),
(4, 'Lujo', 'Driver', 'https://afridicab.com/public/asset/img/cars/limo.png', 0, '20.00', '10.00', '0.00', 1, 'DISTANCE', NULL, 1, '2019-03-27 16:44:08', '2019-05-20 03:54:28'),
(6, 'Mini Bus', 'Mauriño', NULL, 12, '300.00', '33.00', '500.00', 10, 'HOUR', 'Mini Bus', 0, '2019-05-20 03:59:31', '2019-05-20 03:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'CarForYou'),
(2, 'site_logo', 'https://carformy.com/public/uploads/2ac990f6be9a692aa948ac4d1f56e89bb37b8e17.png'),
(3, 'site_email_logo', 'https://epon.app/public/uploads/2447203a8af4337e11d1f61e1fc5f0f4458c5915.png'),
(4, 'site_icon', 'https://carformy.com/public/uploads/0f4040cdcbb20e459af6c61ee37faed308b65436.png'),
(5, 'site_copyright', '© 2019 carforyou.com.ar'),
(6, 'provider_select_timeout', '30'),
(7, 'provider_search_radius', '100'),
(8, 'base_price', '50'),
(9, 'price_per_minute', '50'),
(10, 'tax_percentage', '0'),
(11, 'stripe_secret_key', ''),
(12, 'stripe_publishable_key', ''),
(13, 'CASH', '1'),
(14, 'CARD', '0'),
(15, 'manual_request', '0'),
(16, 'default_lang', 'en'),
(17, 'currency', '$'),
(18, 'distance', 'Km'),
(19, 'scheduled_cancel_time_exceed', '10'),
(20, 'price_per_kilometer', '10'),
(21, 'commission_percentage', '0'),
(22, 'store_link_android', 'https://play.google.com/store/apps/details?id=com.epon.user'),
(23, 'store_link_ios', ''),
(24, 'daily_target', '0'),
(25, 'surge_percentage', '0'),
(26, 'surge_trigger', '0'),
(27, 'demo_mode', '0'),
(28, 'booking_prefix', 'AFC'),
(29, 'sos_number', '12345637'),
(30, 'contact_number', '03326644661'),
(31, 'contact_email', 'gustavo@oha.com.ar'),
(32, 'social_login', '0'),
(33, 'map_key', 'AIzaSyD4B2q5kad51qSGEuWPK9tW0T-5YoWTuUs'),
(34, 'fb_app_version', 'v3.3'),
(35, 'fb_app_id', '559712457888984'),
(36, 'fb_app_secret', 'c5afd6ac17952ab53a2da4571d7dc7d3'),
(37, 'broadcast_request', '1'),
(38, 'track_distance', '1'),
(39, 'provider_commission_percentage', '0'),
(40, 'page_privacy', '<p><strong>Welcome to CarforYou&nbsp;</strong></p>\r\n\r\n<pre>\r\nUNDER CONSTRUCTION</pre>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('MALE','FEMALE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MALE',
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double(15,8) DEFAULT NULL,
  `longitude` double(15,8) DEFAULT NULL,
  `stripe_cust_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wallet_balance` double(8,2) NOT NULL DEFAULT 0.00,
  `rating` decimal(4,2) NOT NULL DEFAULT 5.00,
  `otp` mediumint(9) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `payment_mode`, `email`, `gender`, `mobile`, `password`, `picture`, `device_token`, `device_id`, `device_type`, `login_by`, `social_unique_id`, `latitude`, `longitude`, `stripe_cust_id`, `wallet_balance`, `rating`, `otp`, `remember_token`, `created_at`, `updated_at`) VALUES
(138, 'Monica', 'Velez', 'CASH', 'monicavelez291@gmail.com', 'MALE', '+541159927629', '$2y$10$mZSMPuTYuFGnaO4g/cdlCeOx9/4Z.B209BOl8ONrcrxIXmTdZDH8W', '', 'dDYxzhONzWs:APA91bHlyhnFxNztndgPtlPuDaqu3NyHc7-w5JWq4yA-lrr8I1rl1RdbPMp-s9pLR8lNMBQQ6JmXV3QtsSyOzsijUacEIM3EhBLLgK6KzzW6__vHCkhc3K_DJEbHSuQQ5ButotzH7A5G', '866d38648abf50b5', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2019-05-19 00:33:39', '2019-05-19 19:40:52'),
(139, 'ddd', 'ggg', 'CASH', 'shbkg@jvhj.com', 'MALE', '+923036781757', '$2y$10$eZFTJvzXADr34mvLQKvRt.xoF4cNCdwHDtuM5xy0Zi2bB.fHkZrP.', NULL, NULL, NULL, 'android', 'manual', NULL, NULL, NULL, NULL, 0.00, '5.00', 0, 'QjUNFemjf2X887l4kmIwfJGw2u3820sgQ20aOpGzj1VEc7jkohpiDHPN1G9T', '2019-05-25 23:19:53', '2019-05-25 23:20:30'),
(137, 'Sebastián', 'Zalazar', 'CASH', 'sebastianformularios@gmail.com', 'MALE', '+541131502071', '$2y$10$FT6/xxymOka0JYjQZdv7FOwEwhnow7a6hO6NvGt4obJvWlB6IfvfG', '', 'f2NBkyHDLwU:APA91bEvEUZIgawdIraenx-diwC8-ttP8UDopNvJWLBVzh4421U7NBiRjcoDCNhUb9j23rzTunI7Gi47z1ziVTsNx9h7cAt33QFBwL-aaUtYHoQ7qyMiroy1iM2IajGMkFvqnXtcRw0x', 'e971cddddc56fcb0', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2019-05-15 06:01:12', '2019-05-18 22:08:14'),
(140, 'Federico', 'Cardenas', 'CASH', 'changovc2015@gmail.com', 'MALE', '+541140836615', '$2y$10$T/m0B1hn/aNZNGKWV8HrLejoBLWqY8Tt4J7GkPikqf/.akEgvXTSC', '', 'fYgsRjOWm7g:APA91bEJp2NfPuRU4dClta07Bo2l7hvkh2oNunlOI4kNpnMwWqjmrWOfMUw5H2l-3ThHGGU0NqVbPpDs5CrVga9RRG9X-A9sR5Cb_2XDUWSogcB08N6UehRPIuw6pDkKdmHmMV9lRdvB', '44202daeedbaa2c7', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2019-05-30 07:28:00', '2019-05-30 07:28:00'),
(136, 'Gustavo', 'Zalazar', 'CASH', 'gustavo@oha.com.ar', 'MALE', '+5491153187633', '$2y$10$ouSbFBtrpVVUd4VWnk1g7.I7/hoElNESBZIXhVpIwb77aIu.ZiW72', 'https://carformy.com/storage/app/public/user/profile/5b6fb76b7b8063a5569d5910ab88fe47.jpeg', 'cbUfnUcpDFg:APA91bHmog-okuKzK0ZGUcBUdgoyE3ldhvEyl50SkeAPGvWr64OdgxJne_Dv7xCrxzWbXw17bG68IkXdRnQ0VhFyRUCFJXNQM7sjGTH_6hxz1pZutaul9Jq7qq4OGwyCwIJoUaoGO3EP', '7e5cca7ab2f35f12', 'android', 'manual', '', NULL, NULL, NULL, 0.00, '5.00', 0, NULL, '2019-05-15 05:13:49', '2019-05-25 20:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `current_provider_id` int(11) NOT NULL,
  `service_type_id` int(11) NOT NULL,
  `status` enum('SEARCHING','CANCELLED','ACCEPTED','STARTED','ARRIVED','PICKEDUP','DROPPED','COMPLETED','SCHEDULED') COLLATE utf8_unicode_ci NOT NULL,
  `cancelled_by` enum('NONE','USER','PROVIDER') COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` enum('CASH','CARD','PAYPAL') COLLATE utf8_unicode_ci NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_track` enum('YES','NO') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `distance` double(15,8) NOT NULL,
  `travel_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `s_latitude` double(15,8) NOT NULL,
  `s_longitude` double(15,8) NOT NULL,
  `d_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `d_latitude` double(15,8) NOT NULL,
  `track_distance` double(15,8) NOT NULL DEFAULT 0.00000000,
  `track_latitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `track_longitude` double(15,8) NOT NULL DEFAULT 0.00000000,
  `d_longitude` double(15,8) NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `finished_at` timestamp NULL DEFAULT NULL,
  `user_rated` tinyint(1) NOT NULL DEFAULT 0,
  `provider_rated` tinyint(1) NOT NULL DEFAULT 0,
  `use_wallet` tinyint(1) NOT NULL DEFAULT 0,
  `surge` tinyint(1) NOT NULL DEFAULT 0,
  `route_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_requests`
--

INSERT INTO `user_requests` (`id`, `booking_id`, `user_id`, `provider_id`, `current_provider_id`, `service_type_id`, `status`, `cancelled_by`, `cancel_reason`, `payment_mode`, `paid`, `is_track`, `distance`, `travel_time`, `s_address`, `s_latitude`, `s_longitude`, `d_address`, `d_latitude`, `track_distance`, `track_latitude`, `track_longitude`, `d_longitude`, `assigned_at`, `schedule_at`, `started_at`, `finished_at`, `user_rated`, `provider_rated`, `use_wallet`, `surge`, `route_key`, `deleted_at`, `created_at`, `updated_at`) VALUES
(36, 'AFC405891', 138, 121, 121, 3, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '27', 'Corrientes 1375, B1742HHY Paso del Rey, Buenos Aires, Argentina', -34.65116020, -58.76613260, 'Int. Mustoni 1781, Hurlingham, Buenos Aires, Argentina', -34.58485720, 0.00000000, -34.65094040, -58.76570770, -58.63984160, '2019-05-19 19:40:52', NULL, '2019-05-19 19:46:54', '2019-05-19 20:14:30', 1, 1, 0, 0, 'rxnrE|wteJ}E_B{J_CoFoJwBsDPIpCsCxBwB{AkCwFwJmCqEiCeE_@w@sBqDyBtBaE|DuFfFaF`FuDnDyG|GeC|BwBxB_CnBo@}@QGQQe@k@_@k@Ws@UcBa@kFG[EMKkFQwD]cHgA}No@{H]cD_@kCoAcH_AsDmCsIoAiDu@aCmByHg@_CaA}FwB}Ro@qF{AiNs@yHUkBWiDJ}@@{BDsCHaCEuCE}BAcANiFHiBHc@TuJHcBCoIHuADa@H]Ps@Zo@RMRGZ?VJV\\Jh@A\\GXW^MLa@N{@Ly@IyBUgDQsBGqA?kFByFX_BFuB@wBAaCMsGs@_Dm@_Cm@aBg@iFkBuBy@kDiAsGwBgJoDaCsA{@i@wB_BwBoB_CeCw@{@aF}FcBmB}DoFuAiCaAwBiBsFcAkD_L}`@yE}OqBsFkDmHiCcFwCwEyBuCgCsC{BoBiDaCwDeCaAeA}A{BeAkBcCkF_AuBiAwB_BeCkCuD_CeEaDqFyCgEaAqAqA{AyFuGuDkE{BoC}@kAcIoLkAcByJgNwAuBsA{BuL}PiFsHoFyHwDoFoEuG[g@{@eAkAiBmBoCgD}E}A_CeBuCmAaCyAuDqAiEs@wCa@mB@cCMkBA{BB{AJyA`@yCb@sAb@k@NW@G?Cn@k@xA}AlCgDzCeErCeEtEiGjFgHhNoRf@q@DIBS|AqBjA{A\\a@JKJK^IhIgBlA_@fA_@fDw@bTaFiE~F', NULL, '2019-05-19 19:40:52', '2019-05-19 20:19:01'),
(34, 'AFC619844', 137, 0, 121, 3, 'CANCELLED', 'NONE', NULL, 'CASH', 0, 'YES', 2.00000000, NULL, 'M. de Grandi 5 B1742JWA, Paso del Rey, Buenos Aires, Argentina', -34.65840390, -58.76353080, 'Claudio María Joly 1714, B1744HIB Moreno, Buenos Aires, Argentina', -34.65568960, 0.00000000, 0.00000000, 0.00000000, -58.77676210, '2019-05-18 22:06:49', NULL, NULL, NULL, 0, 0, 0, 0, '~eprE`gteJzBt@\\Vd@z@Tb@LK|DwEPYHAxAe@PEFn@Dj@FPT\\Pv@Bh@Al@YbBUnBAz@Hn@LdAMbAEZDTDFeC`CmIjIsJfJaCpMmCxOe@fC', NULL, '2019-05-18 22:06:18', '2019-05-18 22:07:22'),
(35, 'AFC663708', 137, 121, 121, 3, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '0', 'Av. Alcorta 620, Moreno, Buenos Aires, Argentina', -34.65807300, -58.76353270, 'Claudio María Joly 1714, B1744HIB Moreno, Buenos Aires, Argentina', -34.65568960, 0.00000000, -34.65914120, -58.77152530, -58.77676210, '2019-05-18 22:08:14', NULL, '2019-05-18 22:17:12', '2019-05-18 22:17:58', 1, 1, 0, 0, 'rcprE~fteJ{Idf@mDpR{@jFnEvAsBpL', NULL, '2019-05-18 22:08:14', '2019-05-18 22:25:01'),
(33, 'AFC575816', 137, 121, 121, 3, 'CANCELLED', 'USER', 'me quería cobrar!!!', 'CASH', 0, 'YES', 3.00000000, NULL, 'Arribeños 1783, Paso del Rey, Buenos Aires, Argentina', -34.64663606, -58.76588750, 'Claudio María Joly 1813, B1744 HIC, Buenos Aires, Argentina', -34.65540490, 0.00000000, 0.00000000, 0.00000000, -58.77732040, '2019-05-18 21:45:51', NULL, NULL, NULL, 0, 0, 0, 0, 'p{mrEtvteJnIlNfBJh@b@`ExDlIzHvFhF|DpDeA`Fa@tBqBdKyBdLsApHeCrNvF~A`@HrErATDjAqGhAsGtCwOjAmG', NULL, '2019-05-18 21:45:51', '2019-05-18 21:49:09'),
(32, 'AFC731474', 135, 119, 119, 1, 'COMPLETED', 'NONE', NULL, 'CASH', 1, 'YES', 0.00000000, '0', '2119 Service Rd South I 10, Sector I-10/1 I 10/1 I-10, Islamabad, Islamabad Capital Territory, Pakistan', 33.63998390, 73.03966860, 'Niazi Express, Mangla Rd, G-9 Markaz G 9 Markaz G-9, Islamabad, Islamabad Capital Territory, Pakistan', 33.68821890, 0.00000000, 33.64001070, 73.03965150, 73.03514240, '2019-05-14 23:04:11', NULL, '2019-05-14 23:04:59', '2019-05-14 23:05:06', 1, 1, 0, 0, 'qgilE}qx|LwIsSIS|@k@}CgHsE{KcFmLiEaKeCkGgAiCmB}DwAiDoAkCmB{EsC_H{CaH{Mk[wAoDyDiJsEcK]_@YWo@MYCs@?e@Fm@JwEdD_ElCeFhD_SxMsDfC}DnCmFxDcUrOqGnEgS~MyHfFmRpMsEfDyAfAwDrCoHdFgErCoDdCu@j@gFlDmL~H}AnAY`@s@j@k@d@GLAL@PHRLPFHQLcAn@yCvB{AjAq@b@eB~@{@r@g@`@`B~DdB~DbB~D`IfRVt@D?@@B@BFBPINQBCAEECG?I', NULL, '2019-05-14 23:04:11', '2019-05-14 23:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_payments`
--

CREATE TABLE `user_request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `promocode_id` int(11) DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fixed` double(10,2) NOT NULL DEFAULT 0.00,
  `distance` double(10,2) NOT NULL DEFAULT 0.00,
  `commision` double(10,2) NOT NULL DEFAULT 0.00,
  `discount` double(10,2) NOT NULL DEFAULT 0.00,
  `tax` double(10,2) NOT NULL DEFAULT 0.00,
  `wallet` double(10,2) NOT NULL DEFAULT 0.00,
  `surge` double(10,2) NOT NULL DEFAULT 0.00,
  `total` double(10,2) NOT NULL DEFAULT 0.00,
  `payable` double(8,2) NOT NULL DEFAULT 0.00,
  `provider_commission` double(8,2) NOT NULL DEFAULT 0.00,
  `provider_pay` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_payments`
--

INSERT INTO `user_request_payments` (`id`, `request_id`, `promocode_id`, `payment_id`, `payment_mode`, `fixed`, `distance`, `commision`, `discount`, `tax`, `wallet`, `surge`, `total`, `payable`, `provider_commission`, `provider_pay`, `created_at`, `updated_at`) VALUES
(19, 36, NULL, NULL, NULL, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6.00, 6.00, 0.00, 6.00, '2019-05-19 20:14:30', '2019-05-19 20:14:30'),
(18, 35, NULL, NULL, NULL, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6.00, 6.00, 0.00, 6.00, '2019-05-18 22:17:58', '2019-05-18 22:17:58'),
(17, 32, NULL, NULL, NULL, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 0.00, 5.00, '2019-05-14 23:05:06', '2019-05-14 23:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `user_request_ratings`
--

CREATE TABLE `user_request_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL DEFAULT 0,
  `provider_rating` int(11) NOT NULL DEFAULT 0,
  `user_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_request_ratings`
--

INSERT INTO `user_request_ratings` (`id`, `request_id`, `user_id`, `provider_id`, `user_rating`, `provider_rating`, `user_comment`, `provider_comment`, `created_at`, `updated_at`) VALUES
(17, 36, 138, 121, 1, 5, 'excelente servicio del señor Rubén Salazar', 'excelente pasajera', '2019-05-19 20:17:18', '2019-05-19 20:19:01'),
(16, 35, 137, 121, 5, 5, 'excelente!', 'perfecto', '2019-05-18 22:19:31', '2019-05-18 22:25:01'),
(15, 32, 135, 119, 4, 5, 'Zxx', 'ggb', '2019-05-14 23:05:34', '2019-05-14 23:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_passbooks`
--

CREATE TABLE `wallet_passbooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('CREDITED','DEBITED') COLLATE utf8_unicode_ci NOT NULL,
  `via` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `account_password_resets`
--
ALTER TABLE `account_password_resets`
  ADD KEY `account_password_resets_email_index` (`email`),
  ADD KEY `account_password_resets_token_index` (`token`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatchers`
--
ALTER TABLE `dispatchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dispatchers_email_unique` (`email`);

--
-- Indexes for table `dispatcher_password_resets`
--
ALTER TABLE `dispatcher_password_resets`
  ADD KEY `dispatcher_password_resets_email_index` (`email`),
  ADD KEY `dispatcher_password_resets_token_index` (`token`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_locations`
--
ALTER TABLE `favourite_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fleets_email_unique` (`email`);

--
-- Indexes for table `fleet_password_resets`
--
ALTER TABLE `fleet_password_resets`
  ADD KEY `fleet_password_resets_email_index` (`email`),
  ADD KEY `fleet_password_resets_token_index` (`token`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`),
  ADD KEY `oauth_access_tokens_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_passbooks`
--
ALTER TABLE `promocode_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_email_unique` (`email`);

--
-- Indexes for table `provider_devices`
--
ALTER TABLE `provider_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_documents`
--
ALTER TABLE `provider_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_services`
--
ALTER TABLE `provider_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_filters`
--
ALTER TABLE `request_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_pushes`
--
ALTER TABLE `custom_pushes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatchers`
--
ALTER TABLE `dispatchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `favourite_locations`
--
ALTER TABLE `favourite_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_passbooks`
--
ALTER TABLE `promocode_passbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_usages`
--
ALTER TABLE `promocode_usages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `provider_devices`
--
ALTER TABLE `provider_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `provider_documents`
--
ALTER TABLE `provider_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provider_profiles`
--
ALTER TABLE `provider_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `provider_services`
--
ALTER TABLE `provider_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `request_filters`
--
ALTER TABLE `request_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_request_payments`
--
ALTER TABLE `user_request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_request_ratings`
--
ALTER TABLE `user_request_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wallet_passbooks`
--
ALTER TABLE `wallet_passbooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
