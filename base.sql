-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2020 г., 11:49
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book-reference`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `patronymic` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `surname`, `name`, `patronymic`, `created_at`, `updated_at`) VALUES
(1, 'Keebler', 'Dawson', 'Leuschke', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(2, 'Legros', 'Jada', 'Wisozk', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(3, 'Deckow', 'Mireille', 'McDermott', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(4, 'Gusikowski', 'Ansel', 'Hirthe', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(5, 'Graham', 'Rebeca', 'Emmerich', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(6, 'Prohaska', 'Waino', 'Abbott', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(7, 'Mueller', 'Collin', 'Wilkinson', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(8, 'Jacobi', 'Merlin', 'Cummings', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(9, 'Wintheiser', 'Turner', 'Schuppe', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(10, 'Hauck', 'Carey', 'Orn', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(11, 'Howe', 'Eleonore', 'Dach', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(12, 'Pouros', 'Sierra', 'Skiles', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(13, 'Breitenberg', 'Benton', 'Beahan', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(14, 'Schultz', 'Joesph', 'Sporer', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(15, 'Batz', 'Reymundo', 'Cummerata', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(16, 'Dare', 'Jameson', 'Harber', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(17, 'Barton', 'Isaac', 'Orn', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(18, 'Jerde', 'Omer', 'Schoen', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(19, 'Kessler', 'Melissa', 'Hessel', '2020-07-05 05:34:41', '2020-07-05 05:34:41'),
(20, 'Hartmann', 'Emile', 'Altenwerth', '2020-07-05 05:34:41', '2020-07-05 05:34:41');

-- --------------------------------------------------------

--
-- Структура таблицы `author_books`
--

CREATE TABLE `author_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author_books`
--

INSERT INTO `author_books` (`id`, `author_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 11, 1, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(2, 14, 1, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(3, 12, 1, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(4, 20, 1, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(5, 5, 1, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(6, 7, 2, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(7, 8, 2, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(8, 17, 2, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(9, 3, 2, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(10, 5, 2, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(11, 6, 3, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(12, 19, 3, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(13, 4, 3, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(14, 12, 3, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(15, 5, 3, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(16, 10, 4, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(17, 9, 4, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(18, 20, 4, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(19, 17, 4, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(20, 5, 4, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(21, 18, 5, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(22, 16, 5, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(23, 3, 5, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(24, 4, 5, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(25, 5, 5, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(26, 15, 6, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(27, 1, 6, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(28, 12, 6, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(29, 20, 6, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(30, 5, 6, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(31, 13, 7, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(32, 11, 7, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(33, 17, 7, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(34, 3, 7, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(35, 5, 7, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(36, 2, 8, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(37, 7, 8, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(38, 4, 8, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(39, 12, 8, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(40, 5, 8, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(41, 14, 9, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(42, 6, 9, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(43, 20, 9, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(44, 17, 9, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(45, 5, 9, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(46, 8, 10, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(47, 10, 10, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(48, 3, 10, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(49, 4, 10, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(50, 5, 10, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(51, 19, 11, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(52, 18, 11, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(53, 12, 11, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(54, 20, 11, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(55, 5, 11, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(56, 9, 12, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(57, 15, 12, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(58, 17, 12, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(59, 3, 12, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(60, 5, 12, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(61, 16, 13, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(62, 13, 13, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(63, 4, 13, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(64, 12, 13, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(65, 5, 13, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(66, 1, 14, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(67, 2, 14, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(68, 20, 14, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(69, 17, 14, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(70, 5, 14, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(71, 11, 15, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(72, 14, 15, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(73, 3, 15, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(74, 4, 15, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(75, 5, 15, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(76, 7, 16, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(77, 8, 16, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(78, 12, 16, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(79, 20, 16, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(80, 5, 16, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(81, 6, 17, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(82, 19, 17, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(83, 17, 17, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(84, 3, 17, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(85, 5, 17, '2020-07-05 05:44:08', '2020-07-05 05:44:08');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `thumbnail` text,
  `date_publication` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `thumbnail`, `date_publication`, `created_at`, `updated_at`) VALUES
(1, 'Doloremque veniam reprehenderit quos in repudiandae praesentium.', 'Lory, who at last in the middle. Alice kept her waiting!\' Alice felt so desperate that she tipped.', 'images/books\\940eae80e364dc9034a41a4e78e667fc.jpg', 2000, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(2, 'Quia voluptas saepe eum necessitatibus.', 'Alice could see it trot away quietly into the earth. At last the Dodo managed it.) First it marked.', 'images/books\\bdd58aa0d5dee7128dc8f68d4d56c2d1.jpg', 1979, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(3, 'Sit numquam omnis laborum earum velit nam.', 'This of course, to begin at HIS time of life. The King\'s argument was, that her flamingo was gone.', 'images/books\\3a7a2f9d0ff63caf19b42cdda5b46d53.jpg', 1986, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(4, 'Rerum fugiat ut ut ea quo ipsum nihil.', 'Alice began in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up eagerly, half.', '0', 2018, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(5, 'Voluptas illum magnam placeat rerum beatae atque ut.', 'Duchess sneezed occasionally; and as it went. So she called softly after it, and on it in her.', 'images/books\\fb23a72785f7bc779565efec9b8ce7f9.jpg', 2016, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(6, 'Et dolor debitis id voluptas consequatur nobis.', 'Gryphon, lying fast asleep in the last words out loud, and the great concert given by the officers.', '0', 2018, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(7, 'Blanditiis autem earum quam in sequi.', 'Footman, \'and that for the White Rabbit read out, at the sides of it; so, after hunting all about.', '0', 1983, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(8, 'Eum eligendi velit numquam vero et.', 'Mouse\'s tail; \'but why do you mean that you never even introduced to a farmer, you know, upon the.', '0', 2011, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(9, 'Vero facilis alias rem sint iste et.', 'I must be the right size, that it was too late to wish that! She went in without knocking, and.', 'images/books\\5b091bbdc3d403d0c980a6ac52362d75.jpg', 2011, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(10, 'Aliquid reiciendis laudantium est.', 'Alice soon began talking to herself, \'whenever I eat one of the Gryphon, and the pattern on their.', 'images/books\\7f76dca479c0fd072981cba86d82c791.jpg', 2001, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(11, 'Velit reiciendis incidunt reprehenderit nostrum molestiae inventore ratione.', 'I think.\' And she began fancying the sort of meaning in it,\' but none of them even when they saw.', 'images/books\\f6284e420cb9785055ef853ad3b78934.jpg', 1974, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(12, 'In maiores ea corporis facere nulla.', 'Gryphon at the door-- Pray, what is the capital of Paris, and Paris is the reason is--\' here the.', '0', 1985, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(13, 'Laboriosam est voluptatem modi recusandae et et.', 'Soon her eye fell upon a time she went on. \'We had the door as you go to on the top of his shrill.', 'images/books\\72b228ca8a024d32a53e874067425003.jpg', 2016, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(14, 'Qui deserunt debitis animi repudiandae et.', 'Alice would not join the dance? Will you, won\'t you, will you, won\'t you join the dance?\"\' \'Thank.', '0', 1976, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(15, 'Quisquam explicabo harum non in labore sed quam.', 'She had already heard her voice sounded hoarse and strange, and the choking of the cupboards as.', 'images/books\\8e7a9043a7743dad078204ad313d30a9.jpg', 2005, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(16, 'Iure aspernatur tempore fugit repudiandae eveniet ut exercitationem facere.', 'King said to herself, \'in my going out altogether, like a steam-engine when she turned the corner.', 'images/books\\f08cad4940fcb1eb0e9febe654f1f45b.jpg', 1971, '2020-07-05 05:44:08', '2020-07-05 05:44:08'),
(17, 'Temporibus nesciunt doloremque porro saepe.', 'The first question of course you know the way of speaking to it,\' she thought, and it sat down.', '0', 1997, '2020-07-05 05:44:08', '2020-07-05 05:44:08');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_03_121745_create_author_table', 1),
(2, '2020_07_03_121820_create_book_table', 1),
(3, '2020_07_03_122940_create_author_book_table', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author_books`
--
ALTER TABLE `author_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_books_author_id_foreign` (`author_id`),
  ADD KEY `author_books_book_id_foreign` (`book_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `author_books`
--
ALTER TABLE `author_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `author_books`
--
ALTER TABLE `author_books`
  ADD CONSTRAINT `author_books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
