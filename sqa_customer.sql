-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 09, 2019 at 10:19 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqa_customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `answer_ID` int(5) NOT NULL AUTO_INCREMENT,
  `question_ID` int(5) NOT NULL,
  `groupQuestion_ID` int(5) NOT NULL,
  `rate_Answer` int(1) NOT NULL COMMENT 'คะแนนที่ได้',
  `answer_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_Name` varchar(150) NOT NULL,
  `customer_Email` varchar(150) NOT NULL,
  PRIMARY KEY (`answer_ID`,`question_ID`,`groupQuestion_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_ID` int(5) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) DEFAULT NULL,
  `comment_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_Name` varchar(150) NOT NULL,
  `customer_Email` varchar(150) NOT NULL,
  PRIMARY KEY (`comment_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_ID` int(5) NOT NULL AUTO_INCREMENT,
  `company_Name` varchar(150) NOT NULL,
  `customer_Name` varchar(150) NOT NULL,
  `customer_Position` varchar(150) NOT NULL,
  `customer_Telephone` varchar(10) NOT NULL,
  `customer_Email` varchar(150) NOT NULL,
  `customer_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_ID` int(5) NOT NULL AUTO_INCREMENT,
  `groupQuestion_ID` int(5) NOT NULL,
  `question` varchar(200) NOT NULL,
  PRIMARY KEY (`question_ID`,`groupQuestion_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_ID`, `groupQuestion_ID`, `question`) VALUES
(1, 1, 'มีการแต่งกาย บุคลิกที่สุภาพเรียบร้อย และการรักษาพฤติกรรม มารยาทอันดี'),
(2, 1, 'มีความตรงต่อเวลา มีวินัย'),
(3, 1, 'มีความเอาใจใส่ กระตือรือร้น และพร้อมที่จะให้บริการ'),
(4, 1, 'มีความรู้ มีความสามาถ และความเชี่ยวชาญในการให้บริการงาน'),
(5, 1, 'มีความซื่อสัตย์สุจริตในการปฏิบัติหน้าที่ เช่น ไม่ขอ และไม่รับสิ่งตอบแทน'),
(6, 2, 'มีการประสานงานได้อย่างมีประสิทธิภาพ สามารถติดต่อได้เสมอ ทันการณ์'),
(7, 2, 'ความสามารถในการหาทางแก้ไขปัญหาได้ตรงจุด'),
(8, 2, 'การให้ข้อเสนอแนะ หรือนำเสนอแนวทางการทำงานอย่างสร้างสรรค์'),
(9, 2, 'การตรงต่อเวลา'),
(10, 2, 'ความน่าเชื่อถือ สามารถประสานงานจนงานนั้นสำเร็จลุล่วง'),
(11, 3, 'ได้รับการส่งมอบงานตรงเวลาและสามารถส่งมอบงานตามสัญญา'),
(12, 3, 'ได้รับการบริการ/ผลงานที่คุ้มค่ากับงบประมาณที่ใช้ไป'),
(13, 3, 'ความพึงพอใจโดยภาพรวมที่ได้รับจากการบริการ'),
(14, 3, 'รายงาน/เอกสารประกอบการให้บริการมีความถูกต้องเรียบร้อย');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
