-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Sty 2022, 16:21
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ankiety_internetowe`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answers`
--

CREATE TABLE `answers` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `answer1` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer2` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer3` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer4` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer5` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer6` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `answers`
--

INSERT INTO `answers` (`user_id`, `form_id`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `answer6`, `created_at`, `updated_at`) VALUES
(1, 3, 'tak', 'tak', 'tak', 'tak', 'tak', 'tak', '2021-11-20 20:36:32', '2021-11-20 20:36:32'),
(1, 2, 'tak', 'tak', 'tak', 'tak', 'tak', 'tak', '2021-11-20 20:36:35', '2021-11-20 20:36:35'),
(1, 1, 'tak', 'tak', 'tak', 'tak', 'tak', 'tak', '2021-11-20 20:36:36', '2021-11-20 20:36:36'),
(7, 1, 'nie', 'tak', 'tak', 'tak', 'tak', 'tak', '2021-11-22 07:59:57', '2021-11-22 07:59:57');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `forms`
--

INSERT INTO `forms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Miejsce zamieszkania', '2021-11-17 22:30:30', '2021-11-22 22:26:28'),
(2, 'Styl życia', '2021-11-17 22:30:30', '2021-11-17 22:30:30'),
(3, 'Szkoła', '2021-11-17 22:30:46', '2021-11-17 22:30:46');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2021_11_08_170045_create_sessions_table', 1),
(10, '2021_11_08_171422_create_forms_table', 1),
(11, '2021_11_08_174908_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
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
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `question1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question5` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question6` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`form_id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `created_at`, `updated_at`) VALUES
(1, 'Czy mieszkasz w mieście, w którym się urodziłaś/ urodziłeś?', 'Czy jesteś zadowolony ze swojego miejsca zamieszkania?', 'Czy uważasz, że twoje miasto rozwija się gospodarczo?', 'Czy korzystasz z atrakcji organizowanych w twoim mieście?', 'Czy masz zamiar zmienić miejsce zamieszkania?', 'Czy żyjesz aktywnie społecznie, kulturowo?', '2021-11-17 22:39:52', '2021-11-22 22:26:28'),
(2, 'Czy uważasz, że zdrowo się odżywiasz?', 'Czy Twoje posiłki są regularne?', 'Czy często sięgasz po słodycze?', 'Czy uprawiasz regularnie jakiś sport?', 'Czy stosujesz jakieś używki(kawa, papierosy, alkohol)?', 'Czy zdrowy styl życia jest dla Ciebie ważny?', '2021-11-17 22:38:53', '2021-11-17 22:38:53'),
(3, 'Czy chodzenie do szkoły sprawia Ci przyjemność?', 'Czy jesteś zadowolony/zadowolona ze swojego planu lekcji?', 'Czy jesteś zadowolony/zadowolona ze swoich wyników w nauce?', 'Czy czujesz się sprawiedliwie oceniany/oceniana?', 'Czy czujesz się komfortowo w swojej klasie?', 'Czy Twoje relacje z rówieśnikami są dobre?', '2021-11-17 22:38:53', '2021-11-17 22:38:53');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aqNCQgwKEoafMNWlcfXP1HzSWZjAz6tHPUl93fNl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3MyUWlDSkJQSnJ6MkppeUJxMXRtZEVuZ0x3V0E3NmdDY20wVWF1ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGF0cy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1637619643),
('dD3AAFYBferHMD93qAKHlTgERZKRcG995JM65MJu', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiTXpRejI4Q3hGTFV0WXRQeFZnUlh4VWowNVpXdkRNaXJIanBWUVBmWSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHFhNnR1ajJRMEJRcndVT2xlUjJYdHUuclJ2Z256SWk3eDNQU2xZVXVVeTZhalo1UjR5M015IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRxYTZ0dWoyUTBCUXJ3VU9sZVIyWHR1LnJSdmdueklpN3gzUFNsWVV1VXk2YWpaNVI0eTNNeSI7fQ==', 1637621312),
('h7qqPDmAjfSjqCfXLR9dUFnZwfzoWKpXtS2FEyYT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo0OntzOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJLZUJDdHdyY2FDeURjeFNyczFRVEtDODRTV0NCQUxjVnZWRnppbFpYIjt9', 1637620433),
('parRQWwua31PTqco4Z7GdwJOq2m1wNTiLOJCMbHK', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJRQ3F4Zk9Nb1p3dEtNcElNRFpwdVhTS29qYWJsM255VkpySjdDQWxJIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkVVBEZ3d3S0RrVUZmMndsdXpOSVAvdXN3Qmo0WDEzTzh1Mi5VVk9XY2xKQnNhNVhGRVUyYUMiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFVQRGd3d0tEa1VGZjJ3bHV6TklQL3Vzd0JqNFgxM084dTIuVVZPV2NsSkJzYTVYRkVVMmFDIjt9', 1637622786),
('xUkfnvp7jRrAZo0YNONczO3VMYXrYy1Ji7FStmxI', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3N0YXRzLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiUnFmOWR0dmNKb0JrRFl6NE5YRWhWNlNVY1NuTUc0WkdJMkNmNDVGZyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHFhNnR1ajJRMEJRcndVT2xlUjJYdHUuclJ2Z256SWk3eDNQU2xZVXVVeTZhalo1UjR5M015IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRxYTZ0dWoyUTBCUXJ3VU9sZVIyWHR1LnJSdmdueklpN3gzUFNsWVV1VXk2YWpaNVI0eTNNeSI7fQ==', 1637623800);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'igor\'s Team', 1, '2021-11-17 21:55:40', '2021-11-17 21:55:40'),
(2, 2, 'Igorek123\'s Team', 1, '2021-11-18 22:02:54', '2021-11-18 22:02:54'),
(3, 3, 'admin\'s Team', 1, '2021-11-20 10:05:59', '2021-11-20 10:05:59'),
(4, 4, 'igi\'s Team', 1, '2021-11-20 20:00:27', '2021-11-20 20:00:27'),
(5, 5, 'user1\'s Team', 1, '2021-11-20 20:46:05', '2021-11-20 20:46:05'),
(6, 6, 'user\'s Team', 1, '2021-11-20 20:48:34', '2021-11-20 20:48:34'),
(7, 7, 'igorek123\'s Team', 1, '2021-11-22 07:59:33', '2021-11-22 07:59:33'),
(8, 8, 'babababab\'s Team', 1, '2021-11-22 21:28:18', '2021-11-22 21:28:18'),
(9, 9, 'igus\'s Team', 1, '2021-11-22 22:22:17', '2021-11-22 22:22:17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@admin.pl', NULL, '$2y$10$qa6tuj2Q0BQrwUOleR2Xtu.rRvgnzIi7x3PSlYUuUy6ajZ5R4y3My', NULL, NULL, NULL, NULL, NULL, '2021-11-20 10:05:59', '2021-11-20 10:05:59'),
(6, 'user', 'user@a.pl', NULL, '$2y$10$CNv7TYGoFgc0ZtOA6nlGCeTT/kmSqr78R63dgKnHRVQsAODa0Xgp6', NULL, NULL, NULL, NULL, NULL, '2021-11-20 20:48:34', '2021-11-20 20:48:34'),
(7, 'igorek123', 'x@y.pl', NULL, '$2y$10$UPDgwwKDkUFf2wluzNIP/uswBj4X13O8u2.UVOWclJBsa5XFEU2aC', NULL, NULL, NULL, NULL, NULL, '2021-11-22 07:59:33', '2021-11-22 07:59:33'),
(8, 'babababab', 'a@a.pl', NULL, '$2y$10$8Xk8KCVogFVljiE/I5czzeOdl4XwKQ4GGs7W4jWrzXfYNoU8c2peG', NULL, NULL, NULL, NULL, NULL, '2021-11-22 21:28:18', '2021-11-22 21:28:18'),
(9, 'igus', 'i@i.pl', NULL, '$2y$10$2YtyXweIybphAvuRCRQgRexux4juhqr4f85kggsBo8TOuOvRyaFBO', NULL, NULL, NULL, NULL, NULL, '2021-11-22 22:22:17', '2021-11-22 22:22:17');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD KEY `questions_form_id_foreign` (`form_id`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeksy dla tabeli `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indeksy dla tabeli `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`);

--
-- Ograniczenia dla tabeli `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
