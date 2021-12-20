-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 06:18 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ananta`
--

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'iVqdCPaVvs.jpg', 0, '2021-12-20 05:05:04', '2021-12-20 05:05:04'),
(2, 'oydeRwoPMH.jpg', 1, '2021-12-20 05:05:11', '2021-12-20 05:07:10'),
(3, 'zxGvvHfWkA.jpg', 1, '2021-12-20 05:05:24', '2021-12-20 05:07:14'),
(4, 'o82EhjBi82.jpg', 0, '2021-12-20 05:06:46', '2021-12-20 05:06:46'),
(5, 'ZGsJSBSWIL.jpg', 1, '2021-12-20 05:07:06', '2021-12-20 05:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'สมุนไพร', 'คำว่า “สมุนไพร” หมายความว่า ยาที่ได้มาจากพืช สัตว์ แร่ธาตุจากธรรมชาติที่ไม่มีการเปลี่ยนแปลงสภาพโครงสร้างภายใน', '2021-12-20 05:16:27', '2021-12-20 05:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `herbs`
--

CREATE TABLE `herbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `herbs`
--

INSERT INTO `herbs` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ขมิ้นชัน', 'ขมิ้นมีสารต่อต้านอนุมูลอิสระซึ่งช่วยในการชะลอวัยและชะลอการเกิดริ้วรอย\r\nช่วยเสริมสร้างภูมิต้านทานให้กับร่างกาย\r\nช่วยเสริมสร้างภูมิคุ้มกันให้ผิวหนังมีสุขภาพดีแข็งแรง\r\nขมิ้นชันอาจมีบทบาทช่วยป้องกันการเกิดโรคมะเร็ง เช่น โรคมะเร็งลำไส้ มะเร็งปากมดลูก\r\nขมิ้นสามารถช่วยลดระดับคอเลสเตอรอลในร่างกายได้\r\nช่วยกำจัดสารพิษออกจากร่างกาย\r\nช่วยบรรเทาอาการของโรคเบาหวาน\r\nมีส่วนช่วยรักษาโรคความดันโลหิตสูง\r\nช่วยลดอาการของโรคเกาต์\r\nช่วยขับน้ำนมของมารดาหลังคลอดบุตร', '9oaQnPEWBP.jpg', '2021-12-20 05:08:49', '2021-12-20 05:08:49'),
(2, 'ว่านหางจระเข้', 'ช่วยป้องกันโรคเบาหวาน ด้วยการรับประทานเนื้อวุ้น หรือจะทำเป็นน้ำปั่นว่านหางจระเข้มาดื่มก็ได้ ก็จะช่วยบรรเทาอาการและป้องกันโรคเบาหวานได้\r\nว่านหางจระเข้มีสรรพคุณช่วยแก้อาการปวดศีรษะ ด้วยการตัดใบสดของว่านหางจระเข้แล้วทาปูนแดงด้านหนึ่ง แล้วเอาด้านที่ทาปูนปิดตรงขมับ จะช่วยบรรเทาอาการปวดศีรษะได้ (ใบ)\r\nวุ้นว่านหางจระเข้มีสรรพคุณช่วยรักษาแผลในกระเพาะอาหาร ช่วยป้องกันและลดการเกิดแผลในกระเพาะขณะท้องว่าง ช่วยรักษาโรคเกี่ยวกับระบบทางเดินอาหารต่าง ๆ\r\nเนื้อว่านหางจระเข้สรรพคุณว่านหางจระเข้ช่วยแก้กระเพาะลำไส้อักเสบ ด้วยการใช้ใบนำมาปอกเปลือกเอาแต่วุ้น นำมารับประทานวันละ 2 ครั้ง ครั้งละ 2 ช้อนโต๊ะ (เนื้อวุ้น)', 'Uhk3Gfh6d9.jpg', '2021-12-20 05:11:19', '2021-12-20 05:11:19'),
(3, 'บัวบก', 'บัวบกเป็นพืชที่มีแคลเซียมในระดับปานกลางถึงสูง แต่มีระดับสารออกซาเลตที่เป็นอันตรายต่อร่างกายในปริมาณต่ำ\r\nใบบัวบกช่วยคืนความอ่อนเยาว์ ย้อนอายุและวัย\r\nใช้เป็นยาอายุวัฒนะ\r\nช่วยเสริมสร้างและกระตุ้นการสร้างคอลลาเจนและอีลาสติน\r\nมีสารต่อต้านอนุมูลอิสระ ช่วยต่อต้านการเสื่อมของเซลล์ต่าง ๆในร่างกาย\r\nประโยชน์ของใบบัวบก ช่วยบำรุงและรักษาสายตา ฟื้นฟูรอบดวงตา เพราะบัวบกมีวิตามินเอสูง\r\nช่วยรักษาอาการตาอักเสบบวมแดง ด้วยการใช้ใบบัวบกล้างน้ำสะอาด คั้นเอาแต่น้ำนำมาหยดที่ตา 3-4 ครั้งต่อวัน\r\nช่วยบำรุงประสาทและสมองเหมือนใบแปะก๊วย\r\nช่วยทำให้ความจำดีขึ้นและทำให้มีปฏิภาณไหวพริบเพิ่มมากขึ้น\r\nช่วยเพิ่มความจำในผู้สูงอายุ', 'DIPd2Wd33X.jpg', '2021-12-20 05:14:17', '2021-12-20 05:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$PLGa1auOFyjVVqMS2Mrq6OpwLmG2XnWnNCKhd6Dykc3lapo72j8iu', 1, NULL, '2021-12-20 03:32:56', '2021-12-20 03:32:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herbs`
--
ALTER TABLE `herbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herbs`
--
ALTER TABLE `herbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
