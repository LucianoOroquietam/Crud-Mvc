-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2022 a las 18:22:35
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_bandas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bandas`
--

CREATE TABLE `bandas` (
  `id_banda` int(11) NOT NULL,
  `id_genero_fk` int(11) NOT NULL,
  `nombre_banda` varchar(45) NOT NULL,
  `cantidad_discos` int(11) NOT NULL,
  `origen_banda` varchar(45) NOT NULL,
  `imagen_banda` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bandas`
--

INSERT INTO `bandas` (`id_banda`, `id_genero_fk`, `nombre_banda`, `cantidad_discos`, `origen_banda`, `imagen_banda`) VALUES
(1, 1, 'La vela puerca', 10, 'Montevideo,Uruguay(1995)', './images/la vela puercaa.jpg'),
(3, 2, 'ABBA', 9, ' Estocolmo, Suecia (1972)', './images/abbaa.jpg'),
(4, 1, 'Soda stereo', 7, 'Buenos Aires,Argentina(1982)', './images/soda stereo.png'),
(5, 2, 'La Oreja de Van Gogh', 8, 'San Sebastián, España (1996)', './images/la oreja de van gogh.jpg'),
(6, 1, 'El Plan De La Mariposa', 5, 'Necochea,Argentina(2008)', './images/el plan de la mariposa.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(25) NOT NULL,
  `historia_genero` varchar(500) NOT NULL,
  `instrumentos_comunes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `genero`, `historia_genero`, `instrumentos_comunes`) VALUES
(1, 'Rock', 'El rock and roll como tal, tiene sus orígenes entre 1930 y 1950, pudiendo observarse, sin embargo, elementos propios de este género en producciones de rhythm and blues que datan incluso de los años 1920. En los orígenes del rock and roll existía una combinación de elementos de blues, boogie woogie, jazz y rhythm. El género también estaba influenciado por géneros tradicionales como el Hillbilly, la música folk de Irlanda, la música gospel y la música country.', 'Guitarra Eléctrica, bajo, batería, armónica, piano.'),
(2, 'Pop', 'La música pop (del inglés pop music, contracción de popular music), también conocida simplemente como pop, es un género de música popular que tuvo su origen a finales de los años 1950 como una derivación del traditional pop, en combinación con otros géneros musicales que estaban de moda en aquel momento.1​2​ Los términos música pop y música popular se usan a menudo de manera indistinta, aunque el segundo tiene un sentido más amplio al dar cabida a otros géneros distintos del pop que se considere', 'Guitarra, bajo, batería, guitarra eléctrica, teclado, sintetizador, caja de ritmos, secuenciador, sampler, percusión.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bandas`
--
ALTER TABLE `bandas`
  ADD PRIMARY KEY (`id_banda`),
  ADD KEY `fk_restriction` (`id_genero_fk`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bandas`
--
ALTER TABLE `bandas`
  MODIFY `id_banda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bandas`
--
ALTER TABLE `bandas`
  ADD CONSTRAINT `fk_restriction` FOREIGN KEY (`id_genero_fk`) REFERENCES `genero` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
