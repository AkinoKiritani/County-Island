-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für county
CREATE DATABASE IF NOT EXISTS `county` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `county`;

-- Exportiere Struktur von Tabelle county.autohaus
CREATE TABLE IF NOT EXISTS `autohaus` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Model` int(5) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `A` float NOT NULL DEFAULT 0,
  `Preis` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Exportiere Daten aus Tabelle county.autohaus: ~5 rows (ungefähr)
/*!40000 ALTER TABLE `autohaus` DISABLE KEYS */;
INSERT INTO `autohaus` (`ID`, `Model`, `X`, `Y`, `Z`, `A`, `Preis`) VALUES
	(9, 522, 3185.45, -9294.56, 4.217, 0, 93),
	(17, 541, 1703.1, -9244.2, 4.402, 0, 65000),
	(18, 560, 1701.73, -9241.48, 4.402, 0, 65000),
	(20, 571, 1703.68, -9257.88, 4.402, 0, 10000),
	(21, 522, 1719.07, -9253.46, 4.402, 0, 15000);
/*!40000 ALTER TABLE `autohaus` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.autotuning
CREATE TABLE IF NOT EXISTS `autotuning` (
  `sID` int(11) NOT NULL DEFAULT 0,
  `SideL` int(11) NOT NULL DEFAULT 0,
  `SideR` int(11) NOT NULL DEFAULT 0,
  `Auspuff` int(11) NOT NULL DEFAULT 0,
  `Spoiler` int(11) NOT NULL DEFAULT 0,
  `Dach` int(11) NOT NULL DEFAULT 0,
  `VStos` int(11) NOT NULL DEFAULT 0,
  `HStos` int(11) NOT NULL DEFAULT 0,
  `Paintjob` int(11) NOT NULL DEFAULT 0,
  `Reifen` int(11) NOT NULL DEFAULT 0,
  `Slot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.autotuning: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `autotuning` DISABLE KEYS */;
/*!40000 ALTER TABLE `autotuning` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.blitzer
CREATE TABLE IF NOT EXISTS `blitzer` (
  `blitzerid` int(3) NOT NULL DEFAULT 0,
  `blitzx` float NOT NULL DEFAULT 0,
  `blitzy` float NOT NULL DEFAULT 0,
  `blitzz` float NOT NULL DEFAULT 0,
  `blitza` float NOT NULL DEFAULT 0,
  `blitzgw` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `blitzerid` (`blitzerid`,`blitzx`,`blitzy`,`blitzz`,`blitza`,`blitzgw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.blitzer: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `blitzer` DISABLE KEYS */;
INSERT INTO `blitzer` (`blitzerid`, `blitzx`, `blitzy`, `blitzz`, `blitza`, `blitzgw`) VALUES
	(0, 0, 0, 0, 0, 0),
	(1, 5950.32, -9291.14, 4.4, 91.553, 120),
	(2, 1578.19, -9420.31, 6.565, 142.738, 80);
/*!40000 ALTER TABLE `blitzer` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.cars
CREATE TABLE IF NOT EXISTS `cars` (
  `ID` int(6) NOT NULL DEFAULT 0,
  `Nummer` int(4) NOT NULL DEFAULT 0,
  `Model` int(5) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `A` float NOT NULL DEFAULT 0,
  `Zustand` float NOT NULL DEFAULT 0,
  `Preis` float NOT NULL DEFAULT 0,
  `Kennzeichen` varchar(20) DEFAULT NULL,
  `Kilometer` int(15) NOT NULL DEFAULT 0,
  `abgeschleppt` int(2) NOT NULL DEFAULT 0,
  `reperatur` int(11) NOT NULL DEFAULT 0,
  `nitro` int(11) NOT NULL DEFAULT 0,
  `hydraulik` int(11) NOT NULL DEFAULT 0,
  `farbe1` int(11) NOT NULL DEFAULT 0,
  `farbe2` int(11) NOT NULL DEFAULT 0,
  `Tank` int(11) NOT NULL DEFAULT 0,
  `Motorschaden` int(11) NOT NULL DEFAULT 0,
  `autoneu` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.cars: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.complaints_awnsers
CREATE TABLE IF NOT EXISTS `complaints_awnsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bs_id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.complaints_awnsers: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `complaints_awnsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints_awnsers` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.complaints_topics
CREATE TABLE IF NOT EXISTS `complaints_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `typ` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `bs_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.complaints_topics: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `complaints_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints_topics` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.drogen
CREATE TABLE IF NOT EXISTS `drogen` (
  `drogenid` int(5) NOT NULL DEFAULT 0,
  `drogenzeit` int(4) NOT NULL DEFAULT 0,
  `dX` float NOT NULL DEFAULT 0,
  `dY` float NOT NULL DEFAULT 0,
  `dZ` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.drogen: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `drogen` DISABLE KEYS */;
INSERT INTO `drogen` (`drogenid`, `drogenzeit`, `dX`, `dY`, `dZ`) VALUES
	(17, 45, 6386.42, -9353.3, 4.498);
/*!40000 ALTER TABLE `drogen` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.frakautos
CREATE TABLE IF NOT EXISTS `frakautos` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `Fraktion` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Modell` int(11) NOT NULL DEFAULT 0,
  `Rang` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `Kilometer` int(11) NOT NULL DEFAULT 0,
  `Preis` float NOT NULL DEFAULT 0,
  `Abgeschleppt` int(11) NOT NULL DEFAULT 0,
  `ADACX` float NOT NULL DEFAULT 0,
  `ADACY` float NOT NULL DEFAULT 0,
  `ADACZ` float NOT NULL DEFAULT 0,
  `ADACRZ` float NOT NULL DEFAULT 0,
  `Zustand` float NOT NULL DEFAULT 1000,
  `reifen` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`carid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.frakautos: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `frakautos` DISABLE KEYS */;
/*!40000 ALTER TABLE `frakautos` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.frakkasse
CREATE TABLE IF NOT EXISTS `frakkasse` (
  `Fraktion` int(11) NOT NULL DEFAULT 0,
  `Betrag` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`Fraktion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.frakkasse: ~15 rows (ungefähr)
/*!40000 ALTER TABLE `frakkasse` DISABLE KEYS */;
INSERT INTO `frakkasse` (`Fraktion`, `Betrag`) VALUES
	(1, 89064.2),
	(2, 779.75),
	(3, 341123),
	(4, 37185),
	(5, 61),
	(6, 1000000),
	(7, 57300),
	(8, 0),
	(9, 138600),
	(10, 38000),
	(11, 0),
	(12, 0),
	(13, -48),
	(14, -619),
	(15, 0);
/*!40000 ALTER TABLE `frakkasse` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.frakrang
CREATE TABLE IF NOT EXISTS `frakrang` (
  `frakid` int(11) NOT NULL DEFAULT 0,
  `rangid` int(11) NOT NULL DEFAULT 0,
  `rangname` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.frakrang: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `frakrang` DISABLE KEYS */;
/*!40000 ALTER TABLE `frakrang` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.fraktionen
CREATE TABLE IF NOT EXISTS `fraktionen` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `short` varchar(10) DEFAULT NULL,
  `intern` int(11) NOT NULL DEFAULT 0,
  `moderator` int(11) NOT NULL DEFAULT 0,
  `ts` int(11) NOT NULL DEFAULT 0,
  `closed` int(11) NOT NULL DEFAULT 0,
  `ts_channels` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.fraktionen: ~17 rows (ungefähr)
/*!40000 ALTER TABLE `fraktionen` DISABLE KEYS */;
INSERT INTO `fraktionen` (`id`, `name`, `short`, `intern`, `moderator`, `ts`, `closed`, `ts_channels`) VALUES
	(1, 'Lake Sorten Police Department', 'LSPD', 13, 12, 30, 0, 10),
	(2, 'Santa Felton Police Department', 'SFPD', 15, 14, 31, 0, 15),
	(3, 'Lake Sorten Medic Department', 'LSMD', 18, 19, 39, 0, 10),
	(4, 'Lake Sorten Fire Department', 'LSFD', 22, 23, 41, 0, 10),
	(5, 'Towing Service Lake Sorten', 'TSLS', 26, 27, 43, 0, 10),
	(6, 'County Islands Radio', 'CIR', 28, 29, 44, 1, 10),
	(7, 'Ballas Familie', 'Ballas', 32, 33, 46, 0, 10),
	(8, 'Grove Street Familie', 'GSF', 34, 35, 47, 0, 10),
	(9, 'Atzecas Familie ', 'Arztecas', 36, 37, 48, 0, 15),
	(10, 'La Cosa Nostra', 'LCN', 38, 39, 49, 0, 10),
	(11, 'Yakuza', 'Yakuza', 40, 41, 50, 0, 10),
	(12, 'Hitman Agency', 'Hitman', 30, 31, 51, 1, 10),
	(14, 'Santa Felton Medic Department', 'SFMD', 20, 21, 40, 0, 10),
	(15, 'US Army', 'Army', 16, 17, 32, 0, 10),
	(16, 'Vagos', 'Vagos', 42, 43, 52, 0, 10),
	(17, 'County Riders', 'CI', 44, 45, 53, 0, 10),
	(27, 'Lake Vortex Fire Department', 'LVFD', 24, 25, 42, 0, 10);
/*!40000 ALTER TABLE `fraktionen` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.gangbizz
CREATE TABLE IF NOT EXISTS `gangbizz` (
  `Frak` int(11) NOT NULL DEFAULT 0,
  `Gras` float NOT NULL DEFAULT 0,
  `Koks` float NOT NULL DEFAULT 0,
  `LSD` float NOT NULL DEFAULT 0,
  `MengeGras` int(11) NOT NULL DEFAULT 0,
  `MengeKoks` int(11) NOT NULL DEFAULT 0,
  `MengeLSD` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Frak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.gangbizz: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `gangbizz` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangbizz` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.gangwar
CREATE TABLE IF NOT EXISTS `gangwar` (
  `GWID` int(5) NOT NULL DEFAULT 0,
  `GWBesitzer` int(5) NOT NULL DEFAULT 0,
  `GWmX` float NOT NULL DEFAULT 0,
  `GWmY` float NOT NULL DEFAULT 0,
  `GWMAX` float NOT NULL DEFAULT 0,
  `GWMAY` float NOT NULL DEFAULT 0,
  `GWName` varchar(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.gangwar: ~5 rows (ungefähr)
/*!40000 ALTER TABLE `gangwar` DISABLE KEYS */;
INSERT INTO `gangwar` (`GWID`, `GWBesitzer`, `GWmX`, `GWmY`, `GWMAX`, `GWMAY`, `GWName`) VALUES
	(0, 10, 4272.44, -7681.08, 4311.49, -7571.14, 'Portland'),
	(1, 7, 1663.98, -9227.45, 1715.01, -9167, 'Stadtpark'),
	(2, 10, 6518.7, -7782.01, 6583.13, -7724.59, 'Schrottplatz'),
	(3, 7, 6343.59, -8155.9, 6475.31, -8117.98, 'Pier'),
	(4, 7, 4217.28, -9283.99, 4318.82, -9083.25, 'Waldgebiet');
/*!40000 ALTER TABLE `gangwar` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.geschaft
CREATE TABLE IF NOT EXISTS `geschaft` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Besitzer` int(11) NOT NULL DEFAULT -1,
  `Preis` float NOT NULL DEFAULT 0,
  `BizNummer` int(11) NOT NULL DEFAULT 0,
  `BizKasse` float NOT NULL DEFAULT 0,
  `Name` varchar(24) NOT NULL DEFAULT 'Der Staat',
  `Benzinpreis` float NOT NULL DEFAULT 1,
  `Dieselpreis` float NOT NULL DEFAULT 1,
  `Tankstelle` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.geschaft: ~13 rows (ungefähr)
/*!40000 ALTER TABLE `geschaft` DISABLE KEYS */;
INSERT INTO `geschaft` (`ID`, `Besitzer`, `Preis`, `BizNummer`, `BizKasse`, `Name`, `Benzinpreis`, `Dieselpreis`, `Tankstelle`) VALUES
	(0, -1, 140000, 1, 1360, 'Niemand', 0, 0, 0),
	(1, -1, 180000, 2, 6597, 'Niemand', 0, 0, 0),
	(2, -1, 150000, 3, 164.67, 'Niemand', 0, 0, 0),
	(3, -1, 80000, 4, 0, 'Niemand', 0, 0, 0),
	(4, -1, 450000, 5, 382.55, 'Niemand', 0, 0, 0),
	(5, -1, 380000, 6, 7080, 'Niemand', 0, 0, 0),
	(6, -1, 290000, 7, 900.59, 'Niemand', 0, 0, 0),
	(7, -1, 100000, 8, 118.69, 'Niemand', 0, 0, 0),
	(8, -1, 100000, 9, 700, 'Niemand', 0, 0, 0),
	(9, -1, 130000, 10, 780.3, 'Niemand', 0, 0, 0),
	(10, -1, 180000, 11, 57.08, 'Niemand', 3, 4, 1),
	(11, -1, 180000, 12, 10.01, 'Niemand', 1, 1, 1),
	(12, -1, 180000, 13, 5.01, 'Niemand', 1, 1, 1);
/*!40000 ALTER TABLE `geschaft` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.geschäfte
CREATE TABLE IF NOT EXISTS `geschäfte` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Preis` float NOT NULL DEFAULT 0,
  `Besitzer` varchar(30) DEFAULT NULL,
  `KasseX` float NOT NULL DEFAULT 0,
  `KasseY` float NOT NULL DEFAULT 0,
  `KasseZ` float NOT NULL DEFAULT 0,
  `Kasse` float NOT NULL DEFAULT 0,
  `Verkauft` int(11) NOT NULL DEFAULT 0,
  `Tankstelle` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.geschäfte: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `geschäfte` DISABLE KEYS */;
/*!40000 ALTER TABLE `geschäfte` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.hausmoebel
CREATE TABLE IF NOT EXISTS `hausmoebel` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Haus` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `RX` float NOT NULL DEFAULT 0,
  `RY` float NOT NULL DEFAULT 0,
  `RZ` float NOT NULL DEFAULT 0,
  `Modell` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.hausmoebel: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `hausmoebel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hausmoebel` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.häuser
CREATE TABLE IF NOT EXISTS `häuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Besitzer` int(5) NOT NULL DEFAULT -1,
  `Miete` float NOT NULL DEFAULT 0,
  `Preis` float NOT NULL DEFAULT 0,
  `Hausnummer` int(2) NOT NULL DEFAULT 0,
  `Erfahrung` int(11) NOT NULL DEFAULT 0,
  `Hotel` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(20) NOT NULL DEFAULT 'Der Staat',
  PRIMARY KEY (`ID`),
  KEY `username` (`Besitzer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.häuser: ~11 rows (ungefähr)
/*!40000 ALTER TABLE `häuser` DISABLE KEYS */;
INSERT INTO `häuser` (`ID`, `Besitzer`, `Miete`, `Preis`, `Hausnummer`, `Erfahrung`, `Hotel`, `Name`) VALUES
	(1, -1, 0, 69000, 2, 0, 0, 'Der Staat'),
	(2, -1, 0, 76000, 3, 0, 0, 'Der Staat'),
	(3, -1, 1, 95000, 4, 0, 0, 'Der Staat'),
	(4, -1, 0, 88000, 5, 0, 0, 'Der Staat'),
	(5, -1, 0, 85000, 6, 0, 0, 'Der Staat'),
	(6, -1, 0, 78000, 7, 0, 0, 'Der Staat'),
	(7, -1, 25, 91200, 8, 0, 0, 'Der Staat'),
	(8, -1, 0, 148200, 9, 0, 0, 'Der Staat'),
	(9, -1, 1, 152300, 10, 0, 0, 'Der Staat'),
	(10, -1, 0, 154400, 11, 0, 0, 'Der Staat'),
	(11, -1, 1, 83000, 1, 0, 0, 'Der Staat');
/*!40000 ALTER TABLE `häuser` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.inventar
CREATE TABLE IF NOT EXISTS `inventar` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Nummer` int(11) NOT NULL DEFAULT 0,
  `InventarID` int(11) NOT NULL DEFAULT 0,
  `Anzahl` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.inventar: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `inventar` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventar` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.kontolog
CREATE TABLE IF NOT EXISTS `kontolog` (
  `ID` int(11) NOT NULL,
  `Betrag` float NOT NULL,
  `Zweck` varchar(70) NOT NULL,
  `Zeit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.kontolog: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `kontolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kontolog` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.kwblog
CREATE TABLE IF NOT EXISTS `kwblog` (
  `Name` varchar(25) DEFAULT NULL,
  `IP` varchar(16) DEFAULT NULL,
  `Aktion` varchar(4) DEFAULT NULL,
  `Admin` varchar(25) DEFAULT NULL,
  `Grund` varchar(100) DEFAULT NULL,
  `Zeitpunkt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.kwblog: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `kwblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kwblog` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.lager
CREATE TABLE IF NOT EXISTS `lager` (
  `mats` int(11) NOT NULL DEFAULT 0,
  `fraktion` int(3) NOT NULL DEFAULT 0,
  `drogen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.lager: ~7 rows (ungefähr)
/*!40000 ALTER TABLE `lager` DISABLE KEYS */;
INSERT INTO `lager` (`mats`, `fraktion`, `drogen`) VALUES
	(0, 0, 0),
	(0, 1, 0),
	(0, 2, 0),
	(0, 3, 0),
	(0, 4, 0),
	(0, 5, 0),
	(0, 6, 0);
/*!40000 ALTER TABLE `lager` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.login
CREATE TABLE IF NOT EXISTS `login` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Passwort` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.login: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.moebel
CREATE TABLE IF NOT EXISTS `moebel` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Nummer` int(11) NOT NULL DEFAULT 0,
  `Modell` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.moebel: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `moebel` DISABLE KEYS */;
/*!40000 ALTER TABLE `moebel` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.multiaccounts
CREATE TABLE IF NOT EXISTS `multiaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT 0,
  `uid2` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `id_2` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.multiaccounts: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `multiaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiaccounts` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  `topic` varchar(100) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `likeable` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.news: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.post
CREATE TABLE IF NOT EXISTS `post` (
  `Absender` int(11) NOT NULL DEFAULT 0,
  `Empfänger` int(11) NOT NULL DEFAULT 0,
  `Text` text DEFAULT NULL,
  `Zeit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.post: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.preise
CREATE TABLE IF NOT EXISTS `preise` (
  `geschäft` int(11) NOT NULL DEFAULT 0,
  `Produkt` varchar(30) DEFAULT NULL,
  `Preis` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.preise: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `preise` DISABLE KEYS */;
/*!40000 ALTER TABLE `preise` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.rang_rights
CREATE TABLE IF NOT EXISTS `rang_rights` (
  `rangname` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  `db` varchar(20) NOT NULL,
  `acp` int(11) NOT NULL,
  `acp_accounts` int(11) NOT NULL,
  `acp_news` int(11) NOT NULL,
  `acp_logs` int(11) NOT NULL,
  `acp_settings` int(11) NOT NULL,
  `acp_accounts_index` int(11) NOT NULL,
  `acp_news_index` int(11) NOT NULL,
  `acp_news_new` int(11) NOT NULL,
  `acp_news_edit` int(11) NOT NULL,
  `acp_logs_panel` int(11) NOT NULL,
  `acp_logs_server` int(11) NOT NULL,
  `acp_logs_ip` int(11) NOT NULL,
  `acp_fraktionen` int(11) NOT NULL,
  `acp_beschwerden` int(11) NOT NULL,
  `acp_accounts_show` int(11) NOT NULL,
  `acp_beschwerden_index` int(11) NOT NULL,
  `acp_beschwerden_list` int(11) NOT NULL,
  `acp_beschwerden_show` int(11) NOT NULL,
  `acp_accounts_akte` int(11) NOT NULL,
  `acp_accounts_edit` int(11) NOT NULL,
  `acp_accounts_edit_level` int(11) NOT NULL,
  `acp_accounts_edit_skin` int(11) NOT NULL,
  `acp_accounts_edit_money` int(11) NOT NULL,
  `acp_accounts_edit_bank` int(11) NOT NULL,
  `acp_accounts_edit_namechange` int(11) NOT NULL,
  `acp_accounts_edit_fraktion` int(11) NOT NULL,
  `acp_accounts_edit_deaths` int(11) NOT NULL,
  `acp_accounts_edit_kills` int(11) NOT NULL,
  `acp_accounts_punish` int(11) NOT NULL,
  `acp_accounts_punish_ban` int(11) NOT NULL,
  `acp_accounts_punish_timeban` int(11) NOT NULL,
  `acp_accounts_punish_unban` int(11) NOT NULL,
  `acp_accounts_punish_prison` int(11) NOT NULL,
  `acp_accounts_punish_kick` int(11) NOT NULL,
  `acp_accounts_sedit` int(11) NOT NULL,
  `acp_accounts_sedit_username` int(11) NOT NULL,
  `acp_accounts_sedit_password` int(11) NOT NULL,
  `acp_accounts_sedit_adminlevel` int(11) NOT NULL,
  `acp_accounts_sedit_email` int(11) NOT NULL,
  `acp_accounts_sedit_bmod` int(11) NOT NULL,
  `acp_accounts_sedit_fraktionsverwalter` int(11) NOT NULL,
  `acp_accounts_sitzungen` int(11) NOT NULL,
  `acp_accounts_teamspeak` int(11) NOT NULL,
  `acp_fraktionen_show_members` int(11) NOT NULL,
  `acp_fraktionen_show` int(11) NOT NULL,
  `acp_fraktionen_show_teamspeak` int(11) NOT NULL,
  `acp_news_delete` int(11) NOT NULL,
  `acp_settings_settings` int(11) NOT NULL,
  `acp_settings_rights` int(11) NOT NULL,
  `acp_fraktionen_index` int(11) NOT NULL,
  `acp_accounts_punish_warn` int(11) NOT NULL,
  `acp_fraktionen_show_forum` int(11) NOT NULL,
  `acp_fraktionen_show_vehicles` int(11) NOT NULL,
  `acp_accounts_akte_delete` int(11) NOT NULL,
  `acp_accounts_ip` int(11) NOT NULL,
  `acp_accounts_warning` int(11) NOT NULL,
  `acp_accounts_multi` int(11) NOT NULL,
  `acp_accounts_multis` int(11) NOT NULL,
  `acp_accounts_edit_lic` int(11) NOT NULL,
  `acp_fraktionen_show_settings` int(11) NOT NULL,
  PRIMARY KEY (`rangname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.rang_rights: ~8 rows (ungefähr)
/*!40000 ALTER TABLE `rang_rights` DISABLE KEYS */;
INSERT INTO `rang_rights` (`rangname`, `value`, `db`, `acp`, `acp_accounts`, `acp_news`, `acp_logs`, `acp_settings`, `acp_accounts_index`, `acp_news_index`, `acp_news_new`, `acp_news_edit`, `acp_logs_panel`, `acp_logs_server`, `acp_logs_ip`, `acp_fraktionen`, `acp_beschwerden`, `acp_accounts_show`, `acp_beschwerden_index`, `acp_beschwerden_list`, `acp_beschwerden_show`, `acp_accounts_akte`, `acp_accounts_edit`, `acp_accounts_edit_level`, `acp_accounts_edit_skin`, `acp_accounts_edit_money`, `acp_accounts_edit_bank`, `acp_accounts_edit_namechange`, `acp_accounts_edit_fraktion`, `acp_accounts_edit_deaths`, `acp_accounts_edit_kills`, `acp_accounts_punish`, `acp_accounts_punish_ban`, `acp_accounts_punish_timeban`, `acp_accounts_punish_unban`, `acp_accounts_punish_prison`, `acp_accounts_punish_kick`, `acp_accounts_sedit`, `acp_accounts_sedit_username`, `acp_accounts_sedit_password`, `acp_accounts_sedit_adminlevel`, `acp_accounts_sedit_email`, `acp_accounts_sedit_bmod`, `acp_accounts_sedit_fraktionsverwalter`, `acp_accounts_sitzungen`, `acp_accounts_teamspeak`, `acp_fraktionen_show_members`, `acp_fraktionen_show`, `acp_fraktionen_show_teamspeak`, `acp_news_delete`, `acp_settings_settings`, `acp_settings_rights`, `acp_fraktionen_index`, `acp_accounts_punish_warn`, `acp_fraktionen_show_forum`, `acp_fraktionen_show_vehicles`, `acp_accounts_akte_delete`, `acp_accounts_ip`, `acp_accounts_warning`, `acp_accounts_multi`, `acp_accounts_multis`, `acp_accounts_edit_lic`, `acp_fraktionen_show_settings`) VALUES
	('Administrator', 3, 'AdminLevel', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0),
	('bmod', -1, 'bmod', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('fraktionsverwalter', -2, 'clanverwalter', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
	('Manager', 4, 'AdminLevel', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
	('Modeartor', 2, 'AdminLevel', 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0),
	('Projektleiter', 5, 'AdminLevel', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
	('Spieler', 0, 'AdminLevel', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	('Supporter', 1, 'AdminLevel', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `rang_rights` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.schwarzmarkt
CREATE TABLE IF NOT EXISTS `schwarzmarkt` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Besitzer` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.schwarzmarkt: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `schwarzmarkt` DISABLE KEYS */;
/*!40000 ALTER TABLE `schwarzmarkt` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.serverapi
CREATE TABLE IF NOT EXISTS `serverapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typ` int(11) NOT NULL DEFAULT 0,
  `adminid` int(11) NOT NULL DEFAULT 0,
  `admin` varchar(35) DEFAULT NULL,
  `playername` varchar(35) DEFAULT NULL,
  `grund` varchar(150) DEFAULT NULL,
  `wert` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.serverapi: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `serverapi` DISABLE KEYS */;
/*!40000 ALTER TABLE `serverapi` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.serverlogs
CREATE TABLE IF NOT EXISTS `serverlogs` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(35) DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `typ` int(11) NOT NULL DEFAULT 0,
  `log` varchar(1000) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.serverlogs: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `serverlogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `serverlogs` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.tickets
CREATE TABLE IF NOT EXISTS `tickets` (
  `Absender` int(11) NOT NULL,
  `Titel` varchar(128) NOT NULL,
  `Text` varchar(128) NOT NULL,
  `Timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.tickets: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.todelog
CREATE TABLE IF NOT EXISTS `todelog` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `KillerID` int(11) NOT NULL DEFAULT 0,
  `Reason` int(11) NOT NULL DEFAULT 0,
  `Zeit` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.todelog: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `todelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `todelog` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.user
CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(10) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) unsigned NOT NULL DEFAULT 0,
  `IP` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `Level` int(11) unsigned NOT NULL DEFAULT 0,
  `Exp` int(11) unsigned NOT NULL DEFAULT 0,
  `Mitglied` int(11) unsigned NOT NULL DEFAULT 0,
  `Leiter` int(11) unsigned NOT NULL DEFAULT 0,
  `Admin` int(11) unsigned NOT NULL DEFAULT 0,
  `Geld` float unsigned NOT NULL DEFAULT 0,
  `Konto` float unsigned NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `Interior` int(11) unsigned NOT NULL DEFAULT 0,
  `Welt` int(11) unsigned NOT NULL DEFAULT 0,
  `Skin` int(11) unsigned NOT NULL DEFAULT 0,
  `ZiviSkin` int(11) unsigned NOT NULL DEFAULT 0,
  `Nummer` int(11) unsigned NOT NULL DEFAULT 0,
  `Perso` int(11) unsigned NOT NULL DEFAULT 0,
  `Scheine` varchar(10) NOT NULL DEFAULT '0',
  `Job` int(11) unsigned NOT NULL DEFAULT 0,
  `Knastzeit` int(11) unsigned NOT NULL DEFAULT 0,
  `Hausschlüssel` int(3) NOT NULL DEFAULT -1,
  `Geschäftschlüssel` int(3) NOT NULL DEFAULT -1,
  `PaydaySekunden` int(11) unsigned NOT NULL DEFAULT 0,
  `WantedLevel` int(11) unsigned NOT NULL DEFAULT 0,
  `Heilungen` int(11) unsigned NOT NULL DEFAULT 0,
  `Spielzeit` int(11) unsigned NOT NULL DEFAULT 0,
  `Tode` int(11) unsigned NOT NULL DEFAULT 0,
  `Kills` int(11) unsigned NOT NULL DEFAULT 0,
  `Rang` int(11) unsigned NOT NULL DEFAULT 0,
  `Prison` int(11) unsigned NOT NULL DEFAULT 0,
  `Drogen` int(11) unsigned NOT NULL DEFAULT 0,
  `Waffenmats` int(11) unsigned NOT NULL DEFAULT 0,
  `Arbeitslosengeld` int(11) unsigned NOT NULL DEFAULT 0,
  `Startbonus` int(11) unsigned NOT NULL DEFAULT 0,
  `Kredit` int(11) unsigned NOT NULL DEFAULT 0,
  `Kreditsumme` float unsigned NOT NULL DEFAULT 0,
  `Kreditrate` int(11) unsigned NOT NULL DEFAULT 0,
  `Warns` int(11) unsigned NOT NULL DEFAULT 0,
  `Telefonbuch` int(11) unsigned NOT NULL DEFAULT 0,
  `Telefonbucheintrag` int(11) unsigned NOT NULL DEFAULT 0,
  `Handy` int(11) unsigned NOT NULL DEFAULT 0,
  `Handynummer` int(11) unsigned NOT NULL DEFAULT 0,
  `Geschlecht` int(11) unsigned NOT NULL DEFAULT 0,
  `Jahr` int(11) unsigned NOT NULL DEFAULT 0,
  `Monat` int(11) unsigned NOT NULL DEFAULT 0,
  `Tag` int(11) unsigned NOT NULL DEFAULT 0,
  `Online` int(11) unsigned NOT NULL DEFAULT 0,
  `TimebannAnfang` int(11) unsigned NOT NULL DEFAULT 0,
  `TimebannDauer` int(11) unsigned NOT NULL DEFAULT 0,
  `email` varchar(50) DEFAULT NULL,
  `Tod` int(3) NOT NULL DEFAULT 0,
  `Gefangen` int(4) unsigned NOT NULL DEFAULT 0,
  `Ban` int(11) unsigned NOT NULL DEFAULT 0,
  `Punkte` int(3) unsigned NOT NULL DEFAULT 0,
  `ban_reason` varchar(160) DEFAULT NULL,
  `ban_time` int(11) unsigned NOT NULL DEFAULT 0,
  `ban_admin` varchar(35) DEFAULT '0',
  `StrafCP` int(11) NOT NULL DEFAULT -1,
  `ban_length` int(11) unsigned NOT NULL DEFAULT 0,
  `Strafe` int(11) NOT NULL DEFAULT -1,
  `Tutorial` int(11) unsigned NOT NULL DEFAULT 0,
  `ts_uid` varchar(200) NOT NULL DEFAULT '0',
  `ts_rights` int(11) unsigned NOT NULL DEFAULT 0,
  `cp_loged` int(11) unsigned NOT NULL DEFAULT 0,
  `ts_last_rights` int(11) unsigned NOT NULL DEFAULT 0,
  `cp_last_loged` int(11) unsigned NOT NULL DEFAULT 0,
  `bmod` int(11) unsigned NOT NULL DEFAULT 0,
  `fraktionsverwalter` int(11) unsigned NOT NULL DEFAULT 0,
  `god` int(11) unsigned NOT NULL DEFAULT 0,
  `eingeloggt` int(11) unsigned NOT NULL DEFAULT 0,
  `ts_ban` int(11) unsigned NOT NULL DEFAULT 0,
  `Repair` int(11) unsigned NOT NULL DEFAULT 0,
  `last_warn` int(11) unsigned NOT NULL DEFAULT 0,
  `eventver` int(11) unsigned NOT NULL DEFAULT 0,
  `donator` int(11) unsigned NOT NULL DEFAULT 0,
  `public` int(11) unsigned NOT NULL DEFAULT 0,
  `forum_ban` int(11) unsigned NOT NULL DEFAULT 0,
  `Grundwehrdienst` int(11) NOT NULL DEFAULT 0,
  `starttut` int(11) NOT NULL DEFAULT 0,
  `Missionen` varchar(50) NOT NULL DEFAULT '0',
  `Missiong` int(11) NOT NULL DEFAULT 0,
  `Spawn` int(11) NOT NULL DEFAULT 0,
  `Werbunguser` int(11) NOT NULL DEFAULT 0,
  `Verstrahlt` int(11) NOT NULL DEFAULT 0,
  `Angelnerlaubt1` int(11) NOT NULL DEFAULT 0,
  `Angelnerlaubt2` int(11) NOT NULL DEFAULT 0,
  `ZiviFrak` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle county.user: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.userakten
CREATE TABLE IF NOT EXISTS `userakten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT 0,
  `eintrag_am` int(11) NOT NULL DEFAULT 0,
  `eintrag_von` int(11) NOT NULL DEFAULT 0,
  `eintrag` varchar(1000) DEFAULT NULL,
  `eintrag_header` varchar(500) DEFAULT NULL,
  `typ` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.userakten: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `userakten` DISABLE KEYS */;
/*!40000 ALTER TABLE `userakten` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.usersitzungen
CREATE TABLE IF NOT EXISTS `usersitzungen` (
  `sitzungsid` int(11) NOT NULL AUTO_INCREMENT,
  `dauer` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(35) DEFAULT NULL,
  `userip` varchar(50) DEFAULT NULL,
  `datum` int(11) NOT NULL DEFAULT 0,
  `logout` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `sitzungsid_2` (`sitzungsid`),
  KEY `sitzungsid` (`sitzungsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.usersitzungen: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `usersitzungen` DISABLE KEYS */;
/*!40000 ALTER TABLE `usersitzungen` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle county.waffen
CREATE TABLE IF NOT EXISTS `waffen` (
  `Name` varchar(25) NOT NULL,
  `Waffe1` int(11) NOT NULL DEFAULT 0,
  `Munition1` int(11) NOT NULL DEFAULT 0,
  `Waffe2` int(11) NOT NULL DEFAULT 0,
  `Munition2` int(11) NOT NULL DEFAULT 0,
  `Waffe3` int(11) NOT NULL DEFAULT 0,
  `Munition3` int(11) NOT NULL DEFAULT 0,
  `Waffe4` int(11) NOT NULL DEFAULT 0,
  `Munition4` int(11) NOT NULL DEFAULT 0,
  `Waffe5` int(11) NOT NULL DEFAULT 0,
  `Munition5` int(11) NOT NULL DEFAULT 0,
  `Waffe6` int(11) NOT NULL DEFAULT 0,
  `Munition6` int(11) NOT NULL DEFAULT 0,
  `Waffe7` int(11) NOT NULL DEFAULT 0,
  `Munition7` int(11) NOT NULL DEFAULT 0,
  `Waffe8` int(11) NOT NULL DEFAULT 0,
  `Munition8` int(11) NOT NULL DEFAULT 0,
  `Waffe9` int(11) NOT NULL DEFAULT 0,
  `Munition9` int(11) NOT NULL DEFAULT 0,
  `Waffe10` int(11) NOT NULL DEFAULT 0,
  `Munition10` int(11) NOT NULL DEFAULT 0,
  `Waffe11` int(11) NOT NULL DEFAULT 0,
  `Munition11` int(11) NOT NULL DEFAULT 0,
  `Waffe12` int(11) NOT NULL DEFAULT 0,
  `Munition12` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle county.waffen: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `waffen` DISABLE KEYS */;
/*!40000 ALTER TABLE `waffen` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
