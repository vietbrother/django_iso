-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2018 at 10:24 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangodb`
--
CREATE DATABASE IF NOT EXISTS `djangodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `djangodb`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add group', 1, 'add_group'),
(2, 'Can change group', 1, 'change_group'),
(3, 'Can delete group', 1, 'delete_group'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add member', 6, 'add_member'),
(17, 'Can change member', 6, 'change_member'),
(18, 'Can delete member', 6, 'delete_member'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_vietnamese_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$YHgBoooUUKeu$cGWvPBusfLD/DJ7FmbORYyhd4MLkaI9WcLGhY0c14no=', '2018-06-29 07:47:50.069067', 1, 'admin', '', '', 'a@gmail.com', 1, 1, '2018-06-23 08:03:37.242094');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_member`
--

CREATE TABLE `crud_member` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `crud_member`
--

INSERT INTO `crud_member` (`id`, `firstname`, `lastname`) VALUES
(5, '3123', '123'),
(6, '1323', '12332');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_vietnamese_ci,
  `object_repr` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(1, 'auth', 'group'),
(3, 'auth', 'permission'),
(2, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(6, 'crud', 'member'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-06-23 06:51:10.739309'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-06-23 06:51:12.026834'),
(3, 'auth', '0001_initial', '2018-06-23 06:51:22.972397'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-06-23 06:51:25.086995'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-06-23 06:51:26.249489'),
(6, 'auth', '0004_alter_user_username_opts', '2018-06-23 06:51:26.302885'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-06-23 06:51:26.835587'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-06-23 06:51:26.882510'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-06-23 06:51:26.951587'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-06-23 06:51:27.969187'),
(11, 'sessions', '0001_initial', '2018-06-23 06:51:28.475819'),
(12, 'crud', '0001_initial', '2018-06-23 08:01:30.318607'),
(13, 'admin', '0001_initial', '2018-06-25 07:32:10.567669'),
(14, 'admin', '0002_logentry_remove_auto_add', '2018-06-25 07:32:10.636695');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `session_data` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1cbgmra9l2gxa2gls5580nl5gcqx8anr', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-28 11:01:09.896547'),
('2f5izrafwfu5q3i2mq5onzujmf2if912', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 02:24:51.300945'),
('3vwah306hxerxliyq7zqepzgkhntc792', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-27 17:41:02.126182'),
('6cmxey941eexle3ypn1n1x49j3q2atd6', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 07:32:10.584160'),
('6vcwaj2ll3s4bv66h0ezmphjuk5ucc9v', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-27 17:30:28.841944'),
('90vufiqk0av7z13ieqsebrqvwn9v360y', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 08:01:20.109022'),
('ao2qdumlxc9uvyf8sqg9kfnhw4xipu98', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 03:13:39.799946'),
('c5cra2sy4atcoyrdiuyq3qizlzf5wjhe', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-28 10:06:22.328992'),
('em9ir5avwgzbaihik5s61fd3r6jc9qw4', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-28 10:29:49.707873'),
('eqtss14vzzjwglkk8zc2dsco2gujq3gs', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-25 07:43:09.381746'),
('f3m6qucndog1e4kdmeza6yw8g38dlusm', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-25 04:12:12.869178'),
('gg4ojnowhyc2xnhe2n5y8dvnowy19v29', 'NjNhNGE1MzBlZmFjZTJlZDY0NWZiYzM4ZmY0NzIyMjM1Y2Q1N2JlZDp7fQ==', '2018-06-28 10:42:06.759159'),
('l7fg9ot2b10b71vx98meajk9coampodb', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 02:39:27.463658'),
('l7p4m1064bwdgcs3km6qyzcpzmavuc7y', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 04:01:53.464083'),
('l7uxmq28s3lhhmysvcu9iiubheoa6m89', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 03:02:32.072527'),
('m4nfcgiu4sy481zogb12a8hxjeqptwd9', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 07:11:10.490828'),
('mt6e07v001dgymmerctapkoqdh13p7yg', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 02:13:10.985113'),
('nwp690pt7fuzly29iqig250rqglsbtk6', 'NjNhNGE1MzBlZmFjZTJlZDY0NWZiYzM4ZmY0NzIyMjM1Y2Q1N2JlZDp7fQ==', '2018-06-29 04:19:24.595287'),
('s53y4gvp9uaxq9ra365i79cbq1zyjziw', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-07-07 10:00:08.818663'),
('thn5ktpo5vxa8hvfhl3izq71726hj301', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 02:48:34.568186'),
('v0hk4uifgf6ak0j1n381qb916altpl7t', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-28 09:55:47.690957'),
('vgsdx23usxdqdeo0iirbm3mzqplgybr2', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 03:52:56.942510'),
('vst9oc9hbao0hl7h5uczl1dtjdmb66b2', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 07:44:56.667096'),
('ylwkiy9xgnfw6zs1naj70245ne4gmyr0', 'YzlmMTQ2OWFkODBkZmVlN2MwZjk0MDNjMTFiM2E2NjNiMWJkMDNjNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NDNiMmU3NWY4ZDcwYThhYjAyMjVmZjk4ZjNkMzRmYWNiYjQ0ZTAwIn0=', '2018-06-29 03:20:04.260964');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `crud_member`
--
ALTER TABLE `crud_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crud_member`
--
ALTER TABLE `crud_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
