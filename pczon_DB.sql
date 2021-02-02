-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jun-2018 às 17:43
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pczone`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `created_at`, `updated_at`) VALUES
(1, 'Computadores', NULL, '2018-04-18 08:21:54'),
(4, 'Armazenamento', NULL, NULL),
(5, 'Cabos', '2018-04-10 20:29:20', '2018-04-10 20:29:20'),
(6, 'Consolas', '2018-04-10 21:44:51', '2018-04-17 19:53:39'),
(13, 'Periféricos', '2018-04-16 18:40:11', '2018-04-16 18:40:11'),
(14, 'Software', '2018-04-17 08:34:06', '2018-04-17 08:34:06'),
(15, 'Gráficas', '2018-04-18 09:21:02', '2018-04-18 09:21:02'),
(16, 'Mobilidade', '2018-04-18 13:51:25', '2018-04-18 13:51:25'),
(17, 'Portátil', '2018-05-01 08:43:18', '2018-05-01 08:43:18'),
(18, 'All in one', '2018-05-01 15:53:51', '2018-05-01 15:53:51'),
(19, 'Gaming', '2018-05-01 15:57:37', '2018-05-01 15:57:37'),
(20, 'Workstation', '2018-05-01 16:03:28', '2018-05-01 16:03:28'),
(21, 'Híbrido', '2018-05-01 16:44:25', '2018-05-01 16:44:25'),
(22, 'Servidor', '2018-05-01 16:45:58', '2018-05-01 16:45:58'),
(23, 'Mini PC Android', '2018-05-01 16:49:04', '2018-05-01 16:49:04'),
(24, 'Mini Pc Windows', '2018-05-01 16:52:51', '2018-05-01 16:52:51'),
(25, 'Acessório Eletrónica', '2018-05-01 16:57:06', '2018-05-01 16:57:06'),
(26, 'Barebone Workstation', '2018-05-01 17:03:05', '2018-05-01 17:03:05'),
(27, 'Barebone Acessório', '2018-05-01 17:08:41', '2018-05-01 17:08:41'),
(28, 'Barebone Garantia', '2018-05-15 08:03:26', '2018-05-15 08:03:26'),
(29, 'Bases/Docs', '2018-05-15 08:16:48', '2018-05-15 08:16:48'),
(30, 'Carregadores', '2018-05-15 08:17:24', '2018-05-15 08:17:24'),
(31, 'Bolsas', '2018-05-15 08:17:37', '2018-05-15 08:17:37'),
(32, 'Mochilas', '2018-05-15 08:17:52', '2018-05-15 08:17:52'),
(33, 'Malas', '2018-05-15 08:17:59', '2018-05-15 08:17:59'),
(34, 'Smartphone Android', '2018-05-15 08:19:04', '2018-05-15 08:19:04'),
(35, 'Smartphone IOS', '2018-05-15 08:19:25', '2018-05-15 08:19:25'),
(36, 'Smartphone Windows', '2018-05-15 08:19:34', '2018-05-15 08:19:34'),
(37, 'Smartphone Capas/Bolsas', '2018-05-15 08:20:03', '2018-05-15 08:20:03'),
(38, 'Smartphone Películas', '2018-05-15 08:20:16', '2018-05-15 08:20:16'),
(39, 'Smartphone Telemóveis', '2018-05-15 08:20:26', '2018-05-15 08:20:26'),
(40, 'Tablets Android', '2018-05-15 08:20:45', '2018-05-15 08:20:45'),
(41, 'Tablets Capas/Bolsas', '2018-05-15 08:26:47', '2018-05-15 08:26:47'),
(42, 'Tablets Películas', '2018-05-15 08:26:57', '2018-05-15 08:26:57'),
(43, 'SmartWatch', '2018-05-15 08:27:09', '2018-05-15 08:27:09'),
(44, 'SmartBand', '2018-05-15 08:27:13', '2018-05-15 08:27:13'),
(45, 'PowerBanks', '2018-05-15 08:29:07', '2018-05-15 08:29:07'),
(46, 'Carregador', '2018-05-15 08:29:19', '2018-05-15 08:29:19'),
(47, 'Stylus', '2018-05-15 08:29:25', '2018-05-15 08:29:25'),
(48, 'Outros Acessórios', '2018-05-15 08:29:39', '2018-05-15 08:29:39'),
(49, 'Processador Intel', '2018-05-15 08:29:48', '2018-05-15 08:29:48'),
(50, 'Processador AMD', '2018-05-15 08:29:52', '2018-05-15 08:29:52'),
(51, 'Gráfica NVIDIA', '2018-05-15 08:30:10', '2018-05-15 08:30:10'),
(52, 'Gráfica AMD', '2018-05-15 08:30:18', '2018-05-15 08:30:18'),
(53, 'Acessórios Gráfica', '2018-05-15 08:30:26', '2018-05-15 08:30:26'),
(54, 'Ventoinha 140MM', '2018-05-15 08:30:43', '2018-05-15 08:30:43'),
(55, 'Ventoinha 120MM', '2018-05-15 08:30:49', '2018-05-15 08:30:49'),
(56, 'Ventoinha 80MM', '2018-05-15 08:31:01', '2018-05-15 08:31:01'),
(57, 'Ventoinha RGB', '2018-05-15 08:31:07', '2018-05-15 08:31:07'),
(58, 'Motherboard Intel', '2018-05-15 08:31:15', '2018-05-15 08:31:15'),
(59, 'Motherboard AMD', '2018-05-15 08:31:22', '2018-05-15 08:31:22'),
(60, 'Fonte Full Modular', '2018-05-15 08:31:42', '2018-05-15 08:31:42'),
(61, 'Fonte Semi Modular', '2018-05-15 08:31:47', '2018-05-15 08:31:47'),
(62, 'Ram DDR4', '2018-05-15 08:32:15', '2018-05-15 08:32:15'),
(63, 'Ram DDR3', '2018-05-15 08:32:19', '2018-05-15 08:32:19'),
(64, 'Ram DDR2', '2018-05-15 08:32:29', '2018-05-15 08:32:29'),
(65, 'Air Colling CPU', '2018-05-15 20:57:57', '2018-05-15 20:57:57'),
(66, 'Watter Colling CPU', '2018-05-15 20:58:05', '2018-05-15 20:58:05'),
(67, 'Pasta Térmica CPU', '2018-05-15 20:58:15', '2018-05-15 20:58:15'),
(68, 'Caixa ATX', '2018-05-15 20:58:22', '2018-05-15 20:58:22'),
(69, 'Caixa Extended ATX', '2018-05-15 20:58:36', '2018-05-15 20:58:36'),
(70, 'caixa Micro-ATX', '2018-05-15 20:58:46', '2018-05-15 20:58:46'),
(71, 'Caixa Mini-ATX', '2018-05-15 20:58:55', '2018-05-15 20:58:55'),
(72, 'Caixa Acessórios', '2018-05-15 20:59:04', '2018-05-15 20:59:04'),
(73, 'Placa de Som Interna', '2018-05-15 20:59:14', '2018-05-15 20:59:14'),
(74, 'Placa de Som Externa', '2018-05-15 20:59:21', '2018-05-15 20:59:21'),
(75, 'Gravador Blu-Ray', '2018-05-15 20:59:31', '2018-05-15 20:59:31'),
(76, 'Gravador DVD', '2018-05-15 20:59:37', '2018-05-15 20:59:37'),
(77, 'Externos', '2018-05-15 20:59:44', '2018-05-15 20:59:44'),
(78, 'Nvidia G-Sync', '2018-05-15 20:59:57', '2018-05-15 20:59:57'),
(79, 'Free-Synk', '2018-05-15 21:00:08', '2018-05-15 21:00:08'),
(80, '144HZ', '2018-05-15 21:00:14', '2018-05-15 21:00:14'),
(81, 'Ultra HD', '2018-05-15 21:00:19', '2018-05-15 21:00:19'),
(82, 'Mais 25\"', '2018-05-15 21:00:37', '2018-05-15 21:00:37'),
(83, '23\"', '2018-05-15 21:00:57', '2018-05-15 21:00:57'),
(84, '19\"', '2018-05-15 21:01:03', '2018-05-15 21:01:03'),
(85, 'TV Oled', '2018-05-15 21:01:11', '2018-05-15 21:01:11'),
(86, 'TV LED', '2018-05-15 21:01:15', '2018-05-15 21:01:15'),
(87, 'TV Curva', '2018-05-15 21:01:23', '2018-05-15 21:01:23'),
(88, 'TV 144HZ', '2018-05-15 21:01:31', '2018-05-15 21:01:31'),
(89, 'TV Ultra HD', '2018-05-15 21:01:38', '2018-05-15 21:01:38'),
(90, 'TV 25\"', '2018-05-29 09:02:14', '2018-05-29 09:02:14'),
(91, 'TV 24\"', '2018-05-29 09:02:23', '2018-05-29 09:02:23'),
(92, 'TV 22\"', '2018-05-29 09:02:32', '2018-05-29 09:02:32'),
(93, 'Câmaras', '2018-05-29 09:03:04', '2018-05-29 09:03:04'),
(94, 'Projectores', '2018-05-29 09:03:10', '2018-05-29 09:03:10'),
(95, 'Suporte/Acessório', '2018-05-29 09:03:32', '2018-05-29 09:03:32'),
(96, 'Headset', '2018-05-29 09:03:42', '2018-05-29 09:03:42'),
(97, 'Headphones', '2018-05-29 09:03:46', '2018-05-29 09:03:46'),
(98, 'Auriculares', '2018-05-29 09:03:59', '2018-05-29 09:03:59'),
(99, 'Microfones', '2018-05-29 09:04:14', '2018-05-29 09:04:14'),
(100, 'Colunas', '2018-05-29 09:04:20', '2018-05-29 09:04:20'),
(101, 'Acessórios Audio', '2018-05-29 09:04:35', '2018-05-29 09:04:35'),
(102, 'Cadeiras', '2018-05-29 09:04:43', '2018-05-29 09:04:43'),
(103, 'Bundles', '2018-05-29 09:35:04', '2018-05-29 09:35:04'),
(104, 'Ratos', '2018-05-29 09:35:08', '2018-05-29 09:35:08'),
(105, 'Teclados', '2018-05-29 09:35:11', '2018-05-29 09:35:11'),
(106, 'Conjuntos', '2018-05-29 09:35:19', '2018-05-29 09:35:19'),
(107, 'Apontadores', '2018-05-29 09:35:27', '2018-05-29 09:35:27'),
(108, 'Tapetes', '2018-05-29 09:35:31', '2018-05-29 09:35:31'),
(109, 'Acessórios Ratos/Teclados', '2018-05-29 09:35:48', '2018-05-29 09:35:48'),
(110, 'Mesa Digitalizadora', '2018-05-29 09:35:59', '2018-05-29 09:35:59'),
(111, 'Impressora Jacto tinta', '2018-05-29 09:36:08', '2018-05-29 09:36:08'),
(112, 'Impressora Laser', '2018-05-29 09:36:15', '2018-05-29 09:36:15'),
(113, 'Impressora POS/Talões', '2018-05-29 09:36:27', '2018-05-29 09:36:27'),
(114, 'Scanners', '2018-05-29 09:36:33', '2018-05-29 09:36:33'),
(115, 'Placas de Captura', '2018-05-29 09:36:40', '2018-05-29 09:36:40'),
(116, 'Comandos', '2018-05-29 09:36:47', '2018-05-29 09:36:47'),
(117, 'Gamepads', '2018-05-29 09:36:51', '2018-05-29 09:37:15'),
(118, 'Volantes', '2018-05-29 09:37:21', '2018-05-29 09:37:21'),
(119, 'WebCams', '2018-05-29 09:37:26', '2018-05-29 09:37:26'),
(120, 'UPS/Tomadas', '2018-05-29 09:37:32', '2018-05-29 09:37:32'),
(121, 'HUBs', '2018-05-29 09:37:38', '2018-05-29 09:37:38'),
(122, 'Drones', '2018-05-29 09:37:43', '2018-05-29 09:37:43'),
(123, 'Óculos', '2018-05-29 09:37:46', '2018-05-29 09:37:46'),
(124, 'Outros', '2018-05-29 09:37:52', '2018-05-29 09:37:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `id` int(10) UNSIGNED NOT NULL,
  `marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`id`, `marca`, `created_at`, `updated_at`) VALUES
(1, 'LG', NULL, NULL),
(2, 'Asus', NULL, NULL),
(4, 'Asrock', NULL, NULL),
(6, 'Nova Marca', '2018-04-17 08:34:16', '2018-04-17 08:34:16'),
(7, 'HP', '2018-04-18 09:21:26', '2018-04-18 09:21:26'),
(8, 'Sony', '2018-04-18 14:07:07', '2018-04-18 14:07:07'),
(9, 'Apple', '2018-04-18 14:31:33', '2018-04-18 14:31:33'),
(10, 'Samsung', '2018-04-18 19:36:01', '2018-04-18 19:36:01'),
(11, 'Vibox', '2018-05-01 15:59:33', '2018-05-01 15:59:33'),
(12, 'Dell', '2018-05-01 16:03:46', '2018-05-01 16:03:46'),
(13, 'Metronic', '2018-05-01 16:49:26', '2018-05-01 16:49:26'),
(14, 'Gigabyte', '2018-05-01 16:52:39', '2018-05-01 16:52:39'),
(15, 'Raspberry', '2018-05-01 16:57:23', '2018-05-01 16:57:23'),
(16, 'Innergie', '2018-05-15 21:03:10', '2018-05-15 21:03:10'),
(17, 'Xiaomi', '2018-05-16 08:18:10', '2018-05-16 08:18:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_resets_table', 1),
(28, '2018_04_04_100001_create_categorias_table', 1),
(29, '2018_04_04_100002_create_marcas_table', 1),
(30, '2018_04_04_151502_create_produtos_table', 1),
(31, '2018_04_10_083908_vendas', 2),
(32, '2018_04_24_225640_create_vendas_table', 3),
(33, '2018_05_01_182651_add_sells_details', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('hugo.branco.c@gmail.com', '$2y$10$vcUvqH9.HZcrw02WnTf6UuTCIUchzP.HPOMMdq4Iuf/hL4eA2hCBi', '2018-04-23 10:50:15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) NOT NULL,
  `descricao` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` float(8,2) NOT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `descricao`, `preco`, `rating`, `marca_id`, `categoria_id`, `stock`, `created_at`, `updated_at`, `cover_image`, `nome`) VALUES
(35, 'Melhor portatil do mercado\r\nGráfica GTX 1060 6gb\r\nDisco SSD 520GB', 1669.99, '5', 2, 17, 7, '2018-04-18 13:50:47', '2018-05-15 20:40:42', 'fg04_1524063047.png', 'Asus ROG Stryx'),
(36, 'O que já era bom pode ficar ainda melhor, e o novo smartphone LG G9 é a prova disso. Projetado para atender a todas as suas necessidades, o novo G9 agora vem com Android 7.0 (Nougat), o mais novo sistema operacional do Google.\r\n\r\nAgora com a câmera de sefie grande angular de 5MP e 120° do LG K10 novo, cabe todo mundo nas suas selfies, com muito mais cenário. Sem malabarismos, sem acessórios.', 150.00, '3', 1, 16, 2, '2018-04-18 13:52:35', '2018-05-15 20:40:49', 'LG-Optimus-L9-1_1524063155.jpg', 'LG G9'),
(37, 'Hp fixe', 999.00, '2', 7, 17, 6, '2018-04-18 13:53:22', '2018-05-15 13:35:28', 'c05523198_1750x1285_1524063202.jpg', 'HP Omen'),
(38, 'A consola PlayStation 4 Slim, estilizada e compacta mas com a mesma potência de jogo, oferece uma experiência de jogo inédita, grafismos dinâmicos e realistas, personalização inteligente e múltiplas funcionalidades ligadas às redes sociais. Tecnicamente, o sistema PlayStation 4 Slim possui um chip Octa-Core x86-64 e um processador gráfico de 1,84 TFLOPS com 8 GB de memória unificada GDDR5, a que se soma um disco rígido de 1 TB. Este equipamento de topo facilita a programação dos jogos e melhora também a qualidade do conteúdo.', 299.00, '3', 1, 6, 8, '2018-04-18 14:08:01', '2018-05-15 20:40:56', 'playstation-4-slim-vertical-product-shot-01-us-07sep16_1524064081.png', 'Playstation 4'),
(39, '<p>Release date September 2017</p>\r\n\r\n<p>Form factor Touchscreen Dimensions (mm) 143.60 x 70.90 x 7.70 Weight (g) 174.00</p>\r\n\r\n<p>Battery capacity (mAh) 2716</p>\r\n\r\n<p>Removable battery No</p>\r\n\r\n<p>DISPLAY Screen size (inches) 5.80</p>\r\n\r\n<p>Touchscreen Yes</p>\r\n\r\n<p>Resolution 1125x2436 pixels</p>\r\n\r\n<p><strong>HARDWARE </strong></p>\r\n\r\n<p>Processor hexa-core Processor make Apple A11 Bionic RAM 3GB</p>\r\n\r\n<p>Internal storage 64GB</p>\r\n\r\n<p>Expandable storage No</p>', 1300.00, '5', 1, 16, 8, '2018-04-18 14:32:03', '2018-05-15 20:41:03', 'apple-iphone-10-x-256gb-silver-nf-a1865-a1901-brindes-D_NQ_NP_820981-MLB26464310490_112017-F_1524065523.jpg', 'iPhone 10'),
(40, 'Disco SSD', 59.00, '4', 1, 4, 8, '2018-04-18 19:37:00', '2018-05-15 20:41:20', 'dcb9f10b1a9c447e048b604f63509880bbb0a683_1524083820.jpg', 'Disco SSD'),
(41, 'Disco muito potente feito para ser o melhor do mundo', 99.99, '3', 10, 4, 8, '2018-04-18 19:43:16', '2018-05-15 20:41:08', 'Samsung_840_500_GB_521665_i1_1524084196.jpg', 'Disco SSD 512GB'),
(46, 'Cabo HDMI de alta qualidade', 2.45, '2', 6, 5, 8, '2018-04-21 07:33:04', '2018-05-15 13:35:40', '32757947-1-zoom_1524299584.jpg', 'Cabo HDMI'),
(47, '<p>Sistema Cache: 4MB, Dual-core</p>\r\n\r\n<p>Mem&oacute;ria: 8 GB DDR4 2133 Mhz</p>\r\n\r\n<p>Interfaces: 4 x Thunderbolt 3 (USB-C) - charging, DisplayPort, Thunderbolt (up to 40 Gbps), USB 3.1 Gen 2 (up to 10 Gbps)</p>\r\n\r\n<p>Processador: Intel Core i5 Velocidade do Processador: 2.9Ghz (up to 3.3Ghz c/Intel Turbo Boost Technology)</p>\r\n\r\n<p>Ecr&atilde;: 13.3&quot; (338 mm), WQHD 2560 x 1600, LED-backlit, IPS, 227 ppi, model with Touch Bar</p>\r\n\r\n<p>Placa Gr&aacute;fica: Intel Iris Graphics 550 Sistema Operativo: macOS Sierra</p>', 1996.48, '3', 9, 17, 3, '2018-04-23 16:13:19', '2018-05-01 16:40:22', 'f65cda3be906933ad2c3d861b946fcd7_1524503599.png', 'MacBook Pro 13\"'),
(48, 'asd', 123.00, '123', 1, 5, 118, '2018-04-24 20:43:51', '2018-04-24 20:43:51', 'smoke09_1524606231.png', 'asd'),
(49, '123', 13.00, '123', 1, 1, 9, '2018-04-24 20:59:12', '2018-04-24 20:59:12', 'smoke08_1524607152.png', '123'),
(51, '123', 123.00, '123', 1, 1, 119, '2018-04-25 07:50:59', '2018-04-25 07:50:59', 'W01_1524646259.png', '312'),
(54, 'Computador All in One LG 24V570-G.BJ31P1 - Intel Core i5 4GB 1TB 23,8” IPS Windows 10\r\nRealize suas tarefas com maior rapidez, consistência e alto desempenho com a 7ª Geração de Processadores Intel® Core™ i3 e i5 em conjunto de 8GB de memória RAM DDR4.\r\n\r\nO LG 24V570 é mais silencioso que uma biblioteca, é ultra silencioso. Assim, você poderá usar seu All in One sem se preocupar com ruídos. A tela IPS de 23.8\" de seu LG All in One tem resolução Full HD (1920x1080) para melhor definição e mais clareza nas imagens reproduzidas. São apenas 14.5mm de borda para uma perfeita imersão visual, permitindo uma tela muito mais ampla e uma incrível experiência visual.', 640.00, '4', 1, 18, 8, '2018-05-01 15:54:42', '2018-05-15 20:41:15', '6b27a56121fa5f010c092298a318bbcb_1525193682.jpg', 'All in One LG 24V570-G.BJ31P1'),
(55, 'COMPUTADOR DESKTOP GAMING VIBOX INTEL HEXA CORE 4.0GHZ 32 GB 3000MHZ GEFORCE 1070 GTX 480GB SSD\r\n3,6GHz (Modo Turbo 4,0GHz) Seis processador 6-Core Intel Broadwell-E i7 6850K, velocidade do processador, Placa gráfica dedicada Nvidia GeForce GTX Super Avançado 1070 com 8GB de memória, 32 Gb Corsair Vengeance LPX LED Blano DDR4 RAM, velocidade RAM: 3000MHz, Kingston Salidos capacidade do disco rígido: 480GB + Capacidade do disco rígido SATA-III Western Digital: 2000 GB (2 TB), BenQ EW2750ZL 27\"\" widescreen LED monitor, Razer BlackWidow Gaming Keyboard Chroma (UK QWERTY), Razer Mamba Gaming Mouse Tournament Edition, Gaming auscultadores Razer Kraken 7,1 Chroma, 300MBs super rápido adaptador WiFi USB sem fio, Sistema Operativo Windows 10 pré-instalado\r\n\r\n\"\"O Vibox Spectrum GXM770- tem o maior conjunto de especificações, e é perfeito para qualquer jogador que procuram o melhor em todos os aspectos de desempenho em um computador. Combina o melhor, tem um processador Core [{CPU_Cores}], muita memória RAM, um disco rígido grande e uma placa de vídeo poderosa, isso permitirá que você jogue todos os últimos jogos com a qualidade gráfica para suas configurações mais altas, dando-lhe experiência de jogo fenomenal.\"\"\r\n\"\"Esta equipa está incluindo o mais recente modelo de processador Skylake Intel 6-core i7 6850K. Este é o famoso processador Intel, Core i7 arquitetura e pai processadores. Ele oferece um desempenho impressionante em programas de operações múltiplas. O ponto mais alto da CPU gama tem uma velocidade de clock de 3.6GHz padrão, mas tem um núcleo de velocidade turbo alcançar a 4,0GHz e automaticamente aumentar a velocidade do computador atingindo incrivelmente 4,0GHz! quando você precisa de mais velocidade, tornando-se um dos mais rápidos processadores dominantes no mercado. Eles são os melhores processadores do mundo.\"\"', 4774.00, '5', 11, 19, 7, '2018-05-01 16:01:29', '2018-05-01 16:01:53', 'Computador-Desktop-Gaming-Vibox-Intel-Hexa-Core-4-0GHz-32-GB-3000MHz-GeForce-1070-GTX-480GB-D_1525194088.jpg', 'DESKTOP GAMING VIBOX'),
(56, '<table summary=\"Detalhes do artigo\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Com certifica&ccedil;&atilde;o Energy Star</th>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Frequ&ecirc;ncia do processador</th>\r\n			<td>3,4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Fam&iacute;lia de processador</th>\r\n			<td>6th gen Intel&reg; Core? i7</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Modelo de processador</th>\r\n			<td>i7-6700</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de cores de processador</th>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de processadores</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Frequ&ecirc;ncia turbo (max) do processador</th>\r\n			<td>4 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tomada de processador</th>\r\n			<td>LGA 1151 (Socket H4)</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Cache do processador</th>\r\n			<td>8 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de cache do processador</th>\r\n			<td>Smart Cache</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Taxas do barramento de sistema</th>\r\n			<td>8 GT/s</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de threads do processador</th>\r\n			<td>8</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">PCI Express slots version</th>\r\n			<td>3.0</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Litografia do processador</th>\r\n			<td>14 nm</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Modos de opera&ccedil;&atilde;o de processador</th>\r\n			<td>64 bits</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Stepping</th>\r\n			<td>R0</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de bus</th>\r\n			<td>DMI3</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Nome de c&oacute;digo do processador</th>\r\n			<td>Skylake</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thermal Design Power (TDP)</th>\r\n			<td>65 W</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">S&eacute;rie do processador</th>\r\n			<td>Intel Core i7-6700 Desktop series</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero m&aacute;ximo de ranhuras PCI Express</th>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Configura&ccedil;&otilde;es PCI Express</th>\r\n			<td>2x8,1x8+2x4,1x16</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tcase</th>\r\n			<td>71 &deg;C</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Mem&oacute;ria interna m&aacute;xima suportada pelo processador</th>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Processador sem conflito</th>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipos de mem&oacute;ria suportados pela mem&oacute;ria</th>\r\n			<td>DDR3L-SDRAM,DDR4-SDRAM</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Velocidades da mem&oacute;ria suportada pelo processador</th>\r\n			<td>1333,1600,1866,2133 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Largura de banda (m&aacute;x.) de mem&oacute;ria suportada pelo processador</th>\r\n			<td>34,1 GB/s</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Canais de mem&oacute;ria suportados pelo processador</th>\r\n			<td>Duplo</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">ECC suportado pelo processaor</th>\r\n			<td>N&atilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tens&atilde;o de mem&oacute;ria suportada pelo processador</th>\r\n			<td>1,35 V</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Capacidade da mem&oacute;ria incorporada</th>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de mem&oacute;ria incorporada</th>\r\n			<td>DDR4-SDRAM</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Mem&oacute;ria m&aacute;xima</th>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Disposi&ccedil;&atilde;o da mem&oacute;ria</th>\r\n			<td>1 x 8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Slots de mem&oacute;ria</th>\r\n			<td>4x DIMM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1125.24, '3', 12, 20, 30, '2018-05-01 16:05:29', '2018-05-01 16:32:54', 'DELL-Precision-T3620-3-4GHz-i7-6700-Mini-Torre-Preto-Estacao-de-trabalho_1525194329.jpg', 'DELL Precision T3620'),
(57, '<p>O computador Asus Transformer Pro T304UA-77DHDSB1 combina a comodidade de um tablet com o poder de desempenho de um computador portátil, culminando num dispositivo híbrido extremamente prático e fácil de transportar, capaz de lidar com todas as tarefas de computação diárias e proporcionar excelente momentos de entretenimento. A estrutura ultrafina possui uma capa-teclado com encaixe magnético, podendo destacar-se do ecrã. Além disso, uma aba flexível na traseira do ecrã possibilita manter o computador híbrido Asus Transformer Pro T304UA-77DHDSB1 em diferentes posições, adaptando-se ao modo de utilização pretendido. Destaque para o ecrã tátil LCD LED de 12,6” com resolução de 2160 x 1440 píxeis, que exibe imagens de grande qualidade, cheias de cor e definição. Acresce que o suporte de multitoque permite experienciar todas as possibilidades do sistema operativo Windows 10. No interior, o processador Dual-Core Intel Core i7-7500U a 2,7 GHz (Max Turbo a 3,5 GHz), aliado a 16 GB de memória RAM, garante desempenho rápido e eficiente, possibilitando a execução de múltiplas aplicações em simultâneo. Outras características relevantes: disco SSD de 512 GB; webcam e microfone; conetividade Wi-Fi e Bluetooth; portas USB 3.0, USB 3.0 Type-C e HDMI; caneta Stylus incluída. Garantia de dois anos.<br />\r\n<br />\r\n<strong>A Worten destaca:</strong> computador híbrido com capa-teclado destacável; ecrã tátil LCD LED de 12,6” com resolução de 2160 x 1440 píxeis; processador Dual-Core Intel Core i7-7500U a 2,7 GHz; 16 GB de memória RAM; disco SSD de 512 GB; webcam e microfone; caneta Stylus incluída.</p>', 1599.00, '3', 2, 21, 6, '2018-05-01 16:45:12', '2018-05-15 20:41:36', '8c42e132b19696893e06c0f34fc18e478d1f26c9_1525196712.jpg', 'ASUS T304UA-77DHDSB1 12.6\'\''),
(58, '<table summary=\"Detalhes do artigo\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Frequ&ecirc;ncia do processador</th>\r\n			<td>1,7 GHz</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Fam&iacute;lia de processador</th>\r\n			<td>Intel Xeon Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Modelo de processador</th>\r\n			<td>3104</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de cores de processador</th>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de processadores</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de cache do processador</th>\r\n			<td>L3</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Cache do processador</th>\r\n			<td>8,25 MB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Fabricante do processador</th>\r\n			<td>Intel</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tomada de processador</th>\r\n			<td>LGA 3647</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Capacidade da mem&oacute;ria incorporada</th>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de mem&oacute;ria incorporada</th>\r\n			<td>DDR4-SDRAM</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Mem&oacute;ria m&aacute;xima</th>\r\n			<td>192 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Slots de mem&oacute;ria</th>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">ECC</th>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Disposi&ccedil;&atilde;o da mem&oacute;ria</th>\r\n			<td>1 x 8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Suporte RAID</th>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">N&uacute;mero de unidades de disco r&iacute;gido suportadas</th>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Ethernet LAN</th>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tecnologia de cablagem</th>\r\n			<td>10/100/1000Base-T(X)</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tipo de ethernet interface</th>\r\n			<td>Gigabit Ethernet</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Quantidade de portas VGA</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Quantidade de portas Ethernet LAN (RJ-45)</th>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Portas s&eacute;rie de comunica&ccedil;&otilde;es</th>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Sistema operativo instalado</th>\r\n			<td>N&atilde;o</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Sistema Operativo</th>\r\n			<td>Microsoft Windows ServerCanonical UbuntuRed Hat Enterprise Linux (RHEL)SUSE Linux Enterprise Server (SLES)VMwareCitrix XenServer</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Profundidade da Unidade</th>\r\n			<td>440 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1273.00, '5', 7, 22, 6, '2018-05-01 16:47:13', '2018-05-01 16:47:13', 'Hewlett-Packard-Enterprise-ProLiant-ML110-Gen10-1-7GHz-3104-servidor_1525196833.jpg', 'Enterprise ProLiant ML110'),
(59, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>| O SEU MINI PC IDEAL</p>\r\n			<br />\r\n			O Mini PC Android Metronic QU4Dbox pode ser ligado &agrave; sua televis&atilde;o HDMI e cont&eacute;m um comando para que posso ser usado &agrave; dist&acirc;ncia. No ecr&atilde; de aplica&ccedil;&otilde;es aparecem v&aacute;rios &iacute;cones que permitem seleccionar um cliente de correio electr&oacute;nico, um navegador Internet, o menu de configura&ccedil;&atilde;o do QU4Dbox android, um reprodutor &aacute;udio, leitor de fotos ou o &iacute;cone da aplica&ccedil;&atilde;o Miracast.</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>| REPREDUTOR MULTIM&Eacute;DIA</p>\r\n			<br />\r\n			O QU4Dbox android possui reprodutores multim&iacute;dia que permitem ler videos, m&uacute;sica ou fotos de um disco USB ou um cart&atilde;o MicroSD/TF. Pode aceder carregando no &iacute;cone &quot;Aplica&ccedil;&otilde;es&quot; e carregando nos &iacute;cones seguintes em fun&ccedil;&atilde;o do tipo de ficheiro a reproduzir. &Eacute; necess&aacute;rio inserir um disco USB ou cart&atilde;o MicroSD/TF com os ficheiros a visualizar ou escutar. O gestor de ficheiros permite: copiar, cortar, apagar, renomear, carregando no &iacute;cone do gestor de ficheiros do ecr&atilde; principal. Carregar e manter carregado a tecla esquerda do menu faz com que apare&ccedil;a um menu emergente com op&ccedil;&otilde;es para cortar, copiar, renomear, mover ficheiros.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 66.17, '2', 13, 23, 33, '2018-05-01 16:50:24', '2018-05-01 16:50:24', '441208_1525197024.jpg', 'METRONIC QU4DBOX'),
(60, '<p><strong>REDEFININDO O PC DESKTOP</strong><br />\r\nDesafiando a ess&ecirc;ncia de como definimos um PC desktop, os engenheiros da GIGABYTE desenvolveram um PC ultra compacto com um design de chassi com superf&iacute;cie de alum&iacute;nio escovado. Ideal para uma ampla gama de aplicativos de computa&ccedil;&atilde;o em casa ou no escrit&oacute;rio, o BRIX demonstra simplicidade e conveni&ecirc;ncia. O BRIX estabelece um novo padr&atilde;o para miniaturiza&ccedil;&atilde;o de desktop que o torna perfeito como um hub HTPC / multim&eacute;dia&nbsp;discreto, um PC de baixa pot&ecirc;ncia para a fam&iacute;lia ou um PC de escrit&oacute;rio.</p>\r\n\r\n<p><strong>PROCESSADOR INTEL CELERON</strong><br />\r\nCom base na micro-arquitetura Silvermot que utiliza a tecnologia de processo de 14nm, este SoC apresenta melhorias significativas no poder computacional, efici&ecirc;ncia energ&eacute;tica, desempenho gr&aacute;fico e multim&eacute;dia aprimorado.</p>\r\n\r\n<p><strong>SUPORTA VESA</strong><br />\r\nCom um suporte VESA inclu&iacute;do, o GIGABYTE BRIX&trade; pode ser facilmente montado atr&aacute;s de um monitor ou HDTV, oferecendo uma maneira simples e eficaz de transformar qualquer monitor ou TV compat&iacute;vel com VESA num PC completo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Processador:</strong>&nbsp;Intel&reg; Celeron&reg; N3150 Quad-Core,&nbsp;1.60 GHz com Turbo at&eacute;&nbsp;2.08 GHz,&nbsp;2 MB Cache</li>\r\n	<li><strong>Sistema Operativo (n&atilde;o inclu&iacute;do):</strong>\r\n	<ul>\r\n		<li>Compat&iacute;vel com Windows 10</li>\r\n		<li>Poder&aacute; adquirir&nbsp;<a href=\"https://www.pcdiga.com/sistema-operativo\" target=\"_blank\">aqui</a>&nbsp;o seu Sistema Operativo</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Gr&aacute;ficos:</strong>&nbsp;\r\n	<ul>\r\n		<li>Intel&reg;&nbsp;HD Graphics</li>\r\n		<li>Resolu&ccedil;&atilde;o m&aacute;xima HDMI de&nbsp;4096 x 2160 @ 60Hz</li>\r\n		<li>Resolu&ccedil;&atilde;o m&aacute;xima VGA de&nbsp;1920 x 1200 @ 60 Hz</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Mem&oacute;ria RAM (n&atilde;o inclu&iacute;da):</strong>\r\n	<ul>\r\n		<li>1 x Slot&nbsp;SO-DIMM&nbsp;1066/1600 MHz&nbsp;DDR3L&nbsp;1.35V</li>\r\n		<li>Suporta m&aacute;ximo 8GB</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Armazenamento (n&atilde;o inclu&iacute;do):</strong>\r\n	<ul>\r\n		<li>Suporta 1 x HDD ou SSD 2.5&rdquo;, com espessura de 7.0/9.5 mm (1 x 6 Gbps SATA 3)</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Slot de expans&atilde;o:</strong>&nbsp;1 x PCIe M.2 NGFF 2230 A-E (ocupado por placa Wireless + BT)</li>\r\n	<li><strong>Comunica&ccedil;&otilde;es:</strong>\r\n	<ul>\r\n		<li>Intel&reg;&nbsp;IEEE 802.11 ac, Dual Band Wi-Fi + Bluetooth 4.0</li>\r\n		<li>Gigabit LAN (Realtek RTL8111H)</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>&Aacute;udio:</strong>&nbsp;Realtek ALC255</li>\r\n	<li><strong>Portas I/O Frontais:</strong>\r\n	<ul>\r\n		<li>2 x USB 3.0</li>\r\n		<li>1 x Leitor de cart&otilde;es Micro SD</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Portas I/O Traseiras:</strong>\r\n	<ul>\r\n		<li>1 x HDMI</li>\r\n		<li>2 x USB 3.0</li>\r\n		<li>1 x RJ45</li>\r\n		<li>1 x DC-In</li>\r\n		<li>1 x Kensington lock slot</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Portas I/O Laterais:</strong>\r\n	<ul>\r\n		<li>1 x VGA&nbsp;</li>\r\n		<li>1 x headset phone jack</li>\r\n		<li>1 x Mic phone jack</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>VESA:</strong>&nbsp;Inclui suporte VESA com norma&nbsp;75 x 75 e 100 x 100 mm</li>\r\n	<li><strong>Dimens&otilde;es do produto:</strong>&nbsp;56.1 mm x 107.6 mm x 114.4 mm</li>\r\n</ul>', 139.90, '5', 14, 24, 24, '2018-05-01 16:53:57', '2018-05-01 17:01:04', '1_59_3 (1)_1525197664.jpg', 'Gigabyte BRIX GB-BACE-3150 (rev. 1.0)'),
(61, '<p>Caixa de alta qualidade compat&iacute;vel com&nbsp;Raspberry Pi B+, Raspberry Pi 2 B e Raspberry Pi 3 B.<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Caracter&iacute;sticas Principais:</strong>\r\n\r\n	<ul>\r\n		<li>Aberturas/Cortes para todos os conectores do Raspberry Pi</li>\r\n		<li>Espa&ccedil;o interno para placas de expans&atilde;o</li>\r\n		<li>Orif&iacute;cios de ventila&ccedil;&atilde;o superior e inferior</li>\r\n	</ul>\r\n	</li>\r\n</ul>', 9.99, '2', 15, 25, 2, '2018-05-01 16:57:59', '2018-05-01 17:00:22', '4989_1_1525197621.jpg', 'Caixa Preta Raspberry Pi 3'),
(62, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Cor da caixa</td>\r\n			<td>Preto</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Velocidade do clock</td>\r\n			<td>2400 MHz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipo de memória incorporada</td>\r\n			<td>DDR4-SDRAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Peso do produto</td>\r\n			<td>12,7 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Aprovações Regulamentares</td>\r\n			<td>BSMI, CCC, CE, FCC(Class B), Energy Star</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Interface do host</td>\r\n			<td>Serial ATA III</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Alimentação</td>\r\n			<td>500 W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processador</td>\r\n			<td>Intel® Celeron®, Intel® Pentium®</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Altura da Unidade</td>\r\n			<td>435 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Largura do produto</td>\r\n			<td>190 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Profundidade da Unidade</td>\r\n			<td>423 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memória máxima</td>\r\n			<td>64 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tomada de processador</td>\r\n			<td>LGA 1151 (Socket H4)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quantidade de portas PS/2</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quantidade de portas USB 2.0</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quantidade de portas Ethernet LAN (RJ-45)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Entrada de microfone</td>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Estrutura da motherboard</td>\r\n			<td>ATX</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tamanho do disco rígido</td>\r\n			<td>2.5/3.5\"</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Com certificação Energy Star</td>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sistema operativo instalado</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Saída de auscultadores</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequência</td>\r\n			<td>50/60</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipo de produto</td>\r\n			<td>Estação de trabalho</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Motherboard chipset</td>\r\n			<td>Intel C232</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Níveis RAID</td>\r\n			<td>0, 1, 5, 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Número de armazenamento de drives suportadas</td>\r\n			<td>7</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ethernet LAN</td>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Quantidade de portas USB 3.0 (3.1 Gen 2) Tipo A</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Porta DVI</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Leitor de cartões integrado</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipo de chassis</td>\r\n			<td>Torre</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slots de memória</td>\r\n			<td>4x DIMM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Instalação suportada</td>\r\n			<td>Vertical</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Placa gráfica on-board</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Unidades ópticas</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Armazenamento</td>\r\n			<td>HDD+SSD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Modelo da placa gráfica on-board</td>\r\n			<td>Não disponível</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Certificação 80 PLUS</td>\r\n			<td>80 PLUS Bronze</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Número de baías de 5,25\"</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Número de baías de 3,5\"</td>\r\n			<td>3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Interfaces da drive SSD</td>\r\n			<td>M.2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PCI Express x1 slots</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Número de 2.5\" bays</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display incluído</td>\r\n			<td>Não</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipo de interface BD</td>\r\n			<td>SATA</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slots PCI Express x16 (Gen 3.x)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Posicionamento no mercado</td>\r\n			<td>Início</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slots PCI Express x1 (Gen 3.x)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Slots PCI Express x4 (Gen 3.x)</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NVIDIA GameWorks VR</td>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Preparado para Realidade Virtual (RV)</td>\r\n			<td>Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Placa gráfica discreta</td>\r\n			<td>Não</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 357.90, '4', 2, 26, 7, '2018-05-01 17:05:07', '2018-05-15 20:41:27', 'asus-esc300-g4-torre-preto-estacao-de-trabalho_1525197907.jpg', 'BAREBONE  WORKSTATION TOWER - ESC300 G4'),
(63, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Specifications</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor / System Bus</td>\r\n			<td>2 x Socket R3 (LGA 2011-3)&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Intel&reg; Xeon&reg; processor E5-2600 v3 product family(145W)</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>*Refer to www.asus.com for CPU Support list&nbsp;</p>\r\n\r\n			<p>QPI 6.4 / 8.0 / 9.6 GT/s</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Generation</td>\r\n			<td>E8</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Memory</td>\r\n			<td><strong>Total Slots :</strong>&nbsp;16 (4-channel per CPU, 8 DIMM per CPU)&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><strong>Capacity :</strong>&nbsp;Maximum up to 1024GB LRDIMM</p>\r\n\r\n			<p><strong>Memory Type :</strong></p>\r\n\r\n			<p>DDR4 2133 /1866/1600/1333 RDIMM*1</p>\r\n\r\n			<p>DDR4 2133 /1866/1600/1333 LRDIMM*1</p>\r\n\r\n			<p>DDR4 2133 /1866/1600/1333*1</p>\r\n\r\n			<p><strong>Memory Size :</strong></p>\r\n\r\n			<p>32GB, 16GB, 8GB, 4GB RDIMM</p>\r\n\r\n			<p>64GB, 32GB LRDIMM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Expansion Slots</td>\r\n			<td>2 + 1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>1 x PCI-E x16 (Gen3 x8 Link), FH, HL</p>\r\n\r\n			<p>1 x PCI-E x8 (Gen3 x8 Link), FH, HL</p>\r\n\r\n			<p>1 x PCI-E x8 (Gen3 x8 link), OCP Mezzanine*&nbsp;</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>* Support for MCB-10G-2S (Dual Port 10 Gigabit/s Ethernet card) (optional)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Storage</td>\r\n			<td><strong>SATA Controller :</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Intel&reg; C612</p>\r\n\r\n			<p>9 x SATA3 6Gb/s ports *2</p>\r\n\r\n			<p>1 x M.2 connector&nbsp;</p>\r\n\r\n			<p>Intel&reg; Rapid Storage Technology Enterprise(RSTe) (For Windows Only)</p>\r\n\r\n			<p>(Support Software RAID 0, 1, 5, 10 )</p>\r\n\r\n			<p><strong>SAS Controller :</strong></p>\r\n\r\n			<p>ASUS PIKE II 3008 8-port SAS HBA card(Optional)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDD Bays</td>\r\n			<td>4 x Hot-swap 3.5&quot; Storage Bays</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Networking</td>\r\n			<td>2 x Intel&reg; I210AT + 1 x Mgmt LAN</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphic</td>\r\n			<td>Aspeed AST2400 with 32MB VRAM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>On Board I/O</td>\r\n			<td>2 x RJ-45 ports&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>1 x RJ-45 Mgmt LAN port</p>\r\n\r\n			<p>2 x USB 3.0 ports&nbsp;</p>\r\n\r\n			<p>1 x VGA port&nbsp;</p>\r\n\r\n			<p>1 x PS/2 KB/MS port</p>\r\n\r\n			<p>1 x Q-Code/Port 80 LED</p>\r\n\r\n			<p>1 x Power switch/LED</p>\r\n\r\n			<p>1 x Location LED</p>\r\n\r\n			<p>1 x HDD activity LED</p>\r\n\r\n			<p>1 x Message LED</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OS Support</td>\r\n			<td>Windows&reg; Server 2012 R2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Windows&reg; Server 2012</p>\r\n\r\n			<p>Windows&reg; Server 2008 R2</p>\r\n\r\n			<p>RedHat&reg; Enterprise Linux</p>\r\n\r\n			<p>SuSE&reg; Linux Enterprise Server</p>\r\n\r\n			<p>CentOS</p>\r\n\r\n			<p>Ubuntu</p>\r\n\r\n			<p>VMware</p>\r\n\r\n			<p>Citrix XenServer</p>\r\n\r\n			<p>*3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Management Solution</td>\r\n			<td>ASWM Enterprise</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>On-Board ASMB8-iKVM for KVM-over-IP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Regulatory Compliance</td>\r\n			<td>BSMI, CE, C-Tick, FCC(Class A)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimensions</td>\r\n			<td>615mm x 444mm x 44mm (1U)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Form Factor</td>\r\n			<td>1U</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>17 Kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Supply</td>\r\n			<td>Single 600W 80PLUS Gold Power Supply</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>Rating: 100-240Vac,9A/5A ,50-60Hz, Class I</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Environment</td>\r\n			<td>Operation temperature: 10℃ ~ 35℃</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Non operation temperature: -40℃ ~ 70℃</p>\r\n\r\n			<p>Non operation humidity: 20% ~ 90% ( Non condensing)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Note</td>\r\n			<td>*1 Refer to ASUS server AVL for the latest update</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n\r\n			<p>*2 8 by 2 x mini SAS connector</p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p>*3 Please find the latest OS support from http://www.asus.com/</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', 1194.50, '4', 2, 27, 7, '2018-05-01 17:10:43', '2018-05-01 17:10:43', 'vuugo-asus-RS500-E8-PS4-3-600x600_1525198243.jpg', 'ASUS RS500-E8-PS4'),
(64, '<h2>CARACTER&Iacute;STICASPort&aacute;til Gaming 15.6&#39;&#39; ACER Predator G9-593</h2>\r\n\r\n<p>Processador</p>\r\n\r\n<ul>\r\n	<li>ProcessadorIntel Core i7-6700HQ</li>\r\n	<li>Familia de ProcessadorIntel Core i7</li>\r\n	<li>Velocidade Processador2.6 GHz</li>\r\n	<li>Quantidade de N&uacute;cleos CoreQuad Core</li>\r\n</ul>\r\n\r\n<p>Mem&oacute;ria e Armazenamento</p>\r\n\r\n<ul>\r\n	<li>RAM32 GB</li>\r\n	<li>Tipo de ArmazenamentoHDD+SSD</li>\r\n	<li>Armazenamento1 TB + 256 GB</li>\r\n</ul>\r\n\r\n<p>Performance</p>\r\n\r\n<ul>\r\n	<li>Tipo de Placa Gr&aacute;ficaNVIDIA GeForce GTX</li>\r\n	<li>Gr&aacute;ficaNV&Iacute;DIA GeForce GTX 1070</li>\r\n	<li>Mem&oacute;ria Gr&aacute;fica (M&aacute;x)8GB Dedicado GDDR5</li>\r\n	<li>Autonomia (Estimada)At&eacute; 3 Horas</li>\r\n</ul>\r\n\r\n<p>Caracter&iacute;sticas Adicionais</p>\r\n\r\n<ul>\r\n	<li>Placa de SomSim</li>\r\n	<li>C&acirc;mara IncorporadaSim</li>\r\n	<li>Teclado num&eacute;ricoSim</li>\r\n	<li>SoftwareMicrosoft office 2016 Trial version (30 days trial version)</li>\r\n	<li>Sistema OperativoWindows 10 Home</li>\r\n</ul>\r\n\r\n<p>Ecr&atilde;</p>\r\n\r\n<ul>\r\n	<li>Ecr&atilde;15.6&#39;&#39; 1920x1080</li>\r\n	<li>Diagonal do Ecr&atilde; (&#39;&#39;)15.6</li>\r\n	<li>Resolu&ccedil;&atilde;o do Ecr&atilde;1920 x 1080 (FHD)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Refer&ecirc;ncias</p>\r\n\r\n<ul>\r\n	<li>Refer&ecirc;ncia Worten6010833</li>\r\n	<li>EAN4713392827020</li>\r\n	<li>MarcaACER</li>\r\n	<li>ModeloACER Predator G9-593</li>\r\n	<li>Garantia2 anos</li>\r\n</ul>\r\n\r\n<p>Caracter&iacute;sticas F&iacute;sicas</p>\r\n\r\n<ul>\r\n	<li>Peso3.700 Kg</li>\r\n	<li>CorPreto/vermelho</li>\r\n	<li>Altura4</li>\r\n	<li>Largura39</li>\r\n	<li>Profundidade29.9</li>\r\n</ul>\r\n\r\n<p>Mais Informa&ccedil;&otilde;es</p>\r\n\r\n<ul>\r\n	<li>Mais Informa&ccedil;&otilde;esP/N: NH.Q16EB.003</li>\r\n	<li>Conte&uacute;do Extra Inclu&iacute;do na CaixaCarregador, manual</li>\r\n	<li>Garantia Bateria2 anos</li>\r\n	<li>TipoGaming</li>\r\n</ul>\r\n\r\n<p>Conetividade e Liga&ccedil;&otilde;es</p>\r\n\r\n<ul>\r\n	<li>DriveDVD Super Multi Drive</li>\r\n	<li>ConetividadeWi-Fi e Bluetooth</li>\r\n	<li>Liga&ccedil;&otilde;esHDMI / USB 2.0 / USB 3.0 / RJ-45</li>\r\n</ul>\r\n\r\n<p>Software e Sistema Operativo</p>\r\n\r\n<ul>\r\n	<li>SoftwareMicrosoft office 2016 Trial version (30 days trial version)</li>\r\n	<li>Sistema OperativoWindows 10 Home</li>\r\n</ul>', 2099.00, '5', 2, 17, 19, '2018-05-15 20:54:50', '2018-05-15 20:54:50', 'acer_1526421290.jpg', 'ACER Predator G9-593'),
(65, '<h2>CARACTER&Iacute;STICASPort&aacute;til Gaming HP OMEN X 17-AP002NP</h2>\r\n\r\n<p>Processador</p>\r\n\r\n<ul>\r\n	<li>ProcessadorIntel Core i7-7820HK</li>\r\n	<li>Familia de ProcessadorIntel Core i7</li>\r\n	<li>Velocidade Processador2,9 GHz</li>\r\n</ul>\r\n\r\n<p>Mem&oacute;ria e Armazenamento</p>\r\n\r\n<ul>\r\n	<li>RAM32 GB</li>\r\n	<li>Tipo de ArmazenamentoHDD+SSD</li>\r\n	<li>Armazenamento1 TB HDD + 256 GB SSD</li>\r\n</ul>\r\n\r\n<p>Performance</p>\r\n\r\n<ul>\r\n	<li>Gr&aacute;ficaNV&Iacute;DIA GeForce GTX 1080 8GB GDDR5</li>\r\n	<li>Autonomia (Estimada)99 Wh</li>\r\n</ul>\r\n\r\n<p>Caracter&iacute;sticas Adicionais</p>\r\n\r\n<ul>\r\n	<li>Placa de SomBang &amp; Olufsen</li>\r\n	<li>C&acirc;mara IncorporadaSim</li>\r\n	<li>Teclado num&eacute;ricoSim</li>\r\n	<li>SoftwareNetflix</li>\r\n	<li>Sistema OperativoWindows 10 Home</li>\r\n</ul>\r\n\r\n<p>Ecr&atilde;</p>\r\n\r\n<ul>\r\n	<li>Ecr&atilde;FHD IPS antirreflexo retroilumina&ccedil;&atilde;o WLED</li>\r\n	<li>Diagonal do Ecr&atilde; (&#39;&#39;)17.3</li>\r\n	<li>Resolu&ccedil;&atilde;o do Ecr&atilde;1920 x 1080 (FHD)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Refer&ecirc;ncias</p>\r\n\r\n<ul>\r\n	<li>Refer&ecirc;ncia Worten6356495</li>\r\n	<li>EAN0192018041462</li>\r\n	<li>MarcaHP</li>\r\n	<li>Modelo2PJ84EA#AB9</li>\r\n	<li>Garantia2 anos</li>\r\n</ul>\r\n\r\n<p>Caracter&iacute;sticas F&iacute;sicas</p>\r\n\r\n<ul>\r\n	<li>Peso4.85</li>\r\n	<li>CorPreto sombra</li>\r\n	<li>Altura3.6</li>\r\n	<li>Largura42.5</li>\r\n	<li>Profundidade32.7</li>\r\n</ul>\r\n\r\n<p>Mais Informa&ccedil;&otilde;es</p>\r\n\r\n<ul>\r\n	<li>Conte&uacute;do Extra Inclu&iacute;do na CaixaTransformador de 330 W</li>\r\n	<li>TipoGaming</li>\r\n</ul>\r\n\r\n<p>Conetividade e Liga&ccedil;&otilde;es</p>\r\n\r\n<ul>\r\n	<li>ConetividadeWi-Fi e Bluetooth</li>\r\n	<li>Liga&ccedil;&otilde;es2 Thunderbolt&iquest; 3 (transfer&ecirc;ncia de dados at&eacute; 40 GB/s, DP1.2, HP Sleep and Charge); 3 USB 3.1 Gen 1 (1 HP Sleep and Charge); 1 Mini DisplayPort&iquest;; 1 HDMI; 1 RJ-45; 1 tomada combinada para auscultadores/microfone; 1 entrada de microfon</li>\r\n</ul>\r\n\r\n<p>Software e Sistema Operativo</p>\r\n\r\n<ul>\r\n	<li>SoftwareNetflix</li>\r\n	<li>Sistema OperativoWindows 10 Home</li>\r\n</ul>', 3299.00, '5', 7, 17, 20, '2018-05-15 20:56:50', '2018-05-15 20:56:50', 'Omen_1526421410.jpg', 'HP OMEN X 17-AP002NP'),
(66, '<p>O carregador port&aacute;til Innergie PowerGear 90W apresenta design moderno, profissional e esteticamente agrad&aacute;vel em preto, com marca&ccedil;&otilde;es em forma de diamante. O Innergie PowerGear 90W &eacute; compat&iacute;vel com mais de 16 marcas de fabricantes de computadores port&aacute;teis como Acer, Asus, Compaq, Dell, HP, Lenovo, Samsung e Toshiba, entre outros. Como adaptador AC sobresselente ou de substitui&ccedil;&atilde;o, o Innergie PowerGear 90W assegura uma solu&ccedil;&atilde;o poderosa e segura em caso de necessidade de utiliza&ccedil;&atilde;o em casa ou no escrit&oacute;rio. Funciona com o seu port&aacute;til atual ou com qualquer computador moderno que possa vir a adquirir. O carregador port&aacute;til Innergie PowerGear 90W inclui seis conectores diferentes e conta com tecnologia de prote&ccedil;&atilde;o InnerShield para evitar a sobrecarga, a sobretens&atilde;o, as temperaturas altas e curtos-circuitos, bem como tecnologia GreenSense, que proporciona m&aacute;xima efici&ecirc;ncia energ&eacute;tica. Caso nenhum dos conectores padr&atilde;o inclu&iacute;dos com o Innergie PowerGear 90W seja compat&iacute;vel com o seu equipamento, pode solicitar o conector certo atrav&eacute;s do programa Free Tip Program no website da marca. Outras caracter&iacute;sticas relevantes: compat&iacute;vel com entradas AC de 18 a 21 V com exig&ecirc;ncia de pot&ecirc;ncia de at&eacute; 90 W; peso de 340 gramas.<br />\r\n<br />\r\n<strong>A Worten destaca:</strong>&nbsp;carregador port&aacute;til com design moderno e profissional com ampla compatibilidade de marcas; seis conectores diferentes; tecnologias InnerShield e GreenSense; programa Free Tip Program.</p>', 44.99, '2', 16, 30, 10, '2018-05-15 21:04:03', '2018-05-15 21:04:03', 'carregador_1526421843.jpg', 'INNERGIE 90W Universal Preto'),
(67, '<p><strong>Introdu&ccedil;&atilde;o:</strong>&nbsp;<br />\r\nMi Band 2 &eacute; uma pulseira inteligente para voc&ecirc;, especialmente para os amantes de esportes!&nbsp;<br />\r\nVoc&ecirc; sabe quantos passos voc&ecirc; d&aacute;, quantas calorias voc&ecirc; consome e quanto voc&ecirc; corre? N&atilde;o se preocupe, quando voc&ecirc; usa a pulseira para fazer exerc&iacute;cios, como correr, escalar, todos esses dados podem ser sincronizados e analisados em seu telefone celular, o que ajuda voc&ecirc; a planejar seu tempo de exerc&iacute;cio e a quantidade mais razo&aacute;vel. Ele vem com pulseira ajust&aacute;vel TPU, dando-lhe uma sensa&ccedil;&atilde;o de pele, respir&aacute;vel. Quando voc&ecirc; dorme, ele monitora seu sono. Tamb&eacute;m pode acord&aacute;-lo vibrando suavemente.&nbsp;<br />\r\nMi Band 2 grava cada momento que fica com voc&ecirc;. Apenas para viver uma vida saud&aacute;vel com isso!&nbsp;<br />\r\n<br />\r\n<strong>Principais caracter&iacute;sticas:</strong>&nbsp;<br />\r\n-&nbsp;<strong>Sincroniza&ccedil;&atilde;o Bluetooth</strong>&nbsp;<br />\r\nCom Bluetooth 4.0, esta pulseira inteligente est&aacute; dispon&iacute;vel para smartphones com fun&ccedil;&otilde;es Bluetooth.&nbsp;<br />\r\n-&nbsp;<strong>tela de toque OLED</strong>&nbsp;<br />\r\nBasta tocar no bot&atilde;o circular suavemente, a tela OLED exibir&aacute; a hora atual, as etapas, a freq&uuml;&ecirc;ncia card&iacute;aca, as dist&acirc;ncias, as calorias, etc.&nbsp;<br />\r\n-&nbsp;<strong>Monitor de Frequ&ecirc;ncia Card&iacute;aca</strong>&nbsp;<br />\r\nPode din&acirc;mico-est&aacute;tico monitorar sua freq&uuml;&ecirc;ncia card&iacute;aca, fornecer dados para voc&ecirc; a qualquer momento.&nbsp;<br />\r\n-&nbsp;<strong>Chamadas Recebidas / Alerta de Mensagem do APP</strong>&nbsp;<br />\r\nQuando algu&eacute;m liga ou envia mensagens para o seu telefone, o rel&oacute;gio ir&aacute; lembr&aacute;-lo atrav&eacute;s da vibra&ccedil;&atilde;o, para que nunca mais as perca!&nbsp;<br />\r\n-&nbsp;<strong>Monitoramento de sono</strong>&nbsp;<br />\r\nMonitorar com precis&atilde;o o tempo total de sono e o tempo de movimento todas as noites, tamb&eacute;m a APP lhe dar&aacute; avalia&ccedil;&atilde;o peri&oacute;dica, ajud&aacute;-lo a desenvolver bons h&aacute;bitos de vida.&nbsp;<br />\r\n-&nbsp;<strong>Monitoriza&ccedil;&atilde;o Desportiva</strong>&nbsp;<br />\r\nEsta pulseira inteligente pode registrar etapas, calorias e dist&acirc;ncia. Deixe voc&ecirc; saber seus dados de esportes, ajustar seu programa de exerc&iacute;cios e ter uma vida mais saud&aacute;vel!&nbsp;<br />\r\n-&nbsp;<strong>Fun&ccedil;&atilde;o de alarme inteligente</strong>&nbsp;<br />\r\nAcorde voc&ecirc; todas as manh&atilde;s, n&atilde;o se atrasar&aacute; para o trabalho; alerta ocioso para lembr&aacute;-lo com vibra&ccedil;&atilde;o, esticar as pernas depois de trabalhar por um longo tempo.&nbsp;<br />\r\n-&nbsp;<strong>Nenhum c&oacute;digo de acesso obrigat&oacute;rio</strong>&nbsp;<br />\r\nCada Mi Band 2 tem um ID exclusivo, quando o seu smartphone fecha com a banda, o seu telefone ser&aacute; desbloqueado, basta identificar o seu com o Mi Band 2.&nbsp;<br />\r\n-&nbsp;<strong>IP67 &agrave; prova d&#39;&aacute;gua</strong>&nbsp;<br />\r\nO IP67 &agrave; prova d&#39;&aacute;gua permite que a pulseira seja mantida na &aacute;gua por no m&aacute;ximo 30 minutos a uma profundidade de 1 metro. (N&atilde;o use a pulseira ao mergulhar)&nbsp;<br />\r\n-&nbsp;<strong>Compatibilidade total</strong>&nbsp;<br />\r\nSuporta Android 4.4 ou superior e iOS 8.0 ou superior com Bluetooth 4.0.&nbsp;<br />\r\n-&nbsp;<strong>Baixe o aplicativo</strong>&nbsp;<br />\r\nVoc&ecirc; pode pesquisar o nome &quot;MI FIT&quot; na &quot;App Store&quot; ou &quot;Google Play&quot; para baixar o aplicativo combinado com Mi Band 2 para aproveitar o tempo de esportes feliz.&nbsp;<br />\r\nO tempo de exibi&ccedil;&atilde;o &eacute; sincronizado com o hor&aacute;rio do telefone e o sistema de hor&aacute;rio tamb&eacute;m &eacute; o mesmo.&nbsp;<br />\r\n&nbsp;</p>', 25.00, '3', 17, 44, 6, '2018-05-16 08:19:23', '2018-05-16 08:20:29', 'transferir_1526462362.jpg', 'Xiaomi Mi Band 2'),
(68, '<h2>Funcionalidades Series&nbsp;3 (GPS)</h2>\r\n\r\n<ul>\r\n	<li>Caixa em alum&iacute;nio prateado</li>\r\n	<li>GPS e GLONASS integrados</li>\r\n	<li>Processador dual-core mais r&aacute;pido</li>\r\n	<li>Processador W2</li>\r\n	<li>Alt&iacute;metro barom&eacute;trico</li>\r\n	<li>8&nbsp;GB de capacidade1</li>\r\n	<li>Sensor de ritmo card&iacute;aco</li>\r\n	<li>Aceler&oacute;metro e girosc&oacute;pio</li>\r\n	<li>Resistente &agrave; &aacute;gua at&eacute; 50 metros2</li>\r\n	<li>Vidro Ion-X fortalecido</li>\r\n	<li>Parte traseira em material comp&oacute;sito</li>\r\n	<li>Wi-Fi (802.11b/g/n 2,4 GHz)</li>\r\n	<li>Bluetooth&nbsp;4.2</li>\r\n	<li>At&eacute; 18 horas de autonomia da bateria3</li>\r\n	<li>watchOS&nbsp;4</li>\r\n</ul>', 379.00, '1', 9, 43, 5, '2018-05-16 08:22:53', '2018-05-16 08:22:53', 'alu-silver-sport-fog-2up_gps_varend_1526462573.png', 'Apple Watch Series 3'),
(69, '<p>MUITO FIXE ESTA PS4 :)</p>', 1233.00, '5', 8, 6, 5, '2018-06-06 15:53:13', '2018-06-06 15:53:29', 'ps4-overview-screen-03-eu-06sep16_1528303993.jpg', 'PS4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sells`
--

CREATE TABLE `sells` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dataEnvio` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sells`
--

INSERT INTO `sells` (`id`, `user_id`, `dataEnvio`, `status`, `comentario`, `created_at`, `updated_at`) VALUES
(41, 2, '1992-08-23', 'ok', 'muito bom', '2018-05-02 15:58:08', '2018-05-02 15:58:08'),
(42, 2, '1992-08-23', 'ok', 'muito bom', '2018-05-02 15:58:17', '2018-05-02 15:58:17'),
(43, 2, '1992-08-23', 'ok', 'muito bom', '2018-05-02 15:58:46', '2018-05-02 15:58:46'),
(44, 2, '1992-08-23', 'ok', 'muito bom', '2018-05-02 16:18:53', '2018-05-02 16:18:53'),
(45, 2, '1992-08-23', 'ok', 'muito bom', '2018-05-02 16:31:39', '2018-05-02 16:31:39'),
(46, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 16:45:33', '2018-05-02 16:45:33'),
(47, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 16:45:59', '2018-05-02 16:45:59'),
(48, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 16:51:14', '2018-05-02 16:51:14'),
(49, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 17:00:49', '2018-05-02 17:00:49'),
(50, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 17:10:14', '2018-05-02 17:10:14'),
(51, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 17:16:24', '2018-05-02 17:16:24'),
(52, 3, '1992-08-23', 'ok', 'muito bom', '2018-05-02 17:16:40', '2018-05-02 17:16:40'),
(53, 3, '2018-05-02', 'comprado', ' teste ', '2018-05-02 17:31:56', '2018-05-02 17:31:56'),
(54, 2, '2018-05-04', 'comprado', ' teste ', '2018-05-04 12:43:15', '2018-05-04 12:43:15'),
(55, 4, '2018-05-04', 'comprado', ' teste ', '2018-05-04 15:34:50', '2018-05-04 15:34:50'),
(56, 4, '2018-05-04', 'comprado', ' teste ', '2018-05-04 15:35:06', '2018-05-04 15:35:06'),
(57, 2, '2018-05-04', 'comprado', ' teste ', '2018-05-04 15:37:05', '2018-05-04 15:37:05'),
(58, 2, '2018-05-06', 'comprado', ' teste ', '2018-05-06 07:10:53', '2018-05-06 07:10:53'),
(59, 2, '2018-05-06', 'comprado', ' teste ', '2018-05-06 07:11:08', '2018-05-06 07:11:08'),
(60, 2, '2018-05-08', 'comprado', ' teste ', '2018-05-08 07:04:39', '2018-05-08 07:04:39'),
(61, 3, '2018-05-08', 'comprado', ' teste ', '2018-05-08 07:43:29', '2018-05-08 07:43:29'),
(62, 4, '2018-05-08', 'comprado', ' teste ', '2018-05-08 07:57:43', '2018-05-08 07:57:43'),
(63, 2, '2018-05-10', 'comprado', ' teste ', '2018-05-10 10:32:21', '2018-05-10 10:32:21'),
(64, 2, '2018-05-15', 'comprado', ' teste ', '2018-05-15 08:11:09', '2018-05-15 08:11:09'),
(65, 2, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:43:03', '2018-05-17 08:43:03'),
(66, 2, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:43:46', '2018-05-17 08:43:46'),
(67, 2, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:43:55', '2018-05-17 08:43:55'),
(68, 2, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:44:21', '2018-05-17 08:44:21'),
(69, 2, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:44:56', '2018-05-17 08:44:56'),
(70, 5, '2018-05-17', 'comprado', ' teste ', '2018-05-17 08:46:14', '2018-05-17 08:46:14'),
(71, 4, '2018-05-19', 'Pronto', 'Em processamento interno', '2018-05-19 07:26:36', '2018-05-29 19:00:38'),
(72, 2, '2018-05-29', 'Enviado', 'Em processamento interno', '2018-05-29 07:43:32', '2018-05-30 07:39:14'),
(73, 2, '2018-05-29', 'Pendente', 'Em processamento interno', '2018-05-29 07:43:47', '2018-05-29 07:43:47'),
(74, 2, '2018-05-29', 'Pendente', 'Em teste', '2018-05-29 16:03:12', '2018-05-30 09:20:34'),
(75, 2, '2018-06-06', 'Enviado', 'Em processamento interno', '2018-06-06 15:51:27', '2018-06-06 15:54:08'),
(76, 5, '2018-06-11', 'Pendente', 'Em processamento interno', '2018-06-11 14:41:36', '2018-06-11 14:41:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sell_produtos`
--

CREATE TABLE `sell_produtos` (
  `sells_id` int(11) NOT NULL,
  `produto_id` int(10) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sell_produtos`
--

INSERT INTO `sell_produtos` (`sells_id`, `produto_id`, `quantidade`, `created_at`, `updated_at`) VALUES
(41, 40, 1, '2018-05-02 15:58:08', '2018-05-02 15:58:08'),
(42, 41, 1, '2018-05-02 15:58:17', '2018-05-02 15:58:17'),
(43, 38, 1, '2018-05-02 15:58:46', '2018-05-02 15:58:46'),
(44, 56, 1, '2018-05-02 16:18:53', '2018-05-02 16:18:53'),
(44, 57, 1, '2018-05-02 16:18:53', '2018-05-02 16:18:53'),
(45, 47, 1, '2018-05-02 16:31:39', '2018-05-02 16:31:39'),
(45, 58, 1, '2018-05-02 16:31:39', '2018-05-02 16:31:39'),
(45, 61, 1, '2018-05-02 16:31:39', '2018-05-02 16:31:39'),
(46, 55, 1, '2018-05-02 16:45:33', '2018-05-02 16:45:33'),
(46, 56, 1, '2018-05-02 16:45:33', '2018-05-02 16:45:33'),
(47, 54, 1, '2018-05-02 16:45:59', '2018-05-02 16:45:59'),
(47, 62, 1, '2018-05-02 16:45:59', '2018-05-02 16:45:59'),
(48, 54, 1, '2018-05-02 16:51:14', '2018-05-02 16:51:14'),
(49, 57, 1, '2018-05-02 17:00:49', '2018-05-02 17:00:49'),
(50, 57, 1, '2018-05-02 17:10:14', '2018-05-02 17:10:14'),
(51, 40, 1, '2018-05-02 17:16:24', '2018-05-02 17:16:24'),
(51, 58, 1, '2018-05-02 17:16:24', '2018-05-02 17:16:24'),
(52, 40, 1, '2018-05-02 17:16:40', '2018-05-02 17:16:40'),
(52, 58, 1, '2018-05-02 17:16:40', '2018-05-02 17:16:40'),
(53, 40, 1, '2018-05-02 17:31:56', '2018-05-02 17:31:56'),
(53, 58, 1, '2018-05-02 17:31:56', '2018-05-02 17:31:56'),
(54, 38, 1, '2018-05-04 12:43:15', '2018-05-04 12:43:15'),
(54, 59, 1, '2018-05-04 12:43:15', '2018-05-04 12:43:15'),
(55, 48, 1, '2018-05-04 15:34:50', '2018-05-04 15:34:50'),
(56, 38, 1, '2018-05-04 15:35:06', '2018-05-04 15:35:06'),
(56, 56, 1, '2018-05-04 15:35:06', '2018-05-04 15:35:06'),
(57, 56, 1, '2018-05-04 15:37:05', '2018-05-04 15:37:05'),
(58, 41, 1, '2018-05-06 07:10:53', '2018-05-06 07:10:53'),
(59, 48, 1, '2018-05-06 07:11:08', '2018-05-06 07:11:08'),
(60, 41, 1, '2018-05-08 07:04:39', '2018-05-08 07:04:39'),
(61, 47, 1, '2018-05-08 07:43:29', '2018-05-08 07:43:29'),
(61, 54, 1, '2018-05-08 07:43:29', '2018-05-08 07:43:29'),
(61, 63, 1, '2018-05-08 07:43:29', '2018-05-08 07:43:29'),
(62, 47, 1, '2018-05-08 07:57:43', '2018-05-08 07:57:43'),
(62, 55, 1, '2018-05-08 07:57:43', '2018-05-08 07:57:43'),
(63, 57, 1, '2018-05-10 10:32:21', '2018-05-10 10:32:21'),
(64, 41, 1, '2018-05-15 08:11:09', '2018-05-15 08:11:09'),
(64, 47, 1, '2018-05-15 08:11:09', '2018-05-15 08:11:09'),
(65, 36, 1, '2018-05-17 08:43:03', '2018-05-17 08:43:03'),
(66, 36, 1, '2018-05-17 08:43:46', '2018-05-17 08:43:46'),
(67, 36, 1, '2018-05-17 08:43:55', '2018-05-17 08:43:55'),
(68, 36, 1, '2018-05-17 08:44:21', '2018-05-17 08:44:21'),
(69, 36, 1, '2018-05-17 08:44:56', '2018-05-17 08:44:56'),
(70, 37, 1, '2018-05-17 08:46:14', '2018-05-17 08:46:14'),
(71, 36, 1, '2018-05-19 07:26:36', '2018-05-19 07:26:36'),
(71, 61, 1, '2018-05-19 07:26:36', '2018-05-19 07:26:36'),
(72, 35, 1, '2018-05-29 07:43:32', '2018-05-29 07:43:32'),
(73, 57, 1, '2018-05-29 07:43:47', '2018-05-29 07:43:47'),
(74, 57, 1, '2018-05-29 16:03:12', '2018-05-29 16:03:12'),
(75, 47, 1, '2018-06-06 15:51:27', '2018-06-06 15:51:27'),
(75, 61, 1, '2018-06-06 15:51:27', '2018-06-06 15:51:27'),
(76, 62, 1, '2018-06-11 14:41:36', '2018-06-11 14:41:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT '1',
  `morada` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` int(13) DEFAULT NULL,
  `contribuinte` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `tipo`, `morada`, `telefone`, `contribuinte`) VALUES
(1, 'Hugo Cardoso', 'hugo.branco.c@gmail.com', '$2y$10$39oPq0/lC0n4JUt86YiEBecUUrWujcX/SMna6t4a9bJawBzslI95e', 'KLakYSbwmHsiZ3M3aXzhzzos8yOGpAjIlMyPP1hgkkwGLPMtGsdGHR8jOwa8', '2018-04-10 07:59:56', '2018-04-10 07:59:56', 0, NULL, 56789658, NULL),
(2, 'jorge', 'jorge@jorge.pt', '$2y$10$AJnn8ajY6pM7btj73CqcFeyyD3MNgWAf7rNLwGJUicBjAI.cNFXmC', 'lQoNBDgWbX72aMwPzNCqqQwW7XOs16GboASf7w1o2zeHOSQW2KYjCCNUaj2N', '2018-04-18 06:21:57', '2018-04-18 06:21:57', 0, 'Arcos de Valdevez', 934568753, 1234532312),
(3, 'hugo', 'hugo@hugo.pt', '$2y$10$./jHxoFhWv5pRE6pqKGV1etEm0oieodGpNIdFegkI60YO0gyL1VQe', 'ICyC4qmSWmBVz6JWlvHUUVjPjFUrtsBjQLb4mVBGE2ikzyJohSQ3GqwkqWiu', '2018-04-24 10:16:39', '2018-04-24 10:16:39', 1, 'Viana do Castelo', 456734567, NULL),
(4, '12345', '12345@gmail.com', '$2y$10$P.A1TEFXAfzNfb4CblSXROs2wyH41jDY8SJ8F4IkFR.l3c/VmrBnW', '4cv5AfYbRcS6tOvVrLQwsCYl2T7KgQ6JDvJOdKniZAE9r76MrrlNp3djHERS', '2018-05-04 12:56:35', '2018-05-04 12:56:35', 1, NULL, NULL, NULL),
(5, 'teste', 'teste@teste.pt', '$2y$10$8HBY5V742R82tzcMQe14quqFSnAg6QjnKyg4z5yuP81tHmPnowm8G', 'CcLaztjo5GXe3tEJvfsVujHGM41Uh30KqTHEovTLKYHaLRvzLUMG74gxThz0', '2018-05-17 08:45:54', '2018-05-17 08:45:54', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
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
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `produtos_marca_id_foreign` (`marca_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_produtos`
--
ALTER TABLE `sell_produtos`
  ADD PRIMARY KEY (`sells_id`,`produto_id`),
  ADD KEY `produtos` (`produto_id`);

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
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `produtos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`);

--
-- Limitadores para a tabela `sell_produtos`
--
ALTER TABLE `sell_produtos`
  ADD CONSTRAINT `produtos` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `sells` FOREIGN KEY (`sells_id`) REFERENCES `sells` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
