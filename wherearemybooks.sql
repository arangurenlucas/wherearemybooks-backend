-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2021 a las 10:16:06
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wherearemybooks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `nombre` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`nombre`, `id`) VALUES
('INTERACTIVO', 21),
('AUTOAYUDA', 22),
('CIENCIA FICCIÓN', 30),
('NOVELA', 32),
('SUSPENSO', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(280) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`nombre`, `descripcion`, `categoria_id`, `persona_id`, `id`) VALUES
('GRAN SAFARI DINOSAURIOS', 'LIBRO DE DINOSAURIOS CON DVD INTERACTIVO Y LÁMINAS PARA NIÑOS', 21, NULL, 29),
('OSITOS CARIÑOSOS', 'LIBRO DE OSITOS CARIÑOSOS + DVD INTERACTIVO Y JUEGOS', 21, NULL, 30),
('FISHER PRICE LITTLE PEOPLE', 'LIBRO INTERACTIVO PARA NIÑOS', 21, NULL, 31),
('BUENOS DIAS, ALEGRÍA', 'COMO SUPERAR LA TRISTEZA Y ALCANZAR EL EQUILIBRO EMOCIONAL', 22, NULL, 33),
('UNA TORTUGA, UNA LIEBRE Y UN MOSQUITO', 'PSICOLOGÍA PARA IR TIRANDO DE NACHO COLLER', 22, NULL, 34),
('EL MONJE QUE VENDIÓ SU FERRARI', 'EL MONJE QUERIA COMPRARSE UNO MAS NUEVO', 22, NULL, 35),
('FAHRENHEIT 541', 'RAY BRADBURY(1953)', 30, NULL, 36),
('SOY LEYENDA', 'RICHARD MATHESON (1954)', 30, NULL, 37),
('EL FIN DE LA ETERNIDAD', 'ISAAC ASIMOV (1955)', 30, NULL, 38),
('LA MANO IZQUIERDA DE LA OSCURIDAD', 'URSULA K. LE GUIN (1969)', 30, 32, 39),
('A SANGRE FRIA', 'TRUMAN CAPOTE', 32, NULL, 40),
('CRÓNICA DE UNA MUERTE ANUNCIADA', 'GABRIEL GARCÍA MÁRQUEZ', 32, NULL, 41),
('HAMLET', 'WILLIAM SHAKESPEARE', 32, NULL, 42),
('CIEN AÑOS DE SOLEDAD', 'GABRIEL GARCÍA MÁRQUEZ', 32, NULL, 43),
('MISERY', 'STEPHEN KING', 33, NULL, 44),
('PERDIDA', 'GILLIAN FLYNN', 33, NULL, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nombre`, `apellido`, `alias`, `email`, `id`) VALUES
('HORACIO', 'PAGANI', 'EL GORDO', 'ELGORDOPAGANI@GOTMAIL.COM', 26),
('NAIRA', 'TORRES', 'NARRES', 'NARRES@GOTMAIL.COM', 27),
('LORENZO', 'MERA', 'LOMERA', 'LOMERA@GOTMAIL.COM', 28),
('SEGUNDO', 'NUNCAPRIMERO', 'CASI', 'CASIPRIMERO@GOTMAIL.COM', 29),
('ARANTZA', 'AMOR', 'LOVE', 'ARANTZALOVE@GOTMAIL.COM', 30),
('MOHAMED', 'PEÑALVER', 'MUJAMED', 'MOHAPEÑA@GOTMAIL.COM', 31),
('BRAULIO', 'CANTERO', 'CAULIO', 'CAULIO@GOTMAIL.COM', 32),
('CLAUDIA', 'SOLIS', 'SOLISTA', 'SOLICLAU@GOTMAIL.COM', 33),
('CASILDA', 'ESTEVEZ', 'CASITEVEZ', 'CASILDANOESTEVEZ@GOTMAIL.COM', 34);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
