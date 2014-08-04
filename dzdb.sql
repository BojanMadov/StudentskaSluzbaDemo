-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2014 at 07:59 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dzdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `korisnickoime` varchar(20) NOT NULL,
  `lozinka` varchar(10) NOT NULL,
  `ime` varchar(10) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `telefon` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tipkorisnika` set('admin','profesor','demonstrator','') NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `zvanje` set('profesor','asistent','saradnik','') NOT NULL,
  `odsek` varchar(10) NOT NULL,
  `godstudija` set('Igod','IIgod','IIIgod','IVgod') NOT NULL,
  `prosek` double(10,2) NOT NULL,
  PRIMARY KEY (`korisnickoime`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnickoime`, `lozinka`, `ime`, `prezime`, `telefon`, `email`, `tipkorisnika`, `status`, `zvanje`, `odsek`, `godstudija`, `prosek`) VALUES
('admin', 'admin', 'Bojan', 'Madov', 641314349, 'madovb@gmail.com', 'admin', 1, '', '', '', 0.00),
('ddusko', 'ddusko', 'Dusko', 'Dugousko', 64100666, 'dusko@live.com', 'demonstrator', 1, '', 'tek', 'Igod', 0.00),
('demo', 'demo', 'Demolition', 'Derby', 10000, 'derbi@derbi.com', 'demonstrator', 1, '', 'rti', 'Igod', 9.48),
('profa', 'profa', 'Violeta', 'Blazic', 12345, 'vikica@gmail.com', 'profesor', 1, 'profesor', '', '', 0.00),
('supergenije', 'super', 'Pera', 'Kojot', 0, 'pera@kojot.rs', 'demonstrator', 1, '', 'rti', 'IVgod', 9.13),
('test', 'test', 'test', 'test', 111, 'test', 'demonstrator', 0, '', 'tek', 'IIIgod', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `labvezbe`
--

CREATE TABLE IF NOT EXISTS `labvezbe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(20) NOT NULL,
  `predmetsk` varchar(8) NOT NULL,
  `datum` varchar(20) NOT NULL,
  `trajanje` int(11) NOT NULL,
  `laboratorija` varchar(4) NOT NULL,
  `tipaktivnosti` set('1.0','1.2','1.3','1.0') NOT NULL,
  `status` set('neaktivna','aktivna','zakljucana','') NOT NULL,
  `profsk` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `predmetsk` (`predmetsk`),
  KEY `profsk` (`profsk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `labvezbe`
--

INSERT INTO `labvezbe` (`id`, `naziv`, `predmetsk`, `datum`, `trajanje`, `laboratorija`, `tipaktivnosti`, `status`, `profsk`) VALUES
(1, 'Prva vezba', 'FIM2ZOOP', '05/19/2014', 2, 'e01', '1.3', 'zakljucana', 'profa'),
(8, 'Kolokvijum1', 'FIM2ZOOP', '05/07/2014', 1, 'A12', '1.0', 'neaktivna', 'profa'),
(9, 'Druga vezba', 'FIM4LPPS', '05/14/2014', 3, 'E02', '1.0', 'aktivna', 'profa'),
(10, 'Treca vezba', 'FIM2ZOOP', '05/31/2014', 2, 'A11', '1.0', 'aktivna', 'profa');

-- --------------------------------------------------------

--
-- Table structure for table `logging`
--

CREATE TABLE IF NOT EXISTS `logging` (
  `tstamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `korisnickoime` varchar(255) DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logging`
--

INSERT INTO `logging` (`tstamp`, `korisnickoime`, `login`) VALUES
('2014-04-27 14:15:37', 'admin', 1),
('2014-04-27 14:17:56', 'admin', 1),
('2014-04-27 14:22:43', 'admin', 1),
('2014-04-27 14:27:58', 'admin', 1),
('2014-04-27 14:29:41', 'admin', 1),
('2014-04-27 14:30:25', 'admin', 1),
('2014-04-27 14:31:31', 'admin', 1),
('2014-04-27 14:36:42', 'admin', 1),
('2014-04-27 14:39:11', 'admin', 1),
('2014-04-27 14:39:33', 'admin', 1),
('2014-04-27 16:53:47', 'admin', 1),
('2014-04-27 19:39:51', 'profa', 1),
('2014-04-27 19:41:49', 'demo', 1),
('2014-04-27 19:49:31', 'test', 1),
('2014-04-27 19:54:04', 'bfgb', 1),
('2014-04-27 19:55:28', 'Saradnik', 1),
('2014-04-27 20:19:59', 'vsdv', 1),
('2014-04-28 07:01:47', 'admin', 1),
('2014-04-28 07:05:05', 'admin', 1),
('2014-04-28 07:23:48', 'admin', 1),
('2014-04-28 07:23:52', 'admin', 0),
('2014-04-28 07:24:02', 'admin', 1),
('2014-04-28 07:33:11', 'admin', 1),
('2014-04-28 07:39:17', 'admin', 1),
('2014-04-28 07:39:54', 'admin', 1),
('2014-04-28 07:40:14', 'admin', 1),
('2014-04-28 07:42:43', 'admin', 1),
('2014-04-28 08:05:27', 'admin', 1),
('2014-04-28 08:16:34', 'admin', 1),
('2014-04-28 08:18:07', 'admin', 1),
('2014-04-28 08:33:29', 'admin', 1),
('2014-04-28 08:42:43', 'admin', 1),
('2014-04-28 08:45:43', 'admin', 1),
('2014-04-28 08:52:38', 'admin', 1),
('2014-04-28 09:29:53', 'admin', 0),
('2014-04-28 09:30:30', 'admin', 1),
('2014-04-29 16:57:27', 'admin', 1),
('2014-04-29 17:20:24', 'admin', 1),
('2014-04-29 17:25:00', 'admin', 1),
('2014-04-29 17:46:02', 'admin', 1),
('2014-04-29 18:07:21', 'admin', 0),
('2014-04-29 18:07:56', 'admin', 1),
('2014-04-29 18:09:13', 'admin', 0),
('2014-04-29 18:11:41', 'admin', 1),
('2014-04-29 18:15:25', 'admin', 0),
('2014-04-29 18:15:41', 'admin', 1),
('2014-04-29 18:15:51', 'admin', 0),
('2014-04-29 18:55:53', 'admin', 1),
('2014-04-29 18:56:32', 'admin', 1),
('2014-04-29 18:56:46', 'admin', 1),
('2014-04-29 18:57:29', 'admin', 1),
('2014-04-29 18:58:50', 'admin', 1),
('2014-04-29 19:00:31', 'admin', 1),
('2014-04-29 19:07:23', 'admin', 1),
('2014-04-29 19:11:50', 'admin', 1),
('2014-04-29 19:27:19', 'admin', 1),
('2014-04-29 19:43:05', 'demo', 1),
('2014-04-29 19:43:17', 'demo', 0),
('2014-04-29 19:43:23', 'admin', 1),
('2014-04-29 19:43:25', 'admin', 0),
('2014-04-29 19:43:30', 'demo', 1),
('2014-04-29 19:57:03', 'profa', 1),
('2014-04-29 19:57:13', 'profa', 0),
('2014-04-29 19:57:19', 'demo', 1),
('2014-04-29 19:57:22', 'demo', 0),
('2014-04-29 19:57:28', 'admin', 1),
('2014-04-29 19:57:48', 'admin', 0),
('2014-04-29 19:57:57', 'profa', 1),
('2014-04-29 19:58:03', 'profa', 0),
('2014-04-29 20:09:08', 'demo', 1),
('2014-04-29 20:13:51', 'demo', 1),
('2014-04-29 20:14:34', 'demo', 1),
('2014-04-29 20:17:50', 'demo', 1),
('2014-04-29 20:23:39', 'demo', 1),
('2014-04-29 20:24:49', 'demo', 1),
('2014-04-29 20:31:04', 'demo', 1),
('2014-04-29 20:32:10', 'demo', 1),
('2014-04-29 20:33:19', 'demo', 1),
('2014-04-29 20:38:27', 'demo', 1),
('2014-04-29 20:40:45', 'demo', 0),
('2014-04-29 20:40:58', 'profa', 1),
('2014-04-29 20:41:08', 'profa', 0),
('2014-04-29 20:41:14', 'demo', 1),
('2014-04-29 20:41:47', 'demo', 0),
('2014-04-29 20:41:53', 'admin', 1),
('2014-04-29 20:43:08', 'admin', 0),
('2014-04-29 20:43:16', 'demo', 1),
('2014-04-30 11:33:22', 'profa', 1),
('2014-04-30 11:33:46', 'profa', 1),
('2014-04-30 11:39:48', 'profa', 1),
('2014-04-30 11:45:45', 'profa', 1),
('2014-04-30 11:47:45', 'admin', 1),
('2014-04-30 11:47:48', 'admin', 0),
('2014-04-30 11:48:06', 'profa', 1),
('2014-04-30 11:51:08', 'profa', 1),
('2014-04-30 11:52:05', 'profa', 1),
('2014-04-30 12:17:35', 'profa', 1),
('2014-04-30 12:23:20', 'profa', 1),
('2014-04-30 12:25:24', 'profa', 1),
('2014-04-30 12:35:37', 'profa', 1),
('2014-04-30 12:37:21', 'profa', 1),
('2014-04-30 12:38:01', 'profa', 1),
('2014-04-30 12:40:03', 'profa', 1),
('2014-04-30 12:40:31', 'profa', 1),
('2014-04-30 12:40:49', 'profa', 1),
('2014-04-30 12:41:12', 'profa', 1),
('2014-04-30 12:42:32', 'profa', 1),
('2014-04-30 12:58:04', 'profa', 1),
('2014-04-30 13:00:02', 'profa', 1),
('2014-04-30 13:01:50', 'profa', 1),
('2014-04-30 13:06:13', 'profa', 1),
('2014-04-30 13:07:05', 'profa', 1),
('2014-04-30 13:54:09', 'profa', 1),
('2014-04-30 13:59:02', 'profa', 1),
('2014-04-30 14:05:10', 'profa', 1),
('2014-04-30 14:05:46', 'profa', 1),
('2014-04-30 14:14:11', 'admin', 1),
('2014-04-30 14:18:37', 'profa', 1),
('2014-04-30 14:21:48', 'profa', 1),
('2014-04-30 14:28:36', 'profa', 1),
('2014-04-30 14:31:16', 'profa', 1),
('2014-04-30 14:35:22', 'profa', 1),
('2014-04-30 14:36:59', 'profa', 1),
('2014-04-30 14:42:14', 'profa', 1),
('2014-04-30 14:45:21', 'profa', 1),
('2014-04-30 14:49:36', 'profa', 1),
('2014-04-30 16:21:46', 'profa', 1),
('2014-04-30 16:27:18', 'profa', 1),
('2014-04-30 16:30:30', 'profa', 1),
('2014-04-30 16:37:58', 'profa', 1),
('2014-04-30 16:44:53', 'profa', 1),
('2014-04-30 16:50:51', 'profa', 1),
('2014-04-30 16:57:28', 'profa', 1),
('2014-04-30 16:59:28', 'profa', 0),
('2014-04-30 16:59:35', 'profa', 1),
('2014-04-30 17:01:43', 'profa', 1),
('2014-04-30 17:06:24', 'profa', 1),
('2014-04-30 17:08:07', 'profa', 1),
('2014-04-30 17:11:13', 'profa', 1),
('2014-04-30 17:14:17', 'profa', 1),
('2014-04-30 17:19:50', 'profa', 1),
('2014-04-30 21:24:55', 'profa', 1),
('2014-04-30 21:32:13', 'profa', 1),
('2014-04-30 21:42:24', 'profa', 1),
('2014-04-30 21:50:32', 'profa', 1),
('2014-04-30 21:54:11', 'profa', 1),
('2014-04-30 22:01:21', 'profa', 1),
('2014-04-30 22:05:22', 'profa', 1),
('2014-04-30 22:07:35', 'profa', 1),
('2014-04-30 22:38:13', 'profa', 0),
('2014-04-30 22:38:24', 'demo', 1),
('2014-04-30 22:46:30', 'admin', 1),
('2014-04-30 22:47:38', 'admin', 0),
('2014-04-30 22:47:46', 'demo', 1),
('2014-04-30 23:10:32', 'admin', 1),
('2014-04-30 23:15:04', 'admin', 1),
('2014-04-30 23:19:12', 'admin', 1),
('2014-04-30 23:21:57', 'admin', 1),
('2014-05-01 07:15:30', 'profa', 1),
('2014-05-01 07:20:48', 'profa', 1),
('2014-05-01 07:28:00', 'profa', 1),
('2014-05-01 08:08:36', 'profa', 1),
('2014-05-01 08:15:20', 'profa', 1),
('2014-05-01 08:20:54', 'profa', 1),
('2014-05-01 08:21:37', 'profa', 1),
('2014-05-01 09:12:01', 'profa', 1),
('2014-05-01 09:19:42', 'profa', 1),
('2014-05-01 09:23:54', 'profa', 0),
('2014-05-01 09:24:01', 'admin', 1),
('2014-05-01 09:24:09', 'test', 0),
('2014-05-01 09:24:16', 'profa', 1),
('2014-05-01 09:24:47', 'profa', 0),
('2014-05-01 09:24:54', 'admin', 1),
('2014-05-01 09:28:09', 'test', 0),
('2014-05-01 09:28:16', 'demo', 1),
('2014-05-01 09:29:24', 'demo', 0),
('2014-05-01 09:30:09', 'profa', 1),
('2014-05-01 09:52:30', 'profa', 1),
('2014-05-01 09:55:41', 'profa', 1),
('2014-05-01 09:59:07', 'profa', 1),
('2014-05-01 09:59:48', 'profa', 1),
('2014-05-01 10:42:52', 'profa', 1),
('2014-05-02 08:42:50', 'admin', 1),
('2014-05-02 08:42:56', 'admin', 0),
('2014-05-02 08:43:02', 'demo', 1),
('2014-05-02 08:43:11', 'demo', 0),
('2014-05-02 08:43:38', 'profa', 1),
('2014-05-02 08:48:05', 'profa', 1),
('2014-05-02 08:53:11', 'profa', 1),
('2014-05-02 08:55:13', 'profa', 0),
('2014-05-02 08:55:21', 'demo', 1),
('2014-05-02 08:56:04', 'demo', 0),
('2014-05-02 08:56:12', 'admin', 1),
('2014-05-02 08:57:30', 'admin', 0),
('2014-05-02 08:57:38', 'demo', 1),
('2014-05-02 11:59:28', 'demo', 1),
('2014-05-02 12:03:39', 'profa', 1),
('2014-05-02 12:39:41', 'demo', 1),
('2014-05-02 13:03:08', 'demo', 1),
('2014-05-02 13:06:17', 'demo', 1),
('2014-05-02 13:09:40', 'demo', 1),
('2014-05-02 13:23:17', 'demo', 1),
('2014-05-02 14:05:48', 'demo', 1),
('2014-05-02 14:07:45', 'demo', 0),
('2014-05-02 14:07:52', 'admin', 1),
('2014-05-02 14:08:34', 'admin', 0),
('2014-05-02 14:08:44', 'demo', 1),
('2014-05-02 14:09:18', 'demo', 0),
('2014-05-02 14:09:27', 'profa', 1),
('2014-05-02 14:10:21', 'profa', 0),
('2014-05-05 17:44:54', 'admin', 1),
('2014-05-05 17:50:07', 'admin', 0),
('2014-05-05 17:52:22', 'ddusko', 1),
('2014-05-05 17:52:45', 'admin', 1),
('2014-05-05 17:53:06', 'ddusko', 0),
('2014-05-05 17:53:18', 'ddusko', 1),
('2014-05-05 17:53:40', 'ddusko', 0),
('2014-05-05 17:54:05', 'profa', 1),
('2014-05-05 18:05:38', 'profa', 1),
('2014-05-05 18:09:03', 'profa', 1),
('2014-05-05 18:17:21', 'profa', 1),
('2014-05-05 18:34:19', 'profa', 1),
('2014-05-05 18:36:44', 'profa', 1),
('2014-05-05 18:39:41', 'profa', 1),
('2014-05-05 19:13:17', 'profa', 1),
('2014-05-05 19:33:49', 'profa', 1),
('2014-05-05 20:20:49', 'profa', 1),
('2014-05-05 20:51:51', 'profa', 1),
('2014-05-05 20:56:56', 'profa', 1),
('2014-05-05 20:58:59', 'profa', 1),
('2014-05-05 21:32:26', 'profa', 1),
('2014-05-05 21:36:01', 'profa', 1),
('2014-05-05 21:43:26', 'profa', 1),
('2014-05-05 22:07:19', 'profa', 1),
('2014-05-05 22:11:01', 'profa', 1),
('2014-05-05 22:12:11', 'profa', 1),
('2014-05-05 22:12:32', 'profa', 0),
('2014-05-05 22:12:41', 'demo', 1),
('2014-05-05 22:13:20', 'demo', 0),
('2014-05-05 22:13:29', 'ddusko', 1),
('2014-05-05 22:14:10', 'ddusko', 0),
('2014-05-06 05:17:01', 'profa', 1),
('2014-05-06 05:18:54', 'profa', 1),
('2014-05-06 05:19:37', 'profa', 1),
('2014-05-06 05:24:19', 'profa', 1),
('2014-05-06 05:27:09', 'ddusko', 1),
('2014-05-06 05:28:01', 'ddusko', 0),
('2014-05-06 05:29:19', 'supergenije', 1),
('2014-05-06 05:31:25', 'supergenije', 0),
('2014-05-06 05:31:38', 'admin', 1),
('2014-05-06 05:32:43', 'admin', 0),
('2014-05-06 05:32:52', 'profa', 1),
('2014-05-06 05:33:05', 'profa', 0),
('2014-05-06 05:33:19', 'admin', 1),
('2014-05-06 05:33:36', 'profa', 1),
('2014-05-06 05:49:41', 'demo', 1),
('2014-05-06 05:49:52', 'demo', 0),
('2014-05-06 05:50:03', 'ddusko', 1),
('2014-05-06 05:50:21', 'ddusko', 0),
('2014-05-06 05:50:29', 'supergenije', 1),
('2014-05-06 05:50:45', 'supergenije', 0),
('2014-05-06 05:57:55', 'demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `predmet`
--

CREATE TABLE IF NOT EXISTS `predmet` (
  `sifra` varchar(8) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `semestar` set('letnji','zimski','','') NOT NULL,
  `skolskagod` varchar(9) NOT NULL,
  PRIMARY KEY (`sifra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `predmet`
--

INSERT INTO `predmet` (`sifra`, `naziv`, `semestar`, `skolskagod`) VALUES
('FIM2ZOOP', 'Objektno orijentisano programiranje', 'zimski', '2013/2014'),
('FIM4LPPS', 'Praktikum programski sistemi', 'letnji', '2013/2014'),
('FIR3WebD', 'Web Design', 'letnji', '2013/2014');

-- --------------------------------------------------------

--
-- Table structure for table `prijava`
--

CREATE TABLE IF NOT EXISTS `prijava` (
  `sp` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `status` set('odbijena','prihvacena','ponudjena','') NOT NULL DEFAULT 'ponudjena',
  `honorar` decimal(10,2) NOT NULL,
  `komentar` varchar(100) NOT NULL,
  KEY `sp` (`sp`),
  KEY `link` (`sp`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prijava`
--

INSERT INTO `prijava` (`sp`, `id`, `status`, `honorar`, `komentar`) VALUES
('ddusko', 10, 'prihvacena', '0.00', ''),
('supergenije', 10, 'ponudjena', '0.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `profesorpredaje`
--

CREATE TABLE IF NOT EXISTS `profesorpredaje` (
  `sifraprofesor` varchar(50) NOT NULL,
  `sifrapredmet` varchar(8) NOT NULL,
  `status` set('aktivan','neaktivan','privremeno odsutan','zabranjen') NOT NULL DEFAULT 'aktivan',
  `komentar` varchar(100) NOT NULL,
  KEY `sifraprofesor` (`sifraprofesor`,`sifrapredmet`),
  KEY `sifrapredmet` (`sifrapredmet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `labvezbe`
--
ALTER TABLE `labvezbe`
  ADD CONSTRAINT `kisk` FOREIGN KEY (`profsk`) REFERENCES `korisnik` (`korisnickoime`),
  ADD CONSTRAINT `predmetkljuc` FOREIGN KEY (`predmetsk`) REFERENCES `predmet` (`sifra`);

--
-- Constraints for table `prijava`
--
ALTER TABLE `prijava`
  ADD CONSTRAINT `skl` FOREIGN KEY (`id`) REFERENCES `labvezbe` (`id`),
  ADD CONSTRAINT `spkljuc` FOREIGN KEY (`sp`) REFERENCES `korisnik` (`korisnickoime`);

--
-- Constraints for table `profesorpredaje`
--
ALTER TABLE `profesorpredaje`
  ADD CONSTRAINT `c2` FOREIGN KEY (`sifrapredmet`) REFERENCES `predmet` (`sifra`),
  ADD CONSTRAINT `c1` FOREIGN KEY (`sifraprofesor`) REFERENCES `korisnik` (`korisnickoime`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
