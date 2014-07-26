-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-07-2014 a las 16:11:56
-- Versión del servidor: 5.5.38-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.15-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `laravel-prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE IF NOT EXISTS `juegos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Assassins Creed', 'Assassins VS templarios.', '2014-07-25 03:58:59', '2014-07-25 03:58:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_06_24_044217_create_users', 1),
('2014_06_24_050737_crear_juegos', 2),
('2014_06_24_054351_anade_timestamps_juegos', 2),
('2014_07_15_135517_create_users_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas`
--

CREATE TABLE IF NOT EXISTS `pruebas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `otro_atributo` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pruebas`
--

INSERT INTO `pruebas` (`id`, `nombre`, `otro_atributo`, `updated_at`, `created_at`) VALUES
(0, 'lalal', '', '2014-07-25 04:08:30', '2014-07-25 04:08:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Administrator', 'admin', 'admin@admin.com', '$2y$10$zLO1y/fxLtFHJ297IDMZZOIJWtGUuigpYHrpRwjCGcwmjZemW9gLu', '2014-07-15 19:12:37', '2014-07-15 19:32:55', 'tLpQtjWpQDghr6nmAy9uzmSmxmzoXXHO4ZMmvC26uNx3kNNsE8YPh2X1xpfy');
--
-- Base de datos: `login`
--
--
-- Base de datos: `promediar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mat-usuario_notas`
--

CREATE TABLE IF NOT EXISTS `mat-usuario_notas` (
  `id_mat-usuario_nota` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_mat-usuario` int(11) unsigned zerofill NOT NULL,
  `id_nota` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id_mat-usuario_nota`),
  KEY `id_mat-usuario` (`id_mat-usuario`),
  KEY `id_nota` (`id_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia-usuarios`
--

CREATE TABLE IF NOT EXISTS `materia-usuarios` (
  `id_mat-usuario` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) unsigned zerofill NOT NULL,
  `id_materia` int(11) unsigned zerofill NOT NULL,
  `repeticion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mat-usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_materia` (`id_materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `id_materia` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_materia` varchar(255) NOT NULL,
  `anotacion` varchar(255) DEFAULT NULL,
  `creditos` int(11) NOT NULL,
  PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `anotacion`, `creditos`) VALUES
(00000000001, 'CALCULO DIFERENCIAL', 'ingenieria', 4),
(00000000002, 'ECUACIONES DIFERENCIALES', 'ingenieria', 3),
(00000000003, 'MECANICA', 'fisica 1', 4),
(00000000004, 'QUIMICA GENERAL', NULL, 5),
(00000000005, 'QUIMICA ORGANICA', NULL, 4),
(00000000006, 'ESTADISTICA II', NULL, 3),
(00000000007, 'ESTADISTICA I', NULL, 3),
(00000000008, 'CALCULO INTEGRAL', NULL, 4),
(00000000009, 'CALCULO VECTORIAL', NULL, 4),
(00000000010, 'ALGEBRA LINEAL', NULL, 3),
(00000000011, 'MATEMATICAS ESPECIALES', NULL, 3),
(00000000012, 'ELECTRICIDAD Y MAGNETISMO', NULL, 4),
(00000000013, 'PROGRAMACION I', NULL, 3),
(00000000014, 'PROGRAMACION II', NULL, 3),
(00000000015, 'CIRCUITOS DC', NULL, 4),
(00000000016, 'CIRCUITOS AC', NULL, 4),
(00000000017, 'CIRCUITOS DIGITALES', NULL, 4),
(00000000018, 'BIOLOGIA I', NULL, 3),
(00000000019, 'BIOLOGIA II', NULL, 3),
(00000000020, 'PROCEDIMIENTOS BASICOS', NULL, 2),
(00000000021, 'ANATOMIA', NULL, 6),
(00000000022, 'EMBRIOLOGIA E HISTOLOGIA', NULL, 5),
(00000000023, 'GENETICA', NULL, 2),
(00000000024, 'FISIOLOGIA', NULL, 6),
(00000000025, 'PATOLOGIA', NULL, 6),
(00000000026, 'SEMIOLOGIA', NULL, 7),
(00000000027, 'PSIQUIATRIA', NULL, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `id_nota` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `id_seguimiento` int(11) unsigned zerofill NOT NULL,
  `valor_nota` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `id_seguimiento` (`id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa-materias`
--

CREATE TABLE IF NOT EXISTS `programa-materias` (
  `id_programa-materia` int(11) NOT NULL AUTO_INCREMENT,
  `id_programa` int(11) unsigned zerofill NOT NULL,
  `id_materia` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id_programa-materia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE IF NOT EXISTS `programas` (
  `id_programa` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre_programa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_programa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`id_programa`, `nombre_programa`) VALUES
(00000000001, 'Ingenieria de Sistemas'),
(00000000002, 'Ingeniería Civil'),
(00000000003, 'Ingeniería Industrial'),
(00000000004, 'Ingeniería Ambiental y Sanitaria'),
(00000000005, 'Ingeriería Electrónica'),
(00000000006, 'Ingeniría Agronómica'),
(00000000007, 'Ingeriería Pesquera'),
(00000000008, 'Derecho'),
(00000000009, 'Medicina'),
(00000000010, 'Enfermeria'),
(00000000011, 'Cine y Audiovisuales'),
(00000000012, 'Biologia'),
(00000000013, 'Licenciatura en Preescolar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientos`
--

CREATE TABLE IF NOT EXISTS `seguimientos` (
  `id_seguimiento` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `indicativo` enum('PRIMERO','SEGUNDO','TERCER') DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_cierre` date DEFAULT NULL,
  PRIMARY KEY (`id_seguimiento`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `seguimientos`
--

INSERT INTO `seguimientos` (`id_seguimiento`, `indicativo`, `fecha_inicio`, `fecha_cierre`) VALUES
(00000000001, 'PRIMERO', NULL, NULL),
(00000000002, 'SEGUNDO', NULL, NULL),
(00000000003, 'TERCER', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_usuario` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ultima_visita` datetime DEFAULT NULL,
  `ultima_direccion_ip` varchar(255) DEFAULT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  `avatar` text,
  `promedio_ponderado` int(3) unsigned zerofill DEFAULT NULL,
  `p_semestral_mas_bajo` int(3) DEFAULT NULL,
  `p_semestral_mas_alto` int(3) DEFAULT NULL,
  `id_programa` int(11) unsigned zerofill NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `programa` (`id_programa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_usuario`, `username`, `password`, `email`, `ultima_visita`, `ultima_direccion_ip`, `estado`, `avatar`, `promedio_ponderado`, `p_semestral_mas_bajo`, `p_semestral_mas_alto`, `id_programa`, `created_at`, `updated_at`, `remember_token`) VALUES
(00000000001, 'admin', '$2y$10$zLO1y/fxLtFHJ297IDMZZOIJWtGUuigpYHrpRwjCGcwmjZemW9gLu', 'admin@admin.com', NULL, NULL, 'ACTIVO', NULL, NULL, NULL, NULL, 00000000001, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
