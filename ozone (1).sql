-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 01:47 PM
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
-- Database: `ozone`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_contactus`
--

CREATE TABLE `adminpanel_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_globalsettings`
--

CREATE TABLE `adminpanel_globalsettings` (
  `id` bigint(20) NOT NULL,
  `SiteName` varchar(100) NOT NULL,
  `SiteContact` varchar(100) NOT NULL,
  `SiteEmail` varchar(254) NOT NULL,
  `SiteAddress` varchar(500) NOT NULL,
  `Sitedescription` varchar(500) NOT NULL,
  `Sitelicence` varchar(300) NOT NULL,
  `Sitetwitterlink` varchar(300) NOT NULL,
  `Sitefacebooklink` varchar(300) NOT NULL,
  `Sitelinkdinlink` varchar(300) NOT NULL,
  `Siteinstagramlink` varchar(300) NOT NULL,
  `Sitewhatsapplink` varchar(300) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `back_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `Sitefax` varchar(300) DEFAULT NULL,
  `brochure_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_globalsettings`
--

INSERT INTO `adminpanel_globalsettings` (`id`, `SiteName`, `SiteContact`, `SiteEmail`, `SiteAddress`, `Sitedescription`, `Sitelicence`, `Sitetwitterlink`, `Sitefacebooklink`, `Sitelinkdinlink`, `Siteinstagramlink`, `Sitewhatsapplink`, `logo`, `back_image`, `brochure`, `Sitefax`, `brochure_name`) VALUES
(1, 'Ozone Overseas Service Pvt. Ltd.', '+977-01-5918794/5918796', 'info@ozoneoverseas.com', 'Airport, Kathmandu, Nepal', 'Ozone Overseas Services Pvt. Ltd. (Foreign Employment consultant) Corporate Head Office Airport, Kathmandu, Nepal', 'Gov. License No: 448/060/061', '', '', '', '', '', 'Global/ozen.png', 'Global/QatarDemand.jpg', 'brochure/profile.pdf', '977-(0)1-4112796', 'Our Brochure');

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel_navigation`
--

CREATE TABLE `adminpanel_navigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `position` int(11) NOT NULL,
  `page_type` varchar(50) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `short_desc` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `bannerimage` varchar(100) DEFAULT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_keyword` varchar(100) DEFAULT NULL,
  `icon_image` longtext DEFAULT NULL,
  `slider_image` varchar(100) DEFAULT NULL,
  `brochure` varchar(100) DEFAULT NULL,
  `Parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminpanel_navigation`
--

INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`) VALUES
(1, 'Home', 'Home', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(2, 'About Us', 'About Us', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(3, 'Documents', 'Documents', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(4, 'Job Seeker', 'Job Seeker', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(5, 'Job Vacancy', 'Job Vacancy', 'Publish', 5, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(6, 'Pages', 'Pages', 'Publish', 6, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(7, 'Contact Us', 'Contact Us', 'Publish', 7, 'Contact', '', '', '', '', '', '', '', 'about/LICENSE_Fatma20Al20Getty20UK_Sophie_xDZehnk.webp', '', NULL),
(8, 'Slider', 'JOB SEEKER', 'Publish', 1, 'Group', 'YOUR CAREER STARTS HERE...', '', 'Connect with OZONE Oversease To make your dreams come true', 'about/ozen.png', '', '', '', '', '', 1),
(9, 'Slider 1', '', 'Publish', 1, 'Slider', 'YOUR CAREER STARTS HERE...', '', 'Connect with OZONE Overseas To make your dreams come true', 'about/UAEDemand_LFDz1jx.jpg', '', '', '', '', '', 8),
(10, 'Slider 2', '', 'Publish', 2, 'Slider', 'YOUR CAREER STARTS HERE...', '', 'Connect with OZONE Overseas To make your dreams come true', 'about/banner-1_qWz1dLM.jpg', '', '', '', '', '', 8),
(11, 'Slider 3', '', 'Publish', 3, 'Slider', 'YOUR CAREER STARTS HERE...', '', 'Connect with OZONE Overseas To make your dreams come true', 'about/Saudi-Arabia-Riyadh_T5WKv7P.jpg', '', '', '', '', '', 8),
(12, 'Gallery', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 6),
(13, 'About', '', 'Publish', 2, 'Home/About', 'Welcome To Our Ozone Overseas Services Pvt. Ltd. (Foreign Employment consultant)', '<p class=\"mt-4 aos-init aos-animate\" data-aos=\"fade-down\" data-aos-easing=\"linear\" data-aos-duration=\"1500\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; transform: translateZ(0px); line-height: 28px; opacity: 1; transition-property: opacity, transform; transition-duration: 1.5s; transition-timing-function: cubic-bezier(0.25, 0.25, 0.75, 0.75);\"><span style=\"margin: 0px; padding: 0px;\"><b><span style=\"font-family: &quot;Arial Black&quot;;\">Ozone </span><span style=\"font-family: &quot;Arial Black&quot;;\">Overseas</span></b></span><span style=\"font-family: &quot;Arial Black&quot;;\">&nbsp;</span>is registered with the Government of Nepal.</p><p class=\"mt-4 aos-init aos-animate\" data-aos=\"fade-down\" data-aos-easing=\"linear\" data-aos-duration=\"1500\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; transform: translateZ(0px); line-height: 28px; opacity: 1; transition-property: opacity, transform; transition-duration: 1.5s; transition-timing-function: cubic-bezier(0.25, 0.25, 0.75, 0.75);\">We been engaged in the recruitment sector for nine years, and we have established a huge clientele base because of the high-quality service we provide. We are always interested in</p><p class=\"mt-4 aos-init aos-animate\" data-aos=\"fade-down\" data-aos-easing=\"linear\" data-aos-duration=\"1500\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px; transform: translateZ(0px); line-height: 28px; opacity: 1; transition-property: opacity, transform; transition-duration: 1.5s; transition-timing-function: cubic-bezier(0.25, 0.25, 0.75, 0.75);\">expanding our market reach in places around the globe. When we recruit workers, we fulfill all the necessary requirements and uphold all the protocols related to the recruitment process.</p>', '', 'about/blog-01_u6T3Shx.jpg', '', '', '', '', '', 1),
(14, 'Our Services', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 1),
(15, 'Services 1', '', 'Publish', 2, 'Our Service', 'To serve as bridge between the Nepalese....', '', 'Click Here and read\r\nmore....', 'about/services2.jpg', '', '', '', '', '', 14),
(16, 'Services 2', '', 'Publish', 2, 'Our Service', 'To serve as local representative for....', '', 'Click Here and read\r\nmore....', 'about/services3.png', '', '', '', '', '', 14),
(17, 'Services 3', '', 'Publish', 3, 'Our Service', 'To provide timely communication....', '', 'Click Here and read\r\nmore....', 'about/services1.jpg', '', '', '', '', '', 14),
(18, 'Services 4', '', 'Publish', 4, 'Our Service', 'To ensure full training and...', '', 'Click Here and read\r\nmore....', 'about/services4.jpg', '', '', '', '', '', 14),
(19, 'Services', 'OUR SERVICES', 'Publish', 1, 'Service', '', '', '', '', '', '', '', '', '', 14),
(20, 'Overseas Services', '', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', 1),
(21, 'PASSIONATE', '', 'Publish', 2, 'Overseas Services', '(OZONE) Certified Company', '', '', '', '', '', 'fa-solid fa-users', '', '', 20),
(22, 'COMPETENT', '', 'Publish', 2, 'Overseas Services', '(OZONE) Certified Company', '', '', '', '', '', 'fa-solid fa-users', '', '', 20),
(23, 'IDENTIFICATION', '', 'Publish', 3, 'Overseas Services', '(OZONE) Certified Company', '', '', '', '', '', 'fa-solid fa-users', '', '', 20),
(24, 'BEST CANDIDATES', '', 'Publish', 4, 'Overseas Services', '(OZONE) Certified Company', '', '', '', '', '', '', '', '', 20),
(25, 'Overseas Services', 'Why Our Ozone ', 'Publish', 1, 'Overseas Services 1', 'Overseas Services', '', '', '', '', '', '', '', '', 20),
(26, 'Job Requirement', '', 'Publish', 5, 'Group', '', '', '', '', '', '', '', '', '', 1),
(27, 'Receive Legal Documents', '', 'Publish', 2, 'Requirement', '', '', '', 'about/pro1.svg', '', '', '', '', '', 26),
(28, 'Pre-Approval from Ministry of Labour Department', '', 'Publish', 3, 'Requirement', '', '', '', 'about/preapprova-step2.svg', '', '', '', '', '', 26),
(29, 'Procedure for', 'Job Requirement', 'Publish', 1, 'Home1', '', '', '', '', '', '', '', '', '', 26),
(30, 'Vacancy Announcement', '', 'Publish', 4, 'Requirement', '', '', '', 'about/vacancyAnnouncement-step3.svg', '', '', '', '', '', 26),
(31, 'Candidate Interview', '', 'Publish', 5, 'Requirement', '', '', '', 'about/candidateInterview-step4.svg', '', '', '', '', '', 26),
(32, 'Pre Medical Checkup', '', 'Publish', 6, 'Requirement', '', '', '', 'about/medical.svg', '', '', '', '', '', 26),
(33, 'Visa Processing', '', 'Publish', 7, 'Requirement', '', '', '', 'about/Visa_Processing-step6.svg', '', '', '', '', '', 26),
(34, 'Orientation & Approval from Ministry of labour Department', '', 'Publish', 8, 'Requirement', '', '', '', 'about/OrientationApproval-step7.svg', '', '', '', '', '', 26),
(35, 'Pre-Departure Orientation', '', 'Publish', 9, 'Requirement', '', '', '', 'about/PredepartureOrientation-step8.svg', '', '', '', '', '', 26),
(36, 'Clients Says', '', 'Publish', 6, 'Group', '', '', '', '', '', '', '', '', '', 1),
(37, 'What Clients Says', '', 'Publish', 1, 'Client1', '', '<p><span style=\"text-align: center;\">Help today because tomorrow you may be the one who</span><br style=\"margin: 0px; padding: 0px; text-align: center;\"><span style=\"text-align: center;\">needs more helping!</span><br></p>', '', '', '', '', '', '', '', 36),
(38, 'Johnt smith', 'Marketer', 'Publish', 2, 'Clients Say', '', '', 'The secret to happiness lies in helping others. Never underestimate the difference YOU\r\n                            can make in the lives of the poor, the abused and the helpless.', 'about/test2.jpg', '', '', '', '', '', 36),
(39, 'Ibrahim sekha', 'CEO, HR companies', 'Publish', 3, 'Clients Say', '', '', 'The secret to happiness lies in helping others. Never underestimate the difference YOU\r\n                            can make in the lives of the poor, the abused and the helpless.', 'about/test4.jpg', '', '', '', '', '', 36),
(40, 'Angelina rose', 'Business women', 'Publish', 4, 'Clients Say', '', '', 'The secret to happiness lies in helping others. Never underestimate the difference YOU\r\n                            can make in the lives of the poor, the abused and the helpless.', 'about/team7.jpg', '', '', '', '', '', 36),
(41, 'Mahika beg', 'Manager', 'Publish', 5, 'Clients Say', '', '', 'The secret to happiness lies in helping others. Never underestimate the difference YOU\r\n                            can make in the lives of the poor, the abused and the helpless.', 'about/team3.jpg', '', '', '', '', '', 36),
(42, 'Client', '', 'Publish', 8, 'Group', '', '', '', '', '', '', '', '', '', 1),
(43, 'Image 1', '', 'Publish', 2, 'Client', '', '', '', 'about/2.png', '', '', '', '', '', 42),
(44, 'Image 2', '', 'Publish', 3, 'Client', '', '', '', 'about/3.png', '', '', '', '', '', 42),
(45, 'Our Clients', '', 'Publish', 1, 'Client2', '', '', '', '', '', '', '', '', '', 42),
(46, 'Image 3', '', 'Publish', 4, 'Client', '', '', '', 'about/4.png', '', '', '', '', '', 42),
(47, 'Image 4', '', 'Publish', 5, 'Client', '', '', '', 'about/5.png', '', '', '', '', '', 42),
(48, 'Image 5', '', 'Publish', 6, 'Client', '', '', '', 'about/6.png', '', '', '', '', '', 42),
(49, 'Image 6', '', 'Publish', 7, 'Client', '', '', '', 'about/client1.png', '', '', '', '', '', 42),
(50, 'About Company', '', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', 2),
(51, 'About Company', 'About Us', 'Publish', 1, 'About Company', '', '<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\nline-height:normal;mso-outline-level:3\"><span style=\"font-size:26.5pt;\r\nfont-family:&quot;ui-serif&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Segoe UI&quot;;color:#079B40;mso-font-kerning:0pt;mso-ligatures:\r\nnone\">About</span><span style=\"font-size: 26.5pt; font-family: ui-serif, serif;\">&nbsp;Ozone Overseas<br>\r\nServices Pvt. Ltd. (Foreign Employment consultant)<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-align:justify;line-height:normal\"><span style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Ozone Overseas is\r\nregistered with the Government of Nepal.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-align:justify;line-height:normal\"><span style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">We been engaged in the\r\nrecruitment sector for nine years, and we have established a huge clientele\r\nbase because of the high-quality service we provide. We are always interested\r\nin expanding our market reach in places around the globe. When we recruit\r\nworkers, we fulfill all the necessary requirements and uphold all the protocols\r\nrelated to the recruitment process.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\r\ntext-align:justify;line-height:normal\"><span style=\"font-size: 12pt; font-family: &quot;Segoe UI&quot;, sans-serif;\">Many companies around\r\nthe world today value Nepali workers, and because of that demand, there are\r\nrecruiters here in Nepal who cut corners when doing business. We at Ozon Overseas\r\ndo not believe in such practices. We believe that the only way to succeed in\r\nthis business is by focusing on the quality of our services. And that approach,\r\nby its very definition, means that we adhere to the highest of professional\r\nstandards.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"line-height: normal;\">We recruit only the best\r\nand provide only the best service for our clients. What that means is that no\r\nmatter what your personnel needs, we will do our best to find the optimal\r\nworkers for you and train them before they start working for you, so that by the\r\ntime they are working for you, you’ll be dealing with some of the most\r\nprofessional workers available.</p><ul class=\"list-inline\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"list-inline-item\" style=\"margin: 0px; padding: 0px;\"><a href=\"\" style=\"margin: 0px; padding: 0px;\"><span class=\"fa-solid fa-check mx-3\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 2px; display: var(--fa-display,inline-block); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; line-height: 1; text-rendering: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></a>Fast Recognition</li></ul><ul class=\"list-inline\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"list-inline-item\" style=\"margin: 0px; padding: 0px;\"><a href=\"\" style=\"margin: 0px; padding: 0px;\"><span class=\"fa-solid fa-check mx-3\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 2px; display: var(--fa-display,inline-block); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; line-height: 1; text-rendering: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></a>Job For Everyone</li></ul><ul class=\"list-inline\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"list-inline-item\" style=\"margin: 0px; padding: 0px;\"><a href=\"\" style=\"margin: 0px; padding: 0px;\"><span class=\"fa-solid fa-check mx-3\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 2px; display: var(--fa-display,inline-block); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; line-height: 1; text-rendering: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></a>Big Company</li></ul><ul class=\"list-inline\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"list-inline-item\" style=\"margin: 0px; padding: 0px;\"><a href=\"\" style=\"margin: 0px; padding: 0px;\"><span class=\"fa-solid fa-check mx-3\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 2px; display: var(--fa-display,inline-block); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; line-height: 1; text-rendering: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></a>Job Solution</li></ul><ul style=\"margin-top:0in\" type=\"disc\">\r\n</ul>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', '', '', '', '', '', 'about/blog-01_B7c4mKT.jpg', '', 50),
(52, 'Slider', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 50),
(53, 'About Image 1', '', 'Publish', 1, 'About', '', '', '', 'about/group-of-creative-people-working-together-e1623747283105.jpg', '', '', '', '', '', 52),
(54, 'About Image 2', '', 'Publish', 2, 'About', '', '', '', 'about/blog-03.jpg', '', '', '', '', '', 52),
(55, 'About Image 3', '', 'Publish', 3, 'About', '', '', '', 'about/blog-02.jpg', '', '', '', '', '', 52),
(56, 'About Image 4', '', 'Publish', 4, 'About', '', '', '', 'about/placement-services-250x250.webp', '', '', '', '', '', 52),
(57, 'All Legal Documents', 'Legal Documents', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 2),
(58, 'Legal Documents', 'Legal Documents', 'Publish', 1, 'Documents', '', '', '', '', '', '', '', 'about/banner.jpg', '', 57),
(59, 'Image 1', 'Pan Certificate', 'Publish', 2, 'Legal Document', '', '', '', 'about/PAN_Certificate.jpg', '', '', '', '', 'brochure/PAN_Certificate.pdf', 57),
(60, 'Image 2', 'Permission Certificate', 'Publish', 3, 'Legal Document', '', '', '', 'about/Permission_Certificate.jpg', '', '', '', '', 'brochure/Permission_Certificate.pdf', 57),
(61, 'Image 3', 'Shareholders Registration', 'Publish', 4, 'Legal Document', '', '', '', 'about/Shareholders_Registration.jpg', '', '', '', '', 'brochure/Shareholders_Registration.pdf', 57),
(62, 'Image 4', 'Pramand Patra', 'Publish', 5, 'Legal Document', '', '', '', 'about/Pramand_Patra.jpg', '', '', '', '', 'brochure/Pramand_Patra.pdf', 57),
(64, 'Our Message', '', 'Publish', 3, 'Group', '', '<p class=\"MsoNormal\" align=\"center\" style=\"mso-margin-bottom-alt:auto;text-align:\r\ncenter;line-height:normal;mso-outline-level:3\"><br></p>', '', '', '', '', '', '', '', 2),
(65, 'Our Message', 'Our Message', 'Publish', 1, 'Our Message', '', '<p class=\"MsoNormal\" align=\"center\" style=\"mso-margin-bottom-alt:auto;text-align:\r\ncenter;line-height:normal;mso-outline-level:3\"><span style=\"font-size: 20.5pt; font-family: ui-serif, serif;\">Message from Our Ozone<br>\r\nOverseas Services Pvt. Ltd.<br>\r\n(Foreign Employment consultant)<o:p></o:p></span></p>', '', '', '', '', '', 'about/banner7.jpg', '', 64),
(66, 'Nabin K. Paudel', 'Message From Chairman', 'Publish', 2, 'Message', 'Chairman, Ozone Overseas Service Pvt. Ltd.', '<p class=\"MsoNormal\" style=\"text-align: justify; \">We are very glad and proud to let you know about our\r\nexcellent performance since last 16years.We are here in our present position\r\nonly because of our reliable qualitative services and its trustworthy as well\r\nas tireless support from our trained staffs and our punctuality in every\r\naspects of practical life works.<o:p></o:p></p>', '', 'about/WhatsApp_Image_2023-08-13_at_15.05.34.jpg', '', '', '', '', '', 64),
(67, 'Mr. Chitra Bahadur Roka', 'Message From Managing Director', 'Publish', 3, 'Message', 'Managing Director, Ozone Overseas Service Pvt. Ltd.', '<p class=\"MsoNormal\" style=\"text-align: justify; \">GREETINGS FROM OZONE OVERSEAS GROUP We take pride in being\r\none of the pioneer and prominent consortium of manpower agency having its\r\nremarkable achievement in recruitment industry in Nepal. Having been in this\r\nindustry since 1998 from Abu Dhabi Police force to till now, we have had lots\r\nof experiences with our various clients in this field of better satisfactory\r\nservices always. I would like to extend my heartfelt thanks and gratitude to\r\nthe all clients and associates for entrusting and giving us the opportunity to\r\nrender our services.<o:p></o:p></p>', '', 'about/WhatsApp_Image_2023-08-13_at_15.05.00.jpg', '', '', '', '', '', 64),
(69, 'Our Vision', '', 'Publish', 5, 'Group', '', '', '', '', '', '', '', '', '', 2),
(70, 'Our Vision', 'Our Vision', 'Publish', 1, 'Our Vision', '', '<p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">The vision of Ozone Overseas Pvt.Ltd. is to be recognized and well leader in the region by fulfilling the dreams of client i.e foreign companies, via providing manpower recruiting services to foreign companies. this will assist to strengthen the</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">condition of the Country as well as the employers. it will further assist to achieve rapid profitable growth by ensuring that our clients needs are satisfied in an efficient and cost effective manner.</p>', '', '', '', '', '', 'about/banner-2_kSdWQzS.jpg', '', 69),
(71, 'Image 1', '', 'Publish', 2, 'Vision', '', '', '', 'about/business-career-and-recruitment-concept-group-of-employers-in-e1652686279389-pow2a_x7ye8pV.jpg', '', '', '', '', '', 69),
(72, 'Image 2', '', 'Publish', 3, 'Vision', '', '', '', 'about/blog-01_fsRlydi.jpg', '', '', '', '', '', 69),
(73, 'Image 3', '', 'Publish', 4, 'Vision', '', '', '', 'about/blog-03_hBKomnE.jpg', '', '', '', '', '', 69),
(74, 'Image 4', '', 'Publish', 5, 'Vision', '', '', '', 'about/group-of-creative-people-working-together-e1623747283105_LU4Ekon.jpg', '', '', '', '', '', 69),
(75, 'Our Mission', '', 'Publish', 6, 'Group', '', '', '', '', '', '', '', '', '', 2),
(76, 'Our Mission', 'Our Mission', 'Publish', 1, 'Our Mission', '', '<p style=\"text-align: justify; \">Ozone Overseas Services Pvt.Ltd. Specializes in helping to provide right human resources to the clients in all aspects/features of the business start-up cycle from concept to operation.<br></p>', '', '', '', '', '', 'about/slider2.jpg', '', 75),
(77, 'Image 1', '', 'Publish', 2, 'Mission', '', '', '', 'about/project-09.jpg', '', '', '', '', '', 75),
(78, 'Image 2', '', 'Publish', 3, 'Mission', '', '', '', 'about/project-04.jpg', '', '', '', '', '', 75),
(79, 'Image 3', '', 'Publish', 4, 'Mission', '', '', '', 'about/project-08.jpg', '', '', '', '', '', 75),
(80, 'Our organization structure', 'Our organization structure', 'Publish', 7, 'Organizational structure', '', '', '', 'about/11.JPG', '', '', '', 'about/slider0.jpg', '', 2),
(81, 'Demand Letter', 'Demand Letter', 'Publish', 1, 'Demand Letter', 'Check List for Demand letter attestation', '<p><br></p><table class=\"MsoNormalTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"background: white;\"><tbody><tr><td style=\"border-width: 1pt; border-color: black; border-image: initial; padding: 7.5pt;\">1.</td><td style=\"border-width: 1pt; border-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Duly filled up Application Form<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">2.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Duly Attested Standard Demand Letter<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">3.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Service (Two Party) Agreement<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">4.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Power of Attorney<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">5.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Standard Employment Contract<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">6.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Guarantee Letter<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">7.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Valid ID copy of the Sponsor/Owner and the Submittant<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">8.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Copy of valid Trade/Commercial License of the Company and the Nepali Manpower Agency<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">9.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Authentic Quota Paper from the concerned authority<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">10.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Id copy of Authorized Person (Owner/HR Manager/PRO) of the company or Authorization letter to submit and collect the documents.<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">11.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Salary Sheet of the last month of Nepali Workers if employed in the Company and name List with emirates ID and contact numbers of them.<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\">12.</td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\">Declaration letter from the company (stating the nature of company such as gov/semi-gov/private)<o:p></o:p></span></p></td></tr><tr><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><br></td><td style=\"border-top: none; border-right-width: 1pt; border-right-color: black; border-bottom-width: 1pt; border-bottom-color: black; border-left-width: 1pt; border-left-color: black; border-image: initial; padding: 7.5pt;\"><h4 style=\"margin-bottom: 0in; line-height: normal;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: black;\"><u><span style=\"font-weight: bolder;\">All copies of the documents need to be self attested by authorized submitter.</span></u></span></h4></td></tr></tbody></table>', '', '', '', '', '', 'about/skytree-tokyo.webp', '', 3),
(82, 'Requirement Procedure', 'Requirement Procedure', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 3),
(83, 'Requirement Procedure', 'Procedure for Requirement', 'Publish', 1, 'Recruiting Procedure', '', '', '', '', '', '', '', 'about/Balance-in-Bahrain-feature_WEpG2TK.webp', '', 82),
(84, 'Receive Legal Documents', '', 'Publish', 2, 'Procedure', 'Receive Legal Documents', '<ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul>', '', 'about/receive.jpg', '', '', '', '', '', 82),
(85, 'Pre-Approval from Ministry of Labour Department', '', 'Publish', 3, 'Procedure', 'Pre-Approval from Ministry of Labour Department', '<p style=\"text-align: justify; margin-right: 0px; margin-left: 0px; padding: 0px;\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum laudantium tempore et. Quasi, eaque doloremque nisi eius dolorem consequuntur rem eligendi atque deserunt consequatur mollitia tenetur, illum perspiciatis placeat quos.</p><p style=\"text-align: justify; margin-right: 0px; margin-left: 0px; padding: 0px;\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum laudantium tempore et. Quasi, eaque doloremque nisi eius dolorem consequuntur rem eligendi atque deserunt consequatur mollitia tenetur, illum perspiciatis placeat quos.</p>', '', 'about/pre.jpg', '', '', '', '', '', 82),
(86, 'Vacancy Announcement', '', 'Publish', 4, 'Procedure', 'Vacancy Announcement', '<p style=\"text-align: justify; margin-right: 0px; margin-left: 0px; padding: 0px;\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum laudantium tempore et. Quasi, eaque doloremque nisi eius dolorem consequuntur rem eligendi atque deserunt consequatur mollitia tenetur, illum perspiciatis placeat quos.</p><p style=\"text-align: justify; margin-right: 0px; margin-left: 0px; padding: 0px;\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum laudantium tempore et. Quasi, eaque doloremque nisi eius dolorem consequuntur rem eligendi atque deserunt consequatur mollitia tenetur, illum perspiciatis placeat quos.</p>', '', 'about/newspaper_rC0Lx7T.jpg', '', '', '', '', '', 82),
(87, 'Candidate Interview', '', 'Publish', 5, 'Procedure', 'Candidate Interview', '<h6 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Interview Process</h6><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Day 01 : Advertising in authorized daily newspapers.</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Day 05 : Pre-screening of all suitable candidates .</p><p style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Day 08 : Final interview of candidates by the client and trade tests where applicable</p>', '', 'about/selective-focus-of-employee-holding-resume-near-recruiters-at-table-in-office.jpg', '', '', '', '', '', 82),
(88, 'Pre Medical Checkup', '', 'Publish', 6, 'Procedure', 'Pre Medical Checkup', '<p><span style=\"text-align: justify;\">All the selected candidates are sent for medical fitness check-up in the Government authorized Medical Centers.</span><br></p>', '', 'about/medical.webp', '', '', '', '', '', 82),
(89, 'Orientation', '', 'Publish', 7, 'Procedure', 'Orientation', '<p><span style=\"text-align: justify;\">The objective of orientation is to inform the candidates about the employing country, climatic conditions, jobs, culture, environment, laws &amp; regulations before their departure. This could help them to adjust to their new environment quickly and perform well in their job.</span><br></p>', '', 'about/Employee-Orientation-Program.jpg', '', '', '', '', '', 82),
(92, 'Requirement Documents', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 3),
(93, 'Requirement Documents', 'Requirement Documents', 'Publish', 1, 'Recruiting Documents', '', '', '', '', '', '', '', 'about/europ.jpg', '', 92),
(94, 'Requirement Documents', '', 'Publish', 2, 'Documents 1', 'Required documents from Qatar, Kuwait, Bahrain, Oman & UAE to recruit manpower from Nepal', '<ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul>', '', 'about/receive_jjNBY2A.jpg', '', '', '', '', '', 92),
(95, 'Requirement Documents', '', 'Publish', 3, 'Documents 1', 'Required documents from Saudi Arabia to recruit manpower from Nepal', '<ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Visa Slip.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Consulate Authorization.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attonery.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Commercial Registration.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Contract.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agency Agreement.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter.</span></li></ul>', '', 'about/Legal-Document_8WfQDJI.jpg', '', '', '', '', '', 92),
(96, 'Requirement Documents', '', 'Publish', 4, 'Documents 1', 'Required documents from Malaysia to recruit people from Nepal', '<ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">KDN Approval (from Labour Ministry).</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Translation Letter (from Labour Ministry or Home Ministry).</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attonery.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agency Agreement.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Contract.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Letter from Royal Nepal Embassy to Labour Department Nepal.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Notary Public ( Notari awam).</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">ID copy of authorized person of employer company.</span></li></ul>', '', 'about/receive_lRQDUEx.jpg', '', '', '', '', '', 92),
(97, 'Job List', '', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', 4),
(98, 'Job Details', '', 'Publish', 2, 'Group', '', '<p><br></p>', '', '', '', '', '', '', '', 4),
(99, 'Job List', 'Find Your Dream Job Here', 'Publish', 1, 'Job List', '', '', '', '', '', '', '', 'about/banner_ILmimk2.jpg', '', 97),
(104, 'Unskilled', '', 'Publish', 2, 'Group', '', '', '', '', '', '', '', '', '', 97),
(105, 'Cleaner', '', 'Publish', 2, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(106, 'Watchman / Security Guards', '', 'Publish', 2, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(107, 'Office Boy', '', 'Publish', 3, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(108, 'Agricultural Workers', '', 'Publish', 4, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(109, 'Construction Workers', '', 'Publish', 5, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(110, 'Packers/ Loaders', '', 'Publish', 6, 'UNSKILLED', '', '', '', '', '', '', '', '', '', 104),
(111, 'Semi-Skilled', '', 'Publish', 3, 'Group', '', '', '', '', '', '', '', '', '', 97),
(112, 'Farmers and ranchers', '', 'Publish', 2, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(113, 'Agricultural technicians and laborers', '', 'Publish', 3, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(114, 'Agricultural equipment operators', '', 'Publish', 4, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(115, 'Livestock handlers', '', 'Publish', 5, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(116, 'Agricultural sale representatives', '', 'Publish', 6, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(117, 'Agricultural educators and trainers', '', 'Publish', 7, 'SEMISKILLED', '', '', '', '', '', '', '', '', '', 111),
(118, 'Skilled', '', 'Publish', 4, 'Group', '', '', '', '', '', '', '', '', '', 97),
(119, 'Engineers - Civil,Mechanicla,Computer', '', 'Publish', 2, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(120, 'Architects', '', 'Publish', 3, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(121, 'Plan Operators Electrical, Mechanical', '', 'Publish', 4, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(122, 'Computer Programmer', '', 'Publish', 5, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(123, 'Managers', '', 'Publish', 6, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(124, 'Accountants', '', 'Publish', 7, 'SKILLED', '', '', '', '', '', '', '', '', '', 118),
(128, 'Unskilled', '', 'Publish', 1, 'SKILLED 1', '', '', '', '', '', '', '', '', '', 104),
(129, 'Semi-Skilled', '', 'Publish', 1, 'SKILLED 2', '', '', '', '', '', '', '', '', '', 111),
(130, 'Skilled', '', 'Publish', 1, 'SKILLED 3', '', '', '', '', '', '', '', '', '', 118),
(132, 'Job Details', 'All Job Details', 'Publish', 1, 'Job Details', '', '', '', '', '', '', '', 'about/banner_7iecfTI.jpg', '', 98),
(133, 'All Unskilled Job Details', '', 'Publish', 2, 'All detail', '', '<p style=\"text-align: justify; \">Unskilled labor refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.<br></p>', '', '', '', '', '', '', '', 98),
(134, 'All Semi-Skilled Job Details', '', 'Publish', 3, 'All detail', '', '<p style=\"text-align: justify; \">Semi-Skilled Staff refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.<br></p>', '', '', '', '', '', '', '', 98),
(135, 'All Skilled Job Details', '', 'Publish', 4, 'All detail', '', '<p style=\"text-align: justify; \">Skilled Staff refers to workers who have no special training or experience. It is a part of the workforce with a very limited skill set. Unskilled labor consists of people with a high school diploma or less. However, when the economy is struggling, people with degrees may do unskilled work.<br></p>', '', '', '', '', '', '', '', 98),
(137, 'Image 1', 'Vacancy Of Job', 'Publish', 2, 'Job Vacancy', '2023.08.05', '', '', 'about/newspaper_RIjJ9SM.jpg', '', '', '', '', 'brochure/newspaper_VXF8ihw.jpg', 5),
(138, 'Image 2', 'Vacancy Of Job', 'Publish', 2, 'Job Vacancy', '2023.08.05', '', '', 'about/newspaperjpg_bEfk4E1.jpg', '', '', '', '', 'brochure/newspaperjpg_uYdElJ1.jpg', 5),
(141, 'Job Vacancy', 'Job Vacancy', 'Publish', 1, 'Job3', '', '', '', '', '', '', '', 'about/banner_KHy4JJ5.jpg', '', 5),
(142, 'Our Instructors', '', 'Publish', 1, 'Group', '', '', '', '', '', '', '', '', '', 6),
(144, 'Our Team', 'Our Team Member', 'Publish', 1, 'Our Instructors', '', '', '', '', '', '', '', 'about/banner_v0iA2Tg.jpg', '', 142),
(145, 'Nabin K. Paudel', 'Chairman (OZONE)', 'Publish', 2, 'Instructors', '', '', '', 'about/Chairman_1.jpg', '', '', '', '', '', 142),
(146, 'Manager', 'Manager (OZONE)', 'Publish', 3, 'Instructors', '', '', '', 'about/Manager.jpg', '', '', '', '', '', 142),
(147, 'Public Relation Officer', 'Public Relation Officer (OZONE)', 'Publish', 4, 'Instructors', '', '', '', 'about/Public_Relation_Officer_1.jpg', '', '', '', '', '', 142),
(148, 'Acountant', 'Acountant (OZONE)', 'Publish', 6, 'Instructors', '', '', '', 'about/Accountant.jpg', '', '', '', '', '', 142),
(149, 'Acountant', 'Acountant, (OZONE)', 'Publish', 7, 'Instructors', '', '', '', 'about/Documentation.jpg', '', '', '', '', '', 142),
(150, 'Receptionist', 'Receptionist, (OZONE)', 'Publish', 8, 'Instructors', '', '', '', 'about/Reception.jpg', '', '', '', '', '', 142),
(151, 'Our Gallery', 'Our Gallerys', 'Publish', 1, 'Gallery', '', '<p><br></p>', '', '', '', '', '', 'about/banner_zaRFzQn.jpg', '', 12),
(152, 'Image 1', '', 'Publish', 2, 'Gall', '', '', '', 'about/business-career-and-recruitment-concept-group-of-employers-in-e1652686279389-pow2a_vToE3XY.jpg', '', '', '', '', '', 12),
(153, 'Image 2', '', 'Publish', 3, 'Gall', '', '', '', 'about/blog-01_zOlXvTw.jpg', '', '', '', '', '', 12),
(154, 'Image 3', '', 'Publish', 4, 'Gall', '', '', '', 'about/blog-03_cYEP3ka.jpg', '', '', '', '', '', 12),
(155, 'Image 4', '', 'Publish', 5, 'Gall', '', '', '', 'about/main_01_tcm100-6336092_tcm100-6286607-32.jpg', '', '', '', '', '', 12),
(156, 'Image 5', '', 'Publish', 6, 'Gall', '', '', '', 'about/project-05.jpg', '', '', '', '', '', 12),
(157, 'Image 6', '', 'Publish', 7, 'Gall', '', '', '', 'about/group-of-creative-people-working-together-e1623747283105_Qhe6aFD.jpg', '', '', '', '', '', 12),
(158, 'Image 7', '', 'Publish', 8, 'Gall', '', '', '', 'about/project-04_acYq7SN.jpg', '', '', '', '', '', 12),
(164, 'Our Services', 'Our Services', 'Publish', 8, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(165, 'WHY CHOOSE US', '', 'Publish', 9, 'Group', '', '', '', '', '', '', '', '', '', NULL),
(166, 'Our Services', 'Our Services', 'Publish', 1, 'Service 1', 'COUNTRIES WE SERVE', '<ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To serve as bridge between the Nepalese human resources and the overseas employer.</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To serve as local representative for the foreign companies to complete government formalities for recruitment, arrangements for interview pre-selection of manpower and other assignments as required.</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To provide timely communication and professionals services to the workers and the companies hiring our services</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To ensure full training and knowledge to the concerned manpower in related fields.</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To provide global overseas employment opportunities for a qualified, skilled, trained sincere and enthusiastic nepales workers.</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To make a trustworthy connection between employee and the employer</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To help Share, learn and explore further advancement for nepales existing manpower.</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To provide effective and efficient human resources for required jobs and nepalese in reducing unemployement problems</span></li><li style=\"text-align: justify; margin: 0px; padding: 0px; line-height: 34px;\"><span style=\"margin: 0px; padding: 0px;\">To assist for uplifting country\'s economic status by providing quality and qualified manpower to the world and helping the Government to increase the volume of foreign currency revenue.</span></li></ul>', '', '', '', '', '', 'about/banner-1_HGg8m4b.jpg', '', 164),
(167, 'Dubai', 'DUBAI', 'Publish', 2, 'Countries', 'Requirement Documents', '<div class=\"col-lg-4 \" style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x) * .5); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x) * .5); flex-basis: auto; width: 364px; max-width: 100%; font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"><div class=\"event-img \" style=\"margin: 20px 0px 0px; padding: 0px;\"></div></div><div class=\"col-lg-8 \" style=\"margin-top: var(--bs-gutter-y); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: calc(var(--bs-gutter-x) * .5); padding-bottom: 0px; padding-left: calc(var(--bs-gutter-x) * .5); flex-basis: auto; width: 728px; max-width: 100%;\"><div class=\"event-content\" style=\"margin: 0px; padding: 0px 0px 0px 25px;\"><h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from DUBAI to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul></div></div></div>', '', 'about/images_Y8F3ouj.jpg', '', '', '', 'about/banner_j5cLGy4.jpg', '', 164);
INSERT INTO `adminpanel_navigation` (`id`, `name`, `caption`, `status`, `position`, `page_type`, `title`, `short_desc`, `desc`, `bannerimage`, `meta_title`, `meta_keyword`, `icon_image`, `slider_image`, `brochure`, `Parent_id`) VALUES
(169, 'Qatar', 'Qatar', 'Publish', 3, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from Qatar to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul></div>', '', 'about/LICENSE_Fatma20Al20Getty20UK_Sophie_BrhmEh5.webp', '', '', '', 'about/banner-2_MroNf0h.jpg', '', 164),
(170, 'Bahrain', 'Bahrain', 'Publish', 4, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from BAHRAIN&nbsp;to recruit people from Nepal</h4><h4 style=\"text-align: justify; margin-right: 0px; margin-left: 0px; padding: 0px;\"><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px; text-align: start;\"><h2></h2><h4></h4><h5><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">KDN Approval (from Labour Ministry).</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Translation Letter (from Labour Ministry or Home Ministry).</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter.</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attonery.</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agency Agreement.</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Contract.</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Letter from Royal Nepal Embassy to Labour Department Nepal.</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Notary Public ( Notari awam).</span></li></ul><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">ID copy of authorized person of employer company.</span></li></ul></h5></div></h4>', '', 'about/Balance-in-Bahrain-feature.webp', '', '', '', 'about/QatarDemand.jpg', '', 164),
(171, 'Kuwait', 'Kuwait', 'Publish', 5, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from Kuwait to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul></div>', '', 'about/kuwaitDemand.jpg', '', '', '', 'about/UAEDemand.jpg', '', 164),
(172, 'Oman', 'Oman', 'Publish', 6, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from&nbsp; Oman to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attorney</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Agreement Contract</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agreement between the Company and GOC</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter</span></li></ul></div>', '', 'about/OMANdemand_fELggCR.jpg', '', '', '', 'about/europ_b6PPwZp.jpg', '', 164),
(174, 'Saudi Arabia', 'Saudi Arabia', 'Publish', 7, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from Saudi Arabia to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Visa Slip.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Consulate Authorization.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attonery.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Commercial Registration.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Contract.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agency Agreement.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter.</span></li></ul></div>', '', 'about/Saudi-Arabia-Riyadh.jpg', '', '', '', 'about/skytree-tokyo_mt7GR08.webp', '', 164),
(175, 'WHY CHOOSE US', 'WHY CHOOSE US', 'Publish', 1, 'Why', '', '<h2 class=\"text-center\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">HELP COMPANY AND EMPLOYEE TO GROW</h2><h6 class=\"text-center\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">(OZONE) Certified Company</h6>', '', 'about/logo-1.png', 'Client Question', '', '', 'about/banner-1_2Yv1QYe.jpg', '', 165),
(176, 'PASSIONATE', '', 'Publish', 2, 'Why 1', '', '<p>We out passion in our work. We thrive under pressure and complete our tasks before deadline.<br></p>', '', 'about/project-09_YhWNRAP.jpg', '', '', '', '', '', 165),
(177, 'COMPETENT', '', 'Publish', 3, 'Why 1', '', '<p style=\"text-align: justify; \">We offerv variety of services from manpower transfer to consultine by complying to the rules and practicing ethical behavior.<br></p>', '', 'about/message.jpg', '', '', '', '', '', 165),
(178, ' IDENTIFICATION', '', 'Publish', 4, 'Why 1', '', '<p style=\"text-align: justify; \">We take care while identifying skilled manpower of the companies. We are well equiped with the tools and equipments to identify the talents that the company require.<br></p>', '', 'about/group-of-creative-people-working-together-e1623747283105_DN1FEtm.jpg', '', '', '', '', '', 165),
(179, 'BEST CANDIDATES', '', 'Publish', 5, 'Why 1', '', '<p style=\"text-align: justify; \">We provide recruitment consulting at all stage of Requirement cycle. We help you to get the best Candidates for your best jobs.<br></p>', '', 'about/business-career-and-recruitment-concept-group-of-employers-in-e1652686279389-pow2a_FEQRLKz.jpg', '', '', '', '', '', 165),
(185, 'Japan', 'Japan', 'Publish', 8, 'Countries', 'Requirement Documents', '<h4 style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\">Required documents from Japan to recruit manpower from Nepal</h4><div class=\"procuder-list\" style=\"margin: 30px 0px 0px; padding: 0px;\"><ul style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 0px; margin-right: 0px; margin-left: 0px;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Visa Slip.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Consulate Authorization.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Demand Letter.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Power of Attonery.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Commercial Registration.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Employment Contract.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Agency Agreement.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Guarantee Letter.</span></li></ul></div>', '', 'about/Japan.jpg', '', '', '', 'about/JapanDemand_BJUayMC.jpg', '', 164),
(202, 'Bimal Kumar Guragain', 'International Marketing Manager(OZONE)', 'Publish', 5, 'Instructors', '', '', '', 'about/WhatsApp_Image_2023-08-30_at_11.11.36_CrCR8gX.jpg', '', '', '', '', '', 142);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact us', 7, 'add_contactus'),
(26, 'Can change contact us', 7, 'change_contactus'),
(27, 'Can delete contact us', 7, 'delete_contactus'),
(28, 'Can view contact us', 7, 'view_contactus'),
(29, 'Can add global settings', 8, 'add_globalsettings'),
(30, 'Can change global settings', 8, 'change_globalsettings'),
(31, 'Can delete global settings', 8, 'delete_globalsettings'),
(32, 'Can view global settings', 8, 'view_globalsettings'),
(33, 'Can add navigation', 9, 'add_navigation'),
(34, 'Can change navigation', 9, 'change_navigation'),
(35, 'Can delete navigation', 9, 'delete_navigation'),
(36, 'Can view navigation', 9, 'view_navigation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$v1bAew1hZyt74pAnqQlubl$1ciBTLjVQLvb/AFy+pDEiThPZvbWwBeA7uLpkeVi0FA=', '2023-09-03 05:17:50.296213', 1, 'Ozone', '', '', '', 1, 1, '2023-08-07 09:36:12.785734');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'adminpanel', 'contactus'),
(8, 'adminpanel', 'globalsettings'),
(9, 'adminpanel', 'navigation'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-07 07:20:01.890587'),
(2, 'auth', '0001_initial', '2023-08-07 07:20:07.213296'),
(3, 'admin', '0001_initial', '2023-08-07 07:20:08.560071'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-07 07:20:08.655932'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-07 07:20:08.727002'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-07 07:20:09.654989'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-07 07:20:10.159549'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-07 07:20:10.239762'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-07 07:20:10.263328'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-07 07:20:10.551270'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-07 07:20:10.582520'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-07 07:20:10.634470'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-07 07:20:10.715951'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-07 07:20:10.782572'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-07 07:20:10.848643'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-07 07:20:10.873608'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-07 07:20:10.981315'),
(18, 'sessions', '0001_initial', '2023-08-07 07:20:11.234435'),
(19, 'adminpanel', '0001_initial', '2023-08-07 09:19:37.968826'),
(20, 'adminpanel', '0002_remove_contactus_message_contactus_country_and_more', '2023-08-07 10:27:29.305578'),
(21, 'adminpanel', '0003_alter_navigation_page_type', '2023-08-07 11:21:22.889581'),
(22, 'adminpanel', '0004_globalsettings_sitefax', '2023-08-08 04:30:14.355539'),
(23, 'adminpanel', '0005_alter_navigation_page_type', '2023-08-08 05:24:25.678692'),
(24, 'adminpanel', '0006_alter_navigation_page_type', '2023-08-08 06:44:11.163102'),
(25, 'adminpanel', '0007_alter_navigation_page_type', '2023-08-08 08:43:17.447991'),
(26, 'adminpanel', '0008_alter_navigation_page_type', '2023-08-08 08:59:35.965312'),
(27, 'adminpanel', '0009_alter_navigation_page_type', '2023-08-08 09:31:03.930779'),
(28, 'adminpanel', '0010_alter_navigation_page_type', '2023-08-08 09:45:49.472667'),
(29, 'adminpanel', '0011_alter_navigation_page_type', '2023-08-08 09:57:03.989093'),
(30, 'adminpanel', '0012_alter_navigation_page_type', '2023-08-08 10:29:27.954436'),
(31, 'adminpanel', '0013_alter_navigation_page_type', '2023-08-08 10:48:32.642400'),
(32, 'adminpanel', '0014_alter_navigation_page_type', '2023-08-09 05:16:35.717411'),
(33, 'adminpanel', '0015_alter_navigation_page_type', '2023-08-09 05:38:29.740870'),
(34, 'adminpanel', '0016_alter_navigation_page_type', '2023-08-09 06:56:45.696280'),
(35, 'adminpanel', '0017_alter_navigation_page_type', '2023-08-09 08:59:46.518595'),
(36, 'adminpanel', '0018_alter_navigation_page_type', '2023-08-09 10:01:55.616231'),
(37, 'adminpanel', '0019_alter_navigation_page_type', '2023-08-10 04:47:25.547304'),
(38, 'adminpanel', '0020_globalsettings_brochure_name', '2023-08-17 10:06:49.654186'),
(39, 'adminpanel', '0021_rename_siteinstagram_globalsettings_siteinstagramlink_and_more', '2023-08-18 06:36:07.010092');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9cv8t7rg6pwjuyettvnbne7khwvv4f2i', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qWrnG:WtHX0gGocvRa9YihxQ5_VUonleI688jJD30Rrm9nI9g', '2023-09-01 05:13:06.015110'),
('b1221mtl4lpwttiv9849qfeym0srko7w', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qbFsu:yWt4u-ZsBEbYD2kPSKHX6K9SO0lom2Ny63UMi50d-HI', '2023-09-13 07:45:04.764296'),
('ba2vonleuc8gs1v6b69n4uywm9i9uyvn', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qTxm1:KWPiVpGM1pK3D0ZpBnHVVhC7iqrFCyzJX-bo6LCpUEM', '2023-08-24 04:59:49.802767'),
('c1w9n6d59bk1m9m7iy5kzbx8gfmmh40j', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qV7br:tYU2bzIZERnvj-N-Ke-Brb9HkzotYa5jGJw8TOuwIEw', '2023-08-27 09:42:07.475598'),
('h4uk8iplksrbvfnowvguwsyo3sn0f94q', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qVQJx:kg9sRoHjJChtmtGVNuxZZn0u6Xusa5ay6ryuWBAk_0s', '2023-08-28 05:40:53.981815'),
('osfrw7yjq63qawi06elce16kyurog8kt', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qWCO7:NL56hv3gV3BLusO8-S421DYzmEYpUoB3PNUkyULpuKs', '2023-08-30 09:00:23.610272'),
('tjh58akwo2eglo5qsmibyphsy0mn5fff', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qbDvK:AiUjY2uXFjr_2_XYk6AjtLqpYPS4EZGrsHc0CTVAYAY', '2023-09-13 05:39:26.698252'),
('w6e2skwakv1n0t0gk8ik250ad7veir6l', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qcfUc:un85_U5L3pWT6XMkEJndT0Fx05K9K939PvVlc2ckhBU', '2023-09-17 05:17:50.336207'),
('x55n0m74pvaz82u3x12rgd7ra4wsc6ae', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qXxNY:yWM1yjmgcHR1axdhQlKnE1qHezuHzk4UfS3kdwMbgzI', '2023-09-04 05:23:04.271840'),
('yc8s8j2jdft9vzlv1a6sqai85cybvlbn', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qU1TS:H12Wh8KcjHVS-4Jcm8WUyLkfthQMKD2SdvUCQT0WYPg', '2023-08-24 08:56:54.705436'),
('zwm8xr4hf5xe3hvaziza11u4y967y19f', '.eJxVjMsOwiAURP-FtSE8Wigu3fcbCPdRqRpISrsy_rtt0oVmdnPOzFvEtK05bo2XOJO4Ci0uvx0kfHI5AD1SuVeJtazLDPJQ5EmbHCvx63a6fwc5tbyvMVFgxF4NmjqFPoF1ZDtlgA0SenC90sE6IENuDzEOeiKYPHmwEMTnCw30OUU:1qV9oV:sfLjdmyC_PEzkr7lH0Z3wGb7U2QqTGG5Au6XNOHCO6k', '2023-08-27 12:03:19.716352');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` (`Parent_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel_contactus`
--
ALTER TABLE `adminpanel_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminpanel_globalsettings`
--
ALTER TABLE `adminpanel_globalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminpanel_navigation`
--
ALTER TABLE `adminpanel_navigation`
  ADD CONSTRAINT `adminpanel_navigatio_Parent_id_f4af713b_fk_adminpane` FOREIGN KEY (`Parent_id`) REFERENCES `adminpanel_navigation` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
