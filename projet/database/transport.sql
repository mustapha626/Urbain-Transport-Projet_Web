-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 31 Décembre 2025 à 20:04
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `transport`
--

-- --------------------------------------------------------

--
-- Structure de la table `arrets`
--

CREATE TABLE `arrets` (
  `ligne` varchar(1) DEFAULT NULL,
  `direction` varchar(15) DEFAULT NULL,
  `arret` varchar(16) DEFAULT NULL,
  `heurePassage1` varchar(5) DEFAULT NULL,
  `heurePassage2` varchar(5) DEFAULT NULL,
  `heurePassage3` varchar(5) DEFAULT NULL,
  `heurePassage4` varchar(5) DEFAULT NULL,
  `heurePassage5` varchar(5) DEFAULT NULL,
  `Localisation` varchar(37) DEFAULT NULL,
  `icon` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `arrets`
--

INSERT INTO `arrets` (`ligne`, `direction`, `arret`, `heurePassage1`, `heurePassage2`, `heurePassage3`, `heurePassage4`, `heurePassage5`, `Localisation`, `icon`) VALUES
('A', 'Ighil Isiwan', 'Tighilt', '08:00', '10:23', '13:04', '15:16', '17:56', '36.583333187447145,4.013480983307135', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Amalou', '08:10', '10:33', '13:14', '15:26', '18:06', '36.59043175079885,4.009798116470957', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Lethniyen', '08:14', '10:37', '13:18', '15:30', '18:10', '36.59484217975192,4.007651178232169', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Thizagharin', '08:21', '10:44', '13:25', '15:37', '18:17', '36.595738017332046,4.0047335547793725', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Vogozadh', '08:34', '10:57', '13:38', '15:50', '18:30', '36.60001033039704,4.00438816550747', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Thanqelt', '08:41', '11:04', '13:45', '15:57', '18:37', '36.60069938994229,3.9972711067571707', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Bouhamdoun', '08:50', '11:13', '13:54', '16:06', '18:46', '36.603317765131635,3.996146077360008', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Larabi', '08:59', '11:22', '14:03', '16:15', '18:55', '36.607493772877866,3.9947966032911983', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Ath Amar', '09:05', '11:28', '14:09', '16:21', '19:01', '36.609526286740866,3.9920519155680982', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Said w Achour', '09:11', '11:34', '14:15', '16:27', '19:07', '36.610421953812775,3.989090894583534', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Lekhmis', '09:16', '11:39', '14:20', '16:32', '19:12', '36.612282152185855,3.9860440084685242', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Mahmoudi', '09:20', '11:43', '14:24', '16:36', '19:16', '36.61631242805791,3.9868142114950404', 'Images/A-32x32.png\r'),
('A', 'Ighil Isiwan', 'Ighil Isiwan', '09:24', '11:47', '14:28', '16:40', '19:20', '36.62179286321702,3.990149166021735', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Ighil Isiwan', '08:40', '09:50', '11:53', '14:54', '17:28', '36.62179286321702,3.990149166021735', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Mahmoudi', '08:45', '09:55', '11:58', '14:59', '17:33', '36.61631242805791,3.9868142114950404', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Lekhmis', '08:49', '09:59', '12:02', '15:03', '17:37', '36.612282152185855,3.9860440084685242', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Said w Achour', '08:53', '10:03', '12:06', '15:07', '17:41', '36.610421953812775,3.989090894583534', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Ath Amar', '08:57', '10:07', '12:10', '15:11', '17:45', '36.609526286740866,3.9920519155680982', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Larabi', '09:03', '10:13', '12:16', '15:17', '17:51', '36.607493772877866,3.9947966032911983', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Bouhamdoun', '09:10', '10:20', '12:23', '15:24', '17:58', '36.603317765131635,3.996146077360008', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Thanqelt', '09:13', '10:23', '12:26', '15:27', '18:01', '36.60069938994229,3.9972711067571707', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Vogozadh', '09:17', '10:27', '12:30', '15:31', '18:05', '36.60001033039704,4.00438816550747', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Thizagharin', '09:21', '10:31', '12:34', '15:35', '18:09', '36.595738017332046,4.0047335547793725', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Lethniyen', '09:27', '10:37', '12:40', '15:41', '18:15', '36.59484217975192,4.007651178232169', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Amalou', '09:36', '10:46', '12:49', '15:50', '18:24', '36.59043175079885,4.009798116470957', 'Images/A-32x32.png\r'),
('A', 'Tighilt', 'Tighilt', '09:40', '10:50', '12:53', '15:54', '18:28', '36.583333187447145,4.013480983307135', 'Images/A-32x32.png\r'),
('B', 'Agouni Boufal', 'Ighil', '08:30', '10:53', '13:34', '15:46', '18:26', '36.5827548207962,4.006857261584744', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Thajmath', '08:35', '10:58', '13:39', '15:51', '18:31', '36.58595961686478,4.009087068502892', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Amalou', '08:42', '11:05', '13:46', '15:58', '18:38', '36.59043175079885,4.009798116470957', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Arezki Belkace', '08:47', '11:10', '13:51', '16:03', '18:43', '36.59318829738214,4.010648295051654', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Thaddart', '08:58', '11:21', '14:02', '16:14', '18:54', '36.6014573505416,4.0142661341469985', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Thunqicht', '09:05', '11:28', '14:09', '16:21', '19:01', '36.607589658455574,4.0196662347081125', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Asehli', '09:12', '11:35', '14:16', '16:28', '19:08', '36.61007000407112,4.020437539877526', 'Images/B-32x32.png\r'),
('B', 'Agouni Boufal', 'Agouni Boufal', '09:18', '11:41', '14:22', '16:34', '19:14', '36.61372147883634,4.019658450823735', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Agouni Boufal', '09:30', '10:40', '12:43', '15:44', '18:18', '36.61372147883634,4.019658450823735', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Asehli', '09:36', '10:46', '12:49', '15:50', '18:24', '36.61007000407112,4.020437539877526', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Thunqicht', '09:39', '10:49', '12:52', '15:53', '18:27', '36.607589658455574,4.0196662347081125', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Thaddart', '09:44', '10:54', '12:57', '15:58', '18:32', '36.6014573505416,4.0142661341469985', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Arezki Belkace', '09:49', '10:59', '13:02', '16:03', '18:37', '36.59318829738214,4.010648295051654', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Amalou', '09:53', '11:03', '13:06', '16:07', '18:41', '36.59043175079885,4.009798116470957', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Thajmath', '09:58', '11:08', '13:11', '16:12', '18:46', '36.58595961686478,4.009087068502892', 'Images/B-32x32.png\r'),
('B', 'Ighil', 'Ighil', '10:04', '11:14', '13:17', '16:18', '18:52', '36.5827548207962,4.006857261584744', 'Images/B-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Tasift', '07:30', '09:53', '12:34', '14:46', '17:26', '36.600190060717296,3.9783782806900545', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Lminsra', '07:37', '10:00', '12:41', '14:53', '17:33', '36.6030915314359,3.9832311246707968', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Aqemdi', '07:42', '10:05', '12:46', '14:58', '17:38', '36.60214036870534,3.9813759917970386', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Ath Hmed', '07:46', '10:09', '12:50', '15:02', '17:42', '36.60487554049028,3.986549968804232', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Ibbaqen', '07:50', '10:13', '12:54', '15:06', '17:46', '36.60701147358976,3.9881830594969885', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Said w achour', '07:57', '10:20', '13:01', '15:13', '17:53', '36.610421953812775,3.989090894583534', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Lekhmis', '08:03', '10:26', '13:07', '15:19', '17:59', '36.612282152185855,3.9860440084685242', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Thala Hemou', '08:10', '10:33', '13:14', '15:26', '18:06', '36.61631242805791,3.9824725633559948', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'Lkoucha', '08:13', '10:36', '13:17', '15:29', '18:09', '36.62013582838662,3.9768223757522057', 'Images/C-32x32.png\r'),
('C', 'AthAssi Ouzgane', 'AthAssi Ouzgane', '08:17', '10:40', '13:21', '15:33', '18:13', '36.626748829952746,3.973727339114067', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'AthAssi Ouzgane', '08:10', '09:20', '11:23', '14:24', '16:58', '36.626748829952746,3.973727339114067', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Lkoucha', '08:13', '09:23', '11:26', '14:27', '17:01', '36.62013582838662,3.9768223757522057', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Thala Hemou', '08:17', '09:27', '11:30', '14:31', '17:05', '36.61631242805791,3.9824725633559948', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Lekhmis', '08:22', '09:32', '11:35', '14:36', '17:10', '36.612282152185855,3.9860440084685242', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Said w achour', '08:26', '09:36', '11:39', '14:40', '17:14', '36.610421953812775,3.989090894583534', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Ibbaqen', '08:30', '09:40', '11:43', '14:44', '17:18', '36.60701147358976,3.9881830594969885', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Ath Hmed', '08:37', '09:47', '11:50', '14:51', '17:25', '36.60487554049028,3.986549968804232', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Aqemdi', '08:41', '09:51', '11:54', '14:55', '17:29', '36.60214036870534,3.9813759917970386', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Lminsra', '08:46', '09:56', '11:59', '15:00', '17:34', '36.6030915314359,3.9832311246707968', 'Images/C-32x32.png\r'),
('C', 'Tasift', 'Tasift', '08:52', '10:02', '12:05', '15:06', '17:40', '36.600190060717296,3.9783782806900545', 'Images/C-32x32.png\r'),
('D', 'Technicom', 'Thaarkoubt', '07:00', '09:23', '12:04', '14:16', '16:56', '36.5877207620875,3.992315994823162', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Twila', '07:07', '09:30', '12:11', '14:23', '17:03', '36.58785859664918,3.989487766802303', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Thaghelit', '07:12', '09:35', '12:16', '14:28', '17:08', '36.58854776576538,3.98798467927402', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Said w Chikh', '07:16', '09:39', '12:20', '14:32', '17:12', '36.59020174653707,3.989808719172024', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Tizi Mouka', '07:20', '09:43', '12:24', '14:36', '17:16', '36.59113209514432,3.991499707791513', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Thahedjret', '07:27', '09:50', '12:31', '14:43', '17:23', '36.59326467612709,3.994016997607908', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Thinetlin', '07:31', '09:54', '12:35', '14:47', '17:27', '36.59367814937063,3.9996411808728958', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Ath Yehya Moussa', '07:34', '09:57', '12:38', '14:50', '17:30', '36.593747061362485,4.003805174732814', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Lethniyen', '07:39', '10:02', '12:43', '14:55', '17:35', '36.59484217975192,4.007651178232169', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Thizagharin', '07:43', '10:06', '12:47', '14:59', '17:39', '36.595738017332046,4.0047335547793725', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Vogozadh', '07:50', '10:13', '12:54', '15:06', '17:46', '36.60001033039704,4.00438816550747', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Thanqelt', '07:55', '10:18', '12:59', '15:11', '17:51', '36.60069938994229,3.9972711067571707', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Bouhamdoun', '07:59', '10:22', '13:03', '15:15', '17:55', '36.603317765131635,3.996146077360008', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Larabi', '08:06', '10:29', '13:10', '15:22', '18:02', '36.607493772877866,3.9947966032911983', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Lycee', '08:12', '10:35', '13:16', '15:28', '18:08', '36.609547243049974,3.997343237989997', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'La Brigade', '08:16', '10:39', '13:20', '15:32', '18:12', '36.612440898395704,4.000022175018088', 'Images/D-32x32.png\r'),
('D', 'Technicom', 'Technicom', '08:21', '10:44', '13:25', '15:37', '18:17', '36.61536889149395,4.0012197405047445', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Technicom', '07:25', '08:35', '10:38', '13:39', '16:13', '36.61536889149395,4.0012197405047445', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'La Brigade', '07:29', '08:39', '10:42', '13:43', '16:17', '36.612440898395704,4.000022175018088', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Lycee', '07:33', '08:43', '10:46', '13:47', '16:21', '36.609547243049974,3.997343237989997', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Larabi', '07:38', '08:48', '10:51', '13:52', '16:26', '36.607493772877866,3.9947966032911983', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Bouhamdoun', '07:42', '08:52', '10:55', '13:56', '16:30', '36.603317765131635,3.996146077360008', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thanqelt', '07:49', '08:59', '11:02', '14:03', '16:37', '36.60069938994229,3.9972711067571707', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Vogozadh', '07:53', '09:03', '11:06', '14:07', '16:41', '36.60001033039704,4.00438816550747', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thizagharin', '07:59', '09:09', '11:12', '14:13', '16:47', '36.595738017332046,4.0047335547793725', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Lethniyen', '08:03', '09:13', '11:16', '14:17', '16:51', '36.59484217975192,4.007651178232169', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Ath Yehya Moussa', '08:08', '09:18', '11:21', '14:22', '16:56', '36.593747061362485,4.003805174732814', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thinetlin', '08:13', '09:23', '11:26', '14:27', '17:01', '36.59367814937063,3.9996411808728958', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thahedjret', '08:16', '09:26', '11:29', '14:30', '17:04', '36.59326467612709,3.994016997607908', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Tizi Mouka', '08:22', '09:32', '11:35', '14:36', '17:10', '36.59113209514432,3.991499707791513', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Said w Chikh', '08:29', '09:39', '11:42', '14:43', '17:17', '36.59020174653707,3.989808719172024', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thaghelit', '08:35', '09:45', '11:48', '14:49', '17:23', '36.58854776576538,3.98798467927402', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Twila', '08:40', '09:50', '11:53', '14:54', '17:28', '36.58785859664918,3.989487766802303', 'Images/D-32x32.png\r'),
('D', 'Thaarkoubt', 'Thaarkoubt', '08:44', '09:54', '11:57', '14:58', '17:32', '36.5877207620875,3.992315994823162', 'Images/D-32x32.png\r'),
('E', 'Ath Zaeim', 'Afir', '07:06', '09:29', '12:10', '14:22', '17:02', '36.58582177891194,3.9671646323163494', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Thafath', '07:10', '09:33', '12:14', '14:26', '17:06', '36.58613191395967,3.9744173943765575', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Iemranene', '07:16', '09:39', '12:20', '14:32', '17:12', '36.58458122573436,3.981752577370564', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Annar', '07:19', '09:42', '12:23', '14:35', '17:15', '36.587131229525816,3.984930482688101', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Thaghelit', '07:25', '09:48', '12:29', '14:41', '17:21', '36.58854776576538,3.98798467927402', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Said w Chikh', '07:31', '09:54', '12:35', '14:47', '17:27', '36.59020174653707,3.989808719172024', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Tizi Mouka', '07:36', '09:59', '12:40', '14:52', '17:32', '36.59113209514432,3.991499707791513', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ighil Mechkoun', '07:42', '10:05', '12:46', '14:58', '17:38', '36.59240326589511,3.9912774072958217', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Aessass', '07:50', '10:13', '12:54', '15:06', '17:46', '36.593747061362485,3.991492087342881', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Vondouzen', '07:54', '10:17', '12:58', '15:10', '17:50', '36.59450508921127,3.9918365811236622', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ichawadhiyen', '08:00', '10:23', '13:04', '15:16', '17:56', '36.59509083290332,3.9936401966085064', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ait Ali Belkace', '08:06', '10:29', '13:10', '15:22', '18:02', '36.59605557752686,3.996899971788373', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Fekran', '08:11', '10:34', '13:15', '15:27', '18:07', '36.5978472141115,3.997947299455405', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Thanqelt', '08:14', '10:37', '13:18', '15:30', '18:10', '36.60069938994229,3.9972711067571707', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Bouhamdoun', '08:20', '10:43', '13:24', '15:36', '18:16', '36.603317765131635,3.996146077360008', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Larabi', '08:26', '10:49', '13:30', '15:42', '18:22', '36.607493772877866,3.9947966032911983', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ounar', '08:30', '10:53', '13:34', '15:46', '18:26', '36.60818276662914,3.9914058777927823', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ibbaqen', '08:34', '10:57', '13:38', '15:50', '18:30', '36.60701147358976,3.9881830594969885', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ath Hmed', '08:40', '11:03', '13:44', '15:56', '18:36', '36.60487554049028,3.986549968804232', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Adellal', '08:44', '11:07', '13:48', '16:00', '18:40', '36.606136724146296,3.981915843354696', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Zalouk', '08:49', '11:12', '13:53', '16:05', '18:45', '36.60732525516725,3.978308956804622', 'Images/E-32x32.png\r'),
('E', 'Ath Zaeim', 'Ath Zaeim', '08:52', '11:15', '13:56', '16:08', '18:48', '36.60882381198565,3.9739965330011278', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ath Zaeim', '07:00', '08:10', '10:13', '13:14', '15:48', '36.60882381198565,3.9739965330011278', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Zalouk', '07:05', '08:15', '10:18', '13:19', '15:53', '36.60732525516725,3.978308956804622', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Adellal', '07:09', '08:19', '10:22', '13:23', '15:57', '36.606136724146296,3.981915843354696', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ath Hmed', '07:14', '08:24', '10:27', '13:28', '16:02', '36.60487554049028,3.986549968804232', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ibbaqen', '07:16', '08:26', '10:29', '13:30', '16:04', '36.60701147358976,3.9881830594969885', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ounar', '07:20', '08:30', '10:33', '13:34', '16:08', '36.60818276662914,3.9914058777927823', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Larabi', '07:25', '08:35', '10:38', '13:39', '16:13', '36.607493772877866,3.9947966032911983', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Bouhamdoun', '07:30', '08:40', '10:43', '13:44', '16:18', '36.603317765131635,3.996146077360008', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Thanqelt', '07:34', '08:44', '10:47', '13:48', '16:22', '36.60069938994229,3.9972711067571707', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Fekran', '07:37', '08:47', '10:50', '13:51', '16:25', '36.5978472141115,3.997947299455405', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ait Ali Belkace', '07:42', '08:52', '10:55', '13:56', '16:30', '36.59605557752686,3.996899971788373', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ichawadhiyen', '07:46', '08:56', '10:59', '14:00', '16:34', '36.59509083290332,3.9936401966085064', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Vondouzen', '07:49', '08:59', '11:02', '14:03', '16:37', '36.59450508921127,3.9918365811236622', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Aessass', '07:53', '09:03', '11:06', '14:07', '16:41', '36.593747061362485,3.991492087342881', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Ighil Mechkoun', '08:00', '09:10', '11:13', '14:14', '16:48', '36.59240326589511,3.9912774072958217', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Tizi Mouka', '08:03', '09:13', '11:16', '14:17', '16:51', '36.59113209514432,3.991499707791513', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Said w Chikh', '08:07', '09:17', '11:20', '14:21', '16:55', '36.59020174653707,3.989808719172024', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Thaghelit', '08:10', '09:20', '11:23', '14:24', '16:58', '36.58854776576538,3.98798467927402', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Annar', '08:16', '09:26', '11:29', '14:30', '17:04', '36.587131229525816,3.984930482688101', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Iemranene', '08:20', '09:30', '11:33', '14:34', '17:08', '36.58458122573436,3.981752577370564', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Thafath', '08:24', '09:34', '11:37', '14:38', '17:12', '36.58613191395967,3.9744173943765575', 'Images/E-32x32.png\r'),
('E', 'Afir', 'Afir', '08:28', '09:38', '11:41', '14:42', '17:16', '36.58582177891194,3.9671646323163494', 'Images/E-32x32.png\r');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `identifiant` varchar(25) NOT NULL,
  `objet` varchar(100) NOT NULL,
  `contenu` varchar(400) NOT NULL,
  `reponse` varchar(400) NOT NULL DEFAULT 'Aucune reponse pour le moment',
  `date` varchar(25) NOT NULL,
  `heure` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tarifs`
--

CREATE TABLE `tarifs` (
  `age` varchar(26) DEFAULT NULL,
  `duree` varchar(16) DEFAULT NULL,
  `profil` varchar(17) DEFAULT NULL,
  `qf` varchar(18) DEFAULT NULL,
  `tarif` varchar(6) DEFAULT NULL,
  `description` varchar(412) DEFAULT NULL,
  `image` varchar(19) DEFAULT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tarifs`
--

INSERT INTO `tarifs` (`age`, `duree`, `profil`, `qf`, `tarif`, `description`, `image`, `numero`) VALUES
('Enfant<br>(moins de 18ans)', 'Une heure (1h)', 'Scolaire/Etudiant', NULL, '0,80', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantS.jpg\r', 1),
('Enfant<br>(moins de 18ans)', 'Deux heures (2h)', 'Scolaire/Etudiant', NULL, '1,50', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantS.jpg\r', 2),
('Enfant<br>(moins de 18ans)', 'Une journée ', 'Scolaire/Etudiant', NULL, '3,10', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantS.jpg\r', 3),
('Enfant<br>(moins de 18ans)', 'Un mois', 'Scolaire/Etudiant', NULL, '4,90', '<h1>Abonnement Enfant moin de 18 ans</h1><p>Abonnement mensuel valable pour une seule personne agée de moins de 18 ans, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/enfantS.jpg\r', 4),
('Enfant<br>(moins de 18ans)', 'Une année', 'Scolaire/Etudiant', NULL, '53,90', '<h1>Abonnement Enfant moin de 18 ans</h1><p>Abonnement annuel valable pour une seule personne agée de moins de 18 ans, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/enfantS.jpg\r', 5),
('Enfant<br>(moins de 18ans)', 'Une heure (1h)', 'Handicap', NULL, '0,50', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans en situation handicap, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantS.jpg\r', 6),
('Enfant<br>(moins de 18ans)', 'Deux heures (2h)', 'Handicap', NULL, '0,90', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans en situation handicap, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantH.jpg\r', 7),
('Enfant<br>(moins de 18ans)', 'Une journée ', 'Handicap', NULL, '3,00', '<h1>Pass Enfant moins de 18 ans</h1><p> Idéal pour les déplacements ponctuels des enfants agés moins de 18 ans en situation handicap, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/enfantH.jpg\r', 8),
('Enfant<br>(moins de 18ans)', 'Un mois', 'Handicap', NULL, '4,50', '<h1>Abonnement Enfant moin de 18 ans</h1><p>Abonnement mensuel valable pour une seule personne agée de moins de 18 ans en situation handicap, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/enfantH.jpg\r', 9),
('Enfant<br>(moins de 18ans)', 'Une année', 'Handicap', NULL, '49,50', '<h1>Abonnement Enfant moin de 18 ans</h1><p>Abonnement annuel valable pour une seule personne agée de moins de 18 ans en situation handicap, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/enfantH.jpg\r', 10),
('Jeune<br>(18 ans - 26 ans)', 'Une heure (1h)', 'Scolaire/Etudiant', NULL, '1,00', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes scolarisés ou étudiants agés entre 18 et 26 ans, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneE.jpg\r', 11),
('Jeune<br>(18 ans - 26 ans)', 'Deux heures (2h)', 'Scolaire/Etudiant', NULL, '1,90', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes scolarisés ou étudiants agés entre 18 et 26 ans, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneE.jpg\r', 12),
('Jeune<br>(18 ans - 26 ans)', 'Une journée ', 'Scolaire/Etudiant', NULL, '4,15', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes scolarisés ou étudiants agés entre 18 et 26 ans, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneE.jpg\r', 13),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Scolaire/Etudiant', 'Moins de 375£', '5,90', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est strictement inférieur à 375£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 14),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Scolaire/Etudiant', 'Moins de 375£', '64,90', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est strictement inférieur à 375£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 15),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Scolaire/Etudiant', 'Entre 375£ et 515£', '8,50', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est compris entre 375£ et 515£ inclus, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 16),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Scolaire/Etudiant', 'Entre 375£ et 515£', '93,50', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est entre 375£ et 515£ inclus, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 17),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Scolaire/Etudiant', 'Entre 515£ et 756£', '11,20', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est compris entre 515£ et 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 18),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Scolaire/Etudiant', 'Entre 515£ et 756£', '123,20', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est entre 515£ et 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 19),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Scolaire/Etudiant', 'Plus de 756£', '15,40', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est supérieur ou égal à 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 20),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Scolaire/Etudiant', 'Plus de 756£', '169,40', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne scolarisée ou étudiante agée entre 18 et 26 ans dont le quotient familiale est supérieur ou égal à 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneE.jpg\r', 21),
('Jeune<br>(18 ans - 26 ans)', 'Une heure (1h)', 'Handicap', NULL, '0,60', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans en situation handicap, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneH.png\r', 22),
('Jeune<br>(18 ans - 26 ans)', 'Deux heures (2h)', 'Handicap', NULL, '1,10', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans en situation handicap, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneH.png\r', 23),
('Jeune<br>(18 ans - 26 ans)', 'Une journée ', 'Handicap', NULL, '3,80', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans en situation handicap, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneH.png\r', 24),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Handicap', NULL, '5,00', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne agée entre 18 et 26 ans en situation handicap, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneH.png\r', 25),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Handicap', NULL, '55,00', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne agée entre 18 et 26 ans en situation handicap, du début jusqu à la fin  d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneH.png\r', 26),
('Jeune<br>(18 ans - 26 ans)', 'Une heure (1h)', 'Tout public', NULL, '1,15', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneT.webp\r', 27),
('Jeune<br>(18 ans - 26 ans)', 'Deux heures (2h)', 'Tout public', NULL, '2,20', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneT.webp\r', 28),
('Jeune<br>(18 ans - 26 ans)', 'Une journée ', 'Tout public', NULL, '4,50', '<h1>Pass Jeune</h1><p> Idéal pour les déplacements ponctuels des jeunes agés entre 18 et 26 ans, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/jeuneT.webp\r', 29),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Tout public', 'Moins de 375£', '6,10', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est strictement inférieur à 375£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 30),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Tout public', 'Moins de 375£', '67,10', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est strictement inférieur à 375£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 31),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Tout public', 'Entre 375£ et 515£', '10,70', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est compris entre 375£ et 515£ inclus, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 32),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Tout public', 'Entre 375£ et 515£', '117,70', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est entre 375£ et 515£ inclus, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 33),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Tout public', 'Entre 515£ et 756£', '15,05', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est compris entre 515£ et 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 34),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Tout public', 'Entre 515£ et 756£', '165,55', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est entre 515£ et 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 35),
('Jeune<br>(18 ans - 26 ans)', 'Un mois', 'Tout public', 'Plus de 756£', '18,15', '<h1>Abonnement Jeune</h1><p>Abonnement mensuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est supérieur ou égal à 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 36),
('Jeune<br>(18 ans - 26 ans)', 'Une année', 'Tout public', 'Plus de 756£', '199,65', '<h1>Abonnement Jeune</h1><p>Abonnement annuel valable pour une seule personne agée entre 18 et 26 ans dont le quotient familiale est supérieur ou égal à 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/jeuneT.webp\r', 37),
('Actif<br>(27 ans - 60 ans)', 'Une heure (1h)', 'Tout public', NULL, '1,50', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifT.jpg\r', 38),
('Actif<br>(27 ans - 60 ans)', 'Deux heures (2h)', 'Tout public', NULL, '2,90', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifT.jpg\r', 39),
('Actif<br>(27 ans - 60 ans)', 'Une journée ', 'Tout public', NULL, '5,05', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifT.jpg\r', 40),
('Actif<br>(27 ans - 60 ans)', 'Un mois', 'Tout public', 'Moins de 375£', '8,00', '<h1>Abonnement Liberté</h1><p>Abonnement mensuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est strictement inférieur à 375£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 41),
('Actif<br>(27 ans - 60 ans)', 'Une année', 'Tout public', 'Moins de 375£', '88,00', '<h1>Abonnement Liberté</h1><p>Abonnement annuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est strictement inférieur à 375£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 42),
('Actif<br>(27 ans - 60 ans)', 'Un mois', 'Tout public', 'Entre 375£ et 515£', '13,30', '<h1>Abonnement Liberté</h1><p>Abonnement mensuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est compris entre 375£ et 515£ inclus, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 43),
('Actif<br>(27 ans - 60 ans)', 'Une année', 'Tout public', 'Entre 375£ et 515£', '146,30', '<h1>Abonnement Liberté</h1><p>Abonnement annuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est entre 375£ et 515£ inclus, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 44),
('Actif<br>(27 ans - 60 ans)', 'Un mois', 'Tout public', 'Entre 515£ et 756£', '19,50', '<h1>Abonnement Liberté</h1><p>Abonnement mensuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est compris entre 515£ et 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 45),
('Actif<br>(27 ans - 60 ans)', 'Une année', 'Tout public', 'Entre 515£ et 756£', '214,50', '<h1>Abonnement Liberté</h1><p>Abonnement annuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est entre 515£ et 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 46),
('Actif<br>(27 ans - 60 ans)', 'Un mois', 'Tout public', 'Plus de 756£', '25,00', '<h1>Abonnement Liberté</h1><p>Abonnement mensuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est supérieur ou égal à 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 47),
('Actif<br>(27 ans - 60 ans)', 'Une année', 'Tout public', 'Plus de 756£', '275,00', '<h1>Abonnement Liberté</h1><p>Abonnement annuel valable pour une seule personne agée entre 27 et 60 ans dont le quotient familiale est supérieur ou égal à 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifT.jpg\r', 48),
('Actif<br>(27 ans - 60 ans)', 'Une heure (1h)', 'Handicap', NULL, '0,80', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans en situation handicap, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifH.jpg\r', 49),
('Actif<br>(27 ans - 60 ans)', 'Deux heures (2h)', 'Handicap', NULL, '1,50', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans en situation handicap, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifH.jpg\r', 50),
('Actif<br>(27 ans - 60 ans)', 'Une journée ', 'Handicap', NULL, '4,15', '<h1>Pass Liberté</h1><p> Idéal pour les déplacements ponctuels des personnes agées entre 27 et 60 ans en situation handicap, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/actifH.jpg\r', 51),
('Actif<br>(27 ans - 60 ans)', 'Un mois', 'Handicap', NULL, '6,50', '<h1>Abonnement Liberté</h1><p>Abonnement mensuel valable pour une seule personne agée entre 27 et 60 ans en situation handicap, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifH.jpg\r', 52),
('Actif<br>(27 ans - 60 ans)', 'Une année', 'Handicap', NULL, '71,50', '<h1>Abonnement Liberté</h1><p>Abonnement annuel valable pour une seule personne agée entre 27 et 60 ans en situation handicap, du début jusqu à la fin  d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/actifH.jpg\r', 53),
('Senior<br>(Plus de 60 ans)', 'Une heure (1h)', 'Tout public', NULL, '1,10', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agés plus 60 ans, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorT.jpg\r', 54),
('Senior<br>(Plus de 60 ans)', 'Deux heures (2h)', 'Tout public', NULL, '2,10', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agés plus de 60 ans, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorT.jpg\r', 55),
('Senior<br>(Plus de 60 ans)', 'Une journée ', 'Tout public', NULL, '4,95', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agées plus de 60 ans, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorT.jpg\r', 56),
('Senior<br>(Plus de 60 ans)', 'Un mois', 'Tout public', 'Moins de 375£', '7,45', '<h1>Abonnement Esprit</h1><p>Abonnement mensuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est strictement inférieur à 375£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 57),
('Senior<br>(Plus de 60 ans)', 'Une année', 'Tout public', 'Moins de 375£', '81,95', '<h1>Abonnement Esprit</h1><p>Abonnement annuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est strictement inférieur à 375£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 58),
('Senior<br>(Plus de 60 ans)', 'Un mois', 'Tout public', 'Entre 375£ et 515£', '12,80', '<h1>Abonnement Esprit</h1><p>Abonnement mensuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est compris entre 375£ et 515£ inclus, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 59),
('Senior<br>(Plus de 60 ans)', 'Une année', 'Tout public', 'Entre 375£ et 515£', '140,80', '<h1>Abonnement Esprit</h1><p>Abonnement annuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est entre 375£ et 515£ inclus, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 60),
('Senior<br>(Plus de 60 ans)', 'Un mois', 'Tout public', 'Entre 515£ et 756£', '18,10', '<h1>Abonnement Esprit</h1><p>Abonnement mensuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est compris entre 515£ et 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 61),
('Senior<br>(Plus de 60 ans)', 'Une année', 'Tout public', 'Entre 515£ et 756£', '199,10', '<h1>Abonnement Esprit</h1><p>Abonnement annuel valable pour une seule personne agée plus 60 ans dont le quotient familiale est entre 515£ et 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 62),
('Senior<br>(Plus de 60 ans)', 'Un mois', 'Tout public', 'Plus de 756£', '23,00', '<h1>Abonnement Esprit</h1><p>Abonnement mensuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est supérieur ou égal à 756£, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 63),
('Senior<br>(Plus de 60 ans)', 'Une année', 'Tout public', 'Plus de 756£', '253,00', '<h1>Abonnement Esprit</h1><p>Abonnement annuel valable pour une seule personne agée plus de 60 ans dont le quotient familiale est supérieur ou égal à 756£, du début jusqu à la fin d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorT.jpg\r', 64),
('Senior<br>(Plus de 60 ans)', 'Une heure (1h)', 'Handicap', NULL, '0,70', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agées plus 60 ans en situation handicap, valable pour une heure.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorH.jpg\r', 65),
('Senior<br>(Plus de 60 ans)', 'Deux heures (2h)', 'Handicap', NULL, '1,30', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agées plus de 60 ans en situation handicap, valable pour deux heures.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorH.jpg\r', 66),
('Senior<br>(Plus de 60 ans)', 'Une journée ', 'Handicap', NULL, '4,00', '<h1>Pass Esprit</h1><p> Idéal pour les déplacements ponctuels des personnes agées plus 60 ans en situation handicap, valable jusqu à la fin de journée.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible à bord des bus en espèce uniquement ou dans nos points de vente.</li><li>Tickets rechargeables sans contact (10 centimes pour l achat).</li> </ul>', 'Images/seniorH.jpg\r', 67),
('Senior<br>(Plus de 60 ans)', 'Un mois', 'Handicap', NULL, '6,00', '<h1>Abonnement Esprit</h1><p>Abonnement mensuel valable pour une seule personne agée plus de 60 ans en situation handicap, du premier au dernier jour du mois.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorH.jpg\r', 68),
('Senior<br>(Plus de 60 ans)', 'Une année', 'Handicap', NULL, '66,00', '<h1>Abonnement Esprit</h1><p>Abonnement annuel valable pour une seule personne agée plus 60 ans en situation handicap, du début jusqu à la fin  d année.</p><ul><li>A valider à chaque montée sans contact.</li><li>Achat disponible uniquement dans nos points de vente.</li><li>Titres rechargeables sans contact (2£ de création).</li> </ul>', 'Images/seniorH.jpg\r', 69);

-- --------------------------------------------------------

--
-- Structure de la table `titres`
--

CREATE TABLE `titres` (
  `numtitre` int(11) NOT NULL,
  `numero` int(25) NOT NULL,
  `identifiant` varchar(25) NOT NULL,
  `debutvalidite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `identifiant` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `mdp` varchar(25) NOT NULL,
  `age` varchar(5) NOT NULL,
  `numtel` varchar(25) NOT NULL,
  `profilimg` varchar(50) NOT NULL DEFAULT 'Images/Utilisateurs/default.png',
  `admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`identifiant`, `nom`, `prenom`, `mdp`, `age`, `numtel`, `profilimg`, `admin`) VALUES
('mustapha', 'ZAIDI', 'Mustapha', '1234', '22', '0745385979', 'Images/Utilisateurs/default.png', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tarifs`
--
ALTER TABLE `tarifs`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `titres`
--
ALTER TABLE `titres`
  ADD PRIMARY KEY (`numtitre`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`identifiant`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tarifs`
--
ALTER TABLE `tarifs`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `titres`
--
ALTER TABLE `titres`
  MODIFY `numtitre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
