-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2025 at 06:22 AM
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
(2, 1, 'Tsunami alerts in New Zealand and Chile after huge earthquake off Russian coast: Live updates.', 'Tsunami warnings remain in place in New Zealand and Chile a day after an 8.8-magnitude earthquake struck off the coast of the Russian far east in the early hours of Wednesday. Officials in New Zealand said rebounding tsunami activity from South America meant that strong and unusual currents could continue for another 24 hours. Meanwhile, Chile, highly vulnerable to earthquakes and tsunamis, has issued a state of caution requiring citizens to move away from the coastline, beaches and avoid maritime activities. Chile\'s interior minister Alvaro Elizade said waves reached a height of 1.1m in some places, and in one location reached 2.5m.\r\n\r\nAuthorities in Colombia, Ecuador and Peru this morning dropped the tsunami alerts. Several people were injured during the earthquake, but none seriously and no major damage was reported. However, one woman died in Japan after her car fell off the cliff while evacuating to higher ground. Amidst the tsunami warnings, lava was seen coming from the Klyuchevskoy volcano on the peninsula as it began to erupt.', '2025-07-31 02:59:23', '2025-08-01 05:08:32'),
(3, 1, 'Trump says US will set 15% tariff on South Korean imports under new deal.', 'President Donald Trump said on Wednesday the U.S. will charge a 15% tariff on imports from South Korea, down from a threatened 25%, as part of a deal that eases tensions with a top-10 trading partner and key Asian ally. South Korea also agreed to invest $350 billion in the United States in projects selected by Trump and to purchase energy products worth $100 billion.\r\n\r\nThe arrangement, announced after Trump met with Korean officials at the White House, came during a blizzard of trade policy announcements. Many countries are rushing to cut deals ahead of August 1, when Trump has promised higher tariffs will kick in.', '2025-07-31 03:11:57', '2025-08-01 05:08:45'),
(4, 2, '9-year-old child killed, teen hospitalized after being struck by RV driver in L.A.', 'A 9-year-old child was killed and a teen was hospitalized after being struck by a suspected DUI driver in L.A.’s Koreatown neighborhood Thursday night. Los Angeles police responded to the incident on the 350 block of South New Hampshire Avenue around 7:30 p.m.\r\n\r\nThe two victims were walking on the street when they were hit by the suspect, who was driving an RV, police said. The child was pronounced dead at the scene by authorities. The second victim, a 19-year-old, was taken to the hospital in stable condition.\r\n\r\nPolice were seen performing a breathalyzer test on the male suspect before handcuffing him and placing him into a patrol car. No further details, including the identities of the victims or the suspect, were released. This developing story will be updated when details become available.', '2025-08-01 01:34:04', '2025-08-01 01:34:33'),
(5, 2, 'OpenAI quickly rolled back a new feature that allowed users to make private conversations with ChatGPT searchable.', 'OpenAI quickly rolled back a new feature that allowed users to make private conversations with ChatGPT \"discoverable\" after the launch was marred by concerns of accidental oversharing. \"We just removed a feature from @ChatGPTapp that allowed users to make their conversations discoverable by search engines, such as Google,\" Dane Stuckey, OpenAI\'s chief information security officer, announced via social media post on Thursday.\r\n\r\nHe described the opt-in feature as \"a short-lived experiment to help people discover useful conversations,\" but added that the company removed it in part because of OpenAI\'s focus on \"security and privacy.\" \"Ultimately we think this feature introduced too many opportunities for folks to accidentally share things they didn\'t intend to, so we\'re removing the option,\" Stuckey\'s post said. \"We\'re also working to remove indexed content from the relevant search engines. This change is rolling out to all users through tomorrow morning.\"\r\n\r\nThe rollback came shortly after newsletter writer Luiza Jarovsky posted on X earlier in the day that sensitive conversations with ChatGPT were being made public. When using the chatbot\'s sharing feature, Jarovsky wrote that users were opening up their exchanges to being indexed by Google. The feature required users to take steps to share their conversations — including ticking a box to \"make this chat discoverable,\" and indicated it would \"be shown in web searches.\" Chats made public were anonymized, reducing the risk that someone may be personally identified by their conversations with the bot.\r\n\r\nStill, users responding to Jarovsky\'s posts highlighted the concern that some people may absent-mindedly check the box to share without reading the fine print, opening themselves up to sharing embarrassing or private information. In her initial X post, Jarovsky found examples of users discussing their fears with ChatGPT. Her comments were filled with more personal examples, from discussions of harassment to makeshift therapy sessions. Jarovsky and representatives for OpenAI did not immediately respond to requests for comment from Business Insider.', '2025-08-01 02:23:01', '2025-08-01 02:23:44'),
(6, 1, 'Gemini 2.5 Deep Think rolling out now for Google AI Ultra.', 'After previewing at I/O 2025 in May, Google is now rolling out the Gemini 2.5 Deep Think mode to AI Ultra subscribers. Google says “Deep Think pushes the frontier of thinking capabilities by leveraging parallel thinking techniques.” This approach enables Gemini to generate many ideas at once and consider them simultaneously, even revising or combining different ideas over time, before arriving at the best answer.  Gemini is given more inference or “thinking time” to “explore different hypotheses, and arrive at creative solutions to complex problems.” Google “developed novel reinforcement learning techniques that encourage the model to make use of these extended reasoning paths.”\r\n\r\nThus enabling Deep Think to become a better, more intuitive problem-solver over time. Deep Think can produce “much longer responses” and leverages code execution, Google Search, and other tools. \r\n\r\nToday’s release offers a “significant improvement over what was first announced” in May. Google credits feedback from early trusted testers and “research breakthroughs” for these “key benchmark improvements” across coding, science, knowledge, and reasoning. Gemini 2.5 Deep Think now scores 87.6% on LiveCodeBench (competition-level coding) versus 80.4% in May.', '2025-08-01 05:32:50', '2025-08-01 07:02:04'),
(7, 1, 'Google Home Is So Bad That a Lawsuit Could Be on Its Way.', 'There’s been some trouble at home lately. Not your home, hopefully, but if you live in Google HQ, then maybe. Last week, people using the Google Home app flooded Reddit with complaints over smart home products that mysteriously stopped working—lights, cameras, smart plugs, you name it. Those complaints were so numerous, in fact, that Google even bothered to address them and do better. Things in the Googleverse were (or are) bad, to say the least. But just because they’re bad right now doesn’t mean they can’t get worse—and worse they may still get. For Google, that is.\r\n\r\nAs it turns out, Google’s overtures about fixing its smart home app and doing better may not be enough for people, and all of that pushback may actually result in a good, old-fashioned class-action lawsuit.\r\n\r\n“Kaplan Gore has begun investigating a possible class action against Google LLC for failing to remedy increasing problems with its Google Home ‘smart home’ service,” the law firm Kaplan Gore said in a statement. “Unfortunately, many users have reported functionality issues with Google Home and associated Google and/or Nest devices, resulting in commands not being recognized or properly executed.\r\n\r\nUsers are reporting that they are experiencing these issues despite their devices having previously functioned normally and despite having a stable internet connection.” Kaplan Gore also has a form for any users experiencing those issues and is asking them to fill out some information and join a class action. In the immortal words of crime-fighting cartoon dog Scooby-Doo, “ru-roh.”\r\n\r\nOn one hand, it’s wild that a company as titanic and well-resourced as Google let its smart home app get to the point of being the subject of a possible class-action lawsuit, but on the other—if you’ve been using Google Assistant for a while now—it feels long overdue. Google Assistant has steadily gotten worse over the years, and just about anyone using it on a daily basis has noticed. Even simple prompts for turning your lights on or off feel hit and miss. That makes recent issues in the Google Home app feel even more egregious, especially since those issues prevented many from using smart products in their homes entirely.\r\n\r\nAccording to loads of complaints on Reddit, Google Home has been so broken that some users have reported being unable to even turn their smart lights on and off properly. And it’s not just lights; all kinds of smart devices have been swept up, including other speakers and even (disconcertingly) cameras and smart doorbells. If you’re experiencing similar issues, by the way, you can try pulling open the Google Home app and tapping Settings in the bottom-right corner, then tap “Works with Google,” and a list of your synced apps should show up. If they’re no longer synced, re-sync the app by finding it under “Add new.” If they’re still synced and not working, unsync the app by tapping on the icon and then tapping “Unlink account.” After that, you can try syncing once more and hope that it works.\r\n\r\nEven if that fixes your problem, it may not do much to fix your overall satisfaction with using the Google Home app to control all your internet-connected products. And if that’s the case, I guess there’s now potentially some kind of legal recourse to get some revenge. Whether any of this will be enough blowback to compel Google to step its shit up remains to be seen, but clearly screaming at your stupid Google-branded smart speaker isn’t getting us anywhere.', '2025-08-01 06:05:29', '2025-08-01 07:01:32'),
(8, 2, 'Anthropic Cuts Off OpenAI’s Access to Claude.', 'Anthropic cut off OpenAI’s access to Claude through Anthropic’s application programming interface on Friday. The company said the move was because OpenAI was “using our coding tools ahead of the launch of GPT-5,” in violation of Anthropic’s terms of services, which prohibit using Anthropic’s AI technology to develop competing AI models, according to an Anthropic spokesperson.\r\n\r\nOpenAI said it was using the API to assess Claude’s capabilities and its performance on safety tests. “It’s industry standard to evaluate other AI systems to benchmark progress and improve safety,” an OpenAI spokesperson said. “While we respect Anthropic’s decision to cut off our API access, it’s disappointing considering our API remains available to them.”\r\n\r\nA spokesperson for Anthropic said the company will “continue to ensure OpenAI has API access for the purposes of benchmarking and safety evaluations as is standard practice across the industry.”', '2025-08-01 21:05:23', '2025-08-01 21:05:23'),
(9, 2, 'Tech companies are racing to make their products smaller - and much, much thinner.', 'There is a growing focus on the miniature market within many consumer-facing tech firms - and it\'s one that could even call into question the current smartphone dominance. Some of the world\'s leading tech companies are betting big on very small innovations.\r\n\r\nLast week, Samsung released its Galaxy Z Fold 7 which - when open - has a thickness of just 4.2mm, one of the slimmest folding phones ever to hit the market. And Honor, a spin-off from Chinese smartphone company Huawei, will soon ship its latest foldable - the slimmest in the world. Its new Honor Magic V5 model is only 8.8mm thick when folded, and a mere 4.1mm when open.\r\n\r\nApple is also expected to release a foldable in the second half of next year, according to a note by analysts at JPMorgan published this week. The race to miniaturise technology is speeding up, the ultimate prize being the next evolution in consumer devices. Whether it be wearable devices, such as smartglasses, watches, rings or foldables - there is enormous market potential for any manufacturer that can make its products small enough.\r\n\r\nDespite being thinner than its predecessor, Honor claims its Magic V5 also offers significant improvements to battery life, processing power, and camera capabilities. Hope Cao, a product expert at Honor told Sky News the progress was \"due largely to our silicon carbon battery technology\". These batteries are a next-generation breakthrough that offers higher energy density compared to traditional lithium-ion batteries, and are becoming more common in consumer devices.\r\n\r\nHonor also told Sky News it had used its own AI model \"to precisely test and find the optimum design, which was both the slimmest, as well as, the most durable.\"However, research and development into miniaturisation goes well beyond just folding phones. A company that\'s been at the forefront of developing augmented reality (AR) glasses, Xreal, was one of the first to release a viable pair to the consumer market.\r\n\r\nXreal\'s Ralph Jodice told Sky News \"one of our biggest engineering challenges is shrinking powerful augmented reality technology into a form factor that looks and feels like everyday sunglasses\". Xreal\'s specs can display images on the lenses like something out of a sci-fi movie - allowing the wearer to connect most USB-C compatible devices such as phones, laptops and handheld consoles to an IMAX-sized screen anywhere they go.\r\n\r\nExperts at The Metaverse Society suggest prices of these wearable devices could be lowered by shifting the burden of computing from the headset to a mobile phone or computer, whose battery and processor would power the glasses via a cable. However, despite the daunting challenge, companies are doubling down on research and making leaps in the area. Social media giant Meta is also vying for dominance in the miniature market.\r\n\r\nMeta\'s Ray-Ban sunglasses (to which they recently added an Oakley range), cannot project images on the lenses like the pair from Xreal - instead they can capture photos, footage and sound. When connected to a smartphone they can even use your phone\'s 5G connection to ask Meta\'s AI what you\'re looking at, and ask how to save a particular type of houseplant for example.\r\n\r\nGareth Sutcliffe, a tech and media analyst at Enders Analysis, tells Sky News wearables \"are a green field opportunity for Meta and Google\" to capture a market of \"hundreds of millions of users if these devices sell at similar rates to mobile phones\".\r\n\r\nLi-Chen Miller, Meta\'s vice president of product and wearables, recently said: \"You\'d be hard-pressed to find a more interesting engineering problem in the company than the one that\'s at the intersection of these two dynamics, building glasses [with onboard technology] that people are comfortable wearing on their faces for extended periods of time ... and willing to wear them around friends, family, and others nearby.\"\r\n\r\nMr Sutcliffe points out that \"Meta\'s R&D spend on wearables looks extraordinary in the context of limited sales now, but should the category explode in popularity, it will be seen as a great strategic bet.\" Facebook founder Mark Zuckerberg\'s long-term aim is to combine the abilities of both Xreal and the Ray-Bans into a fully functioning pair of smartglasses, capable of capturing content, as well as display graphics onscreen.\r\n\r\nHowever, despite recently showcasing a prototype model, the company was at pains to point out that it was still far from ready for the consumer market. This race is a marathon not a sprint - or as Sutcliffe tells Sky News \"a decade-long slog\" - but 17 years after the release of the first iPhone, people are beginning to wonder what will replace it - and it could well be a pair of glasses.', '2025-08-01 21:11:06', '2025-08-01 21:11:06'),
(10, 2, 'Nintendo to raise U.S. pricing of original Switch hardware.', 'Nintendo will raise the price of its original Switch console in the U.S. beginning Sunday, the company said Friday in a statement posted to its website. Nintendo attributed the changes to \"market conditions.” The Switch OLED and Lite models will also see price changes, along with other products, including some Switch 2 accessories. Pricing for the new Switch 2 is unchanged.\r\n\r\nThe Switch 2 has been a huge hit. Nintendo sold over 6 million units during the console’s first seven weeks at retail, the company revealed with its earnings this week.\r\n\r\nStill, the company has been wrestling with the impact of the Trump administration’s tariffs. Nintendo increased the cost of Switch 2 accessories ahead of its launch in early June. That was the company’s immediate response after the U.S. began levying tariffs on trade partners including Japan, where Nintendo is headquartered, along with Vietnam and China, which handles the bulk of manufacturing for the video game company.\r\n\r\nOther Nintendo products impacted by the price changes include the Nintendo Sound Clock: Alarmo. The company didn’t specify what the new prices will be. The original Switch was priced at $299 and the Switch 2 at $449.', '2025-08-01 21:16:02', '2025-08-01 21:16:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
