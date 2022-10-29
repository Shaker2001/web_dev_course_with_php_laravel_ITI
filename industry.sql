-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 أكتوبر 2022 الساعة 00:44
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `industry`
--

-- --------------------------------------------------------

--
-- بنية الجدول `department`
--

CREATE TABLE `department` (
  `dname` varchar(100) NOT NULL,
  `dnum` int(11) UNSIGNED NOT NULL,
  `mgrssn` int(11) UNSIGNED DEFAULT NULL,
  `mgrstartdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `department`
--

INSERT INTO `department` (`dname`, `dnum`, `mgrssn`, `mgrstartdate`) VALUES
('cs', 10, 5, '2022-02-28'),
('sc', 20, NULL, '2022-02-03');

-- --------------------------------------------------------

--
-- بنية الجدول `dependent`
--

CREATE TABLE `dependent` (
  `essn` int(11) UNSIGNED NOT NULL,
  `depend_name` varchar(15) DEFAULT NULL,
  `depsex` varchar(15) DEFAULT NULL,
  `depdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `ssn` int(11) UNSIGNED NOT NULL,
  `bdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `sex` enum('m','f') NOT NULL DEFAULT 'm',
  `salary` decimal(8,3) NOT NULL,
  `superssn` int(11) UNSIGNED DEFAULT NULL,
  `dno` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `employee`
--

INSERT INTO `employee` (`fname`, `lname`, `ssn`, `bdate`, `address`, `sex`, `salary`, `superssn`, `dno`) VALUES
('ahmed', 'shaker', 5, '0000-00-00', '', 'm', '0.000', NULL, NULL),
('Kamel', 'Mohamed', 4548, '2014-02-12', 'sgfdfh', 'm', '2000.000', 25458, 10),
('ibrahim', 'ghanm', 21343, '2022-02-28', 'cairo ain shams', 'm', '1300.000', 4548, 10),
('ahmed', 'shaker', 25458, '2022-02-02', 'sfgdfgs       ', 'm', '1000.000', NULL, 10),
('tamer', 'hesham', 41645, '2014-02-13', 'fayoum', 'm', '2000.000', 21343, 20),
('emad', 'hassan', 78989, '2022-02-10', 'mansoura', 'm', '1800.000', 4548, 20);

-- --------------------------------------------------------

--
-- بنية الجدول `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_19_090645_add_mgrssn_to_department_table', 1),
(6, '2022_02_19_092256_create_employees_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `project`
--

CREATE TABLE `project` (
  `Pname` varchar(11) NOT NULL,
  `pnum` int(10) NOT NULL,
  `Plocation` text DEFAULT NULL,
  `City` varchar(11) DEFAULT NULL,
  `Dnum` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `project`
--

INSERT INTO `project` (`Pname`, `pnum`, `Plocation`, `City`, `Dnum`) VALUES
('rayan', 248, 'fayoum', 'upper', 20),
('ssd', 454, 'ads', 'asdf', 10),
('toshka', 500, 'alex', 'smouha', 10),
('sima', 784, 'hind', 'hyderabad', 20),
('ahmed', 789, 'juu', 'poi', 10),
('AL sgrgf', 4557, 'sdgfdsfgf', 'gfdg', 20);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
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

-- --------------------------------------------------------

--
-- بنية الجدول `work_for`
--

CREATE TABLE `work_for` (
  `essn` int(11) UNSIGNED NOT NULL,
  `pnum` int(10) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dnum`),
  ADD KEY `fk_mgrssn` (`mgrssn`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `fk_dno_emp` (`dno`),
  ADD KEY `fk_superssn` (`superssn`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pnum`),
  ADD KEY `fk_pronum_depnum` (`Dnum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_for`
--
ALTER TABLE `work_for`
  ADD KEY `fk_dep_work_for` (`essn`),
  ADD KEY `fk_project` (`pnum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_mgrssn` FOREIGN KEY (`mgrssn`) REFERENCES `employee` (`ssn`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- القيود للجدول `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `fk_dependent_emp` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ssn_essn` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`) ON UPDATE CASCADE;

--
-- القيود للجدول `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_dno_emp` FOREIGN KEY (`dno`) REFERENCES `department` (`dnum`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_superssn` FOREIGN KEY (`superssn`) REFERENCES `employee` (`ssn`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- القيود للجدول `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_pronum_depnum` FOREIGN KEY (`Dnum`) REFERENCES `department` (`dnum`) ON UPDATE CASCADE;

--
-- القيود للجدول `work_for`
--
ALTER TABLE `work_for`
  ADD CONSTRAINT `fk_dep_work_for` FOREIGN KEY (`essn`) REFERENCES `dependent` (`essn`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_project` FOREIGN KEY (`pnum`) REFERENCES `project` (`pnum`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
