-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- হোষ্ট: 127.0.0.1
-- তৈরী করতে ব্যবহৃত সময়: ডিসে 12, 2021 at 05:57 AM
-- সার্ভার সংস্করন: 10.4.21-MariaDB
-- পিএইছপির সংস্করন: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- ডাটাবেইজ: `ticket_db`
--

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `air_ticket`
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
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `air_ticket`
--

INSERT INTO `air_ticket` (`air_ticket_id`, `airline_name`, `air_ticket_type`, `air_ticket_price`, `airline_image`, `plane_route`, `plane_journey_date`, `plane_ticket_availability`, `plane_available_seat`, `plane_start_location`, `plane_end_location`, `plane_arrival_time`, `plane_departure_time`, `flight_no`, `image`, `status`) VALUES
(1, 'Biman', 'First Class Ticket', 2500, 'https://www.biman-airlines.com/assets/logo/bimanLogo.png', 'Dhaka to Saiadpur', '2021-11-30', 'Available', 20, 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 417, '../reguser/view/images/air-ticket-packages/air-ticket-1.png', 'Approved'),
(2, 'US Bangla Airlines', 'Business Class Ticket', 2700, 'https://www.aviatorcapital.com/wp-content/uploads/2019/09/US-BanglaAirlines.png', 'Dhaka to Rajshahi', '2021-11-28', 'Available', 4, 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 901, '../reguser/view/images/air-ticket-packages/air-ticket-3.png', 'Disapproved'),
(3, 'NOVOAIR', 'First Class Ticket', 2500, 'https://i.pinimg.com/originals/66/c0/48/66c04861171f67c3d8d694d0a6b21d37.png', 'Dhaka to Joshore', '2021-11-30', 'Available', 15, 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 506, '../reguser/view/images/air-ticket-packages/air-ticket-5.png', 'Disapproved'),
(4, 'Biman', 'Second Class', 2300, 'https://www.biman-airlines.com/assets/logo/bimanLogo.png', 'Dhaka to Chittagong', '2021-12-02', 'Available', 16, 'Dhaka Airport', 'Chittagong Airport', '03:00 PM', '02:15 PM', 615, '../reguser/view/images/air-ticket-packages/air-ticket-2.png', 'Approved');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `booking`
--

CREATE TABLE `booking` (
  `booking_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `booking_for` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `price` int(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `booking`
--

INSERT INTO `booking` (`booking_id`, `username`, `booking_for`, `name`, `location`, `price`, `payment_method`, `status`, `start_date`, `end_date`, `id`) VALUES
('B-135', 'Saidul123', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'Approved', '2021-12-15', '2021-12-18', 1),
('B-249', 'Saidul123', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'Approved', '0000-00-00', '0000-00-00', 2),
('B-274', 'Nishad', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00', 3),
('B-385', 'Nishad', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'pending', '2021-12-15', '2021-12-18', 4),
('B-388', 'Saidul123', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'Approved', '0000-00-00', '0000-00-00', 5),
('B-412', 'Nishad', 'event', 'Sundarban Group Tour', 'Sundarban, Bangladesh', 4750, 'card', 'Approved', '2021-12-10', '2021-12-13', 6),
('B-655', 'tamim007', 'event', 'Tanguar Haor Group Tour', 'Sunamganj, Bangladesh', 3500, 'card', 'Approved', '2021-11-22', '2021-11-24', 7),
('B-656', 'tamim007', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00', 8),
('B-829', 'Saidul123', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'pending', '2021-11-19', '2021-11-23', 9),
('O-135', 'sufian', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'pending', '2021-11-19', '2021-11-23', 10),
('O-425', 'Nishad', 'event', 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 5000, 'card', 'approved', '2021-11-19', '2021-11-23', 11),
('O-637', 'sufian', 'hotel', 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 3878, 'card', 'pending', '0000-00-00', '0000-00-00', 12),
('O-968', 'sufian', 'event', 'Bandarban Group Tour', 'Bandardban, Bangladesh', 5750, 'card', 'pending', '2021-12-15', '2021-12-18', 14);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `bus_ticket`
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
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `bus_ticket`
--

INSERT INTO `bus_ticket` (`bus_ticket_id`, `bus_operators_name`, `bus_ticket_type`, `bus_ticket_price`, `bus_ticket_availability`, `bus_available_seat`, `bus_route`, `bus_start_location`, `bus_end_location`, `bus_journey_date`, `bus_arrival_time`, `bus_departure_time`, `image`, `status`) VALUES
(1, 'SAKURA PARIBAHAN', 'AC', 450, 'available', 20, 'Dhaka to Chittagong', 'Dhaka', 'Chittagong', '2021-11-30', '10:00 PM', '04:00 AM', '../reguser/view/images/bus-ticket-packages/package-10.png', 'Approved'),
(2, 'SENJUTI TRAVELS', 'Non AC', 900, 'Available', 36, 'Dhaka to Teknaf', 'Abdullapur, Dhaka', 'Teknaf', '2021-11-28', '6:30 AM', '5:30 PM', '../reguser/view/images/bus-ticket-packages/package-2.png', 'Disapproved'),
(3, 'PLATINUM TRAVELS', 'Non AC', 470, 'Available', 26, 'Dhaka to Sylhet', 'Abdullahpur, Dhaka', 'Sylhet', '2021-12-10', '7:30 AM', '6:30 PM', '../reguser/view/images/bus-ticket-packages/package-3.png', 'Disapproved'),
(4, 'HANIF ENTERPRISE', 'Non AC', 450, 'Available', 29, 'Dhaka to Chapainawabganj', 'KP VOLVO RAJ, Dhaka', 'Chapainawabganj, Rajshahi', '2021-12-07', '1:00 PM', '6:00 AM', '../reguser/view/images/bus-ticket-packages/package-4.png', 'Approved'),
(5, 'SAKURA PARIBAHAN', 'Non AC', 500, 'Available', 14, 'Dhaka to Kuakata', 'Technical, Dhaka', 'Kuakata', '2021-11-26', '4:30 PM', '7:45 AM', '../reguser/view/images/bus-ticket-packages/package-6.png', 'Disapproved');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `event_ticket`
--

CREATE TABLE `event_ticket` (
  `event_id` int(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `event_ticket_price` int(255) NOT NULL,
  `event_details` varchar(255) NOT NULL,
  `event_start_date` date NOT NULL,
  `event_end_date` date NOT NULL,
  `event_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `event_ticket`
--

INSERT INTO `event_ticket` (`event_id`, `event_name`, `event_location`, `event_ticket_price`, `event_details`, `event_start_date`, `event_end_date`, `event_image`) VALUES
(1, 'Sreemangal Group Tour', 'Sreemangal, Bangladesh', 3000, 'The tales of a tea heaven! Enjoy 1 Night & 2 Days Group Tour to Sreemangal at the best prices!', '2021-11-19', '2021-11-23', '../reguser/view/images/event-details/event-details-1.jpg'),
(2, 'Tanguar Haor Group Tour', 'Sunamganj, Bangladesh', 3500, 'Thinking of a Getaway? Enjoy 1 Night & 2 Days Group Tour to Tanguar Haor at the best rates!', '2021-11-22', '2021-11-24', '../reguser/view/images/event-details/event-details-2.jpg'),
(3, 'Sundarban Group Tour', 'Sundarban, Bangladesh', 4750, 'The Forest Awaits! Get best offers for 1 Night & 2 Days Group Tour to Sundarban at the best rates!', '2021-12-10', '2021-12-13', '../reguser/view/images/event-details/event-details-3.jpg');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(255) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `hotel_location` varchar(255) NOT NULL,
  `regular_booking_price` int(255) NOT NULL,
  `discounted_booking_price` int(255) NOT NULL,
  `booking_date` date NOT NULL,
  `hotel_services` varchar(255) NOT NULL,
  `hotel_image` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `hotel_location`, `regular_booking_price`, `discounted_booking_price`, `booking_date`, `hotel_services`, `hotel_image`, `status`) VALUES
(1, 'Hotel The Cox Today', 'Hotel The Cox Today Rd, Chittagong 4700', 5000, 3878, '2021-11-20', '5-star hotel, Free breakfast, Free wifi, Restaurant, Beach access', '../reguser/view/images/hotels/hotel-1.png', ''),
(2, 'Sayeman Beach Resort', 'Marine Drive, Road, Cox\'s Bazar 4700', 10000, 8000, '2021-11-19', ' 5-star hotel,\r\n Free breakfast,\r\n Free wifi,\r\n Restaurant,\r\n Beach access,\r\n Gym,\r\n Outdoor pool', '../reguser/view/images/hotels/hotel-2.png', ''),
(3, 'Ocean Paradise Hotel & Resort', '28-29, Hotel Motel Zone, Road, Cox\'s Bazar 4700', 8000, 6500, '2021-11-26', '4-star hotel\r\nFree breakfast\r\nFree wifi\r\nRestaurant\r\nBeach access\r\nGym', '../reguser/view/images/hotels/hotel-3.png', ''),
(5, 'Alisha', 'Hotel The Cox Today Rd, Chittagong 470', 50000, 40000, '2021-11-26', '5-star hotel, \r\n Free breakfast, \r\n Free wifi', '../reguser/view/images/hotels/hotel-2.png', '');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `launch_ticket`
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
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `launch_ticket`
--

INSERT INTO `launch_ticket` (`launch_ticket_id`, `launch_operator_name`, `launch_route`, `launch_deck_type`, `launch_journey_date`, `launch_ticket_price`, `launch_ticket_availability`, `launch_available_seats`, `launch_starting_location`, `launch_ending_location`, `launch_arrival_time`, `launch_departure_time`, `image`, `status`) VALUES
(1, 'GREEN LINE', 'Dhaka to Barisal', 'UPPER-DECK(AC)', '2021-11-29', 1000, '400', 90, 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '8:00 PM', 'https://bangladeshfact.com/wp-content/uploads/2017/11/m.v.greenline-1.jpg', 'Disapproved'),
(2, 'Sundarban Express', 'Dhaka to Potuakhali', 'UPPER-DECK(Non AC)', '2021-11-30', 800, '20', 500, 'Sadarghat, Dhaka', 'Mongla Launch Terminal, Potuakhali', '10:55 PM', '08:00 AM', 'http://traveleon.com/wp-content/uploads/2016/02/MV-Sundarban-12.jpg', 'Approved'),
(3, 'Bangladesh Green Express', 'Dhaka to Chittagong', 'UPPER-DECK(AC)', '2021-12-01', 950, '100', 845, 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 'https://cdn.jagonews24.com/media/imgAllNew/BG/2016October/nou2017052915374320170529193909.jpg', 'Approved');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `merpay`
--

CREATE TABLE `merpay` (
  `merid` int(12) NOT NULL,
  `mername` varchar(50) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `due` int(12) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `merpay`
--

INSERT INTO `merpay` (`merid`, `mername`, `shopname`, `due`, `status`) VALUES
(1, 'Tamim', 'Mamar Gadget', 10000, 'Paid'),
(2, 'Saidul', 'pixl store', 45612, 'unpaid'),
(3, 'adety', 'Chill store', 5465, 'Paid');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(255) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_summary` varchar(255) NOT NULL,
  `offer_details` varchar(225) NOT NULL,
  `offer_rules` varchar(225) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `offers`
--

INSERT INTO `offers` (`offer_id`, `offer_name`, `offer_summary`, `offer_details`, `offer_rules`, `status`) VALUES
(1, 'Bkash', 'bKash 10% Cashback Campaign- 10% Discount up to 100 Taka Offer on all Bus, Launch & Air Tickets.', 'Get 10% Cashback by paying through bKash after ticket purchase or by using bKash App. Offer available for online bus, launch & air tickets and until 15th October, 2021.', '1. Offer can be availed through Just Travel Website & Mobile Application. No Code Required.<br>2. Can be availed 2 Times per user Valid till 15 October, 2021<br>3. Travel/Journey Time can be anywhere in between 21 Oct', 'Approved');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `orders`
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
  `status` varchar(255) NOT NULL,
  `id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `journey_by`, `transport_name`, `ticket_type`, `journey_date`, `start_location`, `end_location`, `arrival_time`, `departure_time`, `price`, `payment_method`, `status`, `id`) VALUES
('O-107', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'Non AC', '2021-11-26', 'Technical, Dhaka', 'Kuakata', '4:30 PM', '7:45 AM', 500, '', '', 1),
('O-134', 'Saidul123', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending', 2),
('O-187', 'sufian', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending', 3),
('O-208', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'approved', 4),
('O-211', 'Nishad', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending', 5),
('O-224', 'sufian', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending', 6),
('O-252', 'Nishad', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending', 7),
('O-273', 'sufian', 'bus', 'HANIF ENTERPRISE', 'Non AC', '2021-12-07', 'KP VOLVO RAJ, Dhaka', 'Chapainawabganj, Rajshahi', '1:00 PM', '6:00 AM', 450, 'card', 'pending', 8),
('O-274', 'Nishad', 'air', 'NOVOAIR', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Joshore Airport', '06:00 PM', '5:30 PM', 2500, 'card', 'pending', 9),
('O-356', 'Saidul123', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending', 10),
('O-366', 'tamim007', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending', 11),
('O-422', 'Saidul123', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending', 12),
('O-528', 'Nishad', 'bus', 'SENJUTI TRAVELS', 'Non AC', '2021-11-28', 'Abdullapur, Dhaka', 'Teknaf', '6:30 AM', '5:30 PM', 900, 'card', 'pending', 13),
('O-538', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending', 14),
('O-551', 'Nishad', 'bus', 'PLATINUM TRAVELS', 'Non AC', '2021-12-10', 'Abdullahpur, Dhaka', 'Sylhet', '7:30 AM', '6:30 PM', 470, 'card', 'pending', 15),
('O-584', 'Nishad', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'paid', 'approved', 16),
('O-592', 'Saidul123', 'air', 'US Bangla Airlines', 'Business Class Ticket', '2021-11-28', 'Dhaka Airport', 'Rajshahi Airport', '08:25 PM', '9:30 AM', 2700, 'card', 'pending', 17),
('O-703', 'Nishad', 'launch', 'GREEN LINE', 'UPPER-DECK(AC)', '2021-11-29', 'Sadar Ghat, Dhaka', 'Barisal Launch Terminal', '11:55 PM', '08:00 AM', 1000, 'card', 'pending', 18),
('O-745', 'sufian', 'launch', 'Bangladesh Green Express', 'UPPER-DECK(AC)', '2021-12-01', 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 950, 'card', 'pending', 19),
('O-777', 'sufian', 'air', 'Biman', 'First Class Ticket', '2021-11-30', 'Dhaka Airport', 'Saiadpur Airport', '07:55 PM', '07:00 PM', 2500, 'card', 'pending', 20),
('O-853', 'Saidul123', 'bus', 'SAKURA PARIBAHAN', 'AC', '2021-11-30', 'Dhaka', 'Chittagong', '10:00 PM', '04:00 AM', 450, 'card', 'pending', 21),
('O-884', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'AC', '2021-11-30', 'Dhaka', 'Chittagong', '10:00 PM', '04:00 AM', 450, '', '', 22),
('O-988', 'Nishad', 'bus', 'SAKURA PARIBAHAN', 'Non AC', '2021-11-26', 'Technical, Dhaka', 'Kuakata', '4:30 PM', '7:45 AM', 500, '', '', 23),
('O-993', 'Nishad', 'launch', 'Bangladesh Green Express', 'UPPER-DECK(AC)', '2021-12-01', 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 950, 'card', 'pending', 24),
('O-138', 'tamim', 'bus', 'SAKURA PARIBAHAN', 'AC', '2021-11-30', 'Dhaka', 'Chittagong', '10:00 PM', '04:00 AM', 450, 'card', 'pending', 25),
('O-656', 'tamim', 'launch', 'Bangladesh Green Express', 'UPPER-DECK(AC)', '2021-12-01', 'Sadarghat, Dhaka', 'Chittagong Launch Terminal', '11:55 PM', '10:00 AM', 950, 'card', 'pending', 26);

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `places`
--

CREATE TABLE `places` (
  `place_id` int(255) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_description` varchar(255) NOT NULL,
  `place_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `places`
--

INSERT INTO `places` (`place_id`, `place_name`, `place_description`, `place_image`) VALUES
(1, 'Kuakata Beach', 'Kuakata is a town in southern Bangladesh known for its panoramic sea beach. Kuakata beach is a sandy expanse 18 kilometres long and 3 kilometres wide. From the beach one can have an unobstructed view of both sunrise and sunset over the Bay of Bengal.', 'https://source.unsplash.com/1600x900/?kuakata'),
(3, 'Shundarban', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in the Bay of Bengal.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Sundarban_Tiger.jpg/1200px-Sundarban_Tiger.jpg'),
(4, 'Coxs Bazar', 'It is famous mostly for its long natural sandy beach. It is located 150 km (93 mi) south of the city of Chittagong. Cox\'s Bazar is also known by the name Panowa', 'https://media-cdn.tripadvisor.com/media/photo-c/1280x250/10/e2/f8/43/longest-sea-beach-in.jpg'),
(5, 'shajek', 'Sajek Valley (Bengali: সাজেক উপত্যকা) is one of the popular tourist spots in Bangladesh situated among the hills of the Kasalong range', 'https://chokkor.com/wp-content/uploads/2019/02/THE-KINGDOM-OF-CLOUDS-SHAJEK-960x630.jpg'),
(6, 'shonargaon', 'Sonargaon is one of the old capitals of the historic region of Bengal and was an administrative center of eastern Bengal. It was also a river port', 'https://nijhoom.com/wp-content/uploads/2021/03/boro-sardar-bari-sonargaon-museum-768-o-1.jpg'),
(7, 'panan nogor', 'Panam City was an ancient city, the archaeological ruins of which is situated at Sonargaon, Narayanganj in Bangladesh. It is one of the earliest cities', 'https://bdproperty.com/wp-content/uploads/2018/12/panam-city.jpg');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `upay`
--

CREATE TABLE `upay` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `orderid` varchar(8) NOT NULL,
  `paym` varchar(11) NOT NULL,
  `amount` int(12) NOT NULL,
  `status` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `upay`
--

INSERT INTO `upay` (`id`, `username`, `orderid`, `paym`, `amount`, `status`) VALUES
(1, 'tamim', 'OR0125', 'Bkash', 5623, 'Disapproved'),
(2, 'Saidul', 'OR0126', 'Crad', 8465, 'Approved');

-- --------------------------------------------------------

--
-- টেবলের জন্য টেবলের গঠন `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `photo` text NOT NULL,
  `fname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- টেবলের জন্য তথ্য স্তুপ করছি `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `photo`, `fname`) VALUES
(5, 'admin', '123', 'public@gmail', 'admin', '../../assets/admin.png', ''),
(6, 'user', '123', 'srtamim@gmail.com', 'user', '../../assets/admin.png', 'Saidul Tami'),
(7, 'shop', '123', 'mamargadget@gmail.co', 'merchant', '../../assets/shop.png', ''),
(9, 'tamim', '123', 'sdfsad@gmail.com', 'user', 'https://shorturl.at/lrCI9', ''),
(10, 'PixL IT', '11111111', 'sedfsd@gmail.com', 'admin', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9ZAV6OLHHc8z7I4OaVD0ljzGdeFP0tGreDi3yMFwLBZRXWt7Nh93hC8uRt-UnawErZBw&usqp=CAU', ''),
(12, 'admin', '123', 'ergrfgfd@gmail.com', 'admin', 'data:image/png;base64,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', ''),
(13, 'mama', '123', 'mama@gmail.com', 'admin', '', 'mamar gadget');

--
-- স্তুপকৃত টেবলের ইনডেক্স
--

--
-- টেবিলের ইনডেক্সসমুহ `air_ticket`
--
ALTER TABLE `air_ticket`
  ADD PRIMARY KEY (`air_ticket_id`);

--
-- টেবিলের ইনডেক্সসমুহ `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `bus_ticket`
--
ALTER TABLE `bus_ticket`
  ADD PRIMARY KEY (`bus_ticket_id`);

--
-- টেবিলের ইনডেক্সসমুহ `event_ticket`
--
ALTER TABLE `event_ticket`
  ADD PRIMARY KEY (`event_id`);

--
-- টেবিলের ইনডেক্সসমুহ `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- টেবিলের ইনডেক্সসমুহ `launch_ticket`
--
ALTER TABLE `launch_ticket`
  ADD PRIMARY KEY (`launch_ticket_id`);

--
-- টেবিলের ইনডেক্সসমুহ `merpay`
--
ALTER TABLE `merpay`
  ADD PRIMARY KEY (`merid`);

--
-- টেবিলের ইনডেক্সসমুহ `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- টেবিলের ইনডেক্সসমুহ `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`place_id`);

--
-- টেবিলের ইনডেক্সসমুহ `upay`
--
ALTER TABLE `upay`
  ADD PRIMARY KEY (`id`);

--
-- টেবিলের ইনডেক্সসমুহ `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`username`),
  ADD KEY `phone` (`email`),
  ADD KEY `role` (`role`);

--
-- স্তুপকৃত টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT)
--

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `air_ticket`
--
ALTER TABLE `air_ticket`
  MODIFY `air_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `bus_ticket`
--
ALTER TABLE `bus_ticket`
  MODIFY `bus_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `event_ticket`
--
ALTER TABLE `event_ticket`
  MODIFY `event_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `launch_ticket`
--
ALTER TABLE `launch_ticket`
  MODIFY `launch_ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `merpay`
--
ALTER TABLE `merpay`
  MODIFY `merid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `places`
--
ALTER TABLE `places`
  MODIFY `place_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `upay`
--
ALTER TABLE `upay`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- টেবলের জন্য স্বয়ক্রীয় বর্দ্ধিত মান (AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
