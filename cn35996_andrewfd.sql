-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2025 at 12:59 AM
-- Server version: 8.0.41-32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cn35996_andrewfd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add sub category', 8, 'add_subcategory'),
(30, 'Can change sub category', 8, 'change_subcategory'),
(31, 'Can delete sub category', 8, 'delete_subcategory'),
(32, 'Can view sub category', 8, 'view_subcategory'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add characteristic', 10, 'add_characteristic'),
(38, 'Can change characteristic', 10, 'change_characteristic'),
(39, 'Can delete characteristic', 10, 'delete_characteristic'),
(40, 'Can view characteristic', 10, 'view_characteristic'),
(41, 'Can add product image', 11, 'add_productimage'),
(42, 'Can change product image', 11, 'change_productimage'),
(43, 'Can delete product image', 11, 'delete_productimage'),
(44, 'Can view product image', 11, 'view_productimage'),
(45, 'Can add category', 12, 'add_category'),
(46, 'Can change category', 12, 'change_category'),
(47, 'Can delete category', 12, 'delete_category'),
(48, 'Can view category', 12, 'view_category'),
(49, 'Can add post', 13, 'add_post'),
(50, 'Can change post', 13, 'change_post'),
(51, 'Can delete post', 13, 'delete_post'),
(52, 'Can view post', 13, 'view_post');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$xAzh5DNTLfUhRg1qqhtc7g$dCGA+cM2303NRIz6y4FQUX5n3DB0Px9/nsjJ/r16VoA=', '2024-11-29 01:36:35.085075', 1, 'andrewfd', '', '', 'berka100@mail.ru', 1, 1, '2024-11-04 20:26:54.249645');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`) VALUES
(1, '3D Принтеры');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE IF NOT EXISTS `blog_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `published_at` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `published_at`, `image`, `category_id`) VALUES
(1, 'Эволюция технологии лазерной сварки', 'Эволюция технологии лазерной сварки Примечание редактора: все нижеследующее основано на документе «Введение в промышленную лазерную сварку», представленном Томом Куглером, менеджером по волоконным системам компании Laser Mechanisms Inc., на выставке FABTECH, 13–16 сентября 2021 г., Чикаго. Лазерная сварка проникла в высокотехнологичное и прецизионное производство металлов. Эта технология играет жизненно важную роль в автомобилестроении, производстве медицинского оборудования, а также в деталях для аэрокосмической и точной электроники. Теперь он появляется в большем количестве мест, чем когда-либо, от крупнейшего OEM-производителя до цеха прецизионной обработки листового металла. По мере развития лазерной сварки она стала чрезвычайно гибкой. Огромное разнообразие сварочных работ, которые могут выполнять лазеры, поистине ошеломляет. Понимание того, как лазеры достигают всего этого, начинается с изучения основ — как луч света сплавляет два металла вместе. Фокусировка света Металлы, как правило, очень хорошо отражают свет. Лазер концентрирует и фокусирует этот свет, чтобы преодолеть отражательную способность. Когда поглощается достаточно энергии луча, металл начинает разжижаться. Все это начинается, когда оптика — изогнутое зеркало или линза с изогнутой поверхностью — фокусирует свет до размера пятна, диаметр которого может варьироваться от десятков до нескольких сотен микрон. Такая фокусировка создает чрезвычайную плотность мощности. Какую прозрачную оптику использовать, зависит от лазера и его длины волны. CO 2 -лазеры излучают длину волны 10,6 микрон. Стандартное стекло не прозрачно для него, поэтому в таких лазерах используется альтернативный материал линз, например селенид цинка (ZnSe). В одноммикронных лазерах, в том числе волоконных, дисковых и YAG, используется плавленый кварц или стекло. Линзы ZnSe, фокусирующие 10,6-микронный луч CO 2 -лазера, обладают превосходной теплопроводностью, что делает оптику более устойчивой к загрязнению. К сожалению, не существует экономически эффективного материала, который бы демонстрировал такую же теплопроводность, как и 1-микронный лазер, а это означает, что среда фокусировки должна оставаться чистой и иметь оптику из стекла или плавленого кварца хорошего качества. Сварочные работы, требующие высокой мощности лазера, могут привести к образованию неизбежного мусора. В этих случаях для фокусировки луча вместо прозрачной оптики используются зеркала. Фокусирующие зеркала широко распространены при сварке лазером CO 2 с мощностью лазера 5 кВт и более. В одноммикронных лазерах, в том числе волоконных и дисковых, также используются зеркала для более высокой мощности лазера. Обычная установка предполагает, что луч (горизонтально рабочей поверхности) попадает в параболическое зеркало, которое отражает луч вниз. Лазерная оптика фокусирует диаметр необработанного луча , чтобы создать глубину фокуса , при которой луч имеет достаточную интенсивность для обработки материала. Самое узкое место на талии пучка – это размер пятна . Фокусное расстояние — это расстояние между линзой и фокусной точкой. Все эти переменные взаимосвязаны. Чем короче фокусное расстояние, тем меньше размер пятна и меньше глубина резкости. И каждый из этих параметров можно регулировать для оптимизации процесса сварки. Например, увеличение фокусного расстояния может изменить положение фокуса и увеличить глубину фокуса, что может увеличить проплавление сварного шва. Другим фактором является качество луча или врожденная фокусируемость лазерного луча. Его нельзя отрегулировать — это зависит от типа и конструкции лазера, — но этот параметр действительно влияет на то, как человек управляет общим процессом. Лазеры с самым высоким качеством луча называются одномодовыми лазерами, которые имеют чисто гауссовский луч или TEM00 с профилем плотности мощности, который очень интенсивен в центре и менее интенсивен по краям. Высокое качество луча помогает достичь большей глубины фокуса, что, в свою очередь, открывает множество возможностей обработки. Все распространенные типы лазеров имеют одномодовые версии с высоким качеством луча, но влияние такого высокого качества луча зависит от длины волны лазера. Одномодовый лазер CO 2 с длиной волны 10,6 микрона будет иметь размер пятна в 10 раз больше, чем у волоконного лазера с длиной волны 1 микрон. В общем, более короткая длина волны также означает меньший размер пятна фокусировки. Преодоление отражательной способности Опять же, весь смысл фокусировки состоит в том, чтобы преодолеть естественную отражательную способность металла. Жидкий металл поглощает больше энергии света, чем твердый металл, поэтому, когда металл переходит в жидкую фазу, поглощение энергии сильно увеличивается, настолько, что жидкая сварочная ванна начинает превращаться в вогнутую форму. Эта вогнутая форма имеет тенденцию направлять энергию в центр сварочной ванны. Как только сварочная ванна становится глубоко вогнутой, она начинает поглощать большую часть лазерной энергии и отражать лишь около 5%. Точка, в которой первоначальная отражательная способность металла падает до 5% и менее, — это момент, когда процесс переходит в материал. В каком-то смысле лазерная сварка похожа на плохую лазерную резку. Вместо удаления металла происходит его контролируемое разжижение. Как и при резке, лазер может использовать больше мощности, чтобы сваривать быстрее и толще. Но этот процесс не опирается на аэродинамическое преимущество потока вспомогательного газа, откачивающего расплавленный металл, и не может использовать реакцию горения железа и кислорода. Вместо этого хорошая лазерная сварка должна обеспечивать контролируемое плавление и часто использовать газы для предотвращения обширного окисления. Твердость материала не имеет значения. Титан и суперсплавы легче сваривать лазером, чем алюминий. И наоборот, отражательная способность и теплопроводность имеют большое значение, поскольку все они влияют на то, как конкретный металл поглощает энергию луча. Материалы с очень хорошей теплопроводностью, такие как золото и серебро, могут представлять проблемы при лазерной сварке. Теплоотводящие материалы, такие как медь, которые имеют высокую температуропроводность (насколько хорошо материал рассеивает тепло), также могут представлять собой проблему. Тем не менее, современные волоконные и дисковые лазеры имеют достаточную плотность мощности луча, чтобы решить эти проблемы. В отличие от лазерной резки, лазерная сварка требует большего количества металлургических соображений. Лазерная резка превращает одну деталь в две', '2024-11-29 01:37:50.000000', 'blog/laser_jSXw7N5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_products`
--

CREATE TABLE IF NOT EXISTS `blog_post_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_products_post_id_product_id_9a2d65dc_uniq` (`post_id`,`product_id`),
  KEY `blog_post_products_product_id_750764bc_fk_shop_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog_post_products`
--

INSERT INTO `blog_post_products` (`id`, `post_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-11-10 20:27:01.094760', '1', '3D-Принтеры по металу', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-11-10 20:28:59.752308', '1', 'Chamlion NCL M2150T', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Chamlion NCL M2150T\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for Chamlion NCL M2150T\"}}]', 9, 1),
(3, '2024-11-10 20:35:18.704242', '2', 'Системы компьютерной 3D томографии', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-11-10 20:35:59.099474', '2', 'RX Solutions EasyTom S', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for RX Solutions EasyTom S\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for RX Solutions EasyTom S\"}}]', 9, 1),
(5, '2024-11-10 20:39:01.461828', '3', '3D-сканеры', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-11-10 20:42:48.609101', '1', 'Ручные 3D-сканеры', 1, '[{\"added\": {}}]', 8, 1),
(7, '2024-11-10 20:43:34.414869', '3', 'ScanTech KSCAN-Magic', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-11-10 20:44:36.580146', '3', 'ScanTech KSCAN-Magic', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 9, 1),
(9, '2024-11-10 20:44:48.397267', '3', 'ScanTech KSCAN-Magic', 2, '[{\"added\": {\"name\": \"product image\", \"object\": \"Image for ScanTech KSCAN-Magic\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for ScanTech KSCAN-Magic\"}}]', 9, 1),
(10, '2024-11-10 20:49:26.118618', '4', 'Cтоматологические фотополимерные принтеры', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-11-10 20:51:14.835394', '4', '4K DLP EvoDent S300+', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-11-10 20:51:44.764456', '4', '4K DLP EvoDent S300+', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for 4K DLP EvoDent S300+\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for 4K DLP EvoDent S300+\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for 4K DLP EvoDent S300+\"}}]', 9, 1),
(13, '2024-11-10 20:54:39.069823', '5', 'Программные продукты', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-11-10 20:56:56.120164', '5', 'Программное обеспечение OQTON', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for \\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 OQTON\"}}, {\"added\": {\"name\": \"product image\", \"object\": \"Image for \\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0435\\u0441\\u043f\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 OQTON\"}}]', 9, 1),
(15, '2024-11-10 21:02:40.751202', '6', 'Расходные материалы', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-11-10 21:05:12.618320', '6', 'Расходные материалы', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(17, '2024-11-10 21:23:54.894627', '2', 'Линзы для лазерной резки', 1, '[{\"added\": {}}]', 8, 1),
(18, '2024-11-10 21:34:10.228423', '3', 'Фильтры', 1, '[{\"added\": {}}]', 8, 1),
(19, '2024-11-10 21:36:37.614999', '4', 'Сопла для лазерной резки', 1, '[{\"added\": {}}]', 8, 1),
(20, '2024-11-10 21:41:09.260818', '5', 'Керамические держатели сопл', 1, '[{\"added\": {}}]', 8, 1),
(21, '2024-11-10 21:41:20.515093', '5', 'Керамические держатели сопл', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(22, '2024-11-29 01:38:59.875322', '1', '3D Принтеры', 1, '[{\"added\": {}}]', 12, 1),
(23, '2024-11-29 01:39:02.529305', '1', 'Эволюция технологии лазерной сварки', 1, '[{\"added\": {}}]', 13, 1),
(24, '2024-11-29 01:39:31.150239', '1', 'Эволюция технологии лазерной сварки', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'blog', 'category'),
(13, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'shop', 'category'),
(10, 'shop', 'characteristic'),
(9, 'shop', 'product'),
(11, 'shop', 'productimage'),
(8, 'shop', 'subcategory');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-02 20:39:49.893463'),
(2, 'auth', '0001_initial', '2024-11-02 20:39:50.115816'),
(3, 'admin', '0001_initial', '2024-11-02 20:39:50.183739'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-02 20:39:50.190359'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-02 20:39:50.197390'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-02 20:39:50.255628'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-02 20:39:50.284889'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-02 20:39:50.310133'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-02 20:39:50.317766'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-02 20:39:50.349767'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-02 20:39:50.350518'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-02 20:39:50.356696'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-02 20:39:50.390775'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-02 20:39:50.424045'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-02 20:39:50.441983'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-02 20:39:50.449222'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-02 20:39:50.480639'),
(18, 'shop', '0001_initial', '2024-11-02 20:39:50.538015'),
(19, 'shop', '0002_product_category_alter_product_subcategory', '2024-11-02 20:39:50.619371'),
(20, 'shop', '0003_remove_product_characteristics_category_image_and_more', '2024-11-02 20:39:50.781598'),
(21, 'shop', '0004_characteristic_product_characteristics', '2024-11-02 20:39:50.859431'),
(22, 'blog', '0001_initial', '2024-11-02 20:39:50.900057'),
(23, 'blog', '0002_post_products', '2024-11-02 20:39:50.966681'),
(24, 'sessions', '0001_initial', '2024-11-02 20:39:50.987777'),
(25, 'shop', '0005_product_posts', '2024-11-02 20:39:51.069258'),
(26, 'shop', '0006_category_description', '2024-11-02 20:39:51.095679'),
(27, 'shop', '0007_productimage', '2024-11-02 20:39:51.138470');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rw13xdvvojo1t4qy5jy4q7aada8wc2e3', '.eJxVjDsOwjAQBe_iGlnxev2jpOcM0a69JgHkSPlUiLtDpBTQvpl5L9XTtg79tsjcj0WdlVGn340pP6TtoNyp3Sadp7bOI-td0Qdd9HUq8rwc7t_BQMvwrV2HrnQ1WFezR2CPnDgIICMmY9BUAbY2RBcrxeQhJOokWQ9AUKKo9wfAADbv:1t83iI:pagpEKhzS4SJhVLOH9hXJchCxas1MLi7jCK1GXvzuyE', '2024-11-18 20:30:14.142670'),
('uiobdslnoho7kd8qb3vbvgxg7cdp76um', '.eJxVjDsOwjAQBe_iGlnxev2jpOcM0a69JgHkSPlUiLtDpBTQvpl5L9XTtg79tsjcj0WdlVGn340pP6TtoNyp3Sadp7bOI-td0Qdd9HUq8rwc7t_BQMvwrV2HrnQ1WFezR2CPnDgIICMmY9BUAbY2RBcrxeQhJOokWQ9AUKKo9wfAADbv:1tGpvv:liLRiORJGaDMruYPB44pJI-ytR2guZzfVqeWyQj4DpY', '2024-12-13 01:36:35.087595');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `image`, `description`) VALUES
(1, '3D-Принтеры по металу', 'categories/Chamlion_NCL_M2150T.jpg', '3D-принтеры по металлу открывают новые возможности в производстве, позволяя создавать сложные и высокопрочные изделия из различных металлов и сплавов. Благодаря аддитивным технологиям, эти принтеры обеспечивают точное и экономичное производство, минимизируя отходы и сокращая сроки выпуска продукции. Идеальны для создания прототипов, мелкосерийного производства и быстрого изготовления деталей с высокой детализацией и прочностью.'),
(2, 'Системы компьютерной 3D томографии', 'categories/RX_Solutions_EasyTom_S_-1.png', 'Системы компьютерной 3D-томографии позволяют получать высокоточные изображения внутренних структур объектов без их разрушения. Эти системы широко используются в медицине, промышленности и науке, обеспечивая детальный анализ структуры материалов, выявление дефектов и контроль качества. 3D-томография помогает создавать объемные модели с точной визуализацией сложных элементов, что упрощает диагностику, исследование и производство, делая процессы более эффективными и надежными.'),
(3, '3D-сканеры', 'categories/ScanTech_KSCAN-Magic_3cZtJPN.png', '3D-сканеры — устройства для точного создания цифровых копий объектов любой сложности. Сканируя поверхность, они преобразуют реальные формы в 3D-модели, что позволяет использовать полученные данные для проектирования, визуализации и производства. 3D-сканеры находят широкое применение в инженерии, медицине, искусстве и промышленности, ускоряя разработку прототипов, реставрацию объектов и контроль качества.'),
(4, 'Cтоматологические фотополимерные принтеры', 'categories/4K_DLP_EvoDent_S300-3.png', 'Стоматологические фотополимерные принтеры — инновационные устройства для быстрой и точной печати высококачественных зубных протезов, коронок, капп и других ортодонтических изделий. Используя фотополимеры, принтеры создают изделия с высокой детализацией и биосовместимостью, что важно для комфорта и безопасности пациента. Эти принтеры значительно сокращают сроки производства, позволяя стоматологам предлагать индивидуальные решения, улучшая качество и скорость обслуживания.'),
(5, 'Программные продукты', 'categories/Program_products.jpg', 'Программные продукты для 3D-принтеров и сканеров играют ключевую роль в подготовке и оптимизации моделей для печати и сканирования. Они обеспечивают весь цикл работы — от создания и редактирования 3D-моделей до настройки параметров печати и обработки полученных данных. Такие программы помогают точно настраивать слои, поддерживающие структуры, а также позволяют анализировать и улучшать модели для достижения наилучшего качества. Для 3D-сканеров программное обеспечение обрабатывает полученные сканы, создавая детализированные цифровые копии, которые можно редактировать и использовать в проектировании, прототипировании и контроле качества.'),
(6, 'Расходные материалы', 'categories/nozzles.png', 'Расходные материалы для 3D-принтеров и сканеров, такие как линзы, фильтры и дюзы, играют важную роль в обеспечении эффективной и качественной работы оборудования. Линзы используются для фокусировки лазерных лучей в принтерах и сканерах, фильтры очищают воздух и системы охлаждения, а дюзы регулируют подачу материала во время печати. Регулярная замена и уход за этими расходными материалами помогают поддерживать стабильную работу оборудования и обеспечивать высокое качество печати и сканирования.');

-- --------------------------------------------------------

--
-- Table structure for table `shop_characteristic`
--

CREATE TABLE IF NOT EXISTS `shop_characteristic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_subcategory_id_38960212_fk_shop_subcategory_id` (`subcategory_id`),
  KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `description`, `image`, `subcategory_id`, `category_id`) VALUES
(1, 'Chamlion NCL M2150T', '3D-принтер по металлу, разработанный для стоматологов. Камера — ⌀150х120 мм. Совместим с основными материалами, используемыми в стоматологии. Прост в обслуживании, не требует специальных условий.', 'products/Chamlion_NCL_M2150T_j3qGVF0.jpg', NULL, 1),
(2, 'RX Solutions EasyTom S', 'Самые компактные томографы для деталей малых и средних размеров\r\nRX Solutions EasyTom S - это компактная и мощная КТ-система, разработанная для самых сложных исследований в области разработки, производства и контроля качества выпускаемой продукции.\r\n\r\nС помощью этого нового компактного оборудования можно получать цифровое объемное высокодетализированное изображение деталей и сборочных единиц, диаметром до 230 мм и высотой до 380 мм, для определения их реальных характеристик и свойств.', 'products/RX_Solutions_EasyTom_S_-1.png', NULL, 2),
(3, 'ScanTech KSCAN-Magic', 'Универсальный ЗD-сканер KSCAN-Magic представляет собой первое воплощение комбинированной технологии синих и инфракрасных лазеров, с пятью режимами проецирования лазерных линий: параллельные инфракрасные линии (для большой площади сканирования), синие перекрестия (для быстрого захвата данных), синие параллельные линии (для сверхвысокой детализации), одна синяя линия (для глубоких отверстий), а также встроенной системы фотограмметрии. Серия KSCAN-Magic отличается революционным прорывом в скорости измерений. Исключительная скорость, точность и детализация измерений, большое поле сканирования и глубина резкости значительно оптимизируют рабочие процессы ЗD-измерений и ускоряют проектирование и производство деталей. Для быстрого получения данных о геометрических элементах или максимального захвата данных в отверстиях и углублениях ЗD-сканер может быть оснащен портативным оптически отслеживаемым СММ-щупом, дополняющим комплексный подход бесконтактной системы для прецизионных измерений ScanTech-Magic', 'products/ScanTech_KSCAN-Magic_nTi0Nih.png', 1, 3),
(4, '4K DLP EvoDent S300+', '4K DLP EvoDent S300+ — это высокоточный стоматологический 3D-принтер, использующий технологию DLP и разрешение 4K для создания деталей с исключительной детализацией и точностью. Этот принтер идеально подходит для изготовления стоматологических моделей, капп, коронок и других ортодонтических изделий. Благодаря высокой скорости печати и улучшенному интерфейсу, EvoDent S300+ обеспечивает быстрое и удобное производство, что делает его отличным выбором для современных стоматологических клиник и лабораторий.', 'products/4K_DLP_EvoDent_S300-3.png', NULL, 4),
(5, 'Программное обеспечение OQTON', 'Oqton позволяет оцифровать стоматологическое производство от приема заказа до последующей обработки и контроля качества. Он предлагает интегрированную, сквозную платформу:\r\n\r\nПодготовка: в настоящее время часто используется несколько различных пакетов программного обеспечения CAM, в зависимости от технологии и марки станка. Oqton предлагает одно CAM-решение для всех этих задач.\r\n\r\nГрафик: обычно в лабораториях есть программное обеспечение для управления заказами, которое позволяет получать заказы и отгружать готовую продукцию. То, что происходит в промежутке (и особенно планирование работы станка), редко освещается, и лаборатории остается только использовать таблицы excel или google docs и опыт оператора для управления производственным потоком. В Oqton есть интегрированный планировщик, с полной видимостью операций.\r\n\r\nМониторинг: мониторинг станков требует глаз оператора, который ходит туда-сюда к станкам, чтобы проверить состояние. Некоторые машины поставляются с собственным программным обеспечением и приборной панелью, но строго ограничены маркой/типом машины. Oqton позволяет осуществлять мониторинг машин в реальном времени с любого устройства и в любом месте, а также легко получать уведомления (по смс/почте) об обновлении статуса или предупреждениях.\r\n\r\nАнализ/отслеживание: в настоящее время большинство зуботехнических лабораторий имеют ограниченные возможности для анализа. Имеющиеся у них программные системы не собирают необходимые данные. Существующие решения (из других отраслей) недоступны, поскольку слишком дороги и/или требуют много времени для внедрения. Oqton обеспечивает максимальный сбор данных, с полной историей пересмотра, что позволяет полностью проследить и легко проанализировать все живые/исторические данные.', 'products/65f4ed25039a1a3817b7af4f63745a391.png', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shop_productimage`
--

CREATE TABLE IF NOT EXISTS `shop_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_productimage_product_id_65b3b20c_fk_shop_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_productimage`
--

INSERT INTO `shop_productimage` (`id`, `image`, `product_id`) VALUES
(1, 'products/gallery/Chamlion_NCL_M2150T-_1.jpg', 1),
(2, 'products/gallery/Chamlion_NCL_M2150T-_2.jpg', 1),
(3, 'products/gallery/RX_Solutions_EasyTom_S-2.png', 2),
(4, 'products/gallery/RX_Solutions_EasyTom_S.png', 2),
(5, 'products/gallery/ScanTech_KSCAN-Magic-1.jpg', 3),
(6, 'products/gallery/ScanTech_KSCAN-Magic-2.jpg', 3),
(7, 'products/gallery/4K_DLP_EvoDent_S300.png', 4),
(8, 'products/gallery/4K_DLP_EvoDent_S300-1.png', 4),
(9, 'products/gallery/4K_DLP_EvoDent_S300-2.png', 4),
(10, 'products/gallery/1ef80ee9cad652bcf8cf2f5b2d4d3e14.png', 5),
(11, 'products/gallery/174b88d205224d19e6210e96b60ef0721.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_characteristics`
--

CREATE TABLE IF NOT EXISTS `shop_product_characteristics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `characteristic_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_product_characteris_product_id_characteristi_522b530a_uniq` (`product_id`,`characteristic_id`),
  KEY `shop_product_charact_characteristic_id_5a08e9ab_fk_shop_char` (`characteristic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_posts`
--

CREATE TABLE IF NOT EXISTS `shop_product_posts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_product_posts_product_id_post_id_214b621c_uniq` (`product_id`,`post_id`),
  KEY `shop_product_posts_post_id_e9f347c1_fk_blog_post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_subcategory`
--

CREATE TABLE IF NOT EXISTS `shop_subcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_subcategory_category_id_7a45c724_fk_shop_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_subcategory`
--

INSERT INTO `shop_subcategory` (`id`, `name`, `category_id`, `image`) VALUES
(1, 'Ручные 3D-сканеры', 3, 'subcategories/ScanTech_KSCAN-Magic.png'),
(2, 'Линзы для лазерной резки', 6, 'subcategories/i.webp'),
(3, 'Фильтры', 6, 'subcategories/filter.png'),
(4, 'Сопла для лазерной резки', 6, 'subcategories/Nozzle-800x600.jpg'),
(5, 'Керамические держатели сопл', 6, 'subcategories/Ceramic_nozzle_holders.png');

--
-- Constraints for dumped tables
--

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
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);

--
-- Constraints for table `blog_post_products`
--
ALTER TABLE `blog_post_products`
  ADD CONSTRAINT `blog_post_products_post_id_ca90f320_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_post_products_product_id_750764bc_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`),
  ADD CONSTRAINT `shop_product_subcategory_id_38960212_fk_shop_subcategory_id` FOREIGN KEY (`subcategory_id`) REFERENCES `shop_subcategory` (`id`);

--
-- Constraints for table `shop_productimage`
--
ALTER TABLE `shop_productimage`
  ADD CONSTRAINT `shop_productimage_product_id_65b3b20c_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_product_characteristics`
--
ALTER TABLE `shop_product_characteristics`
  ADD CONSTRAINT `shop_product_charact_characteristic_id_5a08e9ab_fk_shop_char` FOREIGN KEY (`characteristic_id`) REFERENCES `shop_characteristic` (`id`),
  ADD CONSTRAINT `shop_product_charact_product_id_ec7e1299_fk_shop_prod` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_product_posts`
--
ALTER TABLE `shop_product_posts`
  ADD CONSTRAINT `shop_product_posts_post_id_e9f347c1_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `shop_product_posts_product_id_008ba3c5_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`);

--
-- Constraints for table `shop_subcategory`
--
ALTER TABLE `shop_subcategory`
  ADD CONSTRAINT `shop_subcategory_category_id_7a45c724_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
