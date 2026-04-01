-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 03, 2026 at 01:03 PM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u945294333_Tree_expert`
--

-- --------------------------------------------------------

--
-- Table structure for table `blocks_master`
--

CREATE TABLE `blocks_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `block_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('tree_expert_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:33:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"dashboard\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:21:\"dashboard.edit.report\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:7:\"project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:3;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"user_management\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:4;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:25:\"user_management.role.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:5;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:27:\"user_management.role.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:6;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:25:\"user_management.role.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:7;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:27:\"user_management.role.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:8;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:27:\"user_management.role.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:9;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:38:\"user_management.role.assign.permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:10;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:25:\"user_management.user.view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:11;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:27:\"user_management.user.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:12;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:25:\"user_management.user.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:13;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:27:\"user_management.user.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:14;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:27:\"user_management.user.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:15;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:14:\"project.create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:16;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:13:\"project.store\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:17;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:12:\"project.list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:18;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:12:\"project.edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:19;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"project.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:20;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:14:\"project.delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:5:\"other\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:22;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:25:\"other.user-ratings.update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:23;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:14:\"other.rate.app\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:24;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:10:\"other.faqs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:25;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:12:\"other.videos\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:26;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"other.contacts\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:27;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:11:\"other.notes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:28;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:13:\"other.privacy\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:29;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:19:\"other.privacy.print\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:30;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:3:\"map\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:31;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:6:\"master\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}i:32;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:9:\"tree_data\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:6;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"Office Admin\";s:1:\"c\";s:3:\"web\";}}}', 1772600814);

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `details`, `instagram`, `facebook`, `whatsapp`, `youtube`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'pk@gmail.com', '7080032118', 'hii', 'https://work.digiemperor.com/', 'https://work.digiemperor.com/public/', '917080032118', 'https://work.digiemperor.com/public/', 'https://work.digiemperor.com/public/', '2025-10-24 02:11:52', '2025-10-24 03:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `districts_master`
--

CREATE TABLE `districts_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `district_name` varchar(200) NOT NULL,
  `short_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts_master`
--

INSERT INTO `districts_master` (`id`, `state_id`, `district_name`, `short_code`, `created_at`, `updated_at`) VALUES
(1, 26, 'Agra', 'AGR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(2, 26, 'Aligarh', 'ALG', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(3, 26, 'Ambedkar Nagar', 'ABN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(4, 26, 'Amethi', 'AMT', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(5, 26, 'Amroha', 'AMR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(6, 26, 'Auraiya', 'AUR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(7, 26, 'Ayodhya', 'AYD', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(8, 26, 'Azamgarh', 'AZM', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(9, 26, 'Baghpat', 'BGT', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(10, 26, 'Bahraich', 'BRC', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(11, 26, 'Ballia', 'BLA', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(12, 26, 'Balrampur', 'BLP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(13, 26, 'Banda', 'BND', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(14, 26, 'Barabanki', 'BBK', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(15, 26, 'Bareilly', 'BRL', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(16, 26, 'Basti', 'BST', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(17, 26, 'Bhadohi', 'SRN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(18, 26, 'Bijnor', 'BJR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(19, 26, 'Badaun', 'BDN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(20, 26, 'Bulandshahr', 'BSR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(21, 26, 'Chandauli', 'CDL', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(22, 26, 'Chitrakoot', 'CTR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(23, 26, 'Deoria', 'DEO', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(24, 26, 'Etah', 'ETA', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(25, 26, 'Etawah', 'ETW', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(26, 26, 'Farrukhabad', 'FBD', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(27, 26, 'Fatehpur', 'FTP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(28, 26, 'Firozabad', 'FRZ', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(29, 26, 'Gautam Buddha Nagar', 'GBN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(30, 26, 'Ghaziabad', 'GZB', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(31, 26, 'Ghazipur', 'GZP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(32, 26, 'Gonda', 'GND', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(33, 26, 'Gorakhpur', 'GRK', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(34, 26, 'Hamirpur', 'HMR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(35, 26, 'Hapur', 'HPR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(36, 26, 'Hardoi', 'HDI', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(37, 26, 'Hathras', 'HTR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(38, 26, 'Jalaun', 'JLN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(39, 26, 'Jaunpur', 'JNP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(40, 26, 'Jhansi', 'JHS', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(41, 26, 'Kannauj', 'KNJ', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(42, 26, 'Kanpur Dehat', 'KPD', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(43, 26, 'Kanpur Nagar', 'KPN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(44, 26, 'Kasganj', 'KSG', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(45, 26, 'Kaushambi', 'KSM', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(46, 26, 'Kheri', 'LKH', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(47, 26, 'Kushinagar', 'KSN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(48, 26, 'Lalitpur', 'LTP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(49, 26, 'Lucknow', 'LKO', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(50, 26, 'Maharajganj', 'MJG', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(51, 26, 'Mahoba', 'MHB', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(52, 26, 'Mainpuri', 'MNP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(53, 26, 'Mathura', 'MTR', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(54, 26, 'Mau', 'MAU', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(55, 26, 'Meerut', 'MRT', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(56, 26, 'Mirzapur', 'MRZ', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(57, 26, 'Moradabad', 'MRB', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(58, 26, 'Muzaffarnagar', 'MZN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(59, 26, 'Pilibhit', 'PLB', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(60, 26, 'Pratapgarh', 'PTG', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(61, 26, 'Prayagraj', 'PRY', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(62, 26, 'Raebareli', 'RBL', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(63, 26, 'Rampur', 'RMP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(64, 26, 'Saharanpur', 'SHP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(65, 26, 'Sambhal', 'SBL', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(66, 26, 'Sant Kabir Nagar', 'SKN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(67, 26, 'Shahjahanpur', 'SHJ', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(68, 26, 'Shamli', 'SML', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(69, 26, 'Shravasti', 'SHV', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(70, 26, 'Siddharthnagar', 'SDN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(71, 26, 'Sitapur', 'STP', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(72, 26, 'Sonbhadra', 'SNB', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(73, 26, 'Sultanpur', 'STN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(74, 26, 'Unnao', 'UNN', '2025-12-18 13:58:22', '2025-12-18 13:58:22'),
(75, 26, 'Varanasi', 'VNS', '2025-12-18 13:58:22', '2025-12-18 13:58:22');

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
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree_id` bigint(20) UNSIGNED NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `tree_id`, `family_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Anacardiaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(2, 2, 'Meliaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(3, 3, 'Moraceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(4, 4, 'Moraceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(5, 5, 'Fabaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(6, 6, 'Lamiaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(7, 7, 'Dipterocarpaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(8, 8, 'Santalaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(9, 9, 'Fabaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(10, 10, 'Arecaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(11, 11, 'Arecaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(12, 12, 'Poaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(13, 13, 'Moraceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(14, 14, 'Myrtaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(15, 15, 'Phyllanthaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(16, 16, 'Myrtaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(17, 17, 'Caricaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(18, 18, 'Anacardiaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(19, 19, 'Myrtaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(20, 20, 'Meliaceae', '2025-10-24 12:57:24', '2025-10-24 12:57:24'),
(23, 23, 'fufug', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(24, 24, '13', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(25, 25, '13', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(26, 26, '13', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(27, 27, 'edyf', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(28, 28, 'edyf', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(29, 29, 'hwhw', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(30, 30, 'hshs', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(31, 31, 'hshs', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(32, 32, 'hshs', '2026-02-24 06:48:45', '2026-02-24 06:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(6, 'Tree Expert', 'egui8oiuorghr5d4e', '2025-10-24 01:06:49', '2025-10-24 01:06:49'),
(7, 'Tree Expert', 'hgthytreretrt', '2025-10-24 05:58:14', '2025-10-27 07:13:10'),
(8, 'Tree Expert', 'utgyututy', '2025-10-27 07:13:21', '2025-10-27 07:13:21');

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
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2025_06_16_110917_create_personal_access_tokens_table', 3);

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
(7, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mt_trees`
--

CREATE TABLE `mt_trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `extra_usertree` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ward_plot_no` varchar(255) DEFAULT NULL,
  `tree_no` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `scientific_name` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `girth` decimal(8,2) DEFAULT NULL,
  `height` decimal(8,2) DEFAULT NULL,
  `canopy` decimal(8,2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `ownership` varchar(255) DEFAULT NULL,
  `concern_person` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `tree_image_upload` longtext DEFAULT NULL,
  `captured_image` longtext DEFAULT NULL,
  `all_captured_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`all_captured_images`)),
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `payment` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = False, 1 = True',
  `datetime` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mt_trees`
--

INSERT INTO `mt_trees` (`id`, `extra_usertree`, `project_id`, `user_id`, `ward_plot_no`, `tree_no`, `tree_name`, `scientific_name`, `family`, `girth`, `height`, `canopy`, `age`, `condition`, `address`, `landmark`, `ownership`, `concern_person`, `remark`, `tree_image_upload`, `captured_image`, `all_captured_images`, `latitude`, `longitude`, `payment`, `datetime`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 'W-12', 'T-101', '1', '1', '1', 40.00, 5.00, 3.00, 10, 'Healthy', 'Pratapgarh,Uttar Pradesh', 'Beside Temple', 'Municipal', 'Ramesh', 'Good condition', 'Uploaded', 'captured_1.jpg', '\"[\\\"tree_images\\\\\\/1761649873_6900a4d19bc8c.jpg\\\",\\\"tree_images\\\\\\/1761649873_6900a4d19c359.jpg\\\"]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2025-10-27 00:02:44', '2025-11-04 11:11:59'),
(2, NULL, 1, 2, 'Plot 45', 'T-009', '1', '1', '1', 55.00, 5.00, 3.00, 8, 'Good', 'Near Green Park', 'Beside Temple', 'Pvt', 'Ramesh Sharma', 'Regular maintenance needed', 'old_image.jpg', 'captured_1.jpg', '\"[]\"', '28.6139', '77.2090', 0, '2025-10-27 10:45:00', '2025-10-27 01:20:10', '2025-11-04 06:18:27'),
(3, NULL, 4, 2, 'W-12', 'T-101', '2', '2', '2', 70.00, 5.00, 3.00, 10, 'Good', 'Antu,pratapgarh,uttarpradesh', 'Beside Temple', 'Pvt', 'Ramesh', 'Good condition', 'Uploaded', NULL, '\"[]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2025-11-04 06:10:19', '2025-11-04 06:10:19'),
(4, NULL, 4, 2, 'W-12', 'T-101', '2', '2', '2', 70.00, 5.00, 3.00, 10, 'Good', 'Antu,pratapgarh,uttarpradesh', 'Beside Temple', 'Pvt', 'Ramesh', 'Good condition', 'Uploaded', NULL, '\"[]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2025-11-04 06:11:49', '2025-11-04 06:11:49'),
(6, NULL, 1, 1, '15', '2', '15', '15', '15', 10.00, 10.00, 10.00, 90, 'Good', 'Rajaji Puram, Lucknow, Uttar Pradesh, 226017, India', 'Beside Temple', 'Municipal', 'Ramesh', 'test', NULL, NULL, '\"[\\\"uploads\\\\\\/tree_images\\\\\\/tree_1766039450_69439f9ae0a8d.jpeg\\\"]\"', '26.8474', '80.8641', 0, '2025-12-18 06:30:50', '2025-12-18 01:00:50', '2025-12-18 01:00:50'),
(7, NULL, 4, 2, 'W-12', 'T-101', '2', '2', '2', 70.00, 5.00, 3.00, 10, 'Good', 'Antu,pratapgarh,uttarpradesh', 'Beside Temple', 'Pvt', 'Ramesh', 'Good condition', 'Uploaded', NULL, '\"[]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2026-01-23 13:18:11', '2026-01-23 13:18:11'),
(8, NULL, 25, 2, 'W-12', 'T-101', '2', '2', '2', 70.00, 5.00, 3.00, 10, 'Good', 'Antu,pratapgarh,uttarpradesh', 'Beside Temple', 'Pvt', 'Ramesh', 'Good condition', 'Uploaded', NULL, '\"[]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2026-01-23 13:53:40', '2026-01-23 14:08:00'),
(9, NULL, 25, 2, 'W-12', 'T-101', '2', '2', '2', 70.00, 5.00, 3.00, 10, 'Good', 'Antu,pratapgarh,uttarpradesh', 'Beside Temple', 'Pvt', 'Ramesh', 'Good condition', 'Uploaded', NULL, '\"[]\"', '26.026699', '81.929703', 0, '2025-10-27 14:30:00', '2026-01-23 13:53:50', '2026-01-23 14:04:17'),
(28, NULL, 28, 46, '45', 'T-4', '6', '6', '6', 50.00, 0.30, 0.40, 75, 'Good', 'G11, Adil Nagar, Lucknow, Uttar Pradesh, 226022, India', 'vvv', 'Pvt', 'yhhh', 'yhh', NULL, NULL, NULL, '26.906085', '80.961831', 0, NULL, '2026-01-31 11:18:44', '2026-01-31 11:19:40'),
(29, NULL, 28, 14, '45', 'T-2', '10', '10', '10', 25.00, 0.15, 0.20, 38, 'Good', 'G11, Adil Nagar, Lucknow, Uttar Pradesh, 226022, India', 'ggg', 'Pvt', 'ttg', 'vbb', NULL, NULL, NULL, '26.906120', '80.961822', 0, NULL, '2026-01-31 11:23:15', '2026-01-31 11:23:15'),
(30, NULL, 29, 17, '45', 'T-1', '17', '17', '17', 25.00, 0.15, 0.20, 38, 'Good', 'G11, Adil Nagar, Lucknow, Uttar Pradesh, 226022, India', 'gghj', 'Riverside', 'Ghh', 'ghhjj', NULL, NULL, NULL, '26.906112', '80.961919', 0, NULL, '2026-01-31 12:00:09', '2026-01-31 12:00:09'),
(31, NULL, 29, 17, '45', 'T-2', '7', '7', '7', 60.00, 0.36, 0.48, 90, 'Good', 'G11, Adil Nagar, Lucknow, Uttar Pradesh, 226022, India', 'gghj', 'Riverside', 'Ghh', 'gggg', NULL, NULL, NULL, '26.906112', '80.961919', 0, NULL, '2026-01-31 12:00:09', '2026-01-31 12:00:09'),
(32, NULL, 33, 19, '1', 'T-1', '16', '16', '16', 50.00, 5.00, 5.00, 12, 'Good', 'Shop No. 06, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nikesh Desai', 'No', NULL, NULL, NULL, '18.981496', '73.120102', 0, NULL, '2026-02-01 03:41:57', '2026-02-01 03:41:57'),
(33, NULL, 34, 19, '1', 'T-1', '15', '15', '15', 56.00, 5.00, 4.00, 12, 'Good', 'Tower-7, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Parme', 'Pvt', 'Bhaskar Desai', NULL, NULL, NULL, NULL, '18.981422', '73.120648', 0, NULL, '2026-02-01 03:54:35', '2026-02-01 03:54:35'),
(54, NULL, 35, 20, 'gcjcjg', 'T-1', '1', 'Mangifera indica', NULL, 12.00, 0.07, 0.10, 18, 'Good', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yfufuf', 'Pvt', 'dydufi', 'jfugut', '[\"tree_images\\/tree_1770209341_6983403d8de57.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770209341_6983403d8de57.jpg\\\"]\"', '26.885807', '81.014293', 0, NULL, '2026-02-04 12:49:01', '2026-02-04 12:49:01'),
(55, NULL, 35, 20, 'xhcjvjg', 'T-2', '2', 'Azadirachta indica', NULL, 12.00, 0.07, 0.10, 18, 'Good', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yfugug', 'Pvt', 'tdhcu', 'fxhcjg', '[\"tree_images\\/tree_1770209398_698340764a82a.jpg\",\"tree_images\\/tree_1770209398_698340764b15e.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770209398_698340764a82a.jpg\\\",\\\"tree_images\\\\\\/tree_1770209398_698340764b15e.jpg\\\"]\"', '26.885807', '81.014293', 1, NULL, '2026-02-04 12:49:58', '2026-02-04 13:14:57'),
(56, NULL, 35, 20, 'gxhfu', 'T-3', '3', 'Ficus benghalensis', NULL, 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'ufur', 'Pvt', 'awi', 'hdjfut', '[\"tree_images\\/tree_1770210803_698345f3d05a6.jpg\",\"tree_images\\/tree_1770210803_698345f3d0e9d.jpg\",\"tree_images\\/tree_1770210803_698345f3d1810.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770210803_698345f3d05a6.jpg\\\",\\\"tree_images\\\\\\/tree_1770210803_698345f3d0e9d.jpg\\\",\\\"tree_images\\\\\\/tree_1770210803_698345f3d1810.jpg\\\"]\"', '26.885702', '81.014297', 1, NULL, '2026-02-04 13:13:23', '2026-02-04 13:14:57'),
(57, NULL, 35, 20, 'gxhdhd', 'T-4', '1', 'Mangifera indica', NULL, 6868.00, 41.21, 54.94, 10302, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'hxf', 'Pvt', 'ydyfu', 'ufit', '[\"tree_images\\/tree_1770211102_6983471ee5858.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770211102_6983471ee5858.jpg\\\"]\"', '26.885707', '81.014335', 0, NULL, '2026-02-04 13:18:22', '2026-02-04 13:18:22'),
(58, NULL, 35, 20, 'xncjv', 'T-5', '3', 'Ficus benghalensis', NULL, 12.00, 0.07, 0.10, 18, 'Good', 'D-158, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'hxncfj', 'Pvt', 'hcjf', 'fzhd', '[\"tree_images\\/tree_1770212063_69834adfd175b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770212063_69834adfd175b.jpg\\\"]\"', '26.885632', '81.014231', 0, NULL, '2026-02-04 13:34:23', '2026-02-04 13:34:23'),
(59, NULL, 35, 20, 'hcjf', 'T-6', '3', 'Ficus benghalensis', NULL, 12.00, 0.07, 0.10, 18, 'Good', '5602, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'hdufi', 'Pvt', 'ufifi', 'ufut', '[\"tree_images\\/tree_1770212123_69834b1bc7b46.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770212123_69834b1bc7b46.jpg\\\"]\"', '26.885573', '81.014212', 0, NULL, '2026-02-04 13:35:23', '2026-02-04 13:35:23'),
(60, NULL, 36, 21, '11', 'T-1', '6', 'Tectona grandis', NULL, 10.00, 0.06, 0.08, 15, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'vsvz', 'Pvt', 'vsvsbs', 'gsbshs', '[\"tree_images\\/tree_1770213227_69834f6b21218.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770213227_69834f6b21218.jpg\\\"]\"', '19.275480', '72.880847', 1, NULL, '2026-02-04 13:53:47', '2026-02-05 07:59:59'),
(61, NULL, 35, 20, 'vugdugs', 'T-7', '1', 'Mangifera indica', NULL, 10.00, 0.06, 0.08, 15, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'vzajv,u', 'quvzuqg', '[\"tree_images\\/tree_1770213710_6983514e63456.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770213710_6983514e63456.jpg\\\"]\"', '26.885753', '81.014339', 0, NULL, '2026-02-04 14:01:50', '2026-02-04 14:01:50'),
(62, NULL, 35, 20, 'vugdugs', 'T-8', '2', 'Azadirachta indica', NULL, 18.00, 0.11, 0.14, 27, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'vzajv,u', 'ycyf', '[\"tree_images\\/tree_1770213710_6983514e64b45.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770213710_6983514e64b45.jpg\\\"]\"', '26.885753', '81.014339', 0, NULL, '2026-02-04 14:01:50', '2026-02-04 14:01:50'),
(63, NULL, 35, 20, 'vugdugs', 'T-9', '2', 'Azadirachta indica', NULL, 83835.00, 503.01, 670.68, 125753, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'vzajv,u', 'tff', '[\"tree_images\\/tree_1770213710_6983514e66075.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770213710_6983514e66075.jpg\\\"]\"', '26.885753', '81.014339', 0, NULL, '2026-02-04 14:01:50', '2026-02-04 14:01:50'),
(64, NULL, 35, 20, 'yduf', 'T-10', '1', 'Mangifera indica', NULL, 20.00, 0.12, 0.16, 30, 'Good', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'dgdhd', 'Pvt', '5er', 'dufjf', '[\"tree_images\\/tree_1770214304_698353a03889b.jpg\",\"tree_images\\/tree_1770214304_698353a0390f6.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770214304_698353a03889b.jpg\\\",\\\"tree_images\\\\\\/tree_1770214304_698353a0390f6.jpg\\\"]\"', '26.885811', '81.014360', 0, NULL, '2026-02-04 14:11:44', '2026-02-04 14:11:44'),
(65, NULL, 35, 20, 'yduf', 'T-11', '1', 'Mangifera indica', NULL, 25.00, 0.15, 0.20, 38, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'dgdhd', 'Pvt', '5er', 'tt', '[\"tree_images\\/tree_1770214304_698353a03a1ef.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770214304_698353a03a1ef.jpg\\\"]\"', '26.885889', '81.014417', 0, NULL, '2026-02-04 14:11:44', '2026-02-04 14:11:44'),
(66, NULL, 35, 20, 'yduf', 'T-12', '4', 'Ficus religiosa', NULL, 12.00, 0.07, 0.10, 18, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'dgdhd', 'Pvt', '5er', 'ttt', '[\"tree_images\\/tree_1770214304_698353a03afe2.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770214304_698353a03afe2.jpg\\\"]\"', '26.885889', '81.014417', 0, NULL, '2026-02-04 14:11:44', '2026-02-04 14:11:44'),
(67, NULL, 35, 20, 'gxhcj', 'T-13', '1', 'Mangifera indica', NULL, 10.00, 0.06, 0.08, 15, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gxhx', 'Pvt', 'yduf', 'dur', '[\"tree_images\\/tree_1770215275_6983576bb2340.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215275_6983576bb2340.jpg\\\"]\"', '26.885849', '81.014378', 0, NULL, '2026-02-04 14:27:55', '2026-02-04 14:27:55'),
(68, NULL, 35, 20, 'gxhcj', 'T-14', '3', 'Ficus benghalensis', NULL, 55.00, 0.33, 0.44, 83, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gxhx', 'Pvt', 'yduf', 'hcuf', '[\"tree_images\\/tree_1770215275_6983576bb309b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215275_6983576bb309b.jpg\\\"]\"', '26.885849', '81.014378', 0, NULL, '2026-02-04 14:27:55', '2026-02-04 14:27:55'),
(69, NULL, 35, 20, 'gxhcj', 'T-15', '3', 'Ficus benghalensis', NULL, 8.00, 0.05, 0.06, 12, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gxhx', 'Pvt', 'yduf', 'rur', '[\"tree_images\\/tree_1770215275_6983576bb3c49.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215275_6983576bb3c49.jpg\\\"]\"', '26.885849', '81.014378', 0, NULL, '2026-02-04 14:27:55', '2026-02-04 14:27:55'),
(70, NULL, 35, 20, 'chfu', 'T-16', '2', '2', '2', 5.00, 0.03, 0.04, 8, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'ufi', 'Pvt', 'ifig', 'xhcu', '[\"tree_images\\/tree_1770215398_698357e61b2ce.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215398_698357e61b2ce.jpg\\\"]\"', '26.885793', '81.014397', 0, NULL, '2026-02-04 14:29:58', '2026-02-04 14:29:58'),
(71, NULL, 35, 20, 'hchfu', 'T-17', '1', '1', '1', 65656.00, 393.94, 525.25, 98484, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'ydu', 'Pvt', 'r', 'ydyd', '[\"tree_images\\/tree_1770215575_6983589724767.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215575_6983589724767.jpg\\\"]\"', '26.885793', '81.014397', 0, NULL, '2026-02-04 14:32:55', '2026-02-04 14:32:55'),
(72, NULL, 35, 20, 'hchfu', 'T-18', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'ydu', 'Pvt', 'r', 'e6', '[\"tree_images\\/tree_1770215575_6983589727246.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770215575_6983589727246.jpg\\\"]\"', '26.885793', '81.014397', 0, NULL, '2026-02-04 14:32:55', '2026-02-04 14:32:55'),
(73, NULL, 35, 20, 'cj', 'T-19', '2', '2', '2', 10.00, 0.06, 0.08, 15, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', '7rr7', '[\"tree_images\\/tree_1770216166_69835ae6e313c.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770216166_69835ae6e313c.jpg\\\"]\"', '26.885706', '81.014347', 0, NULL, '2026-02-04 14:42:46', '2026-02-04 14:42:46'),
(74, NULL, 35, 20, 'cj', 'T-20', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-158, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', 'tdyd', '[\"tree_images\\/tree_1770216166_69835ae6e4165.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770216166_69835ae6e4165.jpg\\\"]\"', '26.885612', '81.014282', 0, NULL, '2026-02-04 14:42:46', '2026-02-04 14:42:46'),
(75, NULL, 35, 20, 'cj', 'T-21', '2', '2', '2', 5.00, 0.03, 0.04, 8, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', '7r', '[\"tree_images\\/tree_1770216166_69835ae6e566c.jpg\",\"tree_images\\/tree_1770216166_69835ae6e5d5f.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770216166_69835ae6e566c.jpg\\\",\\\"tree_images\\\\\\/tree_1770216166_69835ae6e5d5f.jpg\\\"]\"', '26.885697', '81.014337', 0, NULL, '2026-02-04 14:42:46', '2026-02-04 14:42:46'),
(76, NULL, 35, 20, 'hxhf', 'T-22', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', '631/142, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'cjvuf', 'Pvt', 'hch', 'ufuf', '[\"tree_images\\/tree_1770216351_69835b9f30136.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770216351_69835b9f30136.jpg\\\"]\"', '26.885284', '81.013697', 0, NULL, '2026-02-04 14:45:51', '2026-02-04 14:45:51'),
(77, NULL, 35, 20, 'hxhf', 'T-23', '1', '1', '1', 49.00, 0.29, 0.39, 74, 'Good', '5600, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'cjvuf', 'Pvt', 'hch', 'ehe', '[\"tree_images\\/tree_1770216351_69835b9f3249a.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770216351_69835b9f3249a.jpg\\\"]\"', '26.885384', '81.013708', 0, NULL, '2026-02-04 14:45:51', '2026-02-04 14:45:51'),
(78, NULL, 35, 20, 'cj', 'T-19', '2', '2', '2', 10.00, 0.06, 0.08, 15, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', '7rr7', '[\"tree_images\\/tree_1770217304_69835f58166e3.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770217304_69835f58166e3.jpg\\\"]\"', '26.885706', '81.014347', 0, NULL, '2026-02-04 15:01:44', '2026-02-04 15:01:44'),
(79, NULL, 35, 20, 'cj', 'T-20', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-158, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', 'tdyd', '[\"tree_images\\/tree_1770217304_69835f581794b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770217304_69835f581794b.jpg\\\"]\"', '26.885612', '81.014282', 0, NULL, '2026-02-04 15:01:44', '2026-02-04 15:01:44'),
(80, NULL, 35, 20, 'cj', 'T-21', '2', '2', '2', 5.00, 0.03, 0.04, 8, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'fuf', '7r', '[\"tree_images\\/tree_1770217304_69835f581a3d7.jpg\",\"tree_images\\/tree_1770217304_69835f581acc8.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770217304_69835f581a3d7.jpg\\\",\\\"tree_images\\\\\\/tree_1770217304_69835f581acc8.jpg\\\"]\"', '26.885697', '81.014337', 0, NULL, '2026-02-04 15:01:44', '2026-02-04 15:01:44'),
(81, NULL, 35, 20, 'chc', 'T-27', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yf6', 'Pvt', '5ycuf', 'txyxt', '[\"tree_images\\/tree_1770217801_69836149911a5.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770217801_69836149911a5.jpg\\\"]\"', '26.885713', '81.014278', 0, NULL, '2026-02-04 15:10:01', '2026-02-04 15:10:01'),
(82, NULL, 35, 20, 'chc', 'T-28', '2', '2', '2', 48.00, 0.29, 0.38, 72, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yf6', 'Pvt', '5ycuf', 'wjw', '[\"tree_images\\/tree_1770217801_6983614993054.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770217801_6983614993054.jpg\\\"]\"', '26.885713', '81.014278', 0, NULL, '2026-02-04 15:10:01', '2026-02-04 15:10:01'),
(83, NULL, 35, 20, 'ubig8', 'T-29', '4', '4', '4', 55.00, 0.33, 0.44, 83, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'cf', 'Pvt', 't5', '55', '[\"tree_images\\/tree_1770218195_698362d381509.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770218195_698362d381509.jpg\\\"]\"', '26.885668', '81.014307', 0, NULL, '2026-02-04 15:16:35', '2026-02-04 15:16:35'),
(84, NULL, 35, 20, 'ubig8', 'T-30', '5', '5', '5', 20.00, 0.12, 0.16, 30, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'cf', 'Pvt', 't5', 'vgg', '[\"tree_images\\/tree_1770218195_698362d3826b4.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770218195_698362d3826b4.jpg\\\"]\"', '26.885774', '81.014298', 0, NULL, '2026-02-04 15:16:35', '2026-02-04 15:16:35'),
(85, NULL, 35, 20, 'uvuv', 'T-31', '4', '4', '4', 85.00, 0.51, 0.68, 128, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', NULL, 'Pvt', 'ft', 'ty', '[\"tree_images\\/tree_1770218348_6983636c4ea86.jpg\",\"tree_images\\/tree_1770218348_6983636c50027.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770218348_6983636c4ea86.jpg\\\",\\\"tree_images\\\\\\/tree_1770218348_6983636c50027.jpg\\\"]\"', '26.885692', '81.014253', 0, NULL, '2026-02-04 15:19:08', '2026-02-04 15:19:08'),
(86, NULL, 35, 20, 'uvuv', 'T-32', '4', '4', '4', 12.00, 0.07, 0.10, 18, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'aga', 'Pvt', 'ft', 'avag', '[\"tree_images\\/tree_1770218348_6983636c5744e.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770218348_6983636c5744e.jpg\\\"]\"', '26.885778', '81.014292', 0, NULL, '2026-02-04 15:19:08', '2026-02-04 15:19:08'),
(87, NULL, 35, 20, 'uvuv', 'T-33', '6', '6', '6', 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'aga', 'Pvt', 'ft', 'whhw', '[\"tree_images\\/tree_1770218348_6983636c59d8c.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770218348_6983636c59d8c.jpg\\\"]\"', '26.885683', '81.014242', 0, NULL, '2026-02-04 15:19:08', '2026-02-04 15:19:08'),
(88, NULL, 35, 20, '12', 'T-34', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', '14', 'Pvt', 'ty', 't', '[\"tree_images\\/tree_1770225310_69837e9e603dc.jpg\",\"tree_images\\/tree_1770225310_69837e9e6246b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770225310_69837e9e603dc.jpg\\\",\\\"tree_images\\\\\\/tree_1770225310_69837e9e6246b.jpg\\\"]\"', '26.885742', '81.014308', 0, NULL, '2026-02-04 17:15:10', '2026-02-04 17:15:10'),
(89, NULL, 35, 20, '12', 'T-35', '4', '4', '4', 12.00, 0.07, 0.10, 18, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', '14', 'Pvt', 'ty', '2g2g', '[\"tree_images\\/tree_1770225310_69837e9e656cf.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770225310_69837e9e656cf.jpg\\\"]\"', '26.885742', '81.014308', 0, NULL, '2026-02-04 17:15:10', '2026-02-04 17:15:10'),
(90, NULL, 35, 20, 'ee3', 'T-36', '1', '1', '1', 10.00, 0.06, 0.08, 15, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'fd', 'Pvt', 'e3', 'ee', '[\"tree_images\\/tree_1770226386_698382d2ed87d.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226386_698382d2ed87d.jpg\\\"]\"', '26.885685', '81.014358', 0, NULL, '2026-02-04 17:33:06', '2026-02-04 17:33:06'),
(91, NULL, 35, 20, 'ee3', 'T-37', '4', '4', '4', 10.00, 0.06, 0.08, 15, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'fd', 'Pvt', 'e3', 'ee', '[\"tree_images\\/tree_1770226386_698382d2f17f6.jpg\",\"tree_images\\/tree_1770226386_698382d2f3479.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226386_698382d2f17f6.jpg\\\",\\\"tree_images\\\\\\/tree_1770226386_698382d2f3479.jpg\\\"]\"', '26.885685', '81.014358', 1, NULL, '2026-02-04 17:33:07', '2026-02-05 11:06:08'),
(92, NULL, 35, 20, 'ee3', 'T-38', '4', '4', '4', 112.00, 0.67, 0.90, 168, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'fd', 'Pvt', 'e3', 're4', '[\"tree_images\\/tree_1770226387_698382d307a04.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226387_698382d307a04.jpg\\\"]\"', '26.885685', '81.014358', 1, NULL, '2026-02-04 17:33:07', '2026-02-05 11:06:08'),
(93, NULL, 35, 20, 'csx', 'T-39', '1', '1', '1', 10.00, 0.06, 0.08, 15, 'Good', 'D-157A, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'de', 'Pvt', 'ee3', 'ee', '[\"tree_images\\/tree_1770226601_698383a966070.jpg\",\"tree_images\\/tree_1770226601_698383a967538.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226601_698383a966070.jpg\\\",\\\"tree_images\\\\\\/tree_1770226601_698383a967538.jpg\\\"]\"', '26.885550', '81.014301', 1, NULL, '2026-02-04 17:36:41', '2026-02-04 17:37:25'),
(94, NULL, 35, 20, 'csx', 'T-40', '1', '1', '1', 25.00, 0.15, 0.20, 38, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'de', 'Pvt', 'ee3', 'eee', '[\"tree_images\\/tree_1770226601_698383a96a50d.jpg\",\"tree_images\\/tree_1770226601_698383a96b9ee.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226601_698383a96a50d.jpg\\\",\\\"tree_images\\\\\\/tree_1770226601_698383a96b9ee.jpg\\\"]\"', '26.885687', '81.014295', 1, NULL, '2026-02-04 17:36:41', '2026-02-04 17:37:25'),
(95, NULL, 35, 20, 'csx', 'T-41', '1', '1', '1', 22.00, 0.13, 0.18, 33, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'de', 'Pvt', 'ee3', 'ee', '[\"tree_images\\/tree_1770226601_698383a96de59.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770226601_698383a96de59.jpg\\\"]\"', '26.885687', '81.014295', 1, NULL, '2026-02-04 17:36:41', '2026-02-05 08:01:45'),
(96, NULL, 36, 21, '12', 'T-2', '3', '3', '3', 12.00, 0.07, 0.10, 18, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'vzvzbsbvsbsb', 'Pvt', 'bsbsbs', 'hzhshz', '[\"tree_images\\/tree_1770277946_69844c3abb608.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770277946_69844c3abb608.jpg\\\"]\"', '19.275533', '72.880706', 1, NULL, '2026-02-05 07:52:26', '2026-02-05 07:57:53'),
(97, NULL, 36, 21, '12', 'T-3', '3', '3', '3', 50.00, 0.30, 0.40, 75, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'vzvzbsbvsbsb', 'Pvt', 'bsbsbs', 'bzbsbhs', '[\"tree_images\\/tree_1770277946_69844c3abe9e5.jpg\",\"tree_images\\/tree_1770277946_69844c3abff1b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770277946_69844c3abe9e5.jpg\\\",\\\"tree_images\\\\\\/tree_1770277946_69844c3abff1b.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:52:26', '2026-02-05 07:57:53'),
(98, NULL, 36, 21, '12', 'T-4', '3', '3', '3', 875.00, 5.25, 7.00, 1313, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'vzvzbsbvsbsb', 'Pvt', 'bsbsbs', 'vzvzbsbsb', '[\"tree_images\\/tree_1770277946_69844c3ac20aa.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770277946_69844c3ac20aa.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:52:26', '2026-02-05 07:57:53'),
(99, NULL, 36, 21, '12', 'T-5', '3', '3', '3', 94.00, 0.56, 0.75, 141, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'vzvzbsbvsbsbhzhz', 'Pvt', 'bsbsbs', 'zggzhzhz', '[\"tree_images\\/tree_1770277946_69844c3ac48c3.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770277946_69844c3ac48c3.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:52:26', '2026-02-05 07:57:53'),
(100, NULL, 36, 21, '45', 'T-6', '6', '6', '6', 58.00, 0.35, 0.46, 879, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'chjkk', 'Pvt', 'fghhh', 'ghhj', '[\"tree_images\\/tree_1770278239_69844d5f6983a.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770278239_69844d5f6983a.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:57:19', '2026-02-05 07:59:59'),
(101, NULL, 36, 21, '45', 'T-7', '6', '6', '6', 20.00, 0.12, 0.16, 30, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'chjkk', 'Pvt', 'fghhh', 'hshshw', '[\"tree_images\\/tree_1770278239_69844d5f6cddb.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770278239_69844d5f6cddb.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:57:19', '2026-02-05 07:59:59'),
(102, NULL, 36, 21, '45', 'T-8', '6', '6', '6', 25.00, 0.15, 0.20, 38, 'Good', '82, Mira Road East, Mira Bhayandar, Maharashtra, 401107, India', 'chjkk', 'Pvt', 'fghhh', NULL, '[\"tree_images\\/tree_1770278239_69844d5f71a77.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770278239_69844d5f71a77.jpg\\\"]\"', '19.275499', '72.880769', 1, NULL, '2026-02-05 07:57:19', '2026-02-05 07:59:59'),
(103, NULL, 35, 20, 'yfug', 'T-42', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Medium', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 't', 'Pvt', 'yr7r', 'rt', '[\"tree_images\\/tree_1770290480_69847d308ab08.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770290480_69847d308ab08.jpg\\\"]\"', '26.885721', '81.014336', 0, NULL, '2026-02-05 11:21:20', '2026-02-05 11:21:20'),
(104, NULL, 35, 20, 'yfug', 'T-43', '3', '3', '3', 20.00, 0.12, 0.16, 30, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 't', 'Pvt', 'yr7r', 'gtt', '[\"tree_images\\/tree_1770290480_69847d308bb38.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770290480_69847d308bb38.jpg\\\"]\"', '26.885721', '81.014336', 0, NULL, '2026-02-05 11:21:20', '2026-02-05 11:21:20'),
(105, NULL, 35, 20, 'zbbs', 'T-44', '5', '5', '5', 10.00, 0.06, 0.08, 15, 'Good', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'w wbebeb', 'Pvt', 'sbeb', 'b2nw', '[\"tree_images\\/tree_1770295276_69848fecc18c2.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770295276_69848fecc18c2.jpg\\\"]\"', '26.885763', '81.014382', 0, NULL, '2026-02-05 12:41:16', '2026-02-05 12:41:16'),
(106, NULL, 35, 20, 'ydhf', 'T-45', '2', '2', '2', 10.00, 0.06, 0.08, 1565, 'Good', 'D-161, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yr6', 'Pvt', 'fu', 'fut', '[\"tree_images\\/tree_1770295804_698491fcae713.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770295804_698491fcae713.jpg\\\"]\"', '26.885804', '81.014358', 0, NULL, '2026-02-05 12:50:04', '2026-02-05 12:50:04'),
(107, NULL, 35, 20, 'ydhf', 'T-46', '2', '2', '2', 18.00, 0.11, 0.14, 27, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yr6', 'Pvt', 'fhhu', 'haha', '[\"tree_images\\/tree_1770295804_698491fcafb8a.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770295804_698491fcafb8a.jpg\\\"]\"', '26.885735', '81.014290', 0, NULL, '2026-02-05 12:50:04', '2026-02-05 12:50:04'),
(108, NULL, 35, 20, 'xhfuf', 'T-47', '1', '1', '1', 10.00, 0.06, 0.08, 15, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gzgx', 'Pvt', 'tste', 'yfur', '[\"tree_images\\/tree_1770296073_698493098243d.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296073_698493098243d.jpg\\\"]\"', '26.885753', '81.014279', 0, NULL, '2026-02-05 12:54:33', '2026-02-05 12:54:33'),
(109, NULL, 35, 20, 'xhfuf', 'T-48', '1', '1', '1', 25.00, 0.15, 0.20, 38, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gzgx', 'Pvt', 'tste', 'cff', '[\"tree_images\\/tree_1770296073_69849309837cf.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296073_69849309837cf.jpg\\\"]\"', '26.885753', '81.014279', 0, NULL, '2026-02-05 12:54:33', '2026-02-05 12:54:33'),
(110, NULL, 35, 20, 'xhfuf', 'T-49', '1', '1', '1', 25.00, 0.15, 0.20, 38, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'gzgx', 'Pvt', 'tste', 'rrr', '[\"tree_images\\/tree_1770296073_6984930984922.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296073_6984930984922.jpg\\\"]\"', '26.885753', '81.014279', 0, NULL, '2026-02-05 12:54:33', '2026-02-05 12:54:33'),
(111, NULL, 35, 20, '4r7', 'T-50', '2', '2', '2', 10.00, 0.06, 0.08, 15, 'Good', '27, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'ufu', 'Pvt', 'yrr', 'yfur', '[\"tree_images\\/tree_1770296230_698493a69f12f.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296230_698493a69f12f.jpg\\\"]\"', '26.885893', '81.014231', 0, NULL, '2026-02-05 12:57:10', '2026-02-05 12:57:10'),
(112, NULL, 35, 20, '4r7', 'T-51', '2', '2', '2', 20.00, 0.12, 0.16, 30, 'Good', '27, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'ufu', 'Pvt', 'yrr', 'yfud', '[\"tree_images\\/tree_1770296230_698493a6a01a6.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296230_698493a6a01a6.jpg\\\"]\"', '26.885893', '81.014231', 0, NULL, '2026-02-05 12:57:10', '2026-02-05 12:57:10'),
(113, NULL, 35, 20, 'syer', 'T-52', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yeyry', 'Pvt', '4', '7', '[\"tree_images\\/tree_1770296607_6984951f0fe47.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296607_6984951f0fe47.jpg\\\"]\"', '26.885744', '81.014321', 0, NULL, '2026-02-05 13:03:27', '2026-02-05 13:03:27'),
(114, NULL, 35, 20, 'syer', 'T-53', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yeyry', 'Pvt', '4', 'ufug', '[\"tree_images\\/tree_1770296607_6984951f112c7.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296607_6984951f112c7.jpg\\\"]\"', '26.885744', '81.014321', 0, NULL, '2026-02-05 13:03:27', '2026-02-05 13:03:27'),
(115, NULL, 35, 20, 'syer', 'T-54', '2', '2', '2', 55.00, 0.33, 0.44, 83, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yeyry', 'Pvt', '4tt', 'yd6r', '[\"tree_images\\/tree_1770296607_6984951f12536.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296607_6984951f12536.jpg\\\"]\"', '26.885744', '81.014321', 0, NULL, '2026-02-05 13:03:27', '2026-02-05 13:03:27'),
(116, NULL, 35, 20, 'syer', 'T-55', '2', '2', '2', 5.00, 0.03, 0.04, 8, 'Good', 'D-160, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yeyry', 'Pvt', '4tt', 't', '[\"tree_images\\/tree_1770296607_6984951f135b8.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296607_6984951f135b8.jpg\\\"]\"', '26.885744', '81.014321', 0, NULL, '2026-02-05 13:03:27', '2026-02-05 13:03:27'),
(117, NULL, 35, 20, 'syer', 'T-56', '2', '2', '2', 5.00, 0.03, 0.04, 8, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'yeyry', 'Pvt', '4tt', 'cchch', '[\"tree_images\\/tree_1770296607_6984951f1468d.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770296607_6984951f1468d.jpg\\\"]\"', '26.885841', '81.014298', 0, NULL, '2026-02-05 13:03:27', '2026-02-05 13:03:27'),
(118, NULL, 33, 19, '1', 'T-2', '2', '2', '2', 65.00, 0.39, 0.52, 98, 'Good', 'Tower-6, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nkkesh Desai', NULL, '[\"tree_images\\/tree_1770310708_6984cc34ce2c2.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770310708_6984cc34ce2c2.jpg\\\"]\"', '18.981262', '73.120411', 0, NULL, '2026-02-05 16:58:28', '2026-02-05 16:58:28'),
(119, NULL, 33, 19, '102', 'T-3', '14', '14', '14', 85.00, 0.51, 0.68, 128, 'Good', 'Tower-6, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej', 'Pvt', 'Niksh', NULL, '[\"tree_images\\/tree_1770310840_6984ccb8bc2a1.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770310840_6984ccb8bc2a1.jpg\\\"]\"', '18.981390', '73.120516', 0, NULL, '2026-02-05 17:00:40', '2026-02-05 17:00:40'),
(120, NULL, 33, 19, '102', 'T-4', '14', '14', '14', 58.00, 0.35, 0.46, 87, 'Good', 'Tower-6, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej', 'Pvt', 'Niksh', NULL, '[\"tree_images\\/tree_1770310840_6984ccb8bee72.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770310840_6984ccb8bee72.jpg\\\"]\"', '18.981306', '73.120444', 0, NULL, '2026-02-05 17:00:40', '2026-02-05 17:00:40'),
(121, NULL, 33, 19, '102', 'T-5', '14', '14', '14', 58.00, 0.35, 0.46, 87, 'Good', 'Tower-6, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej', 'Pvt', 'Niksh', NULL, '[\"tree_images\\/tree_1770310840_6984ccb8c18c9.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770310840_6984ccb8c18c9.jpg\\\"]\"', '18.981369', '73.120523', 0, NULL, '2026-02-05 17:00:40', '2026-02-05 17:00:40'),
(122, NULL, 41, 20, 'fufug', 'T-1', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'uvi', 'Pvt', 'g7t', 'f7', '[\"tree_images\\/tree_1770440272_6986c650ea8cc.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770440272_6986c650ea8cc.jpg\\\"]\"', '26.885804', '81.014412', 1, NULL, '2026-02-07 04:57:52', '2026-02-07 04:59:35'),
(123, NULL, 40, 19, '1', 'T-1', '17', '17', '17', 100.00, 0.60, 0.80, 150, 'Good', 'Shop no 1019 & 1020, Thane West, Thane, Maharashtra, 400607, India', 'New', 'Pvt', NULL, NULL, '[\"tree_images\\/tree_1770575078_6988d4e6df1e7.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770575078_6988d4e6df1e7.jpg\\\"]\"', '19.255851', '72.984483', 1, NULL, '2026-02-08 18:24:38', '2026-02-17 17:02:34'),
(124, NULL, 41, 20, '13', 'T-2', '1', '1', '1', 10.00, 0.06, 0.08, 15, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'xyf', 'Pvt', 'ter', 'dydu', '[\"tree_images\\/tree_1770633949_6989baddbb7c4.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770633949_6989baddbb7c4.jpg\\\"]\"', '26.885745', '81.014255', 0, NULL, '2026-02-09 10:45:49', '2026-02-09 10:45:49'),
(125, NULL, 41, 20, '13', 'T-3', '1', '1', '1', 20.00, 0.12, 0.16, 30, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'xyf', 'Pvt', 'ter', 'yyw', '[\"tree_images\\/tree_1770633949_6989baddbcaf0.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770633949_6989baddbcaf0.jpg\\\"]\"', '26.885745', '81.014255', 0, NULL, '2026-02-09 10:45:49', '2026-02-09 10:45:49'),
(126, NULL, 41, 20, '13', 'T-4', '1', '1', '1', 14.00, 0.08, 0.11, 21, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'xyf', 'Pvt', 'ter', 'wtt', '[\"tree_images\\/tree_1770633949_6989baddbd9ad.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770633949_6989baddbd9ad.jpg\\\"]\"', '26.885745', '81.014255', 0, NULL, '2026-02-09 10:45:49', '2026-02-09 10:45:49'),
(127, NULL, 41, 20, 'edyf', 'T-5', '2', '2', '2', 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'ufit', 'Pvt', '6r7', '6rt8', '[\"tree_images\\/tree_1770634300_6989bc3c100ba.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770634300_6989bc3c100ba.jpg\\\"]\"', '26.885766', '81.014249', 0, NULL, '2026-02-09 10:51:40', '2026-02-09 10:51:40'),
(128, NULL, 41, 20, 'edyf', 'T-6', '2', '2', '2', NULL, NULL, NULL, NULL, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'ufit', 'Pvt', '6r7', NULL, '[]', NULL, '\"[]\"', '26.885766', '81.014249', 0, NULL, '2026-02-09 10:51:40', '2026-02-09 10:51:40'),
(129, NULL, 41, 20, 'hwhw', 'T-7', '4', '4', '4', 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'atw', 'Pvt', 'twtw', 'tww', '[\"tree_images\\/tree_1770634351_6989bc6f9fa5d.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770634351_6989bc6f9fa5d.jpg\\\"]\"', '26.885766', '81.014249', 0, NULL, '2026-02-09 10:52:31', '2026-02-09 10:52:31'),
(130, NULL, 41, 20, 'hshs', 'T-8', '1', '1', '1', 161.00, 0.97, 1.29, 242, 'Disease', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'vssv', 'Pvt', 'gwg', 'vsgs', '[\"tree_images\\/tree_1770634500_6989bd0471772.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770634500_6989bd0471772.jpg\\\"]\"', '26.885766', '81.014249', 0, NULL, '2026-02-09 10:55:00', '2026-02-09 10:55:00'),
(131, NULL, 41, 20, 'hshs', 'T-9', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', 'D 159, Indira Nagar, Lucknow, Uttar Pradesh, 226016, India', 'vssv', 'Pvt', 'gwg', 'wttw', '[\"tree_images\\/tree_1770634500_6989bd04726fc.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770634500_6989bd04726fc.jpg\\\"]\"', '26.885725', '81.014342', 0, NULL, '2026-02-09 10:55:00', '2026-02-09 10:55:00'),
(132, NULL, 41, 20, 'hshs', 'T-10', '1', '1', '1', 12.00, 0.07, 0.10, 18, 'Good', 'D-159, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'vssv', 'Pvt', 'gwg', 'why', '[\"tree_images\\/tree_1770634500_6989bd047361b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1770634500_6989bd047361b.jpg\\\"]\"', '26.885749', '81.014243', 0, NULL, '2026-02-09 10:55:00', '2026-02-09 10:55:00'),
(133, NULL, 40, 19, '12', 'T-2', '1', '1', '1', 100.00, 0.60, 0.80, 150, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nikesh', NULL, '[\"tree_images\\/tree_1771383655_69952b671ba78.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1771383655_69952b671ba78.jpg\\\"]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:00:55', '2026-02-18 03:02:46'),
(134, NULL, 40, 19, '12', 'T-3', '1', '1', '1', 25.00, 0.15, 0.20, 38, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nikesh', NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:00:55', '2026-02-18 03:02:46'),
(135, NULL, 40, 19, '12', 'T-4', '1', '1', '1', 55.00, 0.33, 0.44, 83, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nikesh', NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:00:55', '2026-02-18 03:02:46'),
(136, NULL, 40, 19, '12', 'T-5', '1', '1', '1', 55.00, 0.33, 0.44, 83, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', 'Godrej Sky Garden', 'Pvt', 'Nikesh', NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:00:55', '2026-02-18 03:02:46'),
(137, NULL, 40, 19, '12', 'T-6', '3', '3', '3', 100.00, 0.60, 0.80, 150, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', NULL, 'Pvt', NULL, NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:01:59', '2026-02-18 03:02:46'),
(138, NULL, 40, 19, '12', 'T-7', '3', '3', '3', 100.00, 0.60, 0.80, 150, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', NULL, 'Pvt', NULL, NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:01:59', '2026-02-18 03:02:46'),
(139, NULL, 40, 19, '12', 'T-8', '3', '3', '3', 100.00, 0.60, 0.80, 150, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', NULL, 'Pvt', NULL, NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:01:59', '2026-02-18 03:02:46'),
(140, NULL, 40, 19, '12', 'T-9', '3', '3', '3', 500.00, 3.00, 4.00, 750, 'Good', 'Tower-4, Panvel, Navi Mumbai, Maharashtra, 410206, India', NULL, 'Pvt', NULL, NULL, '[]', NULL, '\"[]\"', '18.981723', '73.121568', 1, NULL, '2026-02-18 03:01:59', '2026-02-18 03:02:46'),
(141, NULL, 41, 20, '3', '11', '2', '2', '2', 12.00, 0.23, 0.33, 18, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'aei', 'sdfg', '[\"tree_images\\/tree_1772003663_699ea14fd4e8b.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1772003663_699ea14fd4e8b.jpg\\\"]\"', '26.885851', '81.014373', 0, NULL, '2026-02-25 07:14:23', '2026-02-25 07:14:23'),
(142, NULL, 41, 20, '3', '12', '2', '2', '2', 60.00, 1.18, 1.57, 90, 'Good', 'D-161B, Kamta, Lucknow, Uttar Pradesh, 226016, India', 'lko', 'Pvt', 'aei', 'ywywyw', '[\"tree_images\\/tree_1772003663_699ea14fd63be.jpg\"]', NULL, '\"[\\\"tree_images\\\\\\/tree_1772003663_699ea14fd63be.jpg\\\"]\"', '26.885851', '81.014373', 0, NULL, '2026-02-25 07:14:23', '2026-02-25 07:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'test', 'hgfyuyjjhjhjh', '2025-10-24 02:44:23', '2025-10-24 02:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('digiempsachin@gmail.com', '300793', '2026-02-04 06:32:48');

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
(3, 'project', 'web', NULL, NULL),
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
(38, 'project.create', 'web', NULL, NULL),
(39, 'project.store', 'web', NULL, NULL),
(40, 'project.list', 'web', NULL, NULL),
(41, 'project.edit', 'web', NULL, NULL),
(42, 'project.update', 'web', NULL, NULL),
(43, 'project.delete', 'web', NULL, NULL),
(44, 'other', 'web', NULL, NULL),
(45, 'other.user-ratings.update', 'web', NULL, NULL),
(46, 'other.rate.app', 'web', NULL, NULL),
(47, 'other.faqs', 'web', NULL, NULL),
(48, 'other.videos', 'web', NULL, NULL),
(49, 'other.contacts', 'web', NULL, NULL),
(50, 'other.notes', 'web', NULL, NULL),
(51, 'other.privacy', 'web', NULL, NULL),
(52, 'other.privacy.print', 'web', NULL, NULL),
(53, 'map', 'web', NULL, NULL),
(54, 'master', 'web', NULL, NULL),
(55, 'tree_data', 'web', NULL, NULL);

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
(1, 'App\\Models\\User', 1, 'auth_token', '6ddf814db4cb3e3660d617d95d7046e314a8773454fc4b26756b489a559aee38', '[\"*\"]', '2026-02-05 11:40:09', NULL, '2025-10-23 21:48:30', '2026-02-05 11:40:09'),
(2, 'App\\Models\\User', 1, 'auth_token', '858efd19a484f52aaac464212be45ed37ec6211734031523d0f986784e8ad790', '[\"*\"]', NULL, NULL, '2025-10-26 21:20:04', '2025-10-26 21:20:04'),
(3, 'App\\Models\\User', 1, 'auth_token', 'e596fbc51e502191ad8e6333657c25881f312d1467f4fd4bed0c535b464ebf4a', '[\"*\"]', NULL, NULL, '2025-10-30 23:47:24', '2025-10-30 23:47:24'),
(4, 'App\\Models\\User', 1, 'auth_token', 'd79e2e0b74534087b39ab6b7a10070f9493cd720b7aaed1e8f7072394de8e206', '[\"*\"]', '2026-02-03 14:04:24', NULL, '2025-11-01 00:27:20', '2026-02-03 14:04:24'),
(5, 'App\\Models\\User', 1, 'auth_token', '3c96bf859ef725cbf3f753fec7a64bcdf51f409bbd25514c371bb042be8a0819', '[\"*\"]', NULL, NULL, '2025-11-02 04:18:14', '2025-11-02 04:18:14'),
(6, 'App\\Models\\User', 1, 'auth_token', '1dd2ea2d61ad33369e7ee3eea06a12678e1ddab60ce097c5e47a98295c4cc114', '[\"*\"]', NULL, NULL, '2025-12-19 04:44:59', '2025-12-19 04:44:59'),
(7, 'App\\Models\\User', 1, 'auth_token', 'a4032fa74b8b12bcd74726ed09dbd2889bb76ee04801f0caa25866c8381c4316', '[\"*\"]', NULL, NULL, '2025-12-19 07:44:24', '2025-12-19 07:44:24'),
(8, 'App\\Models\\User', 8, 'auth_token', '20d2aec7fbed3386c95049f94440fa31a79fb237493ca05cf28a5820160f3fa0', '[\"*\"]', '2026-01-23 08:13:24', NULL, '2026-01-23 08:13:23', '2026-01-23 08:13:24'),
(9, 'App\\Models\\User', 1, 'auth_token', 'd61a9353fd2fd160000015c526350ac764b924d8f4cc75f660bdcc5dda32dbae', '[\"*\"]', '2026-01-23 08:42:12', NULL, '2026-01-23 08:39:25', '2026-01-23 08:42:12'),
(10, 'App\\Models\\User', 8, 'auth_token', 'a7d0f67f7415140b87d62139ec56b590c10e18fd58348f808b17cce5173044cd', '[\"*\"]', '2026-01-23 12:09:56', NULL, '2026-01-23 08:43:03', '2026-01-23 12:09:56'),
(11, 'App\\Models\\User', 8, 'auth_token', 'dfaeea6f3115722e8b1c0cbc9cd70b6a5b56bb3f4127e8c2646e701a21c7c8be', '[\"*\"]', '2026-01-31 09:44:58', NULL, '2026-01-23 10:28:50', '2026-01-31 09:44:58'),
(12, 'App\\Models\\User', 8, 'auth_token', '5cc22f1240b41e3126c5b45460dead9a7096d95f948d6d598a70d0d6423ad54a', '[\"*\"]', '2026-01-23 14:15:30', NULL, '2026-01-23 12:12:11', '2026-01-23 14:15:30'),
(13, 'App\\Models\\User', 8, 'auth_token', '15571824ae756a44a3bff770e19753192f1e703503dde0bbd1cf40e7b6086cd5', '[\"*\"]', '2026-01-27 03:54:20', NULL, '2026-01-23 18:22:38', '2026-01-27 03:54:20'),
(14, 'App\\Models\\User', 8, 'auth_token', 'c7f3c2d20c977cf4eba53105bff3c1806873b44cacb17a1a1aebe505e08eb8d7', '[\"*\"]', '2026-01-28 18:45:47', NULL, '2026-01-24 02:26:50', '2026-01-28 18:45:47'),
(15, 'App\\Models\\User', 8, 'auth_token', '0dbfece8d19b4e94ad91de8a0e98363f9e5bb06aa23305e96b6085cddeaf7684', '[\"*\"]', NULL, NULL, '2026-01-27 06:48:11', '2026-01-27 06:48:11'),
(16, 'App\\Models\\User', 1, 'auth_token', 'f254b5b52dc63dd44f0e2cb2e8a6a2ad426a2ada9c9c2acf5f735410965e2669', '[\"*\"]', NULL, NULL, '2026-01-30 11:53:35', '2026-01-30 11:53:35'),
(17, 'App\\Models\\User', 10, 'auth_token', 'ea9624cd71d6bee6a62b88e0566077f2f13d1a27f5b360d226cec98ebb22779a', '[\"*\"]', NULL, NULL, '2026-01-31 06:12:13', '2026-01-31 06:12:13'),
(18, 'App\\Models\\User', 10, 'auth_token', '65cdb56b1c377af525c0b23451763d600bc82dc7022aab9622a677c484b82607', '[\"*\"]', NULL, NULL, '2026-01-31 06:13:05', '2026-01-31 06:13:05'),
(19, 'App\\Models\\User', 2, 'auth_token', '575856d808a0d34a1ba9223bc8e3df575b63208dbcaf9eddc019e2e646cc7b3d', '[\"*\"]', NULL, NULL, '2026-01-31 06:24:22', '2026-01-31 06:24:22'),
(20, 'App\\Models\\User', 10, 'auth_token', '028cbef0b86bd41dbe1bc9e74b92250f1a6753ae6e829528df1f083d70fe9ca0', '[\"*\"]', NULL, NULL, '2026-01-31 06:26:05', '2026-01-31 06:26:05'),
(21, 'App\\Models\\User', 10, 'auth_token', 'e413a0ea88111eb31534a1d982ab42284f0d0b3d4bb3966fe5b5554ffffb8472', '[\"*\"]', NULL, NULL, '2026-01-31 06:26:23', '2026-01-31 06:26:23'),
(22, 'App\\Models\\User', 2, 'auth_token', 'b40dfadf66397b220ce945b4167ca256d1308e5afa1267c7304732f670005762', '[\"*\"]', NULL, NULL, '2026-01-31 06:38:43', '2026-01-31 06:38:43'),
(23, 'App\\Models\\User', 10, 'auth_token', 'b51b4003f881d8e3abae686b4c32d438c2a30d9402b27973956b78df9459de36', '[\"*\"]', NULL, NULL, '2026-01-31 06:44:01', '2026-01-31 06:44:01'),
(24, 'App\\Models\\User', 10, 'auth_token', 'f7956cb15cd1e170dd5d82dedee4f719d49ca9c518749076c3104f1cf4f19de4', '[\"*\"]', NULL, NULL, '2026-01-31 06:44:16', '2026-01-31 06:44:16'),
(25, 'App\\Models\\User', 10, 'auth_token', 'b7993cdf490e09a06e7d5a87bc533e1f2a2e0727cd59980c2c23a565e50c54c0', '[\"*\"]', NULL, NULL, '2026-01-31 06:44:30', '2026-01-31 06:44:30'),
(26, 'App\\Models\\User', 10, 'auth_token', '818933ae830f4a4e1ce28b727bb85f4c56a8f765fa5e0535fd193a9e14a629c1', '[\"*\"]', NULL, NULL, '2026-01-31 06:44:44', '2026-01-31 06:44:44'),
(28, 'App\\Models\\User', 11, 'auth_token', 'a61339824e3593eff7937d70747c9773a5d96dc3b649114f3b8ff785067aa459', '[\"*\"]', NULL, NULL, '2026-01-31 06:49:48', '2026-01-31 06:49:48'),
(29, 'App\\Models\\User', 11, 'auth_token', 'eab178db803d395aa5e6e1bf31f0027203c116c28100e2d4d8062cf8840a0c61', '[\"*\"]', NULL, NULL, '2026-01-31 06:50:01', '2026-01-31 06:50:01'),
(30, 'App\\Models\\User', 12, 'auth_token', 'c7dba7c6bbbf2197a43c29605ca08a2686861162717d011e5b2ed9b24e34cda4', '[\"*\"]', NULL, NULL, '2026-01-31 06:57:40', '2026-01-31 06:57:40'),
(31, 'App\\Models\\User', 13, 'auth_token', '543777509517ba10d5750f927e015ac27210143de4f030626c039347c2c396a2', '[\"*\"]', NULL, NULL, '2026-01-31 07:09:33', '2026-01-31 07:09:33'),
(32, 'App\\Models\\User', 13, 'auth_token', '7047b6457106c91b6e76ba9243fd2cfcdd19a9c6878b84e3932efa7a05d537af', '[\"*\"]', NULL, NULL, '2026-01-31 07:09:46', '2026-01-31 07:09:46'),
(33, 'App\\Models\\User', 13, 'auth_token', '2f2ebbb79ce8b9b6c25a51612a9d7b8a70bea5fd69a0677d95d3fabcd6b12b73', '[\"*\"]', '2026-01-31 07:24:20', NULL, '2026-01-31 07:10:26', '2026-01-31 07:24:20'),
(34, 'App\\Models\\User', 13, 'auth_token', '8ce4e0455d70016bc862c704a63880ffd7545d7616b7db4e9d126a464fe02aff', '[\"*\"]', NULL, NULL, '2026-01-31 07:17:51', '2026-01-31 07:17:51'),
(35, 'App\\Models\\User', 13, 'auth_token', '8270169467446711c5941dd7ca32ee51d5c6d1cac74a83d52ef3aff017392932', '[\"*\"]', NULL, NULL, '2026-01-31 07:18:05', '2026-01-31 07:18:05'),
(36, 'App\\Models\\User', 13, 'auth_token', '0834f4ecd2e361951196215159afb12097fdab4bd72922f48753ac37be368224', '[\"*\"]', NULL, NULL, '2026-01-31 07:18:53', '2026-01-31 07:18:53'),
(37, 'App\\Models\\User', 14, 'auth_token', 'a07aa3318c92a40556dbf4cd151065ad122f9cf32f3c5a7531114be0c954da83', '[\"*\"]', NULL, NULL, '2026-01-31 07:27:58', '2026-01-31 07:27:58'),
(38, 'App\\Models\\User', 14, 'auth_token', '35f57fbb11cac91405a26fcbd6484261de0c093f8801b599a5f262ca23d41a37', '[\"*\"]', NULL, NULL, '2026-01-31 07:34:31', '2026-01-31 07:34:31'),
(39, 'App\\Models\\User', 14, 'auth_token', '5dc274b1cf4a513f2378c8d8df9b05bbcb797a7b81797d6534f6b53cde255903', '[\"*\"]', NULL, NULL, '2026-01-31 07:37:21', '2026-01-31 07:37:21'),
(42, 'App\\Models\\User', 14, 'auth_token', '54625909f7e1fa04bea6c840e23693894afc5c94e6c4d1b222e3a56651dc4499', '[\"*\"]', '2026-01-31 09:35:21', NULL, '2026-01-31 07:45:12', '2026-01-31 09:35:21'),
(43, 'App\\Models\\User', 15, 'auth_token', '1650657e4ff8b2d496e0b4ca05d2601bea78ef98008f7c01e033b7f07a21510b', '[\"*\"]', '2026-02-12 09:50:47', NULL, '2026-01-31 09:26:50', '2026-02-12 09:50:47'),
(45, 'App\\Models\\User', 16, 'auth_token', '96b300248381d4567aaacdaca3ae11698e97c0a0b2652665c358d6bf2c50e48b', '[\"*\"]', NULL, NULL, '2026-01-31 10:28:32', '2026-01-31 10:28:32'),
(47, 'App\\Models\\User', 8, 'auth_token', '4c99d20721ca2e6ccf36477e64e3174b9b5a1066a257e9429cf6dd86b7e540be', '[\"*\"]', NULL, NULL, '2026-01-31 10:49:46', '2026-01-31 10:49:46'),
(48, 'App\\Models\\User', 15, 'auth_token', '6c55745a77989ca2a8dccbe6da6589ba0592bca3f24d0f61df0df6ce67286e77', '[\"*\"]', NULL, NULL, '2026-01-31 11:13:02', '2026-01-31 11:13:02'),
(49, 'App\\Models\\User', 16, 'auth_token', 'ad77b6e3cb06556b362f631b6aa67da7bc7ecaebe441c98c0cbd55110ad66c63', '[\"*\"]', NULL, NULL, '2026-01-31 11:25:57', '2026-01-31 11:25:57'),
(55, 'App\\Models\\User', 18, 'auth_token', 'f8005ea239cece890f7575e314f2514c7d82d24edcbb60fcd1b2b9f2106f5e41', '[\"*\"]', '2026-01-31 12:24:20', NULL, '2026-01-31 12:22:53', '2026-01-31 12:24:20'),
(58, 'App\\Models\\User', 14, 'auth_token', 'b2de0dd314bdc57e90c84a5c5dc04dedf22a3799ff893de73f2fcd3e3184b866', '[\"*\"]', '2026-01-31 13:48:36', NULL, '2026-01-31 13:48:31', '2026-01-31 13:48:36'),
(65, 'App\\Models\\User', 20, 'auth_token', 'ca8918916536e3aa794a4dd82d33640dd6c7331566671b0045075c01820b646c', '[\"*\"]', '2026-02-02 07:06:13', NULL, '2026-02-02 06:43:01', '2026-02-02 07:06:13'),
(66, 'App\\Models\\User', 20, 'auth_token', '1f6f277b580c58eed6c286cd259e6dd124b6f0e4a4ffe4e829308e2b9dec8e3e', '[\"*\"]', NULL, NULL, '2026-02-02 07:29:08', '2026-02-02 07:29:08'),
(71, 'App\\Models\\User', 2, 'auth_token', 'e61b420a081f279e8d7edad3c8f15f4ce8d55b56e8ffed432ca84372ee0a8242', '[\"*\"]', '2026-02-03 13:50:56', NULL, '2026-02-03 04:27:28', '2026-02-03 13:50:56'),
(72, 'App\\Models\\User', 2, 'auth_token', 'cf6836e69675198a1476bac178c808d69d2771b1a9b5c970d9910545c7f1ad71', '[\"*\"]', '2026-02-03 10:47:51', NULL, '2026-02-03 05:06:31', '2026-02-03 10:47:51'),
(73, 'App\\Models\\User', 20, 'auth_token', '4cb0ffdaf51bacca5ed6404acb253c589d176190e8d4db1946a896adbdb920c6', '[\"*\"]', '2026-02-04 08:31:26', NULL, '2026-02-03 06:37:07', '2026-02-04 08:31:26'),
(74, 'App\\Models\\User', 20, 'auth_token', 'fff7dee1b51291fedfa7be33a3eb76161a6b9c528a6e56bbf499376d74b491cc', '[\"*\"]', '2026-02-03 15:58:58', NULL, '2026-02-03 07:36:31', '2026-02-03 15:58:58'),
(76, 'App\\Models\\User', 15, 'auth_token', '9a6b7d3c25c502e744ff3b18643bf37a2ca01e5ecc4f9a279a9bac82c1f1a991', '[\"*\"]', '2026-02-05 10:52:36', NULL, '2026-02-03 12:33:25', '2026-02-05 10:52:36'),
(77, 'App\\Models\\User', 15, 'auth_token', 'b8461fa5f36205f10a623d6d4e3b3a62f89a1683ea7438036a558ad328df0326', '[\"*\"]', '2026-02-04 04:59:25', NULL, '2026-02-04 04:53:04', '2026-02-04 04:59:25'),
(78, 'App\\Models\\User', 20, 'auth_token', 'b58812139eaa1fc35957ff960ef438008ed586306e9a3451137239497bee3b31', '[\"*\"]', '2026-02-04 06:09:27', NULL, '2026-02-04 05:03:19', '2026-02-04 06:09:27'),
(80, 'App\\Models\\User', 2, 'auth_token', 'e9aab707eb7c39794e9dba32046cd75d2ada5caa90087f4f8af42134d7d457e1', '[\"*\"]', '2026-02-04 09:05:49', NULL, '2026-02-04 08:57:08', '2026-02-04 09:05:49'),
(81, 'App\\Models\\User', 2, 'auth_token', 'd2f0a9da2652e8f7d0492f151f00b2d3df9dc892fd52eef0ea3bc1fec0460a4a', '[\"*\"]', '2026-02-04 09:00:58', NULL, '2026-02-04 09:00:40', '2026-02-04 09:00:58'),
(82, 'App\\Models\\User', 20, 'auth_token', 'adf09a483f1aeb379f1bd1de88f96057bda049fdd04027479b1f4c50e5176631', '[\"*\"]', '2026-02-05 11:34:08', NULL, '2026-02-04 10:37:31', '2026-02-05 11:34:08'),
(83, 'App\\Models\\User', 15, 'auth_token', '14f31211736243d682488c41bd6951ad21489e9de242a7f44f61e61746333552', '[\"*\"]', '2026-02-04 12:33:55', NULL, '2026-02-04 10:46:46', '2026-02-04 12:33:55'),
(84, 'App\\Models\\User', 21, 'auth_token', '728a2e58bdba25ffa3ff2e57a774b8c4f66cbc6b6988ba57cb4e33ba15f74c03', '[\"*\"]', '2026-02-05 03:23:32', NULL, '2026-02-04 13:46:25', '2026-02-05 03:23:32'),
(85, 'App\\Models\\User', 20, 'auth_token', '82f417e547f20d5856c605a423d55db22cbc8707ab6d7b50d00a5bed3b4514a6', '[\"*\"]', '2026-02-04 14:14:32', NULL, '2026-02-04 13:54:37', '2026-02-04 14:14:32'),
(87, 'App\\Models\\User', 20, 'auth_token', '260e0719787ce3121f92119a16e005ca4d5499a9081ee7b841e20270da56ae12', '[\"*\"]', '2026-02-07 04:41:29', NULL, '2026-02-04 15:29:07', '2026-02-07 04:41:29'),
(88, 'App\\Models\\User', 20, 'auth_token', '4a293f5d4419d88fe1f105075b99b7a91ba338a72274f73fa3b5d844ac38de9d', '[\"*\"]', '2026-02-04 16:56:27', NULL, '2026-02-04 16:30:53', '2026-02-04 16:56:27'),
(93, 'App\\Models\\User', 22, 'auth_token', 'c9c7ed774deb1bca605424619eea477d5243d4a25ec50072dd62a677cbf93dcc', '[\"*\"]', '2026-02-05 03:29:27', NULL, '2026-02-05 03:28:21', '2026-02-05 03:29:27'),
(96, 'App\\Models\\User', 20, 'auth_token', '64e3799c62b47529b742f56bd654a0589b7bb293a6be5eae8541e345aa16c247', '[\"*\"]', '2026-02-05 12:20:40', NULL, '2026-02-05 10:26:20', '2026-02-05 12:20:40'),
(103, 'App\\Models\\User', 19, 'auth_token', 'f13d8adbb70257c175b653027fa2df090ccaad0a18640a7163332548d5b3280f', '[\"*\"]', '2026-02-05 17:17:17', NULL, '2026-02-05 17:15:03', '2026-02-05 17:17:17'),
(104, 'App\\Models\\User', 19, 'auth_token', 'f8fb0adb5412dcd95f4a8193fcfff007eb9599b79891490613a1246cf1ad8551', '[\"*\"]', '2026-02-05 18:12:44', NULL, '2026-02-05 18:12:42', '2026-02-05 18:12:44'),
(108, 'App\\Models\\User', 23, 'auth_token', 'f605a01228733713e4b09d76da60c0439a933aebb0656a52c4cdd8a9fb47b1c5', '[\"*\"]', NULL, NULL, '2026-02-06 09:25:50', '2026-02-06 09:25:50'),
(109, 'App\\Models\\User', 23, 'auth_token', '69d080179867ca851e14196105b4e67f9af1fd03f32de30c1dc620edcbc08b79', '[\"*\"]', NULL, NULL, '2026-02-06 09:26:18', '2026-02-06 09:26:18'),
(115, 'App\\Models\\User', 10, 'auth_token', 'c60f34e15dd9a46a2eef2f0296c6dc82a7b9d4462064d0b45748472227977832', '[\"*\"]', '2026-02-07 05:05:32', NULL, '2026-02-07 05:04:55', '2026-02-07 05:05:32'),
(119, 'App\\Models\\User', 2, 'auth_token', 'ef487485f1ae813dbc4c8d8f055f915bb9fdb587d7a9b635806df35fc283bd56', '[\"*\"]', '2026-02-23 09:30:02', NULL, '2026-02-07 06:38:23', '2026-02-23 09:30:02'),
(121, 'App\\Models\\User', 21, 'auth_token', 'a89511432e41a3489b8c9ffe77b3742a252a4de87f30b7f62ef6dcf67cf1d39b', '[\"*\"]', '2026-02-24 08:30:11', NULL, '2026-02-07 07:14:00', '2026-02-24 08:30:11'),
(122, 'App\\Models\\User', 20, 'auth_token', 'f7cb40c3bc71d6ebbd91ba574e5db6485508cc48562d4b1a80d1a689622651f7', '[\"*\"]', '2026-02-25 07:05:49', NULL, '2026-02-07 07:51:24', '2026-02-25 07:05:49'),
(126, 'App\\Models\\User', 20, 'auth_token', '2b243b4460dc90228b9fa498112ac20ac425b6d729656cc1644cf2db4e54bef3', '[\"*\"]', NULL, NULL, '2026-02-13 10:25:33', '2026-02-13 10:25:33'),
(134, 'App\\Models\\User', 10, 'auth_token', '9a9fcc8d6567c33ffb1a5f32f32fb54856b9f8f7010b682ea5acd5967fc5069c', '[\"*\"]', '2026-02-24 08:54:47', NULL, '2026-02-24 08:54:38', '2026-02-24 08:54:47'),
(137, 'App\\Models\\User', 19, 'auth_token', 'd67dcda3137355211b58d2807611db3459e8430d1fbd3e01d3b781eba0a46753', '[\"*\"]', '2026-02-27 18:26:59', NULL, '2026-02-27 18:26:59', '2026-02-27 18:26:59'),
(138, 'App\\Models\\User', 19, 'auth_token', '5bd0f2db18519decf4388b25e55836e334ea6fa07064a269567481b7f3753399', '[\"*\"]', '2026-03-02 09:13:16', NULL, '2026-03-02 09:13:05', '2026-03-02 09:13:16'),
(139, 'App\\Models\\User', 2, 'auth_token', '8593857698555bd3a2bddc76a73a59edf5f37ef5bea54e0b0d7572363826dcbf', '[\"*\"]', NULL, NULL, '2026-03-03 06:48:11', '2026-03-03 06:48:11'),
(143, 'App\\Models\\User', 20, 'auth_token', 'b17f61e5233942fcd429244b76e813d94712b798f59e7b6233957de36c251a86', '[\"*\"]', '2026-03-03 12:22:22', NULL, '2026-03-03 12:12:59', '2026-03-03 12:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 'test', '<h2>Privacy Policy (Sample Content)</h2><h2>1. Introduction</h2><p>We value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and safeguard your data when you use our services.</p><h2>2. Information We Collect</h2><p>We may collect the following types of information from users:</p><figure class=\"table\"><table><thead><tr><th>Type of Information</th><th>Description</th></tr></thead><tbody><tr><td>Personal Information</td><td>Name, Email, Phone number</td></tr><tr><td>Account Information</td><td>Username, Password, Profile settings</td></tr><tr><td>Usage Data</td><td>Pages visited, Time spent, Device information</td></tr><tr><td>Cookies</td><td>Tracking preferences and session details</td></tr></tbody></table></figure><h2>3. How We Use Your Information</h2><p>The collected information is used for purposes such as:</p><ul><li>Providing and maintaining our services</li><li>Personalizing your experience</li><li>Improving our website and content</li><li>Sending promotional materials (if consented)</li><li>Complying with legal obligations</li></ul><h2>4. Sharing of Information</h2><p>We do <strong>not sell or trade</strong> your personal information. However, we may share data with:</p><figure class=\"table\"><table><thead><tr><th>Recipient</th><th>Purpose</th></tr></thead><tbody><tr><td>Service Providers</td><td>To perform service-related tasks</td></tr><tr><td>Legal Authorities</td><td>When required by law or legal processes</td></tr><tr><td>Business Partners</td><td>For marketing or collaboration (with consent)</td></tr></tbody></table></figure><h2>5. Security Measures</h2><p>We implement technical and organizational measures to protect your information, including:</p><ul><li>Encryption of sensitive data</li><li>Regular system security audits</li><li>Restricted access to authorized personnel only</li></ul><h2>6. User Rights</h2><p>Users have the right to:</p><ul><li>Access and update their personal data</li><li>Request deletion of their account or information</li><li>Opt-out of marketing communications</li><li>File complaints with relevant authorities</li></ul><h2>7. Changes to This Policy</h2><p>We may update this Privacy Policy from time to time. Users will be notified via email or website announcements about major changes.</p><h2>8. Contact Us</h2><p>For any questions or concerns regarding this Privacy Policy, please contact:</p><p><strong>Email:</strong> privacy@example.com</p>', '2025-10-24 04:40:18', '2025-10-24 05:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `extra_user` bigint(20) UNSIGNED DEFAULT NULL,
  `project_name` varchar(255) NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `field_officer_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`field_officer_id`)),
  `ward_no` int(11) NOT NULL DEFAULT 1,
  `accuracy` int(11) DEFAULT NULL,
  `add_second` tinyint(1) NOT NULL DEFAULT 0,
  `required_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`required_fields`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `extra_user`, `project_name`, `state_id`, `client_name`, `company_name`, `field_officer_id`, `ward_no`, `accuracy`, `add_second`, `required_fields`, `created_at`, `updated_at`) VALUES
(39, NULL, 'Asther', 14, 'Nikesh Desai', 'Basil', '[\"2\"]', 1, 10, 0, NULL, '2026-02-06 14:53:21', '2026-02-13 13:08:56'),
(40, 19, 'Nikesh', 14, 'Nikesh', 'Nikesh', NULL, 100, NULL, 0, NULL, '2026-02-06 15:11:37', '2026-02-06 15:11:37'),
(41, 20, 'tree', 4, 'awantika', 'digi', NULL, 100, NULL, 0, NULL, '2026-02-07 04:47:33', '2026-02-07 04:47:33'),
(42, 10, 'Lucknow junction', 1, 'Firoz', 'Digi', NULL, 100, NULL, 0, NULL, '2026-02-07 05:05:32', '2026-02-07 05:05:32'),
(43, 19, 'Parme', 14, 'Bhaskar', 'Basil', NULL, 100, NULL, 0, NULL, '2026-02-07 06:36:15', '2026-02-07 06:36:15'),
(44, 21, 'demo', 4, 'demo', 'bxhdbd', NULL, 100, NULL, 0, NULL, '2026-02-07 07:14:25', '2026-02-07 07:14:25'),
(45, 19, 'Kandivali Mumbai', 14, 'Basil', 'Basil', NULL, 100, NULL, 0, NULL, '2026-02-24 08:14:50', '2026-02-24 08:14:50'),
(46, NULL, 'test', 1, 'ram', 'test2', '[\"2\"]', 11, NULL, 0, NULL, '2026-03-03 06:21:36', '2026-03-03 06:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `project_settings`
--

CREATE TABLE `project_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `field_key` varchar(255) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `min_value` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_settings`
--

INSERT INTO `project_settings` (`id`, `project_id`, `field_key`, `is_required`, `min_value`, `max_value`, `created_at`, `updated_at`) VALUES
(18, 39, 'ward_plot_no', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(19, 39, 'all_captured_images', 1, 1, 10, '2026-02-13 13:08:56', '2026-02-13 13:11:55'),
(20, 39, 'ward_number', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(21, 39, 'tree_name', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(22, 39, 'girth', 1, 1, 10, '2026-02-13 13:08:56', '2026-02-13 13:10:11'),
(23, 39, 'height', 1, 1, 100, '2026-02-13 13:08:56', '2026-02-13 13:10:11'),
(24, 39, 'age', 1, 1, 100, '2026-02-13 13:08:56', '2026-02-13 13:11:55'),
(25, 39, 'canopy', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(26, 39, 'condition', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(27, 39, 'address', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(28, 39, 'landmark', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(29, 39, 'concern_person', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(30, 39, 'concern_person_email', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(31, 39, 'concern_person_phone', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(32, 39, 'ownership', 0, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(33, 39, 'remark', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56'),
(34, 39, 'ratio', 1, NULL, NULL, '2026-02-13 13:08:56', '2026-02-13 13:08:56');

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
(6, 'Office Admin', 'web', '2026-02-06 07:13:41', '2026-02-06 07:13:41'),
(7, 'Employee', 'web', '2026-02-06 07:14:10', '2026-02-06 07:14:10'),
(8, 'Client', 'web', '2026-02-06 07:14:18', '2026-02-06 07:14:18');

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
(3, 1),
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
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(1, 6),
(2, 6),
(3, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6);

-- --------------------------------------------------------

--
-- Table structure for table `scientific_names`
--

CREATE TABLE `scientific_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tree_id` bigint(20) UNSIGNED NOT NULL,
  `scientific_name` varchar(255) NOT NULL,
  `height_ratio` varchar(255) DEFAULT NULL,
  `age_ratio` varchar(255) DEFAULT NULL,
  `canopy_ratio` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scientific_names`
--

INSERT INTO `scientific_names` (`id`, `tree_id`, `scientific_name`, `height_ratio`, `age_ratio`, `canopy_ratio`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mangifera indica', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(2, 2, 'Azadirachta indica', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(3, 3, 'Ficus benghalensis', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(4, 4, 'Ficus religiosa', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(5, 5, 'Saraca asoca', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(6, 6, 'Tectona grandis', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(7, 7, 'Shorea robusta', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(8, 8, 'Santalum album', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(9, 9, 'Delonix regia', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(10, 10, 'Cocos nucifera', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(11, 11, 'Arecaceae sp.', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(12, 12, 'Bambusoideae sp.', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(13, 13, 'Artocarpus heterophyllus', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(14, 14, 'Syzygium cumini', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(15, 15, 'Phyllanthus emblica', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(16, 16, 'Psidium guajava', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(17, 17, 'Carica papaya', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(18, 18, 'Anacardium occidentale', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(19, 19, 'Eucalyptus globulus', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(20, 20, 'Swietenia mahagoni', NULL, NULL, NULL, '2025-10-24 12:56:49', '2025-10-24 12:56:49'),
(23, 23, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(24, 24, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(25, 25, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(26, 26, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(27, 27, 'tree', 'Neem', 'Azadirachta indica', 'Meliaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(28, 28, 'tree', 'Neem', 'Azadirachta indica', 'Meliaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(29, 29, 'tree', 'Peepal', 'Ficus religiosa', 'Moraceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(30, 30, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(31, 31, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(32, 32, 'tree', 'Mango', 'Mangifera indica', 'Anacardiaceae', '2026-02-24 06:48:45', '2026-02-24 06:48:45');

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
-- Table structure for table `state_master`
--

CREATE TABLE `state_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state_master`
--

INSERT INTO `state_master` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(2, 'Arunachal Pradesh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(3, 'Assam', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(4, 'Bihar', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(5, 'Chhattisgarh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(6, 'Goa', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(7, 'Gujarat', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(8, 'Haryana', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(9, 'Himachal Pradesh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(10, 'Jharkhand', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(11, 'Karnataka', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(12, 'Kerala', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(13, 'Madhya Pradesh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(14, 'Maharashtra', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(15, 'Manipur', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(16, 'Meghalaya', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(17, 'Mizoram', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(18, 'Nagaland', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(19, 'Odisha', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(20, 'Punjab', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(21, 'Rajasthan', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(22, 'Sikkim', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(23, 'Tamil Nadu', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(24, 'Telangana', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(25, 'Tripura', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(26, 'Uttar Pradesh', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(27, 'Uttarakhand', '2025-10-24 03:17:57', '2025-10-24 03:17:57'),
(28, 'West Bengal', '2025-10-24 03:17:57', '2025-10-24 03:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `tahsils_master`
--

CREATE TABLE `tahsils_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahsil_name` varchar(255) NOT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahsils_master`
--

INSERT INTO `tahsils_master` (`id`, `tahsil_name`, `short_code`, `state_id`, `district_id`, `created_at`, `updated_at`) VALUES
(2, 'test', NULL, 1, 1, '2025-10-31 04:59:07', '2025-10-31 04:59:07'),
(3, 'test3', NULL, 26, 2, '2025-10-31 05:20:50', '2025-10-31 05:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

CREATE TABLE `trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mango', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(2, 'Neem', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(3, 'Banyan', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(4, 'Peepal', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(5, 'Ashoka', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(6, 'Teak', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(7, 'Sal', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(8, 'Sandalwood', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(9, 'Gulmohar', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(10, 'Coconut', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(11, 'Palm', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(12, 'Bamboo', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(13, 'Jackfruit', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(14, 'Jamun', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(15, 'Amla', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(16, 'Guava', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(17, 'Papaya', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(18, 'Cashew', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(19, 'Eucalyptus', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(20, 'Mahogany', '2025-10-24 12:56:16', '2025-10-24 12:56:16'),
(23, 'T-1', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(24, 'T-2', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(25, 'T-3', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(26, 'T-4', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(27, 'T-5', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(28, 'T-6', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(29, 'T-7', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(30, 'T-8', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(31, 'T-9', '2026-02-24 06:48:45', '2026-02-24 06:48:45'),
(32, 'T-10', '2026-02-24 06:48:45', '2026-02-24 06:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `tree_prices`
--

CREATE TABLE `tree_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = Active, 0 = Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `tree_prices`
--

INSERT INTO `tree_prices` (`id`, `price`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 5.00, 1, '2026-02-06 15:50:40', '2026-02-06 15:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `otp` varchar(10) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `aadhaar_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `projects` varchar(255) DEFAULT NULL,
  `ward_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `is_verified`, `otp`, `phone`, `aadhaar_number`, `address`, `projects`, `ward_number`, `gender`, `designation`, `role_id`, `district_id`, `password`, `email_verified_at`, `status`, `remember_token`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 'Tree Expert', 'treeexpert@gmail.com', 0, NULL, '7525956525', '123456789012', 'fddgfg', NULL, '1', 'Male', 'admin', 1, 3, '$2y$12$.hIOHWy6bOBSFN7GGD4KR.A7oXKvEgKj32MoRgZtPGJS9E2UU22fK', NULL, '1', NULL, '2025-06-14 03:37:34', '2025-12-17 02:20:37', 'profile_images/user_profile_VdvUcR_mobile.jpg'),
(2, 'Officer', 'officer@mail.com', 1, '1234', '7080032118', '123466789012', 'lucknow', NULL, NULL, 'female', 'officer', 2, 1, '$2y$12$.hIOHWy6bOBSFN7GGD4KR.A7oXKvEgKj32MoRgZtPGJS9E2UU22fK', NULL, '1', NULL, '2025-06-14 04:44:10', '2026-02-07 05:03:46', 'profile_images/user_profile_kEd9RI_scaled_1000184448.jpg'),
(8, 'Sachin Kumar', 'pk1@gmail.com', 0, NULL, '7080032119', '1245789562345875', NULL, NULL, '1', 'Male', 'Employee', 7, 1, '$2y$12$a3b.fcjFKog1E75LkGi/FOzE6gFVtubG3ozS8XJhrcZcu8lWAmLfy', NULL, '1', NULL, '2025-10-29 02:02:46', '2026-02-06 14:56:23', NULL),
(9, 'sachin verma', 'digiempsachin@gmail.com', 0, NULL, '7800060501', '123456789012', 'pratapgarh', '23', '2', 'Male', 'officer', 2, 4, '$2y$12$mtC4IxDk5bHOTbkVMBxYz.VfGlFugsLW7M9yJZNqCTK0a0z1ulJZK', NULL, '1', NULL, '2025-12-17 02:38:36', '2025-12-17 02:38:36', NULL),
(10, 'Sachin', 'pk@gmail.com', 1, NULL, '7458086472', '123456789012', 'pratapgarh', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$14aavG592wybmgCH1D8s.O8fxWMNqssjyyTCaWiu/QbspA.EGE9Z6', NULL, '1', NULL, '2026-01-31 06:12:05', '2026-02-24 08:54:38', 'profile_images/user_profile_fYpndM_Screenshot 2026-01-23 at 1.12.11 PM.png'),
(11, 'User 7458086473', '7458086473@mobile.temp', 1, NULL, '7458086473', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$eKneJjBFXcyfe1Gk2v9Jy.gjeDD5peyb65avz.7GAoDYE1QCy19/2', NULL, '1', NULL, '2026-01-31 06:49:28', '2026-01-31 06:50:01', NULL),
(12, 'User 7458086475', '7458086475@mobile.temp', 1, NULL, '7458086475', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$.wO/r9gtqwC6CTOLGrE5VuXxcGc2ya8afSUQ/UGRqqCjrRxRpTHFq', NULL, '1', NULL, '2026-01-31 06:57:34', '2026-02-05 12:59:53', 'profile_images/user_profile_i2A7f0_1000115701.jpg'),
(13, 'Sachin', 'firoz@gmail.com', 1, '1234', '7458086476', '123456789012', 'pratapgarh', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$CCn7A1mT99EHAumHDZE.fOGALFP.jc.U2dacTZt/Tt0oC7YniLa6u', NULL, '1', NULL, '2026-01-31 07:09:24', '2026-01-31 07:30:56', NULL),
(14, 'Firoz', 'firoz.digi02@gmail.com', 1, NULL, '7458086477', '468648264386', 'Lucknow', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$nPpJ/Gr40ZvLw7KHB6M17el1Vh0TXkzGq1RYd9lXueJPCmU.fG5yC', NULL, '1', NULL, '2026-01-31 07:27:38', '2026-01-31 13:48:31', NULL),
(15, 'User 7080032199', '7080032199@mobile.temp', 0, NULL, '7080032199', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$wMXlcRdPFPkJmWgp36Usbupbnat/DoGwb49CQKzIvDCXl3E.xUPYO', NULL, '1', NULL, '2026-01-31 09:26:28', '2026-02-04 10:46:46', NULL),
(16, 'Firoz', 'ggh@gmail.com', 1, NULL, '7458086479', '555555555555', 'ggh', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$g5D46UOdZ4JOC1Gwx3r0a.JCffZhc6ku6V2t48StGLEFQltU1QD/q', NULL, '1', NULL, '2026-01-31 10:28:25', '2026-01-31 11:30:27', 'profile_images/user_profile_EoulJg_1000090495.jpg'),
(17, 'Firoz', 'firoz.digidigi@gmail.com', 1, NULL, '7458086471', '252552255225', 'Lucknow', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$iDZvd2fzmJe52Q0meNYWtOkRbE4sMJSS/o4jWoKpOwZ6eiQmFpIuS', NULL, '1', NULL, '2026-01-31 11:51:09', '2026-01-31 12:25:52', NULL),
(18, 'rushab', 'shirkerushab6@gmail.com', 1, NULL, '9137553923', '123412341234', 'gami industries turbhe', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$FpCbp53nYwncDJ8A3dj1Wu/DRm57Cy7VBeZ1yUIapVzoMBziBVK3q', NULL, '1', NULL, '2026-01-31 12:22:49', '2026-01-31 12:23:22', NULL),
(19, 'Nikesh', 'nikeshds24@gmail.com', 1, NULL, '9768359328', '123456789123', 'Panvel, Takka', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$TUVZiQ4W.P/y8R./cdni2uQUz3ys5RcwqASeZZ8vqfgBYZx3XDQP.', NULL, '1', NULL, '2026-02-01 03:37:48', '2026-03-02 09:13:05', NULL),
(20, 'Awantika yadav', 'awantikayadav014@gmail.com', 1, NULL, '9651017054', '454848423759', 'Lucknow', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$rhd5LehAVfw7bxhPb74Kc.dkevAl1ixPlrMtePLSyU.rZYozh5jCq', NULL, '1', NULL, '2026-02-02 06:42:54', '2026-03-03 12:12:59', 'profile_images/user_profile_lXvX0u_scaled_1000095307.jpg'),
(21, 'saurabh sawant', 'saurabh@digiemperor.com', 1, NULL, '9619853727', '215188484864', 'miraroad test', NULL, NULL, 'male', NULL, 3, NULL, '$2y$12$amwGpmMoqkcdmmvUqT9mie8rRCcznzjp2g83RghkzdCnn61i1RNZ.', NULL, '1', NULL, '2026-02-04 13:46:12', '2026-02-07 07:14:00', 'profile_images/user_profile_Yi4uVQ_1000184448.jpg'),
(22, 'User 9632542512', '9632542512@mobile.temp', 0, NULL, '9632542512', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$D70qThDBdN0OdyFKNKWAtOT8RD5v3DOHVePXUA2xKL6Ub9H1wtuvy', NULL, '1', NULL, '2026-02-05 03:28:08', '2026-02-05 03:28:21', NULL),
(23, 'User 7795303039', '7795303039@mobile.temp', 0, NULL, '7795303039', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '$2y$12$CcRNaXJPlYj44/3Tu4xzpOJfCzN2eSgrUQAugOt0Wp1EAyCoiMG2K', NULL, '1', NULL, '2026-02-06 09:25:45', '2026-02-06 09:26:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_paid_trees`
--

CREATE TABLE `user_paid_trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mt_tree_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) NOT NULL COMMENT 'Razorpay payment id',
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Dumping data for table `user_paid_trees`
--

INSERT INTO `user_paid_trees` (`id`, `user_id`, `project_id`, `mt_tree_id`, `payment_id`, `amount`, `created_at`, `updated_at`) VALUES
(9, 20, NULL, 56, 'pay_SC56e1kowscpRH', 20.00, '2026-02-04 13:14:57', '2026-02-04 13:14:57'),
(10, 20, NULL, 55, 'pay_SC56e1kowscpRH', 20.00, '2026-02-04 13:14:57', '2026-02-04 13:14:57'),
(11, 20, NULL, 93, 'pay_SC9Zx4UKCJbj3r', 20.00, '2026-02-04 17:37:25', '2026-02-04 17:37:25'),
(12, 20, NULL, 94, 'pay_SC9Zx4UKCJbj3r', 20.00, '2026-02-04 17:37:25', '2026-02-04 17:37:25'),
(13, 21, NULL, 96, 'pay_SCOErIVnCvGgUU', 10.00, '2026-02-05 07:57:53', '2026-02-05 07:57:53'),
(14, 21, NULL, 97, 'pay_SCOErIVnCvGgUU', 10.00, '2026-02-05 07:57:53', '2026-02-05 07:57:53'),
(15, 21, NULL, 98, 'pay_SCOErIVnCvGgUU', 10.00, '2026-02-05 07:57:53', '2026-02-05 07:57:53'),
(16, 21, NULL, 99, 'pay_SCOErIVnCvGgUU', 10.00, '2026-02-05 07:57:53', '2026-02-05 07:57:53'),
(17, 21, NULL, 100, 'pay_SCOH6JRQ3cEIKy', 10.00, '2026-02-05 07:59:59', '2026-02-05 07:59:59'),
(18, 21, NULL, 101, 'pay_SCOH6JRQ3cEIKy', 10.00, '2026-02-05 07:59:59', '2026-02-05 07:59:59'),
(19, 21, NULL, 102, 'pay_SCOH6JRQ3cEIKy', 10.00, '2026-02-05 07:59:59', '2026-02-05 07:59:59'),
(20, 21, NULL, 60, 'pay_SCOH6JRQ3cEIKy', 10.00, '2026-02-05 07:59:59', '2026-02-05 07:59:59'),
(21, 20, NULL, 95, 'pay_SCOIxz3euW7RSE', 10.00, '2026-02-05 08:01:45', '2026-02-05 08:01:45'),
(22, 20, NULL, 91, 'pay_SCRRgd33FQ66BP', 10.00, '2026-02-05 11:06:08', '2026-02-05 11:06:08'),
(23, 20, NULL, 92, 'pay_SCRRgd33FQ66BP', 10.00, '2026-02-05 11:06:08', '2026-02-05 11:06:08'),
(24, 20, NULL, 122, 'pay_SD8GjvaA9GcLAH', 5.00, '2026-02-07 04:59:35', '2026-02-07 04:59:35'),
(25, 19, NULL, 123, 'pay_SHHvegHbNK5gaY', 5.00, '2026-02-17 17:02:34', '2026-02-17 17:02:34'),
(26, 19, NULL, 137, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(27, 19, NULL, 138, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(28, 19, NULL, 139, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(29, 19, NULL, 140, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(30, 19, NULL, 133, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(31, 19, NULL, 134, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(32, 19, NULL, 135, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46'),
(33, 19, NULL, 136, 'pay_SHS9hRuNw950VD', 5.00, '2026-02-18 03:02:46', '2026-02-18 03:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_ratings`
--

CREATE TABLE `user_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ratings`
--

INSERT INTO `user_ratings` (`id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'Great player, very responsive!', '2025-10-23 22:14:17', '2025-11-01 01:01:25'),
(4, 17, 5, 'fgg', '2026-01-31 12:17:00', '2026-01-31 12:17:00'),
(5, 20, 1, 'xhcuf', '2026-02-04 08:40:24', '2026-02-07 04:52:16'),
(6, 21, 4, 'czfsgshs', '2026-02-05 07:50:01', '2026-02-05 07:50:01'),
(7, 19, 5, NULL, '2026-02-06 17:12:51', '2026-02-06 17:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `created_at`, `updated_at`) VALUES
(2, 'test', '1761287716_test2.mp4', '2025-10-24 01:05:16', '2025-10-24 01:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_count` int(11) NOT NULL DEFAULT 0,
  `tree_count` int(11) NOT NULL DEFAULT 0,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `project_count`, `tree_count`, `razorpay_payment_id`, `razorpay_order_id`, `razorpay_signature`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 20, 0, 2, 'pay_SBwN5f3Vh6kL1B', 'order_SBwMoVELkdqo9g', 'd1ce7a9fe78154a3c2b5f0d8d2aa0c2f5434def1cdd79c0a58c5f2b97d415adb', 40.00, 'success', '2026-02-04 04:59:25', '2026-02-04 04:59:25'),
(3, 20, 0, 2, 'pay_SBxROf6gRv4hlU', 'order_SBxR9cFIypcPYS', 'cf9f9dea9e333b14ece061ea5cfeda76f3ae49a3ac6b3f67a3e78be19928343d', 40.00, 'success', '2026-02-04 05:45:01', '2026-02-04 05:45:01'),
(4, 20, 0, 3, 'pay_SBxeRN2v5JzRcB', 'order_SBxeGRZkGByMCd', '95f619f934b318b2503a5cf97ffb846f1e9e6b1ae1d2fd943a83ca98011a4b0f', 60.00, 'success', '2026-02-04 05:57:25', '2026-02-04 05:57:25'),
(5, 20, 0, 1, 'pay_SBza2JquPWZSJw', 'order_SBzZeQmQOJgXlI', '80238227d636940d3e385924fc6f577304aced9a2f017a5c4cf1ca1fb549842a', 20.00, 'success', '2026-02-04 07:50:36', '2026-02-04 07:50:36'),
(6, 20, 0, 2, 'pay_SC56e1kowscpRH', 'order_SC56GM31CrPW3e', 'd0b143c2b99c377aa9af136840ce234c5391024885b5241f7917a2cf12882421', 40.00, 'success', '2026-02-04 13:14:57', '2026-02-04 13:14:57'),
(7, 21, 1, 100, NULL, NULL, 'free', 0.00, 'success', '2026-02-04 13:46:12', '2026-02-04 13:46:12'),
(8, 20, 0, 2, 'pay_SC9Zx4UKCJbj3r', 'order_SC9Zm92p9loaY4', '78c4d3991fa01a4d74c5bf85e5dec9be5d519b5c2feb040fe1073f3c6d4dddc8', 40.00, 'success', '2026-02-04 17:37:25', '2026-02-04 17:37:25'),
(9, 22, 1, 100, NULL, NULL, 'free', 0.00, 'success', '2026-02-05 03:28:08', '2026-02-05 03:28:08'),
(10, 21, 0, 4, 'pay_SCOErIVnCvGgUU', 'order_SCODsYU6EkKpn6', 'f90dab5204e5284801b7eaddd6b0af246ef706b871efe6e0854cf8d88fd66492', 40.00, 'success', '2026-02-05 07:57:53', '2026-02-05 07:57:53'),
(11, 21, 0, 4, 'pay_SCOH6JRQ3cEIKy', 'order_SCOGzSCAAAuKBo', '1df38809a4e4441822dc1e8391f6daf150c8ddd6bf7546dcba49a34a1ac6fb84', 40.00, 'success', '2026-02-05 07:59:59', '2026-02-05 07:59:59'),
(12, 20, 0, 1, 'pay_SCOIxz3euW7RSE', 'order_SCOImAQOYDzt6v', 'bd7f374c329301daf6d82b26740bc9d82b1185c6879084a5ec177ebfaf90a6af', 10.00, 'success', '2026-02-05 08:01:45', '2026-02-05 08:01:45'),
(13, 20, 0, 2, 'pay_SCRRgd33FQ66BP', 'order_SCRRNWxJrshjkB', '3791f04331531a483c93f2dbd251a4a7c3072d2ab1d2dd34b74e71d42a9a0765', 20.00, 'success', '2026-02-05 11:06:08', '2026-02-05 11:06:08'),
(14, 20, 0, 1, 'pay_SD8GjvaA9GcLAH', 'order_SD8GQAL1zuw3Iv', '8d08861f90e83a226e8d618ad3ab1eb77d1b8c53f994da6a1165bb3628b24121', 5.00, 'success', '2026-02-07 04:59:35', '2026-02-07 04:59:35'),
(15, 19, 0, 1, 'pay_SHHvegHbNK5gaY', 'order_SHHv3FHUZiMW47', '51d41f5ff61f32a891e55a7cafbcc8f832a43765a8936c19b870aedf17560554', 5.00, 'success', '2026-02-17 17:02:34', '2026-02-17 17:02:34'),
(16, 19, 0, 8, 'pay_SHS9hRuNw950VD', 'order_SHS9Z9IUBAQgmU', '773c048fc5afe4a89762b2ff414670dc057e587cc9a53c4513e209d3ae1fab49', 40.00, 'success', '2026-02-18 03:02:46', '2026-02-18 03:02:46');

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tree_id` (`tree_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `mt_trees`
--
ALTER TABLE `mt_trees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_state` (`state_id`),
  ADD KEY `fk_projects_officer` (`field_officer_id`(768));

--
-- Indexes for table `project_settings`
--
ALTER TABLE `project_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_settings_project_id_foreign` (`project_id`);

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
-- Indexes for table `scientific_names`
--
ALTER TABLE `scientific_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tree_id` (`tree_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `state_master`
--
ALTER TABLE `state_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahsils_master`
--
ALTER TABLE `tahsils_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `trees`
--
ALTER TABLE `trees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree_prices`
--
ALTER TABLE `tree_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_paid_trees`
--
ALTER TABLE `user_paid_trees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_paid_trees_user` (`user_id`),
  ADD KEY `fk_user_paid_trees_project` (`project_id`),
  ADD KEY `fk_user_paid_trees_mt_tree` (`mt_tree_id`);

--
-- Indexes for table `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_ratings_user` (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_razorpay_payment_id_unique` (`razorpay_payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks_master`
--
ALTER TABLE `blocks_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts_master`
--
ALTER TABLE `districts_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mt_trees`
--
ALTER TABLE `mt_trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `project_settings`
--
ALTER TABLE `project_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scientific_names`
--
ALTER TABLE `scientific_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `state_master`
--
ALTER TABLE `state_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tahsils_master`
--
ALTER TABLE `tahsils_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trees`
--
ALTER TABLE `trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tree_prices`
--
ALTER TABLE `tree_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user_paid_trees`
--
ALTER TABLE `user_paid_trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_ratings`
--
ALTER TABLE `user_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `families`
--
ALTER TABLE `families`
  ADD CONSTRAINT `families_ibfk_1` FOREIGN KEY (`tree_id`) REFERENCES `trees` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projects_state` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project_settings`
--
ALTER TABLE `project_settings`
  ADD CONSTRAINT `project_settings_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scientific_names`
--
ALTER TABLE `scientific_names`
  ADD CONSTRAINT `scientific_names_ibfk_1` FOREIGN KEY (`tree_id`) REFERENCES `trees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tahsils_master`
--
ALTER TABLE `tahsils_master`
  ADD CONSTRAINT `fk_tahsils_district` FOREIGN KEY (`district_id`) REFERENCES `districts_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tahsils_state` FOREIGN KEY (`state_id`) REFERENCES `state_master` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_paid_trees`
--
ALTER TABLE `user_paid_trees`
  ADD CONSTRAINT `fk_user_paid_trees_mt_tree` FOREIGN KEY (`mt_tree_id`) REFERENCES `mt_trees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_paid_trees_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_user_paid_trees_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD CONSTRAINT `fk_user_ratings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
