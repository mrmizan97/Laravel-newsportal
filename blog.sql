-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 06:34 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', 'laravel-2020-06-20-5eee2f7361a6b.jpg', '2020-06-20 09:47:00', '2020-06-20 09:47:00'),
(3, 'Vue js', 'vue-js', 'vue-js-2020-06-21-5eef0add4bb8f.jpg', '2020-06-21 01:23:10', '2020-06-21 01:23:10'),
(4, 'php', 'php', 'php-2020-06-29-5ef96a78a2136.jpg', '2020-06-28 22:13:49', '2020-06-28 22:13:49'),
(5, 'Java', 'java', 'java-2020-06-29-5ef96a9b67981.png', '2020-06-28 22:14:22', '2020-06-28 22:14:22'),
(6, 'Dotnet', 'dotnet', 'dotnet-2020-06-29-5ef96ac5f360d.jpg', '2020-06-28 22:15:02', '2020-06-28 22:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2020-06-21 00:49:51', '2020-06-21 00:49:51'),
(5, 5, 3, '2020-06-21 06:58:14', '2020-06-21 06:58:14'),
(6, 6, 1, '2020-06-21 07:00:08', '2020-06-21 07:00:08'),
(7, 7, 3, '2020-06-21 07:01:48', '2020-06-21 07:01:48'),
(10, 7, 1, '2020-06-21 10:19:34', '2020-06-21 10:19:34'),
(11, 6, 3, '2020-06-21 10:19:55', '2020-06-21 10:19:55'),
(12, 9, 3, '2020-06-22 22:39:44', '2020-06-22 22:39:44'),
(20, 17, 1, '2020-06-23 00:43:22', '2020-06-23 00:43:22'),
(21, 18, 1, '2020-06-23 05:30:47', '2020-06-23 05:30:47'),
(22, 19, 5, '2020-06-28 22:19:44', '2020-06-28 22:19:44'),
(23, 20, 4, '2020-06-28 22:21:34', '2020-06-28 22:21:34'),
(24, 21, 6, '2020-06-28 22:23:41', '2020-06-28 22:23:41'),
(25, 5, 1, '2020-06-28 22:32:25', '2020-06-28 22:32:25'),
(26, 5, 4, '2020-06-28 22:32:25', '2020-06-28 22:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(3, 9, 2, 'This is test commtent', '2020-06-26 21:21:00', '2020-06-26 21:21:00'),
(4, 18, 2, 'This is test comment', '2020-06-26 21:22:51', '2020-06-26 21:22:51');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_17_170044_create_roles_table', 1),
(5, '2020_06_19_021754_create_tags_table', 1),
(6, '2020_06_19_142851_create_categories_table', 1),
(7, '2020_06_20_141800_create_category_post_table', 1),
(8, '2020_06_20_142511_create_post_tag_table', 2),
(9, '2020_06_20_142713_create_posts_table', 3),
(10, '2020_06_22_031728_create_subscribers_table', 4),
(11, '2020_06_23_065941_create_jobs_table', 5),
(12, '2020_06_24_163705_create_post_user_table', 6),
(13, '2020_06_26_131621_create_comments_table', 7);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(3, 1, 'post title2', 'post-title2', 'post-title2-2020-06-21-5eef030f5a1a6.jpg', '<p>This is post body 2</p>\r\n<p>&nbsp;</p>', 1, 0, 1, '2020-06-21 00:49:51', '2020-06-27 00:35:55'),
(5, 1, 'post title2', 'post-title2', 'post-title2-2020-06-21-5eef596475473.jpg', '<p><strong>Vue.js</strong>&nbsp;(commonly referred to as&nbsp;<strong>Vue</strong>; pronounced&nbsp;<span class=\"rt-commentedText nowrap\"><span class=\"IPA nopopups noexcerpt\"><a title=\"Help:IPA/English\" href=\"https://en.wikipedia.org/wiki/Help:IPA/English\">/<span title=\"\'v\' in \'vie\'\">v</span><span title=\"/j/: \'y\' in \'yes\'\">j</span><span title=\"/uː/: \'oo\' in \'goose\'\">uː</span>/</a></span></span>, like \"view\"<sup id=\"cite_ref-4\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Vue.js#cite_note-4\">[4]</a></sup>) is an&nbsp;<a title=\"Open-source software\" href=\"https://en.wikipedia.org/wiki/Open-source_software\">open-source</a>&nbsp;<a title=\"Model&ndash;view&ndash;viewmodel\" href=\"https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel\">model&ndash;view&ndash;viewmodel</a>&nbsp;<a title=\"JavaScript framework\" href=\"https://en.wikipedia.org/wiki/JavaScript_framework\">JavaScript framework</a>&nbsp;for building&nbsp;<a title=\"User interface\" href=\"https://en.wikipedia.org/wiki/User_interface\">user interfaces</a>&nbsp;and&nbsp;<a title=\"Single-page application\" href=\"https://en.wikipedia.org/wiki/Single-page_application\">single-page applications</a>.<sup id=\"cite_ref-11\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Vue.js#cite_note-11\">[11]</a></sup>&nbsp;It was created by Evan You, and is maintained by him and the rest of the active core team members coming from various companies such as&nbsp;<a title=\"Netlify\" href=\"https://en.wikipedia.org/wiki/Netlify\">Netlify</a>&nbsp;and&nbsp;<a title=\"Netguru\" href=\"https://en.wikipedia.org/wiki/Netguru\">Netguru</a>.<sup id=\"cite_ref-12\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Vue.js#cite_note-12\">[12]</a></sup></p>\r\n<p>&nbsp;</p>', 0, 1, 1, '2020-06-21 06:58:14', '2020-06-28 22:32:25'),
(6, 2, 'Post title will go here...', 'post-title-will-go-here', 'post-title-will-go-here-2020-06-21-5eef59d7e97f5.jpg', '<p>This is laravel body</p>', 2, 1, 1, '2020-06-21 07:00:08', '2020-06-27 00:40:46'),
(7, 2, 'Post title will go here...', 'post-title-will-go-here', 'post-title-will-go-here-2020-06-21-5eef5a3a6a6ae.png', '<p>Java is a moder oop based language</p>\r\n<p>&nbsp;</p>', 0, 1, 1, '2020-06-21 07:01:47', '2020-06-21 20:38:14'),
(9, 2, 'This is test mail post', 'this-is-test-mail-post', 'this-is-test-mail-post-2020-06-23-5ef1878e74f75.jpg', '<p>This is our test mail post body</p>', 5, 1, 1, '2020-06-22 22:39:44', '2020-06-27 00:46:46'),
(17, 1, 'subscriber test mail', 'subscriber-test-mail', 'subscriber-test-mail-2020-06-23-5ef1a48876d05.jpg', '<p>subscriber test mail body</p>', 2, 1, 1, '2020-06-23 00:43:22', '2020-06-27 10:53:11'),
(18, 1, 'Queue test title', 'queue-test-title', 'queue-test-title-2020-06-23-5ef1e7e69ddab.jpg', '<p>this is queue tes body</p>\r\n<p>&nbsp;</p>', 3, 1, 1, '2020-06-23 05:30:47', '2020-06-28 10:56:01'),
(19, 1, 'Java post title will go here.', 'java-post-title-will-go-here', 'java-post-title-will-go-here-2020-06-29-5ef96bdd9430a.png', '<p><strong>Java</strong>&nbsp;is a&nbsp;<a title=\"General-purpose language\" href=\"https://en.wikipedia.org/wiki/General-purpose_language\">general-purpose</a>&nbsp;<a title=\"Programming language\" href=\"https://en.wikipedia.org/wiki/Programming_language\">programming language</a>&nbsp;that is&nbsp;<a title=\"Class-based programming\" href=\"https://en.wikipedia.org/wiki/Class-based_programming\">class-based</a>&nbsp;and&nbsp;<a title=\"Object-oriented programming\" href=\"https://en.wikipedia.org/wiki/Object-oriented_programming\">object-oriented</a>, and designed to have as few implementation&nbsp;<a class=\"mw-redirect\" title=\"Dependency (computer science)\" href=\"https://en.wikipedia.org/wiki/Dependency_(computer_science)\">dependencies</a>&nbsp;as possible. It is intended to let&nbsp;<a class=\"mw-redirect\" title=\"Application developer\" href=\"https://en.wikipedia.org/wiki/Application_developer\">application developers</a>&nbsp;<em>write once, run anywhere</em>&nbsp;(WORA),<sup id=\"cite_ref-17\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Java_(programming_language)#cite_note-17\">[17]</a></sup>&nbsp;meaning that&nbsp;<a title=\"Compiler\" href=\"https://en.wikipedia.org/wiki/Compiler\">compiled</a>&nbsp;Java code can run on all platforms that support Java without the need of recompilation.<sup id=\"cite_ref-design_goals_18-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Java_(programming_language)#cite_note-design_goals-18\">[18]</a></sup>&nbsp;Java applications are typically compiled to&nbsp;<a title=\"Java bytecode\" href=\"https://en.wikipedia.org/wiki/Java_bytecode\">bytecode</a>&nbsp;that can run on any&nbsp;<a title=\"Java virtual machine\" href=\"https://en.wikipedia.org/wiki/Java_virtual_machine\">Java virtual machine</a>&nbsp;(JVM) regardless of the underlying&nbsp;<a title=\"Computer architecture\" href=\"https://en.wikipedia.org/wiki/Computer_architecture\">computer architecture</a>. The&nbsp;<a title=\"Syntax (programming languages)\" href=\"https://en.wikipedia.org/wiki/Syntax_(programming_languages)\">syntax</a>&nbsp;of&nbsp;<a title=\"Java (software platform)\" href=\"https://en.wikipedia.org/wiki/Java_(software_platform)\">Java</a>&nbsp;is similar to&nbsp;<a title=\"C (programming language)\" href=\"https://en.wikipedia.org/wiki/C_(programming_language)\">C</a>&nbsp;and&nbsp;<a title=\"C++\" href=\"https://en.wikipedia.org/wiki/C%2B%2B\">C++</a>, but it has fewer&nbsp;<a title=\"Low-level programming language\" href=\"https://en.wikipedia.org/wiki/Low-level_programming_language\">low-level</a>&nbsp;facilities than either of them. As of 2019, Java was one of the most&nbsp;<a title=\"Measuring programming language popularity\" href=\"https://en.wikipedia.org/wiki/Measuring_programming_language_popularity\">popular programming languages in use</a>&nbsp;according to&nbsp;<a title=\"GitHub\" href=\"https://en.wikipedia.org/wiki/GitHub\">GitHub</a>,<sup id=\"cite_ref-:0_19-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Java_(programming_language)#cite_note-:0-19\">[19]</a></sup><sup id=\"cite_ref-20\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Java_(programming_language)#cite_note-20\">[20]</a></sup>&nbsp;particularly for&nbsp;<a class=\"mw-redirect\" title=\"Client&ndash;server\" href=\"https://en.wikipedia.org/wiki/Client%E2%80%93server\">client-server</a>&nbsp;<a class=\"mw-redirect\" title=\"Web applications\" href=\"https://en.wikipedia.org/wiki/Web_applications\">web applications</a>, with a reported 9 million developers.<sup id=\"cite_ref-21\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Java_(programming_language)#cite_note-21\">[</a></sup></p>', 0, 1, 1, '2020-06-28 22:19:44', '2020-06-28 22:19:44'),
(20, 1, 'Php post title will go here', 'php-post-title-will-go-here', 'php-post-title-will-go-here-2020-06-29-5ef96c4d883e6.jpg', '<p><strong>PHP</strong>&nbsp;is a popular general-purpose scripting language that is especially suited to&nbsp;<a title=\"Web development\" href=\"https://en.wikipedia.org/wiki/Web_development\">web development</a>.<sup id=\"cite_ref-5\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-5\">[5]</a></sup>&nbsp;It was originally created by Danish-Canadian&nbsp;<a title=\"Programmer\" href=\"https://en.wikipedia.org/wiki/Programmer\">programmer</a>&nbsp;<a title=\"Rasmus Lerdorf\" href=\"https://en.wikipedia.org/wiki/Rasmus_Lerdorf\">Rasmus Lerdorf</a>&nbsp;in 1994;<sup id=\"cite_ref-History_of_PHP_6-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-History_of_PHP-6\">[6]</a></sup>&nbsp;the PHP&nbsp;<a title=\"Reference implementation\" href=\"https://en.wikipedia.org/wiki/Reference_implementation\">reference implementation</a>&nbsp;is now produced by The PHP Group.<sup id=\"cite_ref-about_PHP_7-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-about_PHP-7\">[7]</a></sup>&nbsp;PHP originally stood for&nbsp;<em>Personal Home Page</em>,<sup id=\"cite_ref-History_of_PHP_6-1\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-History_of_PHP-6\">[6]</a></sup>&nbsp;but it now stands for the&nbsp;<a class=\"mw-redirect\" title=\"Recursive initialism\" href=\"https://en.wikipedia.org/wiki/Recursive_initialism\">recursive initialism</a>&nbsp;<em>PHP: Hypertext Preprocessor</em>.<sup id=\"cite_ref-8\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-8\">[8]</a></sup></p>\r\n<p>PHP code is usually processed on a&nbsp;<a title=\"Web server\" href=\"https://en.wikipedia.org/wiki/Web_server\">web server</a>&nbsp;by a PHP&nbsp;<a title=\"Interpreter (computing)\" href=\"https://en.wikipedia.org/wiki/Interpreter_(computing)\">interpreter</a>&nbsp;implemented as a&nbsp;<a class=\"mw-redirect\" title=\"Plugin (computing)\" href=\"https://en.wikipedia.org/wiki/Plugin_(computing)\">module</a>, a&nbsp;<a title=\"Daemon (computing)\" href=\"https://en.wikipedia.org/wiki/Daemon_(computing)\">daemon</a>&nbsp;or as a&nbsp;<a title=\"Common Gateway Interface\" href=\"https://en.wikipedia.org/wiki/Common_Gateway_Interface\">Common Gateway Interface</a>&nbsp;(CGI) executable. On a web server, the result of the interpreted and executed PHP code&nbsp;&ndash; which may be any type of data, such as generated&nbsp;<a title=\"HTML\" href=\"https://en.wikipedia.org/wiki/HTML\">HTML</a>&nbsp;or binary image data&nbsp;&ndash; would form the whole or part of a&nbsp;<a title=\"Hypertext Transfer Protocol\" href=\"https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol\">HTTP</a>&nbsp;response. Various&nbsp;<a title=\"Web template system\" href=\"https://en.wikipedia.org/wiki/Web_template_system\">web template systems</a>, web&nbsp;<a title=\"Content management system\" href=\"https://en.wikipedia.org/wiki/Content_management_system\">content management systems</a>, and&nbsp;<a title=\"Web framework\" href=\"https://en.wikipedia.org/wiki/Web_framework\">web frameworks</a>&nbsp;exist which can be employed to orchestrate or facilitate the generation of that response. Additionally, PHP can be used for many programming tasks outside of the web context, such as standalone&nbsp;<a title=\"Graphical user interface\" href=\"https://en.wikipedia.org/wiki/Graphical_user_interface\">graphical applications</a><sup id=\"cite_ref-9\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-9\">[9]</a></sup>&nbsp;and robotic&nbsp;<a title=\"Unmanned aerial vehicle\" href=\"https://en.wikipedia.org/wiki/Unmanned_aerial_vehicle\">drone</a>&nbsp;control.<sup id=\"cite_ref-10\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/PHP#cite_note-10\">[10]</a></sup>&nbsp;Arbitrary PHP code can also be interpreted and executed via&nbsp;<a title=\"Command-line interface\" href=\"https://en.wikipedia.org/wiki/Command-line_interface\">command-line interface</a>&nbsp;(CLI).</p>', 0, 1, 1, '2020-06-28 22:21:34', '2020-06-28 22:21:34'),
(21, 1, 'Dotnet', 'dotnet', 'dotnet-2020-06-29-5ef96ccc6600f.jpg', '<p><strong>.NET Framework</strong>&nbsp;(pronounced as \"<em>dot net\"</em>) is a&nbsp;<a title=\"Software framework\" href=\"https://en.wikipedia.org/wiki/Software_framework\">software framework</a>&nbsp;developed by&nbsp;<a title=\"Microsoft\" href=\"https://en.wikipedia.org/wiki/Microsoft\">Microsoft</a>&nbsp;that runs primarily on&nbsp;<a title=\"Microsoft Windows\" href=\"https://en.wikipedia.org/wiki/Microsoft_Windows\">Microsoft Windows</a>. It includes a large&nbsp;<a class=\"mw-redirect\" title=\"Class library\" href=\"https://en.wikipedia.org/wiki/Class_library\">class library</a>&nbsp;called&nbsp;<a title=\"Framework Class Library\" href=\"https://en.wikipedia.org/wiki/Framework_Class_Library\">Framework Class Library</a>&nbsp;(FCL) and provides&nbsp;<a title=\"Language interoperability\" href=\"https://en.wikipedia.org/wiki/Language_interoperability\">language interoperability</a>&nbsp;(each language can use code written in other languages) across several&nbsp;<a title=\"Programming language\" href=\"https://en.wikipedia.org/wiki/Programming_language\">programming languages</a>. Programs written for .NET Framework execute in a&nbsp;<a title=\"Software\" href=\"https://en.wikipedia.org/wiki/Software\">software</a>&nbsp;environment (in contrast to a&nbsp;<a title=\"Computer hardware\" href=\"https://en.wikipedia.org/wiki/Computer_hardware\">hardware</a>&nbsp;environment) named the&nbsp;<a title=\"Common Language Runtime\" href=\"https://en.wikipedia.org/wiki/Common_Language_Runtime\">Common Language Runtime</a>&nbsp;(CLR). The CLR is an&nbsp;<a class=\"mw-redirect\" title=\"Process virtual machine\" href=\"https://en.wikipedia.org/wiki/Process_virtual_machine\">application virtual machine</a>&nbsp;that provides services such as security,&nbsp;<a title=\"Memory management\" href=\"https://en.wikipedia.org/wiki/Memory_management\">memory management</a>, and&nbsp;<a title=\"Exception handling\" href=\"https://en.wikipedia.org/wiki/Exception_handling\">exception handling</a>. As such, computer code written using .NET Framework is called \"<a title=\"Managed code\" href=\"https://en.wikipedia.org/wiki/Managed_code\">managed code</a>\". FCL and CLR together constitute the .NET Framework.</p>\r\n<p>FCL provides the&nbsp;<a title=\"User interface\" href=\"https://en.wikipedia.org/wiki/User_interface\">user interface</a>,&nbsp;<a title=\"Data access\" href=\"https://en.wikipedia.org/wiki/Data_access\">data access</a>,&nbsp;<a title=\"Database connection\" href=\"https://en.wikipedia.org/wiki/Database_connection\">database connectivity</a>,&nbsp;<a title=\"Cryptography\" href=\"https://en.wikipedia.org/wiki/Cryptography\">cryptography</a>,&nbsp;<a title=\"Web application\" href=\"https://en.wikipedia.org/wiki/Web_application\">web application</a>&nbsp;development, numeric&nbsp;<a title=\"Algorithm\" href=\"https://en.wikipedia.org/wiki/Algorithm\">algorithms</a>, and&nbsp;<a class=\"mw-redirect\" title=\"\" href=\"https://en.wikipedia.org/wiki/Computer_networking\">network communications</a>. Programmers produce software by combining their&nbsp;<a title=\"Source code\" href=\"https://en.wikipedia.org/wiki/Source_code\">source code</a>&nbsp;with .NET Framework and other libraries. The framework is intended to be used by most new applications created for the Windows platform. Microsoft also produces an&nbsp;<a title=\"Integrated development environment\" href=\"https://en.wikipedia.org/wiki/Integrated_development_environment\">integrated development environment</a>&nbsp;for .NET software called&nbsp;<a title=\"Microsoft Visual Studio\" href=\"https://en.wikipedia.org/wiki/Microsoft_Visual_Studio\">Visual Studio</a></p>\r\n<p>&nbsp;</p>', 0, 1, 1, '2020-06-28 22:23:40', '2020-06-28 22:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2020-06-21 00:49:51', '2020-06-21 00:49:51'),
(5, 5, 2, '2020-06-21 06:58:14', '2020-06-21 06:58:14'),
(6, 6, 1, '2020-06-21 07:00:08', '2020-06-21 07:00:08'),
(7, 7, 2, '2020-06-21 07:01:48', '2020-06-21 07:01:48'),
(10, 7, 1, '2020-06-21 10:19:34', '2020-06-21 10:19:34'),
(11, 6, 2, '2020-06-21 10:19:55', '2020-06-21 10:19:55'),
(12, 9, 2, '2020-06-22 22:39:44', '2020-06-22 22:39:44'),
(20, 17, 1, '2020-06-23 00:43:22', '2020-06-23 00:43:22'),
(21, 18, 1, '2020-06-23 05:30:47', '2020-06-23 05:30:47'),
(22, 19, 4, '2020-06-28 22:19:44', '2020-06-28 22:19:44'),
(23, 20, 5, '2020-06-28 22:21:34', '2020-06-28 22:21:34'),
(24, 21, 3, '2020-06-28 22:23:41', '2020-06-28 22:23:41'),
(25, 5, 1, '2020-06-28 22:32:25', '2020-06-28 22:32:25'),
(26, 5, 3, '2020-06-28 22:32:25', '2020-06-28 22:32:25'),
(27, 5, 4, '2020-06-28 22:32:25', '2020-06-28 22:32:25'),
(28, 5, 5, '2020-06-28 22:32:25', '2020-06-28 22:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 18, 2, '2020-06-25 05:20:20', '2020-06-25 05:20:20'),
(15, 17, 1, '2020-06-25 08:44:52', '2020-06-25 08:44:52'),
(16, 9, 2, '2020-06-26 21:21:10', '2020-06-26 21:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Authore', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'mrmizanbd93@gmail.com', '2020-06-22 07:55:42', '2020-06-22 07:55:42'),
(4, 'test@gmail.com', '2020-06-27 05:37:16', '2020-06-27 05:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2020-06-20 09:53:02', '2020-06-20 09:53:02'),
(2, 'Vue js', 'vue-js', '2020-06-21 01:22:28', '2020-06-21 01:22:28'),
(3, 'Dotnet', 'dotnet', '2020-06-28 22:15:32', '2020-06-28 22:15:32'),
(4, 'Java', 'java', '2020-06-28 22:15:43', '2020-06-28 22:15:43'),
(5, 'php', 'php', '2020-06-28 22:16:10', '2020-06-28 22:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Md. Admin', 'admin', 'admin@gmail.com', '$2y$10$x8cEHSBYJCrPI4RC3A4ixeNs2V7PjpWsiyvfx3HKQrEvkosNMOk.C', 'md-admin-2020-06-24-5ef3430ea183a.jpg', 'this is test profile update', NULL, '2020-06-25 03:39:12', '2020-06-25 03:39:12'),
(2, 2, 'Md. Author', 'author', 'author@gmail.com', '$2y$10$p4cCTkLryb9WGo7Eo9QUduJzCDWh.kzPVbLgDNtta0.60wfHT5Ndi', 'md-author-2020-06-26-5ef5a8c42ef34.jpg', 'this is author post section', NULL, '2020-06-26 01:50:29', '2020-06-26 01:50:29'),
(8, 2, 'Mr. Mizan', 'mizan', 'mrmizanbd93@gmail.com', '$2y$10$bhMFiYuaLbYRoUHmyCOzseEMviTMcgKy4PoPCgwDP/JHs60KOQ75W', 'default.png', NULL, NULL, '2020-06-27 08:55:49', '2020-06-27 08:55:49'),
(9, 2, 'Mr. Rafik', 'Rafik', 'rafik@gmail.com', '$2y$10$sytY9TO1nS4qYf2H3.jjveEcPg.eRjwmOH81FPgjx95pLAFaWZohW', 'default.png', NULL, NULL, '2020-06-27 09:01:17', '2020-06-27 09:01:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
