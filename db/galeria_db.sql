-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 03:59:48
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galeria_db`
--
CREATE DATABASE IF NOT EXISTS `galeria_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `galeria_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `imagen_id` int(11) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `imagen_id`, `comentario`) VALUES
(6, 3, 3, 'Muy impactante visualmente'),
(7, 1, 4, 'Un estilo muy interesante'),
(8, 2, 5, 'Arte renacentista en su máxima expresión'),
(10, 1, 7, 'Representa muy bien la cultura mexicana'),
(11, 2, 8, 'Aquí empezó el impresionismo'),
(12, 3, 9, 'Un mensaje muy fuerte'),
(13, 1, 10, 'Una obra histórica'),
(14, 2, 11, 'Los colores son muy vivos'),
(15, 3, 12, 'Muy elegante y detallada'),
(16, 1, 13, 'Hermosa escena nocturna'),
(17, 2, 14, 'Transmite mucha soledad'),
(19, 1, 16, 'Me gusta la simplicidad'),
(21, 3, 18, 'Muy relajante de ver'),
(22, 1, 19, 'Detalles increíbles'),
(23, 2, 20, 'Escena muy dinámica'),
(24, 3, 21, 'Muy delicada'),
(25, 1, 22, 'Me gustan los colores'),
(26, 2, 23, 'Un poco inquietante pero buena'),
(27, 1, 3, 'muy impresionante'),
(28, 3, 3, 'me gusta mucho'),
(35, 3, 1, 'ffff'),
(37, 8, 2, 'que mona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `nombre`, `descripcion`, `img`) VALUES
(1, 'La Noche Estrellada', 'Vincent van Gogh (1889)', 'img/1.jpg'),
(2, 'La Mona Lisa', 'Leonardo da Vinci (1503)', 'img/2.jpg'),
(3, 'El Grito', 'Edvard Munch (1893)', 'img/3.jpg'),
(4, 'Gótico Americano', 'Grant Wood (1930)', 'img/4.jpg'),
(5, 'Creación de Adán en la Capilla Sixtina', 'Miguel Ángel Buonarroti (1508-1512)', 'img/5.jpg'),
(6, 'La gran ola de Kanagawa', 'Katsushika Hokusai (1830-1833)', 'img/6.jpg'),
(7, 'La Catrina', 'José Guadalupe Posada (1910-1912)', 'img/7.jpg'),
(8, 'Impresión, sol naciente', 'Claude Monet (1874)', 'img/8.jpg'),
(9, 'El Guernica', 'Pablo Picasso (1937)', 'img/9.jpg'),
(10, 'La última cena', 'Leonardo da Vinci (1495-1498)', 'img/10.jpg'),
(11, 'Los girasoles', 'Vincent van Gogh (1887)', 'img/11.jpg'),
(12, 'El columpio', 'Fragonard (1767)', 'img/12.jpg'),
(13, 'Terraza de café por la noche', 'Vincent van Gogh (1888)', 'img/13.jpg'),
(14, 'El caminante sobre el mar de nubes', 'Caspar David Friedrich (1774-1840)', 'img/14.jpg'),
(15, 'Las amapolas', 'Claude Monet (1830)', 'img/15.jpg'),
(16, 'Almendro en flor', 'Vincent van Gogh (1890)', 'img/16.jpg'),
(17, 'Trigal con cuervos', 'Vincent van Gogh (1890)', 'img/17.jpg'),
(18, 'Nenúfares', 'Claude Monet (1920-1926)', 'img/18.jpg'),
(19, 'Eight Studies of Wild Flowers', 'Alberto Durero (1471-1528)', 'img/19.jpg'),
(20, 'Combate entre la fragata francesa', 'Gilbert, Pierre Julien (1806)', 'img/20.jpg'),
(21, 'Damask Rose', 'Pierre-Joseph Redouté (1817-1824)', 'img/21.jpg'),
(22, 'Campo de trigo con cipreses', 'Vincent van Gogh (1889)', 'img/22.jpg'),
(23, 'Skull of a Skeleton with Burning Cigarette', 'Vincent van Gogh (1885-1886)', 'img/23.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `correo`, `password`) VALUES
(1, 'Javier Alexander Ramos Garcia', 'javier.ramos@gmail.com', '$2y$10$sxgibCcDRva1mH9acOmw.ONThSR58.qVR5NOSya7W4Rb0O3fMQ322'),
(2, 'Daniela Guadalupe Hernandes Mejia', 'daniela.hernandez@gmail.com', '$2y$10$Su9vLeR1YYcEClJIJ40L1uVfJDeV.twUeiI.dT1kxIoJwps05BrBW'),
(3, 'Juan Manuel Leiva Montes', 'juan.leiva@gmail.com', '$2y$10$C0PLXh5qibwPm0QTdzsRUOeVUuGjV7g.K8iDPrQpEjp5XhjG94gCO'),
(8, 'Adrian', 'adrian@gmail.com', '$2y$10$OvIR648gLuxDBfw12hHs1uDc553I8C7zYQGwx/gaHuA1mEKYYSr2K');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `imagen_id` (`imagen_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`imagen_id`) REFERENCES `imagenes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
