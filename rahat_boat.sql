-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 05:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahat_boat`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks_master`
--

CREATE TABLE `blocks_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `block_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks_master`
--

INSERT INTO `blocks_master` (`id`, `district_id`, `block_name`) VALUES
(1, 1, 'Agra City'),
(2, 1, 'Akola'),
(3, 1, 'Bah'),
(4, 1, 'Barauli Ahir'),
(5, 1, 'Bichpuri'),
(6, 1, 'Etmadpur'),
(7, 1, 'Fatehabad'),
(8, 1, 'Fatehpur Sikri'),
(9, 1, 'Jagner'),
(10, 1, 'Jaitpur Kalan'),
(11, 1, 'Khandauli'),
(12, 1, 'Kheragarh'),
(13, 1, 'Kiraoli (Achhnera)'),
(14, 1, 'Pinahat'),
(15, 1, 'Saiyan'),
(16, 1, 'Shamsabad'),
(17, 2, 'Akrabad'),
(18, 2, 'Aligarh city'),
(19, 2, 'Atruali'),
(20, 2, 'Bijuali'),
(21, 2, 'Chandus'),
(22, 2, 'Dhanipur'),
(23, 2, 'Gangiri'),
(24, 2, 'Gonda'),
(25, 2, 'Iglas'),
(26, 2, 'Jawan'),
(27, 2, 'Khair'),
(28, 2, 'Lodha'),
(29, 2, 'Tappal'),
(30, 3, 'Akbarpur'),
(31, 3, 'Ambedkar Nagar City'),
(32, 3, 'Baskhari'),
(33, 3, 'Bhiti'),
(34, 3, 'Bhiyaon'),
(35, 3, 'Jahageerganj'),
(36, 3, 'Jalalpur'),
(37, 3, 'Katehari'),
(38, 3, 'Ramnagar'),
(39, 3, 'Tanda'),
(40, 4, 'Amethi'),
(41, 4, 'Bahadurpur'),
(42, 4, 'Bazar Shukul'),
(43, 4, 'Bhadar'),
(44, 4, 'Bhetua'),
(45, 4, 'Gauriganj'),
(46, 4, 'Jagdishpur'),
(47, 4, 'Jamo'),
(48, 4, 'Musafirkhana'),
(49, 4, 'Sangrampur'),
(50, 4, 'Shahgarh'),
(51, 4, 'Singhpur'),
(52, 4, 'Tiloi'),
(53, 5, 'Amroha City'),
(54, 5, 'Amroha Dehaat'),
(55, 5, 'Dhanaura'),
(56, 5, 'Gajraula'),
(57, 5, 'Gangeshwari'),
(58, 5, 'Hasanpur'),
(59, 5, 'Joya'),
(60, 6, 'Achalda'),
(61, 6, 'Airwa Katra'),
(62, 6, 'Ajitmal'),
(63, 6, 'Auraiya City'),
(64, 6, 'Auraiya Rural'),
(65, 6, 'Bhagyanagar'),
(66, 6, 'Bidhuna'),
(67, 6, 'Sahar'),
(68, 7, 'Amaniganj'),
(69, 7, 'Ayodhya City'),
(70, 7, 'Bikapur'),
(71, 7, 'Haringtonganj'),
(72, 7, 'Masaudha'),
(73, 7, 'Mawai'),
(74, 7, 'Maya Bazar'),
(75, 7, 'Milkipur'),
(76, 7, 'Pura Bazar'),
(77, 7, 'Rudauli'),
(78, 7, 'Sohawal'),
(79, 7, 'Tarun'),
(80, 8, 'Ahiraula'),
(81, 8, 'Atrauliya'),
(82, 8, 'Azamgarh City'),
(83, 8, 'Azmatgarh'),
(84, 8, 'Bilariyagannj'),
(85, 8, 'Haraiya'),
(86, 8, 'Jahanaganj'),
(87, 8, 'Koyalsa'),
(88, 8, 'Lalganj'),
(89, 8, 'Mahrajganj'),
(90, 8, 'Martinganj'),
(91, 8, 'Mehnagar'),
(92, 8, 'Mirzapur'),
(93, 8, 'Mohammadpur'),
(94, 8, 'Palhana'),
(95, 8, 'Palhani'),
(96, 8, 'Pawai'),
(97, 8, 'Phulpur'),
(98, 8, 'Rani Ki Sarai'),
(99, 8, 'Sathiaon'),
(100, 8, 'Tahbarpur'),
(101, 8, 'Tarwa'),
(102, 8, 'Thekma'),
(103, 9, 'Baghpat City'),
(104, 9, 'Baghpat Rural'),
(105, 9, 'Baraut'),
(106, 9, 'Binauli'),
(107, 9, 'Chhapruli'),
(108, 9, 'Khekra'),
(109, 9, 'Pilana'),
(110, 10, 'Bahraich Nagar'),
(111, 10, 'Balha'),
(112, 10, 'Chittaura'),
(113, 10, 'Fakharpur'),
(114, 10, 'Huzurpur'),
(115, 10, 'Jarwal'),
(116, 10, 'Kaisarganj'),
(117, 10, 'Mahsi'),
(118, 10, 'Mihipurwa'),
(119, 10, 'Nawabganj'),
(120, 10, 'Payagpur'),
(121, 10, 'Risiya'),
(122, 10, 'Shivpur'),
(123, 10, 'Tejwapur'),
(124, 10, 'Visheshwarganj'),
(125, 11, 'Bairia'),
(126, 11, 'Ballia City'),
(127, 11, 'Bansdih'),
(128, 11, 'Belhari'),
(129, 11, 'Beruarbari'),
(130, 11, 'Chilkahar'),
(131, 11, 'Dubhar'),
(132, 11, 'Garwar'),
(133, 11, 'Hanumanganj'),
(134, 11, 'Maniar'),
(135, 11, 'Murlichhapra'),
(136, 11, 'Nagra'),
(137, 11, 'Navanagar'),
(138, 11, 'Pandah'),
(139, 11, 'Rasra'),
(140, 11, 'Reoti'),
(141, 11, 'Siyar'),
(142, 11, 'Sohav'),
(143, 12, 'Balrampur City'),
(144, 12, 'Balrampur Dehat'),
(145, 12, 'Gaisadi'),
(146, 12, 'Gandas Bujurg'),
(147, 12, 'Harriya Satghrwa'),
(148, 12, 'Pachpedwa'),
(149, 12, 'Rehra Bazar'),
(150, 12, 'Sriduttganj'),
(151, 12, 'Tulsipur'),
(152, 12, 'Utraula'),
(153, 13, 'Baberu'),
(154, 13, 'Badokhar Khurd'),
(155, 13, 'Banda City'),
(156, 13, 'Bisanda'),
(157, 13, 'Jaspura'),
(158, 13, 'Kamasin'),
(159, 13, 'Mahuwa'),
(160, 13, 'Naraini'),
(161, 13, 'Tindwari'),
(162, 14, 'Banki'),
(163, 14, 'Banocoder'),
(164, 14, 'Barabanki City'),
(165, 14, 'Dariyabad'),
(166, 14, 'Dewa'),
(167, 14, 'Fathepur'),
(168, 14, 'Haidergarh'),
(169, 14, 'Harkha'),
(170, 14, 'Masauli'),
(171, 14, 'Nindura'),
(172, 14, 'Puredalai'),
(173, 14, 'Ram Nagar'),
(174, 14, 'Sidhaur'),
(175, 14, 'Sirouligouspur'),
(176, 14, 'Suaratganj'),
(177, 14, 'Trivediganj'),
(178, 15, 'Aalampur Jafrabad'),
(179, 15, 'Baheri'),
(180, 15, 'Bareilly City'),
(181, 15, 'Bhadpura'),
(182, 15, 'Bhojipura'),
(183, 15, 'Bhuta'),
(184, 15, 'Bithri Chainpur'),
(185, 15, 'Faridpur'),
(186, 15, 'Fatehganj (W)'),
(187, 15, 'Kyara'),
(188, 15, 'Majhgwan'),
(189, 15, 'Meerganj'),
(190, 15, 'Nawabganj'),
(191, 15, 'Ramnagar'),
(192, 15, 'Richha (Damkhauda)'),
(193, 15, 'Shergarh'),
(194, 16, 'Bahadurpur'),
(195, 16, 'Bankati'),
(196, 16, 'Basti City'),
(197, 16, 'Dubauliya'),
(198, 16, 'Gaur'),
(199, 16, 'Harriya'),
(200, 16, 'Kaptanganj'),
(201, 16, 'Kudraha'),
(202, 16, 'Parasrampur'),
(203, 16, 'Ram Nagar'),
(204, 16, 'Rudhauli'),
(205, 16, 'Sadar'),
(206, 16, 'Saltaua Gopalur'),
(207, 16, 'Saughat'),
(208, 16, 'Vikramjot'),
(209, 17, 'Abholi'),
(210, 17, 'Aurai'),
(211, 17, 'Bhadohi'),
(212, 17, 'City Bhadohi'),
(213, 17, 'Deegh'),
(214, 17, 'Gyanpur'),
(215, 17, 'Suriyawan'),
(216, 18, 'Afzalgarh'),
(217, 18, 'Bijnor City'),
(218, 18, 'Dhampur'),
(219, 18, 'Haldaur'),
(220, 18, 'Jalilpur'),
(221, 18, 'Khari Jhalu'),
(222, 18, 'Kiratpur'),
(223, 18, 'Kotwali'),
(224, 18, 'Mohd Pur Devmal'),
(225, 18, 'Najibabad'),
(226, 18, 'Nethaur'),
(227, 18, 'Noorpur'),
(228, 18, 'Seohara'),
(229, 19, 'Ambiyapur'),
(230, 19, 'Asafpur'),
(231, 19, 'Bisauli'),
(232, 19, 'Budaun City'),
(233, 19, 'Dahegawan'),
(234, 19, 'Dataganj'),
(235, 19, 'Islam Nagar'),
(236, 19, 'Jagat'),
(237, 19, 'Myaun'),
(238, 19, 'Qadarchauk'),
(239, 19, 'Sahaswan'),
(240, 19, 'Salarpur'),
(241, 19, 'Samrer'),
(242, 19, 'Ujhani'),
(243, 19, 'Usawan'),
(244, 19, 'Wazirganj'),
(245, 20, 'Agauta'),
(246, 20, 'Anoopshahr'),
(247, 20, 'Arniya'),
(248, 20, 'BB Nagar'),
(249, 20, 'Bulandshahr'),
(250, 20, 'Danpur'),
(251, 20, 'Dibai'),
(252, 20, 'Gulaothi'),
(253, 20, 'Jahangirabad'),
(254, 20, 'Khurja'),
(255, 20, 'Lakhaoti'),
(256, 20, 'Pahasu'),
(257, 20, 'Shikarpur'),
(258, 20, 'Sikandrabad'),
(259, 20, 'Siyana'),
(260, 20, 'Unchagaon'),
(261, 21, 'Barahani'),
(262, 21, 'Chahaniya'),
(263, 21, 'Chakia'),
(264, 21, 'Dhanapur'),
(265, 21, 'Nagar'),
(266, 21, 'Naugarh'),
(267, 21, 'Niyamtabad'),
(268, 21, 'Sadar'),
(269, 21, 'Sakaldiha'),
(270, 21, 'Shahabganj'),
(271, 22, 'Chitrakoot City'),
(272, 22, 'Karwi'),
(273, 22, 'Manikpur'),
(274, 22, 'Mau'),
(275, 22, 'Pahadi'),
(276, 22, 'Ramnagar'),
(277, 23, 'Baitalpur'),
(278, 23, 'Bankata'),
(279, 23, 'Barhaj'),
(280, 23, 'Bhagalpur'),
(281, 23, 'Bhaluani'),
(282, 23, 'Bhatni'),
(283, 23, 'Bhatparrani'),
(284, 23, 'Deoria City'),
(285, 23, 'Deoria Sadar'),
(286, 23, 'Desahi Deoria'),
(287, 23, 'Gauribajar'),
(288, 23, 'Lar'),
(289, 23, 'Patherdeva'),
(290, 23, 'Rampur Karkhana'),
(291, 23, 'Rudrapur'),
(292, 23, 'Salempur'),
(293, 23, 'Tarkulwa'),
(294, 24, 'Aliganj'),
(295, 24, 'Awagarh'),
(296, 24, 'Jaithra'),
(297, 24, 'Jalesar'),
(298, 24, 'Marhara'),
(299, 24, 'Nidhauli Klan'),
(300, 24, 'Sakeet'),
(301, 24, 'Sheetalpur'),
(302, 24, 'Urban Etah'),
(303, 25, 'Badhpura'),
(304, 25, 'Basrehar'),
(305, 25, 'Bharthana'),
(306, 25, 'Chakarnagar'),
(307, 25, 'Etawah City'),
(308, 25, 'Jaswantnagar'),
(309, 25, 'Mahewa'),
(310, 25, 'Sefai'),
(311, 25, 'Takha'),
(312, 26, 'Barhpur'),
(313, 26, 'Farrukhabad City'),
(314, 26, 'Kaimganj'),
(315, 26, 'kamalganj'),
(316, 26, 'Mohammdabad'),
(317, 26, 'Nawabaganj'),
(318, 26, 'Rajepur'),
(319, 26, 'Shamsabad'),
(320, 27, 'Airaya'),
(321, 27, 'Amauli'),
(322, 27, 'Asothar'),
(323, 27, 'Bahuwa'),
(324, 27, 'Bhitaura'),
(325, 27, 'Devmai'),
(326, 27, 'Dhata'),
(327, 27, 'Fatehpur City'),
(328, 27, 'Haswa'),
(329, 27, 'Hathgaon'),
(330, 27, 'Khajuha'),
(331, 27, 'Malwan'),
(332, 27, 'Teliyani'),
(333, 27, 'Vijaipur'),
(334, 28, 'Araon'),
(335, 28, 'Eka'),
(336, 28, 'Firozabad City 1'),
(337, 28, 'Firozabad City 2'),
(338, 28, 'Fzd Gramin'),
(339, 28, 'Jasrana'),
(340, 28, 'Khairgarh'),
(341, 28, 'Kotla'),
(342, 28, 'Madanpur'),
(343, 28, 'Shikohabad'),
(344, 28, 'Tundla'),
(345, 29, 'Bisrakh'),
(346, 29, 'Dadri'),
(347, 29, 'Dankaur'),
(348, 29, 'Gautam Buddha Nagar City'),
(349, 29, 'Jewar'),
(350, 30, 'Bhojpur'),
(351, 30, 'Ghaziabad City'),
(352, 30, 'Loni'),
(353, 30, 'Muradnagar'),
(354, 30, 'Razapur'),
(355, 31, 'Bhadaura'),
(356, 31, 'Bhawarkol'),
(357, 31, 'Devokali'),
(358, 31, 'Ghazipur Sadar'),
(359, 31, 'Ghazipur Shahar'),
(360, 31, 'Jakhaniya'),
(361, 31, 'Karanda'),
(362, 31, 'Kasimabad'),
(363, 31, 'Manihari'),
(364, 31, 'Mardah'),
(365, 31, 'Muhammdabad'),
(366, 31, 'Reotipur'),
(367, 31, 'Sadat'),
(368, 31, 'Saidpur'),
(369, 31, 'Varachakwar'),
(370, 31, 'Virno'),
(371, 31, 'Zamania'),
(372, 32, 'Babhanjot'),
(373, 32, 'Belsar'),
(374, 32, 'Chhapiya'),
(375, 32, 'Colonelganj'),
(376, 32, 'Gonda City'),
(377, 32, 'Haldharmau'),
(378, 32, 'Itiyathok'),
(379, 32, 'Jhannjhri'),
(380, 32, 'Katra Bazar'),
(381, 32, 'Mankapur'),
(382, 32, 'Mujehna'),
(383, 32, 'Nawabganj'),
(384, 32, 'Pandri Kripal'),
(385, 32, 'Paraspur'),
(386, 32, 'Rupaideeh'),
(387, 32, 'Tarabganj'),
(388, 32, 'Wajeerganj'),
(389, 33, 'Bansgaon'),
(390, 33, 'Barhalganj'),
(391, 33, 'Belghat'),
(392, 33, 'Bhathat'),
(393, 33, 'Brahmpur'),
(394, 33, 'Campierganj'),
(395, 33, 'Chargawan'),
(396, 33, 'Gagaha'),
(397, 33, 'Gola'),
(398, 33, 'Gorakhpur City'),
(399, 33, 'Jungle Kaudiya'),
(400, 33, 'Kauri Ram'),
(401, 33, 'Khajni'),
(402, 33, 'Khorabar'),
(403, 33, 'Pali'),
(404, 33, 'Pipraich'),
(405, 33, 'Piprauli'),
(406, 33, 'Sahajanawa'),
(407, 33, 'Sardarnagar'),
(408, 33, 'Uruwa'),
(409, 34, 'Gohand'),
(410, 34, 'Hamirpur City'),
(411, 34, 'Kurara'),
(412, 34, 'Maudaha'),
(413, 34, 'Muskara'),
(414, 34, 'Rath'),
(415, 34, 'Sarila'),
(416, 34, 'Sumerpur'),
(417, 35, 'Dhaulana'),
(418, 35, 'Garhmukteshwer'),
(419, 35, 'Hapur'),
(420, 35, 'Simbhawli'),
(421, 36, 'Ahirori'),
(422, 36, 'Bawan'),
(423, 36, 'Behandar'),
(424, 36, 'Bharawan'),
(425, 36, 'Bharkhani'),
(426, 36, 'Bilgram'),
(427, 36, 'Hardoi City'),
(428, 36, 'Hariyawan'),
(429, 36, 'Harpalpur'),
(430, 36, 'Kachuna'),
(431, 36, 'Kothawa'),
(432, 36, 'Madhoganj'),
(433, 36, 'Mallawan'),
(434, 36, 'Pihani'),
(435, 36, 'Sandi'),
(436, 36, 'Sandila'),
(437, 36, 'Shahabad'),
(438, 36, 'Sursa'),
(439, 36, 'Tandiywan'),
(440, 36, 'Todarpur'),
(441, 37, 'Hasayan'),
(442, 37, 'Hathras City'),
(443, 37, 'Hathras Gramin'),
(444, 37, 'Mursan'),
(445, 37, 'Sadabad'),
(446, 37, 'Sasni'),
(447, 37, 'Shapau'),
(448, 37, 'Sikandra Rao'),
(449, 38, 'Dakor'),
(450, 38, 'Jalaun'),
(451, 38, 'Kadaura'),
(452, 38, 'Konch'),
(453, 38, 'Kuthond'),
(454, 38, 'Madhogarh'),
(455, 38, 'Mahewa'),
(456, 38, 'Nadigaon'),
(457, 38, 'Orai City'),
(458, 38, 'Rampura'),
(459, 39, 'Badlapur'),
(460, 39, 'Barsathi'),
(461, 39, 'Buxa'),
(462, 39, 'Dharmapur'),
(463, 39, 'Dobhi'),
(464, 39, 'Jalalpur'),
(465, 39, 'Karnjakala'),
(466, 39, 'Keraket'),
(467, 39, 'Khuthan'),
(468, 39, 'Macchchali shahar'),
(469, 39, 'Maharjganj'),
(470, 39, 'Mariyahu'),
(471, 39, 'Muftiganj'),
(472, 39, 'Mungra Badshahpur'),
(473, 39, 'Nagar'),
(474, 39, 'Ramnagar'),
(475, 39, 'Rampur'),
(476, 39, 'Shahganj'),
(477, 39, 'Sikrara'),
(478, 39, 'Sirkoni'),
(479, 39, 'Suithakala'),
(480, 39, 'Sujanganj'),
(481, 40, 'Babina'),
(482, 40, 'Badagaon'),
(483, 40, 'Bamore'),
(484, 40, 'Bangra'),
(485, 40, 'Chirgaon'),
(486, 40, 'Gursarai'),
(487, 40, 'Jhansi City'),
(488, 40, 'Mauranipur'),
(489, 40, 'Moth'),
(490, 41, 'Chhibramau'),
(491, 41, 'Gugrapur'),
(492, 41, 'Haseran'),
(493, 41, 'Jalalabad'),
(494, 41, 'Kannauj Gramin'),
(495, 41, 'Kannauj Nagar'),
(496, 41, 'Saurikh'),
(497, 41, 'Talgram'),
(498, 41, 'Umarda'),
(499, 42, 'Akbarpur'),
(500, 42, 'Amrodha'),
(501, 42, 'Derapur'),
(502, 42, 'Jhinjhak'),
(503, 42, 'Maitha'),
(504, 42, 'Malasa'),
(505, 42, 'Rajpur'),
(506, 42, 'Rasulabad'),
(507, 42, 'Sandalpur'),
(508, 42, 'Sarwankheda'),
(509, 42, 'Shar Slum Akbarpur'),
(510, 43, 'Bhitargaon'),
(511, 43, 'Bidhnu'),
(512, 43, 'Bilhaur'),
(513, 43, 'Chaubeypur'),
(514, 43, 'Ghatampur'),
(515, 43, 'Kakwan'),
(516, 43, 'Kalyanpur'),
(517, 43, 'Kanpur Nagar City 1'),
(518, 43, 'Kanpur Nagar City 2'),
(519, 43, 'Patara'),
(520, 43, 'Sarsaul'),
(521, 43, 'Shivrajpur'),
(522, 44, 'Amanpur'),
(523, 44, 'Gandundwara'),
(524, 44, 'Kasganj'),
(525, 44, 'Patiyali'),
(526, 44, 'Sahawar'),
(527, 44, 'Sidhpura'),
(528, 44, 'Soron'),
(529, 45, 'Chayal'),
(530, 45, 'Kaneli'),
(531, 45, 'Kara'),
(532, 45, 'Kaushambi City'),
(533, 45, 'Manjhanpur'),
(534, 45, 'Muratganj'),
(535, 45, 'Newada'),
(536, 45, 'Sarsawan'),
(537, 45, 'Sirathu'),
(538, 46, 'Dudhahi'),
(539, 46, 'Fazilnagar'),
(540, 46, 'Hata'),
(541, 46, 'Kaptanganj'),
(542, 46, 'Kasaya'),
(543, 46, 'Khadda'),
(544, 46, 'Kushi Nagar City'),
(545, 46, 'Motichak'),
(546, 46, 'Nebua Naurangiya'),
(547, 46, 'Padrauna'),
(548, 46, 'Ramkola'),
(549, 46, 'Seorahi'),
(550, 46, 'Sukrauli'),
(551, 46, 'Tamkuhiraj'),
(552, 46, 'Vishunpura'),
(553, 47, 'Bankeyganj'),
(554, 47, 'Behjam'),
(555, 47, 'Bijua'),
(556, 47, 'Dhaurhara'),
(557, 47, 'Isanagar'),
(558, 47, 'Kumbhi Gola'),
(559, 47, 'Lakhimpur Gramin'),
(560, 47, 'Lakhimpur Kheri City'),
(561, 47, 'Mitauli'),
(562, 47, 'Mohammdi'),
(563, 47, 'Nakha'),
(564, 47, 'Nighasan'),
(565, 47, 'Palia Kalan'),
(566, 47, 'Passgawan'),
(567, 47, 'Phoolbehar'),
(568, 47, 'Ramiya Behar'),
(569, 48, 'Bar'),
(570, 48, 'Birdha'),
(571, 48, 'Jakhora'),
(572, 48, 'Lalitpur City'),
(573, 48, 'Mandawara'),
(574, 48, 'Mehroni'),
(575, 48, 'Tallbehat'),
(576, 49, 'Alamnagar'),
(577, 49, 'Aliganj'),
(578, 49, 'Bakshi Ka Talab'),
(579, 49, 'Chinhat'),
(580, 49, 'Goasaiganj'),
(581, 49, 'Kakori'),
(582, 49, 'Malihabad'),
(583, 49, 'Mall'),
(584, 49, 'Mohan Lal Ganj'),
(585, 49, 'Sarojninagar'),
(586, 50, 'Bridjmanganj'),
(587, 50, 'Dhani'),
(588, 50, 'Ghughali'),
(589, 50, 'Lakshmipur'),
(590, 50, 'Maharajganj City'),
(591, 50, 'Mithaura'),
(592, 50, 'Nautanva'),
(593, 50, 'Nichlaul'),
(594, 50, 'Paniyara'),
(595, 50, 'Partawal'),
(596, 50, 'Pharenda'),
(597, 50, 'Sadar'),
(598, 50, 'Siswa'),
(599, 51, 'Charkhari'),
(600, 51, 'Jaitpur'),
(601, 51, 'Kabrai'),
(602, 51, 'Mahoba City'),
(603, 51, 'Panwadi'),
(604, 52, 'Barnahal'),
(605, 52, 'Bewar'),
(606, 52, 'Ghiror'),
(607, 52, 'Jagir'),
(608, 52, 'Karhal'),
(609, 52, 'Kishni'),
(610, 52, 'Kuraoli'),
(611, 52, 'Mainpuri City'),
(612, 52, 'Mainpuri Dehat'),
(613, 52, 'Sultanganj'),
(614, 53, 'Baldev'),
(615, 53, 'Chaumuhan'),
(616, 53, 'Chhata'),
(617, 53, 'Farah'),
(618, 53, 'Goverdhan'),
(619, 53, 'Mant'),
(620, 53, 'Mathura City'),
(621, 53, 'Mathura Rural'),
(622, 53, 'Nandgaon'),
(623, 53, 'Naujheel'),
(624, 53, 'Raya'),
(625, 54, 'Badraon'),
(626, 54, 'Dohri Ghat'),
(627, 54, 'Fatehpur Mandaw'),
(628, 54, 'Ghosi'),
(629, 54, 'Kopaganj'),
(630, 54, 'Mau City'),
(631, 54, 'Muhammdabad'),
(632, 54, 'Pradaha'),
(633, 54, 'Ranipur'),
(634, 54, 'Ratanpura'),
(635, 55, 'Daurala'),
(636, 55, 'Hastinapur'),
(637, 55, 'Jani'),
(638, 55, 'Kharkhauda'),
(639, 55, 'Machhra'),
(640, 55, 'Mawana'),
(641, 55, 'Meerut City'),
(642, 55, 'Meerut Grameen'),
(643, 55, 'Parikshitgarh'),
(644, 55, 'Rajpura'),
(645, 55, 'Rohta'),
(646, 55, 'Sardhana'),
(647, 55, 'Saroorpur'),
(648, 56, 'Chhanabey'),
(649, 56, 'City Gramin'),
(650, 56, 'Haliya'),
(651, 56, 'Jamalpur'),
(652, 56, 'Kone'),
(653, 56, 'Lalganj'),
(654, 56, 'Madihan (Patehra)'),
(655, 56, 'Majhawa'),
(656, 56, 'Mirzapur City 1'),
(657, 56, 'Mirzapur City 2'),
(658, 56, 'Narayanpur'),
(659, 56, 'Pahari'),
(660, 56, 'Rajgarh'),
(661, 56, 'Sikhar'),
(662, 57, 'Bhagatpur Tanda'),
(663, 57, 'Bilari'),
(664, 57, 'Chajjlet'),
(665, 57, 'Deengarpur'),
(666, 57, 'Dilari'),
(667, 57, 'Moradabad block_master'),
(668, 57, 'Moradabad City'),
(669, 57, 'Mundapandey'),
(670, 57, 'Thakurdwara'),
(671, 58, 'Baghra'),
(672, 58, 'Budhana'),
(673, 58, 'Charthawal'),
(674, 58, 'Jansath'),
(675, 58, 'Khatauli'),
(676, 58, 'Morna'),
(677, 58, 'Muzaffarnagar City'),
(678, 58, 'Purkazi'),
(679, 58, 'Sadar'),
(680, 58, 'Shahpur'),
(681, 59, 'Amariya'),
(682, 59, 'Barkhera'),
(683, 59, 'Bilsanda'),
(684, 59, 'Bisalpur'),
(685, 59, 'Lalorikhera'),
(686, 59, 'Marori'),
(687, 59, 'Pilibhit City'),
(688, 59, 'Puranpur'),
(689, 60, 'Aspur Devsara'),
(690, 60, 'Baba Belkhar Nath Dham'),
(691, 60, 'Babaganj'),
(692, 60, 'Bihar'),
(693, 60, 'Gaura'),
(694, 60, 'Kalakakar'),
(695, 60, 'Kunda'),
(696, 60, 'Laxmanpur'),
(697, 60, 'Mandhata'),
(698, 60, 'Mangraura'),
(699, 60, 'Patti'),
(700, 60, 'Pratapgarh City'),
(701, 60, 'Rampur Khas'),
(702, 60, 'Rampur Sangramgarh'),
(703, 60, 'Sadar Gramin'),
(704, 60, 'Sandwa Chandrika'),
(705, 60, 'Sangipur'),
(706, 60, 'Shivgarh'),
(707, 61, 'Bahadurpur'),
(708, 61, 'Bahariya'),
(709, 61, 'Chaka'),
(710, 61, 'Dhanupur'),
(711, 61, 'Handia'),
(712, 61, 'Holagarh'),
(713, 61, 'Jasara'),
(714, 61, 'Karchhana'),
(715, 61, 'Kaudiyara'),
(716, 61, 'Kaurihar'),
(717, 61, 'Koraon'),
(718, 61, 'Manda'),
(719, 61, 'Mauaima'),
(720, 61, 'Meja'),
(721, 61, 'Phoolpur'),
(722, 61, 'Pratappur'),
(723, 61, 'Prayagraj City 1'),
(724, 61, 'Prayagraj City 2'),
(725, 61, 'Saidabad'),
(726, 61, 'Shankargarh'),
(727, 61, 'Soraon'),
(728, 61, 'Uruwan'),
(729, 62, 'Amava'),
(730, 62, 'Bachhrawan'),
(731, 62, 'Chhatoh'),
(732, 62, 'Dalmau'),
(733, 62, 'Deeh'),
(734, 62, 'Deenshah Gaura'),
(735, 62, 'Harchandpur'),
(736, 62, 'Jagatpur'),
(737, 62, 'Kheeron'),
(738, 62, 'Lalganj'),
(739, 62, 'Mahrajganj'),
(740, 62, 'Raebareli City'),
(741, 62, 'Rahi'),
(742, 62, 'Rohaniya'),
(743, 62, 'Salon'),
(744, 62, 'Sareni'),
(745, 62, 'Satovn'),
(746, 62, 'Shivgarh'),
(747, 62, 'Unchahar'),
(748, 63, 'Bilaspur'),
(749, 63, 'Chamrawa'),
(750, 63, 'Milak'),
(751, 63, 'Rampur City'),
(752, 63, 'Saidnagar'),
(753, 63, 'Shahbad'),
(754, 63, 'Swar City'),
(755, 63, 'Swar Gramin'),
(756, 64, 'Baliya Kheri'),
(757, 64, 'Deoband'),
(758, 64, 'Gangoh'),
(759, 64, 'Maniharan'),
(760, 64, 'Muzaffarabad'),
(761, 64, 'Nagal'),
(762, 64, 'Nakur'),
(763, 64, 'Nanauta'),
(764, 64, 'Punwarka'),
(765, 64, 'Sadhauli Kadeem'),
(766, 64, 'Saharanpur City'),
(767, 64, 'Sarsawa'),
(768, 65, 'Asmoli'),
(769, 65, 'Bahjoi'),
(770, 65, 'Baniyakhera'),
(771, 65, 'Gunnaur'),
(772, 65, 'Junawai'),
(773, 65, 'Pawansa'),
(774, 65, 'Rajpura'),
(775, 65, 'Sambhal'),
(776, 66, 'Baghauli'),
(777, 66, 'Belharkala'),
(778, 66, 'Haisar Bazar'),
(779, 66, 'Khalilabad'),
(780, 66, 'Mehdawal'),
(781, 66, 'Nath Nagar'),
(782, 66, 'Pauli'),
(783, 66, 'Sant Kabir Nagar City'),
(784, 66, 'Santha'),
(785, 66, 'Semari Yawan'),
(786, 67, 'Banda'),
(787, 67, 'Bhawalkhera'),
(788, 67, 'Dadraul'),
(789, 67, 'Jaitipur'),
(790, 67, 'Jalalalabad'),
(791, 67, 'Kalan'),
(792, 67, 'Kanth'),
(793, 67, 'Khudaganj'),
(794, 67, 'Khutar'),
(795, 67, 'Madnapur'),
(796, 67, 'Mirzapur'),
(797, 67, 'Nigohi'),
(798, 67, 'Powyan'),
(799, 67, 'Shahjahanpur City'),
(800, 67, 'Sindhouli'),
(801, 67, 'Tilhar'),
(802, 68, 'Kairana'),
(803, 68, 'Kandhla'),
(804, 68, 'Shamli'),
(805, 68, 'Thanabhawan'),
(806, 68, 'Unn'),
(807, 69, 'Ekona'),
(808, 69, 'Gilaula'),
(809, 69, 'Hariharpur Rani'),
(810, 69, 'Jamunaha'),
(811, 69, 'Shravasti City'),
(812, 69, 'Sirsiya'),
(813, 70, 'Bansi'),
(814, 70, 'Barhani'),
(815, 70, 'Bhanwapur'),
(816, 70, 'Birdpur'),
(817, 70, 'Dumariyaganj'),
(818, 70, 'Itwa'),
(819, 70, 'Jogiya'),
(820, 70, 'Khesraha'),
(821, 70, 'Khuniyaw'),
(822, 70, 'Lotan'),
(823, 70, 'Mithwal'),
(824, 70, 'Naugarh'),
(825, 70, 'Shoratgarh'),
(826, 70, 'Siddharth Nagar City'),
(827, 70, 'Uska Bazar'),
(828, 71, 'Aliya'),
(829, 71, 'Behta'),
(830, 71, 'Biswan'),
(831, 71, 'Gondlamau'),
(832, 71, 'Hargao'),
(833, 71, 'Kasmanda'),
(834, 71, 'Kherabad'),
(835, 71, 'Laharpur'),
(836, 71, 'Machherata'),
(837, 71, 'Mahmudabad'),
(838, 71, 'Maholi'),
(839, 71, 'Misrikh'),
(840, 71, 'Pahala'),
(841, 71, 'Parsendi'),
(842, 71, 'Pisawan'),
(843, 71, 'Rampur Mathura'),
(844, 71, 'Rewsa'),
(845, 71, 'Sakran'),
(846, 71, 'Sidhauli'),
(847, 71, 'Sitapur City'),
(848, 72, 'Babhani'),
(849, 72, 'Chatara'),
(850, 72, 'Chopan'),
(851, 72, 'Duddhi'),
(852, 72, 'Ghorawal'),
(853, 72, 'Myorpur'),
(854, 72, 'Nagawa'),
(855, 72, 'Robertsganj'),
(856, 72, 'Sonbhadra City'),
(857, 73, 'Akhandnagar'),
(858, 73, 'Baldirai'),
(859, 73, 'Bhadaiya'),
(860, 73, 'Dhanpatganj'),
(861, 73, 'Dostpur'),
(862, 73, 'Dubepur'),
(863, 73, 'Jaisinghpur'),
(864, 73, 'Kadipur'),
(865, 73, 'Kurebhar'),
(866, 73, 'Kurwar'),
(867, 73, 'Lambhua'),
(868, 73, 'Motigarpur'),
(869, 73, 'P P Kamaicha'),
(870, 73, 'Sultanpur City'),
(871, 74, 'Asoha'),
(872, 74, 'Auras'),
(873, 74, 'Bangarmau'),
(874, 74, 'Bichiya'),
(875, 74, 'Bighapur'),
(876, 74, 'Fatehpur - 84'),
(877, 74, 'Ganjmuradabad'),
(878, 74, 'Hasanganj'),
(879, 74, 'Hilowli'),
(880, 74, 'Miyaganj'),
(881, 74, 'Nawabagnj'),
(882, 74, 'Purwa'),
(883, 74, 'S.Karan'),
(884, 74, 'S.Sarosi'),
(885, 74, 'Safipur'),
(886, 74, 'Sumerpur'),
(887, 74, 'Unnao City'),
(888, 75, 'Araziline'),
(889, 75, 'Baragaon'),
(890, 75, 'Chiraigaon'),
(891, 75, 'Cholapur'),
(892, 75, 'Harahua'),
(893, 75, 'Kashi Vidyapeeth'),
(894, 75, 'Pindra'),
(895, 75, 'Sewapuri'),
(896, 75, 'Varanasi City');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('rahat_boat_management_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:37:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:21:\"dashboard.edit.report\";s:1:\"c\";s:3:\"web\";}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:18:\"district_dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:30:\"district_dashboard.edit.report\";s:1:\"c\";s:3:\"web\";}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"user_management\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:25:\"user_management.role.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:27:\"user_management.role.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:25:\"user_management.role.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:27:\"user_management.role.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:27:\"user_management.role.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:38:\"user_management.role.assign.permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:25:\"user_management.user.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:27:\"user_management.user.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:25:\"user_management.user.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:27:\"user_management.user.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:27:\"user_management.user.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:15:\"boat_management\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:27:\"boat_management.create.boat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:25:\"boat_management.edit.boat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:27:\"boat_management.update.boat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:27:\"boat_management.delete.boat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:33:\"boat_management.boat.view.details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:30:\"boat_management.show.boat.list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:16:\"ghaat_management\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:29:\"ghaat_management.create.ghaat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:3:{s:1:\"a\";i:26;s:1:\"b\";s:27:\"ghaat_management.edit.ghaat\";s:1:\"c\";s:3:\"web\";}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:29:\"ghaat_management.update.ghaat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:29:\"ghaat_management.delete.ghaat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:35:\"ghaat_management.ghaat.view.details\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:32:\"ghaat_management.show.ghaat.list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:11:\"life_jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:30:\"life_jacket.create.life.jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:28:\"life_jacket.edit.life.jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:30:\"life_jacket.update.life.jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:30:\"life_jacket.delete.life.jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:34:\"life_jacket.ghaat.view.life.jacket\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:33:\"life_jacket.show.life.jacket.list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:7:\"lekhpal\";s:1:\"c\";s:3:\"web\";}}}', 1757928342);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts_master`
--

CREATE TABLE `districts_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(200) NOT NULL,
  `short_code` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts_master`
--

INSERT INTO `districts_master` (`id`, `district_name`, `short_code`) VALUES
(1, 'Agra', 'AGR'),
(2, 'Aligarh', 'ALG'),
(3, 'Ambedkar Nagar', 'ABN'),
(4, 'Amethi', 'AMT'),
(5, 'Amroha', 'AMR'),
(6, 'Auraiya', 'AUR'),
(7, 'Ayodhya', 'AYD'),
(8, 'Azamgarh', 'AZM'),
(9, 'Baghpat', 'BGT'),
(10, 'Bahraich', 'BRC'),
(11, 'Ballia', 'BLA'),
(12, 'Balrampur', 'BLP'),
(13, 'Banda', 'BND'),
(14, 'Barabanki', 'BBK'),
(15, 'Bareilly', 'BRL'),
(16, 'Basti', 'BST'),
(17, 'Bhadohi', 'SRN'),
(18, 'Bijnor', 'BJR'),
(19, 'Badaun', 'BDN'),
(20, 'Bulandshahr', 'BSR'),
(21, 'Chandauli', 'CDL'),
(22, 'Chitrakoot', 'CTR'),
(23, 'Deoria', 'DEO'),
(24, 'Etah', 'ETA'),
(25, 'Etawah', 'ETW'),
(26, 'Farrukhabad', 'FBD'),
(27, 'Fatehpur', 'FTP'),
(28, 'Firozabad', 'FRZ'),
(29, 'Gautam Buddha Nagar', 'GBN'),
(30, 'Ghaziabad', 'GZB'),
(31, 'Ghazipur', 'GZP'),
(32, 'Gonda', 'GND'),
(33, 'Gorakhpur', 'GRK'),
(34, 'Hamirpur', 'HMR'),
(35, 'Hapur', 'HPR'),
(36, 'Hardoi', 'HDI'),
(37, 'Hathras', 'HTR'),
(38, 'Jalaun', 'JLN'),
(39, 'Jaunpur', 'JNP'),
(40, 'Jhansi', 'JHS'),
(41, 'Kannauj', 'KNJ'),
(42, 'Kanpur Dehat', 'KPD'),
(43, 'Kanpur Nagar', 'KPN'),
(44, 'Kasganj', 'KSG'),
(45, 'Kaushambi', 'KSM'),
(46, 'Kheri', 'LKH'),
(47, 'Kushinagar', 'KSN'),
(48, 'Lalitpur', 'LTP'),
(49, 'Lucknow', 'LKO'),
(50, 'Maharajganj', 'MJG'),
(51, 'Mahoba', 'MHB'),
(52, 'Mainpuri', 'MNP'),
(53, 'Mathura', 'MTR'),
(54, 'Mau', 'MAU'),
(55, 'Meerut', 'MRT'),
(56, 'Mirzapur', 'MRZ'),
(57, 'Moradabad', 'MRB'),
(58, 'Muzaffarnagar', 'MZN'),
(59, 'Pilibhit', 'PLB'),
(60, 'Pratapgarh', 'PTG'),
(61, 'Prayagraj', 'PRY'),
(62, 'Raebareli', 'RBL'),
(63, 'Rampur', 'RMP'),
(64, 'Saharanpur', 'SHP'),
(65, 'Sambhal', 'SBL'),
(66, 'Sant Kabir Nagar', 'SKN'),
(67, 'Shahjahanpur', 'SHJ'),
(68, 'Shamli', 'SML'),
(69, 'Shravasti', 'SHV'),
(70, 'Siddharthnagar', 'SDN'),
(71, 'Sitapur', 'STP'),
(72, 'Sonbhadra', 'SNB'),
(73, 'Sultanpur', 'STN'),
(74, 'Unnao', 'UNN'),
(75, 'Varanasi', 'VNS');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_14_060149_create_permission_tables', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL DEFAULT 'App\\Models\\User',
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', NULL, NULL),
(2, 'dashboard.edit.report', 'web', NULL, NULL),
(3, 'district_dashboard', 'web', NULL, NULL),
(4, 'district_dashboard.edit.report', 'web', NULL, NULL),
(5, 'user_management', 'web', NULL, NULL),
(6, 'user_management.role.view', 'web', NULL, NULL),
(7, 'user_management.role.create', 'web', NULL, NULL),
(8, 'user_management.role.edit', 'web', NULL, NULL),
(9, 'user_management.role.update', 'web', NULL, NULL),
(10, 'user_management.role.delete', 'web', NULL, NULL),
(11, 'user_management.role.assign.permission', 'web', NULL, NULL),
(12, 'user_management.user.view', 'web', NULL, NULL),
(13, 'user_management.user.create', 'web', NULL, NULL),
(14, 'user_management.user.edit', 'web', NULL, NULL),
(15, 'user_management.user.update', 'web', NULL, NULL),
(16, 'user_management.user.delete', 'web', NULL, NULL),
(17, 'boat_management', 'web', NULL, NULL),
(18, 'boat_management.create.boat', 'web', NULL, NULL),
(19, 'boat_management.edit.boat', 'web', NULL, NULL),
(20, 'boat_management.update.boat', 'web', NULL, NULL),
(21, 'boat_management.delete.boat', 'web', NULL, NULL),
(22, 'boat_management.boat.view.details', 'web', NULL, NULL),
(23, 'boat_management.show.boat.list', 'web', NULL, NULL),
(24, 'ghaat_management', 'web', NULL, NULL),
(25, 'ghaat_management.create.ghaat', 'web', NULL, NULL),
(26, 'ghaat_management.edit.ghaat', 'web', NULL, NULL),
(27, 'ghaat_management.update.ghaat', 'web', NULL, NULL),
(28, 'ghaat_management.delete.ghaat', 'web', NULL, NULL),
(29, 'ghaat_management.ghaat.view.details', 'web', NULL, NULL),
(30, 'ghaat_management.show.ghaat.list', 'web', NULL, NULL),
(31, 'life_jacket', 'web', NULL, NULL),
(32, 'life_jacket.create.life.jacket', 'web', NULL, NULL),
(33, 'life_jacket.edit.life.jacket', 'web', NULL, NULL),
(34, 'life_jacket.update.life.jacket', 'web', NULL, NULL),
(35, 'life_jacket.delete.life.jacket', 'web', NULL, NULL),
(36, 'life_jacket.ghaat.view.life.jacket', 'web', NULL, NULL),
(37, 'life_jacket.show.life.jacket.list', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'f3ad34127d58634af8a33e59771faeb94fa81b58e2455ad3e8f5cfb3d270af03', '[\"*\"]', NULL, NULL, '2025-06-17 00:32:39', '2025-06-17 00:32:39'),
(2, 'App\\Models\\User', 1, 'auth_token', 'eb8fdc1797f5c08da398b590e7d1b50e9ca83ab7ec16b5422223a0ffbd41815f', '[\"*\"]', NULL, NULL, '2025-06-17 00:54:01', '2025-06-17 00:54:01'),
(3, 'App\\Models\\User', 1, 'auth_token', '10f83b6584add1e2334c663d0889dd15acbdd322bd411c9c654bce826409cd80', '[\"*\"]', NULL, NULL, '2025-06-17 00:57:58', '2025-06-17 00:57:58'),
(4, 'App\\Models\\User', 1, 'auth_token', 'df677035a34171728efcbd1acb86126d35990b5217b82853076f1095aafacce3', '[\"*\"]', NULL, NULL, '2025-06-17 01:00:44', '2025-06-17 01:00:44'),
(5, 'App\\Models\\User', 1, 'auth_token', '34f1564e0e712bbe1e56653ccc477315f1a02d17ea1368de3bdfecb70c0fd14b', '[\"*\"]', NULL, NULL, '2025-06-17 01:06:52', '2025-06-17 01:06:52'),
(6, 'App\\Models\\User', 1, 'auth_token', 'ac2741239e3adc43da7eff7e537e0a5253518db8e9f3411497e9505034d7d368', '[\"*\"]', NULL, NULL, '2025-06-17 01:08:05', '2025-06-17 01:08:05'),
(7, 'App\\Models\\User', 1, 'auth_token', '052b643a340f46a3fd4f66995ef80b9c2ac7f5e25f725c40c966afa96bb93f5d', '[\"*\"]', '2025-06-17 02:16:00', NULL, '2025-06-17 02:14:33', '2025-06-17 02:16:00'),
(8, 'App\\Models\\User', 1, 'auth_token', '01c1e89cb0c3afc20e4f1f48a517131f19e20d96ac8b48bdd77c64246c5a820c', '[\"*\"]', '2025-06-17 02:43:49', NULL, '2025-06-17 02:17:57', '2025-06-17 02:43:49'),
(9, 'App\\Models\\User', 6, 'auth_token', 'c068efb27100784db54e4f3203272257da0765b78e5c56148cf327662b179b3b', '[\"*\"]', '2025-06-17 10:40:41', NULL, '2025-06-17 07:07:54', '2025-06-17 10:40:41'),
(10, 'App\\Models\\User', 6, 'auth_token', 'df4b0b2cd3d54ea771b9c8e0ae1e5eee1c690d163c4ff7baf8a323ae885e9182', '[\"*\"]', '2025-06-17 08:47:50', NULL, '2025-06-17 08:43:53', '2025-06-17 08:47:50'),
(11, 'App\\Models\\User', 6, 'auth_token', 'c091a271a233b810e1d0ca012d457f57fb4d1b83deca9c56fd6bad9703e15f77', '[\"*\"]', '2025-06-17 10:43:10', NULL, '2025-06-17 08:49:00', '2025-06-17 10:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-06-14 01:38:34', '2025-06-14 01:45:42'),
(2, 'ddma', 'web', '2025-06-14 01:38:58', '2025-06-14 01:38:58'),
(3, 'lekhpal', 'web', '2025-06-14 01:53:48', '2025-06-16 08:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(3, 1),
(3, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tehsils_master`
--

CREATE TABLE `tehsils_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `tehsil_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tehsils_master`
--

INSERT INTO `tehsils_master` (`id`, `district_id`, `tehsil_name`) VALUES
(1, 3, 'Tanda'),
(2, 3, 'Bhiti'),
(3, 3, 'Akabarpur'),
(4, 3, 'Jalapur'),
(5, 3, 'Aalapur'),
(6, 8, 'Sadar'),
(7, 8, 'Sagadi'),
(8, 8, 'Nizamabad'),
(9, 8, 'Mehnaagar'),
(10, 8, 'Phoolpur'),
(11, 8, 'Lalganj'),
(12, 8, 'Martinganj'),
(13, 8, 'Budhanpur'),
(14, 23, 'Salempur '),
(15, 23, 'Deoria Sadar'),
(16, 23, 'Barhaj'),
(17, 23, 'Bhatparrani'),
(18, 23, 'Rudrapur'),
(19, 33, 'Sadar'),
(20, 33, 'Campierganj'),
(21, 33, 'Bansgaon'),
(22, 33, 'Khajni'),
(23, 33, 'Sahjanwan'),
(24, 33, 'Chauri Chaura'),
(25, 33, 'Gola'),
(26, 47, 'Padrauna'),
(27, 47, 'Kasaya'),
(28, 47, 'Tamkuhiraj'),
(29, 47, 'Khadda'),
(30, 47, 'Kaptanganj'),
(31, 47, 'Hata'),
(32, 69, 'Bhinga'),
(33, 69, 'Ikauna'),
(34, 1, 'Agra-Tehsil'),
(35, 16, 'Haraiya'),
(36, 16, 'Basti Sadar'),
(37, 16, 'Bhanpur'),
(38, 16, 'Rudhauli'),
(39, 60, 'Sadar'),
(40, 60, 'Patti'),
(41, 60, 'Kunda'),
(42, 60, 'Raniganj'),
(43, 60, 'Lalganj'),
(44, 54, 'Mohammadabad'),
(45, 54, 'Ghosi'),
(46, 54, 'Madhuban'),
(47, 54, 'Sadar'),
(48, 73, 'Jaisinghpur'),
(49, 73, 'Sultanpur'),
(50, 73, 'Baldirai'),
(51, 73, 'Kadipur'),
(52, 73, 'Lambhua'),
(53, 73, 'Sadar'),
(54, 21, 'Mughalsarai'),
(55, 21, 'Sakaldeeha'),
(56, 21, 'Chanduali'),
(57, 21, 'Chakiya'),
(58, 21, 'Naugarh'),
(59, 62, 'Raebareli Sadar'),
(60, 62, 'Lalganj'),
(61, 62, 'Maharajganj'),
(62, 62, 'Salon'),
(63, 62, 'Unchahar'),
(64, 62, 'Dalmau'),
(65, 11, 'Sadar'),
(66, 11, 'Baliia'),
(67, 11, 'Rashda'),
(68, 11, 'Belthara Road'),
(69, 11, 'Banshdeeh'),
(70, 11, 'Sikandarpur'),
(71, 39, 'Sadar'),
(72, 39, 'Madiyanhu'),
(73, 39, 'Shahganj'),
(74, 39, 'Kerakat'),
(75, 39, 'Badlapur'),
(76, 39, 'Machalishahar'),
(77, 54, 'Maunath Bhanjan'),
(78, 69, 'Jamunaha'),
(79, 56, 'Lalganj'),
(80, 56, 'Madihaan'),
(81, 56, 'Chunaar'),
(82, 56, 'Sadar'),
(83, 61, 'Koraon'),
(84, 61, 'Bara'),
(85, 61, 'Meja'),
(86, 61, 'Karchhana'),
(87, 61, 'Handia'),
(88, 61, 'Sadar'),
(89, 61, 'Phoolpur'),
(90, 61, 'Soraon'),
(91, 66, 'Ghanghata'),
(92, 66, 'Khalilabad'),
(93, 66, 'Mehdawal'),
(94, 70, 'Bansi'),
(95, 70, 'Domariyaganj'),
(96, 70, 'Naugarh'),
(97, 70, 'Itwa'),
(98, 70, 'Shohratgarh'),
(99, 7, 'Rudauli'),
(100, 7, 'Sohawal'),
(101, 7, 'Faizabad'),
(102, 10, 'Nanpara'),
(103, 10, 'Mahasi'),
(104, 10, 'Kaiserganj'),
(105, 11, 'Bairia'),
(106, 12, 'Balrampur'),
(107, 12, 'Tulsipur'),
(108, 12, 'Utraula'),
(109, 14, 'Ramnagar'),
(110, 14, 'Sirauli Gauspur'),
(111, 14, 'Ramsanehighat'),
(112, 16, 'Bhanpur'),
(113, 16, 'Harraiya'),
(114, 16, 'Basti'),
(115, 26, 'Kaimganj'),
(116, 26, 'Amritpur'),
(117, 26, 'Farrukhabad'),
(118, 32, 'Colonelganj'),
(119, 32, 'Tarabganj'),
(120, 32, 'Mankapur'),
(121, 33, 'Gorakhpur'),
(122, 44, 'Kasganj'),
(123, 44, 'Patiyali'),
(124, 50, 'Nautanwa'),
(125, 50, 'Pharenda'),
(126, 50, 'Maharajganj'),
(127, 54, 'Gola'),
(128, 71, 'Laharpur'),
(129, 71, 'Biswan'),
(130, 71, 'Mahmudabad'),
(131, 19, 'Sahaswan'),
(132, 19, 'Budaun'),
(133, 19, 'Dataganj'),
(134, 27, 'Bindki'),
(135, 27, 'Fatehpur'),
(136, 31, 'Saidpur'),
(137, 31, 'Mohammadabad'),
(138, 31, 'Zamania'),
(139, 31, 'Sevrai'),
(140, 36, 'Sawayajpur'),
(141, 36, 'Hardoi'),
(142, 36, 'Bilgram'),
(143, 42, 'Bhognipur'),
(144, 42, 'Sikandra'),
(145, 43, 'Bilhaur'),
(146, 43, 'Kanpur'),
(147, 61, 'Allahabad'),
(148, 46, 'Nighasan'),
(149, 46, 'Palia'),
(150, 46, 'Gola Gokaran Nath'),
(151, 46, 'Lakhimpur'),
(152, 46, 'Dhaurahara'),
(153, 56, 'Mirzapur'),
(154, 67, 'Tilhar'),
(155, 67, 'Jalalabad'),
(156, 67, 'Kalan'),
(157, 67, 'Shahjahanpur'),
(158, 74, 'Bangarmau'),
(159, 74, 'Safipur'),
(160, 74, 'Bighapur'),
(161, 74, 'Unnao'),
(162, 75, 'Rajatalab'),
(163, 75, 'Sadar'),
(164, 2, 'Khair'),
(165, 13, 'Pailani'),
(166, 15, 'Meerganj'),
(167, 15, 'Bareilly'),
(168, 15, 'Faridpur'),
(169, 22, 'Rajapur'),
(170, 34, 'Hamirpur'),
(171, 38, 'Kalpi'),
(172, 41, 'Chhibramau'),
(173, 41, 'Kannauj'),
(174, 45, 'Chail'),
(175, 47, 'Hata'),
(176, 49, 'Bakshi Ka Talab'),
(177, 53, 'Chhata'),
(178, 53, 'Mat'),
(179, 55, 'Mawana');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_image` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `designation`, `role_id`, `district_id`, `password`, `email_verified_at`, `status`, `remember_token`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 'Admin', 'admin@mail.com', 'admin', 1, NULL, '$2y$12$GfcIgdskBPdqDUgArB1cZuPqL4vaRdUza7xPseQip3qFx.l8rZb/y', NULL, '1', NULL, '2025-06-14 03:37:34', '2025-09-14 03:56:19', NULL),
(2, 'DDMA', 'ddma@mail.com', 'ddma', 2, 1, '$2y$12$2YTCEspbSfOb7X0xSVl1muJFL5YDkIQVojf0pcVDzPbB8nqD0lR/m', NULL, '1', NULL, '2025-06-14 04:44:10', '2025-06-16 04:38:06', NULL),
(6, 'lekhpal', 'lekhpal@mail.com', 'lekhpal', 3, 3, '$2y$12$2YTCEspbSfOb7X0xSVl1muJFL5YDkIQVojf0pcVDzPbB8nqD0lR/m', NULL, '1', NULL, '2025-06-16 08:37:20', '2025-06-17 10:19:24', 'profile_images/user_profile_ucwe0d_profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks_master`
--
ALTER TABLE `blocks_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_master_district_id_foreign` (`district_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `districts_master`
--
ALTER TABLE `districts_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tehsils_master`
--
ALTER TABLE `tehsils_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tehsils_master_district_id_foreign` (`district_id`);

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
-- AUTO_INCREMENT for table `blocks_master`
--
ALTER TABLE `blocks_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;

--
-- AUTO_INCREMENT for table `districts_master`
--
ALTER TABLE `districts_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tehsils_master`
--
ALTER TABLE `tehsils_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
