# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.13-MariaDB)
# Database: esamitriennale
# Generation Time: 2018-04-15 19:39:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE DATABASE IF NOT EXISTS esamitriennale;
USE esamitriennale;

# Dump of table Esami
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Esami`;

CREATE TABLE `Esami` (
  `codins` varchar(15) DEFAULT NULL,
  `voto` int(11) DEFAULT NULL,
  `crediti` int(11) DEFAULT NULL,
  `nomecorso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Esami` WRITE;
/*!40000 ALTER TABLE `Esami` DISABLE KEYS */;

INSERT INTO `Esami` (`codins`, `voto`, `crediti`, `nomecorso`)
VALUES
	('16ACFPL',10,27,'Analisi matematica I'),
	('16AHMPL',8,26,'Chimica'),
	('12BHDPL',8,25,'Informatica'),
	('07LKIPL',3,24,'Lingua inglese I livello'),
	('01RKCPL',10,23,'Algebra lineare e geometria'),
	('01PNNPL',6,22,'Crediti liberi del 1 anno'),
	('15AXOPL',10,21,'Fisica I'),
	('23ACIPL',8,23,'Analisi matematica II'),
	('14AFQPL',8,27,'Basi di dati'),
	('20AXPPL',6,28,'Fisica II'),
	('12CKRPL',10,30,'Statistica'),
	('06ARHPL',8,22,'Economia e organizzazione aziendale'),
	('07CESPL',8,18,'Ricerca operativa'),
	('07CHWPL',8,30,'Sistemi di produzione'),
	('04CIIPL',8,18,'Sistemi elettrici industriali'),
	('01QNAPL',8,19,'Elementi di diritto privato'),
	('09CBIPL',8,29,'Programmazione a oggetti'),
	('02CBRPL',10,30,'Programmazione e gestione della produzione'),
	('01NBDPL',8,27,'Sistemi telematici'),
	('01QYVPL',6,22,'Crediti liberi del 3° anno'),
	('01NBEPL',8,19,'Progettazione di servizi web e reti di calcolatori');

/*!40000 ALTER TABLE `Esami` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
