-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 10-Dez-2019 às 15:07
-- Versão do servidor: 10.3.11-MariaDB
-- versão do PHP: 7.4.0RC6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `omeka_db`
--
CREATE DATABASE IF NOT EXISTS `omeka_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `omeka_db`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_admin_images`
--

CREATE TABLE `omeka_admin_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `href` text DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_collections`
--

CREATE TABLE `omeka_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_collections`
--

INSERT INTO `omeka_collections` (`id`, `public`, `featured`, `added`, `modified`, `owner_id`) VALUES
(1, 1, 0, '2019-02-21 18:06:12', '2019-05-28 10:21:28', 2),
(2, 1, 0, '2019-02-21 18:06:59', '2019-05-28 10:21:15', 2),
(3, 1, 1, '2019-02-21 18:07:18', '2019-12-04 23:59:08', 2),
(4, 1, 1, '2019-02-21 18:07:32', '2019-12-05 00:05:16', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_csv_import_imported_items`
--

CREATE TABLE `omeka_csv_import_imported_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_csv_import_imported_items`
--

INSERT INTO `omeka_csv_import_imported_items` (`id`, `item_id`, `import_id`) VALUES
(1, 124, 1),
(2, 125, 1),
(3, 126, 1),
(4, 127, 1),
(5, 128, 1),
(6, 129, 1),
(7, 130, 1),
(8, 131, 1),
(9, 132, 1),
(10, 133, 1),
(11, 134, 1),
(12, 135, 1),
(13, 136, 1),
(14, 137, 1),
(15, 138, 1),
(16, 139, 1),
(17, 140, 1),
(18, 141, 1),
(19, 142, 1),
(20, 143, 1),
(21, 144, 1),
(22, 145, 1),
(23, 146, 1),
(24, 147, 1),
(25, 148, 1),
(26, 149, 1),
(27, 150, 1),
(28, 151, 1),
(29, 152, 1),
(30, 153, 1),
(31, 154, 1),
(32, 155, 1),
(33, 156, 1),
(34, 157, 1),
(35, 158, 1),
(36, 159, 1),
(37, 160, 1),
(38, 161, 1),
(39, 162, 1),
(40, 163, 1),
(41, 164, 1),
(42, 165, 1),
(43, 166, 1),
(44, 167, 1),
(45, 168, 1),
(46, 169, 1),
(47, 170, 1),
(48, 171, 1),
(49, 172, 1),
(50, 173, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_csv_import_imports`
--

CREATE TABLE `omeka_csv_import_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `delimiter` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_position` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipped_row_count` int(10) UNSIGNED NOT NULL,
  `skipped_item_count` int(10) UNSIGNED NOT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `is_featured` tinyint(1) DEFAULT 0,
  `serialized_column_maps` text COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_csv_import_imports`
--

INSERT INTO `omeka_csv_import_imports` (`id`, `item_type_id`, `collection_id`, `owner_id`, `delimiter`, `original_filename`, `file_path`, `file_position`, `status`, `skipped_row_count`, `skipped_item_count`, `is_public`, `is_featured`, `serialized_column_maps`, `added`) VALUES
(1, NULL, NULL, 2, ',', 'teste-2019-02-11T17_52_27-02_00.csv', '/tmp/ca0f26e702d9861510a6c98b6c23dfc5', 36674, 'completed', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:38:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"37\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Contributor\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"38\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:20:\"Dublin Core:Coverage\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"40\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:16:\"Dublin Core:Date\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:4;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:5;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"42\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:18:\"Dublin Core:Format\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:6;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"43\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:22:\"Dublin Core:Identifier\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:7;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"44\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:20:\"Dublin Core:Language\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:8;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"45\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:21:\"Dublin Core:Publisher\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:9;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"46\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:20:\"Dublin Core:Relation\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:10;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"47\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:18:\"Dublin Core:Rights\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:11;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"48\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:18:\"Dublin Core:Source\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:12;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"49\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Subject\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:13;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"Dublin Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:14;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"51\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:16:\"Dublin Core:Type\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:15;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"66\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"VRA Core:ID\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:16;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"67\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:14:\"VRA Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:17;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"68\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:14:\"VRA Core:Agent\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:18;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"69\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:25:\"VRA Core:Cultural Context\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:19;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"70\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:13:\"VRA Core:Date\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:20;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"71\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:20:\"VRA Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:21;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"72\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:20:\"VRA Core:Inscription\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:22;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"73\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"VRA Core:Location\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:23;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"74\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"VRA Core:Material\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:24;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"75\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:21:\"VRA Core:Measurements\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:25;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"76\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"VRA Core:Relation\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:26;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"77\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:15:\"VRA Core:Rights\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:27;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"78\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:15:\"VRA Core:Source\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:28;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"79\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:22:\"VRA Core:State Edition\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:29;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"80\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:21:\"VRA Core:Style Period\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:30;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"81\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:16:\"VRA Core:Subject\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:31;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"82\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:18:\"VRA Core:Technique\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:32;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"83\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:16:\"VRA Core:Textref\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:33;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"84\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"VRA Core:Worktype\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:34;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"54\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:35:\"IIIF Item Metadata:Display as IIIF?\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:35;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"55\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:31:\"IIIF Item Metadata:Original @id\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:36;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"56\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:28:\"IIIF Item Metadata:JSON Data\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:37;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"65\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"IIIF Item Metadata:UUID\";s:8:\"\0*\0_type\";s:7:\"Element\";}}}', '2019-02-11 19:55:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_elements`
--

CREATE TABLE `omeka_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', ''),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', ''),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 9, 'Contributor', 'An entity responsible for making contributions to the resource', ''),
(38, 1, 15, 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant', ''),
(39, 1, 2, 'Creator', 'An entity primarily responsible for making the resource', ''),
(40, 1, 8, 'Date', 'A point or period of time associated with an event in the lifecycle of the resource', ''),
(41, 1, 5, 'Description', 'An account of the resource', ''),
(42, 1, 12, 'Format', 'The file format, physical medium, or dimensions of the resource', ''),
(43, 1, 3, 'Identifier', 'An unambiguous reference to the resource within a given context', ''),
(44, 1, 13, 'Language', 'A language of the resource', ''),
(45, 1, 7, 'Publisher', 'An entity responsible for making the resource available', ''),
(46, 1, 11, 'Relation', 'A related resource', ''),
(47, 1, 10, 'Rights', 'Information about rights held in and over the resource', ''),
(48, 1, 6, 'Source', 'A related resource from which the described resource is derived', ''),
(49, 1, 4, 'Subject', 'The topic of the resource', ''),
(50, 1, 1, 'Title', 'A name given to the resource', ''),
(51, 1, 14, 'Type', 'The nature or genre of the resource', ''),
(52, 4, 1, 'Original @id', '', ''),
(53, 4, 2, 'JSON Data', '', ''),
(54, 5, 1, 'Display as IIIF?', '', ''),
(55, 5, 2, 'Original @id', '', ''),
(56, 5, 3, 'JSON Data', '', ''),
(57, 6, 1, 'Original @id', '', ''),
(58, 6, 2, 'IIIF Type', '', ''),
(59, 6, 3, 'Parent Collection', '', ''),
(60, 6, 4, 'JSON Data', '', ''),
(61, 6, 5, 'UUID', '', ''),
(62, 3, NULL, 'On Canvas', 'URI of the attached canvas', ''),
(63, 3, NULL, 'Selector', 'The SVG boundary area of the annotation', ''),
(64, 3, NULL, 'Annotated Region', 'The rectangular region of the annotation, in xywh format.', NULL),
(65, 5, 4, 'UUID', '', ''),
(66, 7, 19, 'ID', 'The ID to apply to a VRA Work, Image, or Collection (corresponds to vra id attribute).', ''),
(67, 7, 1, 'Title', 'The title or identifying phrase given to a Work or an Image.', ''),
(68, 7, 2, 'Agent', 'The names, appellations, or other identifiers assigned to an individual, group, or corporate body that has contributed to the design, creation, production, manufacture, or alteration of the work or image.', ''),
(69, 7, 9, 'Cultural Context', 'The name of the culture, people (ethnonym), or adjectival form of a country name fromwhich a Work, Collection, or Image originates, or the cultural context with which the Work, Collection, or Image has been associated.', ''),
(70, 7, 3, 'Date', 'Date or range of dates associated with the creation, design, production, presentation, performance, construction, or alteration, etc. of the work or image. Dates may be expressed as free text or numerical.  In format yyyy-mm-dd yyyy-mm-dd.', ''),
(71, 7, 13, 'Description', 'A free-text note about the Work, Collection, or Image, including comments, description, or interpretation, that gives additional information not recorded in other categories.', ''),
(72, 7, 14, 'Inscription', 'All marks or written words added to the object at the time of production or in its subsequent history, including signatures, dates, dedications, texts, and colophons, as well as marks, such as the stamps of silversmiths, publishers, or printers.', ''),
(73, 7, 8, 'Location', 'The geographic location and/or name of the repository, building, site, or other entity whose boundaries include the Work or Image.', ''),
(74, 7, 6, 'Material', 'The substance of which a work or an image is composed.', ''),
(75, 7, 7, 'Measurements', 'The physical size, shape, scale, dimensions, or format of the Work or Image. Dimensions may include such measurements as volume, weight, area or running time.', ''),
(76, 7, 15, 'Relation', 'Terms or phrases describing the identity of the related work and the relationship between the work being cataloged and the related work or image.', ''),
(77, 7, 18, 'Rights', 'Information about the copyright status and the rights holder for a work, collection, or image', ''),
(78, 7, 16, 'Source', 'A reference to the source of the information recorded about the work or the image.', ''),
(79, 7, 11, 'State Edition', 'The identifying number and/or name assigned to the state or edition of a work that exists in more than one form and the placement of that work in the context of prior or later issuances of multiples of the same work.', ''),
(80, 7, 10, 'Style Period', 'A defined style, historical period, group, school, dynasty, movement, etc. whose characteristics are represented in the Work or Image.', ''),
(81, 7, 12, 'Subject', 'Terms or phrases that describe, identify, or interpret the Work or Image and what it depicts or expresses. These may include generic terms that describe the work and the elements that it comprises, terms that identify particular people, geographic places, narrative and iconographic themes, or terms that refer to broader concepts or interpretations.', ''),
(82, 7, 5, 'Technique', 'The production or manufacturing processes, techniques, and methods incorporated in the fabrication or alteration of the work or image.', ''),
(83, 7, 17, 'Textref', 'Contains the name of a related textual reference and any type of unique identifier that text assigns to a Work or Collection that is independent of any repository.', ''),
(84, 7, 4, 'Worktype', 'Identifies the specific type of WORK, COLLECTION, or IMAGE being described in the record.', ''),
(85, 3, NULL, 'Dimensões físicas', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_element_sets`
--

CREATE TABLE `omeka_element_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.'),
(4, 'File', 'IIIF File Metadata', ''),
(5, 'Item', 'IIIF Item Metadata', ''),
(6, 'Collection', 'IIIF Collection Metadata', ''),
(7, NULL, 'VRA Core', 'VRA Core standard for artistic pieces and cultural heritage artifacts.\n                                The first input will be treated as a <display> element. More detailed\n                                VRA Core metadata is available below that input.\n                             ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_element_texts`
--

CREATE TABLE `omeka_element_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(132, 124, 'Item', 43, 0, '002'),
(133, 124, 'Item', 50, 0, 'Lugar com arco'),
(134, 124, 'Item', 67, 0, 'Lugar com arco'),
(136, 124, 'Item', 69, 0, 'Arte brasileira'),
(137, 124, 'Item', 70, 0, '2000'),
(138, 124, 'Item', 71, 0, 'Obra monumental instalada nos jardins da Escola de Comunicações e Artes da Universidade de São Paulo, no campus da Cidade Universitária, arremate de um percurso iniciado com a instalação \"Humanóides - transmutações da Forma e da Matéria\" (Museu de Arte Contemporânea da Universidade de São Paulo, 1994). Realizada como tese de doutorado da autora.'),
(139, 124, 'Item', 73, 0, 'Universidade de São Paulo (Cidade Universitária) - Escola de Comunicações e Artes - SP'),
(140, 124, 'Item', 74, 0, 'Argamassa armada'),
(141, 124, 'Item', 75, 0, '9 metros de comprimento, 6,20 metros de altura, 2,16 metros de largura (informação da autora)'),
(142, 124, 'Item', 77, 0, 'Todos os direitos reservados'),
(143, 124, 'Item', 78, 1, 'Acervo de Teses da Biblioteca da ECA: <br /><br /><span>Grinberg, Norma. <a href=\"http://dedalus.usp.br/F?func=direct&amp;local_base=USP01&amp;doc_number=001029280\" target=\"_blank\" rel=\"noreferrer noopener\">Lugar com arco</a>. Dissertação (Mestrado). 100 p. São Paulo, 1999. Escola de Comunicações e Artes, Universidade de São Paulo, 1999.</span>'),
(144, 124, 'Item', 80, 0, 'Arte contemporânea'),
(145, 124, 'Item', 81, 0, 'Escultura ; Arcos; Cerâmica'),
(146, 124, 'Item', 83, 1, '<span>GRINBERG, Norma T.. Lugar com arco: decifra-me ou devoro-te.</span><b><span> </span>ARS (São Paulo)</b><span>,  São Paulo ,  v. 1, n. 1, p. 141-143,    2003 .   Disponível em: &lt;<a href=\"http://www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S1678-53202003000100011&amp;lng=en&amp;nrm=iso\" target=\"_blank\" rel=\"noreferrer noopener\">http://www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S1678-53202003000100011&amp;lng=en&amp;nrm=iso</a>&gt;. Acesso em:  15 out.  2018.  <a href=\"http://dx.doi.org/10.1590/S1678-53202003000100011\" target=\"_blank\" rel=\"noreferrer noopener\">http://dx.doi.org/10.1590/S1678-53202003000100011</a>.</span>'),
(147, 124, 'Item', 84, 0, 'escultura'),
(148, 124, 'Item', 65, 0, '1f1da692-90a0-4f09-99a7-8b2314a19ea1'),
(149, 124, 'Item', 65, 0, 'a19fcb17-573d-417f-b17c-f141e3fc932d'),
(150, 125, 'Item', 39, 0, 'Norma Grinberg'),
(151, 125, 'Item', 43, 0, '8702'),
(152, 125, 'Item', 50, 0, 'Lugar com arco, vista geral diurna (1)'),
(153, 125, 'Item', 68, 0, 'Marina Macambyra'),
(154, 125, 'Item', 70, 0, '2002'),
(155, 125, 'Item', 71, 0, 'Registro realizado originalmente em slide, mostra o monumento dois anos após sua construção, ainda limpo e sem picachões'),
(156, 125, 'Item', 73, 0, 'Biblioteca da ECA/USP, acervo de slides'),
(157, 125, 'Item', 75, 0, '110 KB'),
(158, 125, 'Item', 76, 0, 'Imagem de RO001'),
(159, 125, 'Item', 77, 0, 'Licença Creative Commons CC BY-NC'),
(160, 125, 'Item', 81, 0, 'Escultura'),
(161, 125, 'Item', 82, 0, 'digitalização de slide 35 mm'),
(162, 125, 'Item', 84, 0, 'imagem digital'),
(163, 125, 'Item', 65, 0, 'deff8878-6908-4bee-833d-db3a9cc27048'),
(164, 125, 'Item', 65, 0, 'd48434ef-2129-46ff-8cea-7ae510b9be32'),
(165, 126, 'Item', 39, 0, 'Norma Grinberg'),
(166, 126, 'Item', 43, 0, '8701'),
(167, 126, 'Item', 50, 0, 'Lugar com Arco, vista geral diurna (2)'),
(168, 126, 'Item', 68, 0, 'Marina Macambyra'),
(169, 126, 'Item', 70, 0, '2017'),
(170, 126, 'Item', 71, 0, 'Face do monumento com pichações e manchas escuras'),
(171, 126, 'Item', 73, 0, 'Biblioteca da ECA/USP, acervo de imagens digitais'),
(172, 126, 'Item', 75, 0, '1,87 MB'),
(173, 126, 'Item', 76, 0, 'Imagem de RO001'),
(174, 126, 'Item', 77, 0, 'Licença Creative Commons CC DY-NC'),
(175, 126, 'Item', 81, 0, 'Pichação'),
(176, 126, 'Item', 84, 0, 'imagem digital'),
(177, 126, 'Item', 65, 0, '659ac1aa-91a4-4beb-85a5-874a92362995'),
(178, 126, 'Item', 65, 0, '9b7ac873-8a61-4c2e-9b65-d84b05b80ce7'),
(179, 127, 'Item', 43, 0, '001'),
(180, 127, 'Item', 50, 0, 'Lugar com arco'),
(182, 127, 'Item', 69, 0, 'Arte brasileira '),
(183, 127, 'Item', 70, 0, '1995?'),
(184, 127, 'Item', 74, 0, 'Gres, Engobe '),
(185, 127, 'Item', 75, 0, '60 x 60cm'),
(186, 127, 'Item', 76, 0, 'Obra precursora da escultura monumental de mesmo título (RO001). '),
(187, 127, 'Item', 78, 1, 'Referência da tese na Biblioteca da ECA:<br /><a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001029280\" target=\"_blank\" rel=\"noreferrer noopener\">http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001029280</a>'),
(188, 127, 'Item', 80, 0, 'Arte contemporânea '),
(189, 127, 'Item', 81, 0, 'Escultura, Cerâmica '),
(190, 127, 'Item', 82, 0, 'Queima orgânica '),
(191, 127, 'Item', 84, 0, 'escultura'),
(192, 127, 'Item', 65, 0, 'ea62b8b0-5ce3-41eb-bd8d-82a804101474'),
(193, 127, 'Item', 65, 0, 'ce9a9ab7-65b8-4c10-9033-a3861973e89e'),
(194, 128, 'Item', 43, 0, '8703'),
(195, 128, 'Item', 50, 0, 'Lugar com arco, imagem de catálogo '),
(196, 128, 'Item', 68, 0, 'Marina Macambyra'),
(197, 128, 'Item', 71, 0, 'Imagem da página de catálogo de exposição, mostrando foto da obra e legenda. '),
(198, 128, 'Item', 73, 0, 'Biblioteca da ECA, acervo de imagens digitais '),
(199, 128, 'Item', 75, 0, '572 KB '),
(200, 128, 'Item', 76, 0, 'Imagem da obra RO002 '),
(201, 128, 'Item', 78, 0, 'FUNDAÇÃO MOKITI OKADA (São Paulo). Brasil Japão Arte . São Paulo: Fundação Mokiti Okada , 1995.'),
(202, 128, 'Item', 82, 0, 'Digitalização de material impresso '),
(203, 128, 'Item', 84, 0, 'imagem digital'),
(204, 128, 'Item', 65, 0, '402c0707-5186-4222-ade2-fc241ccb04d4'),
(205, 128, 'Item', 65, 0, 'b1265da5-04fa-4421-8636-50b57d3e3d12'),
(206, 129, 'Item', 43, 0, '003'),
(207, 129, 'Item', 50, 0, 'Lavagem do Bonfim: formas de reportar [série]'),
(209, 129, 'Item', 69, 0, 'Arte brasileira'),
(210, 129, 'Item', 70, 0, '1994 a 2009'),
(211, 129, 'Item', 71, 0, 'Fotos da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor.'),
(212, 129, 'Item', 73, 0, 'Biblioteca da ECA'),
(213, 129, 'Item', 74, 0, 'Imagens impressas em livro'),
(214, 129, 'Item', 75, 0, '14,5 x 21,5'),
(215, 129, 'Item', 78, 0, 'Avancini, Atílio. Lavagem do Bonfim : formas de reportar.  São Paulo, Alameda, c2016.'),
(216, 129, 'Item', 80, 0, 'Fotografia contemporânea'),
(217, 129, 'Item', 81, 0, 'Lavagem do Bonfim, Festas populares, Festas religiosas'),
(218, 129, 'Item', 82, 0, 'Filme preto e branco 400 ASA processados manualmente pelo autor'),
(219, 129, 'Item', 83, 0, '<a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\">http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</a>'),
(220, 129, 'Item', 84, 0, 'fotografia'),
(221, 129, 'Item', 65, 0, 'a2b3dbee-5c18-456c-82b6-f03a0d9eeaa7'),
(222, 129, 'Item', 65, 0, '42e11a2e-b0d1-4415-b433-056d3bf5b3e8'),
(223, 130, 'Item', 43, 0, '005'),
(224, 130, 'Item', 50, 0, 'Anamorfas [álbum]'),
(226, 130, 'Item', 69, 0, 'Brasil'),
(227, 130, 'Item', 70, 0, 'álbum concluído em abril de 1980'),
(228, 130, 'Item', 71, 0, 'Álbum com 12 gravuras que mostra as comparações entre imagens fotográficas e desenhos deformados.\r\n\r\n'),
(229, 130, 'Item', 72, 0, 'assinado pela artista'),
(230, 130, 'Item', 73, 0, 'Série integrante da dissertação de mestrado da artista localizado na Biblioteca da Escola de Comunicações e Artes/USP'),
(231, 130, 'Item', 74, 0, 'papel alemão-gravura'),
(232, 130, 'Item', 75, 0, '57 x 80 cm'),
(233, 130, 'Item', 77, 0, '© Todos os direitos reservados.'),
(234, 130, 'Item', 78, 1, '<a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=000708356\" target=\"_blank\" rel=\"noreferrer noopener\">Silveira, Regina. Anamorfas : texto descritivo e apresentação. Dissertação (Mestrado) - Escola de Comunicações e Artes/USP, São Paulo, 1980. 66 p.</a>'),
(235, 130, 'Item', 79, 0, 'tiragem de 10 exemplares'),
(236, 130, 'Item', 80, 0, 'arte contemporânea'),
(237, 130, 'Item', 81, 0, 'desenho\r\nanamorfose\r\nperspectiva'),
(238, 130, 'Item', 82, 0, 'impressão em lito-offset\r\n'),
(239, 130, 'Item', 84, 0, 'gravura'),
(240, 130, 'Item', 65, 0, 'c98025a4-31cd-4612-8f97-fce09e148012'),
(241, 130, 'Item', 65, 0, 'f3b39680-2776-411e-8614-77155da87137'),
(243, 131, 'Item', 43, 0, '8721'),
(244, 131, 'Item', 50, 0, 'Torre de Babel na Pinacoteca, vista geral'),
(245, 131, 'Item', 68, 0, 'Fotógrafo não creditado'),
(246, 131, 'Item', 70, 0, '2007'),
(247, 131, 'Item', 71, 0, 'Imagem da instalação montada no Espaço Octógono da Pinacoteca do Estado, vista de cima.'),
(248, 131, 'Item', 74, 0, 'imagem digital'),
(249, 131, 'Item', 75, 0, '97 K'),
(250, 131, 'Item', 78, 0, 'O autor'),
(251, 131, 'Item', 84, 0, 'imagem digital'),
(252, 131, 'Item', 65, 0, 'a7c53461-be88-4c1b-b335-da86afd128c2'),
(253, 131, 'Item', 65, 0, '4c942edb-c767-4a13-a922-e4f379bbc822'),
(254, 132, 'Item', 43, 0, '006'),
(255, 132, 'Item', 50, 0, 'Anamorfa'),
(257, 132, 'Item', 69, 0, 'Brasil'),
(258, 132, 'Item', 70, 0, '1979'),
(259, 132, 'Item', 73, 0, 'Coleção de Livros de Artista da Biblioteca da Escola de Comunicações e Artes/USP'),
(260, 132, 'Item', 74, 0, 'papel couché'),
(261, 132, 'Item', 75, 0, '14,5 x 21,5 cm'),
(262, 132, 'Item', 76, 0, 'Série Anamorfas'),
(263, 132, 'Item', 77, 0, '© Todos os direitos reservados.'),
(264, 132, 'Item', 78, 1, '<a href=\"https://primofs01.sibi.usp.br/pds?func=sso&amp;calling_system=aleph&amp;pds_con_lng=POR&amp;url=http://dedalus.usp.br:80/F/ILVE3QL372I3RS1MHCSX73HG18FI91EGKC87QT3MA6K7KBNT9I-15585?func=direct&amp;doc_library=USP01&amp;doc_number=000708356\" target=\"_blank\" rel=\"noreferrer noopener\">Silveira, Regina. Pfeiffer, Wolfgang (orient). Anamorfas : texto descritivo e apresentação. São Paulo, 1980. 66 p.</a><br /><br /><a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001491217\" target=\"_blank\" rel=\"noreferrer noopener\"><span>Silveira, Regina. Anamorfa.  São Paulo, Aster, 1979. 1 v.</span></a>'),
(265, 132, 'Item', 79, 0, 'tiragem de 100 exemplares'),
(266, 132, 'Item', 80, 0, 'arte contemporânea'),
(267, 132, 'Item', 81, 0, 'desenho\r\nanamorfose\r\nperspectiva'),
(268, 132, 'Item', 82, 0, 'impressão em offset\r\nencadernação espiral'),
(269, 132, 'Item', 84, 0, 'livro de artista'),
(270, 132, 'Item', 65, 0, 'dac58ff0-b89b-4b4d-acfd-e652d1c0a8ff'),
(271, 132, 'Item', 65, 0, 'a874073e-0612-49da-b9a4-6529f122ec6e'),
(272, 133, 'Item', 43, 0, '8725'),
(273, 133, 'Item', 50, 0, 'Anamorfas [1]'),
(274, 133, 'Item', 67, 0, 'Visão geral das gravuras'),
(275, 133, 'Item', 68, 0, 'João Luiz Musa'),
(276, 133, 'Item', 71, 0, 'Gravura que compõe o álbum Anamorfas'),
(277, 133, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: &lt;<a href=\"http://enciclopedia.itaucultural.org.br/busca?q=anamorfas\" target=\"_blank\" rel=\"noreferrer noopener\">http://enciclopedia.itaucultural.org.br/obra44100/anamorfas</a>&gt;. Acesso em: 09 de Out. 2018.'),
(278, 133, 'Item', 81, 0, 'óculos'),
(279, 133, 'Item', 84, 0, 'imagem digital'),
(280, 133, 'Item', 65, 0, 'ad2cbd8e-51ce-4fe6-a2b1-142f553731d2'),
(281, 133, 'Item', 65, 0, '128a22b7-8e27-4c8a-a504-96e77250c2e7'),
(283, 134, 'Item', 43, 0, '8722'),
(284, 134, 'Item', 50, 0, 'Torre de Babel na Pinacoteca, detalhes [1]'),
(285, 134, 'Item', 68, 0, 'Fotógrafo não creditado'),
(286, 134, 'Item', 70, 0, '2007'),
(287, 134, 'Item', 71, 0, 'Detalhes da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão.'),
(288, 134, 'Item', 75, 0, '71,6 KB'),
(289, 134, 'Item', 76, 0, 'Imagens da instalação na Pinacoteca do Estado de São Paulo'),
(290, 134, 'Item', 82, 0, 'Imagem digital'),
(291, 134, 'Item', 84, 0, 'imagem digital'),
(292, 134, 'Item', 65, 0, '30753526-d769-4512-b2d7-b8c85fc14bf1'),
(293, 134, 'Item', 65, 0, 'da5b9cec-15ad-4eb2-a283-0e5c9de08a87'),
(306, 139, 'Item', 43, 0, '9001'),
(307, 139, 'Item', 50, 0, 'Norma Grinberg'),
(308, 139, 'Item', 65, 0, '659b19f5-314c-48f1-bb6b-46df44e698a3'),
(309, 139, 'Item', 65, 0, '4f4ab164-8ad7-479c-8472-7737fd251930'),
(310, 140, 'Item', 43, 0, '9003'),
(312, 140, 'Item', 65, 0, 'b0c8188f-1d7d-467e-abfc-9e6d3486d423'),
(313, 140, 'Item', 65, 0, '8a572525-e97b-4a34-b9e3-1e9781af9e4c'),
(314, 141, 'Item', 43, 0, '8718'),
(315, 141, 'Item', 50, 0, 'Alma baiana 1'),
(316, 141, 'Item', 68, 0, 'Atílio Avancini'),
(317, 141, 'Item', 69, 0, 'Arte brasileira'),
(318, 141, 'Item', 70, 0, '1994 a 2009'),
(319, 141, 'Item', 71, 0, 'Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor.'),
(320, 141, 'Item', 73, 0, 'Biblioteca da ECA'),
(321, 141, 'Item', 75, 0, '14,5 x 21,5 cm'),
(322, 141, 'Item', 78, 0, 'Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016.'),
(323, 141, 'Item', 80, 0, 'Fotografia contemporânea'),
(324, 141, 'Item', 81, 0, 'Lavagem do Bonfim, Festas populares, Festas religiosas'),
(325, 141, 'Item', 83, 0, '<a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\">http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</a>'),
(326, 141, 'Item', 84, 0, 'imagem digital'),
(327, 141, 'Item', 65, 0, '886b2baf-e156-447a-950e-d3795fa1d55c'),
(328, 141, 'Item', 65, 0, '45195693-70c9-4031-9ea9-a30488209999'),
(329, 142, 'Item', 43, 0, '8719'),
(330, 142, 'Item', 50, 0, 'Alma baiana 2'),
(331, 142, 'Item', 68, 0, 'Atílio Avancini'),
(332, 142, 'Item', 69, 0, 'Arte brasileira'),
(333, 142, 'Item', 70, 0, '1994 a 2009'),
(334, 142, 'Item', 71, 0, 'Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor.'),
(335, 142, 'Item', 73, 0, 'Biblioteca da ECA'),
(336, 142, 'Item', 75, 0, '14,5 x 21,5 cm'),
(337, 142, 'Item', 78, 0, 'Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016.'),
(338, 142, 'Item', 80, 0, 'Fotografia contemporânea'),
(339, 142, 'Item', 81, 0, 'Lavagem do Bonfim, Festas populares, Festas religiosas'),
(340, 142, 'Item', 83, 0, '<a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\"><span>http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</span></a>'),
(341, 142, 'Item', 84, 0, 'imagem digital'),
(342, 142, 'Item', 65, 0, '0dfb6cd5-2060-4c51-be8e-6d35a33304b2'),
(343, 142, 'Item', 65, 0, '82cdb0ec-cb2f-420a-af9c-72aa5e7af5d0'),
(344, 143, 'Item', 43, 0, '8720'),
(345, 143, 'Item', 50, 0, 'Alma baiana 3'),
(346, 143, 'Item', 68, 0, 'Atílio Avancini'),
(347, 143, 'Item', 69, 0, 'Arte brasileira'),
(348, 143, 'Item', 70, 0, '1994 a 2009'),
(349, 143, 'Item', 71, 0, 'Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor.'),
(350, 143, 'Item', 73, 0, 'Biblioteca da ECA'),
(351, 143, 'Item', 75, 0, '14,5 x 21,5 cm'),
(352, 143, 'Item', 78, 0, 'Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016.'),
(353, 143, 'Item', 80, 0, 'Fotografia contemporânea'),
(354, 143, 'Item', 81, 0, 'Lavagem do Bonfim, Festas populares, Festas religiosas'),
(355, 143, 'Item', 83, 0, '<a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\"><span>http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</span></a>'),
(356, 143, 'Item', 84, 0, 'imagem digital'),
(357, 143, 'Item', 65, 0, '3640036a-b68c-4865-a3ae-954069ebaca7'),
(358, 143, 'Item', 65, 0, '5116ae17-5041-44f1-97f9-7486d05c35cd'),
(359, 144, 'Item', 43, 0, '8723'),
(360, 144, 'Item', 50, 0, 'Torre de Babel na Pinacoteca, detalhes [2]'),
(361, 144, 'Item', 68, 0, 'Flávio Magalhães'),
(362, 144, 'Item', 70, 0, '2007'),
(363, 144, 'Item', 71, 0, 'Detalhe da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão.'),
(364, 144, 'Item', 76, 0, 'Imagens da instalação na Pinacoteca'),
(365, 144, 'Item', 82, 0, 'Imagem digital'),
(366, 144, 'Item', 84, 0, 'imagem digital'),
(367, 144, 'Item', 65, 0, '34544010-af48-4ca6-8bf1-24262485a262'),
(368, 144, 'Item', 65, 0, '1a187897-d0a1-4953-923a-9387d9e4c1c9'),
(370, 145, 'Item', 43, 0, '8724'),
(371, 145, 'Item', 50, 0, 'Torre de Babel na Pinacoteca, detalhe [3]'),
(372, 145, 'Item', 68, 0, 'Fotógrafo não creditado'),
(373, 145, 'Item', 70, 0, '2007'),
(374, 145, 'Item', 71, 0, 'Detalhe da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão.'),
(375, 145, 'Item', 75, 0, '86,6 KB'),
(376, 145, 'Item', 76, 0, 'Imagens da instalação na Pinacoteca'),
(377, 145, 'Item', 82, 0, 'Imagem digital'),
(378, 145, 'Item', 84, 0, 'imagem digital'),
(379, 145, 'Item', 65, 0, '4ec33284-d3b9-4261-987b-fb1b44fc9d16'),
(380, 145, 'Item', 65, 0, '18511c93-0a36-4b95-baac-89ace2b0ef73'),
(381, 146, 'Item', 43, 0, '9004'),
(382, 146, 'Item', 50, 0, 'Geraldo de Souza Dias Filho'),
(383, 146, 'Item', 65, 0, '3a672934-71f6-4718-bc17-722a4707675d'),
(384, 146, 'Item', 65, 0, 'cfbb53f4-4d66-4ac9-8e1b-56c0ac4db87a'),
(385, 147, 'Item', 43, 0, '9005'),
(386, 147, 'Item', 50, 0, 'Regina Silveira'),
(387, 147, 'Item', 65, 0, '50556de3-5027-4ea3-a897-ec8338222851'),
(388, 147, 'Item', 65, 0, '1edb3df0-96bc-4c22-9ed3-cbbaf801b7b6'),
(389, 148, 'Item', 43, 0, '8726'),
(390, 148, 'Item', 50, 0, 'Anamorfas [2]'),
(391, 148, 'Item', 68, 0, 'João Luiz Musa'),
(392, 148, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas'),
(393, 148, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(394, 148, 'Item', 84, 0, 'imagem digital'),
(395, 148, 'Item', 65, 0, '19da1d9d-23fc-4400-bc4c-837622c98743'),
(396, 148, 'Item', 65, 0, 'f8995c81-bfd9-4716-8f6f-64f4635bb4fe'),
(397, 149, 'Item', 43, 0, '8727'),
(398, 149, 'Item', 50, 0, 'Anamorfas [3]'),
(399, 149, 'Item', 68, 0, 'João Luiz Musa'),
(400, 149, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(401, 149, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(402, 149, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(403, 149, 'Item', 84, 0, 'imagem digital'),
(404, 149, 'Item', 65, 0, '8ca72ff9-edbd-4b11-b7f0-6bfa7619ebbb'),
(405, 149, 'Item', 65, 0, 'a83a1d58-8b7e-4462-b095-6a5f22cc5502'),
(406, 150, 'Item', 43, 0, '8728'),
(407, 150, 'Item', 50, 0, 'Anamorfas [4]'),
(408, 150, 'Item', 68, 0, 'João Luiz Musa'),
(409, 150, 'Item', 77, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(410, 150, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(411, 150, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(412, 150, 'Item', 84, 0, 'imagem digital'),
(413, 150, 'Item', 65, 0, '561f9def-b7a0-4bc2-b128-c867e633dc20'),
(414, 150, 'Item', 65, 0, '2459dc28-8e2d-4a03-bb6a-d9516a4d9bbd'),
(415, 151, 'Item', 43, 0, '8729'),
(416, 151, 'Item', 50, 0, 'Anamorfas [5]'),
(417, 151, 'Item', 68, 0, 'João Luiz Musa'),
(418, 151, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(419, 151, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(420, 151, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(421, 151, 'Item', 84, 0, 'imagem digital'),
(422, 151, 'Item', 65, 0, 'a6a292b7-e030-40cb-816f-0980499ff3d1'),
(423, 151, 'Item', 65, 0, '9618388d-d82e-4a4d-aafd-930883813c77'),
(424, 152, 'Item', 43, 0, '8730'),
(425, 152, 'Item', 50, 0, 'Anamorfas [6]'),
(426, 152, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(427, 152, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(428, 152, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(429, 152, 'Item', 84, 0, 'imagem digital'),
(430, 152, 'Item', 65, 0, 'ac509909-ab29-4b39-b157-936d7dd6f5ce'),
(431, 152, 'Item', 65, 0, '06c093b1-5d2c-487a-9667-1ddebce97c22'),
(432, 153, 'Item', 43, 0, '8731'),
(433, 153, 'Item', 50, 0, 'Anamorfas [7]'),
(434, 153, 'Item', 68, 0, 'João Luiz Musa'),
(435, 153, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(436, 153, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(437, 153, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(438, 153, 'Item', 84, 0, 'imagem digital'),
(439, 153, 'Item', 65, 0, 'bcf30566-069c-4460-889c-5d461f1000c7'),
(440, 153, 'Item', 65, 0, '0da2b7b7-fe80-4786-9677-c989d80574ee'),
(441, 154, 'Item', 43, 0, '8732'),
(442, 154, 'Item', 50, 0, 'Anamorfas [8]'),
(443, 154, 'Item', 68, 0, 'João Luiz Musa'),
(444, 154, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(445, 154, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(446, 154, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(447, 154, 'Item', 84, 0, 'imagem digital'),
(448, 154, 'Item', 65, 0, 'd8c2831a-b610-42ac-bba4-fe00a4d31f28'),
(449, 154, 'Item', 65, 0, '7fc786bc-49df-471e-8730-0defd8c8f16a'),
(450, 155, 'Item', 43, 0, '8733'),
(451, 155, 'Item', 50, 0, 'Anamorfas [9]'),
(452, 155, 'Item', 68, 0, 'João Luiz Musa'),
(453, 155, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(454, 155, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(455, 155, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(456, 155, 'Item', 84, 0, 'imagem digital'),
(457, 155, 'Item', 65, 0, '70bc830a-307d-4cc4-8012-b0462c54b8a6'),
(458, 155, 'Item', 65, 0, 'f2a82e31-7623-4260-b2ec-ca58359fa57e'),
(459, 156, 'Item', 43, 0, '8734'),
(460, 156, 'Item', 50, 0, 'Anamorfas [10]'),
(461, 156, 'Item', 68, 0, 'João Luiz Musa'),
(462, 156, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(463, 156, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(464, 156, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(465, 156, 'Item', 84, 0, 'imagem digital'),
(466, 156, 'Item', 65, 0, '95a3708a-95a4-420a-b73f-ff9bd98ef330'),
(467, 156, 'Item', 65, 0, 'b5f67255-017a-45ba-b5dc-4786670c63f6'),
(468, 157, 'Item', 39, 0, 'Regina Silveira'),
(469, 157, 'Item', 43, 0, '8735'),
(470, 157, 'Item', 50, 0, 'Anamorfas [11]'),
(471, 157, 'Item', 68, 0, 'João Luiz Musa'),
(472, 157, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(473, 157, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(474, 157, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(475, 157, 'Item', 84, 0, 'imagem digital'),
(476, 157, 'Item', 65, 0, 'd9251ebf-6bb8-4832-9688-fb4ffe605a97'),
(477, 157, 'Item', 65, 0, 'ae2bafc0-c789-4a0f-bede-59b71a2443f9'),
(478, 158, 'Item', 39, 0, 'Regina Silveira'),
(479, 158, 'Item', 43, 0, '8736'),
(480, 158, 'Item', 50, 0, 'Anamorfas [12]'),
(481, 158, 'Item', 68, 0, 'João Luiz Musa'),
(482, 158, 'Item', 76, 0, 'Gravura que compõe o álbum Anamorfas de Regina Silveira'),
(483, 158, 'Item', 78, 0, 'ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018.'),
(484, 158, 'Item', 81, 0, 'anamorfas, Regina Silveira'),
(485, 158, 'Item', 84, 0, 'imagem digital'),
(486, 158, 'Item', 65, 0, 'e59e9939-e79a-41d6-8eb0-295950da43de'),
(487, 158, 'Item', 65, 0, '07d2969f-cbbe-4344-aed5-48c88002b353'),
(488, 159, 'Item', 43, 0, '9006'),
(489, 159, 'Item', 50, 0, 'João Luiz Musa'),
(490, 159, 'Item', 77, 0, 'Créditos: André Ligeiro. Disponível em: <https://glamurama.uol.com.br/galeria/o-fotografo-joao-luiz-musa-abriu-sua-mostra-na-galeria-luciana-brito/#2>. Acesso em: 26 out. 2018'),
(491, 159, 'Item', 65, 0, '16881701-c6b4-4efd-b489-f9f926ec8cf2'),
(492, 159, 'Item', 65, 0, '644d7341-dc4b-43cc-8afd-a587cad89d4d'),
(494, 160, 'Item', 43, 0, '004'),
(495, 160, 'Item', 50, 0, 'Torre de Babel'),
(497, 160, 'Item', 69, 0, 'Arte Brasileira'),
(498, 160, 'Item', 70, 0, '2006'),
(499, 160, 'Item', 71, 0, 'Instalação exibida como tese de livre-docência em Pintura junto ao Departamento de Artes Plásticas da Escola de Comunicações e Artes da Universidade de São Paulo no átrio do edifício da Faculdade de Arquitetura e Urbanismo da USP. O mito bíblico da Torre de Babel, que trata do momento em que uma suposta língua única dada aos homens é fragmentada em muitas, neste trabalho é visto como metáfora do conhecimento humano e mola propulsora das pesquisas empíricas que promovem progresso – e destruição – é re-elaborado em forma de conto verbo-visual. A tese coloca o livro a serviços da imagem e faz da pintura suporte para a palavra escrita. A instalação é uma torre formada por 525 quadros ( 276 pinturas e 249 chassis sem as telas), cujo protótipo formal inspira-se nas imagens dos iluministas medievais e pintores renascentistas para a Torre de Babel. Foi remontada na Pinacoteca do Estado em 2007.'),
(500, 160, 'Item', 73, 0, 'O texto impresso da tese está no acervo da Biblioteca da ECA.'),
(501, 160, 'Item', 74, 0, 'madeira, telas pintadas'),
(502, 160, 'Item', 75, 0, '9 m (total) - 30 x 20 cm cada quadro\r\n'),
(503, 160, 'Item', 78, 1, 'DIAS FILHO, Geraldo de Souza. <strong>Babel</strong>. 2006. 1v. Tese (Livre-docencia) - Escola de Comunicações e Artes, Universidade de São Paulo, 2007'),
(504, 160, 'Item', 80, 0, 'Arte Contemporânea'),
(505, 160, 'Item', 81, 0, 'Escrita\r\nPintura'),
(506, 160, 'Item', 82, 0, 'instalação'),
(507, 160, 'Item', 83, 1, '<a href=\"http://www.anpap.org.br/anais/2007/2007/artigos/138.pdf\">DIAS FILHO, Geraldo de Souza: Considerações teórico-práticas sobre texto e imagem</a>'),
(508, 160, 'Item', 84, 0, 'instalação'),
(509, 160, 'Item', 65, 0, '383bb0f8-3d16-418d-b0a7-95bc623d0b3c'),
(510, 160, 'Item', 65, 0, '4adb6290-b243-4142-83e5-2532d42b01b4'),
(512, 161, 'Item', 43, 0, '8738'),
(513, 161, 'Item', 50, 0, 'Torre de Babel na FAU, vista geral (2)'),
(514, 161, 'Item', 68, 0, 'Flávio Magalhães'),
(515, 161, 'Item', 70, 0, '2007'),
(516, 161, 'Item', 71, 0, 'Vista geral da torre completa, tomada da frente do vão livre do edifício da Faculdade de Arquitetura e Urbanismo da USP.'),
(517, 161, 'Item', 74, 0, 'imagem digital'),
(518, 161, 'Item', 75, 0, '139 KB'),
(519, 161, 'Item', 78, 0, 'O autor'),
(520, 161, 'Item', 81, 0, 'Faculdade de Arquitetura e Urbanismo da USP - FAU'),
(521, 161, 'Item', 84, 0, 'imagem digital'),
(522, 161, 'Item', 65, 0, '6515b1ae-da9f-468a-a313-02cf4a5e7b42'),
(523, 161, 'Item', 65, 0, '6e3464d6-c0f1-40a5-92e9-3592e05f52a5'),
(525, 162, 'Item', 43, 0, '8737'),
(526, 162, 'Item', 50, 0, 'Torre de Babel na FAU, vista geral (1)'),
(527, 162, 'Item', 68, 0, 'Flávio Magalhães'),
(528, 162, 'Item', 70, 0, '2006'),
(529, 162, 'Item', 71, 0, 'Vista geral da torre completa, tomada na diagonal do vão livre da Faculdade de Arquitetura e Urbanismo da USP.'),
(530, 162, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(531, 162, 'Item', 75, 0, '1 MB'),
(532, 162, 'Item', 78, 0, 'O autor'),
(533, 162, 'Item', 81, 0, 'Faculdade de Arquitetura e Urbanismo da USP - FAU'),
(534, 162, 'Item', 82, 0, 'Imagem registrada por câmera digital'),
(535, 162, 'Item', 84, 0, 'imagem digital'),
(536, 162, 'Item', 65, 0, '5ece3fdf-cb27-4319-a4f2-22fe68a4417e'),
(537, 162, 'Item', 65, 0, '1b232222-1eda-4723-af6e-b06d85ff2111'),
(538, 163, 'Item', 39, 0, 'Norma Grinberg'),
(539, 163, 'Item', 43, 0, '8745'),
(540, 163, 'Item', 50, 0, 'Lugar com arco, vista geral (3)'),
(541, 163, 'Item', 68, 0, 'Marina Macambyra'),
(542, 163, 'Item', 70, 0, '2017'),
(543, 163, 'Item', 71, 0, 'Vista geral do monumento, tomada em ligeira diagonal em relação em relação à fachada do prédio da Escola, parcialmente visível no fundo. Luz da tarde, sombras no monumento.'),
(544, 163, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(545, 163, 'Item', 75, 0, '6,7 MB'),
(546, 163, 'Item', 82, 0, 'imagem registrada por câmera digital'),
(547, 163, 'Item', 84, 0, 'imagem digital'),
(548, 163, 'Item', 65, 0, 'ff095db8-f71e-4e11-87d3-4805843644d5'),
(549, 163, 'Item', 65, 0, 'bc1d14d8-c9c6-49b6-93c4-6f61aa6f9459'),
(550, 164, 'Item', 39, 0, 'Norma Grinberg'),
(551, 164, 'Item', 43, 0, '8746'),
(552, 164, 'Item', 50, 0, 'Lugar com arco, vista geral (4)'),
(553, 164, 'Item', 68, 0, 'Marina Macambyra'),
(554, 164, 'Item', 71, 0, 'Vista geral do monumento, tomada em ligeira diagonal em relação à rua. Carros ao fundo'),
(555, 164, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(556, 164, 'Item', 75, 0, '6, 54 MB'),
(557, 164, 'Item', 82, 0, 'imagem registrada por câmera digital'),
(558, 164, 'Item', 84, 0, 'imagem digital'),
(559, 164, 'Item', 65, 0, '9b190bb0-453c-4004-9f88-e3b9d0602d68'),
(560, 164, 'Item', 65, 0, 'af49c2a7-6673-4e35-8a2b-23c27902585e'),
(561, 165, 'Item', 39, 0, 'Norma Grinberg'),
(562, 165, 'Item', 43, 0, '8747'),
(563, 165, 'Item', 50, 0, 'Lugar com arco, vista lateral'),
(564, 165, 'Item', 68, 0, 'Marina Macambyra'),
(565, 165, 'Item', 70, 0, '2018'),
(566, 165, 'Item', 71, 0, 'Vista lateral parcial do monumento, com apenas a peça maior visível. Luz de fim de tarde, com sombras de árvores projetadas no gramado.\r\n\r\n\r\n'),
(567, 165, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(568, 165, 'Item', 75, 0, '8, 60 MB'),
(569, 165, 'Item', 82, 0, 'imagem registrada por câmera digital'),
(570, 165, 'Item', 84, 0, 'imagem digital'),
(571, 165, 'Item', 65, 0, '8cd94f43-609a-4c9e-aea1-dfb95b6e39f2'),
(572, 165, 'Item', 65, 0, 'e47c4670-ca8d-4044-9e9c-17e61b3f2091'),
(576, 167, 'Item', 39, 0, 'Norma Grinberg'),
(577, 167, 'Item', 43, 0, '8748'),
(578, 167, 'Item', 50, 0, 'Lugar com arco, detalhe'),
(579, 167, 'Item', 68, 0, 'Marina Macambyra'),
(580, 167, 'Item', 70, 0, '2018'),
(581, 167, 'Item', 71, 0, 'Detalhe do corte central da peça maior, visão lateral. Pela abertura, vê-se parte da peça menor.'),
(582, 167, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(583, 167, 'Item', 75, 0, '616 K'),
(584, 167, 'Item', 82, 0, 'imagem registrada por câmera digital'),
(585, 167, 'Item', 84, 0, 'imagem digital'),
(586, 167, 'Item', 65, 0, '24987a20-3617-4cca-be5b-9236ceb61b8b'),
(587, 167, 'Item', 65, 0, '6009ef37-1c8e-4b53-a982-33e509c68a22'),
(588, 168, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(589, 168, 'Item', 43, 0, '8739'),
(590, 168, 'Item', 50, 0, 'Torre de Babel na FAU, vista geral de cima'),
(591, 168, 'Item', 68, 0, 'Flávio Magalhães'),
(592, 168, 'Item', 70, 0, '2007'),
(593, 168, 'Item', 71, 0, 'Vista da instalação montada no piso caramelo da Faculdade de Arquitetura e Urbanismo, tomada de um dos andares superiores. '),
(594, 168, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(595, 168, 'Item', 75, 0, '1, 77 MB'),
(596, 168, 'Item', 78, 0, 'O autor'),
(597, 168, 'Item', 81, 0, 'Faculdade de Arquitetura e Urbanismo da USP'),
(598, 168, 'Item', 82, 0, 'Imagem registrada por câmera digital'),
(599, 168, 'Item', 84, 0, 'imagem digital'),
(600, 168, 'Item', 65, 0, '7ae7e346-e455-4730-8475-568b9df36cf7'),
(601, 168, 'Item', 65, 0, 'e7523feb-d83b-42d2-a9f5-3aa626337a1d'),
(602, 169, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(603, 169, 'Item', 43, 0, '8740'),
(604, 169, 'Item', 50, 0, 'Torre de Babel na FAU, detalhe externo'),
(605, 169, 'Item', 68, 0, 'Flávio Magalhães'),
(606, 169, 'Item', 70, 0, '2007'),
(607, 169, 'Item', 71, 0, 'Detalhe do topo da torre, tomada com câmera baixa. Mostra o teto e as cordas que prendem  a estrutura da instalação.'),
(608, 169, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(609, 169, 'Item', 75, 0, '723 K'),
(610, 169, 'Item', 82, 0, 'Imagem registrada por câmera digital'),
(611, 169, 'Item', 84, 0, 'imagem digital'),
(612, 169, 'Item', 65, 0, '5f843e97-ebf9-449b-838e-eba7b80788d6'),
(613, 169, 'Item', 65, 0, 'c15919d3-43d3-4f89-ab9b-f840bd96fc0a'),
(614, 170, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(615, 170, 'Item', 43, 0, '8741'),
(616, 170, 'Item', 50, 0, 'Torre de Babel na FAU, detalhe interno'),
(617, 170, 'Item', 68, 0, 'Flávio Magalhães'),
(618, 170, 'Item', 70, 0, '2007'),
(619, 170, 'Item', 71, 0, 'Tomada da instalação pelo lado interno, câmera baixa, mostrando a parte superior da obra e o teto do edifício da Faculdade de Arquitetura e Urbanismo da USP.'),
(620, 170, 'Item', 75, 0, '754 KB'),
(621, 170, 'Item', 82, 0, 'Imagem registrada por câmera digital'),
(622, 170, 'Item', 84, 0, 'imagem digital'),
(623, 170, 'Item', 65, 0, 'c168c319-f03c-4229-8271-db0a816f79e5'),
(624, 170, 'Item', 65, 0, 'c61cdb01-8a69-439a-a939-e524eed29a25'),
(625, 171, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(626, 171, 'Item', 43, 0, '8742'),
(627, 171, 'Item', 50, 0, 'Torre de Babel na FAU, montagem'),
(628, 171, 'Item', 68, 0, 'Flávio Magalhães'),
(629, 171, 'Item', 70, 0, '2007'),
(630, 171, 'Item', 71, 0, 'Partes da instalação espalhadas no piso caramelo da Faculdade de Arquitetura e Urbanismo da USP. O artista aparece em segundo plano, curvado, manipulando uma das peças.'),
(631, 171, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(632, 171, 'Item', 75, 0, '770 KB'),
(633, 171, 'Item', 78, 0, 'O autor'),
(634, 171, 'Item', 81, 0, 'Montagem de obra'),
(635, 171, 'Item', 82, 0, 'Imagem registrada por câmera digital'),
(636, 171, 'Item', 84, 0, 'imagem digital'),
(637, 171, 'Item', 65, 0, 'f6d1e23c-b33a-49d9-9004-adf1b01b36e0'),
(638, 171, 'Item', 65, 0, '4c072b2f-eba3-4736-941b-3bd149523dec'),
(639, 172, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(640, 172, 'Item', 43, 0, '8743'),
(641, 172, 'Item', 50, 0, 'Torre de Babel na FAU, montagem'),
(642, 172, 'Item', 68, 0, 'Flávio Magalhães'),
(643, 172, 'Item', 70, 0, '2007'),
(644, 172, 'Item', 71, 0, 'A torre em fase de montagem. O topo está prestes a ser alçado por um sistema de cordas.'),
(645, 172, 'Item', 73, 0, 'Acervo da Biblioteca da ECA'),
(646, 172, 'Item', 75, 0, '745 KB'),
(647, 172, 'Item', 81, 0, 'Montagem de obra'),
(648, 172, 'Item', 82, 0, 'Imagem produzida por câmera digital'),
(649, 172, 'Item', 84, 0, 'imagem digital'),
(650, 172, 'Item', 65, 0, '90a16d56-3fd4-42cd-991e-6cd06d7d5d17'),
(651, 172, 'Item', 65, 0, '646b2bbe-9de7-4e59-928b-7e30d02dc42f'),
(653, 173, 'Item', 43, 0, '007'),
(654, 173, 'Item', 50, 0, 'Exposição A desobediência civil'),
(655, 173, 'Item', 69, 0, 'Arte brasileira'),
(656, 173, 'Item', 70, 0, '2017'),
(657, 173, 'Item', 71, 0, 'Exposição no Memorial da Resistência, de 1o de abril a 25 de setembro de 2017, formada por, 22 pinturas a óleo e colagem sobre tela e madeira. Duas obras compõem-se de múltiplos quadros de pequenas e médias dimensões. A primeira, Ziviller Ungerhorsam,  formada por 51 peças. A segunda, Arte e Resistência, é um friso formado de 23 pinturas e um vídeo, Hostel Brasil, apresentado em looping.\r\nO tema alude, no âmbito da cultura, a situações político-sociais de constrangimento às liberdades e aos direitos humanos na história republicana brasileira recente, trazendo-o para o domínio da arte,'),
(658, 173, 'Item', 73, 0, 'Memorial da Resistência de São Paulo'),
(659, 173, 'Item', 80, 0, 'Arte contemporânea'),
(660, 173, 'Item', 81, 0, 'Desobediência civil\r\nPolítica'),
(661, 173, 'Item', 83, 0, 'MEMORIAL DA RESISTêNCIA DE SÃO PAULO. A desobediência civil. São Paulo: Memorial da Resistência de São Paulo, Associação Pinacoteca Arte e Cultura, 2017. Catálogo de exposição.'),
(662, 173, 'Item', 84, 0, 'exposição'),
(663, 173, 'Item', 65, 0, 'e3a2a35c-3093-4bfe-8759-633b6a3fd7f6'),
(664, 173, 'Item', 65, 0, 'cdd9bab8-61a5-49e4-b1ef-e02e96582142'),
(666, 1, 'Collection', 50, 0, 'Regina Silveira'),
(667, 1, 'Collection', 61, 0, '3ccb5d6a-76a3-4116-8b48-fc59604a682c'),
(668, 2, 'Collection', 50, 0, 'Geraldo Souza Dias'),
(669, 2, 'Collection', 61, 0, '7eba253a-d01a-4ca8-a53e-eb22e5c0f20e'),
(670, 3, 'Collection', 50, 0, 'Atílio Avancini'),
(671, 3, 'Collection', 61, 0, 'c5c5ea8b-15b1-49e4-8f53-4b23504e024c'),
(672, 4, 'Collection', 50, 0, 'Norma Grinberg'),
(673, 4, 'Collection', 61, 0, '37655cab-bdf0-4117-b22a-8aab9842f245'),
(674, 147, 'Item', 31, 0, '1939-'),
(675, 147, 'Item', 32, 0, 'Brasil'),
(676, 173, 'Item', 85, 0, ',,,,'),
(677, 128, 'Item', 39, 0, 'Norma Grinberg'),
(678, 133, 'Item', 39, 0, 'Regina Silveira'),
(679, 134, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(680, 144, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(681, 148, 'Item', 39, 0, 'Regina Silveira'),
(682, 149, 'Item', 39, 0, 'Regina Silveira'),
(683, 150, 'Item', 39, 0, 'Regina Silveira'),
(684, 151, 'Item', 39, 0, 'Regina Silveira'),
(685, 152, 'Item', 39, 0, 'Regina Silveira'),
(686, 152, 'Item', 68, 0, 'João Luiz Musa'),
(687, 153, 'Item', 39, 0, 'Regina Silveira'),
(688, 154, 'Item', 39, 0, 'Regina Silveira'),
(689, 155, 'Item', 39, 0, 'Regina Silveira'),
(690, 156, 'Item', 39, 0, 'Regina Silveira'),
(691, 162, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(692, 161, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(693, 173, 'Item', 29, 0, 'Exposição de arte'),
(694, 160, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(695, 174, 'Item', 50, 0, 'Annotation: \"Chassis sem telas\"'),
(696, 174, 'Item', 62, 0, '5f843e97-ebf9-449b-838e-eba7b80788d6'),
(697, 174, 'Item', 63, 0, '<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\"http://www.w3.org/2000/svg\" d=\"M529.40794,695.50677h370.31408v0h370.31408v154.79061v154.79061h-370.31408h-370.31408v-154.79061z\" data-paper-data=\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\" id=\"rectangle_05ba2c70-13e8-44db-901e-0c0f4cd8be3e\" fill-opacity=\"0\" fill=\"#00bfff\" fill-rule=\"nonzero\" stroke=\"#00bfff\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"/></svg>'),
(698, 174, 'Item', 64, 0, '529,696,741,310'),
(699, 174, 'Item', 1, 1, '<p>Chassis sem telas</p>'),
(700, 174, 'Item', 65, 0, '0b58807c-cf92-4010-8f1a-f7e804424a50'),
(701, 174, 'Item', 55, 0, 'http://colecoes.sibi.usp.br/bdpa/oa/items/174/anno.json'),
(702, 174, 'Item', 56, 0, '{\"@context\":\"http://iiif.io/api/presentation/2/context.json\",\"@type\":\"oa:Annotation\",\"motivation\":\"oa:commenting\",\"resource\":[{\"@type\":\"dctypes:Text\",\"format\":\"text/html\",\"chars\":\"<p>Chassis sem telas</p>\"}],\"on\":[{\"@type\":\"oa:SpecificResource\",\"full\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/169/canvas.json\",\"selector\":{\"@type\":\"oa:Choice\",\"default\":{\"@type\":\"oa:FragmentSelector\",\"value\":\"xywh=529,696,741,310\"},\"item\":{\"@type\":\"oa:SvgSelector\",\"value\":\"<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\\\"http://www.w3.org/2000/svg\\\" d=\\\"M529.40794,695.50677h370.31408v0h370.31408v154.79061v154.79061h-370.31408h-370.31408v-154.79061z\\\" data-paper-data=\\\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\\\" id=\\\"rectangle_05ba2c70-13e8-44db-901e-0c0f4cd8be3e\\\" fill-opacity=\\\"0\\\" fill=\\\"#00bfff\\\" fill-rule=\\\"nonzero\\\" stroke=\\\"#00bfff\\\" stroke-width=\\\"1\\\" stroke-linecap=\\\"butt\\\" stroke-linejoin=\\\"miter\\\" stroke-miterlimit=\\\"10\\\" stroke-dasharray=\\\"\\\" stroke-dashoffset=\\\"0\\\" font-family=\\\"none\\\" font-weight=\\\"none\\\" font-size=\\\"none\\\" text-anchor=\\\"none\\\" style=\\\"mix-blend-mode: normal\\\"/></svg>\"}},\"within\":{\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/169/manifest.json\",\"@type\":\"sc:Manifest\"}}],\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/174/anno.json\"}'),
(703, 175, 'Item', 50, 0, 'Annotation: \"Telas 30 x 20 cm\"'),
(704, 175, 'Item', 62, 0, '30753526-d769-4512-b2d7-b8c85fc14bf1'),
(705, 175, 'Item', 63, 0, '<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\"http://www.w3.org/2000/svg\" d=\"M339.7876,126.96323h75.09091v0h75.09091v102.36364v102.36364h-75.09091h-75.09091v-102.36364z\" data-paper-data=\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\" id=\"rectangle_3f702350-de0c-47b2-a87c-9a8655dc8d3c\" fill-opacity=\"0\" fill=\"#00bfff\" fill-rule=\"nonzero\" stroke=\"#00bfff\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"/></svg>'),
(706, 175, 'Item', 64, 0, '340,127,150,205'),
(707, 175, 'Item', 1, 1, '<p><span style=\"color: #4c3939; font-family: docs-Cabin; font-size: 15px; white-space: pre-wrap;\">Telas 30 x 20 cm</span></p>'),
(708, 175, 'Item', 65, 0, '24b89638-072d-4134-a4f8-9c73716fbf48'),
(709, 175, 'Item', 55, 0, 'http://colecoes.sibi.usp.br/bdpa/oa/items/175/anno.json'),
(710, 175, 'Item', 56, 0, '{\"@context\":\"http://iiif.io/api/presentation/2/context.json\",\"@type\":\"oa:Annotation\",\"motivation\":\"oa:commenting\",\"resource\":[{\"@type\":\"dctypes:Text\",\"format\":\"text/html\",\"chars\":\"<p><span style=\\\"color: #4c3939; font-family: docs-Cabin; font-size: 15px; white-space: pre-wrap;\\\">Telas 30 x 20 cm</span></p>\"}],\"on\":[{\"@type\":\"oa:SpecificResource\",\"full\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/134/canvas.json\",\"selector\":{\"@type\":\"oa:Choice\",\"default\":{\"@type\":\"oa:FragmentSelector\",\"value\":\"xywh=340,127,150,205\"},\"item\":{\"@type\":\"oa:SvgSelector\",\"value\":\"<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\\\"http://www.w3.org/2000/svg\\\" d=\\\"M339.7876,126.96323h75.09091v0h75.09091v102.36364v102.36364h-75.09091h-75.09091v-102.36364z\\\" data-paper-data=\\\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\\\" id=\\\"rectangle_3f702350-de0c-47b2-a87c-9a8655dc8d3c\\\" fill-opacity=\\\"0\\\" fill=\\\"#00bfff\\\" fill-rule=\\\"nonzero\\\" stroke=\\\"#00bfff\\\" stroke-width=\\\"1\\\" stroke-linecap=\\\"butt\\\" stroke-linejoin=\\\"miter\\\" stroke-miterlimit=\\\"10\\\" stroke-dasharray=\\\"\\\" stroke-dashoffset=\\\"0\\\" font-family=\\\"none\\\" font-weight=\\\"none\\\" font-size=\\\"none\\\" text-anchor=\\\"none\\\" style=\\\"mix-blend-mode: normal\\\"/></svg>\"}},\"within\":{\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/134/manifest.json\",\"@type\":\"sc:Manifest\"}}],\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/175/anno.json\"}'),
(711, 176, 'Item', 50, 0, 'Annotation: \"Pichações feitas por desconhecidos\"'),
(712, 176, 'Item', 62, 0, '659ac1aa-91a4-4beb-85a5-874a92362995'),
(713, 176, 'Item', 63, 0, '<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\"http://www.w3.org/2000/svg\" d=\"M1526.70036,2224.98421h370.09747v0h370.09747v367.02166v367.02166h-370.09747h-370.09747v-367.02166z\" data-paper-data=\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\" id=\"rectangle_133039f3-20e8-4267-a37e-ffa5ba36ad72\" fill-opacity=\"0\" fill=\"#00bfff\" fill-rule=\"nonzero\" stroke=\"#00bfff\" stroke-width=\"1\" stroke-linecap=\"butt\" stroke-linejoin=\"miter\" stroke-miterlimit=\"10\" stroke-dasharray=\"\" stroke-dashoffset=\"0\" font-family=\"none\" font-weight=\"none\" font-size=\"none\" text-anchor=\"none\" style=\"mix-blend-mode: normal\"/></svg>'),
(714, 176, 'Item', 64, 0, '1527,2225,740,734'),
(715, 176, 'Item', 1, 1, '<p>Picha&ccedil;&otilde;es feitas por desconhecidos</p>'),
(716, 176, 'Item', 65, 0, 'b5bd4a98-2236-4476-8a85-e100fa5afd47'),
(717, 176, 'Item', 55, 0, 'http://colecoes.sibi.usp.br/bdpa/oa/items/176/anno.json'),
(718, 176, 'Item', 56, 0, '{\"@context\":\"http://iiif.io/api/presentation/2/context.json\",\"@type\":\"oa:Annotation\",\"motivation\":\"oa:commenting\",\"resource\":[{\"@type\":\"dctypes:Text\",\"format\":\"text/html\",\"chars\":\"<p>Picha&ccedil;&otilde;es feitas por desconhecidos</p>\"}],\"on\":[{\"@type\":\"oa:SpecificResource\",\"full\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/126/canvas.json\",\"selector\":{\"@type\":\"oa:Choice\",\"default\":{\"@type\":\"oa:FragmentSelector\",\"value\":\"xywh=1527,2225,740,734\"},\"item\":{\"@type\":\"oa:SvgSelector\",\"value\":\"<svg xmlns=\'http://www.w3.org/2000/svg\'><path xmlns=\\\"http://www.w3.org/2000/svg\\\" d=\\\"M1526.70036,2224.98421h370.09747v0h370.09747v367.02166v367.02166h-370.09747h-370.09747v-367.02166z\\\" data-paper-data=\\\"{&quot;strokeWidth&quot;:1,&quot;rotation&quot;:0,&quot;deleteIcon&quot;:null,&quot;rotationIcon&quot;:null,&quot;group&quot;:null,&quot;editable&quot;:true,&quot;annotation&quot;:null}\\\" id=\\\"rectangle_133039f3-20e8-4267-a37e-ffa5ba36ad72\\\" fill-opacity=\\\"0\\\" fill=\\\"#00bfff\\\" fill-rule=\\\"nonzero\\\" stroke=\\\"#00bfff\\\" stroke-width=\\\"1\\\" stroke-linecap=\\\"butt\\\" stroke-linejoin=\\\"miter\\\" stroke-miterlimit=\\\"10\\\" stroke-dasharray=\\\"\\\" stroke-dashoffset=\\\"0\\\" font-family=\\\"none\\\" font-weight=\\\"none\\\" font-size=\\\"none\\\" text-anchor=\\\"none\\\" style=\\\"mix-blend-mode: normal\\\"/></svg>\"}},\"within\":{\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/126/manifest.json\",\"@type\":\"sc:Manifest\"}}],\"@id\":\"http://colecoes.sibi.usp.br/bdpa/oa/items/176/anno.json\"}'),
(719, 145, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(720, 146, 'Item', 31, 0, '1954-'),
(721, 146, 'Item', 32, 0, 'Brasil'),
(722, 146, 'Item', 34, 0, 'Pintura'),
(723, 146, 'Item', 34, 0, 'Gravura'),
(724, 146, 'Item', 35, 1, '<span>Possui graduação em arquitetura e urbanismo pela Universidade de São Paulo (1979), mestrado em artes (Master of Fine Arts) pelo Pratt Institute, New York (1984), doutorado em Teoria da Arte (Kunstwissenschaf) pela- Universität der Künste Berlin (2000) e livre-docência pela Universidade de São Paulo (2006). Atualmente é professor associado da Universidade de São Paulo. Foi professor visitante no Instituto de Arte, Design e Marketing, Lisboa (2004-5) e da University of the Arts, Filadélfia (2008). Temas recorrentes em seu trabalho de arte são estruturas geométricas, recortes urbanos, colagem, a observação da presença de palavras na visibilidade contemporânea e o estudo e a pratica da pintura de paisagem. Lidera, desde 2004 o Grupo de Pesquisa \"Palavra e Imagem: a incorporação de códigos da escrita nas artes visuais\". <br /><br /><br /></span>'),
(725, 146, 'Item', 36, 1, 'Endereço para acessar este CV: <a href=\"http://lattes.cnpq.br/9512045174822921\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/9512045174822921</a>'),
(727, 140, 'Item', 31, 0, '1953-'),
(728, 140, 'Item', 32, 0, 'Brasil'),
(729, 140, 'Item', 34, 0, 'Arte digital');
INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(730, 140, 'Item', 35, 0, 'Paulistano, fotógrafo, professor doutor nível 2 em RDIDP (MS-3.2) da ECA-USP. Mestre e Doutor em Ciências da Comunicação-Jornalismo (ECA-USP). Professor do Departamento de Jornalismo e Editoração (CJE) com ingresso em 01/09/1997. Professor permanente do Programa de Pós-Graduação em Meios e Processos Audiovisuais (PPGMPA) na linha de pesquisa Poéticas e Técnicas. Pós-doutor pela Université Sorbonne Nouvelle Paris 3 com bolsa de pesquisa no exterior BPE-FAPESP (2011-2012), supervisão do Prof. Dr. Philippe Dubois. Professor-visitante da Kyoto University of Foreign Studies (2007 e 2017). Estágio (doutorado sanduíche) na Université Stendhal Grenoble 3 (2003). Assessor ad-hoc, desde 2012, emitindo pareceres sobre projetos de pesquisa apresentados à FAPESP. Autor dos livros: Lavagem do Bonfim (Alameda, 2016); Entre Gueixas e Samurais (Edusp/Imprensa Oficial, 2008); Atílio Avancini - coleção artistas da USP n. 15 (Edusp, 2006). Autor do livro Rastros (Com-Arte, 2018) com Sérgio Avancine. Organizador do livro: Ponte Cultural (ECA-USP, 2016). Produziu 19 artigos científicos e 7 capítulos de livro. Supervisor acadêmico da Empresa Estudantil Jornalismo Júnior da ECA-USP. Coordenador científico do Grupo de Pesquisa Políticas da Imagem (GPPI) da ECA-USP. Pesquisador do Grupo de Estudos Arte Asiática (GEAA) da UNIFESP, coordenação Profa. Dra. Michiko Okano. Participou de 19 exposições fotográficas no Brasil e no exterior. Orientou 7 mestres (dois com bolsas Fapesp e OEA-GCUB), 3 de iniciação científica (dois com bolsa FAPESP), 50 trabalhos de conclusão de curso (CJE). E supervisionou 1 pós-doutorado (bolsa CNPq). Orienta 3 doutorandos, 2 mestrandos (um com bolsa CAPES), 1 iniciação científica. E supervisiona 1 pós-doutorado. Há 29 citações no Google Scholar. Áreas de atuação: comunicação, arte, fotojornalismo, audiovisual, editoração.'),
(731, 140, 'Item', 36, 1, '<span style=\"font-weight:400;\">Currículo Lattes: <a href=\"http://lattes.cnpq.br/7711153733776662\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/7711153733776662</a></span>'),
(732, 140, 'Item', 50, 0, 'Atílio Avancini'),
(733, 139, 'Item', 31, 0, '1951-'),
(734, 139, 'Item', 32, 0, 'Brasil'),
(735, 139, 'Item', 34, 0, 'Gravura'),
(736, 139, 'Item', 35, 0, 'Membro da Academia Internacional de Cerâmica (IAC - Suíça), licenciada em Desenho e Plástica pela Fundação Armando Álvares Penteado (1974), com Mestrado e Doutorado em Artes pela Universidade de São Paulo (1994/1999), Norma Grinberg, atualmente, é docente colaboradora do Departamento de Artes Visuais da Escola de Comunicações e Artes (ECA-USP). É uma das Coordenadoras do Grupo Terra de Pesquisas e do I e ll Encontro Internacional de Ceramistas na USP. Desenvolve pesquisas nas áreas de artes plásticas, arte educação, cerâmica, escultura,instalação e design. '),
(737, 139, 'Item', 36, 1, 'Currículo Lattes: <a href=\"http://lattes.cnpq.br/2378104565051285\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/2378104565051285</a>'),
(738, 147, 'Item', 34, 0, 'Pintura'),
(739, 147, 'Item', 34, 0, 'Gravura'),
(740, 147, 'Item', 34, 0, 'Desenho'),
(741, 147, 'Item', 34, 0, 'Instalação'),
(742, 147, 'Item', 34, 0, 'Multimídia'),
(743, 147, 'Item', 35, 1, 'Graduada em Artes Plásticas pelo Instituto de Artes da UFRGS (1959), fez o Mestrado (1980) e Doutorado (1984) na Escola de Comunicações e Artes da USP. Ensinou no Instituto de Artes da UFRGS (1964-69), na Universidade de Porto Rico, Campus de Mayaguez (1969-1973), na FAAP, em São Paulo (1973-85), e é docente aposentada do Departamento de Artes Plásticas da ECA/USP, onde lecionou desde 1974. Participou de diversas bienais internacionais, dentre elas: XII Bienal de La Habana (2015); Bienal de Poznan (2012); XI Bienal de Cuenca(2011); Bienal do Mercosul (2011 e 2001); Bienal de Taipei (2006); Bienal de São Paulo (1983 e 1998). De suas muitas exposições coletivas, desde os anos 60, algumas das mais recentes são: “Yoko Ohno : O Ceu Ainda é Azul, Você Sabe?\" no Instituto Tomie Ohtake, São Paulo (2017); Setouchi-Triennale, Ogijima, Japão (2016); \"Contingent Beauty: Contemporary Art from Latin America\", Museum of Fine Arts Houston, Texas, EUA (2015); Luminato Festival, Toronto, Canadá (2015); \"Cruzamentos: Contemporary Art in Brazil\", Wexner Center, Columbus, EUA (2014); “Philagrafika 2010”, Philadelphia, EUA; “Máquinas de Mirar”, Centro Andaluz de Arte Contemporanea, Sevillha, Espanha (2009); “Brazil: Body and Soul”, Guggenheim Museum, Nova York (2001) De suas exposições individuais mais recentes destacam-se: \"Regina Silveira\", Alexander Gray Associates, Nova York, EUA (2016); \"Insolitus\", Fundação Eva Klabin, Rio de Janeiro (2016); \"Crash\", Museu Oscar Niemeyer, Curitiba (2015); \"Metáforas Construidas\", Galeria Lacometa, Bogotá, Colômbia (2015); \"El sueño de Mirra y otras constelaciones\", Museo Amparo, Puebla, Mexico (2014); In Absentia (Collection), The Aldrich Contemporary Art Museum, Ridgefield, EUA (2012); 1001 Dias e Outros Enigmas, Fundação Iberê Camargo, Porto Alegre (2011); Ocupação Regina Silveira no Instituto Itaú Cultural, São Paulo (2010). Em 2013, Regina Silveira ganhou o Prêmio Masp pela trajetória de sua carreira. Em 2011, o Grande Prêmio da Crítica, dado à intervenção \"Tramazul\" no MASP pela APCA-SP. Recebeu também o Prêmio Fundação Bunge nas Artes (2009); o Prêmio Bravo Prime nas Artes, dado a Mundus Admirabilis (2007); o Prêmio APCA -SP conferido para a exposição Claraluz (2003) e o Prêmio Sérgio Motta para Arte e Tecnologia (2000). Recebeu bolsa de Pesquisa do CNPQ (1985-89), bolsa de Residência do Banff Centre, Canadá (1993), da Fundação Civitella Ranieri, Nova York, e de Umbertide, Itália (1995), e foi Artista Visitante da Universidade do Texas, Austin (1998). Recebeu também bolsas da John Simon Guggenheim Foundation (1990), Pollock-Krasner Foundation (1993) e Fulbright Foundation (1994). Fonte - Site pessoal: <a href=\"https://reginasilveira.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://reginasilveira.com/</a>'),
(744, 147, 'Item', 36, 1, 'Currículo Lattes: <a href=\"http://files.cargocollective.com/488432/CV_atualizado_2017.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">http://files.cargocollective.com/488432/CV_atualizado_2017.pdf</a><br />'),
(745, 159, 'Item', 31, 0, '1951-'),
(746, 159, 'Item', 32, 0, 'Brasil'),
(747, 159, 'Item', 34, 0, 'Fotografia'),
(748, 159, 'Item', 35, 0, 'Graduado em engenharia de Produção pela Escola Politécnica da USP (1974), Mestrado em Artes (1990) e Doutorado em Artes em (1999) é atualmente Professor Doutor MS-3 junto ao Departamento de Artes da Escola de Comunicações e Artes da USP, responsável pelas disciplinas de graduação do Departamento de Artes Plásticas da ECA/USP a partir de 1986. Áreas de atuação: fotografia, edição, sensitometria, recuperação, memória, documentação e digitalização. De 2006 a março de 2012 fez parte do Comitê Técnico Consultivo em conjunto com a artista e prof. Dra Regina Silveira, prof. Dr. Celso Favaretto, entre outros, em apoio ao Museu de Arte de São Paulo. Em 2010 foram editados dois livros sobre ensaios: Um Inverno, realizado em 1973/1974 e Depois do Inverno de 2008, que correspondem as exposições realizadas no Instituto Tomie Ohtake no primeiro semestre de 2010. Editou em 2012 pelo selo Narval o livro \"Vila Prudente\" correspondente a documentação realizada nos anos de 1979 a 1981 no bairro de periferia Jardim Elba e Vila Renato e o livro de ensaios \"24x36\" com imagens fotográficas digitais coloridas de viagens realizadas nos anos de 2010 a 2012. Preparou os originais do livro sobre Paul Strand editado pela EDUSP em 2012 sobre a tese da profa Gigi Maurício. Realizou em conjunto com Rubens Fernandez, Anna Carvoncini a proposta curatorial da Coleção MASP/Pirelli em sua 19a edição. Tratamento dos originais digitalizados do ensaio de Raul Garcez Pereira sobre o conjunto habitacional do Carmo de 1980, para a revista Zuum editado em maio de 2014 e da exposição sobre a obra do fotógrafo realizada em Buenos Aires em 2014. Preparou os arquivos digitais de 2300 cromos formato 120 das obras de Alfredo Volpi, catálogo editado em 2014 pela Base7. Refez o percurso da expedição Geográfica e Geológica do Estado de São Paulo de 1915, documentando a paisagem transformada do litoral paulista de Santos a Ubatuba, em conjunto do escritor Alberto Martins a historiadora Gloria Kok, livro editado em novembro de 2015. Responde pela coordenação do grupo de pesquisa sobre impressão fotográfica (CNPQ) ligado ao Departamento de Artes Plasticas, fundado em 2010. Preparou em conjunto com Franscisco Ding Musa 1000 arquivos digitais sobre a catalogação do pintor Antonio Bandeira a ser publicado pela Base7 em 2018-2019.'),
(749, 159, 'Item', 36, 1, 'Currículo Lattes: <a href=\"http://lattes.cnpq.br/4074095287836209\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/4074095287836209</a><br /><br /><a href=\"http://www.joaomusa.com/#!__pt/curriculo\" target=\"_blank\" rel=\"noreferrer noopener\">http://www.joaomusa.com/#!__pt/curriculo</a>'),
(750, 4, 'Collection', 58, 0, 'None'),
(756, 132, 'Item', 39, 0, 'Regina Silveira'),
(757, 129, 'Item', 39, 0, 'Atílio Avancini'),
(758, 130, 'Item', 39, 0, 'Regina Silveira'),
(759, 127, 'Item', 39, 0, 'Norma Grinberg'),
(760, 124, 'Item', 39, 0, 'Norma Grinberg'),
(761, 177, 'Item', 50, 0, 'Musas'),
(762, 177, 'Item', 39, 0, 'Geraldo de Souza Dias Filho'),
(763, 177, 'Item', 43, 0, '085'),
(764, 177, 'Item', 65, 0, '42a4e10d-da7a-46e3-b1ac-6335a25de179'),
(765, 177, 'Item', 69, 0, 'Arte brasileira'),
(766, 177, 'Item', 70, 0, '2016'),
(767, 177, 'Item', 73, 0, 'Coleção do artista'),
(768, 177, 'Item', 74, 0, 'óleo e colagem sobre tela'),
(769, 177, 'Item', 75, 0, '125 cm de diâmetro'),
(770, 177, 'Item', 78, 0, 'A desobediência civil. Catálogo da exposição realizada no Memorial da Resistência, São Paulo, 2017'),
(771, 177, 'Item', 80, 0, 'Arte contemporânea'),
(772, 177, 'Item', 81, 0, 'Pintura\r\nColagem'),
(773, 177, 'Item', 82, 0, 'Pintura e colagem'),
(774, 177, 'Item', 84, 0, 'pintura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_exhibits`
--

CREATE TABLE `omeka_exhibits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `credits` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `public` tinyint(1) DEFAULT 0,
  `theme` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `use_summary_page` tinyint(1) DEFAULT 1,
  `cover_image_file_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_exhibit_block_attachments`
--

CREATE TABLE `omeka_exhibit_block_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_exhibit_pages`
--

CREATE TABLE `omeka_exhibit_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `exhibit_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_exhibit_page_blocks`
--

CREATE TABLE `omeka_exhibit_page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_files`
--

CREATE TABLE `omeka_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `metadata` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(10, 168, NULL, 1863154, 1, '7321a93c4392ad1ea8f462919acc7c9d', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=11, description=          , manufacturer=NIKON, model=E5700, orientation=upper-left, xresolution=216, yresolution=224, resolutionunit=2, software=E5700v1.1, datetime=2006:10:10 18', 'e97d3877b4be99d877c6ab1612616672.JPG', 'ID8739.JPG', '2019-12-05 22:39:42', '2019-02-13 13:41:47', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2560,\"resolution_y\":1920,\"compression_ratio\":0.1263532172309},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"e97d3877b4be99d877c6ab1612616672.JPG\",\"FileDateTime\":1550065307,\"FileSize\":1863154,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"2560\\\" height=\\\"1920\\\"\",\"Height\":1920,\"Width\":2560,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/3.2\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E5700\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"E5700v1.1\",\"DateTime\":\"2006:10:10 18:06:37\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":284},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":4084,\"JPEGInterchangeFormatLength\":6268},\"EXIF\":{\"ExposureTime\":0.125,\"FNumber\":3.2,\"ExposureProgram\":4,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2006:10:10 18:06:37\",\"DateTimeDigitized\":\"2006:10:10 18:06:37\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":3,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":2,\"LightSource\":0,\"Flash\":16,\"FocalLength\":8.9,\"MakerNote\":\"Nikon\",\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":2560,\"ExifImageLength\":1920,\"InteroperabilityOffset\":1026,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":35,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(11, 167, NULL, 631052, 1, '81513cd5a7c7a730079332b1536d53f5', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=11, manufacturer=NIKON CORPORATION, model=NIKON D90, orientation=upper-left, xresolution=2234, yresolution=2', 'a9385aaa26a6b99d551c52382716dd87.JPG', 'ID8748.JPG', '2019-12-05 22:39:41', '2019-02-13 13:46:24', 1, '0'),
(12, 165, NULL, 9027273, 1, '72c55e99062a8bf6cc0f3b66e8e1104b', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10, manufacturer=NIKON CORPORATION, model=NIKON D90, xresolution=162, yresolution=170, resolutionunit=2, softw', '4bfcdb43146f19bd963180651b9ee863.JPG', 'ID8747.JPG', '2019-12-05 22:39:41', '2019-02-13 13:47:19', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4288,\"resolution_y\":2848,\"compression_ratio\":0.2463999186389},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"4bfcdb43146f19bd963180651b9ee863.JPG\",\"FileDateTime\":1550065639,\"FileSize\":9027273,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"4288\\\" height=\\\"2848\\\"\",\"Height\":2848,\"Width\":4288,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/10.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"PhotoScape\",\"DateTime\":\"2017:12:14 01:18:42\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":210},\"EXIF\":{\"ExposureTime\":0.0025,\"FNumber\":10,\"ExposureProgram\":2,\"ISOSpeedRatings\":1600,\"ExifVersion\":221,\"DateTimeOriginal\":\"2017:12:14 01:18:42\",\"DateTimeDigitized\":\"2017:12:14 01:18:42\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3.8,\"MeteringMode\":5,\"LightSource\":9,\"Flash\":0,\"FocalLength\":22,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":4288,\"ExifImageLength\":2848,\"InteroperabilityOffset\":31406,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0001\\u0002\\u0000\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":1,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":33,\"SceneCaptureType\":0,\"GainControl\":2,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0002\\u0000\\u0000\",\"computed\":{\"version\":\"v2.2.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(13, 164, NULL, 6858332, 1, 'd192800bc6c563ca2ce77f33b7088326', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=11, manufacturer=NIKON CORPORATION, model=NIKON D90, orientation=upper-left, xresolution=180, yresolution=188, resolutionunit=2, software=Ver.1.00 , datetime=2018:01:09 17:32:50, GPS', '7e2a0f1e72ddceaee476167458b80e90.jpg', 'ID8746.jpg', '2019-12-05 22:39:39', '2019-02-13 13:48:21', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4288,\"resolution_y\":2848,\"compression_ratio\":0.18719855340572},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"7e2a0f1e72ddceaee476167458b80e90.jpg\",\"FileDateTime\":1550065701,\"FileSize\":6858332,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"4288\\\" height=\\\"2848\\\"\",\"Height\":2848,\"Width\":4288,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/13.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2018:01:09 17:32:50\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":228,\"GPS_IFD_Pointer\":32332},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":32460,\"JPEGInterchangeFormatLength\":8915,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.0015625,\"FNumber\":13,\"ExposureProgram\":2,\"ISOSpeedRatings\":1600,\"ExifVersion\":221,\"DateTimeOriginal\":\"2018:01:09 17:32:50\",\"DateTimeDigitized\":\"2018:01:09 17:32:50\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":4,\"MeteringMode\":5,\"LightSource\":9,\"Flash\":0,\"FocalLength\":28,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":4288,\"ExifImageLength\":2848,\"InteroperabilityOffset\":32300,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0001\\u0002\\u0000\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":1,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":42,\"SceneCaptureType\":0,\"GainControl\":2,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0002\\u0000\\u0000\",\"computed\":{\"version\":\"v2.2.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(14, 163, NULL, 7003995, 1, '183ec3c4d0b58949320c24c2c4542a23', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=6, GPS-Data, datetime=2017:10:19 18:42:17, orientation=[*0*], model=SM-J500M, manufacturer=samsung], baseline, precision 8, 3771x2121, frames 3', '06f92977f6a0a3629c2adbe5e1ca7fe1.jpg', 'ID8745.jpg', '2019-12-05 22:39:38', '2019-02-13 13:50:23', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":3771,\"resolution_y\":2121,\"compression_ratio\":0.29189548117217},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"06f92977f6a0a3629c2adbe5e1ca7fe1.jpg\",\"FileDateTime\":1550065822,\"FileSize\":7003995,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, GPS\"},\"COMPUTED\":{\"html\":\"width=\\\"3771\\\" height=\\\"2121\\\"\",\"Height\":2121,\"Width\":3771,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/1.9\"},\"IFD0\":{\"GPS_IFD_Pointer\":245,\"DateTime\":\"2017:10:19 18:42:17\",\"Orientation\":0,\"Model\":\"SM-J500M\",\"Exif_IFD_Pointer\":123,\"Make\":\"samsung\"},\"EXIF\":{\"Flash\":0,\"ISOSpeedRatings\":64,\"FNumber\":1.9,\"FocalLength\":3.7,\"ExposureBiasValue\":0,\"WhiteBalance\":0,\"ExposureTime\":0.0083333333333333},\"GPS\":{\"GPSDateStamp\":\"2017:10:19\",\"GPSAltitudeRef\":0,\"GPSLongitudeRef\":\"W\",\"GPSLongitude\":[\"46\\/1\",\"43\\/1\",\"384951\\/10000\"],\"GPSLatitudeRef\":\"S\",\"GPSTimeStamp\":[\"20\\/1\",\"32\\/1\",\"1\\/1\"],\"GPSAltitude\":\"696000\\/1000\",\"GPSLatitude\":[\"23\\/1\",\"33\\/1\",\"306010\\/10000\"],\"computed\":{\"timestamp\":943993921,\"latitude\":-23.558500277778,\"longitude\":-46.72735975,\"altitude\":696}}}}}'),
(15, 162, NULL, 1978005, 1, '6ea28ba892f446e7672d8d4b09d62e87', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10, description=          , manufacturer=NIKON, model=E995, xresolution=158, yresolution=166, resolutionunit=2', '0745b854bcaf4eb82a093a4255701bce.JPG', 'ID8737.JPG', '2019-12-05 22:39:37', '2019-02-13 13:51:05', 1, '0'),
(16, 161, NULL, 143280, 1, '12fa92b1d80a4c7fb860fb225f9d48bd', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=11, description=          , manufacturer=NIKON, model=E995, orientation=upper-left, xresolution=168, yres', 'a14f887bb0a1d6f3a9cfcaf55052abdb.jpg', 'ID8738.jpg', '2019-12-05 22:39:37', '2019-02-13 13:51:30', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1399,\"resolution_y\":807,\"compression_ratio\":0.042303185227898},\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"],\"Caption-Abstract\":[\"\"]}},\"comments_html\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"],\"Caption-Abstract\":[\"\"]}},\"iptc\":{\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0002\"],\"Caption-Abstract\":[\"          \"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"a14f887bb0a1d6f3a9cfcaf55052abdb.jpg\",\"FileDateTime\":1550065890,\"FileSize\":143280,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"1399\\\" height=\\\"807\\\"\",\"Height\":807,\"Width\":1399,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/2.6\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E995\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop 7.0\",\"DateTime\":\"2007:10:03 09:39:00\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":224},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":802,\"JPEGInterchangeFormatLength\":4038},\"EXIF\":{\"ExposureTime\":0.019305019305019,\"FNumber\":2.6,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"ExifVersion\":210,\"DateTimeOriginal\":\"2006:10:24 18:42:24\",\"DateTimeDigitized\":\"2006:10:24 18:42:24\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":0,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":0,\"FocalLength\":8.2,\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":1399,\"ExifImageLength\":807,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\"}}}}'),
(17, 159, NULL, 75140, 1, '83010279ec07f76b32ceafb870124d05', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=18, height=2136, bps=0, PhotometricIntepretation=RGB, description=Jo\\303\\243o Luiz Musa, manufacturer=NIKON ', '0f659d2b2e06a4baabc0c838b7f3a113.jpg', 'João Luiz Musa.jpg', '2019-12-05 22:39:36', '2019-02-13 13:55:28', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":766,\"resolution_y\":460,\"compression_ratio\":0.071082604911643},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0004\"],\"Caption-Abstract\":[\"Jo\\u00c3\\u00a3o Luiz Musa\"],\"By-line\":[\"Andre Ligeiro\"],\"DateCreated\":[\"20120724\"],\"TimeCreated\":[\"195938+0000\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0004\"],\"Caption-Abstract\":[\"Jo\\u00c3\\u00a3o Luiz Musa\"],\"By-line\":[\"Andre Ligeiro\"],\"DateCreated\":[\"20120724\"],\"TimeCreated\":[\"195938+0000\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0004\"],\"Caption-Abstract\":[\"Jo\\u00e3o Luiz Musa\"],\"By-line\":[\"Andre Ligeiro\"],\"DateCreated\":[\"20120724\"],\"TimeCreated\":[\"195938+0000\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"0f659d2b2e06a4baabc0c838b7f3a113.jpg\",\"FileDateTime\":1550066128,\"FileSize\":75140,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"766\\\" height=\\\"460\\\"\",\"Height\":460,\"Width\":766,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/4.0\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageWidth\":3216,\"ImageLength\":2136,\"BitsPerSample\":[8,8,8],\"PhotometricInterpretation\":2,\"ImageDescription\":\"Jo\\u00e3o Luiz Musa\",\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D300S\",\"Orientation\":1,\"SamplesPerPixel\":3,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS4 Macintosh\",\"DateTime\":\"2012:07:25 09:36:44\",\"Artist\":\"Andre Ligeiro\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":364,\"GPS_IFD_Pointer\":1004},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":1118,\"JPEGInterchangeFormatLength\":4163},\"EXIF\":{\"ExposureTime\":0.016666666666667,\"FNumber\":4,\"ExposureProgram\":1,\"ISOSpeedRatings\":640,\"ExifVersion\":221,\"DateTimeOriginal\":\"2012:07:24 19:59:38\",\"DateTimeDigitized\":\"2012:07:24 19:59:38\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":2,\"ShutterSpeedValue\":5.906891,\"ApertureValue\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":1.6,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":13,\"FocalLength\":35,\"SubSecTime\":16,\"SubSecTimeOriginal\":16,\"SubSecTimeDigitized\":16,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":766,\"ExifImageLength\":460,\"InteroperabilityOffset\":972,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":1,\"WhiteBalance\":1,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":52,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0002\\u0000\\u0000\",\"computed\":{\"version\":\"v2.2.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(18, 145, NULL, 88699, 1, 'ac5bdf96ebc46299624751a2637042ce', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa], baseline, precision 8, 794x562, frames 3', '2d651646131797182aaf3a52c9ae57d9.jpg', 'ID8724.jpg', '2019-12-05 22:39:34', '2019-02-13 13:56:37', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":794,\"resolution_y\":562,\"compression_ratio\":0.0662583552205},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"2d651646131797182aaf3a52c9ae57d9.jpg\",\"FileDateTime\":1550066197,\"FileSize\":88699,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"794\\\" height=\\\"562\\\"\",\"Height\":562,\"Width\":794,\"IsColor\":1,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Software\":\"Picasa\",\"Exif_IFD_Pointer\":46},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":282,\"JPEGInterchangeFormatLength\":6686},\"EXIF\":{\"ExifVersion\":220,\"ColorSpace\":1,\"ExifImageWidth\":794,\"ExifImageLength\":562,\"InteroperabilityOffset\":158,\"ImageUniqueID\":\"2b2d318baa6586280000000000000000\"},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(19, 144, NULL, 97372, 1, '0e1f32116908ecb524b2468a8f3c0ad7', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa], baseline, precision 8, 794x562, frames 3', '1a13b95db64ba1af6d067d0e2e70bdc8.jpg', 'ID8723.jpg', '2019-12-05 22:39:34', '2019-02-13 13:57:33', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":794,\"resolution_y\":562,\"compression_ratio\":0.072737105993647},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"1a13b95db64ba1af6d067d0e2e70bdc8.jpg\",\"FileDateTime\":1550066253,\"FileSize\":97372,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"794\\\" height=\\\"562\\\"\",\"Height\":562,\"Width\":794,\"IsColor\":1,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Software\":\"Picasa\",\"Exif_IFD_Pointer\":46},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":282,\"JPEGInterchangeFormatLength\":7425},\"EXIF\":{\"ExifVersion\":220,\"ColorSpace\":1,\"ExifImageWidth\":794,\"ExifImageLength\":562,\"InteroperabilityOffset\":158,\"ImageUniqueID\":\"1512ab381231e4e40000000000000000\"},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(20, 143, NULL, 6098783, 1, '3a51f54eb547f747968d1fa8f5fdebf8', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=13, height=2817, bps=16, compression=none, PhotometricIntepretation=BlackIsZero, orientation=upper-left, ', 'ff167a6dfa058d1bba80360ce9d3aa33.jpg', 'ID8720.jpg', '2019-12-05 22:39:34', '2019-02-13 13:58:16', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4263,\"resolution_y\":2817,\"compression_ratio\":0.16928549458702},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0000\"]}},\"encoding\":\"ISO-8859-1\"}}'),
(21, 142, NULL, 6078948, 1, '34a20da6b5435ce463ed548e3feed958', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=13, height=2821, bps=16, compression=none, PhotometricIntepretation=BlackIsZero, orientation=upper-left, ', '0ac31096dc327b9eaa7bcc8fb37c11ef.jpg', 'ID8719.jpg', '2019-12-05 22:39:33', '2019-02-13 13:59:01', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4257,\"resolution_y\":2821,\"compression_ratio\":0.16873315898072},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0000\"]}},\"encoding\":\"ISO-8859-1\"}}'),
(22, 141, NULL, 6087367, 1, 'f04683b7019ded00a44c87995e8b607a', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 600x600, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=13, height=2818, bps=16, compression=none, PhotometricIntepretation=BlackIsZero, orientation=upper-left, ', '850d17c910a1591014725cb8a5dd994c.jpg', 'ID8718.jpg', '2019-12-05 22:39:32', '2019-02-13 14:00:18', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4251,\"resolution_y\":2818,\"compression_ratio\":0.16938546362433},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\",\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0000\"]}},\"encoding\":\"ISO-8859-1\"}}'),
(23, 134, NULL, 73371, 1, '12637cb62a2d3f715b3819ab47a3a6c0', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa], baseline, precision 8, 794x562, frames 3', '7fc5c61083b4d6813f4dced4de2b897b.jpg', 'ID8722.jpg', '2019-12-05 22:39:31', '2019-02-13 14:02:34', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":794,\"resolution_y\":562,\"compression_ratio\":0.054808304274945},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"7fc5c61083b4d6813f4dced4de2b897b.jpg\",\"FileDateTime\":1550066554,\"FileSize\":73371,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"794\\\" height=\\\"562\\\"\",\"Height\":562,\"Width\":794,\"IsColor\":1,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Software\":\"Picasa\",\"Exif_IFD_Pointer\":46},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":282,\"JPEGInterchangeFormatLength\":6314},\"EXIF\":{\"ExifVersion\":220,\"ColorSpace\":1,\"ExifImageWidth\":794,\"ExifImageLength\":562,\"InteroperabilityOffset\":158,\"ImageUniqueID\":\"e30b0a9def17db570000000000000000\"},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(25, 131, NULL, 99328, 1, '44b956387a9f6a1d6be93e38b72c672d', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa], baseline, precision 8, 562x794, frames 3', 'b1f09bc0755e9f31a164bee9ad3d836a.jpg', 'ID8721.jpg', '2019-12-05 22:39:30', '2019-02-13 14:06:25', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":562,\"resolution_y\":794,\"compression_ratio\":0.074198242453036},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"b1f09bc0755e9f31a164bee9ad3d836a.jpg\",\"FileDateTime\":1550066785,\"FileSize\":99328,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"562\\\" height=\\\"794\\\"\",\"Height\":794,\"Width\":562,\"IsColor\":1,\"ByteOrderMotorola\":0,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Software\":\"Picasa\",\"Exif_IFD_Pointer\":46},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":282,\"JPEGInterchangeFormatLength\":6187},\"EXIF\":{\"ExifVersion\":220,\"ColorSpace\":1,\"ExifImageWidth\":562,\"ExifImageLength\":794,\"InteroperabilityOffset\":158,\"ImageUniqueID\":\"287bd47bbaeae4b60000000000000000\"},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(27, 126, NULL, 1970486, 1, 'e6e423b4176f9fdb6d2b79f3a2d409d4', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10, manufacturer=NIKON CORPORATION, model=NIKON D90, orientation=upper-left, xresolution=162, yresolution=170, resol', 'bd53373f515c520c3a2e75d31fd299b3.JPG', 'ID8701.JPG', '2019-12-05 22:39:25', '2019-02-13 14:07:35', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2676,\"resolution_y\":3408,\"compression_ratio\":0.072022203391416},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"bd53373f515c520c3a2e75d31fd299b3.JPG\",\"FileDateTime\":1550066855,\"FileSize\":1970486,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"2676\\\" height=\\\"3408\\\"\",\"Height\":3408,\"Width\":2676,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/9.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2017:08:31 00:06:15\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":208},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":3580,\"JPEGInterchangeFormatLength\":6493},\"EXIF\":{\"ExposureTime\":0.003125,\"FNumber\":9,\"ExposureProgram\":2,\"ISOSpeedRatings\":1600,\"ExifVersion\":221,\"DateTimeOriginal\":\"2017:08:31 00:06:15\",\"DateTimeDigitized\":\"2017:08:31 00:06:15\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":4,\"MeteringMode\":5,\"LightSource\":9,\"Flash\":0,\"FocalLength\":25,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":2676,\"ExifImageLength\":3408,\"InteroperabilityOffset\":3456,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0001\\u0002\\u0000\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":1,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":37,\"SceneCaptureType\":0,\"GainControl\":2,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0,\"ImageUniqueID\":\"9a9c570e63809f070000000000000000\"},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(28, 128, NULL, 585866, 1, '01d90465d8f0fe501dcef41a5c6a0cb8', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, baseline, precision 8, 2463x2468, frames 3', '8a502b035fe8a82ca1109913938796dd.jpg', 'ID8703.jpg', '2019-12-05 22:39:26', '2019-02-13 14:08:39', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2463,\"resolution_y\":2468,\"compression_ratio\":0.032126800252599}}'),
(31, 171, NULL, 789495, 1, '20c4a74c0dc2138818c26541c0da9160', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=11, description=          , manufacturer=NIKON, model=E5700, orientation=upper-left, xresolution=216, yresolution=224, resolutionunit=2, software=E5700v1.1, datetime=2006:09:30 16', 'c83435c10a7fe700f376788bc6d6db50.JPG', 'A torre de Babel - Montagem 2.JPG', '2019-12-05 22:39:43', '2019-02-14 17:25:03', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1600,\"resolution_y\":1200,\"compression_ratio\":0.13706510416667},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"c83435c10a7fe700f376788bc6d6db50.JPG\",\"FileDateTime\":1550165102,\"FileSize\":789495,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"1600\\\" height=\\\"1200\\\"\",\"Height\":1200,\"Width\":1600,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/4.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E5700\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"E5700v1.1\",\"DateTime\":\"2006:09:30 16:18:21\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":284},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":4084,\"JPEGInterchangeFormatLength\":5915},\"EXIF\":{\"ExposureTime\":0.25,\"FNumber\":4,\"ExposureProgram\":1,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2006:09:30 16:18:21\",\"DateTimeDigitized\":\"2006:09:30 16:18:21\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":2,\"LightSource\":0,\"Flash\":16,\"FocalLength\":8.9,\"MakerNote\":\"Nikon\",\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":1600,\"ExifImageLength\":1200,\"InteroperabilityOffset\":1026,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":1,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":35,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(32, 170, NULL, 773093, 1, 'deaa76772eb2d34cd83fcaf93905a4ed', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=11, description=          , manufacturer=NIKON, model=E5700, orientation=upper-left, xresolution=216, yresolution=224, resolutionunit=2, software=E5700v1.1, datetime=2006:10:09 15', '78b30ef2f5378095cf7011059b56c1d8.JPG', 'A torre de Babel-detalhe interno.JPG', '2019-12-05 22:39:42', '2019-02-14 17:26:30', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1600,\"resolution_y\":1200,\"compression_ratio\":0.13421753472222},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"78b30ef2f5378095cf7011059b56c1d8.JPG\",\"FileDateTime\":1550165190,\"FileSize\":773093,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"1600\\\" height=\\\"1200\\\"\",\"Height\":1200,\"Width\":1600,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/6.3\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E5700\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"E5700v1.1\",\"DateTime\":\"2006:10:09 15:41:57\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":284},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":4084,\"JPEGInterchangeFormatLength\":7356},\"EXIF\":{\"ExposureTime\":0.033333333333333,\"FNumber\":6.3,\"ExposureProgram\":4,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2006:10:09 15:41:57\",\"DateTimeDigitized\":\"2006:10:09 15:41:57\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":2,\"LightSource\":0,\"Flash\":24,\"FocalLength\":8.9,\"MakerNote\":\"Nikon\",\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":1600,\"ExifImageLength\":1200,\"InteroperabilityOffset\":1026,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":35,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(33, 169, NULL, 740793, 1, 'b583f84b67faabdb0d0f4208f4d34f0a', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=11, description=          , manufacturer=NIKON, model=E5700, orientation=upper-left, xresolution=216, yresolution=224, resolutionunit=2, software=E5700v1.1, datetime=2006:10:09 15', '5308836a1e8538fc51c9b383c535f341.JPG', 'A torre de Babel-detalhe externo.JPG', '2019-12-05 22:39:42', '2019-02-14 17:27:34', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1600,\"resolution_y\":1200,\"compression_ratio\":0.12860989583333},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"5308836a1e8538fc51c9b383c535f341.JPG\",\"FileDateTime\":1550165254,\"FileSize\":740793,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, INTEROP, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"1600\\\" height=\\\"1200\\\"\",\"Height\":1200,\"Width\":1600,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/3.5\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E5700\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"E5700v1.1\",\"DateTime\":\"2006:10:09 15:41:09\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":284},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":4084,\"JPEGInterchangeFormatLength\":6334},\"EXIF\":{\"ExposureTime\":0.011001100110011,\"FNumber\":3.5,\"ExposureProgram\":2,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2006:10:09 15:41:09\",\"DateTimeDigitized\":\"2006:10:09 15:41:09\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":2,\"LightSource\":0,\"Flash\":24,\"FocalLength\":8.9,\"MakerNote\":\"Nikon\",\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":1600,\"ExifImageLength\":1200,\"InteroperabilityOffset\":1026,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":35,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(36, 158, NULL, 18118, 1, 'da26c15f577735a62c9385e7274d4e19', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '2bef8c4676086e120d47a1a9f9ac6027.jpg', 'ID8736.jpg', '2019-12-05 22:39:36', '2019-02-14 17:33:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.047779535864979}}'),
(37, 157, NULL, 14454, 1, 'ecebba55cc18b21ebcc27d1e5f00bda4', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '715da700c36dd54a0dc2db0699a8ce55.jpg', 'ID8735.jpg', '2019-12-05 22:39:36', '2019-02-14 17:34:58', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.038117088607595}}'),
(38, 156, NULL, 10689, 1, '264260de9bf8a9eee262fa701cd482c4', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 319x400, frames 3', '68bbd57a5000f3639e802134d6746844.jpg', 'ID8734.jpg', '2019-12-05 22:39:36', '2019-02-14 17:46:38', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":319,\"resolution_y\":400,\"compression_ratio\":0.027923197492163}}'),
(39, 155, NULL, 13020, 1, '087bbcff2d343acb8480e66ccb692997', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 321x400, frames 3', 'c853dd1801ff986af478a671ccce17ab.jpg', 'ID8733.jpg', '2019-12-05 22:39:36', '2019-02-14 17:50:57', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":321,\"resolution_y\":400,\"compression_ratio\":0.033800623052959}}'),
(40, 154, NULL, 17879, 1, 'dabbfbaf4e7aec2f8fad87ad867c504d', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '00ac471a14dc44c2ebf97b8b6d1fb7a2.jpg', 'ID8732.jpg', '2019-12-05 22:39:36', '2019-02-14 17:52:55', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.047149261603376}}'),
(41, 153, NULL, 13374, 1, '6f1336d3ab2fdd1ca69ed2a06039ad79', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '7552aec08f8d0f30180d3cdc196c1024.jpg', 'ID8731.jpg', '2019-12-05 22:39:36', '2019-02-14 17:54:09', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.035268987341772}}'),
(42, 152, NULL, 11798, 1, '6849f143276673d14a099afd0cfba39c', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', 'afad2c5f43f640bbb1c2ed20cfcc4f34.jpg', 'ID8730.jpg', '2019-12-05 22:39:35', '2019-02-14 17:54:56', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.031112869198312}}'),
(43, 151, NULL, 668589, 1, '76f1afe5f4dca24ea6f9ea7ce47c8849', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 72x72, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=9, manufacturer=Canon, model=Canon EOS-1Ds Mark II, orientation=upper-left, xresolution=150, yresolution=158, ', '3de603bd3a6055ff94b74578606822b4.jpg', 'ID8729.jpg', '2019-12-05 22:39:35', '2019-02-14 17:55:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1121,\"resolution_y\":1417,\"compression_ratio\":0.14030156308921},\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"comments_html\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"iptc\":{\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0002\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"3de603bd3a6055ff94b74578606822b4.jpg\",\"FileDateTime\":1550166954,\"FileSize\":668589,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"1121\\\" height=\\\"1417\\\"\",\"Height\":1417,\"Width\":1121,\"IsColor\":1,\"ByteOrderMotorola\":1,\"CCDWidth\":\"8mm\",\"ApertureFNumber\":\"f\\/11.0\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"Canon\",\"Model\":\"Canon EOS-1Ds Mark II\",\"Orientation\":1,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS Windows\",\"DateTime\":\"2007:12:27 20:03:14\",\"Exif_IFD_Pointer\":216},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":718,\"JPEGInterchangeFormatLength\":2909},\"EXIF\":{\"ExposureTime\":0.005,\"FNumber\":11,\"ExposureProgram\":1,\"ISOSpeedRatings\":50,\"ExifVersion\":221,\"DateTimeOriginal\":\"2007:09:22 01:13:31\",\"DateTimeDigitized\":\"2007:09:22 01:13:31\",\"ShutterSpeedValue\":7.643856,\"ApertureValue\":6.918863,\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":5,\"Flash\":16,\"FocalLength\":100,\"ColorSpace\":65535,\"ExifImageWidth\":1121,\"ExifImageLength\":1417,\"FocalPlaneXResolution\":3526.7605633803,\"FocalPlaneYResolution\":3528.0423280423,\"FocalPlaneResolutionUnit\":2,\"CustomRendered\":0,\"ExposureMode\":1,\"WhiteBalance\":1,\"SceneCaptureType\":0}}}}');
INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(44, 150, NULL, 12210, 1, 'c202198306f10c5b78241b9f37993f34', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', 'b95fd4b31b6bc61b96bfd2622bbc4efc.jpg', 'anamorfas 4.jpg', '2019-12-05 22:39:35', '2019-02-14 17:58:19', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.032199367088608}}'),
(45, 149, NULL, 14953, 1, 'baf0a6639da50c5fe128cd325ac96383', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '005186d906c57d09ac1d7e667b6ac469.jpg', 'anamorfas 3.jpg', '2019-12-05 22:39:35', '2019-02-14 17:59:17', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.039433016877637}}'),
(46, 148, NULL, 15257, 1, '6cf769ded69a0a11abbcfc4a53f20100', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 317x400, frames 3', 'ebb7f71090af7d407afe89004cf0b092.jpg', 'Anamorfas 2.jpg', '2019-12-05 22:39:35', '2019-02-14 18:00:50', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":317,\"resolution_y\":400,\"compression_ratio\":0.04010778128286}}'),
(47, 147, NULL, 205580, 1, 'e16c24907e5fa66f19ef5ed9373dad7b', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=0], baseline, precision 8, 670x1005, frames 3', '898cd120c37fafa531c2bcf7c65ef6a5.JPG', 'Regina Silveira.JPG', '2019-12-05 22:39:35', '2019-02-14 18:01:56', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":670,\"resolution_y\":1005,\"compression_ratio\":0.1017697581743},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0002\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"898cd120c37fafa531c2bcf7c65ef6a5.JPG\",\"FileDateTime\":1550167316,\"FileSize\":205580,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"IFD0\"},\"COMPUTED\":{\"html\":\"width=\\\"670\\\" height=\\\"1005\\\"\",\"Height\":1005,\"Width\":670,\"IsColor\":1,\"ByteOrderMotorola\":0}}}}'),
(48, 146, NULL, 19938, 1, '5acd7317928cb435c87a7bbdd9a766a3', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 150x150, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=7, orientation=upper-left, xresolution=98, yresolution=106, resolutionunit=2, software=Adobe Photoshop 7.0, ', '3618ae706cb0f9fea0b8d9c3e0b7a8c8.gif', 'Geraldo de Souza Dias Filho.gif', '2019-12-05 22:39:35', '2019-02-14 18:03:35', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":207,\"resolution_y\":289,\"compression_ratio\":0.11109439513231},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"3618ae706cb0f9fea0b8d9c3e0b7a8c8.gif\",\"FileDateTime\":1550167415,\"FileSize\":19938,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"207\\\" height=\\\"289\\\"\",\"Height\":289,\"Width\":207,\"IsColor\":1,\"ByteOrderMotorola\":1,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Orientation\":1,\"XResolution\":150,\"YResolution\":150,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop 7.0\",\"DateTime\":\"2007:05:09 21:05:30\",\"Exif_IFD_Pointer\":156},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":294,\"JPEGInterchangeFormatLength\":3079},\"EXIF\":{\"ColorSpace\":65535,\"ExifImageWidth\":207,\"ExifImageLength\":289}}}}'),
(51, 174, NULL, 77479, 1, '932317d4a2f0c506625d598f6a050825', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 741x310, frames 3', '72b98527b9c04707431b01086f8d16b1.jpg', 'http://colecoes.sibi.usp.br/loris/5308836a1e8538fc51c9b383c535f341.JPG/529,696,741,310/full/0/default.jpg', '2019-12-05 22:39:44', '2019-02-24 19:48:57', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":741,\"resolution_y\":310,\"compression_ratio\":0.11243016557108}}'),
(52, 175, NULL, 9113, 1, 'c85dea47b10f66bc636d9ca04de4f1d7', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 150x205, frames 3', 'd79199915b3d4dfb17ed546a254c616e.jpg', 'http://colecoes.sibi.usp.br/loris/7fc5c61083b4d6813f4dced4de2b897b.jpg/340,127,150,205/full/0/default.jpg', '2019-12-05 22:39:44', '2019-02-24 19:52:56', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":150,\"resolution_y\":205,\"compression_ratio\":0.098785907859079}}'),
(53, 176, NULL, 110913, 1, '837998e9317cbb51eac528f26c1ba660', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, baseline, precision 8, 740x734, frames 3', '7cb89fc30114e2b6f43bf03f46b9fd89.jpg', 'http://colecoes.sibi.usp.br/loris/bd53373f515c520c3a2e75d31fd299b3.JPG/1527,2225,740,734/full/0/default.jpg', '2019-12-05 22:39:44', '2019-02-24 19:58:39', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":740,\"resolution_y\":734,\"compression_ratio\":0.068066499742249}}'),
(54, 132, NULL, 1088721, 1, '84956eb68737c5745cd205397debcfc7', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=9, manufacturer=NIKON CORPORATION, model=NIKON D90, xresolution=150, yresolution=158, resolutionunit=2, softwa', 'bab8c65bca98d1a033dd746787f4771e.JPG', 'ID8725.JPG', '2019-12-05 22:39:31', '2019-02-24 20:38:24', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2355,\"resolution_y\":1648,\"compression_ratio\":0.09350766804774},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"bab8c65bca98d1a033dd746787f4771e.JPG\",\"FileDateTime\":1551040704,\"FileSize\":1088721,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"2355\\\" height=\\\"1648\\\"\",\"Height\":1648,\"Width\":2355,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/4.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"PhotoScape\",\"DateTime\":\"2016:02:25 02:26:51\",\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.016666666666667,\"FNumber\":4,\"ExposureProgram\":0,\"ISOSpeedRatings\":560,\"ExifVersion\":221,\"DateTimeOriginal\":\"2016:02:25 02:26:51\",\"DateTimeDigitized\":\"2016:02:25 02:26:51\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3.6,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":24,\"FocalLength\":18,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":2355,\"ExifImageLength\":1648},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(55, 133, NULL, 17584, 1, 'bbb6b9bbc716685ca06e91e67c7667c2', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, aspect ratio, density 100x100, segment length 16, baseline, precision 8, 316x400, frames 3', '663e625b727f57a3ae6bb1f2c7c06a22.jpg', 'anamorfa_1.jpg', '2019-12-05 22:39:31', '2019-02-27 14:57:27', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":316,\"resolution_y\":400,\"compression_ratio\":0.046371308016878}}'),
(56, 125, NULL, 113157, 1, 'dbce606ae9fb98d9c1822d0f3f1b8e26', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=6], baseline, precision 8, 1024x703, frames 3', '1c861654db85d0d3cf40d40fe40d4bb9.jpg', 'lugar 2002.jpg', '2019-12-05 22:39:24', '2019-02-27 15:02:25', 1, '0'),
(61, 140, NULL, 40897, 1, '38f8ccde43309f332191cc334a7635d9', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 110x110, segment length 16, baseline, precision 8, 183x285, frames 3', 'd6f2e23549b50937410d01b06801e53a.jpg', 'atílio.jpg', '2019-12-05 22:39:31', '2019-05-26 20:05:41', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":183,\"resolution_y\":285,\"compression_ratio\":0.26138113955198}}'),
(62, 139, NULL, 24615, 1, '6c9a5926199573a46eea1f3250bde808', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, baseline, precision 8, 800x534, frames 3', 'bafe9e27eff1649ea779f36f3ec2be6c.jpg', 'norma.jpg', '2019-12-05 22:39:31', '2019-05-26 20:06:23', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":800,\"resolution_y\":534,\"compression_ratio\":0.019206460674157}}'),
(65, 160, NULL, 299219, 1, '5aabf258b47c683e2a7c72f5cdc15ab5', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=11, description=          , manufacturer=NIKON, model=E995, orientation=upper-left, software=E995v1.6, datet', 'f24000f4d4484f21393ee370bcd30d55.JPG', '004.JPG', '2019-12-05 22:39:36', '2019-07-03 20:28:55', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2020,\"resolution_y\":1272,\"compression_ratio\":0.038817667144073},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"f24000f4d4484f21393ee370bcd30d55.JPG\",\"FileDateTime\":1562185734,\"FileSize\":299219,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"2020\\\" height=\\\"1272\\\"\",\"Height\":1272,\"Width\":2020,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/2.6\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E995\",\"Orientation\":1,\"Software\":\"E995v1.6\",\"DateTime\":\"2006:10:15 19:06:44\",\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.018083182640145,\"FNumber\":2.6,\"ExposureProgram\":2,\"ISOSpeedRatings\":100,\"ExifVersion\":210,\"DateTimeOriginal\":\"2006:10:15 19:06:44\",\"DateTimeDigitized\":\"2006:10:15 19:06:44\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":0,\"MeteringMode\":5,\"LightSource\":20,\"Flash\":0,\"FocalLength\":8.2}}}}'),
(67, 127, NULL, 94673, 1, '83b7e6479687b7dddb6d754291025be9', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=6], baseline, precision 8, 760x968, frames 3', 'aaddb5d4e71cf044ff79a717c97cdaee.jpg', '001.jpg', '2019-12-05 22:39:25', '2019-07-03 21:33:30', 1, '0'),
(68, 130, NULL, 3392018, 1, 'a66e4b57821853961d43dec4da607cb8', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=8, manufacturer=NIKON CORPORATION, model=NIKON D90, software=PhotoScape, datetime=2017:08:30 22:46:03], base', 'ea2863b98897721c746b08700501808d.jpg', '005_02.jpg', '2019-12-05 22:39:29', '2019-07-03 21:43:58', 1, '0'),
(69, 130, NULL, 2149303, 1, '7023c9941e22a1cc9c932066e3afb05f', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=10, manufacturer=NIKON CORPORATION, model=NIKON D90, xresolution=162, yresolution=170, resolutionunit=2, softw', '85b82975c433fb4cee4cadded91826b6.jpg', '005_01.jpg', '2019-12-05 22:39:30', '2019-07-03 21:44:22', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":2175,\"resolution_y\":2961,\"compression_ratio\":0.11124454433821},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"85b82975c433fb4cee4cadded91826b6.jpg\",\"FileDateTime\":1562190262,\"FileSize\":2149303,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"2175\\\" height=\\\"2961\\\"\",\"Height\":2961,\"Width\":2175,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/5.6\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"PhotoScape\",\"DateTime\":\"2017:08:31 15:21:48\",\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.025,\"FNumber\":5.6,\"ExposureProgram\":2,\"ISOSpeedRatings\":1600,\"ExifVersion\":221,\"DateTimeOriginal\":\"2017:08:30 22:42:38\",\"DateTimeDigitized\":\"2017:08:30 22:42:38\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":5,\"MeteringMode\":5,\"LightSource\":9,\"Flash\":0,\"FocalLength\":92,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":2175,\"ExifImageLength\":2961},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(70, 173, NULL, 924558, 1, 'c30ef6b4d0df0555e3d01814c53cd659', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 1x1, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=13, height=2322, manufacturer=samsung, model=SM-J500M, orientation=upper-left, xresolution=187, yresolution=195, ', '08f4b28072c6aa868a2529bbf6a096a6.jpg', '007.jpg', '2019-12-05 22:39:44', '2019-07-03 22:24:42', 1, '0'),
(71, 129, NULL, 13905124, 1, '3eef1651bb2f6c4ba5aad6330d3df272', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=4, software=PhotoScape, datetime=2019:09:16 17:53:40], baseline, precision 8, 6220x3902, frames 3', '8c827506aa38054238afe2ca4eb271a1.jpg', 'ID08749.jpg', '2019-12-05 22:39:29', '2019-09-16 21:05:16', 1, '0'),
(72, 177, NULL, 4752052, 1, 'a9234b09fcee1691bc4f1a07963c44bc', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=14, description=          , manufacturer=NIKON, model=COOLPIX B700, orientation=upper-left, xresolution=214, yresolution=222, resolutionunit=2, software=COOLPIX B700   V1.0, datet', '5e876587b3c0939aef97ad42c1a42130.jpg', 'ID08750.jpg', '2019-12-05 22:39:46', '2019-09-17 19:26:37', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":5184,\"resolution_y\":3888,\"compression_ratio\":0.078590251845925},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"5e876587b3c0939aef97ad42c1a42130.jpg\",\"FileDateTime\":1568748397,\"FileSize\":4752052,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"5184\\\" height=\\\"3888\\\"\",\"Height\":3888,\"Width\":5184,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/4.5\",\"UserComment\":null,\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"COOLPIX B700\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"COOLPIX B700   V1.0\",\"DateTime\":\"2017:04:23 11:37:42\",\"Artist\":null,\"YCbCrPositioning\":1,\"Copyright\":null,\"Exif_IFD_Pointer\":364,\"GPS_IFD_Pointer\":942},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":14740,\"JPEGInterchangeFormatLength\":9176},\"EXIF\":{\"ExposureTime\":0.033333333333333,\"FNumber\":4.5,\"ExposureProgram\":2,\"ISOSpeedRatings\":280,\"UndefinedTag:0x8830\":1,\"ExifVersion\":230,\"DateTimeOriginal\":\"2017:04:23 11:37:42\",\"DateTimeDigitized\":\"2017:04:23 11:37:42\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":2,\"ExposureBiasValue\":0,\"MaxApertureValue\":3.4,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":16,\"FocalLength\":12.5,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":5184,\"ExifImageLength\":3888,\"InteroperabilityOffset\":1054,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":70,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(73, 124, NULL, 3146387, 1, '450a20e70565dcbddad4117490829b34', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=11, manufacturer=NIKON CORPORATION, model=NIKON D90, orientation=upper-left, xresolution=180, yresolution=188, resolutionunit=2, software=Ver.1.00 , datetime=2014:02:10 18:06:15, GPS', 'd803eeed2c006d28943df676fb80e8b7.jpg', '002.jpg', '2019-12-05 22:39:24', '2019-12-05 00:11:27', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4288,\"resolution_y\":2848,\"compression_ratio\":0.08588080816947566},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"d803eeed2c006d28943df676fb80e8b7.jpg\",\"FileDateTime\":1575497486,\"FileSize\":3146387,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"4288\\\" height=\\\"2848\\\"\",\"Height\":2848,\"Width\":4288,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/9.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D90\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.00 \",\"DateTime\":\"2014:02:10 18:06:15\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":228,\"GPS_IFD_Pointer\":32908},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":33036,\"JPEGInterchangeFormatLength\":9336,\"YCbCrPositioning\":2},\"EXIF\":{\"ExposureTime\":0.003125,\"FNumber\":9,\"ExposureProgram\":0,\"ISOSpeedRatings\":200,\"ExifVersion\":221,\"DateTimeOriginal\":\"2014:02:10 18:06:15\",\"DateTimeDigitized\":\"2014:02:10 18:06:15\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":2,\"ExposureBiasValue\":0,\"MaxApertureValue\":4.1,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":24,\"FocalLength\":32,\"MakerNote\":\"Nikon\",\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":0,\"SubSecTimeOriginal\":0,\"SubSecTimeDigitized\":0,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":4288,\"ExifImageLength\":2848,\"InteroperabilityOffset\":32876,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0001\\u0002\\u0000\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":48,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0002\\u0000\\u0000\",\"computed\":{\"version\":\"v2.2.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(75, 172, NULL, 763590, 1, '5e51bd75481a3f6eb6a4dfff19b7a4f7', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, little-endian, direntries=10, description=          , manufacturer=NIKON, model=E5700, xresolution=158, yresolution=166, resolutionunit=2, software=E5700v1.1, datetime=2006:10:09 15:47:07], baseline, preci', '1e95279271ed43e9e7aed4aa57184ed7.jpg', 'A Torre de Babel - Montagem.jpg', '2019-12-05 22:39:43', '2019-12-05 00:24:06', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1200,\"resolution_y\":1600,\"compression_ratio\":0.13256770833333334},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"1e95279271ed43e9e7aed4aa57184ed7.jpg\",\"FileDateTime\":1575498246,\"FileSize\":763590,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, MAKERNOTE\"},\"COMPUTED\":{\"html\":\"width=\\\"1200\\\" height=\\\"1600\\\"\",\"Height\":1600,\"Width\":1200,\"IsColor\":1,\"ByteOrderMotorola\":0,\"ApertureFNumber\":\"f\\/5.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"UNDEFINED\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageDescription\":\"          \",\"Make\":\"NIKON\",\"Model\":\"E5700\",\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"E5700v1.1\",\"DateTime\":\"2006:10:09 15:47:07\",\"YCbCrPositioning\":1,\"Exif_IFD_Pointer\":204},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":1698,\"JPEGInterchangeFormatLength\":6683},\"EXIF\":{\"ExposureTime\":0.03333333333333333,\"FNumber\":5,\"ExposureProgram\":4,\"ISOSpeedRatings\":400,\"ExifVersion\":220,\"DateTimeOriginal\":\"2006:10:09 15:47:07\",\"DateTimeDigitized\":\"2006:10:09 15:47:07\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"ExposureBiasValue\":0,\"MaxApertureValue\":3,\"MeteringMode\":2,\"LightSource\":0,\"Flash\":24,\"FocalLength\":8.9,\"MakerNote\":\"Nikon\",\"UserComment\":\"\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":1200,\"ExifImageLength\":1600,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":0,\"FocalLengthIn35mmFilm\":35,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0}}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_iiif_items_cached_json_data`
--

CREATE TABLE `omeka_iiif_items_cached_json_data` (
  `id` int(10) NOT NULL,
  `record_id` int(11) NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `generated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_iiif_items_cached_json_data`
--

INSERT INTO `omeka_iiif_items_cached_json_data` (`id`, `record_id`, `record_type`, `url`, `data`, `generated`) VALUES
(3, 3, 'Collection', 'private_manifest', '{\"@context\":\"http://www.shared-canvas.org/ns/context.json\",\"@id\":\"http://172.16.8.55/oa/collections/3/manifest.json\",\"@type\":\"sc:Manifest\",\"label\":\"At\\u00edlio Avancini\",\"sequences\":[{\"@id\":\"http://172.16.8.55/oa/collections/3/sequence.json\",\"@type\":\"sc:Sequence\",\"label\":\"\",\"canvases\":[{\"@id\":\"http://172.16.8.55/oa/items/129/canvas.json\",\"label\":\"Lavagem do Bonfim: formas de reportar [s\\u00e9rie]\",\"@type\":\"sc:Canvas\",\"width\":6220,\"height\":3902,\"images\":[{\"@id\":\"http://172.16.8.55/oa/files/71/anno.json\",\"motivation\":\"sc:painting\",\"@type\":\"oa:Annotation\",\"resource\":{\"@id\":\"http://172.16.8.55/files/original/8c827506aa38054238afe2ca4eb271a1.jpg\",\"@type\":\"dctypes:Image\",\"format\":\"image/jpeg\",\"width\":6220,\"height\":3902,\"service\":{\"@id\":\"http://172.16.8.55:5004/8c827506aa38054238afe2ca4eb271a1.jpg\",\"@context\":\"http://iiif.io/api/image/2/context.json\",\"profile\":\"http://iiif.io/api/image/2/level2.json\"}},\"on\":\"http://172.16.8.55/oa/items/129/canvas.json\"}],\"metadata\":[{\"label\":\"Creator\",\"value\":\"At\\u00edlio Avancini\"},{\"label\":\"Identifier\",\"value\":\"003\"}],\"otherContent\":[{\"@id\":\"http://172.16.8.55/oa/items/129/annolist.json\",\"@type\":\"sc:AnnotationList\"}]},{\"@id\":\"http://172.16.8.55/oa/items/141/canvas.json\",\"label\":\"Alma baiana 1\",\"@type\":\"sc:Canvas\",\"width\":4251,\"height\":2818,\"images\":[{\"@id\":\"http://172.16.8.55/oa/files/22/anno.json\",\"motivation\":\"sc:painting\",\"@type\":\"oa:Annotation\",\"resource\":{\"@id\":\"http://172.16.8.55/files/original/850d17c910a1591014725cb8a5dd994c.jpg\",\"@type\":\"dctypes:Image\",\"format\":\"image/jpeg\",\"width\":4251,\"height\":2818,\"service\":{\"@id\":\"http://172.16.8.55:5004/850d17c910a1591014725cb8a5dd994c.jpg\",\"@context\":\"http://iiif.io/api/image/2/context.json\",\"profile\":\"http://iiif.io/api/image/2/level2.json\"}},\"on\":\"http://172.16.8.55/oa/items/141/canvas.json\"}],\"metadata\":[{\"label\":\"Identifier\",\"value\":\"8718\"}],\"otherContent\":[{\"@id\":\"http://172.16.8.55/oa/items/141/annolist.json\",\"@type\":\"sc:AnnotationList\"}]},{\"@id\":\"http://172.16.8.55/oa/items/142/canvas.json\",\"label\":\"Alma baiana 2\",\"@type\":\"sc:Canvas\",\"width\":4257,\"height\":2821,\"images\":[{\"@id\":\"http://172.16.8.55/oa/files/21/anno.json\",\"motivation\":\"sc:painting\",\"@type\":\"oa:Annotation\",\"resource\":{\"@id\":\"http://172.16.8.55/files/original/0ac31096dc327b9eaa7bcc8fb37c11ef.jpg\",\"@type\":\"dctypes:Image\",\"format\":\"image/jpeg\",\"width\":4257,\"height\":2821,\"service\":{\"@id\":\"http://172.16.8.55:5004/0ac31096dc327b9eaa7bcc8fb37c11ef.jpg\",\"@context\":\"http://iiif.io/api/image/2/context.json\",\"profile\":\"http://iiif.io/api/image/2/level2.json\"}},\"on\":\"http://172.16.8.55/oa/items/142/canvas.json\"}],\"metadata\":[{\"label\":\"Identifier\",\"value\":\"8719\"}],\"otherContent\":[{\"@id\":\"http://172.16.8.55/oa/items/142/annolist.json\",\"@type\":\"sc:AnnotationList\"}]},{\"@id\":\"http://172.16.8.55/oa/items/143/canvas.json\",\"label\":\"Alma baiana 3\",\"@type\":\"sc:Canvas\",\"width\":4263,\"height\":2817,\"images\":[{\"@id\":\"http://172.16.8.55/oa/files/20/anno.json\",\"motivation\":\"sc:painting\",\"@type\":\"oa:Annotation\",\"resource\":{\"@id\":\"http://172.16.8.55/files/original/ff167a6dfa058d1bba80360ce9d3aa33.jpg\",\"@type\":\"dctypes:Image\",\"format\":\"image/jpeg\",\"width\":4263,\"height\":2817,\"service\":{\"@id\":\"http://172.16.8.55:5004/ff167a6dfa058d1bba80360ce9d3aa33.jpg\",\"@context\":\"http://iiif.io/api/image/2/context.json\",\"profile\":\"http://iiif.io/api/image/2/level2.json\"}},\"on\":\"http://172.16.8.55/oa/items/143/canvas.json\"}],\"metadata\":[{\"label\":\"Identifier\",\"value\":\"8720\"}],\"otherContent\":[{\"@id\":\"http://172.16.8.55/oa/items/143/annolist.json\",\"@type\":\"sc:AnnotationList\"}]}]}]}', '2019-12-05 21:38:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_iiif_items_job_statuses`
--

CREATE TABLE `omeka_iiif_items_job_statuses` (
  `id` int(11) NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dones` int(11) NOT NULL,
  `skips` int(11) NOT NULL,
  `fails` int(11) NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 100,
  `added` timestamp NOT NULL DEFAULT '2016-11-01 02:00:00',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_iiif_items_job_statuses`
--

INSERT INTO `omeka_iiif_items_job_statuses` (`id`, `source`, `dones`, `skips`, `fails`, `status`, `progress`, `total`, `added`, `modified`) VALUES
(1, 'Adding UUID to collections and items', 0, 0, 0, 'Completed', 0, 0, '2019-02-06 13:44:10', '2019-02-06 13:44:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_import_importers`
--

CREATE TABLE `omeka_import_importers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reader_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reader_config` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `processor_config` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_import_importers`
--

INSERT INTO `omeka_import_importers` (`id`, `name`, `reader_name`, `reader_config`, `processor_name`, `processor_config`) VALUES
(1, 'All', 'csv', NULL, 'items', NULL),
(2, 'teste', 'csv', NULL, 'items', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_import_imports`
--

CREATE TABLE `omeka_import_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `importer_id` int(10) UNSIGNED NOT NULL,
  `reader_params` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor_params` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `started` timestamp NULL DEFAULT NULL,
  `ended` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_import_imports`
--

INSERT INTO `omeka_import_imports` (`id`, `importer_id`, `reader_params`, `processor_params`, `status`, `started`, `ended`) VALUES
(1, 1, 'a:4:{s:8:\"filename\";s:38:\"/tmp/All-2019-02-06T16_42_00-02_00.csv\";s:9:\"delimiter\";s:1:\",\";s:9:\"enclosure\";s:1:\"\"\";s:6:\"escape\";s:1:\"\\\";}', 'a:2:{s:7:\"mapping\";a:1:{s:2339:\"Item Type Metadata:Text;\"Item Type Metadata:Interviewer\";\"Item Type Metadata:Interviewee\";\"Item Type Metadata:Location\";\"Item Type Metadata:Transcription\";\"Item Type Metadata:Local URL\";\"Item Type Metadata:Original Format\";\"Item Type Metadata:Physical Dimensions\";\"Item Type Metadata:Duration\";\"Item Type Metadata:Compression\";\"Item Type Metadata:Producer\";\"Item Type Metadata:Director\";\"Item Type Metadata:Bit Rate/Frequency\";\"Item Type Metadata:Time Summary\";\"Item Type Metadata:Email Body\";\"Item Type Metadata:Subject Line\";\"Item Type Metadata:From\";\"Item Type Metadata:To\";\"Item Type Metadata:CC\";\"Item Type Metadata:BCC\";\"Item Type Metadata:Number of Attachments\";\"Item Type Metadata:Standards\";\"Item Type Metadata:Objectives\";\"Item Type Metadata:Materials\";\"Item Type Metadata:Lesson Plan Text\";\"Item Type Metadata:URL\";\"Item Type Metadata:Event Type\";\"Item Type Metadata:Participants\";\"Item Type Metadata:Birth Date\";\"Item Type Metadata:Birthplace\";\"Item Type Metadata:Death Date\";\"Item Type Metadata:Occupation\";\"Item Type Metadata:Biographical Text\";\"Item Type Metadata:Bibliography\";\"Dublin Core:Contributor\";\"Dublin Core:Coverage\";\"Dublin Core:Creator\";\"Dublin Core:Date\";\"Dublin Core:Description\";\"Dublin Core:Format\";\"Dublin Core:Identifier\";\"Dublin Core:Language\";\"Dublin Core:Publisher\";\"Dublin Core:Relation\";\"Dublin Core:Rights\";\"Dublin Core:Source\";\"Dublin Core:Subject\";\"Dublin Core:Title\";\"Dublin Core:Type\";\"VRA Core:ID\";\"VRA Core:Title\";\"VRA Core:Agent\";\"VRA Core:Cultural Context\";\"VRA Core:Date\";\"VRA Core:Description\";\"VRA Core:Inscription\";\"VRA Core:Location\";\"VRA Core:Material\";\"VRA Core:Measurements\";\"VRA Core:Relation\";\"VRA Core:Rights\";\"VRA Core:Source\";\"VRA Core:State Edition\";\"VRA Core:Style Period\";\"VRA Core:Subject\";\"VRA Core:Technique\";\"VRA Core:Textref\";\"VRA Core:Worktype\";\"Item Type Metadata:Annotated Region\";\"Item Type Metadata:Data de Aniversário\";\"IIIF File Metadata:Original @id\";\"IIIF File Metadata:JSON Data\";\"IIIF Item Metadata:Display as IIIF?\";\"IIIF Item Metadata:Original @id\";\"IIIF Item Metadata:JSON Data\";\"IIIF Collection Metadata:Original @id\";\"IIIF Collection Metadata:IIIF Type\";\"IIIF Collection Metadata:Parent Collection\";\"IIIF Collection Metadata:JSON Data\";\"IIIF Collection Metadata:UUID\";\"Item Type Metadata:On Canvas\";\"Item Type Metadata:Selector\";\"IIIF Item Metadata:UUID\"\";N;}s:13:\"collection_id\";s:1:\"0\";}', 'completed', '2019-02-07 15:37:47', '2019-02-07 15:37:48'),
(2, 2, 'a:4:{s:8:\"filename\";s:40:\"/tmp/teste-2019-02-07T13_40_20-02_00.csv\";s:9:\"delimiter\";s:1:\",\";s:9:\"enclosure\";s:1:\"\"\";s:6:\"escape\";s:1:\"\\\";}', 'a:2:{s:7:\"mapping\";a:83:{s:23:\"Item Type Metadata:Text\";N;s:30:\"Item Type Metadata:Interviewer\";N;s:30:\"Item Type Metadata:Interviewee\";N;s:27:\"Item Type Metadata:Location\";N;s:32:\"Item Type Metadata:Transcription\";N;s:28:\"Item Type Metadata:Local URL\";N;s:34:\"Item Type Metadata:Original Format\";N;s:38:\"Item Type Metadata:Physical Dimensions\";N;s:27:\"Item Type Metadata:Duration\";N;s:30:\"Item Type Metadata:Compression\";N;s:27:\"Item Type Metadata:Producer\";N;s:27:\"Item Type Metadata:Director\";N;s:37:\"Item Type Metadata:Bit Rate/Frequency\";N;s:31:\"Item Type Metadata:Time Summary\";N;s:29:\"Item Type Metadata:Email Body\";N;s:31:\"Item Type Metadata:Subject Line\";N;s:23:\"Item Type Metadata:From\";N;s:21:\"Item Type Metadata:To\";N;s:21:\"Item Type Metadata:CC\";N;s:22:\"Item Type Metadata:BCC\";N;s:40:\"Item Type Metadata:Number of Attachments\";N;s:28:\"Item Type Metadata:Standards\";N;s:29:\"Item Type Metadata:Objectives\";N;s:28:\"Item Type Metadata:Materials\";N;s:35:\"Item Type Metadata:Lesson Plan Text\";N;s:22:\"Item Type Metadata:URL\";N;s:29:\"Item Type Metadata:Event Type\";N;s:31:\"Item Type Metadata:Participants\";N;s:29:\"Item Type Metadata:Birth Date\";N;s:29:\"Item Type Metadata:Birthplace\";N;s:29:\"Item Type Metadata:Death Date\";N;s:29:\"Item Type Metadata:Occupation\";N;s:36:\"Item Type Metadata:Biographical Text\";N;s:31:\"Item Type Metadata:Bibliography\";N;s:23:\"Dublin Core:Contributor\";N;s:20:\"Dublin Core:Coverage\";N;s:19:\"Dublin Core:Creator\";N;s:16:\"Dublin Core:Date\";N;s:23:\"Dublin Core:Description\";N;s:18:\"Dublin Core:Format\";N;s:22:\"Dublin Core:Identifier\";N;s:20:\"Dublin Core:Language\";N;s:21:\"Dublin Core:Publisher\";N;s:20:\"Dublin Core:Relation\";N;s:18:\"Dublin Core:Rights\";N;s:18:\"Dublin Core:Source\";N;s:19:\"Dublin Core:Subject\";N;s:17:\"Dublin Core:Title\";N;s:16:\"Dublin Core:Type\";N;s:11:\"VRA Core:ID\";N;s:14:\"VRA Core:Title\";N;s:14:\"VRA Core:Agent\";N;s:25:\"VRA Core:Cultural Context\";N;s:13:\"VRA Core:Date\";N;s:20:\"VRA Core:Description\";N;s:20:\"VRA Core:Inscription\";N;s:17:\"VRA Core:Location\";N;s:17:\"VRA Core:Material\";N;s:21:\"VRA Core:Measurements\";N;s:17:\"VRA Core:Relation\";N;s:15:\"VRA Core:Rights\";N;s:15:\"VRA Core:Source\";N;s:22:\"VRA Core:State Edition\";N;s:21:\"VRA Core:Style Period\";N;s:16:\"VRA Core:Subject\";N;s:18:\"VRA Core:Technique\";N;s:16:\"VRA Core:Textref\";N;s:17:\"VRA Core:Worktype\";N;s:35:\"Item Type Metadata:Annotated Region\";N;s:39:\"Item Type Metadata:Data de Aniversário\";N;s:31:\"IIIF File Metadata:Original @id\";N;s:28:\"IIIF File Metadata:JSON Data\";N;s:35:\"IIIF Item Metadata:Display as IIIF?\";N;s:31:\"IIIF Item Metadata:Original @id\";N;s:28:\"IIIF Item Metadata:JSON Data\";N;s:37:\"IIIF Collection Metadata:Original @id\";N;s:34:\"IIIF Collection Metadata:IIIF Type\";N;s:42:\"IIIF Collection Metadata:Parent Collection\";N;s:34:\"IIIF Collection Metadata:JSON Data\";N;s:29:\"IIIF Collection Metadata:UUID\";N;s:28:\"Item Type Metadata:On Canvas\";N;s:27:\"Item Type Metadata:Selector\";N;s:23:\"IIIF Item Metadata:UUID\";N;}s:13:\"collection_id\";s:1:\"0\";}', 'completed', '2019-02-07 15:43:23', '2019-02-07 15:43:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_import_logs`
--

CREATE TABLE `omeka_import_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `import_id` int(10) UNSIGNED NOT NULL,
  `severity` int(11) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `params` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_import_logs`
--

INSERT INTO `omeka_import_logs` (`id`, `import_id`, `severity`, `message`, `params`, `added`) VALUES
(1, 1, 5, 'Import started', NULL, '2019-02-07 15:37:47'),
(2, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(3, 1, 5, 'Created item 9', NULL, '2019-02-07 15:37:47'),
(4, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(5, 1, 5, 'Created item 10', NULL, '2019-02-07 15:37:47'),
(6, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(7, 1, 5, 'Created item 11', NULL, '2019-02-07 15:37:47'),
(8, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(9, 1, 5, 'Created item 12', NULL, '2019-02-07 15:37:47'),
(10, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(11, 1, 5, 'Created item 13', NULL, '2019-02-07 15:37:47'),
(12, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(13, 1, 5, 'Created item 14', NULL, '2019-02-07 15:37:47'),
(14, 1, 5, '1', NULL, '2019-02-07 15:37:47'),
(15, 1, 5, 'Created item 15', NULL, '2019-02-07 15:37:48'),
(16, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(17, 1, 5, 'Created item 16', NULL, '2019-02-07 15:37:48'),
(18, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(19, 1, 5, 'Created item 17', NULL, '2019-02-07 15:37:48'),
(20, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(21, 1, 5, 'Created item 18', NULL, '2019-02-07 15:37:48'),
(22, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(23, 1, 5, 'Created item 19', NULL, '2019-02-07 15:37:48'),
(24, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(25, 1, 5, 'Created item 20', NULL, '2019-02-07 15:37:48'),
(26, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(27, 1, 5, 'Created item 21', NULL, '2019-02-07 15:37:48'),
(28, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(29, 1, 5, 'Created item 22', NULL, '2019-02-07 15:37:48'),
(30, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(31, 1, 5, 'Created item 23', NULL, '2019-02-07 15:37:48'),
(32, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(33, 1, 5, 'Created item 24', NULL, '2019-02-07 15:37:48'),
(34, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(35, 1, 5, 'Created item 25', NULL, '2019-02-07 15:37:48'),
(36, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(37, 1, 5, 'Created item 26', NULL, '2019-02-07 15:37:48'),
(38, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(39, 1, 5, 'Created item 27', NULL, '2019-02-07 15:37:48'),
(40, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(41, 1, 5, 'Created item 28', NULL, '2019-02-07 15:37:48'),
(42, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(43, 1, 5, 'Created item 29', NULL, '2019-02-07 15:37:48'),
(44, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(45, 1, 5, 'Created item 30', NULL, '2019-02-07 15:37:48'),
(46, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(47, 1, 5, 'Created item 31', NULL, '2019-02-07 15:37:48'),
(48, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(49, 1, 5, 'Created item 32', NULL, '2019-02-07 15:37:48'),
(50, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(51, 1, 5, 'Created item 33', NULL, '2019-02-07 15:37:48'),
(52, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(53, 1, 5, 'Created item 34', NULL, '2019-02-07 15:37:48'),
(54, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(55, 1, 5, 'Created item 35', NULL, '2019-02-07 15:37:48'),
(56, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(57, 1, 5, 'Created item 36', NULL, '2019-02-07 15:37:48'),
(58, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(59, 1, 5, 'Created item 37', NULL, '2019-02-07 15:37:48'),
(60, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(61, 1, 5, 'Created item 38', NULL, '2019-02-07 15:37:48'),
(62, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(63, 1, 5, 'Created item 39', NULL, '2019-02-07 15:37:48'),
(64, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(65, 1, 5, 'Created item 40', NULL, '2019-02-07 15:37:48'),
(66, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(67, 1, 5, 'Created item 41', NULL, '2019-02-07 15:37:48'),
(68, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(69, 1, 5, 'Created item 42', NULL, '2019-02-07 15:37:48'),
(70, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(71, 1, 5, 'Created item 43', NULL, '2019-02-07 15:37:48'),
(72, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(73, 1, 5, 'Created item 44', NULL, '2019-02-07 15:37:48'),
(74, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(75, 1, 5, 'Created item 45', NULL, '2019-02-07 15:37:48'),
(76, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(77, 1, 5, 'Created item 46', NULL, '2019-02-07 15:37:48'),
(78, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(79, 1, 5, 'Created item 47', NULL, '2019-02-07 15:37:48'),
(80, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(81, 1, 5, 'Created item 48', NULL, '2019-02-07 15:37:48'),
(82, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(83, 1, 5, 'Created item 49', NULL, '2019-02-07 15:37:48'),
(84, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(85, 1, 5, 'Created item 50', NULL, '2019-02-07 15:37:48'),
(86, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(87, 1, 5, 'Created item 51', NULL, '2019-02-07 15:37:48'),
(88, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(89, 1, 5, 'Created item 52', NULL, '2019-02-07 15:37:48'),
(90, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(91, 1, 5, 'Created item 53', NULL, '2019-02-07 15:37:48'),
(92, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(93, 1, 5, 'Created item 54', NULL, '2019-02-07 15:37:48'),
(94, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(95, 1, 5, 'Created item 55', NULL, '2019-02-07 15:37:48'),
(96, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(97, 1, 5, 'Created item 56', NULL, '2019-02-07 15:37:48'),
(98, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(99, 1, 5, 'Created item 57', NULL, '2019-02-07 15:37:48'),
(100, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(101, 1, 5, 'Created item 58', NULL, '2019-02-07 15:37:48'),
(102, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(103, 1, 5, 'Created item 59', NULL, '2019-02-07 15:37:48'),
(104, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(105, 1, 5, 'Created item 60', NULL, '2019-02-07 15:37:48'),
(106, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(107, 1, 5, 'Created item 61', NULL, '2019-02-07 15:37:48'),
(108, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(109, 1, 5, 'Created item 62', NULL, '2019-02-07 15:37:48'),
(110, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(111, 1, 5, 'Created item 63', NULL, '2019-02-07 15:37:48'),
(112, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(113, 1, 5, 'Created item 64', NULL, '2019-02-07 15:37:48'),
(114, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(115, 1, 5, 'Created item 65', NULL, '2019-02-07 15:37:48'),
(116, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(117, 1, 5, 'Created item 66', NULL, '2019-02-07 15:37:48'),
(118, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(119, 1, 5, 'Created item 67', NULL, '2019-02-07 15:37:48'),
(120, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(121, 1, 5, 'Created item 68', NULL, '2019-02-07 15:37:48'),
(122, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(123, 1, 5, 'Created item 69', NULL, '2019-02-07 15:37:48'),
(124, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(125, 1, 5, 'Created item 70', NULL, '2019-02-07 15:37:48'),
(126, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(127, 1, 5, 'Created item 71', NULL, '2019-02-07 15:37:48'),
(128, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(129, 1, 5, 'Created item 72', NULL, '2019-02-07 15:37:48'),
(130, 1, 5, '1', NULL, '2019-02-07 15:37:48'),
(131, 1, 5, 'Created item 73', NULL, '2019-02-07 15:37:48'),
(132, 1, 5, 'Import completed', NULL, '2019-02-07 15:37:48'),
(133, 2, 5, 'Import started', NULL, '2019-02-07 15:43:23'),
(134, 2, 5, '1', NULL, '2019-02-07 15:43:23'),
(135, 2, 5, 'Created item 74', NULL, '2019-02-07 15:43:23'),
(136, 2, 5, '1', NULL, '2019-02-07 15:43:23'),
(137, 2, 5, 'Created item 75', NULL, '2019-02-07 15:43:23'),
(138, 2, 5, '1', NULL, '2019-02-07 15:43:23'),
(139, 2, 5, 'Created item 76', NULL, '2019-02-07 15:43:23'),
(140, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(141, 2, 5, 'Created item 77', NULL, '2019-02-07 15:43:24'),
(142, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(143, 2, 5, 'Created item 78', NULL, '2019-02-07 15:43:24'),
(144, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(145, 2, 5, 'Created item 79', NULL, '2019-02-07 15:43:24'),
(146, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(147, 2, 5, 'Created item 80', NULL, '2019-02-07 15:43:24'),
(148, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(149, 2, 5, 'Created item 81', NULL, '2019-02-07 15:43:24'),
(150, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(151, 2, 5, 'Created item 82', NULL, '2019-02-07 15:43:24'),
(152, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(153, 2, 5, 'Created item 83', NULL, '2019-02-07 15:43:24'),
(154, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(155, 2, 5, 'Created item 84', NULL, '2019-02-07 15:43:24'),
(156, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(157, 2, 5, 'Created item 85', NULL, '2019-02-07 15:43:24'),
(158, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(159, 2, 5, 'Created item 86', NULL, '2019-02-07 15:43:24'),
(160, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(161, 2, 5, 'Created item 87', NULL, '2019-02-07 15:43:24'),
(162, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(163, 2, 5, 'Created item 88', NULL, '2019-02-07 15:43:24'),
(164, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(165, 2, 5, 'Created item 89', NULL, '2019-02-07 15:43:24'),
(166, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(167, 2, 5, 'Created item 90', NULL, '2019-02-07 15:43:24'),
(168, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(169, 2, 5, 'Created item 91', NULL, '2019-02-07 15:43:24'),
(170, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(171, 2, 5, 'Created item 92', NULL, '2019-02-07 15:43:24'),
(172, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(173, 2, 5, 'Created item 93', NULL, '2019-02-07 15:43:24'),
(174, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(175, 2, 5, 'Created item 94', NULL, '2019-02-07 15:43:24'),
(176, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(177, 2, 5, 'Created item 95', NULL, '2019-02-07 15:43:24'),
(178, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(179, 2, 5, 'Created item 96', NULL, '2019-02-07 15:43:24'),
(180, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(181, 2, 5, 'Created item 97', NULL, '2019-02-07 15:43:24'),
(182, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(183, 2, 5, 'Created item 98', NULL, '2019-02-07 15:43:24'),
(184, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(185, 2, 5, 'Created item 99', NULL, '2019-02-07 15:43:24'),
(186, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(187, 2, 5, 'Created item 100', NULL, '2019-02-07 15:43:24'),
(188, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(189, 2, 5, 'Created item 101', NULL, '2019-02-07 15:43:24'),
(190, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(191, 2, 5, 'Created item 102', NULL, '2019-02-07 15:43:24'),
(192, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(193, 2, 5, 'Created item 103', NULL, '2019-02-07 15:43:24'),
(194, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(195, 2, 5, 'Created item 104', NULL, '2019-02-07 15:43:24'),
(196, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(197, 2, 5, 'Created item 105', NULL, '2019-02-07 15:43:24'),
(198, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(199, 2, 5, 'Created item 106', NULL, '2019-02-07 15:43:24'),
(200, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(201, 2, 5, 'Created item 107', NULL, '2019-02-07 15:43:24'),
(202, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(203, 2, 5, 'Created item 108', NULL, '2019-02-07 15:43:24'),
(204, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(205, 2, 5, 'Created item 109', NULL, '2019-02-07 15:43:24'),
(206, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(207, 2, 5, 'Created item 110', NULL, '2019-02-07 15:43:24'),
(208, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(209, 2, 5, 'Created item 111', NULL, '2019-02-07 15:43:24'),
(210, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(211, 2, 5, 'Created item 112', NULL, '2019-02-07 15:43:24'),
(212, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(213, 2, 5, 'Created item 113', NULL, '2019-02-07 15:43:24'),
(214, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(215, 2, 5, 'Created item 114', NULL, '2019-02-07 15:43:24'),
(216, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(217, 2, 5, 'Created item 115', NULL, '2019-02-07 15:43:24'),
(218, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(219, 2, 5, 'Created item 116', NULL, '2019-02-07 15:43:24'),
(220, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(221, 2, 5, 'Created item 117', NULL, '2019-02-07 15:43:24'),
(222, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(223, 2, 5, 'Created item 118', NULL, '2019-02-07 15:43:24'),
(224, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(225, 2, 5, 'Created item 119', NULL, '2019-02-07 15:43:24'),
(226, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(227, 2, 5, 'Created item 120', NULL, '2019-02-07 15:43:24'),
(228, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(229, 2, 5, 'Created item 121', NULL, '2019-02-07 15:43:24'),
(230, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(231, 2, 5, 'Created item 122', NULL, '2019-02-07 15:43:24'),
(232, 2, 5, '1', NULL, '2019-02-07 15:43:24'),
(233, 2, 5, 'Created item 123', NULL, '2019-02-07 15:43:24'),
(234, 2, 5, 'Import completed', NULL, '2019-02-07 15:43:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_items`
--

CREATE TABLE `omeka_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(124, 15, 4, 0, 1, '2019-12-05 00:11:28', '2019-02-11 19:55:53', 2),
(125, 6, 4, 0, 1, '2019-02-27 15:02:25', '2019-02-11 19:55:53', 2),
(126, 6, 4, 0, 1, '2019-03-15 17:27:34', '2019-02-11 19:55:53', 2),
(127, 15, 4, 0, 1, '2019-07-03 21:33:30', '2019-02-11 19:55:53', 2),
(128, 6, 4, 0, 1, '2019-02-23 16:52:46', '2019-02-11 19:55:53', 2),
(129, 6, 3, 0, 1, '2019-09-16 21:27:30', '2019-02-11 19:55:54', 2),
(130, 15, 1, 0, 1, '2019-07-03 21:44:23', '2019-02-11 19:55:54', 2),
(131, 6, 2, 0, 1, '2019-02-23 16:50:37', '2019-02-11 19:55:54', 2),
(132, 15, 1, 0, 1, '2019-05-28 15:16:54', '2019-02-11 19:55:54', 2),
(133, 6, 1, 0, 1, '2019-02-27 14:57:27', '2019-02-11 19:55:54', 2),
(134, 6, 2, 0, 1, '2019-02-24 20:57:13', '2019-02-11 19:55:54', 2),
(139, 12, NULL, 0, 0, '2019-05-26 20:06:24', '2019-02-11 19:55:54', 2),
(140, 12, NULL, 0, 0, '2019-05-26 20:05:41', '2019-02-11 19:55:54', 2),
(141, 6, 3, 0, 1, '2019-09-16 21:29:23', '2019-02-11 19:55:54', 2),
(142, 6, 3, 1, 1, '2019-12-04 23:49:42', '2019-02-11 19:55:54', 2),
(143, 6, 3, 0, 1, '2019-09-16 21:31:25', '2019-02-11 19:55:54', 2),
(144, 6, 2, 0, 1, '2019-02-24 20:59:51', '2019-02-11 19:55:54', 2),
(145, 6, 2, 0, 1, '2019-02-24 20:58:45', '2019-02-11 19:55:54', 2),
(146, 12, NULL, 0, 0, '2019-02-25 23:47:28', '2019-02-11 19:55:54', 2),
(147, 12, NULL, 0, 0, '2019-02-26 00:04:28', '2019-02-11 19:55:54', 2),
(148, 6, 1, 0, 1, '2019-02-23 17:13:13', '2019-02-11 19:55:54', 2),
(149, 6, 1, 0, 1, '2019-02-23 17:14:18', '2019-02-11 19:55:54', 2),
(150, 6, 1, 0, 1, '2019-02-23 17:15:32', '2019-02-11 19:55:54', 2),
(151, 6, 1, 0, 1, '2019-02-23 17:16:40', '2019-02-11 19:55:54', 2),
(152, 6, 1, 0, 1, '2019-02-23 17:18:05', '2019-02-11 19:55:54', 2),
(153, 6, 1, 0, 1, '2019-02-23 17:19:01', '2019-02-11 19:55:54', 2),
(154, 6, 1, 0, 1, '2019-02-23 17:20:03', '2019-02-11 19:55:54', 2),
(155, 6, 1, 0, 1, '2019-02-23 17:21:24', '2019-02-11 19:55:54', 2),
(156, 6, 1, 0, 1, '2019-02-23 17:22:41', '2019-02-11 19:55:54', 2),
(157, 6, 1, 0, 1, '2019-02-23 17:23:45', '2019-02-11 19:55:55', 2),
(158, 6, 1, 0, 1, '2019-02-23 17:24:40', '2019-02-11 19:55:55', 2),
(159, 12, NULL, 0, 0, '2019-02-26 00:07:32', '2019-02-11 19:55:55', 2),
(160, 15, 2, 0, 1, '2019-07-03 20:28:57', '2019-02-11 19:55:55', 2),
(161, 6, 2, 0, 1, '2019-05-28 15:15:44', '2019-02-11 19:55:55', 2),
(162, 6, 2, 0, 1, '2019-05-28 15:16:00', '2019-02-11 19:55:55', 2),
(163, 6, 4, 0, 1, '2019-02-23 17:31:51', '2019-02-11 19:55:55', 2),
(164, 6, 4, 0, 1, '2019-02-23 17:32:47', '2019-02-11 19:55:55', 2),
(165, 6, 4, 0, 1, '2019-02-23 17:34:35', '2019-02-11 19:55:55', 2),
(167, 6, 4, 0, 1, '2019-02-23 17:37:34', '2019-02-11 19:55:55', 2),
(168, 6, 2, 0, 1, '2019-02-24 21:04:34', '2019-02-11 19:55:55', 2),
(169, 6, 2, 0, 1, '2019-02-24 21:05:26', '2019-02-11 19:55:55', 2),
(170, 6, 2, 0, 1, '2019-02-24 21:06:14', '2019-02-11 19:55:55', 2),
(171, 6, 2, 0, 1, '2019-07-04 21:06:41', '2019-02-11 19:55:55', 2),
(172, 6, 2, 0, 1, '2019-12-05 00:24:07', '2019-02-11 19:55:55', 2),
(173, 8, 2, 0, 1, '2019-09-17 19:38:58', '2019-02-11 19:55:55', 2),
(174, 18, NULL, 0, 1, '2019-02-24 19:48:57', '2019-02-24 19:48:57', 2),
(175, 18, NULL, 0, 1, '2019-02-24 19:52:56', '2019-02-24 19:52:56', 2),
(176, 18, NULL, 0, 1, '2019-02-24 19:58:38', '2019-02-24 19:58:38', 2),
(177, 15, 2, 0, 1, '2019-09-17 19:29:55', '2019-09-17 19:15:47', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_duplicate_check_rules`
--

CREATE TABLE `omeka_item_duplicate_check_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `element_ids` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_relations_properties`
--

CREATE TABLE `omeka_item_relations_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `vocabulary_id` int(10) UNSIGNED NOT NULL,
  `local_part` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_item_relations_properties`
--

INSERT INTO `omeka_item_relations_properties` (`id`, `vocabulary_id`, `local_part`, `label`, `description`) VALUES
(1, 1, 'relation', 'Relation', 'A related resource.'),
(2, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(3, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(4, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(5, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(6, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(7, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(8, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(9, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(10, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(11, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(12, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(13, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(14, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(15, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(16, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(17, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(18, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(19, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(20, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(21, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(22, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(23, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(24, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(25, 1, 'description', 'Description', 'An account of the resource.'),
(26, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(27, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(28, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(29, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(30, 1, 'language', 'Language', 'A language of the resource.'),
(31, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(32, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(33, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(34, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(35, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(36, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(37, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(38, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(39, 1, 'subject', 'Subject', 'The topic of the resource.'),
(40, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(41, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(43, 2, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(44, 2, 'citedBy', 'cited by', 'Relates a document to another document that cites the first document.'),
(45, 2, 'cites', 'cites', 'Relates a document to another document that is cited by the first document as reference, comment, review, quotation or for another purpose.'),
(46, 2, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(47, 2, 'reproducedIn', 'reproduced in', 'The resource in which another resource is reproduced.'),
(48, 2, 'affirmedBy', 'affirmed by', 'A legal decision that affirms a ruling.'),
(49, 2, 'reversedBy', 'reversed by', 'A legal decision that reverses a ruling.'),
(50, 2, 'subsequentLegalDecision', 'subsequent legal decision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(51, 2, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(52, 2, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(53, 3, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(54, 3, 'depiction', 'depiction', 'A depiction of some thing.'),
(55, 3, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(56, 3, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(57, 3, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(58, 3, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(59, 3, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(60, 3, 'logo', 'logo', 'A logo representing some thing.'),
(61, 3, 'made', 'made', 'Something that was made by this agent.'),
(62, 3, 'maker', 'maker', 'An agent that made this thing.'),
(63, 3, 'member', 'member', 'Indicates a member of a Group.'),
(64, 3, 'page', 'page', 'A page or document about this thing.'),
(65, 3, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(66, 3, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(67, 4, 'abridgement', 'abridgement', 'A property representing an abridgment of an expression.'),
(68, 4, 'abridgementOf', 'abridgement of', 'A property representing an expression that is abridged.'),
(69, 4, 'adaption', 'adaption', 'A property representing an adaption of a work or expression.'),
(70, 4, 'adaptionOf', 'adaption of', 'A property representing a work or expression that is adapted.'),
(71, 4, 'alternate', 'alternate', 'A property representing an alternative to a manifestation.'),
(72, 4, 'alternateOf', 'alternate of', 'A property representing a manifestation that is alternated.'),
(73, 4, 'arrangement', 'arrangement', 'A property representing an arrangement of an expression.'),
(74, 4, 'arrangementOf', 'arrangement of', 'A property representing an expression that is arranged.'),
(75, 4, 'complement', 'complement', 'A property representing a complement to a work or expression.'),
(76, 4, 'complementOf', 'complement of', 'A property representing a work or expression that is complemented.'),
(77, 4, 'creator', 'creator', 'A property representing an entity in some way responsible for the creation of a work.'),
(78, 4, 'creatorOf', 'creator of', 'A property representing a work that was in some way created by of an entity.'),
(79, 4, 'embodiment', 'embodiment', 'A property representing a manifestation that embodies an expression.'),
(80, 4, 'embodimentOf', 'embodiment of', 'A property representing an expression that is embodied by a manifestation.'),
(81, 4, 'exemplar', 'exemplar', 'A property representing an item that is an exemplar of a manifestation.'),
(82, 4, 'exemplarOf', 'exemplar of', 'A property representing the manifestation that is exemplified by a item.'),
(83, 4, 'imitation', 'imitation', 'A property representing an imitation of a work or expression.'),
(84, 4, 'imitationOf', 'imitation of', 'A property representing a work or expression that is imitated.'),
(85, 4, 'owner', 'owner', 'A property representing an entity that owns an item.'),
(86, 4, 'ownerOf', 'owner of', 'A property representing an item that is in some way owned an entity.'),
(87, 4, 'part', 'part', 'A property representing a part of an endeavour.'),
(88, 4, 'partOf', 'part of', 'A property representing an endeavour incorporating an endeavour.'),
(89, 4, 'producer', 'producer', 'A property representing an entity in some way responsible for producing a manifestation.'),
(90, 4, 'producerOf', 'producer of', 'A property representing a manifestation that was in some way produced an entity.'),
(91, 4, 'realization', 'realization', 'A property representing an expression that is an intellectual or artistic realization of a work.'),
(92, 4, 'realizationOf', 'realization of', 'A property representing the work that has been realized by an expression.'),
(93, 4, 'realizer', 'realizer', 'A property representing an entity in some way responsible for realizing an expression.'),
(94, 4, 'realizerOf', 'realizer of', 'A property representing an expression that was in some way realized by an entity.'),
(95, 4, 'reconfiguration', 'reconfiguration', 'A property representing a recongifuration of an item.'),
(96, 4, 'reconfigurationOf', 'reconfiguration of', 'A property representing an item that is reconfigured.'),
(97, 4, 'relatedEndeavour', 'related endeavour', 'A property representing another endeavour that is related in some way to an endeavour.'),
(98, 4, 'reproduction', 'reproduction', 'A property representing a reproduction of a manifestation or item.'),
(99, 4, 'reproductionOf', 'reproduction of', 'A property representing a manifestation or item that is reproduced.'),
(100, 4, 'responsibleEntity', 'responsible entity', 'A property representing an entity in some way responsible for an endeavour.'),
(101, 4, 'responsibleEntityOf', 'responsible entity of', 'A property representing an endeavour that is the responsibility of an entity.'),
(102, 4, 'revision', 'revision', 'A property representing a revision of an expression.'),
(103, 4, 'revisionOf', 'revision of', 'A property representing an expression that is revised.'),
(104, 4, 'successor', 'successor', 'A property representing a successor to a work or expression.'),
(105, 4, 'successorOf', 'successor of', 'A property representing a work or expression that is succeeded.'),
(106, 4, 'summarization', 'summarization', 'A property representing a summarization of a work or expression.'),
(107, 4, 'summarizationOf', 'summarization of', 'A property representing a work or expression that is summarized.'),
(108, 4, 'supplement', 'supplement', 'A property representing a supplement to a work or expression.'),
(109, 4, 'supplementOf', 'supplement of', 'A property representing a work or expression that is supplemented.'),
(110, 4, 'transformation', 'transformation', 'A property representing a transformation of a work or expression.'),
(111, 4, 'transformationOf', 'transformation of', 'A property representing a work or expression that is transformed.'),
(112, 4, 'translation', 'translation', 'A property representing a translation of an expression.'),
(113, 4, 'translationOf', 'translation of', 'A property representing an expression that is translated.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_relations_relations`
--

CREATE TABLE `omeka_item_relations_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_item_id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `object_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_relations_vocabularies`
--

CREATE TABLE `omeka_item_relations_vocabularies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `namespace_prefix` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `namespace_uri` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_item_relations_vocabularies`
--

INSERT INTO `omeka_item_relations_vocabularies` (`id`, `name`, `description`, `namespace_prefix`, `namespace_uri`, `custom`) VALUES
(1, 'Dublin Core', 'Relations defined by DCMI Metadata Terms: http://dublincore.org/documents/dcmi-terms/', 'dcterms', 'http://purl.org/dc/terms/', 0),
(2, 'BIBO', 'Relations defined by the Bibliographic Ontology (BIBO): http://bibotools.googlecode.com/svn/bibo-ontology/trunk/doc/index.html', 'bibo', 'http://purl.org/ontology/bibo/', 0),
(3, 'FOAF', 'Relations defined by the Friend of a Friend vocabulary (FOAF): http://xmlns.com/foaf/spec/', 'foaf', 'http://xmlns.com/foaf/0.1/', 0),
(4, 'FRBR', 'Relations defined by the Functional Requirements for Bibliographic Records (FRBR): http://vocab.org/frbr/core.html', 'frbr', 'http://purl.org/vocab/frbr/core#', 0),
(5, 'Custom', 'Custom vocabulary containing relations defined for this Omeka instance.', '', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_types`
--

CREATE TABLE `omeka_item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.'),
(18, 'Annotation', 'An OA-compliant annotation'),
(19, 'Tipo de Obra', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_item_types_elements`
--

CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, 1),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL),
(48, 18, 62, 1),
(49, 18, 63, 2),
(50, 18, 1, 3),
(51, 18, 64, 4),
(52, 6, 10, 2),
(53, 6, 85, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_keys`
--

CREATE TABLE `omeka_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_options`
--

CREATE TABLE `omeka_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(14, 'admin_theme', 'default'),
(16, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(17, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(18, 'disable_default_file_validation', ''),
(20, 'display_system_info', '1'),
(21, 'html_purifier_is_enabled', '1'),
(22, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(23, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(26, 'search_record_types', 'a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(32, 'iiifitems_file_element_set', '4'),
(33, 'iiifitems_file_atid_element', '52'),
(34, 'iiifitems_file_json_element', '53'),
(35, 'iiifitems_item_element_set', '5'),
(36, 'iiifitems_item_display_element', '54'),
(37, 'iiifitems_item_atid_element', '55'),
(38, 'iiifitems_item_json_element', '56'),
(39, 'iiifitems_collection_element_set', '6'),
(40, 'iiifitems_collection_atid_element', '57'),
(41, 'iiifitems_collection_type_element', '58'),
(42, 'iiifitems_collection_parent_element', '59'),
(43, 'iiifitems_collection_json_element', '60'),
(45, 'iiifitems_annotation_item_type', '18'),
(46, 'iiifitems_annotation_on_element', '62'),
(47, 'iiifitems_annotation_selector_element', '63'),
(48, 'iiifitems_annotation_elements', '[62,63]'),
(49, 'iiifitems_annotation_text_element', '1'),
(50, 'iiifitems_annotation_xywh_element', '64'),
(55, 'iiifitems_collection_uuid_element', '61'),
(56, 'iiifitems_item_uuid_element', '65'),
(156, 'csv_import_memory_limit', ''),
(157, 'csv_import_php_path', ''),
(178, 'csv_import_column_delimiter', ','),
(179, 'csv_import_element_delimiter', ''),
(180, 'csv_import_tag_delimiter', ','),
(181, 'csv_import_file_delimiter', ','),
(184, 'item_relations_public_append_to_items_show', '1'),
(185, 'item_relations_relation_format', 'prefix_local_part'),
(189, 'avantelements_display_order', '[]'),
(190, 'avantelements_external_link', '[]'),
(191, 'avantelements_implicit_link', '[]'),
(192, 'avantelements_validation', '[]'),
(193, 'avantelements_allow_add_input', '[]'),
(194, 'avantelements_allow_html', '[]'),
(195, 'avantelements_text_field', '[]'),
(196, 'avantelements_select_field', '[]'),
(197, 'avantelements_checkbox_field', '[]'),
(198, 'avantelements_readonly_field', '[]'),
(199, 'avantelements_default_value', '[]'),
(200, 'avantelements_suggest', '[]'),
(201, 'avantelements_title_sync', '[]'),
(202, 'avantelements_callback', '[]'),
(203, 'avantelements_hide_descriptions', '0'),
(207, 'user_profiles_required_elements', 'a:0:{}'),
(208, 'user_profiles_required_multielements', 'a:0:{}'),
(250, 'vra-core-ignore-attributes', '0'),
(251, 'vra-core-ignore-elements', '0'),
(252, 'vra-core-hide-public-details', '1'),
(253, 'vra-core-hide-public-attributes', '1'),
(254, 'vra-core-hide-public-datadate', '0'),
(442, 'avantrelationships_max_direct_shown', '10'),
(443, 'avantrelationships_max_indirect_shown', '10'),
(444, 'avantrelationships_implicit', '[]'),
(445, 'avantrelationships_custom', '[]'),
(446, 'avantrelationships_visualization', '2'),
(447, 'avantrelationships_delete_tables', '0'),
(479, 'hide_elements_settings', '{\"override\":[],\"form\":[],\"admin\":[],\"public\":[],\"search\":[]}'),
(493, 'avantsearch_layouts', '{\"1\":{\"name\":\"Details\",\"admin\":false}}'),
(494, 'avantsearch_layout_selector_width', '100'),
(495, 'avantsearch_columns', '[]'),
(496, 'avantsearch_detail_layout', '[[51,49]]'),
(497, 'avantsearch_index_view', '[]'),
(498, 'avantsearch_tree_view', '[]'),
(499, 'avantsearch_hierarchies', '[]'),
(500, 'avantsearch_integer_sorting', '[]'),
(501, 'avantsearch_titles_only', '1'),
(502, 'avantsearch_relationships_view', '1'),
(503, 'avantsearch_address_sorting', '0'),
(504, 'theme_customeka-master_options', 'a:20:{s:9:\"color_one\";s:7:\"#0B2161\";s:9:\"color_two\";s:5:\"white\";s:16:\"hide_header_text\";s:1:\"0\";s:13:\"heading_color\";s:7:\"#00008b\";s:17:\"heading_text_font\";s:5:\"white\";s:17:\"heading_font_size\";s:5:\"1.0em\";s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";s:0:\"\";s:13:\"homepage_text\";s:0:\"\";s:14:\"body_text_font\";s:0:\"\";s:14:\"body_font_size\";s:0:\"\";s:11:\"footer_text\";s:0:\"\";s:24:\"display_footer_copyright\";s:1:\"0\";s:17:\"item_file_gallery\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"1\";s:23:\"exhibits_minimal_header\";s:1:\"0\";s:16:\"background_image\";s:36:\"e48b67eb004743c846c05076cc16c81f.jpg\";s:17:\"header_background\";s:36:\"ed941e95ab10227ab90c5e41aa261e6a.jpg\";}'),
(547, 'css_editor_css', 'h1 {\ncolor:#000\n}\n\n.collection {\nmax-width:150px\n}\n\nh2 {\ncolor:#000;\nline-height:14px;\nborder:none\n}\n\n.permalink {\ncolor:#C0C0C0\n}\n\n.show .item-file {\ndisplay:none\n}\n\nh3 {\nborder:none;\nline-height:16px;\ncolor:#000\n}\n\n#primary div, .show #content #sidebar div {\nborder-style:none;\nborder-color:transparent\n}\n\n#detail-image-container {\ndisplay:none\n}\n\n#content .view-items-link {\ndisplay:none;\nmax-height:0\n}\n\n.elementaire #content .page-input {\ncolor:#000\n}\n\n.elementaire .top {\nbackground-color:#fff\n}\n\n.elementaire #search-form {\nbackground-color:#f8f8f8\n}\n\n.item-img {\nwidth:40%\n}\n\ndiv.item.hentry {\nmax-width:150px;\nborder-style:none\n}'),
(558, 'site_title', 'Biblioteca Digital da Produção Artística da ECA/USP'),
(559, 'description', ''),
(560, 'administrator_email', 'tiago.murakami@dt.sibi.usp.br'),
(561, 'copyright', ''),
(562, 'author', ''),
(563, 'tag_delimiter', ','),
(564, 'path_to_convert', '/usr/bin'),
(599, 'omeka_version', '2.7'),
(606, 'avantcommon_identifier', '43'),
(607, 'avantcommon_identifier_alias', '0'),
(608, 'avantcommon_identifier_prefix', 'Item '),
(609, 'avantcommon_private_elements', '[]'),
(610, 'avantcommon_unsused_elements', '[]'),
(611, 'avantcommon_year_start', '0'),
(612, 'avantcommon_year_end', '0'),
(613, 'avantcommon_lightbox', '0'),
(614, 'exhibit_builder_sort_browse', 'added'),
(615, 'simple_vocab_files', '0'),
(637, 'theme_berlin_options', 'a:12:{s:4:\"logo\";N;s:12:\"header_image\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"0\";s:17:\"item_file_display\";s:1:\"0\";s:17:\"theme_config_csrf\";N;}'),
(639, 'theme_default_options', 'a:18:{s:10:\"text_color\";s:7:\"#444444\";s:16:\"background_color\";s:7:\"#FFFFFF\";s:10:\"link_color\";s:7:\"#888888\";s:12:\"button_color\";s:7:\"#000000\";s:17:\"button_text_color\";s:7:\"#FFFFFF\";s:18:\"header_title_color\";s:7:\"#000000\";s:4:\"logo\";N;s:17:\"header_background\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:17:\"item_file_gallery\";s:1:\"1\";s:19:\"use_advanced_search\";s:1:\"1\";s:17:\"theme_config_csrf\";N;}'),
(641, 'theme_seasons_options', 'a:13:{s:11:\"style_sheet\";s:6:\"winter\";s:4:\"logo\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:17:\"item_file_gallery\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"1\";s:12:\"exhibits_nav\";s:4:\"side\";s:17:\"theme_config_csrf\";N;}'),
(698, 'iiifitems_bridge_prefix', 'http://172.16.8.55:5004/{FULLNAME}'),
(699, 'iiifitems_mirador_path', 'http://172.16.8.55/plugins/IiifItems/views/shared/js/mirador'),
(700, 'iiifitems_mirador_css', 'css/mirador-combined.css'),
(701, 'iiifitems_mirador_js', 'mirador.js'),
(702, 'iiifitems_show_public_catalogue', '1'),
(703, 'iiifitems_show_mirador_collections', '0'),
(704, 'iiifitems_show_mirador_manifests', '1'),
(705, 'iiifitems_show_mirador_items', '1'),
(706, 'iiifitems_show_mirador_files', '1'),
(710, 'public_theme', 'bigpicture'),
(723, 'public_navigation_main', '[{\"uid\":\"\\/items\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Ver Itens\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/items\\/browse\"},{\"uid\":\"\\/collections\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Ver as Cole\\u00e7\\u00f5es\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/collections\\/browse\"},{\"uid\":\"\\/iiif-items\\/tree\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Navegar pelo cat\\u00e1logo\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/iiif-items\\/tree\"},{\"uid\":\"\\/exhibits\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Ver Exposi\\u00e7\\u00f5es\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":4,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/exhibits\"},{\"uid\":\"\\/sobre\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Sobre\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":5,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/sobre\"}]'),
(724, 'homepage_uri', '/'),
(734, 'use_square_thumbnail', '1'),
(735, 'fullsize_constraint', '50000'),
(736, 'thumbnail_constraint', '300'),
(737, 'square_thumbnail_constraint', '300'),
(738, 'per_page_admin', '25'),
(739, 'per_page_public', '30'),
(740, 'show_empty_elements', '0'),
(741, 'show_element_set_headings', '0'),
(742, 'link_to_file_metadata', '0'),
(744, 'theme_bigpicture_options', 'a:9:{s:4:\"logo\";N;s:21:\"display_featured_item\";s:1:\"0\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"0\";s:21:\"homepage_recent_items\";s:2:\"10\";s:13:\"homepage_text\";s:1019:\"<p><span style=\"font-weight:400;\">A Biblioteca Digital da Produção Artística da ECA/USP tem como objetivo reunir imagens das obras produzidas pelos artistas ligados à Escola, destacando as que foram apresentadas como trabalhos acadêmicos de graduação, mestrado e doutorado. O registro e a divulgação dessa produção </span><span style=\"font-weight:400;\"> vem atender a uma demanda </span><span style=\"font-weight:400;\">da própria comunidade, que deseja ter acesso às imagens de trabalhos criados pelos artistas da </span><span style=\"font-weight:400;\">casa, e à necessidade institucional de criar uma ferramenta adequada ao registro e divulgação da </span><span style=\"font-weight:400;\">produção artística que se expressa, fundamentalmente, por imagens. </span></p>\n<p><span style=\"font-weight:400;\">Esperamos com este projeto valorizar a produção </span><span style=\"font-weight:400;\">artística, democratizar o acesso e aumentar a visibilidade dos jovens artistas formados pela ECA.</span></p>\";s:11:\"footer_text\";s:26:\"Universidade de São Paulo\";s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"1\";}'),
(745, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:4:\"2.7\n\";s:12:\"last_updated\";i:1575980148;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_plugins`
--

CREATE TABLE `omeka_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'IiifItems', 1, '1.1.0'),
(8, 'VraCore', 1, '1.2'),
(11, 'ExhibitBuilder', 1, '3.4.2'),
(12, 'ShortcodeCarousel', 1, '1.0.1'),
(13, 'AvantRelationships', 1, '2.0.0'),
(17, 'SimpleVocab', 1, '2.2.2'),
(18, 'SimplePages', 1, '3.1.2'),
(20, 'ItemDuplicateCheck', 1, '0.2.0'),
(25, 'AvantCommon', 1, '2.1.0'),
(26, 'Coins', 1, '2.0.3'),
(27, 'DerivativeImages', 1, '2.0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_processes`
--

CREATE TABLE `omeka_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `stopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_processes`
--

INSERT INTO `omeka_processes` (`id`, `class`, `user_id`, `pid`, `status`, `args`, `started`, `stopped`) VALUES
(1, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:104:\"{\"className\":\"IiifItems_Job_AddUuid\",\"options\":[],\"createdAt\":\"2019-02-06T11:44:10-02:00\",\"createdBy\":1}\";}', '2019-02-06 13:44:10', '2019-02-06 13:44:10'),
(2, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"7ac47d56-53ab-4b6b-b0fc-8b54914b1cdd\"},\"createdAt\":\"2019-02-06T11:45:27-02:00\",\"createdBy\":1}\";}', '2019-02-06 13:45:27', '2019-02-06 13:45:27'),
(3, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"4527d69f-7790-4cb3-b690-d20aff3116d3\"},\"createdAt\":\"2019-02-06T11:55:21-02:00\",\"createdBy\":1}\";}', '2019-02-06 13:55:21', '2019-02-06 13:55:21'),
(4, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"81202f1f-3821-4368-8a8d-68f1bd236857\"},\"createdAt\":\"2019-02-06T11:57:46-02:00\",\"createdBy\":1}\";}', '2019-02-06 13:57:46', '2019-02-06 13:57:46'),
(5, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"badf8fb5-cef5-475e-b41a-01904abcfa17\"},\"createdAt\":\"2019-02-06T12:04:36-02:00\",\"createdBy\":1}\";}', '2019-02-06 14:04:36', '2019-02-06 14:04:37'),
(6, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"968380fe-d8fe-4cb9-926a-29e4b78eac4a\"},\"createdAt\":\"2019-02-06T12:13:04-02:00\",\"createdBy\":1}\";}', '2019-02-06 14:13:04', '2019-02-06 14:13:04'),
(7, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f3906b12-5793-4e25-a906-9f25864c2243\"},\"createdAt\":\"2019-02-06T12:16:53-02:00\",\"createdBy\":1}\";}', '2019-02-06 14:16:54', '2019-02-06 14:16:54'),
(8, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"12084768-9ebd-41b8-ac7e-e6d001d02892\"},\"createdAt\":\"2019-02-06T12:21:02-02:00\",\"createdBy\":1}\";}', '2019-02-06 14:21:02', '2019-02-06 14:21:02'),
(9, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:112:\"{\"className\":\"Import_Job_Import\",\"options\":{\"importId\":1},\"createdAt\":\"2019-02-07T13:37:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:37:47', '2019-02-07 15:37:48'),
(10, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"c96ad8a8-a1e7-43a4-8a95-3e95df33ce6f\"},\"createdAt\":\"2019-02-07T13:41:42-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:42', '2019-02-07 15:41:42'),
(11, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"0e3a689d-456d-45fe-a722-044d08781469\"},\"createdAt\":\"2019-02-07T13:41:42-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:42', '2019-02-07 15:41:43'),
(12, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f16cce38-5a6f-469a-89c6-18657a9f0dad\"},\"createdAt\":\"2019-02-07T13:41:42-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:42', '2019-02-07 15:41:43'),
(13, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"48ac4be4-596a-4217-9530-69753daa0653\"},\"createdAt\":\"2019-02-07T13:41:42-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(14, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"2f837977-fca6-488e-bd96-58a53aebf88d\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(15, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"37f7f4e1-685f-4d2b-90ec-18c325b42007\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(16, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"40b08f93-619f-4c49-9e3f-8fa251232476\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(17, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d715dec4-f73e-4da6-8e99-b0f61e6b266d\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(18, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"6c518089-ebec-443b-aec5-4213edefe854\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(19, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"9b4fdf03-6170-47c3-b18b-5df375f1f33e\"},\"createdAt\":\"2019-02-07T13:41:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:43', '2019-02-07 15:41:43'),
(20, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d85d090e-47aa-4d0a-b76c-d3fb15ba6338\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:47', '2019-02-07 15:41:47'),
(21, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d355773b-826e-443f-b332-8a1ec5882214\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:47', '2019-02-07 15:41:47'),
(22, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"2514cdb5-5f05-47b8-a532-d426f525ebbb\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:47', '2019-02-07 15:41:47'),
(23, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"059c29a1-2263-45ef-a94e-b488dd7d7ecc\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:47', '2019-02-07 15:41:48'),
(24, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d7f35f6f-d036-439b-a813-cac7fa7b8300\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:47', '2019-02-07 15:41:48'),
(25, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"57199818-24ff-4fc8-b9ff-369fa312aa29\"},\"createdAt\":\"2019-02-07T13:41:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:48', '2019-02-07 15:41:48'),
(26, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"a8cb5747-6378-4da6-8328-426a561448d1\"},\"createdAt\":\"2019-02-07T13:41:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:48', '2019-02-07 15:41:48'),
(27, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e72587da-01c2-42fc-a2c1-a23290edb24f\"},\"createdAt\":\"2019-02-07T13:41:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:48', '2019-02-07 15:41:48'),
(28, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"49b97367-9f99-4989-9f75-1b70d59fa897\"},\"createdAt\":\"2019-02-07T13:41:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:48', '2019-02-07 15:41:48'),
(29, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"190399f2-76c2-4c6d-9f0d-7683e2d1b70b\"},\"createdAt\":\"2019-02-07T13:41:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:48', '2019-02-07 15:41:48'),
(30, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"45f91193-1f0f-4988-bd94-5cec8bded437\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(31, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"bb49d01f-a50c-4382-803a-959fa7d09be7\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(32, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"791fe471-7c21-4967-b8ad-6d51c089c5ac\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(33, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f3dcc7d4-ee66-4e58-9aad-180162378741\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(34, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"3b9913a0-7c2e-40c0-9de3-39c9611ea84e\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(35, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"9c8e31fc-faa2-46a7-a0d7-73c5af9f6cab\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(36, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d407346f-e18f-4538-9497-c3ddeea6a793\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(37, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"99ef04c1-bfc0-4b28-941b-61abd92f43d2\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:53'),
(38, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d21b4a85-65c4-480d-b7ae-20252b4c5215\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:54'),
(39, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"0dc4673e-95b3-48c8-be20-fb4985b2ecf3\"},\"createdAt\":\"2019-02-07T13:41:53-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:53', '2019-02-07 15:41:54'),
(40, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"b445b4eb-8a86-4d7a-8ac3-1e78de622a66\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:57', '2019-02-07 15:41:57'),
(41, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"ffa1f8a1-4f5f-40b3-b187-4e281bc5d672\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:57', '2019-02-07 15:41:57'),
(42, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"35cab29e-fd47-424f-9d85-27f124cdb513\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:57', '2019-02-07 15:41:57'),
(43, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"952b0c29-e1d2-4046-8187-bf76fd63d5a2\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:57', '2019-02-07 15:41:58'),
(44, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8ee4e7b6-35c3-49c8-b3b9-9f8c45fc47e2\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:57', '2019-02-07 15:41:58'),
(45, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"294ac29e-ceec-440d-abda-e6071be116e8\"},\"createdAt\":\"2019-02-07T13:41:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:58', '2019-02-07 15:41:58'),
(46, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e880912d-4b9e-4389-9dd1-10eeeb31cb7a\"},\"createdAt\":\"2019-02-07T13:41:58-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:58', '2019-02-07 15:41:58'),
(47, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8a4a8f95-1556-4ce8-978c-ac5666b0dd23\"},\"createdAt\":\"2019-02-07T13:41:58-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:58', '2019-02-07 15:41:58'),
(48, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"466de05e-4649-47e4-aa95-da4ce07d2445\"},\"createdAt\":\"2019-02-07T13:41:58-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:58', '2019-02-07 15:41:58'),
(49, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"13a33ec2-57d5-4d51-92a9-93113fc387f2\"},\"createdAt\":\"2019-02-07T13:41:58-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:41:58', '2019-02-07 15:41:58'),
(50, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"27909a44-8b85-41ee-a8b3-38d44f6e9ac2\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(51, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"775f2bea-223f-4d3a-9d8d-8c3b7d784064\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(52, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"393217c7-8778-4afd-b824-ab0b613c8153\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(53, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f87ba44c-5821-455c-b9cb-837b3274b5ef\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(54, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d68749dc-9cc5-43a2-8207-1cde33899877\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(55, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"2ab9ba6d-1cd8-4e5d-abaf-211581855d66\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(56, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"46567158-485d-4875-b59e-404965dc416d\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(57, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d7f74be2-fa67-48c3-b2c1-75dabfe33fa3\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(58, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"561a52c1-f4ac-40ed-9d00-16b94aa45bd2\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:02'),
(59, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"453b0afd-80a3-4efb-868c-686b2e197aff\"},\"createdAt\":\"2019-02-07T13:42:02-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:02', '2019-02-07 15:42:03'),
(60, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"cc12a359-14ec-4e01-a8e1-fb64c196f24c\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:07'),
(61, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"b631a1d4-5873-482c-928b-6cb64312e34e\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:07'),
(62, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f70d5fdf-f5da-4163-8dc4-5dadbbddb2d4\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:07'),
(63, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"475704ff-19bb-406a-bd1e-dafb4423057f\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:07'),
(64, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"6d50ee64-b6a3-44b7-8adc-e1d98ce0c4b6\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:07'),
(65, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f0839ec2-563b-4890-9a63-f0ed8e5ffae3\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:08'),
(66, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8669c8f0-1210-41c2-8b17-e18c949414a2\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:07', '2019-02-07 15:42:08'),
(67, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"5104de47-9b36-42dd-a187-0989bc256cdc\"},\"createdAt\":\"2019-02-07T13:42:07-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:08', '2019-02-07 15:42:08'),
(68, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"c309160b-8d6d-42fd-ae4d-7ab9e29f940e\"},\"createdAt\":\"2019-02-07T13:42:08-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:08', '2019-02-07 15:42:08'),
(69, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f3fb363f-aa26-4c86-b132-d51bb8efe9b7\"},\"createdAt\":\"2019-02-07T13:42:08-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:08', '2019-02-07 15:42:08'),
(70, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"40814ca1-496c-466c-b27d-9f3db6b721e6\"},\"createdAt\":\"2019-02-07T13:42:16-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:16', '2019-02-07 15:42:16'),
(71, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"36d15ef7-808a-4afd-a883-346585012599\"},\"createdAt\":\"2019-02-07T13:42:16-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:16', '2019-02-07 15:42:16'),
(72, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"4ab64dd2-749f-4211-aeaa-9c32c493af06\"},\"createdAt\":\"2019-02-07T13:42:16-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:16', '2019-02-07 15:42:16'),
(73, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"fbdfb2f2-4a26-4b0f-9bb5-fc46d13d7722\"},\"createdAt\":\"2019-02-07T13:42:16-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:16', '2019-02-07 15:42:17'),
(74, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"1fb31070-662c-4f15-8218-256e42b00ab9\"},\"createdAt\":\"2019-02-07T13:42:16-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:42:16', '2019-02-07 15:42:17'),
(75, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:112:\"{\"className\":\"Import_Job_Import\",\"options\":{\"importId\":2},\"createdAt\":\"2019-02-07T13:43:23-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:43:23', '2019-02-07 15:43:24'),
(76, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"b0b19f42-08bc-44b7-ab0f-c55009b49560\"},\"createdAt\":\"2019-02-07T13:44:42-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:42', '2019-02-07 15:44:43'),
(77, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"da03480a-03ca-43ef-8c2b-1eeb3cfee8da\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(78, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"7b098a85-4b31-4044-bd1a-f69dfb322abb\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(79, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"1f8143a4-dcad-4922-bc69-2f25f2750042\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(80, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"bef062b2-af18-4959-948a-3af4d2ec8ac9\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(81, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"418b1cbe-e1dd-4da7-abb9-0b191dcb5bf0\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(82, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8faca017-b9f0-4ca2-bf1c-14e89aea3757\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(83, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8ff3bef0-3f90-4306-9724-eeb2bb9f04d0\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(84, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"23699b23-b181-4aaa-b18e-b6daebffc537\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(85, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e16d8a9d-81f7-49ef-96b1-9f6e15ec8094\"},\"createdAt\":\"2019-02-07T13:44:43-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:43', '2019-02-07 15:44:43'),
(86, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e90ef9db-29ac-4fb5-a5e9-60d79ee6b0c0\"},\"createdAt\":\"2019-02-07T13:44:47-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(87, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"76d229c3-848a-4302-8b1e-39f3176a8c79\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(88, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"a4adecf5-f7ad-4289-9de8-5117c29588f5\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(89, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"b9b23568-3735-4bbd-a1a7-d87a4f815e41\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(90, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"2832fb75-9ba0-4cbf-a293-e1dae3e4d429\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(91, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"4bc198f4-5340-491b-afe9-6a5714641e2c\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(92, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d403267f-4e09-4c39-905b-321cc8e7aa96\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(93, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"595745d2-ff7b-4919-9458-92cf21160b6d\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(94, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"920966f5-734e-442e-b4cc-db8735acbd99\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(95, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"a2325e66-443c-45f5-8298-66d7df5fd21a\"},\"createdAt\":\"2019-02-07T13:44:48-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:48', '2019-02-07 15:44:48'),
(96, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"fbb00029-88e7-4b96-be32-bfb62b1b1816\"},\"createdAt\":\"2019-02-07T13:44:51-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:51', '2019-02-07 15:44:52'),
(97, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"59a3699c-8ac7-4e17-aa5b-447f24589887\"},\"createdAt\":\"2019-02-07T13:44:51-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(98, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"9fa3e8d3-2fbf-46c1-9db7-65a23c09558b\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(99, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"6444c457-3e3c-4b5c-8374-9c41a8281f3e\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(100, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"8d8c5e3f-591a-4d2d-9f99-80b32c57d1eb\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(101, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"fe20702c-d9f7-4843-bbcc-44228903fea1\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(102, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"ef66a580-7cc3-4677-ac5a-e524591c935b\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(103, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"f3ce6168-3f1b-48f8-adc2-403faffb57b2\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(104, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"c4dfbf40-be9a-402b-a32a-43f3ce9771c5\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(105, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"cdcecd22-851d-40f2-888b-82a6336fbce0\"},\"createdAt\":\"2019-02-07T13:44:52-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:52', '2019-02-07 15:44:52'),
(106, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"91ac950b-8852-4ae5-8c08-6e4730b3c1a9\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(107, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"0e5e96e5-0320-4cbf-b5bc-ff75521a2081\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(108, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e4cbf331-7948-492d-8aff-bd71165a4479\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(109, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"a7ca30c4-7a4d-42c3-a156-9e70d4f4d0e9\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(110, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"7baf4ed3-f05d-4723-93b6-b37ab7853094\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(111, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"ff4fd52c-5e8e-49b5-8b12-6a10cda429dd\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(112, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"9bb0753e-1637-48c3-a58c-1a0c6f030924\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:57'),
(113, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"36125bac-0c98-4c40-95c7-c60ca72a6d1c\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:58'),
(114, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"dfee04f5-5230-4820-8b11-0f87b45c195f\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:57', '2019-02-07 15:44:58'),
(115, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"07928f29-e2c1-4a3c-a9c1-6801bb0515d2\"},\"createdAt\":\"2019-02-07T13:44:57-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:44:58', '2019-02-07 15:44:58'),
(116, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"602bbc98-b8a1-433a-9171-f557864a1d35\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(117, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"ed61416d-18f6-449c-a2be-5912abf11955\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(118, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"b5736eac-92c1-4db5-aa34-31cdf7baffe7\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(119, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"81cdfb2d-fa8c-4721-ac72-dc7ef7eb659c\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(120, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"4e912370-ef26-4e82-a26f-8e7ac41e2fd1\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(121, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"44d9aa00-352d-4d73-9de9-f0fb7ed1575d\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(122, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"d5585b49-b2bd-4f78-a285-a90c83eccc4c\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(123, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"dd5c7770-eb8d-46d8-9c39-546d73b8fd8b\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(124, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"6f6dbd98-af2d-493d-8aec-e51ed8fa542f\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:03'),
(125, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"548e700f-dc10-4381-9db7-9df1711e40bd\"},\"createdAt\":\"2019-02-07T13:45:03-02:00\",\"createdBy\":2}\";}', '2019-02-07 15:45:03', '2019-02-07 15:45:04'),
(126, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:168:\"{\"className\":\"CsvImport_ImportTask\",\"options\":{\"importId\":1,\"memoryLimit\":null,\"batchSize\":null,\"method\":\"start\"},\"createdAt\":\"2019-02-11T17:55:53-02:00\",\"createdBy\":2}\";}', '2019-02-11 19:55:53', '2019-02-11 19:55:55'),
(127, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"fbed5f26-7c39-4e37-a587-6377176e46ff\"},\"createdAt\":\"2019-02-13T12:09:06-02:00\",\"createdBy\":2}\";}', '2019-02-13 14:09:06', '2019-02-13 14:09:06'),
(128, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:342:\"{\"className\":\"Job_ItemBatchEditAll\",\"options\":{\"params\":{\"sort_field\":\"added\",\"sort_dir\":\"d\"},\"delete\":null,\"metadata\":{\"public\":\"1\",\"featured\":\"\",\"item_type_id\":\"\",\"collection_id\":\"\",\"tags\":\"\"},\"custom\":{\"item_relations_property_id\":\"\",\"item_relations_item_relation_object_item_id\":\"\"}},\"createdAt\":\"2019-02-17T14:02:12-03:00\",\"createdBy\":2}\";}', '2019-02-17 17:02:12', '2019-02-17 17:02:13'),
(129, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"6d70f46c-296a-4ed9-8cff-8b351d935005\"},\"createdAt\":\"2019-02-23T13:43:57-03:00\",\"createdBy\":2}\";}', '2019-02-23 16:43:57', '2019-02-23 16:43:57'),
(130, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"1bd476c2-2090-4452-b08b-a560fcd2fb79\"},\"createdAt\":\"2019-02-23T13:45:17-03:00\",\"createdBy\":2}\";}', '2019-02-23 16:45:17', '2019-02-23 16:45:17'),
(131, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"234097e6-458c-46ce-b4e2-036cd5a51d12\"},\"createdAt\":\"2019-02-23T13:48:58-03:00\",\"createdBy\":2}\";}', '2019-02-23 16:48:58', '2019-02-23 16:48:59'),
(132, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"e99d142c-3c13-4c15-a85f-d3d202bd1f72\"},\"createdAt\":\"2019-02-23T13:55:19-03:00\",\"createdBy\":2}\";}', '2019-02-23 16:55:19', '2019-02-23 16:55:19'),
(133, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:167:\"{\"className\":\"IiifItems_Job_RemoveSubannotations\",\"options\":{\"item_uuid\":\"4bf15901-57e2-477b-911a-de4aadf11ef4\"},\"createdAt\":\"2019-02-23T14:36:12-03:00\",\"createdBy\":2}\";}', '2019-02-23 17:36:12', '2019-02-23 17:36:12'),
(134, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:195:\"{\"className\":\"IiifItems_Job_AddAnnotationThumbnail\",\"options\":{\"originalItemId\":169,\"annotationItemId\":174,\"dims\":[\"529\",\"696\",\"741\",\"310\"]},\"createdAt\":\"2019-02-24T16:48:57-03:00\",\"createdBy\":2}\";}', '2019-02-24 19:48:57', '2019-02-24 19:48:58'),
(135, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:195:\"{\"className\":\"IiifItems_Job_AddAnnotationThumbnail\",\"options\":{\"originalItemId\":134,\"annotationItemId\":175,\"dims\":[\"340\",\"127\",\"150\",\"205\"]},\"createdAt\":\"2019-02-24T16:52:56-03:00\",\"createdBy\":2}\";}', '2019-02-24 19:52:56', '2019-02-24 19:52:56'),
(136, 'Omeka_Job_Process_Wrapper', 2, NULL, 'completed', 'a:1:{s:3:\"job\";s:197:\"{\"className\":\"IiifItems_Job_AddAnnotationThumbnail\",\"options\":{\"originalItemId\":126,\"annotationItemId\":176,\"dims\":[\"1527\",\"2225\",\"740\",\"734\"]},\"createdAt\":\"2019-02-24T16:58:38-03:00\",\"createdBy\":2}\";}', '2019-02-24 19:58:38', '2019-02-24 19:58:39'),
(137, 'Omeka_Job_Process_Wrapper', 1, NULL, 'completed', 'a:1:{s:3:\"job\";s:164:\"{\"className\":\"DerivativeImagesJob\",\"options\":{\"process_type\":\"all\",\"derivative_types\":null,\"mime_types\":null},\"createdAt\":\"2019-12-05T20:39:19+00:00\",\"createdBy\":1}\";}', '2019-12-05 22:39:20', '2019-12-05 22:39:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_records_tags`
--

CREATE TABLE `omeka_records_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_record_relations_properties`
--

CREATE TABLE `omeka_record_relations_properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `vocabulary_id` int(10) UNSIGNED NOT NULL,
  `local_part` varchar(100) NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `omeka_record_relations_properties`
--

INSERT INTO `omeka_record_relations_properties` (`id`, `vocabulary_id`, `local_part`, `label`, `description`) VALUES
(1, 1, 'account_of', 'has account', 'The user account relates to this person'),
(2, 1, 'has_space', 'has space', 'The resource is in the object sioc:Space'),
(3, 1, 'member_of', 'member of', 'A Usergroup that this UserAccount is a member of.'),
(4, 1, 'has_member', 'has member', 'A UserAccount that is a member of this Usergroup.'),
(5, 1, 'has_container', 'has container', 'The Container to which this Item belongs.'),
(6, 2, 'relation', 'Relation', 'A related resource.'),
(7, 2, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(8, 2, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(9, 2, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(10, 2, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(11, 2, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(12, 2, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(13, 2, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(14, 2, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(15, 2, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(16, 2, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(17, 2, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(18, 2, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(19, 2, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(20, 2, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(21, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(22, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the first document.'),
(23, 3, 'cites', 'cites', 'Relates a document to another document that is cited by the first document as reference, comment, review, quotation or for another purpose.'),
(24, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(25, 3, 'reproducedIn', 'reproduced in', 'The resource in which another resource is reproduced.'),
(26, 3, 'affirmedBy', 'affirmed by', 'A legal decision that affirms a ruling.'),
(27, 3, 'reversedBy', 'reversed by', 'A legal decision that reverses a ruling.'),
(28, 3, 'subsequentLegalDecision', 'subsequent legal decision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(29, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(30, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(31, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(32, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(33, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(34, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(35, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(36, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(37, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(38, 4, 'logo', 'logo', 'A logo representing some thing.'),
(39, 4, 'made', 'made', 'Something that was made by this agent.'),
(40, 4, 'maker', 'maker', 'An agent that made this thing.'),
(41, 4, 'member', 'member', 'Indicates a member of a Group.'),
(42, 4, 'page', 'page', 'A page or document about this thing.'),
(43, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(44, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(45, 5, 'abridgement', 'abridgement', 'A property representing an abridgment of an expression.'),
(46, 5, 'abridgementOf', 'abridgement of', 'A property representing an expression that is abridged.'),
(47, 5, 'adaption', 'adaption', 'A property representing an adaption of a work or expression.'),
(48, 5, 'adaptionOf', 'adaption of', 'A property representing a work or expression that is adapted.'),
(49, 5, 'alternate', 'alternate', 'A property representing an alternative to a manifestation.'),
(50, 5, 'alternateOf', 'alternate of', 'A property representing a manifestation that is alternated.'),
(51, 5, 'arrangement', 'arrangement', 'A property representing an arrangement of an expression.'),
(52, 5, 'arrangementOf', 'arrangement of', 'A property representing an expression that is arranged.'),
(53, 5, 'complement', 'complement', 'A property representing a complement to a work or expression.'),
(54, 5, 'complementOf', 'complement of', 'A property representing a work or expression that is complemented.'),
(55, 5, 'creator', 'creator', 'A property representing an entity in some way responsible for the creation of a work.'),
(56, 5, 'creatorOf', 'creator of', 'A property representing a work that was in some way created by of an entity.'),
(57, 5, 'embodiment', 'embodiment', 'A property representing a manifestation that embodies an expression.'),
(58, 5, 'embodimentOf', 'embodiment of', 'A property representing an expression that is embodied by a manifestation.'),
(59, 5, 'exemplar', 'exemplar', 'A property representing an item that is an exemplar of a manifestation.'),
(60, 5, 'exemplarOf', 'exemplar of', 'A property representing the manifestation that is exemplified by a item.'),
(61, 5, 'imitation', 'imitation', 'A property representing an imitation of a work or expression.'),
(62, 5, 'imitationOf', 'imitation of', 'A property representing a work or expression that is imitated.'),
(63, 5, 'owner', 'owner', 'A property representing an entity that owns an item.'),
(64, 5, 'ownerOf', 'owner of', 'A property representing an item that is in some way owned an entity.'),
(65, 5, 'part', 'part', 'A property representing a part of an endeavour.'),
(66, 5, 'partOf', 'part of', 'A property representing an endeavour incorporating an endeavour.'),
(67, 5, 'producer', 'producer', 'A property representing an entity in some way responsible for producing a manifestation.'),
(68, 5, 'producerOf', 'producer of', 'A property representing a manifestation that was in some way produced an entity.'),
(69, 5, 'realization', 'realization', 'A property representing an expression that is an intellectual or artistic realization of a work.'),
(70, 5, 'realizationOf', 'realization of', 'A property representing the work that has been realized by an expression.'),
(71, 5, 'realizer', 'realizer', 'A property representing an entity in some way responsible for realizing an expression.'),
(72, 5, 'realizerOf', 'realizer of', 'A property representing an expression that was in some way realized by an entity.'),
(73, 5, 'reconfiguration', 'reconfiguration', 'A property representing a recongifuration of an item.'),
(74, 5, 'reconfigurationOf', 'reconfiguration of', 'A property representing an item that is reconfigured.'),
(75, 5, 'relatedEndeavour', 'related endeavour', 'A property representing another endeavour that is related in some way to an endeavour.'),
(76, 5, 'reproduction', 'reproduction', 'A property representing a reproduction of a manifestation or item.'),
(77, 5, 'reproductionOf', 'reproduction of', 'A property representing a manifestation or item that is reproduced.'),
(78, 5, 'responsibleEntity', 'responsible entity', 'A property representing an entity in some way responsible for an endeavour.'),
(79, 5, 'responsibleEntityOf', 'responsible entity of', 'A property representing an endeavour that is the responsibility of an entity.'),
(80, 5, 'revision', 'revision', 'A property representing a revision of an expression.'),
(81, 5, 'revisionOf', 'revision of', 'A property representing an expression that is revised.'),
(82, 5, 'successor', 'successor', 'A property representing a successor to a work or expression.'),
(83, 5, 'successorOf', 'successor of', 'A property representing a work or expression that is succeeded.'),
(84, 5, 'summarization', 'summarization', 'A property representing a summarization of a work or expression.'),
(85, 5, 'summarizationOf', 'summarization of', 'A property representing a work or expression that is summarized.'),
(86, 5, 'supplement', 'supplement', 'A property representing a supplement to a work or expression.'),
(87, 5, 'supplementOf', 'supplement of', 'A property representing a work or expression that is supplemented.'),
(88, 5, 'transformation', 'transformation', 'A property representing a transformation of a work or expression.'),
(89, 5, 'transformationOf', 'transformation of', 'A property representing a work or expression that is transformed.'),
(90, 5, 'translation', 'translation', 'A property representing a translation of an expression.'),
(91, 5, 'translationOf', 'translation of', 'A property representing an expression that is translated.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_record_relations_relations`
--

CREATE TABLE `omeka_record_relations_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `subject_record_type` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `object_record_type` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(10) UNSIGNED NOT NULL,
  `public` int(1) UNSIGNED DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_record_relations_vocabularies`
--

CREATE TABLE `omeka_record_relations_vocabularies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `namespace_prefix` varchar(100) NOT NULL,
  `namespace_uri` varchar(200) NOT NULL,
  `custom` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `omeka_record_relations_vocabularies`
--

INSERT INTO `omeka_record_relations_vocabularies` (`id`, `name`, `description`, `namespace_prefix`, `namespace_uri`, `custom`) VALUES
(1, 'Semantically Interlinked Online Communities', 'Relations from SIOC http://sioc-project.org', 'sioc', 'http://rdfs.org/sioc/ns#', 0),
(2, 'Dublin Core', 'Relations defined by DCMI Metadata Terms: http://dublincore.org/documents/dcmi-terms/', 'dcterms', 'http://purl.org/dc/terms/', 0),
(3, 'BIBO', 'Relations defined by the Bibliographic Ontology (BIBO): http://bibotools.googlecode.com/svn/bibo-ontology/trunk/doc/index.html', 'bibo', 'http://purl.org/ontology/bibo/', 0),
(4, 'FOAF', 'Relations defined by the Friend of a Friend vocabulary (FOAF): http://xmlns.com/foaf/spec/', 'foaf', 'http://xmlns.com/foaf/0.1/', 0),
(5, 'FRBR', 'Relations defined by the Functional Requirements for Bibliographic Records (FRBR): http://vocab.org/frbr/core.html', 'frbr', 'http://purl.org/vocab/frbr/core#', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_relationships`
--

CREATE TABLE `omeka_relationships` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_item_id` int(10) UNSIGNED NOT NULL,
  `relationship_type_id` int(10) UNSIGNED NOT NULL,
  `target_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_relationships`
--

INSERT INTO `omeka_relationships` (`id`, `source_item_id`, `relationship_type_id`, `target_item_id`) VALUES
(4, 140, 6, 129),
(5, 147, 6, 132),
(6, 147, 6, 130),
(7, 146, 6, 160),
(8, 133, 5, 130),
(9, 148, 5, 130),
(10, 149, 5, 130),
(11, 150, 5, 130),
(12, 151, 5, 130),
(13, 152, 5, 130),
(14, 153, 5, 130),
(15, 154, 5, 130),
(16, 155, 5, 130),
(17, 156, 5, 130),
(18, 157, 5, 130),
(19, 158, 5, 130),
(20, 130, 7, 132),
(21, 124, 8, 126),
(22, 124, 8, 125),
(23, 124, 8, 163),
(24, 124, 8, 164),
(25, 124, 8, 165),
(26, 124, 8, 167),
(27, 124, 7, 127),
(28, 139, 6, 127),
(29, 139, 6, 124),
(30, 160, 8, 131),
(31, 160, 8, 134),
(32, 160, 8, 145),
(33, 160, 8, 144),
(34, 160, 8, 162),
(35, 160, 8, 161),
(36, 160, 8, 168),
(37, 160, 8, 169),
(38, 160, 8, 170),
(39, 160, 8, 172),
(40, 160, 8, 171),
(41, 141, 5, 129),
(42, 142, 5, 129),
(43, 143, 5, 129),
(45, 146, 6, 177),
(46, 177, 9, 173);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_relationship_images`
--

CREATE TABLE `omeka_relationship_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_relationship_rules`
--

CREATE TABLE `omeka_relationship_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_relationship_rules`
--

INSERT INTO `omeka_relationship_rules` (`id`, `description`, `rule`) VALUES
(1, 'Reference', 'Type:^Reference'),
(2, 'Reference with subject People', 'Type:^Reference;Subject:^People'),
(3, 'Image', 'Type:^Image');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_relationship_types`
--

CREATE TABLE `omeka_relationship_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `source_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source_rule_id` int(10) UNSIGNED NOT NULL,
  `target_rule_id` int(10) UNSIGNED NOT NULL,
  `source_label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `target_label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `directives` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `ancestry` varchar(1024) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_relationship_types`
--

INSERT INTO `omeka_relationship_types` (`id`, `order`, `source_name`, `target_name`, `source_rule_id`, `target_rule_id`, `source_label`, `target_label`, `directives`, `ancestry`) VALUES
(4, 4, 'related to', 'related to', 0, 0, 'Related to', 'Related to', '', ''),
(5, 4, 'Pertence a série', 'Fotografias da série', 0, 0, 'pertence a série', 'fotografias da série', '', ''),
(6, 4, 'Autor(a) de', 'Obra de autoria de', 0, 0, 'autor(a) de', 'obra de autoria de', '', ''),
(7, 4, 'Obra relacionada', 'Obra relacionada', 0, 0, 'obra relacionada', 'obra relacionada', '', ''),
(8, 4, 'Imagens da obra', 'Dados da obra', 0, 0, 'imagens da obra', 'dados da obra', '', ''),
(9, 4, 'Exposição', 'Obras integrantes da exposição', 0, 0, 'Exposição', 'Obras integrantes', '', ''),
(10, 4, 'Obra exposta em', 'Exposição', 0, 0, 'Obra exposta em', 'Exposição', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_search_texts`
--

CREATE TABLE `omeka_search_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(124, 'Item', 124, 1, 'Lugar com arco', '002 Lugar com arco Lugar com arco Arte brasileira 2000 Obra monumental instalada nos jardins da Escola de Comunicações e Artes da Universidade de São Paulo, no campus da Cidade Universitária, arremate de um percurso iniciado com a instalação \"Humanóides - transmutações da Forma e da Matéria\" (Museu de Arte Contemporânea da Universidade de São Paulo, 1994). Realizada como tese de doutorado da autora. Universidade de São Paulo (Cidade Universitária) - Escola de Comunicações e Artes - SP Argamassa armada 9 metros de comprimento, 6,20 metros de altura, 2,16 metros de largura (informação da autora) Todos os direitos reservados Acervo de Teses da Biblioteca da ECA: <br /><br /><span>Grinberg, Norma. <a href=\"http://dedalus.usp.br/F?func=direct&amp;local_base=USP01&amp;doc_number=001029280\" target=\"_blank\" rel=\"noreferrer noopener\">Lugar com arco</a>. Dissertação (Mestrado). 100 p. São Paulo, 1999. Escola de Comunicações e Artes, Universidade de São Paulo, 1999.</span> Arte contemporânea Escultura ; Arcos; Cerâmica <span>GRINBERG, Norma T.. Lugar com arco: decifra-me ou devoro-te.</span><b><span> </span>ARS (São Paulo)</b><span>,  São Paulo ,  v. 1, n. 1, p. 141-143,    2003 .   Disponível em: &lt;<a href=\"http://www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S1678-53202003000100011&amp;lng=en&amp;nrm=iso\" target=\"_blank\" rel=\"noreferrer noopener\">http://www.scielo.br/scielo.php?script=sci_arttext&amp;pid=S1678-53202003000100011&amp;lng=en&amp;nrm=iso</a>&gt;. Acesso em:  15 out.  2018.  <a href=\"http://dx.doi.org/10.1590/S1678-53202003000100011\" target=\"_blank\" rel=\"noreferrer noopener\">http://dx.doi.org/10.1590/S1678-53202003000100011</a>.</span> escultura 1f1da692-90a0-4f09-99a7-8b2314a19ea1 a19fcb17-573d-417f-b17c-f141e3fc932d Norma Grinberg  '),
(125, 'Item', 125, 1, 'Lugar com arco, vista geral diurna (1)', 'Norma Grinberg 8702 Lugar com arco, vista geral diurna (1) Marina Macambyra 2002 Registro realizado originalmente em slide, mostra o monumento dois anos após sua construção, ainda limpo e sem picachões Biblioteca da ECA/USP, acervo de slides 110 KB Imagem de RO001 Licença Creative Commons CC BY-NC Escultura digitalização de slide 35 mm imagem digital deff8878-6908-4bee-833d-db3a9cc27048 d48434ef-2129-46ff-8cea-7ae510b9be32  '),
(126, 'Item', 126, 1, 'Lugar com Arco, vista geral diurna (2)', 'Norma Grinberg 8701 Lugar com Arco, vista geral diurna (2) Marina Macambyra 2017 Face do monumento com pichações e manchas escuras Biblioteca da ECA/USP, acervo de imagens digitais 1,87 MB Imagem de RO001 Licença Creative Commons CC DY-NC Pichação imagem digital 659ac1aa-91a4-4beb-85a5-874a92362995 9b7ac873-8a61-4c2e-9b65-d84b05b80ce7  '),
(127, 'Item', 127, 1, 'Lugar com arco', '001 Lugar com arco Arte brasileira  1995? Gres, Engobe  60 x 60cm Obra precursora da escultura monumental de mesmo título (RO001).  Referência da tese na Biblioteca da ECA:<br /><a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001029280\" target=\"_blank\" rel=\"noreferrer noopener\">http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001029280</a> Arte contemporânea  Escultura, Cerâmica  Queima orgânica  escultura ea62b8b0-5ce3-41eb-bd8d-82a804101474 ce9a9ab7-65b8-4c10-9033-a3861973e89e Norma Grinberg  '),
(128, 'Item', 128, 1, 'Lugar com arco, imagem de catálogo ', '8703 Lugar com arco, imagem de catálogo  Marina Macambyra Imagem da página de catálogo de exposição, mostrando foto da obra e legenda.  Biblioteca da ECA, acervo de imagens digitais  572 KB  Imagem da obra RO002  FUNDAÇÃO MOKITI OKADA (São Paulo). Brasil Japão Arte . São Paulo: Fundação Mokiti Okada , 1995. Digitalização de material impresso  imagem digital 402c0707-5186-4222-ade2-fc241ccb04d4 b1265da5-04fa-4421-8636-50b57d3e3d12 Norma Grinberg  '),
(129, 'Item', 129, 1, 'Lavagem do Bonfim: formas de reportar [série]', '003 Lavagem do Bonfim: formas de reportar [série] Arte brasileira 1994 a 2009 Fotos da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor. Biblioteca da ECA Imagens impressas em livro 14,5 x 21,5 Avancini, Atílio. Lavagem do Bonfim : formas de reportar.  São Paulo, Alameda, c2016. Fotografia contemporânea Lavagem do Bonfim, Festas populares, Festas religiosas Filme preto e branco 400 ASA processados manualmente pelo autor <a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\">http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</a> fotografia a2b3dbee-5c18-456c-82b6-f03a0d9eeaa7 42e11a2e-b0d1-4415-b433-056d3bf5b3e8 Atílio Avancini  '),
(130, 'Item', 130, 1, 'Anamorfas [álbum]', '005 Anamorfas [álbum] Brasil álbum concluído em abril de 1980 Álbum com 12 gravuras que mostra as comparações entre imagens fotográficas e desenhos deformados.\r\n\r\n assinado pela artista Série integrante da dissertação de mestrado da artista localizado na Biblioteca da Escola de Comunicações e Artes/USP papel alemão-gravura 57 x 80 cm © Todos os direitos reservados. <a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=000708356\" target=\"_blank\" rel=\"noreferrer noopener\">Silveira, Regina. Anamorfas : texto descritivo e apresentação. Dissertação (Mestrado) - Escola de Comunicações e Artes/USP, São Paulo, 1980. 66 p.</a> tiragem de 10 exemplares arte contemporânea desenho\r\nanamorfose\r\nperspectiva impressão em lito-offset\r\n gravura c98025a4-31cd-4612-8f97-fce09e148012 f3b39680-2776-411e-8614-77155da87137 Regina Silveira  '),
(131, 'Item', 131, 1, 'Torre de Babel na Pinacoteca, vista geral', '8721 Torre de Babel na Pinacoteca, vista geral Fotógrafo não creditado 2007 Imagem da instalação montada no Espaço Octógono da Pinacoteca do Estado, vista de cima. imagem digital 97 K O autor imagem digital a7c53461-be88-4c1b-b335-da86afd128c2 4c942edb-c767-4a13-a922-e4f379bbc822  '),
(132, 'Item', 132, 1, 'Anamorfa', '006 Anamorfa Brasil 1979 Coleção de Livros de Artista da Biblioteca da Escola de Comunicações e Artes/USP papel couché 14,5 x 21,5 cm Série Anamorfas © Todos os direitos reservados. <a href=\"https://primofs01.sibi.usp.br/pds?func=sso&amp;calling_system=aleph&amp;pds_con_lng=POR&amp;url=http://dedalus.usp.br:80/F/ILVE3QL372I3RS1MHCSX73HG18FI91EGKC87QT3MA6K7KBNT9I-15585?func=direct&amp;doc_library=USP01&amp;doc_number=000708356\" target=\"_blank\" rel=\"noreferrer noopener\">Silveira, Regina. Pfeiffer, Wolfgang (orient). Anamorfas : texto descritivo e apresentação. São Paulo, 1980. 66 p.</a><br /><br /><a href=\"http://dedalus.usp.br/F/?func=direct&amp;doc_library=USP01&amp;doc_number=001491217\" target=\"_blank\" rel=\"noreferrer noopener\"><span>Silveira, Regina. Anamorfa.  São Paulo, Aster, 1979. 1 v.</span></a> tiragem de 100 exemplares arte contemporânea desenho\r\nanamorfose\r\nperspectiva impressão em offset\r\nencadernação espiral livro de artista dac58ff0-b89b-4b4d-acfd-e652d1c0a8ff a874073e-0612-49da-b9a4-6529f122ec6e Regina Silveira  '),
(133, 'Item', 133, 1, 'Anamorfas [1]', '8725 Anamorfas [1] Visão geral das gravuras João Luiz Musa Gravura que compõe o álbum Anamorfas ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: &lt;<a href=\"http://enciclopedia.itaucultural.org.br/busca?q=anamorfas\" target=\"_blank\" rel=\"noreferrer noopener\">http://enciclopedia.itaucultural.org.br/obra44100/anamorfas</a>&gt;. Acesso em: 09 de Out. 2018. óculos imagem digital ad2cbd8e-51ce-4fe6-a2b1-142f553731d2 128a22b7-8e27-4c8a-a504-96e77250c2e7 Regina Silveira    fotógrafo'),
(134, 'Item', 134, 1, 'Torre de Babel na Pinacoteca, detalhes [1]', '8722 Torre de Babel na Pinacoteca, detalhes [1] Fotógrafo não creditado 2007 Detalhes da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão. 71,6 KB Imagens da instalação na Pinacoteca do Estado de São Paulo Imagem digital imagem digital 30753526-d769-4512-b2d7-b8c85fc14bf1 da5b9cec-15ad-4eb2-a283-0e5c9de08a87 Geraldo de Souza Dias Filho  '),
(139, 'Item', 139, 0, 'Norma Grinberg', '9001 Norma Grinberg 659b19f5-314c-48f1-bb6b-46df44e698a3 4f4ab164-8ad7-479c-8472-7737fd251930 1951- Brasil Gravura Membro da Academia Internacional de Cerâmica (IAC - Suíça), licenciada em Desenho e Plástica pela Fundação Armando Álvares Penteado (1974), com Mestrado e Doutorado em Artes pela Universidade de São Paulo (1994/1999), Norma Grinberg, atualmente, é docente colaboradora do Departamento de Artes Visuais da Escola de Comunicações e Artes (ECA-USP). É uma das Coordenadoras do Grupo Terra de Pesquisas e do I e ll Encontro Internacional de Ceramistas na USP. Desenvolve pesquisas nas áreas de artes plásticas, arte educação, cerâmica, escultura,instalação e design.  Currículo Lattes: <a href=\"http://lattes.cnpq.br/2378104565051285\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/2378104565051285</a>  '),
(140, 'Item', 140, 0, 'Atílio Avancini', '9003 b0c8188f-1d7d-467e-abfc-9e6d3486d423 8a572525-e97b-4a34-b9e3-1e9781af9e4c 1953- Brasil Arte digital Paulistano, fotógrafo, professor doutor nível 2 em RDIDP (MS-3.2) da ECA-USP. Mestre e Doutor em Ciências da Comunicação-Jornalismo (ECA-USP). Professor do Departamento de Jornalismo e Editoração (CJE) com ingresso em 01/09/1997. Professor permanente do Programa de Pós-Graduação em Meios e Processos Audiovisuais (PPGMPA) na linha de pesquisa Poéticas e Técnicas. Pós-doutor pela Université Sorbonne Nouvelle Paris 3 com bolsa de pesquisa no exterior BPE-FAPESP (2011-2012), supervisão do Prof. Dr. Philippe Dubois. Professor-visitante da Kyoto University of Foreign Studies (2007 e 2017). Estágio (doutorado sanduíche) na Université Stendhal Grenoble 3 (2003). Assessor ad-hoc, desde 2012, emitindo pareceres sobre projetos de pesquisa apresentados à FAPESP. Autor dos livros: Lavagem do Bonfim (Alameda, 2016); Entre Gueixas e Samurais (Edusp/Imprensa Oficial, 2008); Atílio Avancini - coleção artistas da USP n. 15 (Edusp, 2006). Autor do livro Rastros (Com-Arte, 2018) com Sérgio Avancine. Organizador do livro: Ponte Cultural (ECA-USP, 2016). Produziu 19 artigos científicos e 7 capítulos de livro. Supervisor acadêmico da Empresa Estudantil Jornalismo Júnior da ECA-USP. Coordenador científico do Grupo de Pesquisa Políticas da Imagem (GPPI) da ECA-USP. Pesquisador do Grupo de Estudos Arte Asiática (GEAA) da UNIFESP, coordenação Profa. Dra. Michiko Okano. Participou de 19 exposições fotográficas no Brasil e no exterior. Orientou 7 mestres (dois com bolsas Fapesp e OEA-GCUB), 3 de iniciação científica (dois com bolsa FAPESP), 50 trabalhos de conclusão de curso (CJE). E supervisionou 1 pós-doutorado (bolsa CNPq). Orienta 3 doutorandos, 2 mestrandos (um com bolsa CAPES), 1 iniciação científica. E supervisiona 1 pós-doutorado. Há 29 citações no Google Scholar. Áreas de atuação: comunicação, arte, fotojornalismo, audiovisual, editoração. <span style=\"font-weight:400;\">Currículo Lattes: <a href=\"http://lattes.cnpq.br/7711153733776662\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/7711153733776662</a></span> Atílio Avancini  '),
(141, 'Item', 141, 1, 'Alma baiana 1', '8718 Alma baiana 1 Atílio Avancini Arte brasileira 1994 a 2009 Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor. Biblioteca da ECA 14,5 x 21,5 cm Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016. Fotografia contemporânea Lavagem do Bonfim, Festas populares, Festas religiosas <a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\">http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</a> imagem digital 886b2baf-e156-447a-950e-d3795fa1d55c 45195693-70c9-4031-9ea9-a30488209999  '),
(142, 'Item', 142, 1, 'Alma baiana 2', '8719 Alma baiana 2 Atílio Avancini Arte brasileira 1994 a 2009 Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor. Biblioteca da ECA 14,5 x 21,5 cm Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016. Fotografia contemporânea Lavagem do Bonfim, Festas populares, Festas religiosas <a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\"><span>http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</span></a> imagem digital 0dfb6cd5-2060-4c51-be8e-6d35a33304b2 82cdb0ec-cb2f-420a-af9c-72aa5e7af5d0  '),
(143, 'Item', 143, 1, 'Alma baiana 3', '8720 Alma baiana 3 Atílio Avancini Arte brasileira 1994 a 2009 Foto da festa tradicional da lavagem das escadarias da Igreja de Nosso Senhor do Bonfim, em Salvador, Bahia. Foram registradas sete festas, de 1994 a 2009, originalmente para a tese de doutorado do autor. Biblioteca da ECA 14,5 x 21,5 cm Avancini, Atílio. Lavagem do Bonfim : formas de reportar. São Paulo, Alameda, c2016. Fotografia contemporânea Lavagem do Bonfim, Festas populares, Festas religiosas <a href=\"http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml\" target=\"_blank\" rel=\"noreferrer noopener\"><span>http://www1.folha.uol.com.br/turismo/2017/12/1943000-fotografo-documenta-lavagem-do-bonfim-ao-longo-de-15-anos.shtml</span></a> imagem digital 3640036a-b68c-4865-a3ae-954069ebaca7 5116ae17-5041-44f1-97f9-7486d05c35cd  '),
(144, 'Item', 144, 1, 'Torre de Babel na Pinacoteca, detalhes [2]', '8723 Torre de Babel na Pinacoteca, detalhes [2] Flávio Magalhães 2007 Detalhe da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão. Imagens da instalação na Pinacoteca Imagem digital imagem digital 34544010-af48-4ca6-8bf1-24262485a262 1a187897-d0a1-4953-923a-9387d9e4c1c9 Geraldo de Souza Dias Filho  '),
(145, 'Item', 145, 1, 'Torre de Babel na Pinacoteca, detalhe [3]', '8724 Torre de Babel na Pinacoteca, detalhe [3] Fotógrafo não creditado 2007 Detalhe da Torre em sua montagem na Pinacoteca do Estado, mostrando as telas e os chassis sem telas que compõem a instalação, sugerindo a interrupção da construção bíblica antes de sua conclusão. 86,6 KB Imagens da instalação na Pinacoteca Imagem digital imagem digital 4ec33284-d3b9-4261-987b-fb1b44fc9d16 18511c93-0a36-4b95-baac-89ace2b0ef73 Geraldo de Souza Dias Filho  '),
(146, 'Item', 146, 0, 'Geraldo de Souza Dias Filho', '9004 Geraldo de Souza Dias Filho 3a672934-71f6-4718-bc17-722a4707675d cfbb53f4-4d66-4ac9-8e1b-56c0ac4db87a 1954- Brasil Pintura Gravura <span>Possui graduação em arquitetura e urbanismo pela Universidade de São Paulo (1979), mestrado em artes (Master of Fine Arts) pelo Pratt Institute, New York (1984), doutorado em Teoria da Arte (Kunstwissenschaf) pela- Universität der Künste Berlin (2000) e livre-docência pela Universidade de São Paulo (2006). Atualmente é professor associado da Universidade de São Paulo. Foi professor visitante no Instituto de Arte, Design e Marketing, Lisboa (2004-5) e da University of the Arts, Filadélfia (2008). Temas recorrentes em seu trabalho de arte são estruturas geométricas, recortes urbanos, colagem, a observação da presença de palavras na visibilidade contemporânea e o estudo e a pratica da pintura de paisagem. Lidera, desde 2004 o Grupo de Pesquisa \"Palavra e Imagem: a incorporação de códigos da escrita nas artes visuais\". <br /><br /><br /></span> Endereço para acessar este CV: <a href=\"http://lattes.cnpq.br/9512045174822921\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/9512045174822921</a>  '),
(147, 'Item', 147, 0, 'Regina Silveira', '9005 Regina Silveira 50556de3-5027-4ea3-a897-ec8338222851 1edb3df0-96bc-4c22-9ed3-cbbaf801b7b6 1939- Brasil Pintura Gravura Desenho Instalação Multimídia Graduada em Artes Plásticas pelo Instituto de Artes da UFRGS (1959), fez o Mestrado (1980) e Doutorado (1984) na Escola de Comunicações e Artes da USP. Ensinou no Instituto de Artes da UFRGS (1964-69), na Universidade de Porto Rico, Campus de Mayaguez (1969-1973), na FAAP, em São Paulo (1973-85), e é docente aposentada do Departamento de Artes Plásticas da ECA/USP, onde lecionou desde 1974. Participou de diversas bienais internacionais, dentre elas: XII Bienal de La Habana (2015); Bienal de Poznan (2012); XI Bienal de Cuenca(2011); Bienal do Mercosul (2011 e 2001); Bienal de Taipei (2006); Bienal de São Paulo (1983 e 1998). De suas muitas exposições coletivas, desde os anos 60, algumas das mais recentes são: “Yoko Ohno : O Ceu Ainda é Azul, Você Sabe?\" no Instituto Tomie Ohtake, São Paulo (2017); Setouchi-Triennale, Ogijima, Japão (2016); \"Contingent Beauty: Contemporary Art from Latin America\", Museum of Fine Arts Houston, Texas, EUA (2015); Luminato Festival, Toronto, Canadá (2015); \"Cruzamentos: Contemporary Art in Brazil\", Wexner Center, Columbus, EUA (2014); “Philagrafika 2010”, Philadelphia, EUA; “Máquinas de Mirar”, Centro Andaluz de Arte Contemporanea, Sevillha, Espanha (2009); “Brazil: Body and Soul”, Guggenheim Museum, Nova York (2001) De suas exposições individuais mais recentes destacam-se: \"Regina Silveira\", Alexander Gray Associates, Nova York, EUA (2016); \"Insolitus\", Fundação Eva Klabin, Rio de Janeiro (2016); \"Crash\", Museu Oscar Niemeyer, Curitiba (2015); \"Metáforas Construidas\", Galeria Lacometa, Bogotá, Colômbia (2015); \"El sueño de Mirra y otras constelaciones\", Museo Amparo, Puebla, Mexico (2014); In Absentia (Collection), The Aldrich Contemporary Art Museum, Ridgefield, EUA (2012); 1001 Dias e Outros Enigmas, Fundação Iberê Camargo, Porto Alegre (2011); Ocupação Regina Silveira no Instituto Itaú Cultural, São Paulo (2010). Em 2013, Regina Silveira ganhou o Prêmio Masp pela trajetória de sua carreira. Em 2011, o Grande Prêmio da Crítica, dado à intervenção \"Tramazul\" no MASP pela APCA-SP. Recebeu também o Prêmio Fundação Bunge nas Artes (2009); o Prêmio Bravo Prime nas Artes, dado a Mundus Admirabilis (2007); o Prêmio APCA -SP conferido para a exposição Claraluz (2003) e o Prêmio Sérgio Motta para Arte e Tecnologia (2000). Recebeu bolsa de Pesquisa do CNPQ (1985-89), bolsa de Residência do Banff Centre, Canadá (1993), da Fundação Civitella Ranieri, Nova York, e de Umbertide, Itália (1995), e foi Artista Visitante da Universidade do Texas, Austin (1998). Recebeu também bolsas da John Simon Guggenheim Foundation (1990), Pollock-Krasner Foundation (1993) e Fulbright Foundation (1994). Fonte - Site pessoal: <a href=\"https://reginasilveira.com/\" target=\"_blank\" rel=\"noreferrer noopener\">https://reginasilveira.com/</a> Currículo Lattes: <a href=\"http://files.cargocollective.com/488432/CV_atualizado_2017.pdf\" target=\"_blank\" rel=\"noreferrer noopener\">http://files.cargocollective.com/488432/CV_atualizado_2017.pdf</a><br />  '),
(148, 'Item', 148, 1, 'Anamorfas [2]', '8726 Anamorfas [2] João Luiz Musa Gravura que compõe o álbum Anamorfas ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. imagem digital 19da1d9d-23fc-4400-bc4c-837622c98743 f8995c81-bfd9-4716-8f6f-64f4635bb4fe Regina Silveira     fotógrafo '),
(149, 'Item', 149, 1, 'Anamorfas [3]', '8727 Anamorfas [3] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital 8ca72ff9-edbd-4b11-b7f0-6bfa7619ebbb a83a1d58-8b7e-4462-b095-6a5f22cc5502 Regina Silveira     fotógrafo '),
(150, 'Item', 150, 1, 'Anamorfas [4]', '8728 Anamorfas [4] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital 561f9def-b7a0-4bc2-b128-c867e633dc20 2459dc28-8e2d-4a03-bb6a-d9516a4d9bbd Regina Silveira     fotógrafo '),
(151, 'Item', 151, 1, 'Anamorfas [5]', '8729 Anamorfas [5] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital a6a292b7-e030-40cb-816f-0980499ff3d1 9618388d-d82e-4a4d-aafd-930883813c77 Regina Silveira     fotógrafo '),
(152, 'Item', 152, 1, 'Anamorfas [6]', '8730 Anamorfas [6] Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital ac509909-ab29-4b39-b157-936d7dd6f5ce 06c093b1-5d2c-487a-9667-1ddebce97c22 Regina Silveira João Luiz Musa     fotógrafo '),
(153, 'Item', 153, 1, 'Anamorfas [7]', '8731 Anamorfas [7] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital bcf30566-069c-4460-889c-5d461f1000c7 0da2b7b7-fe80-4786-9677-c989d80574ee Regina Silveira     fotógrafo '),
(154, 'Item', 154, 1, 'Anamorfas [8]', '8732 Anamorfas [8] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital d8c2831a-b610-42ac-bba4-fe00a4d31f28 7fc786bc-49df-471e-8730-0defd8c8f16a Regina Silveira     fotógrafo '),
(155, 'Item', 155, 1, 'Anamorfas [9]', '8733 Anamorfas [9] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital 70bc830a-307d-4cc4-8012-b0462c54b8a6 f2a82e31-7623-4260-b2ec-ca58359fa57e Regina Silveira     fotógrafo '),
(156, 'Item', 156, 1, 'Anamorfas [10]', '8734 Anamorfas [10] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital 95a3708a-95a4-420a-b73f-ff9bd98ef330 b5f67255-017a-45ba-b5dc-4786670c63f6 Regina Silveira     fotógrafo '),
(157, 'Item', 157, 1, 'Anamorfas [11]', 'Regina Silveira 8735 Anamorfas [11] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital d9251ebf-6bb8-4832-9688-fb4ffe605a97 ae2bafc0-c789-4a0f-bede-59b71a2443f9     fotógrafo '),
(158, 'Item', 158, 1, 'Anamorfas [12]', 'Regina Silveira 8736 Anamorfas [12] João Luiz Musa Gravura que compõe o álbum Anamorfas de Regina Silveira ENCICLOPÉDIA Itaú Cultural de Arte e Cultura Brasileiras. São Paulo: Itaú Cultural, 2018. Disponível em: <http://enciclopedia.itaucultural.org.br/obra44100/anamorfas>. Acesso em: 09 de Out. 2018. anamorfas, Regina Silveira imagem digital e59e9939-e79a-41d6-8eb0-295950da43de 07d2969f-cbbe-4344-aed5-48c88002b353     fotógrafo '),
(159, 'Item', 159, 0, 'João Luiz Musa', '9006 João Luiz Musa Créditos: André Ligeiro. Disponível em: <https://glamurama.uol.com.br/galeria/o-fotografo-joao-luiz-musa-abriu-sua-mostra-na-galeria-luciana-brito/#2>. Acesso em: 26 out. 2018 16881701-c6b4-4efd-b489-f9f926ec8cf2 644d7341-dc4b-43cc-8afd-a587cad89d4d 1951- Brasil Fotografia Graduado em engenharia de Produção pela Escola Politécnica da USP (1974), Mestrado em Artes (1990) e Doutorado em Artes em (1999) é atualmente Professor Doutor MS-3 junto ao Departamento de Artes da Escola de Comunicações e Artes da USP, responsável pelas disciplinas de graduação do Departamento de Artes Plásticas da ECA/USP a partir de 1986. Áreas de atuação: fotografia, edição, sensitometria, recuperação, memória, documentação e digitalização. De 2006 a março de 2012 fez parte do Comitê Técnico Consultivo em conjunto com a artista e prof. Dra Regina Silveira, prof. Dr. Celso Favaretto, entre outros, em apoio ao Museu de Arte de São Paulo. Em 2010 foram editados dois livros sobre ensaios: Um Inverno, realizado em 1973/1974 e Depois do Inverno de 2008, que correspondem as exposições realizadas no Instituto Tomie Ohtake no primeiro semestre de 2010. Editou em 2012 pelo selo Narval o livro \"Vila Prudente\" correspondente a documentação realizada nos anos de 1979 a 1981 no bairro de periferia Jardim Elba e Vila Renato e o livro de ensaios \"24x36\" com imagens fotográficas digitais coloridas de viagens realizadas nos anos de 2010 a 2012. Preparou os originais do livro sobre Paul Strand editado pela EDUSP em 2012 sobre a tese da profa Gigi Maurício. Realizou em conjunto com Rubens Fernandez, Anna Carvoncini a proposta curatorial da Coleção MASP/Pirelli em sua 19a edição. Tratamento dos originais digitalizados do ensaio de Raul Garcez Pereira sobre o conjunto habitacional do Carmo de 1980, para a revista Zuum editado em maio de 2014 e da exposição sobre a obra do fotógrafo realizada em Buenos Aires em 2014. Preparou os arquivos digitais de 2300 cromos formato 120 das obras de Alfredo Volpi, catálogo editado em 2014 pela Base7. Refez o percurso da expedição Geográfica e Geológica do Estado de São Paulo de 1915, documentando a paisagem transformada do litoral paulista de Santos a Ubatuba, em conjunto do escritor Alberto Martins a historiadora Gloria Kok, livro editado em novembro de 2015. Responde pela coordenação do grupo de pesquisa sobre impressão fotográfica (CNPQ) ligado ao Departamento de Artes Plasticas, fundado em 2010. Preparou em conjunto com Franscisco Ding Musa 1000 arquivos digitais sobre a catalogação do pintor Antonio Bandeira a ser publicado pela Base7 em 2018-2019. Currículo Lattes: <a href=\"http://lattes.cnpq.br/4074095287836209\" target=\"_blank\" rel=\"noreferrer noopener\">http://lattes.cnpq.br/4074095287836209</a><br /><br /><a href=\"http://www.joaomusa.com/#!__pt/curriculo\" target=\"_blank\" rel=\"noreferrer noopener\">http://www.joaomusa.com/#!__pt/curriculo</a>  '),
(160, 'Item', 160, 1, 'Torre de Babel', '004 Torre de Babel Arte Brasileira 2006 Instalação exibida como tese de livre-docência em Pintura junto ao Departamento de Artes Plásticas da Escola de Comunicações e Artes da Universidade de São Paulo no átrio do edifício da Faculdade de Arquitetura e Urbanismo da USP. O mito bíblico da Torre de Babel, que trata do momento em que uma suposta língua única dada aos homens é fragmentada em muitas, neste trabalho é visto como metáfora do conhecimento humano e mola propulsora das pesquisas empíricas que promovem progresso – e destruição – é re-elaborado em forma de conto verbo-visual. A tese coloca o livro a serviços da imagem e faz da pintura suporte para a palavra escrita. A instalação é uma torre formada por 525 quadros ( 276 pinturas e 249 chassis sem as telas), cujo protótipo formal inspira-se nas imagens dos iluministas medievais e pintores renascentistas para a Torre de Babel. Foi remontada na Pinacoteca do Estado em 2007. O texto impresso da tese está no acervo da Biblioteca da ECA. madeira, telas pintadas 9 m (total) - 30 x 20 cm cada quadro\r\n DIAS FILHO, Geraldo de Souza. <strong>Babel</strong>. 2006. 1v. Tese (Livre-docencia) - Escola de Comunicações e Artes, Universidade de São Paulo, 2007 Arte Contemporânea Escrita\r\nPintura instalação <a href=\"http://www.anpap.org.br/anais/2007/2007/artigos/138.pdf\">DIAS FILHO, Geraldo de Souza: Considerações teórico-práticas sobre texto e imagem</a> instalação 383bb0f8-3d16-418d-b0a7-95bc623d0b3c 4adb6290-b243-4142-83e5-2532d42b01b4 Geraldo de Souza Dias Filho  '),
(161, 'Item', 161, 1, 'Torre de Babel na FAU, vista geral (2)', '8738 Torre de Babel na FAU, vista geral (2) Flávio Magalhães 2007 Vista geral da torre completa, tomada da frente do vão livre do edifício da Faculdade de Arquitetura e Urbanismo da USP. imagem digital 139 KB O autor Faculdade de Arquitetura e Urbanismo da USP - FAU imagem digital 6515b1ae-da9f-468a-a313-02cf4a5e7b42 6e3464d6-c0f1-40a5-92e9-3592e05f52a5 Geraldo de Souza Dias Filho    fotógrafo'),
(162, 'Item', 162, 1, 'Torre de Babel na FAU, vista geral (1)', '8737 Torre de Babel na FAU, vista geral (1) Flávio Magalhães 2006 Vista geral da torre completa, tomada na diagonal do vão livre da Faculdade de Arquitetura e Urbanismo da USP. Acervo da Biblioteca da ECA 1 MB O autor Faculdade de Arquitetura e Urbanismo da USP - FAU Imagem registrada por câmera digital imagem digital 5ece3fdf-cb27-4319-a4f2-22fe68a4417e 1b232222-1eda-4723-af6e-b06d85ff2111 Geraldo de Souza Dias Filho    fotógrafo'),
(163, 'Item', 163, 1, 'Lugar com arco, vista geral (3)', 'Norma Grinberg 8745 Lugar com arco, vista geral (3) Marina Macambyra 2017 Vista geral do monumento, tomada em ligeira diagonal em relação em relação à fachada do prédio da Escola, parcialmente visível no fundo. Luz da tarde, sombras no monumento. Acervo da Biblioteca da ECA 6,7 MB imagem registrada por câmera digital imagem digital ff095db8-f71e-4e11-87d3-4805843644d5 bc1d14d8-c9c6-49b6-93c4-6f61aa6f9459     fotógrafa '),
(164, 'Item', 164, 1, 'Lugar com arco, vista geral (4)', 'Norma Grinberg 8746 Lugar com arco, vista geral (4) Marina Macambyra Vista geral do monumento, tomada em ligeira diagonal em relação à rua. Carros ao fundo Acervo da Biblioteca da ECA 6, 54 MB imagem registrada por câmera digital imagem digital 9b190bb0-453c-4004-9f88-e3b9d0602d68 af49c2a7-6673-4e35-8a2b-23c27902585e     fotógrafa '),
(165, 'Item', 165, 1, 'Lugar com arco, vista lateral', 'Norma Grinberg 8747 Lugar com arco, vista lateral Marina Macambyra 2018 Vista lateral parcial do monumento, com apenas a peça maior visível. Luz de fim de tarde, com sombras de árvores projetadas no gramado.\r\n\r\n\r\n Acervo da Biblioteca da ECA 8, 60 MB imagem registrada por câmera digital imagem digital 8cd94f43-609a-4c9e-aea1-dfb95b6e39f2 e47c4670-ca8d-4044-9e9c-17e61b3f2091     fotógrafa '),
(167, 'Item', 167, 1, 'Lugar com arco, detalhe', 'Norma Grinberg 8748 Lugar com arco, detalhe Marina Macambyra 2018 Detalhe do corte central da peça maior, visão lateral. Pela abertura, vê-se parte da peça menor. Acervo da Biblioteca da ECA 616 K imagem registrada por câmera digital imagem digital 24987a20-3617-4cca-be5b-9236ceb61b8b 6009ef37-1c8e-4b53-a982-33e509c68a22     fotógrafa '),
(168, 'Item', 168, 1, 'Torre de Babel na FAU, vista geral de cima', 'Geraldo de Souza Dias Filho 8739 Torre de Babel na FAU, vista geral de cima Flávio Magalhães 2007 Vista da instalação montada no piso caramelo da Faculdade de Arquitetura e Urbanismo, tomada de um dos andares superiores.  Acervo da Biblioteca da ECA 1, 77 MB O autor Faculdade de Arquitetura e Urbanismo da USP Imagem registrada por câmera digital imagem digital 7ae7e346-e455-4730-8475-568b9df36cf7 e7523feb-d83b-42d2-a9f5-3aa626337a1d    fotógrafo'),
(169, 'Item', 169, 1, 'Torre de Babel na FAU, detalhe externo', 'Geraldo de Souza Dias Filho 8740 Torre de Babel na FAU, detalhe externo Flávio Magalhães 2007 Detalhe do topo da torre, tomada com câmera baixa. Mostra o teto e as cordas que prendem  a estrutura da instalação. Acervo da Biblioteca da ECA 723 K Imagem registrada por câmera digital imagem digital 5f843e97-ebf9-449b-838e-eba7b80788d6 c15919d3-43d3-4f89-ab9b-f840bd96fc0a    fotógrafo'),
(170, 'Item', 170, 1, 'Torre de Babel na FAU, detalhe interno', 'Geraldo de Souza Dias Filho 8741 Torre de Babel na FAU, detalhe interno Flávio Magalhães 2007 Tomada da instalação pelo lado interno, câmera baixa, mostrando a parte superior da obra e o teto do edifício da Faculdade de Arquitetura e Urbanismo da USP. 754 KB Imagem registrada por câmera digital imagem digital c168c319-f03c-4229-8271-db0a816f79e5 c61cdb01-8a69-439a-a939-e524eed29a25    fotógrafo'),
(171, 'Item', 171, 1, 'Torre de Babel na FAU, montagem', 'Geraldo de Souza Dias Filho 8742 Torre de Babel na FAU, montagem Flávio Magalhães 2007 Partes da instalação espalhadas no piso caramelo da Faculdade de Arquitetura e Urbanismo da USP. O artista aparece em segundo plano, curvado, manipulando uma das peças. Acervo da Biblioteca da ECA 770 KB O autor Montagem de obra Imagem registrada por câmera digital imagem digital f6d1e23c-b33a-49d9-9004-adf1b01b36e0 4c072b2f-eba3-4736-941b-3bd149523dec    fotógrafo'),
(172, 'Item', 172, 1, 'Torre de Babel na FAU, montagem', 'Geraldo de Souza Dias Filho 8743 Torre de Babel na FAU, montagem Flávio Magalhães 2007 A torre em fase de montagem. O topo está prestes a ser alçado por um sistema de cordas. Acervo da Biblioteca da ECA 745 KB Montagem de obra Imagem produzida por câmera digital imagem digital 90a16d56-3fd4-42cd-991e-6cd06d7d5d17 646b2bbe-9de7-4e59-928b-7e30d02dc42f    fotógrafo'),
(173, 'Item', 173, 1, 'Exposição A desobediência civil', '007 Exposição A desobediência civil Arte brasileira 2017 Exposição no Memorial da Resistência, de 1o de abril a 25 de setembro de 2017, formada por, 22 pinturas a óleo e colagem sobre tela e madeira. Duas obras compõem-se de múltiplos quadros de pequenas e médias dimensões. A primeira, Ziviller Ungerhorsam,  formada por 51 peças. A segunda, Arte e Resistência, é um friso formado de 23 pinturas e um vídeo, Hostel Brasil, apresentado em looping.\r\nO tema alude, no âmbito da cultura, a situações político-sociais de constrangimento às liberdades e aos direitos humanos na história republicana brasileira recente, trazendo-o para o domínio da arte, Memorial da Resistência de São Paulo Arte contemporânea Desobediência civil\r\nPolítica MEMORIAL DA RESISTêNCIA DE SÃO PAULO. A desobediência civil. São Paulo: Memorial da Resistência de São Paulo, Associação Pinacoteca Arte e Cultura, 2017. Catálogo de exposição. exposição e3a2a35c-3093-4bfe-8759-633b6a3fd7f6 cdd9bab8-61a5-49e4-b1ef-e02e96582142 ,,,, Exposição de arte  '),
(174, 'SimplePagesPage', 1, 1, 'Sobre', 'Sobre <p><span style=\"font-weight:400;\">A Biblioteca Digital da Produção Artística da ECA/USP tem como objetivo reunir imagens das obras produzidas pelos artistas ligados à Escola, destacando as que foram apresentadas como trabalhos acadêmicos de graduação, mestrado e doutorado. O registro e a divulgação dessa produção </span><span style=\"font-weight:400;\"> vem atender a uma demanda </span><span style=\"font-weight:400;\">da própria comunidade, que deseja ter acesso às imagens de trabalhos criados pelos artistas da </span><span style=\"font-weight:400;\">casa, e à necessidade institucional de criar uma ferramenta adequada ao registro e divulgação da </span><span style=\"font-weight:400;\">produção artística que se expressa, fundamentalmente, por imagens. </span></p>\n<p><span style=\"font-weight:400;\">Esperamos com este projeto valorizar a produção </span><span style=\"font-weight:400;\">artística, democratizar o acesso e aumentar a visibilidade dos jovens artistas formados pela ECA.</span></p>\n<p><span style=\"font-weight:400;\"></span></p>\n<p><span>[carousel autoscroll=true interval=1500]</span></p> '),
(175, 'Collection', 1, 1, 'Regina Silveira', 'Regina Silveira 3ccb5d6a-76a3-4116-8b48-fc59604a682c  '),
(176, 'Collection', 2, 1, 'Geraldo Souza Dias', 'Geraldo Souza Dias 7eba253a-d01a-4ca8-a53e-eb22e5c0f20e  '),
(177, 'Collection', 3, 1, 'Atílio Avancini', 'Atílio Avancini c5c5ea8b-15b1-49e4-8f53-4b23504e024c  '),
(178, 'Collection', 4, 1, 'Norma Grinberg', 'Norma Grinberg 37655cab-bdf0-4117-b22a-8aab9842f245  '),
(183, 'Item', 177, 1, 'Musas', 'Musas Geraldo de Souza Dias Filho 085 42a4e10d-da7a-46e3-b1ac-6335a25de179 Arte brasileira 2016 Coleção do artista óleo e colagem sobre tela 125 cm de diâmetro A desobediência civil. Catálogo da exposição realizada no Memorial da Resistência, São Paulo, 2017 Arte contemporânea Pintura\r\nColagem Pintura e colagem pintura  '),
(179, 'Item', 174, 1, 'Annotation: \"Chassis sem telas\"', 'Annotation: \"Chassis sem telas\" 5f843e97-ebf9-449b-838e-eba7b80788d6 <p>Chassis sem telas</p> 0b58807c-cf92-4010-8f1a-f7e804424a50 '),
(180, 'Item', 175, 1, 'Annotation: \"Telas 30 x 20 cm\"', 'Annotation: \"Telas 30 x 20 cm\" 30753526-d769-4512-b2d7-b8c85fc14bf1 <p><span style=\"color: #4c3939; font-family: docs-Cabin; font-size: 15px; white-space: pre-wrap;\">Telas 30 x 20 cm</span></p> 24b89638-072d-4134-a4f8-9c73716fbf48 '),
(181, 'Item', 176, 1, 'Annotation: \"Pichações feitas por desconhecidos\"', 'Annotation: \"Pichações feitas por desconhecidos\" 659ac1aa-91a4-4beb-85a5-874a92362995 <p>Picha&ccedil;&otilde;es feitas por desconhecidos</p> b5bd4a98-2236-4476-8a85-e100fa5afd47 ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_sessions`
--

CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('01522c1963fd7bee1c2ce7f092bcaaa9', 1575498461, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226632383930383964656663383766636439333537653564313166616431636234223b7d5f5f5a467c613a363a7b733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530303933313b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530303934393b7d733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530313530343b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530313532313b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530313533303b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353530323034313b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a223639336430373765663032666132363135653435333665363335353666346639223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a226333663832626234303564313531393663653334363564323430663133646564223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a226437323263633139386166336437613866646139386237386634643738643534223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a223161356262373238333333316530386634636365386534343064616438653666223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f637372667c613a313a7b733a343a2268617368223b733a33323a223563666439623862663537656666316661366533353937303435653236316238223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a223065386666363265333733333931333236646533316465303235326138613163223b7d),
('07c4d8484732619daae072d26736a118', 1575647593, 1209600, ''),
('0b5522c263089507f85bdad29aeb85c1', 1575494012, 1209600, ''),
('0ed59313be1998b0a4a13b2319f41fb1', 1575582235, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d),
('0fa2d90e0bac0d871423e09ef917ffcc', 1575493880, 1209600, ''),
('1a889079e95f2c966d2914b748578556', 1575494091, 1209600, ''),
('1bfee3944f9852c8d5ffd1391ac0d92f', 1575475671, 1209600, ''),
('206d1bb4e27f6a3e0d43891c85d1e4b3', 1575560634, 1209600, ''),
('2399026a6048bcd03aa509cadf05cccf', 1575493880, 1209600, ''),
('24719607426f20984f2de8d1192a3f4e', 1575495365, 1209600, ''),
('2c556accdaa94c528b514325cba3f458', 1575582237, 1209600, ''),
('3b1054805648625d375d74a7c5414b7c', 1575494091, 1209600, ''),
('3cda44f3a6ec0ae81acd76b956b6f921', 1575493396, 1209600, ''),
('421ccfaf2af6207b865d3bcd48188862', 1575652408, 1209600, ''),
('4ae6946f528eb70399844c37603cfd3e', 1575578387, 1209600, ''),
('4e48984c5f7d500b17b527366dbf59ab', 1575647593, 1209600, ''),
('5364b8738452fe074b184be4fe6ad3e0', 1575647590, 1209600, ''),
('58d8609e8d561753417252388f2a78ed', 1575493978, 1209600, ''),
('644dbe91e8da4320d84f86d709d7be84', 1575989861, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226463373965666361626361396461376133323032343966376164333433326234223b7d),
('6670f9fc3545f546f19d5d38183bd0ac', 1575494107, 1209600, ''),
('6f586e740d9f6c0d4bf4fde880de470e', 1575494264, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a323b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226436396565383230366361636233323837346564646238393162613162636139223b7d5f5f5a467c613a343a7b733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439363234353b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439363235313b7d733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439373836313b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439373836343b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a223436643334363963356265643539303566313761396334666166346138306435223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f637372667c613a313a7b733a343a2268617368223b733a33323a223366316566393932336433613037303464326366343765303566626632356337223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a226534383431646362356633643465353863336233376164333432663730303934223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a223362653337616134363036373963383561363534623133613863393136303663223b7d),
('73a745fc6ed6be49da99d06ebe1d66fd', 1575647590, 1209600, ''),
('78daac7f9bdc4ce7fd7712c0e81bb89d', 1575493978, 1209600, ''),
('7cd83ff47885f927587e17f39c8bee21', 1575647593, 1209600, ''),
('8a6afab2a044d0075c3287a36250a2ca', 1575647593, 1209600, ''),
('8b35638a686c9c4a559d4061af0a9e5c', 1575494039, 1209600, ''),
('8fc25622a1b82e3ed34a75a57af2c96e', 1575647593, 1209600, ''),
('90683c70b46746bf5884488450cbb2ac', 1575582236, 1209600, ''),
('90eb9d04acddabec1c7f23b6585d8264', 1575494107, 1209600, ''),
('96383223f25c0e3ed6815d8205fe2c98', 1575493879, 1209600, ''),
('9a4076fa57b7f88cf6fcab1f0b951835', 1575560635, 1209600, ''),
('9b57c77c5e87d3dd39fa0b0f00907039', 1575495363, 1209600, ''),
('9da09d347552e5da0bc8ceee5feb3e11', 1575494091, 1209600, ''),
('a69dcbcbfa1ac0ba40e39397d170eb59', 1575396571, 1209600, ''),
('b34ec136a06b1b61a1e00cb287ee9608', 1575493554, 1209600, ''),
('bfaa412d55749bcc2bf004c9da18e1bd', 1575647590, 1209600, ''),
('ce67a2e9549df8a5b8f66b0f7722fac9', 1575496871, 1209600, ''),
('d294f439bfa82ae02f145ff5121cb412', 1575585092, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223037653034333662333136313834306535393131636466313065373663323130223b7d5f5f5a467c613a313a7b733a31343a22466c6173684d657373656e676572223b613a313a7b733a343a22454e4e48223b693a313b7d7d),
('d2dcc9bdd3347d1e91a5f0929078aafc', 1575493664, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223564336561313037323338633765373865346235656335633332393337646462223b7d5f5f5a467c613a323a7b733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439373236333b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353439373236343b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a223639343439633766613231343038653433333132343563623832336437313761223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f617070656172616e63655f637372667c613a313a7b733a343a2268617368223b733a33323a226434323637623537386336616233643738633131623261623936376333326338223b7d),
('d7e72917118e8730823f7c1d451975a4', 1575568712, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a32353a222f617070656172616e63652f656469742d73657474696e6773223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a323b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223235623930636533653661623133383430653038386232613464386563376635223b7d),
('dc038c64a748f281ae622d718e148784', 1575475804, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223164626661666339646330613265616433646637633031653164316434363038223b7d5f5f5a467c613a313a7b733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313537353437393231373b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a223931373336313935613837663632653762643935633462333635386539653031223b7d),
('e64698564dd8f8dae7212baae9b8de23', 1575494091, 1209600, ''),
('eb8408e16d46fd0ce9160ba2163c1589', 1575494091, 1209600, ''),
('f1490809246930c07c273bc8c0cf225a', 1575494012, 1209600, ''),
('f9e647652267835d6140125afd5b2522', 1575494091, 1209600, ''),
('fbb60e96172408876708f51b1ce2d515', 1575494039, 1209600, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_simple_pages_pages`
--

CREATE TABLE `omeka_simple_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `modified_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `inserted` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `order` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_simple_pages_pages`
--

INSERT INTO `omeka_simple_pages_pages` (`id`, `modified_by_user_id`, `created_by_user_id`, `is_published`, `title`, `slug`, `text`, `updated`, `inserted`, `order`, `parent_id`, `template`, `use_tiny_mce`) VALUES
(1, 1, 2, 1, 'Sobre', 'sobre', '<p><span style=\"font-weight:400;\">A Biblioteca Digital da Produção Artística da ECA/USP tem como objetivo reunir imagens das obras produzidas pelos artistas ligados à Escola, destacando as que foram apresentadas como trabalhos acadêmicos de graduação, mestrado e doutorado. O registro e a divulgação dessa produção </span><span style=\"font-weight:400;\"> vem atender a uma demanda </span><span style=\"font-weight:400;\">da própria comunidade, que deseja ter acesso às imagens de trabalhos criados pelos artistas da </span><span style=\"font-weight:400;\">casa, e à necessidade institucional de criar uma ferramenta adequada ao registro e divulgação da </span><span style=\"font-weight:400;\">produção artística que se expressa, fundamentalmente, por imagens. </span></p>\n<p><span style=\"font-weight:400;\">Esperamos com este projeto valorizar a produção </span><span style=\"font-weight:400;\">artística, democratizar o acesso e aumentar a visibilidade dos jovens artistas formados pela ECA.</span></p>\n<p><span style=\"font-weight:400;\"></span></p>\n<p><span>[carousel autoscroll=true interval=1500]</span></p>', '2019-12-05 00:01:24', '2019-02-16 13:30:12', 1, 0, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_simple_vocab_terms`
--

CREATE TABLE `omeka_simple_vocab_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_simple_vocab_terms`
--

INSERT INTO `omeka_simple_vocab_terms` (`id`, `element_id`, `terms`) VALUES
(1, 39, 'Ana Tavares\nAntônio Carlos D\'Avila\nArtur Matck\nAtílio Avancini\nCarlos Fajardo\nCarmela Gross\nDália Rosenthal\nDora Longo Bahia\nEvandro Carlos Jardim\nFlávio Magalhães\nFotógrafo não creditado\nGeraldo de Souza Dias Filho\nGilberto dos Santos Prado\nJoão Luiz Musa\nJúlio Plaza\nKatia Canton\nLúcia Kock\nLuiz Cláudio Mubarac\nMarco Francesco Buti\nMarco Garaude Giannotti\nMarina Macambyra\nMario Ramiro\nMonica Baptista Sampaio Tavares\nNorma Grinberg\nRegina Silveira'),
(2, 68, 'Ana Tavares\nAntônio Carlos D\'Avila\nArtur Matck\nAtílio Avancini\nCarlos Fajardo\nCarmela Gross\nDália Rosenthal\nDora Longo Bahia\nEvandro Carlos Jardim\nFlávio Magalhães\nFotógrafo não creditado\nGeraldo de Souza Dias Filho\nGilberto dos Santos Prado\nJoão Luiz Musa\nJúlio Plaza\nKatia Canton\nLúcia Kock\nLuiz Cláudio Mubarac\nMarco Francesco Buti\nMarco Garaude Giannotti\nMarina Macambyra\nMario Ramiro\nMonica Baptista Sampaio Tavares\nNorma Grinberg\nRegina Silveira'),
(3, 84, 'álbum\ncaderno de desenho\ncerâmica\ndesenho\nescultura\nexposição\nfotografia\ngravura\nimagem digital\nimpressão\ninstalação\nlitografia\nlivro de artista\nperformance\npintura'),
(4, 34, 'Arte conceitual\nArte digital\nDesign\nDesenho\nEscultura\nGravura\nInstalação\nMixed media\nMultimídia\nPerformance\nPintura\nFotografia\nLitografia\nLivro de artista\nSerigrafia\nVideoarte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_tags`
--

CREATE TABLE `omeka_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_users`
--

CREATE TABLE `omeka_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, '3473118', 'Super User', 'trmurakami@usp.br', 'b055d13dc6bf6a545ed78151e250918bd49753a0', 'd62cc409b3ec52b3', 1, 'super'),
(2, 'ecabdpa', 'Biblioteca da ECA', 'ecabiblioteca@usp.br', 'c2b7d1b9fa77f447c530e905d5e0df7bfbd0da82', '8a4a8a352491a9bb', 1, 'super');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_users_activations`
--

CREATE TABLE `omeka_users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_user_profiles_multi_elements`
--

CREATE TABLE `omeka_user_profiles_multi_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('radio','select','multiselect','checkbox') COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='A parallel to Elements for checkboxes, radio, selects ';

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_user_profiles_multi_values`
--

CREATE TABLE `omeka_user_profiles_multi_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_type_id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(10) UNSIGNED NOT NULL,
  `values` text COLLATE utf8_unicode_ci NOT NULL,
  `multi_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_user_profiles_profiles`
--

CREATE TABLE `omeka_user_profiles_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `added` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00',
  `modified` timestamp NOT NULL DEFAULT '2000-01-01 02:00:00' ON UPDATE current_timestamp(),
  `public` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_user_profiles_types`
--

CREATE TABLE `omeka_user_profiles_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `required_element_ids` text NOT NULL,
  `required_multielement_ids` text NOT NULL,
  `public` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_vra_core_attributes`
--

CREATE TABLE `omeka_vra_core_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(11) NOT NULL,
  `record_type` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED DEFAULT NULL,
  `vra_element_id` int(10) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_vra_core_attributes`
--

INSERT INTO `omeka_vra_core_attributes` (`id`, `record_id`, `record_type`, `element_id`, `vra_element_id`, `name`, `content`) VALUES
(1, 133, 'Item', 68, 1, 'dataDate', '2019-02-27 11:57:27'),
(2, 133, 'Item', 68, 2, 'dataDate', '2019-02-23 13:41:32'),
(3, 148, 'Item', 68, 3, 'dataDate', '2019-02-23 14:13:13'),
(4, 148, 'Item', 68, 4, 'dataDate', '2019-02-23 14:13:13'),
(5, 149, 'Item', 68, 5, 'dataDate', '2019-02-23 14:14:18'),
(6, 149, 'Item', 68, 6, 'dataDate', '2019-02-23 14:14:18'),
(7, 150, 'Item', 68, 7, 'dataDate', '2019-02-23 14:15:32'),
(8, 150, 'Item', 68, 8, 'dataDate', '2019-02-23 14:15:32'),
(9, 151, 'Item', 68, 9, 'dataDate', '2019-02-23 14:16:40'),
(10, 151, 'Item', 68, 10, 'dataDate', '2019-02-23 14:16:40'),
(11, 152, 'Item', 68, 11, 'dataDate', '2019-02-23 14:18:06'),
(12, 152, 'Item', 68, 12, 'dataDate', '2019-02-23 14:18:06'),
(13, 153, 'Item', 68, 13, 'dataDate', '2019-02-23 14:19:01'),
(14, 153, 'Item', 68, 14, 'dataDate', '2019-02-23 14:19:01'),
(15, 154, 'Item', 68, 15, 'dataDate', '2019-02-23 14:20:03'),
(16, 154, 'Item', 68, 16, 'dataDate', '2019-02-23 14:20:03'),
(17, 155, 'Item', 68, 17, 'dataDate', '2019-02-23 14:21:24'),
(18, 155, 'Item', 68, 18, 'dataDate', '2019-02-23 14:21:24'),
(19, 156, 'Item', 68, 19, 'dataDate', '2019-02-23 14:22:41'),
(20, 156, 'Item', 68, 20, 'dataDate', '2019-02-23 14:22:41'),
(21, 157, 'Item', 68, 21, 'dataDate', '2019-02-23 14:23:45'),
(22, 157, 'Item', 68, 22, 'dataDate', '2019-02-23 14:23:45'),
(23, 158, 'Item', 68, 23, 'dataDate', '2019-02-23 14:24:40'),
(24, 158, 'Item', 68, 24, 'dataDate', '2019-02-23 14:24:40'),
(25, 161, 'Item', 68, 25, 'dataDate', '2019-05-28 12:15:44'),
(26, 161, 'Item', 68, 26, 'dataDate', '2019-02-23 14:28:22'),
(27, 162, 'Item', 68, 27, 'dataDate', '2019-05-28 12:16:00'),
(28, 162, 'Item', 68, 28, 'dataDate', '2019-02-23 14:29:32'),
(29, 163, 'Item', 68, 29, 'dataDate', '2019-02-23 14:31:51'),
(30, 163, 'Item', 68, 30, 'dataDate', '2019-02-23 14:31:51'),
(31, 164, 'Item', 68, 31, 'dataDate', '2019-02-23 14:32:47'),
(32, 164, 'Item', 68, 32, 'dataDate', '2019-02-23 14:32:47'),
(33, 165, 'Item', 68, 33, 'dataDate', '2019-02-23 14:34:35'),
(34, 165, 'Item', 68, 34, 'dataDate', '2019-02-23 14:34:35'),
(35, 167, 'Item', 68, 35, 'dataDate', '2019-02-23 14:37:34'),
(36, 167, 'Item', 68, 36, 'dataDate', '2019-02-23 14:37:34'),
(37, 168, 'Item', 68, 37, 'dataDate', '2019-02-24 18:04:34'),
(38, 168, 'Item', 68, 38, 'dataDate', '2019-02-23 14:38:41'),
(39, 169, 'Item', 68, 39, 'dataDate', '2019-02-24 18:05:26'),
(40, 169, 'Item', 68, 40, 'dataDate', '2019-02-23 14:39:41'),
(41, 170, 'Item', 68, 41, 'dataDate', '2019-02-24 18:06:14'),
(42, 170, 'Item', 68, 42, 'dataDate', '2019-02-23 14:40:50'),
(43, 171, 'Item', 68, 43, 'dataDate', '2019-07-04 18:06:41'),
(44, 171, 'Item', 68, 44, 'dataDate', '2019-02-23 14:42:09'),
(45, 172, 'Item', 68, 45, 'dataDate', '2019-12-04 22:24:07'),
(46, 172, 'Item', 68, 46, 'dataDate', '2019-02-23 14:43:03'),
(47, 171, 'Item', 71, NULL, 'dataDate', '2019-07-04 18:06:41'),
(48, 177, 'Item', 69, NULL, 'dataDate', '2019-09-17 16:26:39'),
(49, 177, 'Item', 70, NULL, 'dataDate', '2019-09-17 16:26:39'),
(50, 177, 'Item', 73, NULL, 'dataDate', '2019-09-17 16:26:39'),
(51, 177, 'Item', 75, NULL, 'dataDate', '2019-09-17 16:26:39'),
(52, 177, 'Item', 78, NULL, 'dataDate', '2019-09-17 16:26:39'),
(53, 177, 'Item', 80, NULL, 'dataDate', '2019-09-17 16:26:39'),
(54, 177, 'Item', 81, NULL, 'dataDate', '2019-09-17 16:26:39'),
(55, 177, 'Item', 82, NULL, 'dataDate', '2019-09-17 16:26:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `omeka_vra_core_elements`
--

CREATE TABLE `omeka_vra_core_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(11) NOT NULL,
  `record_type` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `vra_element_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `omeka_vra_core_elements`
--

INSERT INTO `omeka_vra_core_elements` (`id`, `record_id`, `record_type`, `element_id`, `vra_element_id`, `name`, `content`) VALUES
(1, 133, 'Item', 68, NULL, 'Agent', ''),
(2, 133, 'Item', 68, 1, 'role', 'fotógrafo'),
(3, 148, 'Item', 68, NULL, 'Agent', ''),
(4, 148, 'Item', 68, 3, 'role', 'fotógrafo'),
(5, 149, 'Item', 68, NULL, 'Agent', ''),
(6, 149, 'Item', 68, 5, 'role', 'fotógrafo'),
(7, 150, 'Item', 68, NULL, 'Agent', ''),
(8, 150, 'Item', 68, 7, 'role', 'fotógrafo'),
(9, 151, 'Item', 68, NULL, 'Agent', ''),
(10, 151, 'Item', 68, 9, 'role', 'fotógrafo'),
(11, 152, 'Item', 68, NULL, 'Agent', ''),
(12, 152, 'Item', 68, 11, 'role', 'fotógrafo'),
(13, 153, 'Item', 68, NULL, 'Agent', ''),
(14, 153, 'Item', 68, 13, 'role', 'fotógrafo'),
(15, 154, 'Item', 68, NULL, 'Agent', ''),
(16, 154, 'Item', 68, 15, 'role', 'fotógrafo'),
(17, 155, 'Item', 68, NULL, 'Agent', ''),
(18, 155, 'Item', 68, 17, 'role', 'fotógrafo'),
(19, 156, 'Item', 68, NULL, 'Agent', ''),
(20, 156, 'Item', 68, 19, 'role', 'fotógrafo'),
(21, 157, 'Item', 68, NULL, 'Agent', ''),
(22, 157, 'Item', 68, 21, 'role', 'fotógrafo'),
(23, 158, 'Item', 68, NULL, 'Agent', ''),
(24, 158, 'Item', 68, 23, 'role', 'fotógrafo'),
(25, 161, 'Item', 68, NULL, 'Agent', ''),
(26, 161, 'Item', 68, 25, 'role', 'fotógrafo'),
(27, 162, 'Item', 68, NULL, 'Agent', ''),
(28, 162, 'Item', 68, 27, 'role', 'fotógrafo'),
(29, 163, 'Item', 68, NULL, 'Agent', ''),
(30, 163, 'Item', 68, 29, 'role', 'fotógrafa'),
(31, 164, 'Item', 68, NULL, 'Agent', ''),
(32, 164, 'Item', 68, 31, 'role', 'fotógrafa'),
(33, 165, 'Item', 68, NULL, 'Agent', ''),
(34, 165, 'Item', 68, 33, 'role', 'fotógrafa'),
(35, 167, 'Item', 68, NULL, 'Agent', ''),
(36, 167, 'Item', 68, 35, 'role', 'fotógrafa'),
(37, 168, 'Item', 68, NULL, 'Agent', ''),
(38, 168, 'Item', 68, 37, 'role', 'fotógrafo'),
(39, 169, 'Item', 68, NULL, 'Agent', ''),
(40, 169, 'Item', 68, 39, 'role', 'fotógrafo'),
(41, 170, 'Item', 68, NULL, 'Agent', ''),
(42, 170, 'Item', 68, 41, 'role', 'fotógrafo'),
(43, 171, 'Item', 68, NULL, 'Agent', ''),
(44, 171, 'Item', 68, 43, 'role', 'fotógrafo'),
(45, 172, 'Item', 68, NULL, 'Agent', ''),
(46, 172, 'Item', 68, 45, 'role', 'fotógrafo');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `omeka_admin_images`
--
ALTER TABLE `omeka_admin_images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_collections`
--
ALTER TABLE `omeka_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Índices para tabela `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD KEY `import_id` (`import_id`);

--
-- Índices para tabela `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_elements`
--
ALTER TABLE `omeka_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  ADD UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  ADD KEY `element_set_id` (`element_set_id`);

--
-- Índices para tabela `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `record_type` (`record_type`);

--
-- Índices para tabela `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_type_record_id` (`record_type`,`record_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `text` (`text`(20));

--
-- Índices para tabela `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `public` (`public`);

--
-- Índices para tabela `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_id_order` (`block_id`,`order`);

--
-- Índices para tabela `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exhibit_id_parent_id_slug` (`exhibit_id`,`parent_id`,`slug`),
  ADD KEY `exhibit_id_order` (`exhibit_id`,`order`);

--
-- Índices para tabela `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_order` (`page_id`,`order`);

--
-- Índices para tabela `omeka_files`
--
ALTER TABLE `omeka_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices para tabela `omeka_iiif_items_cached_json_data`
--
ALTER TABLE `omeka_iiif_items_cached_json_data`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_iiif_items_job_statuses`
--
ALTER TABLE `omeka_iiif_items_job_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_import_importers`
--
ALTER TABLE `omeka_import_importers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_import_imports`
--
ALTER TABLE `omeka_import_imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `importer_id` (`importer_id`);

--
-- Índices para tabela `omeka_import_logs`
--
ALTER TABLE `omeka_import_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_id` (`import_id`);

--
-- Índices para tabela `omeka_items`
--
ALTER TABLE `omeka_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Índices para tabela `omeka_item_duplicate_check_rules`
--
ALTER TABLE `omeka_item_duplicate_check_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`);

--
-- Índices para tabela `omeka_item_relations_properties`
--
ALTER TABLE `omeka_item_relations_properties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_item_relations_relations`
--
ALTER TABLE `omeka_item_relations_relations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_item_relations_vocabularies`
--
ALTER TABLE `omeka_item_relations_vocabularies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `element_id` (`element_id`);

--
-- Índices para tabela `omeka_keys`
--
ALTER TABLE `omeka_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Índices para tabela `omeka_options`
--
ALTER TABLE `omeka_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active_idx` (`active`);

--
-- Índices para tabela `omeka_processes`
--
ALTER TABLE `omeka_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `started` (`started`),
  ADD KEY `stopped` (`stopped`);

--
-- Índices para tabela `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Índices para tabela `omeka_record_relations_properties`
--
ALTER TABLE `omeka_record_relations_properties`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_record_relations_relations`
--
ALTER TABLE `omeka_record_relations_relations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_record_relations_vocabularies`
--
ALTER TABLE `omeka_record_relations_vocabularies`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_relationships`
--
ALTER TABLE `omeka_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_relationship_images`
--
ALTER TABLE `omeka_relationship_images`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_relationship_rules`
--
ALTER TABLE `omeka_relationship_rules`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_relationship_types`
--
ALTER TABLE `omeka_relationship_types`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_schema_migrations`
--
ALTER TABLE `omeka_schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Índices para tabela `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_name` (`record_type`,`record_id`);
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);

--
-- Índices para tabela `omeka_sessions`
--
ALTER TABLE `omeka_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `inserted` (`inserted`),
  ADD KEY `updated` (`updated`),
  ADD KEY `created_by_user_id` (`created_by_user_id`),
  ADD KEY `modified_by_user_id` (`modified_by_user_id`),
  ADD KEY `order` (`order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Índices para tabela `omeka_simple_vocab_terms`
--
ALTER TABLE `omeka_simple_vocab_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element_id` (`element_id`);

--
-- Índices para tabela `omeka_tags`
--
ALTER TABLE `omeka_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `omeka_users`
--
ALTER TABLE `omeka_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `active_idx` (`active`);

--
-- Índices para tabela `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_user_profiles_multi_elements`
--
ALTER TABLE `omeka_user_profiles_multi_elements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_user_profiles_multi_values`
--
ALTER TABLE `omeka_user_profiles_multi_values`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_user_profiles_profiles`
--
ALTER TABLE `omeka_user_profiles_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_user_profiles_types`
--
ALTER TABLE `omeka_user_profiles_types`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_vra_core_attributes`
--
ALTER TABLE `omeka_vra_core_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `omeka_vra_core_elements`
--
ALTER TABLE `omeka_vra_core_elements`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `omeka_admin_images`
--
ALTER TABLE `omeka_admin_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_collections`
--
ALTER TABLE `omeka_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT de tabela `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `omeka_iiif_items_cached_json_data`
--
ALTER TABLE `omeka_iiif_items_cached_json_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `omeka_iiif_items_job_statuses`
--
ALTER TABLE `omeka_iiif_items_job_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `omeka_import_importers`
--
ALTER TABLE `omeka_import_importers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `omeka_import_imports`
--
ALTER TABLE `omeka_import_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `omeka_import_logs`
--
ALTER TABLE `omeka_import_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT de tabela `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de tabela `omeka_item_duplicate_check_rules`
--
ALTER TABLE `omeka_item_duplicate_check_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_item_relations_properties`
--
ALTER TABLE `omeka_item_relations_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `omeka_item_relations_relations`
--
ALTER TABLE `omeka_item_relations_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_item_relations_vocabularies`
--
ALTER TABLE `omeka_item_relations_vocabularies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `omeka_keys`
--
ALTER TABLE `omeka_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_options`
--
ALTER TABLE `omeka_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=746;

--
-- AUTO_INCREMENT de tabela `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `omeka_processes`
--
ALTER TABLE `omeka_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de tabela `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_record_relations_properties`
--
ALTER TABLE `omeka_record_relations_properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `omeka_record_relations_relations`
--
ALTER TABLE `omeka_record_relations_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_record_relations_vocabularies`
--
ALTER TABLE `omeka_record_relations_vocabularies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `omeka_relationships`
--
ALTER TABLE `omeka_relationships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `omeka_relationship_images`
--
ALTER TABLE `omeka_relationship_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_relationship_rules`
--
ALTER TABLE `omeka_relationship_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `omeka_relationship_types`
--
ALTER TABLE `omeka_relationship_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de tabela `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `omeka_simple_vocab_terms`
--
ALTER TABLE `omeka_simple_vocab_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_users`
--
ALTER TABLE `omeka_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_user_profiles_multi_elements`
--
ALTER TABLE `omeka_user_profiles_multi_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_user_profiles_multi_values`
--
ALTER TABLE `omeka_user_profiles_multi_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_user_profiles_profiles`
--
ALTER TABLE `omeka_user_profiles_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_user_profiles_types`
--
ALTER TABLE `omeka_user_profiles_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `omeka_vra_core_attributes`
--
ALTER TABLE `omeka_vra_core_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `omeka_vra_core_elements`
--
ALTER TABLE `omeka_vra_core_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `omeka_import_imports`
--
ALTER TABLE `omeka_import_imports`
  ADD CONSTRAINT `omeka_import_imports_fk_importer_id` FOREIGN KEY (`importer_id`) REFERENCES `omeka_import_importers` (`id`);

--
-- Limitadores para a tabela `omeka_import_logs`
--
ALTER TABLE `omeka_import_logs`
  ADD CONSTRAINT `omeka_import_logs_fk_import_id` FOREIGN KEY (`import_id`) REFERENCES `omeka_import_imports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `omeka_item_duplicate_check_rules`
--
ALTER TABLE `omeka_item_duplicate_check_rules`
  ADD CONSTRAINT `omeka_item_duplicate_check_rules_ibfk_1` FOREIGN KEY (`item_type_id`) REFERENCES `omeka_item_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
