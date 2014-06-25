/*
SQLyog Ultimate v9.63 
MySQL - 5.5.32 : Database - promediar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`promediar` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `promediar`;

/*Table structure for table `mat-usuario_nota` */

DROP TABLE IF EXISTS `mat-usuario_nota`;

CREATE TABLE `mat-usuario_nota` (
  `id_mat-usuario_nota` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_mat-usuario` int(11) unsigned zerofill NOT NULL,
  `id_nota` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id_mat-usuario_nota`),
  KEY `id_mat-usuario` (`id_mat-usuario`),
  KEY `id_nota` (`id_nota`),
  CONSTRAINT `id_mat-usuario` FOREIGN KEY (`id_mat-usuario`) REFERENCES `materia-usuario` (`id_mat-usuario`),
  CONSTRAINT `id_nota` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mat-usuario_nota` */

/*Table structure for table `materia-usuario` */

DROP TABLE IF EXISTS `materia-usuario`;

CREATE TABLE `materia-usuario` (
  `id_mat-usuario` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) unsigned zerofill NOT NULL,
  `id_materia` int(11) unsigned zerofill NOT NULL,
  `repeticion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mat-usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_materia` (`id_materia`),
  CONSTRAINT `id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id_materia`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materia-usuario` */

/*Table structure for table `materias` */

DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `id_materia` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(255) NOT NULL,
  `id_programa` int(11) unsigned zerofill NOT NULL,
  `semestre` enum('I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `id_programa` (`id_programa`),
  CONSTRAINT `id_programa` FOREIGN KEY (`id_programa`) REFERENCES `programas` (`id_programa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materias` */

/*Table structure for table `notas` */

DROP TABLE IF EXISTS `notas`;

CREATE TABLE `notas` (
  `id_nota` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_seguimiento` int(11) unsigned zerofill NOT NULL,
  `valor_nota` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `id_seguimiento` (`id_seguimiento`),
  CONSTRAINT `id_seguimiento` FOREIGN KEY (`id_seguimiento`) REFERENCES `seguimientos` (`id_seguimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notas` */

/*Table structure for table `programas` */

DROP TABLE IF EXISTS `programas`;

CREATE TABLE `programas` (
  `id_programa` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_programa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_programa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `programas` */

insert  into `programas`(`id_programa`,`nombre_programa`) values (00000000001,'Ingenieria de Sistemas');

/*Table structure for table `seguimientos` */

DROP TABLE IF EXISTS `seguimientos`;

CREATE TABLE `seguimientos` (
  `id_seguimiento` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `indicativo` enum('PRIMERO','SEGUNDO','TERCER') DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_cierre` date DEFAULT NULL,
  PRIMARY KEY (`id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seguimientos` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `codigo` int(10) unsigned NOT NULL,
  `pass` blob NOT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `fecha_usuario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ultima_visita` datetime DEFAULT NULL,
  `ultima_direccion_ip` varchar(255) DEFAULT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  `avatar` text,
  `promedio_ponderado` int(3) unsigned zerofill DEFAULT NULL,
  `p_semestral_mas_bajo` int(3) DEFAULT NULL,
  `p_semestral_mas_alto` int(3) DEFAULT NULL,
  `id_programa` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `programa` (`id_programa`),
  CONSTRAINT `programa` FOREIGN KEY (`id_programa`) REFERENCES `programas` (`id_programa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`codigo`,`pass`,`correo`,`fecha_usuario`,`ultima_visita`,`ultima_direccion_ip`,`estado`,`avatar`,`promedio_ponderado`,`p_semestral_mas_bajo`,`p_semestral_mas_alto`,`id_programa`) values (00000000002,2010114040,'0ª‹¶ö`sBc”ÙbU¨','joche.echavezm@gmail.com','2014-06-22 16:20:14',NULL,NULL,'ACTIVO',NULL,NULL,NULL,NULL,00000000001);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
