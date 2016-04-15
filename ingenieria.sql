# Host: localhost  (Version: 5.5.5-10.1.10-MariaDB)
# Date: 2016-04-06 10:17:13
# Generator: MySQL-Front 5.3  (Build 5.16)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "cita"
#

DROP TABLE IF EXISTS `cita`;
CREATE TABLE `cita` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `idPaciente` int(11) NOT NULL DEFAULT '0',
  `nota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "cita"
#


#
# Structure for table "login"
#

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL DEFAULT '',
  `contrasena` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Data for table "login"
#

INSERT INTO `login` VALUES (1,'christian','hola');

#
# Structure for table "paciente"
#

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE `paciente` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `apellido` varchar(50) NOT NULL DEFAULT '',
  `fecha de nacimiento` date DEFAULT NULL,
  `antecedentes` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "paciente"
#

