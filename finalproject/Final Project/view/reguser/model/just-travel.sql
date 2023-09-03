-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2021 at 12:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `just-travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `air_ticket`
--

CREATE TABLE `air_ticket` (
  `air_ticket_id` int(255) NOT NULL,
  `airline_name` varchar(255) NOT NULL,
  `air_ticket_type` varchar(255) NOT NULL,
  `air_ticket_price` int(255) NOT NULL,
  `airline_image` varchar(255) NOT NULL,
  `plane_route` varchar(255) NOT NULL,
  `plane_journey_date` date NOT NULL,
  `plane_ticket_availability` varchar(255) NOT NULL,
  `plane_available_seat` int(255) NOT NULL,
  `plane_start_location` varchar(255) NOT NULL,
  `plane_end_location` varchar(255) NOT NULL,
  `plane_arrival_time` varchar(255) NOT NULL,
  `plane_departure_time` varchar(255) NOT NULL,
  `flight_no` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `air_ticket`
--

INSERT INTO `air_ticket` (`air_ticket_id`, `airline_name`, `air_ticket_type`, `air_ticket_price`, `airline_image`, `plane_route`, `plane_journey_date`, `plane_ticket_availability`, `plane_available_seat`, `plane_start_location`, `plane_end_location`, `plane_arrival_time`, `plane_departure_time`, `flight_no`, `image`, `status`) VALUES
(1, 'Biman', 'First Class Ticket', 2500, './images/plane/BIMAN.png', 'Dhaka to Saiadpur', '2021-11-30', 'Available', 20, 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 417, './images/air-ticket-packages/air-ticket-1.png', 'approved'),
(2, 'US Bangla Airlines', 'Business Class Ticket', 2700, './images/plane/USBANGLA.png', 'Dhaka to Rajshahi', '2021-11-28', 'Available', 4, 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 901, './images/air-ticket-packages/air-ticket-3.png', 'approved'),
(3, 'NOVOAIR', 'First Class Ticket', 2500, './images/plane/NOVOAIR.png', 'Dhaka to Joshore', '2021-11-30', 'Available', 15, 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 506, './images/air-ticket-packages/air-ticket-5.png', 'approved'),
(4, 'Biman', 'Second Class', 2300, './images/plane/BIMAN.png', 'Dhaka to Chittagong', '2021-12-02', 'Available', 16, 'Dhaka Airport', 'Chittagong Airport', '03:00 PM', '02:15 PM', 615, './images/air-ticket-packages/air-ticket-2.png', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `booking_for` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `price` int(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `username`, `booking_for`, `name`, `location`, `price`, `payment_method`, `status`, `start_date`, `end_date`) VALUES
('B-135', 'Saidul123', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'pending', '2021-12-15', '2021-12-18'),
('B-249', 'Saidul123', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00'),
('B-274', 'Nishad', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00'),
('B-385', 'Nishad', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'pending', '2021-12-15', '2021-12-18'),
('B-388', 'Saidul123', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00'),
('B-412', 'Nishad', 'event', 'Sundarban Group Tour', 'Sundarban, Bangladesh', 4750, 'card', 'pending', '2021-12-10', '2021-12-13'),
('B-655', 'tamim007', 'event', 'Tanguar Haor Group Tour', 'Sunamganj, Bangladesh', 3500, 'card', 'pending', '2021-11-22', '2021-11-24'),
('B-656', 'tamim007', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00'),
('B-829', 'Saidul123', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'pending', '2021-11-19', '2021-11-23'),
('O-135', 'sufian', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'pending', '2021-11-19', '2021-11-23'),
('O-425', 'Nishad', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'approved', '2021-11-19', '2021-11-23'),
('O-637', 'sufian', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00'),
('O-919', 'Nishad', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'approved', '0000-00-00', '0000-00-00'),
('O-968', 'sufian', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'pending', '2021-12-15', '2021-12-18'),
('O-999', 'sufian', 'event', 'Sundarban Group Tour', 'Sundarban, Bangladesh', 4750, 'card', 'pending', '2021-12-10', '2021-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `bus_ticket`
--

CREATE TABLE `bus_ticket` (
  `bus_ticket_id` int(255) NOT NULL,
  `bus_operators_name` varchar(255) NOT NULL,
  `bus_ticket_type` varchar(255) NOT NULL,
  `bus_ticket_price` int(255) NOT NULL,
  `bus_ticket_availability` varchar(255) NOT NULL,
  `bus_available_seat` int(255) NOT NULL,
  `bus_route` varchar(255) NOT NULL,
  `bus_start_location` varchar(255) NOT NULL,
  `bus_end_location` varchar(255) NOT NULL,
  `bus_journey_date` date NOT NULL,
  `bus_arrival_time` varchar(255) NOT NULL,
  `bus_departure_time` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_ticket`
--

INSERT INTO `bus_ticket` (`bus_ticket_id`, `bus_operators_name`, `bus_ticket_type`, `bus_ticket_price`, `bus_ticket_availability`, `bus_available_seat`, `bus_route`, `bus_start_location`, `bus_end_location`, `bus_journey_date`, `bus_arrival_time`, `bus_departure_time`, `image`, `status`) VALUES
(1, 'SAKURA PARIBAHAN', 'AC', 450, 'available', 20, 'Dhaka to Chittagong', 'Dhaka', 'Chittagong', '2021-11-30', '10:00 PM', '04:00 AM', './images/bus-ticket-packages/package-10.png', 'approved'),
(2, 'SENJUTI TRAVELS', 'Non AC', 900, 'Available', 36, 'Dhaka to Teknaf', 'Abdullapur, Dhaka', 'Teknaf', '2021-11-28', '6:30 AM', '5:30 PM', './images/bus-ticket-packages/package-2.png', 'approved'),
(3, 'PLATINUM TRAVELS', 'Non AC', 470, 'Available', 26, 'Dhaka to Sylhet', 'Abdullahpur, Dhaka', 'Sylhet', '2021-12-10', '7:30 AM', '6:30 PM', './images/bus-ticket-packages/package-3.png', 'approved'),
(4, 'HANIF ENTERPRISE', 'Non AC', 450, 'Available', 29, 'Dhaka to Chapainawabganj', 'KP VOLVO RAJ, Dhaka', 'Chapainawabganj, Rajshahi', '2021-12-07', '1:00 PM', '6:00 AM', './images/bus-ticket-packages/package-4.png', 'approved'),
(5, 'SAKURA PARIBAHAN', 'Non AC', 500, 'Available', 14, 'Dhaka to Kuakata', 'Technical, Dhaka', 'Kuakata', '2021-11-26', '4:30 PM', '7:45 AM', './images/bus-ticket-packages/package-6.png', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `event_ticket`
--

CREATE TABLE `event_ticket` (
  `event_id` int(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_ticket_price` int(255) NOT NULL,
  `event_details` varchar(255) NOT NULL,
  `event_start_date` date NOT NULL,
  `event_end_date` date NOT NULL,
  `event_image` varchar(255) NOT NULL,
  `event_ticket_availability` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_ticket`
--

INSERT INTO `event_ticket` (`event_id`, `event_name`, `event_location`, `event_ticket_price`, `event_details`, `event_start_date`, `event_end_date`, `event_image`, `event_ticket_availability`, `status`) VALUES
(1, 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'The tales of a tea heaven! Enjoy 1 Night & 2 Days Group Tour to Sreemangal at the best prices!', '2021-11-19', '2021-11-23', './images/event-details/event-details-1.jpg', 'Available', 'approved'),
(2, 'Tanguar Haor Group Tour', 'Sunamganj, Bangladesh', 3500, 'Thinking of a Getaway? Enjoy 1 Night & 2 Days Group Tour to Tanguar Haor at the best rates!', '2021-11-22', '2021-11-24', './images/event-details/event-details-2.jpg', 'Available', 'approved'),
(3, 'Sundarban Group Tour', 'Sundarban, Bangladesh', 4750, 'The Forest Awaits! Get best offers for 1 Night & 2 Days Group Tour to Sundarban at the best rates!', '2021-12-10', '2021-12-13', './images/event-details/event-details-3.jpg', 'Available', 'approved'),
(4, 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'The Mountains are calling! Enjoy 1 Night & 2 Days Group Tour to Bandarban at the best price!', '2021-12-15', '2021-12-18', './images/event-details/event-details-4.jpg', 'Available', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(255) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `hotel_location` varchar(255) NOT NULL,
  `regular_booking_price` int(255) NOT NULL,
  `discounted_booking_price` int(255) NOT NULL,
  `hotel_services` varchar(255) NOT NULL,
  `hotel_image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_location`, `regular_booking_price`, `discounted_booking_price`, `hotel_services`, `hotel_image`, `status`) VALUES
(1, 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 4500, 3878, 'Not Updated', './images/hotels/hotel-1.png', 'approved'),
(2, 'Sayeman Beach Resort', 'Marine Drive, Road, Cox\'s Bazar 4700', 10000, 8000, ' 5-star hotel,\r\n Free breakfast,\r\n Free wifi,\r\n Restaurant,\r\n Beach access,\r\n Gym,\r\n Outdoor pool', './images/hotels/hotel-2.png', 'approved'),
(3, 'Ocean Paradise Hotel & Resort', '28-29, Hotel Motel Zone, Road, Cox\'s Bazar 4700', 8000, 6500, '4-star hotel\r\nFree breakfast\r\nFree wifi\r\nRestaurant\r\nBeach access\r\nGym', './images/hotels/hotel-3.png', 'approved'),
(4, 'Sikder Resort & Villas', 'Opposite of ECO Park, Kuakata', 6000, 4000, ' 4-star hotel\r\n Free breakfast\r\n Free wifi\r\n Restaurant\r\n Beach access\r\n Gym\r\n Hot tub', './images/hotels/hotel-4.png', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `launch_ticket`
--

CREATE TABLE `launch_ticket` (
  `launch_ticket_id` int(255) NOT NULL,
  `launch_operator_name` varchar(255) NOT NULL,
  `launch_route` varchar(255) NOT NULL,
  `launch_deck_type` varchar(255) NOT NULL,
  `launch_journey_date` date NOT NULL,
  `launch_ticket_price` int(255) NOT NULL,
  `launch_ticket_availability` varchar(255) NOT NULL,
  `launch_available_seats` int(225) NOT NULL,
  `launch_starting_location` varchar(225) NOT NULL,
  `launch_ending_location` varchar(225) NOT NULL,
  `launch_arrival_time` varchar(225) NOT NULL,
  `launch_departure_time` varchar(225) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `launch_ticket`
--

INSERT INTO `launch_ticket` (`launch_ticket_id`, `launch_operator_name`, `launch_route`, `launch_deck_type`, `launch_journey_date`, `launch_ticket_price`, `launch_ticket_availability`, `launch_available_seats`, `launch_starting_location`, `launch_ending_location`, `launch_arrival_time`, `launch_departure_time`, `image`, `status`) VALUES
(1, 'GREEN LINE', 'Dhaka to Barisal', 'UPPER-DECK(AC)', '2021-11-29', 1000, 'Available', 16, 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 'https://bangladeshfact.com/wp-content/uploads/2017/11/m.v.greenline-1.jpg', 'approved'),
(2, 'Sundarban Express', 'Dhaka to Potuakhali', 'UPPER-DECK(Non AC)', '2021-11-30', 800, 'Available', 20, 'Sadarghat, Dhaka', 'Mongla Launch Terminal, Potuakhali', '10:55 PM', '08:00 AM', 'http://traveleon.com/wp-content/uploads/2016/02/MV-Sundarban-12.jpg', 'approved'),
(3, 'Bangladesh Green Express', 'Dhaka to Chittagong', 'UPPER-DECK(AC)', '2021-12-01', 950, 'Available', 20, 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 'https://cdn.jagonews24.com/media/imgAllNew/BG/2016October/nou2017052915374320170529193909.jpg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(255) NOT NULL,
  `offer_title` varchar(255) NOT NULL,
  `offer_summary` text NOT NULL,
  `offer_details` text NOT NULL,
  `offer_rules` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `offer_title`, `offer_summary`, `offer_details`, `offer_rules`, `status`) VALUES
(1, 'Buy tickets & pay through bKash to get 10% Cashback', 'bKash 10% Cashback Campaign- 10% Discount up to 100 Taka Offer on all Bus, Launch & Air Tickets.', 'Get 10% Cashback by paying through bKash after ticket purchase or by using bKash App. Offer available for online bus, launch & air tickets and until 15th October, 2021.', '1. Offer can be availed through Just Travel Website & Mobile Application.\r\n<br/>\r\n2. No Code Required\r\n<br/>\r\n3. Can be availed 2 Times per user Valid till 15 October, 2021\r\n<br/>\r\n4. Travel/Journey Time can be anywhere in between 20 October, 2021\r\n<br/>\r\n5. It can be availed for all bus, launch & air ticket services\r\n<br/>\r\n6. Conditions Applied', 'approved'),
(2, '100 Taka Flat Discount on Bus, Launch & Air Tickets', 'Just Travel Bridge Holiday Campaign- Flat 100 Taka Discount Offer on all Bus, Launch & Air Tickets.', 'Get 100 Taka Flat Discount on online bus, launch & air tickets by using code: Bridge100. Offer available until 5th September & Journey period till 12 September.', '1. Code: “Bridge100” Can be availed twice per user\r\n<br/>\r\n2. Valid till 5 September, 2021\r\n<br/>\r\n3. Travel/Journey Time can be anywhere in between 12 September, 2021\r\n<br/>\r\n4. It can be availed for all bus, launch & air ticket services Offer can be availed only through Just Travel Website & Mobile Application.\r\n<br/>\r\n5. It can be availed for all bus, launch & air ticket services\r\n<br/>\r\n6. Conditions Applied', 'approved'),
(3, '200 Taka OFF!', 'To get this offer enter “MEGA2021” in the coupon code field before payment procedure & enjoy FLAT 100 Taka discount & Pay through bKash to get 10% instant Cashback', 'MEGA2020 Discount Offer! 💁‍♂️ Use MEGA2020 Code to get Flat 100 Taka Off on any bus, launch or airline tickets 🚌⛴️✈️ & Pay through bKash to get extra 10% Cashback up to 100 Taka 🤳 In Total 200 Taka Discount only For you 📴:', '1. Code: “MEGA2021”\r\n<br/>\r\n2. Can be availed only once per user\r\n<br/>\r\n3. Valid till 31st December, 2021\r\n<br/>\r\n4. Travel/Journey Time can be anywhere in between 7th December, 2021\r\n<br/>\r\n5. It can be availed for all bus, launch & air ticket services\r\n<br/>\r\n6. Offer can be availed only through Just Travel Website & Mobile Application.\r\n<br/>\r\n7. It can be availed for all bus, launch & air ticket services\r\n<br/>\r\n8. Conditions Applied', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `journey_by` varchar(255) NOT NULL,
  `transport_name` varchar(255) NOT NULL,
  `ticket_type` varchar(225) NOT NULL,
  `journey_date` date NOT NULL,
  `start_location` text NOT NULL,
  `end_location` text NOT NULL,
  `arrival_time` varchar(255) NOT NULL,
  `departure_time` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `journey_by`, `transport_name`, `ticket_type`, `journey_date`, `start_location`, `end_location`, `arrival_time`, `departure_time`, `price`, `payment_method`, `status`) VALUES
('O-107', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'Non AC', '2021-11-26', 'Technical, Dhaka', 'Kuakata', '4:30 PM', '7:45 AM', 500, '', ''),
('O-134', 'Saidul123', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending'),
('O-187', 'sufian', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending'),
('O-208', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'approved'),
('O-211', 'Nishad', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending'),
('O-224', 'sufian', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending'),
('O-252', 'Nishad', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending'),
('O-273', 'sufian', 'bus', 'HANIF ENTERPRISE', 'Non AC', '2021-12-07', 'KP VOLVO RAJ, Dhaka', 'Chapainawabganj, Rajshahi', '1:00 PM', '6:00 AM', 450, 'card', 'pending'),
('O-274', 'Nishad', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending'),
('O-356', 'Saidul123', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending'),
('O-366', 'tamim007', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending'),
('O-422', 'Saidul123', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending'),
('O-528', 'Nishad', 'bus', 'SENJUTI TRAVELS', 'Non AC', '2021-11-28', 'Abdullapur, Dhaka', 'Teknaf', '6:30 AM', '5:30 PM', 900, 'card', 'pending'),
('O-538', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending'),
('O-551', 'Nishad', 'bus', 'PLATINUM TRAVELS', 'Non AC', '2021-12-10', 'Abdullahpur, Dhaka', 'Sylhet', '7:30 AM', '6:30 PM', 470, 'card', 'pending'),
('O-584', 'Nishad', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'paid', 'approved'),
('O-592', 'Saidul123', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending'),
('O-703', 'Nishad', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending'),
('O-745', 'sufian', 'launch', 'Bangladesh Green Express', 'UPPER-DECK(AC)', '2021-12-01', 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 950, 'card', 'pending'),
('O-777', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending'),
('O-853', 'Saidul123', 'bus', 'SAKURA PARIBAHAN', 'AC', '2021-11-30', 'Dhaka', 'Chittagong', '10:00 PM', '04:00 AM', 450, 'card', 'pending'),
('O-884', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'AC', '2021-11-30', 'Dhaka', 'Chittagong', '10:00 PM', '04:00 AM', 450, '', ''),
('O-988', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'Non AC', '2021-11-26', 'Technical, Dhaka', 'Kuakata', '4:30 PM', '7:45 AM', 500, '', ''),
('O-993', 'Nishad', 'launch', 'Bangladesh Green Express', 'UPPER-DECK(AC)', '2021-12-01', 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 950, 'card', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `place_id` int(255) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_description` text NOT NULL,
  `place_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`place_id`, `place_name`, `place_description`, `place_image`) VALUES
(1, 'Kuakata Sea Beach', 'Kuakata is a town in southern Bangladesh known for its panoramic sea beach. Kuakata beach is a sandy expanse 18 kilometres long and 3 kilometres wide. From the beach one can have an unobstructed view of both sunrise and sunset over the Bay of Bengal.', 'https://www.travelmate.com.bd/wp-content/uploads/2020/08/kuakata-patuakhai.jpg'),
(2, 'Cox\'s Bazar', 'Cox’s Bazar is a town on the southeast coast of Bangladesh. It’s known for its very long, sandy beachfront, stretching from Sea Beach in the north to Kolatoli Beach in the south. Aggameda Khyang monastery is home to bronze statues and centuries-old Buddhist manuscripts.', 'https://tourworld24.com/wp-content/uploads/2021/02/Cox-Bazar-Sea-Beach.jpg'),
(3, 'Sundarbans', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal. It spans from the Hooghly River in India\'s state of West Bengal to the Baleswar River in Bangladesh\'s division of Khulna.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Sundarban_Tiger.jpg/1200px-Sundarban_Tiger.jpg'),
(4, 'Sajek Valley', 'Sajek Valley is one of the popular tourist spots in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District. The valley is 2,000 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati.', 'https://tourrom.com/wp-content/uploads/2019/01/Discover-sajek-valley-1024x701.jpg'),
(5, 'Srimangal', 'It is said the name Sreemangal (or Srimangal) is named after Sri Das and Mangal Das; two brothers who settled on the banks of the Hail Haor. A copper plate of Raja Marundanath from the 11th century was found in Kalapur.', 'https://ttabctg.com/wp-content/uploads/2018/04/tea-garden-new.png'),
(6, 'Saint Martin', 'St. Martin\'s Island is a small island in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox\'s Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh.', 'https://img1.10bestmedia.com/Images/Photos/386066/GettyImages-467898168_54_990x660.jpg'),
(7, 'Paharpur', 'Paharpur is said to be one of the most fascinating Buddhist archeological sites in South Asia and takes the form of a large redbrick quadrangle which is bisected with alleys and chambers that would have been meditation rooms in days of old.', 'http://www.observerbd.com/2018/06/02/1527964584.jpg'),
(8, 'Barisal', 'This river town on the Ganges Delta is covered in fields of shrimp farms and rice paddies and if you make it here then be sure to check out the floating markets that sell local vegetables, fruits, and seafood.', 'https://www.daily-sun.com/assets/news_images/2017/09/25/thumbnails/Floating_Guava_Market_Atghoria.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(10) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`, `email`, `role`, `photo`) VALUES
(5, '', 'admin', '202cb962ac59075b964b07152d234b70', 'srtamim.public@gmail', 'admin', ''),
(6, '', 'user', '202cb962ac59075b964b07152d234b70', 'srtamim@gmail.com', 'user', ''),
(7, '', 'shop', '202cb962ac59075b964b07152d234b70', 'mamargadget@gmail.co', 'merchant', ''),
(8, '', 'Saidul123', 'Khan198007', 'saidulmursalinkhan@gmail.com', 'user', ''),
(9, '', 'Saidul_Khan', 'Khan1234', 'saidulmursalinkhan@yahoo.com', 'user', ''),
(10, '', 'Siam12345', '1234', 'siam@yahoo.com', 'user', ''),
(12, 'Saidul Mursalin Khan', 'Khan198007', 'Khan1980', 'saidulmursalinkhan@gmail.com', 'user', ''),
(19, 'Rezaul Mursalin Khan', 'siam123', '12345678', 'siam@gmail.com', 'user', NULL),
(20, 'Nader Islam Tamim', 'Tamim Khan', '123', 'tamim@gmail.com', 'user', NULL),
(31, 'Mir Nishad', 'Nishad', '1234', 'mir@gmail.com', 'user', ''),
(34, 'Sufian Khan', 'sufian', 'Sufi@n1234', 'sufian@gmail.com', 'user', ''),
(35, 'Sr Tamim', 'tamim007', 'T@mim123', 'tamim@gmail.com', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `air_ticket`
--
ALTER TABLE `air_ticket`
  ADD PRIMARY KEY (`air_ticket_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `bus_ticket`
--
ALTER TABLE `bus_ticket`
  ADD PRIMARY KEY (`bus_ticket_id`);

--
-- Indexes for table `event_ticket`
--
ALTER TABLE `event_ticket`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `launch_ticket`
--
ALTER TABLE `launch_ticket`
  ADD PRIMARY KEY (`launch_ticket_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`username`),
  ADD KEY `phone` (`email`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `air_ticket`
--
ALTER TABLE `air_ticket`
  MODIFY `air_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_ticket`
--
ALTER TABLE `bus_ticket`
  MODIFY `bus_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event_ticket`
--
ALTER TABLE `event_ticket`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `launch_ticket`
--
ALTER TABLE `launch_ticket`
  MODIFY `launch_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
