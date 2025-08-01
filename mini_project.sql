-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2025 at 01:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_07_31_043353_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Huge quake in Russia triggers tsunami warnings around Pacific.', 'A very powerful magnitude 8.8 earthquake off Russia\'s Far Eastern Kamchatka coast on Wednesday triggered tsunami warnings as far away as French Polynesia and Chile, and was followed by an eruption of the most active volcano on the peninsula. The shallow quake damaged buildings and injured several people in the remote Russian region, while much of Japan\'s eastern seaboard - devastated by a 9.0 magnitude earthquake and tsunami in 2011 - was ordered to evacuate, as were parts of Hawaii.\r\n\r\nBy the evening, Japan, Hawaii and Russia had downgraded most tsunami warnings. But authorities in French Polynesia warned residents of several of the remote Marquesas Islands to move to higher ground and expect waves as high as 2.5 metres (8 feet). Tsunami waves began hitting the Marquesas on Wednesday but were forecast to be smaller than initially feared, local authorities said. Some initial wave surges were reported on Nuku Hiva, the largest of the Marquesas, about 1,400 km northeast of Tahiti, and between five to 10 additional waves were expected in the coming hours, the high commission said.', '2025-07-30 23:27:46', '2025-07-31 03:12:22'),
(2, 1, 'Tsunami alerts in New Zealand and Chile after huge earthquake off Russian coast: Live updates.', 'Tsunami warnings remain in place in New Zealand and Chile a day after an 8.8-magnitude earthquake struck off the coast of the Russian far east in the early hours of Wednesday. Officials in New Zealand said rebounding tsunami activity from South America meant that strong and unusual currents could continue for another 24 hours.\r\n\r\nMeanwhile, Chile, highly vulnerable to earthquakes and tsunamis, has issued a state of caution requiring citizens to move away from the coastline, beaches and avoid maritime activities. Chile\'s interior minister Alvaro Elizade said waves reached a height of 1.1m in some places, and in one location reached 2.5m.\r\n\r\nAuthorities in Colombia, Ecuador and Peru this morning dropped the tsunami alerts. Several people were injured during the earthquake, but none seriously and no major damage was reported. However, one woman died in Japan after her car fell off the cliff while evacuating to higher ground.\r\n\r\nAmidst the tsunami warnings, lava was seen coming from the Klyuchevskoy volcano on the peninsula as it began to erupt.', '2025-07-31 02:59:23', '2025-07-31 02:59:23'),
(3, 1, 'Trump says US will set 15% tariff on South Korean imports under new deal.', 'President Donald Trump said on Wednesday the U.S. will charge a 15% tariff on imports from South Korea, down from a threatened 25%, as part of a deal that eases tensions with a top-10 trading partner and key Asian ally.\r\n\r\nSouth Korea also agreed to invest $350 billion in the United States in projects selected by Trump and to purchase energy products worth $100 billion.\r\n\r\nThe arrangement, announced after Trump met with Korean officials at the White House, came during a blizzard of trade policy announcements. Many countries are rushing to cut deals ahead of August 1, when Trump has promised higher tariffs will kick in.', '2025-07-31 03:11:57', '2025-07-31 03:12:12'),
(4, 2, '9-year-old child killed, teen hospitalized after being struck by RV driver in L.A.', 'A 9-year-old child was killed and a teen was hospitalized after being struck by a suspected DUI driver in L.A.’s Koreatown neighborhood Thursday night. Los Angeles police responded to the incident on the 350 block of South New Hampshire Avenue around 7:30 p.m.\r\n\r\nThe two victims were walking on the street when they were hit by the suspect, who was driving an RV, police said. The child was pronounced dead at the scene by authorities. The second victim, a 19-year-old, was taken to the hospital in stable condition.\r\n\r\nPolice were seen performing a breathalyzer test on the male suspect before handcuffing him and placing him into a patrol car. No further details, including the identities of the victims or the suspect, were released. This developing story will be updated when details become available.', '2025-08-01 01:34:04', '2025-08-01 01:34:33'),
(5, 2, 'OpenAI quickly rolled back a new feature that allowed users to make private conversations with ChatGPT searchable.', 'OpenAI quickly rolled back a new feature that allowed users to make private conversations with ChatGPT \"discoverable\" after the launch was marred by concerns of accidental oversharing. \"We just removed a feature from @ChatGPTapp that allowed users to make their conversations discoverable by search engines, such as Google,\" Dane Stuckey, OpenAI\'s chief information security officer, announced via social media post on Thursday.\r\n\r\nHe described the opt-in feature as \"a short-lived experiment to help people discover useful conversations,\" but added that the company removed it in part because of OpenAI\'s focus on \"security and privacy.\" \"Ultimately we think this feature introduced too many opportunities for folks to accidentally share things they didn\'t intend to, so we\'re removing the option,\" Stuckey\'s post said. \"We\'re also working to remove indexed content from the relevant search engines. This change is rolling out to all users through tomorrow morning.\"\r\n\r\nThe rollback came shortly after newsletter writer Luiza Jarovsky posted on X earlier in the day that sensitive conversations with ChatGPT were being made public. When using the chatbot\'s sharing feature, Jarovsky wrote that users were opening up their exchanges to being indexed by Google. The feature required users to take steps to share their conversations — including ticking a box to \"make this chat discoverable,\" and indicated it would \"be shown in web searches.\" Chats made public were anonymized, reducing the risk that someone may be personally identified by their conversations with the bot.\r\n\r\nStill, users responding to Jarovsky\'s posts highlighted the concern that some people may absent-mindedly check the box to share without reading the fine print, opening themselves up to sharing embarrassing or private information. In her initial X post, Jarovsky found examples of users discussing their fears with ChatGPT. Her comments were filled with more personal examples, from discussions of harassment to makeshift therapy sessions. Jarovsky and representatives for OpenAI did not immediately respond to requests for comment from Business Insider.', '2025-08-01 02:23:01', '2025-08-01 02:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, '$2y$12$LNC84f0JCD3CSfqHLX4r9.wOmRdq3QWS0nf/7GtSKjb8P8ToCwLC.', NULL, '2025-07-30 22:41:41', '2025-07-30 22:41:41'),
(2, 'User', 'user@mail.com', NULL, '$2y$12$m2G02p9v.toZZ9049RwrD.9AusupmhNesOaguPgpwJzBDjRdmkQAe', NULL, '2025-07-31 18:59:50', '2025-07-31 18:59:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
