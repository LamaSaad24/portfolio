-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 12:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mashrabya`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE `bloggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloggers`
--

INSERT INTO `bloggers` (`id`, `name`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$5ILLhQJXPSLpCHHzx1sgk.V1sIKrhx.mtZobK5ARBlT3G5MhdRGmC', '1', NULL, '2022-07-22 02:04:35', '2022-07-26 03:55:13'),
(2, 'nada', 'nada@gmail.com', NULL, '$2y$10$rLwXSWjAQ0Zyi.BxW/Z0Iu1RY8AJ18erdO6R4f71Sm1.64OaMW7Qu', '1', NULL, '2022-07-24 12:47:09', '2022-07-24 12:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_meta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `deleted` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `keywords_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addedBy` enum('admin','blogger') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogger_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `image_meta`, `content`, `active`, `deleted`, `keywords_meta`, `description_meta`, `tags`, `addedBy`, `blogger_id`, `user_id`, `sub_cat_id`, `created_at`, `updated_at`) VALUES
(13, 'ghh', '202208010939wp4923991.png', 'alt meta', '<h1><span style=\"font-size:9px\"><span style=\"font-family:Georgia,serif\">hello world</span></span></h1>', '1', '0', 'keywords new', 'descri[tion', 'tag', 'admin', NULL, 1, 1, '2022-08-01 06:39:39', '2022-08-01 06:39:39'),
(14, '2', '202208020821sc4ung0l605tn9oux9ee.jfif', 'alt m', '<h1>الأوشام اليابانية... الفن الشعبي التقليدي</h1>\r\n\r\n<p>الوشم هو وضع علامة دائمة على الجسم وذلك بغرز إبرة في الجلد تحتوي على الصبغ، وهو نوع من الزخرفة التي عُرفت منذ القدم، وفي هذا المقال سيتم التعرف على الأوشام اليابانية التقليدية وأبرز ما يتعلق بها.</p>\r\n\r\n<h2>تاريخ الأوشام اليابانية</h2>\r\n\r\n<p>تقول الأدلة إنّ السجلات الأولى للأوشام اليابانية (بالإنجليزية: <span dir=\"LTR\">Japanese Tattoos</span>) تعود إلى ما قبل 5000 عام قبل الميلاد، وكان الرجال في البداية يرسمون الوشم على أجسامهم ووجوههم من باب الزينة، ولكن في الفترة ما بين 300 و600 بعد الميلاد أخذت الأوشام اليابانية منحنى سلبي، حيث باتت تُطبّق على أجساد المجرمين لوصف الجريمة التي ارتكبوها، ولكن بحلول القرن السابع استُبدلت عقوبات أخرى بالوشم الجنائي، وأصبح الوشم محظور في عام 1868م ثمّ أُعيد السماح به في وقت لاحق، وأصبحت الأوشام اليابانية في العصر الحديث شائعة وترمز للقوة والحداثة، وبالرغم من ذلك لا يحبّذ المجتمع الياباني إجراء الوشم على الجسم.</p>\r\n\r\n<h2>الأدوات المستخدمة في الأوشام اليابانية</h2>\r\n\r\n<p>كانت الأوشام التقليدية القديمة تُنفّذ بشكل يدوي، وذلك من خلال استخدام أداة طويلة من المعدن أو الخيزران متصلة بإبرة من الطرف، وما تزال هذه الطريقة التقليدية تُستخدم للحصول على الوشم الياباني إلى هذا اليوم ولكن على نطاق غير واسع، فمحترفو رسم الأوشام أصبحوا يستخدمون أدوات كهربائية يدوية لتطبيق الوشم على الجسم.</p>\r\n\r\n<h2>ألوان الأوشام اليابانية</h2>\r\n\r\n<p>تدخل مجموعة من الألوان في رسم الأوشام اليابانية التقليدية، ولكل لون دلالة خاصة، وفيما يأتي الألوان الشائعة في الوشم الياباني:</p>\r\n\r\n<h3>اللون الأبيض</h3>\r\n\r\n<p>يُعدّ اللون الأبيض الأكثر شيوعًا في الثقافة اليابانية، وهو يرمز للحقيقة والبراءة، ويرمز أيضًا للبدايات الجديدة والراحة الأبدية، لذلك فهو لون الحداد، والأبيض من الألوان المستخدمة في الأوشام اليابانية التقليدية.</p>\r\n\r\n<h3>اللون الأسود</h3>\r\n\r\n<p>يمكن أن يرمز اللون الأسود للحداد في الثقافة اليابانية في حال استخدامه مع اللون الأبيض، ويُعدّ اللون الأسود اللون الوحيد المُستخدم في الوشم المبكر، لذلك هناك ارتباط كبير بين هذا اللون الغامض والأوشام اليابانية.</p>\r\n\r\n<h3>اللون الأحمر</h3>\r\n\r\n<p>يُعدّ اللون الأحمر مهم للغاية في اليابان، فهو يرمز للفرح والسعادة والعاطفة والحيوية، ويُستخدم الأحمر عادةً في المناسبات السعيدة مثل حفلات الزفاف والأعياد الخاصة والعامة، ومن الشائع استخدام هذا اللون في الوشم الياباني.</p>\r\n\r\n<h3>اللون الأزرق</h3>\r\n\r\n<p>يُعدّ اللون الأزرق لون الحظ في اليابان، لذلك يميل الكثير من اليابانيين لارتداء ملابس باللون الأزرق عند الذهاب لمقابلة عمل، ويرتدي الكثير من عمال الشركات وموظفيها هذا اللون، لأنه يشير أيضًا إلى الإخلاص والتفاني في العمل.</p>\r\n\r\n<h3>اللون الأخضر</h3>\r\n\r\n<p>نظرًا لأنّ اللون الأخضر يشير إلى الطبيعة فهو يرمز للحياة والطاقة والشباب واحترام الأرض في الثقافة اليابانية، ونظرًا لأن الشاي الأخضر ينال شعبية كبيرة في اليابان بسبب فوائده الصحية الكبيرة، يدخل الأخضر بكثرة في الأوشام اليابانية.</p>\r\n\r\n<h3>اللون الأرجواني</h3>\r\n\r\n<p>يُعدّ الأرجواني لونًا ملكيًا في اليابان، حيث أنّه لون يصعب الحصول عليه ومكلف في الإنتاج، وقد كان في السابق يقتصر على الطبقة الحاكمة، لذلك يدخل اللون الأرجواني في رسم الأوشام اليابانية التقليدية والحديثة اليوم.</p>\r\n\r\n<h3>اللون الوردي</h3>\r\n\r\n<p>يُشير اللون الوردي في الثقافة اليابانية إلى الأنوثة والطبيعة والحياة والربيع والصحة الجيدة، وهو لون شائع الاستخدام في الملابس الداخلية في اليابان، لذلك فهو لون يمنح الأوشام القليل من الجاذبية الأنثوية.</p>\r\n\r\n<h3>اللون الأصفر</h3>\r\n\r\n<p>يرمز اللون الأصفر في الثقافة اليابانية إلى التفاؤل والفرح والنمو، ولكنه في بعض المناطق اليابانية يُنظر إليه على أنّه رمز للغش والكذب، ولكن عامةً يدخل اللون الأصفر في الأوشام اليابانية ليُضفي عليها مزيد من الرونق والجمال.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>المناطق الشائع تطبيق الوشم عليها</h2>\r\n\r\n<p>إنّ المكان هو أول ما يفكّر به الشخص عندما ينوي وضع الوشم، ولكن ينبغي عليه عندما يتعلّق الأمر بالمكان أن يعلم أنّه كلما كانت المساحة أكبر سيحصل على وشم أفضل، وفيما يأتي أكثر المناطق شيوعًا لتطبيق الوشم:</p>\r\n\r\n<h3>الذراع</h3>\r\n\r\n<p>تُعدّ منطقة الذراع مساحة كافية لتطبيق الأوشام اليابانية ذات التفاصيل الكثيرة، ويمكن بسهولة تغطية الذراع لإخفاء الوشم أو الكشف عنها لإظهاره عند اللزوم.</p>\r\n\r\n<h3>الصدر</h3>\r\n\r\n<p>يُعدّ وضع الأوشام اليابانية على الصدر أمر أكثر جرأة، ويمكن إخفاء ألوان وتفاصيل الجسد أو إظهارها بعد تطبيق الوشم&nbsp; على حسب الرغبة.</p>\r\n\r\n<h3>الظهر</h3>\r\n\r\n<p>يسمح تطبيق الأوشام اليابانية على الظهر بالحصول على وشم كبير وذي تفاصيل متعددة، ومن السهل إخفاء وشم الظهر إذا لزم الأمر.</p>\r\n\r\n<h3>الفخذ</h3>\r\n\r\n<p>من أكثر الرسومات التي يمكن تطبيقها بالوشم على الفخذ بأكمله هي رسمة التنين، الذي يرمز للقوة والصلابة في الثقافة اليابانية، ويسمح رسم التنين على طول الفخذ إلى إظهار الحجم الحقيقي لهذا الكائن الأسطوري.</p>\r\n\r\n<h3>الرقبة</h3>\r\n\r\n<p>يُناسب الوشم على الرقبة الأشخاص الذين يمتلكون جرأة كبيرة، ولا يرغبون في إخفاء الأوشام الفنية اليابانية عن الآخرين.</p>\r\n\r\n<h3>اليد</h3>\r\n\r\n<p>من الصعب تطبيق الأوشام على منطقة اليد كونها مكان أكثر حساسية، ولكن يمكن رسم بعض التفاصيل الصغيرة عليها.</p>\r\n\r\n<h3>الكتف</h3>\r\n\r\n<p>يمكن للكتف استيعاب رسم أكبر حجمًا أو حتى رسم أكثر جرأة، مع إمكانية تغطيته بسهولة.</p>\r\n\r\n<h3>القدم</h3>\r\n\r\n<p>نظرًا لأنّ حجم القدم مماثل تقريبًا لحجم اليدين فإنّه يمكن تطبيق بعض الأوشام اليابانية الصغيرة عليها، مع إمكانية إخفاءها عند اللزوم.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>أشكال الأوشام اليابانية</h2>\r\n\r\n<p>تتنوع أشكال الرسومات في الأوشام اليابانية، ولكن هناك أشكال تقليدية شائعة أكثر من غيرها من أبرزها ما يأتي:</p>\r\n\r\n<p>القط: يرمز القط في الأوشام اليابانية إلى الحظ السعيد والثروة.</p>\r\n\r\n<p>زهرة الكرز: ترمز أزهار الكرز في اليابان للقوة والمثابرة والفرح.</p>\r\n\r\n<p>السحابة: تُشير السحابة إلى التغيير والجرأة والذكورة وعدم الدوام.</p>\r\n\r\n<p>طائر الكركي: يرمز طائر الكركي إلى الأمل والسلام والحظ والحكمة في اليابان.</p>\r\n\r\n<p>الشيطان: عادةً يميل الكثيرون إلى تطبيق الوشم الشيطاني، رغبةً منهم في إظهار قوتهم وصلابتهم أمام الآخرين.</p>\r\n\r\n<p>التنين: يعد وشم التنين من أكثر الأوشام اليابانية استخدامًا، وهو يرمز -وفقًا للثقافة اليابانية- إلى القوة والشجاعة.</p>\r\n\r\n<p>المرأة اليابانية: يرتبط وشم المرأة اليابانية بالأنوثة والرقة والجمال، ويمكن وضعه من قِبل النساء والرجال على حدٍ سواء.</p>\r\n\r\n<p>أحرف وكلمات: يرغب بعض الناس في الحصول على كلمة أو عبارة بعدة رموز أو لغات لتعبر عن شخصيتهم.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '1', '0', 'keywords', 'descri[tion', 'tag', 'admin', NULL, 1, 1, '2022-08-02 05:21:08', '2022-08-02 05:21:08'),
(15, '7654asf', '202208020821wp4923991.png', 'alt m', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'hgfd', 'admin', NULL, 1, 1, '2022-08-02 05:21:29', '2022-08-02 05:21:29'),
(16, '4', '202208020821Landscape-Color.jpg', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'lg', 'admin', NULL, 1, 1, '2022-08-02 05:21:50', '2022-08-02 05:21:50'),
(17, '5', '202208020822Landscape-Color.jpg', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'lk', 'admin', NULL, 1, 1, '2022-08-02 05:22:10', '2022-08-02 05:22:10'),
(18, 'oiuhtgr', '202208020826wp4923991.png', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'tg', 'admin', NULL, 1, 1, '2022-08-02 05:26:36', '2022-08-02 05:26:36'),
(19, ';jhgf', '202208020828Landscape-Color.jpg', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'lkjh', 'admin', NULL, 1, 1, '2022-08-02 05:28:52', '2022-08-02 05:28:52'),
(20, ';gfd', '202208020829wp4923991.png', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'descri[tion', 'jhgf', 'admin', NULL, 1, 1, '2022-08-02 05:29:11', '2022-08-02 05:29:11'),
(21, 'sfdghjh', '202208020829wp4923991.png', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'كيفية عمل المحاشي', 'jhj', 'admin', NULL, 1, 1, '2022-08-02 05:29:39', '2022-08-02 05:29:39'),
(22, 'drtsrd', '202208020830Landscape-Color.jpg', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'this is keywords for home', 'descri[tion', 'kj', 'admin', NULL, 1, 1, '2022-08-02 05:30:01', '2022-08-02 05:30:01'),
(23, 'ft', '202208020830wp4923991.png', 'alt meta', '<h1>أبدأ بكتابة مقالتك .</h1>', '1', '0', 'keywords', 'كيفية عمل المحاشي', 'jh', 'admin', NULL, 1, 1, '2022-08-02 05:30:27', '2022-08-02 05:30:27');

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
-- Table structure for table `home_settings`
--

CREATE TABLE `home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header-title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header-image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcut-icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_cats`
--

CREATE TABLE `main_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_meta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `keywords_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_cats`
--

INSERT INTO `main_cats` (`id`, `name`, `image`, `image_meta`, `active`, `keywords_meta`, `description_meta`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'فن الطهي', '202207241549product04.png', 'محاشي', 1, 'this is keywords for home', 'this is description for main cat 1', 1, '2022-07-24 12:49:04', '2022-07-24 12:49:04');

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
(65, '2014_10_12_000000_create_users_table', 1),
(66, '2014_10_12_100000_create_password_resets_table', 1),
(67, '2019_08_19_000000_create_failed_jobs_table', 1),
(68, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(69, '2022_04_15_163427_create_main_cats_table', 1),
(70, '2022_04_15_163715_create_sub_cats_table', 1),
(71, '2022_04_15_164030_create_settings_table', 1),
(72, '2022_05_12_080252_create_sessions_table', 1),
(73, '2022_06_21_164813_create_seos_table', 1),
(74, '2022_06_26_045034_create_home_settings_table', 1),
(75, '2022_07_18_051827_create_bloggers_table', 1),
(76, '2023_07_18_051319_create_blogs_table', 1),
(77, '2023_07_18_051320_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `readFromAdmin` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `readFromBlogger` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `new` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `newForBlogger` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `action` enum('1','0','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `for` enum('admin','blogger','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('store','delete','update') COLLATE utf8mb4_unicode_ci NOT NULL,
  `replay` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogger_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cats`
--

CREATE TABLE `sub_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_meta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `keywords_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_meta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `main_cat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_cats`
--

INSERT INTO `sub_cats` (`id`, `name`, `image`, `image_meta`, `active`, `keywords_meta`, `description_meta`, `user_id`, `main_cat_id`, `created_at`, `updated_at`) VALUES
(1, 'فن الطهي3', '202207241549product01.png', 'alt meta', 1, 'this is keywords for home', 'this is description for home', 1, 1, '2022-07-24 12:49:27', '2022-07-24 12:49:27');

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
  `active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lama', 'lama@gmail.com', NULL, '$2y$10$jjAmp.ljRlbUtiIwCxHwruMWtAPTCK19nptI6RsevP0ytplVAL1za', '1', NULL, '2022-07-22 02:04:35', '2022-07-22 02:04:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bloggers_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blogger_id_foreign` (`blogger_id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_sub_cat_id_foreign` (`sub_cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_settings`
--
ALTER TABLE `home_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `main_cats`
--
ALTER TABLE `main_cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_cats_name_unique` (`name`),
  ADD KEY `main_cats_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_blogger_id_foreign` (`blogger_id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_blog_id_foreign` (`blog_id`);

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
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seos_key_unique` (`key`),
  ADD KEY `seos_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_cats`
--
ALTER TABLE `sub_cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_cats_user_id_foreign` (`user_id`),
  ADD KEY `sub_cats_main_cat_id_foreign` (`main_cat_id`);

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
-- AUTO_INCREMENT for table `bloggers`
--
ALTER TABLE `bloggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_settings`
--
ALTER TABLE `home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_cats`
--
ALTER TABLE `main_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_cats`
--
ALTER TABLE `sub_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blogger_id_foreign` FOREIGN KEY (`blogger_id`) REFERENCES `bloggers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_settings`
--
ALTER TABLE `home_settings`
  ADD CONSTRAINT `home_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `main_cats`
--
ALTER TABLE `main_cats`
  ADD CONSTRAINT `main_cats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_blogger_id_foreign` FOREIGN KEY (`blogger_id`) REFERENCES `bloggers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seos`
--
ALTER TABLE `seos`
  ADD CONSTRAINT `seos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_cats`
--
ALTER TABLE `sub_cats`
  ADD CONSTRAINT `sub_cats_main_cat_id_foreign` FOREIGN KEY (`main_cat_id`) REFERENCES `main_cats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_cats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
