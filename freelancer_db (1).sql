-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 07:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freelancer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `bidder_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `bid_amount` decimal(10,2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `portfolio` varchar(255) DEFAULT NULL,
  `bid_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `project_id`, `bidder_id`, `name`, `email`, `bid_amount`, `location`, `resume`, `portfolio`, `bid_date`) VALUES
(13, 1, 5, 'Sathish Kumar V', 'SathishKumar@gmail.com', 25000.00, '0', 'sathishkumar.pdf', 'https://www.bangmedia.com.au/work?tab=service&service=All', '2025-02-25 09:33:47'),
(16, 3, 1, 'Ganeshkumar S', 'ganeshkumar@gmail.com', 20000.00, '0', 'ganeshkumar.pdf', 'https://www.kyliemalcolm.com/website-design', '2025-02-26 23:30:08'),
(17, 2, 8, 'Deva Prakash', 'devanshprakash@gmail.com', 18000.00, '0', 'deva.pdf', 'https://www.devanshprakash.com/', '2025-02-26 23:44:34'),
(18, 7, 1, 'suriya A', 'suriya@gmail.com', 10000.00, '0', 'sk.pdf', 'https://www.rayraylab.com/', '2025-02-27 00:20:15'),
(19, 1, 1, 'sainath', 'sainath12@gmail.com', 23452.00, '0', 'sai.pdf', 'https://dstanimirov.com/', '2025-03-02 23:10:08'),
(20, 1, 1, 'Rajavelan A', 'rajavelan5678@gmail.com', 23452.00, '0', 'raja.pdf', 'https://www.lonzovisuals.com/404', '2025-04-01 04:35:55'),
(21, 2, 1, 'varun vishal', 'markariani@gmail.com', 19500.00, '0', 'varun.pdf', 'https://markariani.com/', '2025-04-01 04:37:14'),
(22, 8, 26, 'Sathish Kumar V', 'vsathish@gmail.com', 25.00, '0', '3.jpg', '', '2025-04-11 10:25:16'),
(23, 8, 5, 'pizzaBot', 'mansai@gmail.com', 12.00, '0', '.net1.png', '', '2025-04-11 10:27:01'),
(24, 8, 5, 'pizzaBot', 'mansai@gmail.com', 13.00, '0', '2.jpg', '', '2025-04-11 10:37:35'),
(25, 9, 1, 'Sathish Kumar V', 'mansai@gmail.com', 10000.00, '0', 'c1.pdf', 'https://www.w3schools.com/spaces/index.php', '2025-04-15 10:44:00'),
(26, 11, 5, 'Sainath', 'sktrade@example.com', 25000.00, '0', 'Blue and Black Geometric Creative Resume.pdf', 'https://www.bangmedia.com.au/work?tab=service&service=All', '2025-04-15 11:15:07'),
(27, 11, 5, 'Karthikeyan', 'Karthikeyan@gmail.com', 22000.00, '0', 'Beige Minimalist Social Media Manager Resume.pdf', 'https://dstanimirov.com/', '2025-04-15 11:16:37'),
(28, 11, 5, 'Suriya', 'suriya@gmail.com', 30000.00, '0', 'Black and White Clean Professional A4 Resume for Marketing Manager.pdf', 'https://www.lonzovisuals.com/404', '2025-04-15 11:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `skills` varchar(255) NOT NULL,
  `budget` varchar(100) NOT NULL,
  `timeline` varchar(100) NOT NULL,
  `bid_deadline` date NOT NULL,
  `status` varchar(50) DEFAULT 'Open',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `project_title`, `project_description`, `skills`, `budget`, `timeline`, `bid_deadline`, `status`, `created_at`) VALUES
(2, 5, 'WordPress Website for Portfolio', 'I need a WordPress developer to create a portfolio website that showcases my work as a photographer. The website should be visually appealing, easy 	to navigate, and feature a gallery for showcasing my photos. It should also include an about section, contact form, and a blog.\r\n\r\nKey Responsibilities:\r\n	\r\n1. Build a custom WordPress theme or customize an existing theme to meet the design needs.\r\n2. Create a gallery that allows easy uploading and display of high-quality images.\r\n3. Ensure the website is responsive and optimized for both desktop and mobile.\r\n\r\nIdeal Skills:\r\n\r\n1. Experience with WordPress theme development or customization.\r\n2. Proficiency in HTML, CSS, and basic PHP.\r\n3. Knowledge of SEO best practices for WordPress.\r\n4. The website should be clean, professional, and visually showcase my photography in the best possible way.\r\n', 'WordPress Development, HTML, CSS, PHP, Responsive , Web Design, SEO for WordPress', ' 15,000-25,000', '2-3 weeks', '2025-04-19', 'Open', '2025-02-25 10:00:08'),
(3, 5, ' E-commerce Website for Small Business', 'We are seeking an experienced web developer to create an e-commerce website for a small online store. The site should have a smooth shopping 	experience, secure payment gateway integration, product catalog, and an easy-to-use admin panel to manage orders.\r\n\r\nKey Responsibilities:\r\n\r\n1. Set up an online store using platforms like WooCommerce or Shopify.\r\n2. Integrate secure payment gateways and ensure the checkout process is smooth.\r\n3. Design product pages with product details, pricing, and images.\r\n4. Ensure the website is mobile-friendly and fully responsive.\r\n\r\nIdeal Skills:\r\n\r\n1. Experience in setting up e-commerce websites (WooCommerce, Shopify, etc.).\r\n2. Proficiency in HTML/CSS and JavaScript.\r\n3. Knowledge of secure payment integrations.\r\n4. The website must be functional and user-friendly, providing customers with a smooth online shopping experience.', 'HTML / CSS, JavaScript, Payment Gateway Integration, Responsive Web Design, SEO, User Experience (UX)', ' 35,000 - 50,000', '4-5 weeks', '2025-04-22', 'Open', '2025-02-25 10:10:27'),
(10, 5, 'Frontend Developer for Corporate Dashboard UI', 'NexaTech Solutions, a growing software firm specializing in analytics platforms, is looking for a frontend developer to design and build a responsive dashboard for internal business insights. The dashboard must be intuitive, modern, and mobile-friendly to support team-wide decision-making.\r\n\r\nKey Responsibilities:\r\n\r\n1. Convert Figma designs to responsive HTML/CSS/JS code.\r\n\r\n2. Ensure smooth functionality across all major browsers.\r\n\r\n3. Collaborate with backend developers to integrate APIs.', 'React.js, HTML/CSS, JavaScript, REST APIs, Git', '30,000 – 45,000', '3–4 weeks', '2025-04-29', 'Open', '2025-04-15 10:49:49'),
(11, 28, 'Logo and Brand Identity Design for Local Cafe', 'We are launching a new local cafe and are in need of a creative and experienced designer to help us build a complete brand identity from the ground up. The design should capture the cozy, welcoming, and community-driven vibe of the cafe, while also standing out with a modern and professional aesthetic.\r\n\r\nThe core objective is to design a logo that reflects the personality and warmth of the cafe, accompanied by a cohesive visual identity. This includes defining the brand\'s color palette, typography guidelines, and creating essential branding materials such as business cards and letterheads.\r\n\r\nThe branding will be used across various platforms including signage, packaging, social media, and digital marketing materials. The visual identity should feel friendly and approachable but also clean and versatile for long-term use.\r\n\r\nKey Responsibilities:\r\nDesign a unique and memorable logo that represents the cafe’s ambiance and values.\r\n\r\nCreate a color palette that aligns with the mood and style of the cafe.\r\n\r\nDevelop typography guidelines that pair well with the brand’s tone and visuals.\r\n\r\nDesign business cards, letterheads, and other basic brand collateral.\r\n\r\nDeliver all assets in high-resolution and editable formats.\r\n\r\nIdeal Skills:\r\nExperience in logo and brand identity design\r\n\r\nStrong portfolio showcasing branding projects\r\n\r\nExpertise in Adobe Illustrator and Photoshop\r\n\r\nUnderstanding of color theory and typography\r\n\r\nAbility to communicate design concepts and iterate based on feedback', 'Logo Design, Adobe Illustrator, Visual Identity, Typography, Color Theory', '20,000 – 35,000', '2–3 weeks', '2025-04-17', 'Open', '2025-04-15 11:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`) VALUES
(5, 'karthi', 'karthi@gmail.com', '$2y$10$HTNfyXJoS0.SIhjnowAJPO/djnoq7evHaxlh5aoTcsbFapM7bGXjq', '2025-02-24 05:14:02'),
(15, 'karthi', 'skarthikn19@gmail.com', '$2y$10$oPm14lvNohE17bGREX4piOFG1CCr6mOlKbxJSRWlNIIkThI784qru', '2025-04-01 03:09:09'),
(26, 'singa rakesh', 'singarakesh2004@gmail.com', '$2y$10$xQLIGDq12JH.DRWqtEy29e6p9nV2mphsxgFk5BAbD0w.LyTJSBAyi', '2025-04-11 10:16:47'),
(27, 'V Sathish Kumar', 'vsathishsk183@gmail.com', '$2y$10$iujGflmbSLmZgUaQJPRure1jiPS.pcMFZA1MQIW2LgEf/Xwj6CfIC', '2025-04-15 10:53:05'),
(28, 'vsathish', 'vsathish@gmail.com', '$2y$10$z/E6QCSPZIRREPU3642g4e8RbaMiwXBDkFdkWEuQjK1dZUXnmcG9y', '2025-04-15 11:04:47'),
(29, 'karpaga suriya', 'karthi11509@gmail.com', '$2y$10$MdCQbM9Yngr7N32XhpWfEevERw4eXVRmE8LgVacOUt2Ug56QikDEa', '2025-04-16 08:08:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
