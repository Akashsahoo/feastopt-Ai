-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2018 at 07:11 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feasoptai`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add permission', 4, 'add_permission'),
(11, 'Can change permission', 4, 'change_permission'),
(12, 'Can delete permission', 4, 'delete_permission'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add auth group', 7, 'add_authgroup'),
(20, 'Can change auth group', 7, 'change_authgroup'),
(21, 'Can delete auth group', 7, 'delete_authgroup'),
(22, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
(23, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
(24, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
(25, 'Can add auth permission', 9, 'add_authpermission'),
(26, 'Can change auth permission', 9, 'change_authpermission'),
(27, 'Can delete auth permission', 9, 'delete_authpermission'),
(28, 'Can add auth user', 10, 'add_authuser'),
(29, 'Can change auth user', 10, 'change_authuser'),
(30, 'Can delete auth user', 10, 'delete_authuser'),
(31, 'Can add auth user groups', 11, 'add_authusergroups'),
(32, 'Can change auth user groups', 11, 'change_authusergroups'),
(33, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(34, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(35, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(36, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(37, 'Can add django admin log', 13, 'add_djangoadminlog'),
(38, 'Can change django admin log', 13, 'change_djangoadminlog'),
(39, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(40, 'Can add django content type', 14, 'add_djangocontenttype'),
(41, 'Can change django content type', 14, 'change_djangocontenttype'),
(42, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(43, 'Can add django migrations', 15, 'add_djangomigrations'),
(44, 'Can change django migrations', 15, 'change_djangomigrations'),
(45, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(46, 'Can add django session', 16, 'add_djangosession'),
(47, 'Can change django session', 16, 'change_djangosession'),
(48, 'Can delete django session', 16, 'delete_djangosession'),
(49, 'Can add notifications', 17, 'add_notifications'),
(50, 'Can change notifications', 17, 'change_notifications'),
(51, 'Can delete notifications', 17, 'delete_notifications'),
(52, 'Can add truck', 18, 'add_truck'),
(53, 'Can change truck', 18, 'change_truck'),
(54, 'Can delete truck', 18, 'delete_truck'),
(55, 'Can add user', 19, 'add_user'),
(56, 'Can change user', 19, 'change_user'),
(57, 'Can delete user', 19, 'delete_user'),
(58, 'Can add user truck notifications', 20, 'add_usertrucknotifications'),
(59, 'Can change user truck notifications', 20, 'change_usertrucknotifications'),
(60, 'Can delete user truck notifications', 20, 'delete_usertrucknotifications');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$vuv0Z0cOYyPU$6VSJwBf8M3ls/Ggp03aCQGmclplME83ioU7aH8/Bgts=', '2018-01-09 09:10:28.206633', 1, 'admin123', '', '', 'admin123@gmail.com', 1, 1, '2018-01-09 09:09:24.947283');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-01-09 09:12:19.472670', '1', 'Truck object', 1, '[{\"added\": {}}]', 18, 1),
(2, '2018-01-09 09:12:49.120707', '2', 'Truck object', 1, '[{\"added\": {}}]', 18, 1),
(3, '2018-01-09 09:13:27.005135', '3', 'Truck object', 1, '[{\"added\": {}}]', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'user'),
(3, 'auth', 'group'),
(4, 'auth', 'permission'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'truckreminder', 'authgroup'),
(8, 'truckreminder', 'authgrouppermissions'),
(9, 'truckreminder', 'authpermission'),
(10, 'truckreminder', 'authuser'),
(11, 'truckreminder', 'authusergroups'),
(12, 'truckreminder', 'authuseruserpermissions'),
(13, 'truckreminder', 'djangoadminlog'),
(14, 'truckreminder', 'djangocontenttype'),
(15, 'truckreminder', 'djangomigrations'),
(16, 'truckreminder', 'djangosession'),
(17, 'truckreminder', 'notifications'),
(18, 'truckreminder', 'truck'),
(19, 'truckreminder', 'user'),
(20, 'truckreminder', 'usertrucknotifications');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-01-09 09:04:50.324118'),
(2, 'auth', '0001_initial', '2018-01-09 09:04:53.530832'),
(3, 'admin', '0001_initial', '2018-01-09 09:04:54.143386'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-01-09 09:04:54.163400'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-01-09 09:04:54.831645'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-01-09 09:04:54.988402'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-01-09 09:04:55.086476'),
(8, 'auth', '0004_alter_user_username_opts', '2018-01-09 09:04:55.104491'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-01-09 09:04:55.182728'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-01-09 09:04:55.186729'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-01-09 09:04:55.203768'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-01-09 09:04:55.281346'),
(13, 'sessions', '0001_initial', '2018-01-09 09:04:55.404222'),
(14, 'truckreminder', '0001_initial', '2018-01-09 09:04:55.443789');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('b8uzgjv6bu6ic8rl8u6w2mn67gpqzpcr', 'YjJjNWNmNDdkZGRiMDNkOWIzZmE0YTExYTM5NzkyMDNlODA2ZGIzOTp7ImlkIjoxfQ==', '2018-01-24 12:10:06.874001');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `message` varchar(1500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`) VALUES
(1, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(2, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(3, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(4, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(5, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(6, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(7, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(8, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(9, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(10, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(11, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(12, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(13, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(14, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(15, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(16, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(17, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(18, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(19, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(20, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(21, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(22, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(23, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(24, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(25, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(26, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(27, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(28, 'please update your truck insurance papers which no isMH-0037days are remaining to expire'),
(29, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(30, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(31, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(32, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(33, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(34, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(35, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire'),
(36, 'please update your truck insurance papers which no isMH-003  7days are remaining to expire');

-- --------------------------------------------------------

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
CREATE TABLE IF NOT EXISTS `truck` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `truckno` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `insurance_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `truck`
--

INSERT INTO `truck` (`id`, `truckno`, `customer_name`, `customer_email`, `insurance_date`) VALUES
(1, 'MH-001', 'Akash', 'akash111@gmail.com', '2018-02-12'),
(2, 'MH-002', 'Akashkumar', 'akash123@gmail.com', '2018-01-25'),
(3, 'MH-003', 'Akashsahoo', 'akashsahoo15595@gmail.com', '2018-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `Password` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `Password`) VALUES
(1, 'akashsahoo', 'akashsahoo15595@gmail.com', '9889209430Aa'),
(2, 'Brijesh', 'akashsahoolko@gmail.com', '9999999'),
(3, 'Brijesh', 'akashsahoo111@gmail.com', '99999'),
(4, 'Brijesh', 'akashsahoo444@gmail.com', '8888');

-- --------------------------------------------------------

--
-- Table structure for table `user_truck_notifications`
--

DROP TABLE IF EXISTS `user_truck_notifications`;
CREATE TABLE IF NOT EXISTS `user_truck_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `truck_id` int(11) NOT NULL,
  `notifications_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `truck_id` (`truck_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_truck_notifications`
--

INSERT INTO `user_truck_notifications` (`id`, `user_id`, `truck_id`, `notifications_id`) VALUES
(5, 1, 3, 1),
(6, 1, 3, 2),
(7, 1, 3, 3),
(8, 1, 3, 4),
(9, 1, 3, 5),
(10, 1, 3, 6),
(11, 1, 3, 7),
(12, 1, 3, 8),
(13, 1, 3, 9),
(14, 1, 3, 10),
(15, 1, 3, 11),
(16, 1, 3, 12),
(17, 1, 3, 13),
(18, 1, 3, 14),
(19, 1, 3, 15),
(20, 1, 3, 16),
(21, 1, 3, 17),
(22, 1, 3, 18),
(23, 1, 3, 19),
(24, 1, 3, 20),
(25, 1, 3, 21),
(26, 1, 3, 22),
(27, 1, 3, 23),
(28, 1, 3, 24),
(29, 1, 3, 25),
(30, 1, 3, 26),
(31, 1, 3, 27),
(32, 1, 3, 28),
(33, 1, 3, 29),
(34, 1, 3, 30),
(35, 1, 3, 31),
(36, 1, 3, 32),
(37, 1, 3, 33),
(38, 1, 3, 34),
(39, 1, 3, 35),
(40, 1, 3, 36);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
