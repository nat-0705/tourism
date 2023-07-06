-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 11:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(2, 4, 8, 3, '2021-06-21', '2021-06-19 08:37:59'),
(3, 5, 8, 3, '2021-06-18', '2021-06-19 11:51:50'),
(4, 6, 7, 2, '2023-06-28', '2023-06-15 08:10:48'),
(5, 6, 1, 2, '0000-00-00', '2023-07-05 07:53:26'),
(6, 6, 1, 2, '0000-00-00', '2023-07-05 07:53:41'),
(7, 6, 1, 0, '0000-00-00', '2023-07-05 07:56:01'),
(8, 6, 1, 0, '0000-00-00', '2023-07-05 07:56:09'),
(9, 6, 1, 0, '2023-07-20', '2023-07-06 14:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(6, 'asdasd', 'asdasd@asdasd.com', 'asdasd', 'asdasd', 1, '2021-06-19 10:19:27'),
(8, 'gwapo', 'gwapo@gwapo.com', 'gwapo', 'gwapo', 1, '2023-06-22 11:20:11'),
(9, 'gwapo', 'gwapo@gwapo.com', 'gwapo', 'Tabanga ko please', 1, '2023-06-22 21:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `region`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Luzon', 'Anawangin Cove', 'Zambales', 2500, 'Nothing else spells vacation better than Anawangin Cove in Zambales. If you and your loved ones are looking for a camping ground where your bodies are cradled by the soft and fine white sands and hugged by the tall mountains, then this seems like the perfect spot for you!\r\n\r\nBesides providing fantastic views, Anawangin also offers private boats that will send you to various islands in the area. \r\n\r\nTatler Trivia: After Mount Pinatubo\'s 1991 eruption, it inevitably dumped tons of ash on the shore of San Antonio. What used to be a rocky shore full of sharp rocks has become a paradise for many thalassophiles.', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Mindanao', 'Camp Holiday Resort & Recreation Area', 'Kinawitnon Babak', 500, 'Get your trip off to a great start with a stay at this property, which offers car park free of charge. Conveniently situated in the Babak District - Samal Island part of Davao City, this property puts you close to attractions and interesting dining options. Don\'t leave before paying a visit to the famous Davao Crocodile Park. Rated with 3 stars, this high-quality property provides guests with access to restaurant, indoor pool and outdoor pool on-site.', 'uploads/package_7\r\n', 1, '2021-06-18 11:17:11'),
(8, 'Luzon', 'Camp Paraiso Hotel And Resort', 'Nueva Ecija', 3000, 'Camp Paraiso Hotel & Resort is a unique eco-stay located about 2.9 kilometers from the town of Bongabon, Nueva Ecija. Its 3 man-made infinity pools are filled with natural cold waters flowing from the mountains of Aurora. The property offers activities like trekking, swimming, camping, glamping, picnic,  yoga, stargazing, forest bathing, waterfalls chasing, river trekking and bonfire activities. If you are one for thrills, you can hike the virgin forest of Mt. Labi. Besides the Bali like features of the resort, one cannot go wrong with its delicious and very affordable foods like our signature sisigs, boodle fights, samgyeoup nights to name a few.\r\n\r\n​\r\n\r\nSince opening its doors, Camp Paraiso receives a warm welcome from locals and tourists as the \"Bali of Bongabon, Nueva Ecija.\" It empowers indigenous people with livelihood to reduce poverty. Its presence increases the influx of tourists coming to the province, which tremendously lessens logging and encourages the development of more local businesses.\r\n\r\n\r\nCamp Paraiso lets you experience serenity away from the city\'s noise. We welcome travelers, nature lovers, spiritual seekers, trekkers, backpackers, artists and musicians to share our natural paradise  with us.', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Visayas', 'Canigao', 'Matalom', 4000, 'Canigao Island is uninhabited, featuring a lighthouse as its only significant man-made structure. The beaches have white sand, with tropical sea creatures and extensive coral reef in the surrounding waters. The climate is tropical and similar to that found in other areas of the Philippine islands. These natural features often attract tourists and scuba divers, who arrive at the island by traveling from Matalom (in the province of Leyte).[1]\r\n\r\nThe western and northern part of Canigao island is placed under nature protection as a sanctuary. Due to this, activities such as swimming, diving, fishing, snorkeling, and boating in the protected areas are limited by law.[2]', 'uploads/package_9', 1, '2023-06-21 10:57:02'),
(10, 'Luzon', 'Crystal Beach Resort', 'Zambales', 5000, 'Crystal Beach Resort is located in the town of San Narciso. A town right just after San Antonio, the jump-off point for Anawangin and Nagsasa coves. The resort offers surfing lessons, surfboard rentals, camping, bonfires, and sometimes beach party when events are held in the place.', 'uploads/package_10', 1, '2023-06-21 10:57:02'),
(11, 'Mindanao', 'Sample 106', 'Sample Location', 600, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_11', 1, '2023-06-21 10:58:55'),
(12, 'Visayas', 'Sample 107', 'Sample Location', 7000, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_12', 1, '2023-06-21 10:58:55'),
(13, 'Mindanao', 'Sample 108', 'Sample Location', 800, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_13', 1, '2023-06-21 10:59:40'),
(14, 'Visayas', 'Sample 109', 'Sample Location', 900, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_14', 1, '2023-06-21 11:00:55'),
(15, 'Mindanao', 'Sample 1010', 'Sample Location', 1000, '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut ac magna sodales, bibendum ante ut, accumsan ante. Integer non consectetur augue. Donec eget neque varius, venenatis elit id, dapibus tellus. Nam libero nulla, blandit sit amet ligula eu, malesuada lobortis diam. Maecenas ut tellus eget leo tincidunt pulvinar. Aenean rutrum, risus a aliquam euismod, nunc nisl tempus tortor, vel pellentesque eros ex nec purus. In condimentum nulla non ipsum interdum efficitur. Mauris eget sapien nec justo dignissim pretium quis sit amet ex. Aenean fermentum, metus eget dignissim condimentum, dui metus placerat diam, vitae interdum eros ante eget nisl. Fusce at orci gravida, varius mi ac, fermentum justo.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_15', 1, '2023-06-21 11:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate_review`
--

INSERT INTO `rate_review` (`id`, `user_id`, `package_id`, `rate`, `review`, `date_created`) VALUES
(3, 5, 8, 5, 'Nathaniel Gwapo', '2021-06-19 11:53:16'),
(4, 5, 8, 3, 'Please maam pasar unta me', '2021-06-19 13:49:26'),
(5, 7, 1, 1, 'Si maam kay gwapa kaayu', '2023-06-21 11:12:07'),
(6, 8, 9, 5, 'Pasara mi maam', '2023-06-21 11:12:07'),
(7, 9, 9, 1, 'Bitaw maam please lang pasara mi', '2023-06-21 11:12:55'),
(8, 10, 9, 1, 'Nathaniel Gabionza Gwapo', '2023-06-21 11:12:55'),
(9, 10, 10, 2, NULL, '2023-06-21 11:15:17'),
(10, 6, 13, 4, NULL, '2023-06-21 11:15:17'),
(11, 5, 11, 5, NULL, '2023-06-21 11:15:42'),
(12, 1, 11, 2, NULL, '2023-06-21 11:15:42'),
(13, 9, 12, 4, NULL, '2023-06-21 11:16:05'),
(14, 9, 12, 3, NULL, '2023-06-21 11:16:05'),
(15, 10, 14, 4, NULL, '2023-06-21 11:16:36'),
(16, 6, 11, 5, NULL, '2023-06-21 11:16:36'),
(17, 7, 7, 5, NULL, '2023-06-21 12:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Tourism Management System'),
(6, 'short_name', 'Camping Sites'),
(11, 'logo', 'uploads/system_info/1623978900_masskara.png'),
(13, 'user_avatar', 'uploads/system_info/user_avatar.jpg'),
(14, 'cover', 'uploads/system_info/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1620201300_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-18 16:47:05'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'Gwapo', 'Maot', 'gwapo', '33f5a7e8f4f310f9774894d807728e3c', NULL, NULL, 0, '2023-06-15 08:08:32', '2023-06-21 11:07:59'),
(7, 'Nathaniel', 'Gabionza', 'tan', '*020A2515563CE5A7366721A2A0999BD19BBC321F', NULL, NULL, 0, '2023-06-21 11:06:43', '2023-06-21 11:07:29'),
(8, 'Clint', 'Sumodobila', 'clint', 'clint', NULL, NULL, 0, '2023-06-21 11:08:42', NULL),
(9, 'Brian', 'Bulawan', 'brian', '*2D55C8D6CE7D0BD5B2E703DC209269BC664B4FCE', NULL, NULL, 0, '2023-06-21 11:09:21', NULL),
(10, 'Gin', 'Espanto', 'gin', 'gin', NULL, NULL, 0, '2023-06-21 11:10:01', NULL),
(11, 'maot', 'maot', 'maot', '7733ab5a7eff72921972f7e23d0723f5', NULL, NULL, 0, '2023-07-06 16:00:36', NULL),
(12, 'hay', 'hay', 'hay', '4982b37aa4ff1d1761d9567323d2cf38', NULL, NULL, 0, '2023-07-06 16:05:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `packages_id` (`package_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_list`
--
ALTER TABLE `book_list`
  ADD CONSTRAINT `packages_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD CONSTRAINT `package_id` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
