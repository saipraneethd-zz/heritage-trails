-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2016 at 05:54 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maps1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(11) NOT NULL,
  `category` text NOT NULL,
  UNIQUE KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category`) VALUES
(1, 'Department'),
(2, 'places'),
(3, 'hostels'),
(4, 'impplaces');

-- --------------------------------------------------------

--
-- Table structure for table `instimaps`
--

CREATE TABLE IF NOT EXISTS `instimaps` (
  `id` int(3) DEFAULT NULL,
  `locname` varchar(100) DEFAULT NULL,
  `depname` varchar(30) DEFAULT NULL,
  `locdescrip` varchar(56) DEFAULT NULL,
  `lat` decimal(9,7) DEFAULT NULL,
  `lng` decimal(9,7) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `instimaps`
--

INSERT INTO `instimaps` (`id`, `locname`, `depname`, `locdescrip`, `lat`, `lng`, `cat_id`) VALUES
(1, 'MJL: Materials Joining Lab', 'MM', 'Central Workshop (CWS), attached to welding shop', '12.9925150', '80.2310720', 1),
(2, 'Nano Technology Lab (MSB 201)', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(3, 'Departmental Classrooms (MSB 208)', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(4, 'MSB201, Nano Technology Lab', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(5, 'MSB202A, Prof. B.S.Murty', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(6, 'MSB202B, Room of Prof. S.K.Sheshadry, Ravi Sankar Kottada, Sabita Sarkar, Ashutosh Gandhi', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(7, 'MSB203; Room of Prof. Prathap Haridoss, Physical Metallurgy-Microgrpahy Lab', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(8, 'MSB204A, Room of R.Murugesan(S.T.A.), Physical Metallurgy Lab', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(9, 'MSB204B; Physical Metallurgy-Sample Preparation Lab', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(10, 'MSB 205, Prof. Parasuraman Swaminathan, K C Harikumar, Anand K Kanjarla', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(11, 'MSB 208B, Electrochemical and Corrosion Lab', 'MM', 'First Floor: MSB', '12.9908300', '80.2309090', 1),
(12, 'Electrometallurgy Lab (MSB101)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(13, 'Fuel Cells Lab (MSB 102)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(14, 'Chemical Metallurgy Lab (MSB 103B)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(15, 'HR-SEM: High Resolution Scanning Electron Microscopy Lab (MSB 103A)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(16, 'AFM/SPM: Atom Force Microscope / Scanning Probe Microscope (MSB 103)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(17, 'MME Seminar Hall (MSB 104)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(18, 'High Temperature Lab and Materials Testing (MSB 106)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(19, 'Mechanical Testing Lab(MSB 105)', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(20, 'MSB 105B, Prof. M Kamaraj', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(21, 'MSB 105C, Prof. Lakshman N', 'MM', 'Ground Floor: MSB', '12.9908300', '80.2309090', 1),
(22, 'XRD: Central X-Ray Diffraction Lab (HSB138), Prof. N V Ravikumar', 'MM', 'HSB', '12.9901090', '80.2312840', 1),
(23, 'TEM: Transmission Electron Microscopy Lab (HSB 135)', 'MM', 'HSB', '12.9901090', '80.2312840', 1),
(24, 'Prof. M Sundaraman, HSB134', 'MM', 'HSB', '12.9901090', '80.2312840', 1),
(25, 'Metal Casting Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(26, 'Powder Metallurgy Lab, PMCL3', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(27, 'Process Modelling Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(28, 'NDT: Non-Destructive Testing Lab, 106', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(29, '101, Prof. Paramanand Singh', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(30, '201, Prof. M Balasubramaniam', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(31, '203, Prof. V Sampath', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(32, '204, Prof. Ranjit Bauri', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(33, '205, Prof. Ajay Kumar Shukla', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(34, '102, Prof. Manas Mukherjee', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(35, '105, Smart Materials Analysis Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(36, 'Smart Material Processing Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(37, 'Department Workshop, 103 & 104', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(38, 'Spray Atomisation and Deposition Facility', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(39, 'Polymer Derived Ceramics(PDC) Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(40, 'Carbon Nano Materials Lab, PMCL2', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(41, 'High Strain Rate Testing Lab', 'MM', 'Metallurgy Workshop', '12.9925150', '80.2310720', 1),
(42, 'Department Library and Computer Facility (MSB 120)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(43, 'Department Stores (MSB 118)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(44, 'Department Office (MSB 112)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(45, 'HoD''s Office (MSB 109)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(46, 'Kitchen (MSB 115)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(47, 'Committee Room (MSB 117)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(48, 'Departmental Classrooms (MSB 111, MSB 121, MSB 114-116)', 'MM', 'Mezzanine floor: MSB', '12.9908300', '80.2309090', 1),
(49, 'MFL 101, Prof. P Venugopal', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(50, 'MFL 102, Prof. Uday Chakkingal', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(51, 'MFL 103A Prof. Sankaran S', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(52, 'MFL 104, Spark Plasma Sintering Machine', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(53, 'MFL 108, Prof. G Sundarajan', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(54, 'MFL 109, Prof. S S Bhattacharya', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(55, 'MFL 110, Prof. S Ganesh Sundara Raman', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(56, 'MFL 116, 117: Research Scholar''s Room', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(57, 'Smithy Lab', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(58, 'MFL 118: Research Scholar''s Room', 'MM', 'MFL', '12.9925150', '80.2310720', 1),
(59, 'WS 408, Store room', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(60, 'WS 407, Research Scholar''s room and Prof. Sundaresan', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(61, 'WS 406, Prof. G D Janaki Ram', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(62, 'WS 405, Prof. G Phanikumar', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(63, 'WS 404, Prof. S R Bakshi', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(64, 'WS 403, Levitation Lab', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(65, 'WS 402, Automatic Polishing Lab', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(66, 'WS 401, R Suriyakumar(Sr. Technician), Electrical Discharge Machining', 'MM', 'MJL', '12.9925150', '80.2310720', 1),
(67, 'MFL: Metal Forming Lab', 'MM', 'Near Hospital', '12.9925150', '80.2310720', 1),
(68, 'MTL: Materials Testing Lab', 'MM', 'Near Hospital', '12.9925150', '80.2310720', 1),
(69, 'Medical Materials Lab, Prof. T S Sampath Kumar', 'MM', 'North side of MSB, Between HSB and MSB', '12.9925150', '80.2310720', 1),
(70, '101 C Laboratory for durability & long-term performance of concrete', 'CE - BTCM', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(71, '101 H Instrumentation laboratory', 'CE', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(72, '101 G Light weight concrete laboratory', 'CE - BTCM', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(73, '102 C Mist room', 'CE', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(74, '101 Department Workshop', 'CE', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(75, '103 Pavement engg laboratory', 'CE - Transportation engg', 'BSB ground floor - front wing', '12.9896870', '80.2299150', 1),
(76, '124 Unsaturated soil mechanics & rock mechanics laboratory ', 'CE - geotechnical engg', 'BSB ground floor - rear wing', '12.9896870', '80.2299150', 1),
(77, '127 Geosynthetics laboratory', 'CE - geotechnical engg', 'BSB ground floor - rear wing', '12.9896870', '80.2299150', 1),
(78, '129 Advanced soil testing laboratory', 'CE - geotechnical engg', 'BSB ground floor - rear wing', '12.9896870', '80.2299150', 1),
(79, '130 Computational Geomechanics laboratory', 'CE - geotechnical engg', 'BSB ground floor - rear wing', '12.9896870', '80.2299150', 1),
(80, '132,33 Geotechnical engineering B.Tech laboratory', 'CE - geotechnical engg', 'BSB ground floor - rear wing', '12.9896870', '80.2299150', 1),
(81, 'concrete & UTM laboratory', 'CE - BTCM', 'in the way from CRC main entrance to ESB', '12.9899320', '80.2298280', 1),
(82, '207 Autodesk laboratory', 'CE - BTCM', 'BSB first floor - front wing', '12.9896870', '80.2299150', 1),
(83, '228 Asphalt laboratory', 'CE - Transportation engg', 'BSB first floor - rear wing', '12.9896870', '80.2299150', 1),
(84, '240 ITS laboratory', 'CE - Transportation engg', 'BSB first floor - rear wing', '12.9896870', '80.2299150', 1),
(85, 'Structural engineering laboratory', 'CE- Structural engg', 'structural engg department ground floor', '12.9900286', '80.2282445', 1),
(86, 'Glass laboratory', 'CE- Structural engg', 'behind structural engg department ', '12.9894670', '80.2283500', 1),
(87, 'Plate test facility', 'CE- Structural engg', 'behind structural engg department ', '12.9894670', '80.2283500', 1),
(88, 'Casting yard', 'CE- Structural engg', 'behind structural engg department ', '12.9894670', '80.2283500', 1),
(89, 'Advanced composites test facility', 'CE- Structural engg', 'behind structural engg department ', '12.9894670', '80.2283500', 1),
(90, '1-3 EWRE Instrumentation room', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(91, 'Hydraulics and fluid mechanics laboratory', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(92, '5 MOU CoE WWM', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(93, '7 Centre for Environmental Technology - Development, Demonstration & Dissemination (CETeDDD)', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(94, '10 Microbiology laboratory', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(95, '9 Environmental engg laboratory (Air and water quality room)', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(96, '11A Research laboratory', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(97, '14 A Instrumentation and Research laboratory', 'CE - EWRE', 'EWRE block ground floor', '12.9908000', '80.2273910', 1),
(98, 'BT003,National Cancer Tissue Biobank', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(99, 'BT005,Patch clamp lab', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(100, 'BT006,Research lab', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(101, 'BT007,National Facility on "Identification of potential Drug Targets Through Functional Cell Dynamic', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(102, 'BT016,Seminar hall', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(103, 'BT009,Media Autoclave', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(104, 'BT011,Macro Molecular X-Ray Diffractin Facility', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(105, 'Radioactive lab', 'BT', 'Ground Floor: BT', '12.9893790', '80.2277160', 1),
(106, 'BT112,Class room 2', 'BT', 'First Floor: BT', '12.9893790', '80.2277160', 1),
(107, 'BT116,B Tech lab', 'BT', 'First Floor: BT', '12.9893790', '80.2277160', 1),
(108, 'BT110,Class room 3', 'BT', 'First Floor: BT', '12.9893790', '80.2277160', 1),
(109, 'BT118,B Tech lab', 'BT', 'First Floor: BT', '12.9893790', '80.2277160', 1),
(110, 'BT 109, Class room 4', 'BT', 'First Floor: BT', '12.9893790', '80.2277160', 1),
(111, 'BT208,Applied and industrial Microbiology Lab', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(112, 'BT209,Bioengineering and Drug design Lab', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(113, 'BT217,Biosepration lab', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(114, 'BT213,Stem cell and Molecular biology lab', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(115, 'BT216,Bioreaction Engineering Lab', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(116, 'BT214,Central equipment facility', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(117, 'BT218,Bio incubator facility', 'BT', 'Second Floor:BT', '12.9893790', '80.2277160', 1),
(118, 'BT318:DST FIST Facility', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(119, 'BT308:Signal Transduction And Structional BIology lab', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(120, 'BT317:Molecular Oncology', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(121, 'BT311:Biomass CoNversion And Bio Remediation Lab ', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(122, 'BT315:Electrophysiology Lab', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(123, 'BT312:Central equipment Facility', 'BT', 'Third Floor:BT', '12.9893790', '80.2277160', 1),
(124, 'BT 412:Central Equipment Facility', 'BT', 'Fourth Floor:BT', '12.9893790', '80.2277160', 1),
(125, 'BT414:Cancer biology Lab', 'BT', 'Fourth Floor:BT', '12.9893790', '80.2277160', 1),
(126, 'BT415:Vascular biology Lab', 'BT', 'Fourth Floor:BT', '12.9893790', '80.2277160', 1),
(127, 'BT411:Molecular Virology lab', 'BT', 'Fourth Floor:BT', '12.9893790', '80.2277160', 1),
(128, 'BT408:BIoorganic and chemical Biology lab', 'BT', 'Fourth Floor:BT', '12.9893790', '80.2277160', 1),
(129, 'BT508:Bioinformatics Infrastructure Facility and DCF', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(130, 'BT510:Computational biophysics and Neurosciences Lab', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(131, 'BT516:Theoretical Biology and biophysics protein Bioinformatics Lab', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(132, 'BT515:Biomaterials Lab', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(133, 'BT514:Cardiovascular Genetics Lab', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(134, 'BT512:Tissue Processing Facility', 'BT', 'Fifth Floor:BT', '12.9893790', '80.2277160', 1),
(135, '101 Workshop', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(136, '102 EB Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(137, '103 Conference Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(138, '104 HOD Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(139, '105 Engineering Design Office', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(140, '106/107 Product Display Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(141, '108 Class Room (Seats 40X2)', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(142, '109 Class Room (Seats 28X2)', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(143, '110 Stores', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(144, '111 Faculty Room (Soma Guhathakurta)', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(145, '112 Meeting Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(146, '113 Meeting Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(147, '114 Faculty Room (Balkrishna C Rao)', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(148, '115 Faculty Room (Asokan T)', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(149, '116 Meeting Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(150, '117 Discussion Room', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(151, '118 Model Analysis Laboratory', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(152, '119 Prime Engine Laboratory', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(153, '120 Rapid Prototyping Laboratory', 'ED', 'Ground Floor', '12.9895410', '80.2251280', 1),
(154, '201 Controls/ Microprocessor Laboratory', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(155, '202 EB Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(156, '203 A/C Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(157, '204 CAD Laboratory', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(158, '205 Tyre Laboratory', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(159, '206 Seminar Hall (Seats 10X2)', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(160, '207 Class Room (Seats 48X2)', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(161, '208 Office Annex', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(162, '209 Faculty Room (Ramanathan M)', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(163, '210 Meeting Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(164, '211 Meeting Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(165, '212 Faculty Room (Krishna Kumar R)', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(166, '213 Faculty Room (Shankar Ram C S)', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(167, '214 Meeting Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(168, '215 Meeting Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(169, '216 Faculty Room', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(170, '217 Opto-Mechatronics Laboratory', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(171, '218 Mechatronics Laboratory', 'ED', 'First Floor', '12.9895410', '80.2251280', 1),
(172, '301/Robotics Laboratory', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(173, '302/EB Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(174, '303/A/C Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(175, '304/Product Design and Graphic Art LAb', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(176, '305/Rehabilitation Bioengineering Laborator', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(177, '306/Class Room (Seats 40x2)', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(178, '307/Class Room (Seats 20x2)', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(179, '308/Office Annex', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(180, '309/Faculty Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(181, '310/Meeting Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(182, '311/Faculty Room ( Nilesh J Vasa)', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(183, '312/Meeting Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(184, '313/Meeting Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(185, '314/Faculty Room (Palaniappan Ramu)', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(186, '315/Faculty Room ( Venkatesh Balasubramanian)', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(187, '316/Meeting Room', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(188, '317/PIV Laboratory/Smart Materials Laboratory/Digital Imaging Laboratory', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(189, '318/3D Imaging and Additive Manufacturing Laboratory', 'ED', 'Second Floor', '12.9895410', '80.2251280', 1),
(190, '401 Microwave/biomedical laboratory', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(191, '402 EB Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(192, '403 UPS Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(193, '404 Automation/Biomedical Laboratory', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(194, '405 Trivitron Innovation Center', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(195, '406 Class Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(196, '407 Seminar Discussion Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(197, '408 Mini Seminar room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(198, '409 Office Annex', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(199, '410 Faculty Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(200, '411 Faculty Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(201, '412 Faculty Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(202, '413 Faculty Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(203, '414 Faculty Room (Ganapathy Krishnamurthy)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(204, '415 Faculty Room (Sandipan Bandyopadhyay)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(205, '416 Faculty Room (Sankar J Subramanian)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(206, '417 Faculty Room (Srikanth Vedantam)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(207, '418 Faculty Room (Saravana Kumar)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(208, '419 Faculty Room', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(209, '420 Faculty Room (Kavita Arunachalam)', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(210, '421 Tissue Engineering Lab', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(211, '422 Anatomy/Physiology Laboratory', 'ED', 'Third Floor', '12.9895410', '80.2251280', 1),
(212, 'Propellant Combustion Building', 'Aerospace Engg', ' ', '12.9917530', '80.2284080', 1),
(213, 'Rarifid gas dynamics lab', 'Aerospace Engg', '', '12.9917530', '80.2284080', 1),
(214, 'Rockets and missiles lab', 'Aerospace Engg', '', '12.9917530', '80.2284080', 1),
(215, 'NCCRD', 'Aerospace Engg', '', '12.9917530', '80.2284080', 1),
(216, 'Biomedical Ultrasound lab', 'Applied Mechanics', 'MSB244, First floor Mechanical Sciences Block', '12.9908300', '80.2309090', 1),
(217, 'Neuromechanics Lab', 'Applied Mechanics', 'Aerospace building, ASE155', '12.9917530', '80.2284080', 1),
(218, 'Non-Invasive Imaging and Diagnostic Lab (NIID)', 'Applied Mechanics', 'MSB 207b', '12.9908300', '80.2309090', 1),
(219, 'Bioelectronics and instrumentation lab', 'Applied Mechanics', 'MSB 356, second floor Mechanical sciences block', '12.9908300', '80.2309090', 1),
(220, 'Fracture & Fatigue Lab', 'Applied Mechanics', 'MSB 232', '12.9908300', '80.2309090', 1),
(221, 'Computational Systems Biology Lab', 'Biotech', 'BT516', '12.9893790', '80.2277160', 1),
(222, 'Plant Cell Technology Lab', 'Biotechnology', 'BT316', '12.9893790', '80.2277160', 1),
(223, 'Bioengineering and Drug Design Lab', 'Biotechnology', '209, Second Floor', '12.9893790', '80.2277160', 1),
(224, 'Chemical Engineering Laboratory', 'Chemical Engineering', '', '12.9879190', '80.2318790', 1),
(225, 'Polymer Chemistry Lab', 'Chemisry Dept.', 'First floor, 221', '12.9879190', '80.2318790', 1),
(226, 'DCF', 'Civil Egineering', 'Groundfloor beside HoD office', '12.9898590', '80.2292690', 1),
(227, 'ACT Lab', 'Computer Science and Engineeri', 'BSB 335, Second floor Building Sciences Block', '12.9898590', '80.2292690', 1),
(228, 'Theoretical Computer Science (TCS) Lab', 'Computer Science and Engineeri', 'BSB 324, Second floor Building Sciences Block', '12.9898590', '80.2292690', 1),
(229, 'Artificial Intelligence and Databases (AIDB) Lab', 'Computer Science and Engineeri', 'BSB 366, Second floor Building Sciences Block', '12.9898590', '80.2292690', 1),
(230, 'PACE Lab', 'Computer Science and Engineeri', 'BSB 331A, Second floor, Building Sciences Block', '12.9898590', '80.2292690', 1),
(231, 'DON Lab', 'Computer Science and Engineeri', 'BSB 328, Second floor, Building Sciences Block', '12.9898590', '80.2292690', 1),
(232, 'DOS Lab', 'Computer Science and Engineeri', 'BSB 345, Second floor, Building Sciences Block', '12.9898590', '80.2292690', 1),
(233, 'Grid Lab', 'Computer Science and Engineeri', 'BSB 338, Second floor, Building Sciences Block', '12.9898590', '80.2292690', 1),
(234, 'Reconfigurable and Intelligent Systems (RISE) Lab', 'Computer Science and Engineeri', 'Second Floor, CSE Block', '12.9890100', '80.2295080', 1),
(235, 'Systems Lab', 'Computer Science and Engineeri', 'Second Floor, CSE Block', '12.9890100', '80.2295080', 1),
(236, 'Network Systems Lab', 'Computer Science and Engineeri', 'BSB 370, BSB 371, Second Floor, Building Science Block', '12.9898590', '80.2292690', 1),
(237, 'Software Lab (DCF)', 'Computer Science and Engineeri', 'Second Floor, CSE Block', '12.9890100', '80.2295080', 1),
(238, 'M.Tech DCF', 'Computer Science and Engineeri', 'Second Floor, CSE Block', '12.9890100', '80.2295080', 1),
(239, 'Strutural biology lab', 'Department of Biotechnology', '', '12.9893790', '80.2277160', 1),
(240, 'Computational Geomechanics Lab', 'Department of Civil Engineerin', 'BSB 301, Next to Vishweshraiya hall, Ground floor', '12.9898590', '80.2292690', 1),
(241, 'Smart Material Characterization Lab', 'Dept. of Applied Mechanics', 'MSB 225', '12.9908300', '80.2309090', 1),
(242, 'Active Material Structure & Systems Lab', 'Dept. of Applied Mechanics', 'MSB 206B', '12.9908300', '80.2309090', 1),
(243, 'Computational Neuroscience Lab', 'Dept. of Biotechnology', 'BT 510', '12.9893790', '80.2277160', 1),
(244, 'Optical Communication Engineering and Networks(OCEAN) lab', 'Elec', '', '12.9883780', '80.2307200', 1),
(245, 'Power Quality and Renewable Energy Lab', 'Electrcial Sciences Block', 'ESB 342, 354', '12.9883780', '80.2307200', 1),
(246, 'Texas Instruments Lab', 'Electrical', 'CSD 204', '12.9883780', '80.2307200', 1),
(247, 'New Integrated Electronics Lab', 'Electrical Engg', 'CSD  Ground Floor', '12.9883780', '80.2307200', 1),
(248, 'MEMS And Photonics Lab', 'Electrical Engg', 'ESB Ground Floor', '12.9883780', '80.2307200', 1),
(249, 'Fiber Laser Laboratory (FiL Lab)', 'Electrical Engg', 'CSD 1st floor', '12.9883780', '80.2307200', 1),
(250, 'Experimental Optics Laboratory (ExpO)', 'Electrical Engg', 'CSD 1st floor', '12.9883780', '80.2307200', 1),
(251, 'Central electronics Center', 'Electrical Engg', 'ESB Messinier floor', '12.9883780', '80.2307200', 1),
(252, 'ATMEL Lab', 'Electrical Engg', 'ESB Messinier floor near to CEC', '12.9883780', '80.2307200', 1),
(253, 'Networks and Stochastic Systems lab', 'Electrical Engg', 'ESB 218', '12.9883780', '80.2307200', 1),
(254, 'RF Lab', 'Electrical Engineering', 'CSD 202', '12.9883780', '80.2307200', 1),
(255, 'TI Lab', 'Electrical Engineering', 'CSD 204', '12.9883780', '80.2307200', 1),
(256, 'Power System Dynamics Lab', 'Electrical Engineering', 'ESB 340', '12.9883780', '80.2307200', 1),
(257, 'Power System Research Lab', 'Electrical Engineering', 'ESB 341', '12.9883780', '80.2307200', 1),
(258, 'Speech processing lab', 'Electrical Engineering', 'CSD 313, Second floor, Despande block', '12.9883780', '80.2307200', 1),
(259, 'Integrated Optoelectronics Lab', 'Electrical Engineering', 'ESB 002', '12.9883780', '80.2307200', 1),
(260, 'Optical Communication Engineering and Computer Networks (OCEANS) lab', 'Electrical Engineering', 'CSD 2nd Floor', '12.9883780', '80.2307200', 1),
(261, 'CSD151', 'Electrical Engineering', 'CSD 1st Floor', '12.9883780', '80.2307200', 1),
(262, 'Intel Wireless Lab(IWL)', 'Electrical Engineering', '', '12.9883780', '80.2307200', 1),
(263, 'Dynamics and Control Lab', 'Electrical Engineering', 'ESB 204B', '12.9883780', '80.2307200', 1),
(264, 'Mechnics of Materials and Strucutres Lab', 'Engineering Design dept. 2nd f', 'ED318', '12.9893790', '80.2277160', 1),
(265, 'Microwave lab', 'Engineering Design dept. 3nd f', 'Room # 401', '12.9893790', '80.2277160', 1),
(266, 'Indoor Air Quality Simulation Lab', 'Environment and Water resource', 'Room 1, Ground Floor', '12.9908000', '80.2273910', 1),
(267, 'Hydraulic and fluid mechanics lab', 'Environmental and Water Resour', 'Ground floor', '12.9908000', '80.2273910', 1),
(268, '', 'Geotechnical Engg Division, De', 'BSB 135', '12.9898590', '80.2292690', 1),
(269, 'Geoenvironmental Lab', 'Geotechnical engg Division,Dep', 'BSB 125,BSB 131,Ground Floor', '12.9898590', '80.2292690', 1),
(270, 'Centifuge Lab', 'Geotechnical engg Division,Dep', 'BSB Ground Floor', '12.9898590', '80.2292690', 1),
(271, 'Center for contuniing education', 'ICSR 2nd floor', 'ICSR 2nd floor', '12.9916600', '80.2321850', 1),
(272, 'Center for Innovation', 'IIT Madras', 'Near Workshop', '12.9915990', '80.2310060', 1),
(273, 'Computational Mechanics Lab', 'Machine Design Section, Depart', 'MDS215', '12.9917420', '80.2268100', 1),
(274, 'Centre for Non-Destructive Evaluation (CNDE)', 'Machine Design Section, Depart', 'MDS 416,417,312', '12.9917420', '80.2268100', 1),
(275, 'HPCF (High Performance Computing Facility)', 'Machine Design Section, Depart', 'MDS Second floor', '12.9917420', '80.2268100', 1),
(276, 'Tribology Lab', 'Machine Design Section, Depart', 'MDS Ground floor', '12.9917420', '80.2268100', 1),
(277, 'Computational Acoustics and Noise Control Lab', 'Machine Design Section, Depart', 'MDS 403', '12.9917420', '80.2268100', 1),
(278, 'Computer Aided Engineering Lab', 'Machine Design Section, Depart', 'MDS First floor', '12.9917420', '80.2268100', 1),
(279, 'Soil Dynamics and Earthquake Engineering Lab', 'Machine Design Section, Depart', 'Applied Mechanics building, adjacent to Aerospace (left)', '12.9917020', '80.2278110', 1),
(280, 'Centre for Non Destructive Evaluation', 'Machine Design Section, Depart', 'MDS 312', '12.9917420', '80.2268100', 1),
(281, 'High Performance MWF Lab', 'Manufacturing Engineering Sect', 'Machine tool Lab, Workshoop', '12.9915990', '80.2310060', 1),
(282, 'High Strain Lab', 'Materials Processing Section (', '', '12.9911720', '80.2297490', 1),
(283, 'Electron Microscopy Lab', 'Metallurgical and Materials En', 'HSB 135', '12.9904140', '80.2319880', 1),
(284, 'Computational Materials Science Lab', 'Metallurgical and Materials En', 'MSB 108 Ground Floor beside staircase', '12.9908300', '80.2309090', 1),
(285, 'Fuel cell Laboratory', 'Metallurgical and Materials En', 'Back side of Materials Processing section', '12.9909910', '80.2286800', 1),
(286, 'Electrometallurgy Lab (MSB101)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(287, 'Fuel Cells Lab (MSB 102)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(288, 'Chemical Metallurgy Lab (MSB 103A)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(289, 'HR-SEM: High Resolution Scanning Electron Microscopy Lab (MSB 103B)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(290, 'AFM/SPM: Atom Force Microscope / Scanning Probe Microscope (MSB 103C)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(291, 'MME Seminar Hall (MSB 104)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(292, 'High Temperature Lab and Materials Testing (MSB 106)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(293, 'Heat Treatment and Materials Thermodynamics Lab (MSB 108C)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(294, 'Nano Technology Lab (MSB 201)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(295, 'Corrosion Lab (MSB 202)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(296, 'Physical Metallurgy Lab (MSB 203)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(297, 'Metallography Lab (MSB 204)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(298, 'Polishing Room (MSB 205)', 'Metallurgical and Materials En', '', '12.9909910', '80.2286800', 1),
(299, 'Materials Processing Section (MPS) or Metallurgy Workshop', 'Metallurgical and Materials En', 'Next to CRC Bus stop - towards Velachery gate', '12.9909910', '80.2286800', 1),
(300, 'Research Scholars Room - MPS 207', 'Metallurgical and Materials En', 'MPS 207', '12.9911720', '80.2297490', 1),
(301, 'Indo German Centre for Sustainability', 'Multi-disciplinary', 'First floor, MSRC Block', '12.9893950', '80.2312800', 1),
(302, 'Brahmaputra Hostel', '', '', '12.9841060', '80.2346960', 3),
(303, 'Sports Complex', '', '', '12.9868520', '80.2330690', 4),
(304, 'New Hostels', '', '', '12.9859660', '80.2327320', 3),
(305, 'The Uncertainty Lab', 'Applied Mechanics', 'MSB 227', '12.9908300', '80.2309090', 1),
(306, 'Gurunath Juice Center', '', '', '12.9866670', '80.2354030', 2),
(307, 'Leo Fortune', '', '', '12.9866670', '80.2354030', 2),
(308, 'Himalaya Student''s Mess', '', '', '12.9870300', '80.2359660', 2),
(309, 'Ramu''s Tea Stall', '', '', '12.9870900', '80.2361660', 2),
(310, 'Coffee Day Xpress', '', '', '12.9870530', '80.2357230', 2),
(311, 'Cauvery Mess', '', '', '12.9854750', '80.2331080', 2),
(312, 'Zaitoon', '', '', '12.9854110', '80.2363660', 2),
(313, 'Supriya Andhra Biryani Point', '', '', '12.9842160', '80.2388640', 2),
(314, 'Alif Restaurant', '', '', '12.9843264', '80.2387671', 2),
(315, 'Mummy Daddy Andhra Mess', '', '', '12.9843264', '80.2387671', 2),
(316, 'Krishna Hostel', '', '', '12.9846820', '80.2332640', 3),
(317, 'Cauvery Hostel', '', '', '12.9859700', '80.2334280', 3),
(318, 'Tapti Hostel', '', '', '12.9848690', '80.2350840', 3),
(319, 'Saraswathi Hostel', '', '', '12.9851060', '80.2368920', 3),
(320, 'Godavari Hostel', '', '', '12.9861470', '80.2370990', 3),
(321, 'Alakananda Hostel', '', '', '12.9854690', '80.2390820', 3),
(322, 'Jamuna Hostel', '', '', '12.9863870', '80.2389270', 3),
(323, 'Mandakini Hostel', '', '', '12.9865050', '80.2400010', 3),
(324, 'Ganga Hostel', '', '', '12.9870800', '80.2389880', 3),
(325, 'Pampa Hostel', '', '', '12.9876420', '80.2383070', 3),
(326, 'Mahanadi Hostel', '', '', '12.9879900', '80.2391020', 3),
(327, 'Thamirabarani Hostel', '', '', '12.9883770', '80.2382890', 3),
(328, 'Sindhu Hostel', '', '', '12.9880740', '80.2375980', 3),
(329, 'Sabarmati Hostel', '', '', '12.9894980', '80.2343060', 3),
(330, 'Sharavati Hostel', '', '', '12.9901920', '80.2342760', 3),
(331, 'Narmada Hostel', '', '', '12.9858890', '80.2353010', 3),
(332, 'Taramani Guest House', '', '', '12.9867420', '12.9867420', 4),
(333, 'Muslim Prayer Hall', '', '', '12.9871470', '80.2353160', 4),
(334, 'Hostel Electrical Maintenance', '', '', '12.9871670', '80.2353920', 4),
(335, 'CCW OFFICE AND ICICI ATM', '', '', '12.9871870', '80.2375060', 4),
(336, 'IIT Madras Alumni Association', '', '', '12.9870660', '80.2375260', 4),
(337, 'Students Activity Centre', '', '', '12.9893890', '80.2376310', 4),
(338, 'IIT Stadium', '', '', '12.9919050', '80.2366550', 4),
(339, 'Central Library', '', '', '12.9906970', '80.2337690', 4),
(340, 'Administration Block', '', '', '12.9908010', '80.2329320', 4),
(341, 'IC&SR Building', '', '', '12.9916640', '80.2321630', 4),
(342, 'Open Air Theater', '', '', '12.9889970', '80.2335450', 4),
(343, 'CLT', '', '', '12.9896170', '80.2321040', 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instimaps`
--
ALTER TABLE `instimaps`
  ADD CONSTRAINT `instimaps_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
