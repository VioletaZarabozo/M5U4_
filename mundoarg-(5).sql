-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-12-2022 a las 18:42:23
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundoarg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` varchar(250) DEFAULT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `img_id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'lago-epuyen_nd2mln', 'PATAGONIA, ESPECTACULARES PAISAJES DEL SUR DE ARGENTINA', 'El sur de Argentina es un cofre repleto de paisajes que cortan la respiración. Este viaje hilvana los tres más espectaculares: los lagos de Bariloche, la Península Valdés y el glaciar Perito Moreno', 'FITZ ROY\r\nEste pico de 3.405 metros es el emblema de los Andes más agrestes y salvajes. Desde El Chaltén parten itinerarios que se acercan a su base y también las rutas que suben a la cumbre.\r\n\r\nVILLA LA ANGOSTURA\r\nLa cascada de Santa Ana salta 50 metros entre rocas basálticas y helechos. Es uno de los mayores atractivos de esta localidad situada a 70 kilómetros de Bariloche.\r\n\r\nPERITO MORENO\r\nCon un frente de 5 kilómetros de longitud y unos 60 metros de alto, el glaciar más famoso de la Patagonia vuelca sus hielos en el brazo sur del Lago Argentino.\r\n\r\nSAN CARLOS DE BARILOCHE\r\nEs la puerta de entrada al Parque Nacional Nahuel Huapi, en la región de los lagos.\r\n\r\nPUERTO PIRÁMIDES\r\nGrandes colonias de pingüinos y leones marinos habitan bajo los acantilados blancos que se alzan en este enclave del sur de Península Valdés. \r\n\r\nPENÍNSULA VALDÉS\r\nPuerto Madryn y Puerto Pirámides son los puntos de partida para explorar a pie, en vehículo o en barco esta zona de la Patagonia atlántica.\r\n\r\nCUEVA DE LAS MANOS\r\nLa Patagonia fue el hogar de uno de los grupos humanos más antiguos de América del Sur. Así lo revelan las pinturas rupestres halladas en las cuevas y farallones del Cañadón del Río Pinturas, en la provincia de Santa Cruz, a seis horas en coche del glaciar Perito Moreno. El sitio arqueológico Cueva de las Manos alberga el conjunto de pinturas más destacado, con 600 metros cubiertos de representaciones de animales, escenas de caza, negativos de manos y figuras abstractas. En 1941, el sacerdote Alberto M. de Agostini fue el primer hombre blanco en ver las pinturas, un momento que recogió en su libro Los Andes (1950) junto a descripciones y cuatro fotografías. En la Cuenca del Río Pinturas se localizan otros enclaves arqueológicos que ponen de manifiesto la presencia en la zona de una comunidad de cazadores recolectores hace 9.300 años. '),
(2, NULL, 'UNA RECORRIDA POR LA PROVINCIA DE CHUBUT', 'La provincia de Chubut está ubicada entre los paralelos 42 y 46 de latitud sur y entre el Océano Atlántico y la Cordillera de los Andes. Tiene una superficie de 224.688 Km2 y 413.237 habitantes (según el censo de 2001) con una densidad de 1.84 habitantes por km2.', 'ZONA ATLÁNTICA\r\n\r\nEn esta zona podremos bañarnos y broncearnos en las playas de Puerto Madryn o recorrer la Península Valdés, internacionalmente conocida por su fauna. Allí conoceremos la ballena Franca Austral, los lobos y elefantes marinos, los pingüinos de Magallanes y la fauna terrestre.\r\n\r\nTambién en la zona costera podremos realizar el avistaje de la tonina overa en la hermosa Playa Unión vecina a Rawson y a Trelew. En esta última ciudad puede visitar el Museo Paleontológico Egidio Feruglio y luego ir a tomar el té a Gaiman donde recide una importante colonia galesa que no ha perdido ninguna de sus tradiciones.\r\n\r\nSiguiendo por la RN 3 hacia el sur encontramos las áreas protegidas de Punta Tombo con sus pingüinos y Cabo Dos Bahías con sus guanacos, además de poder visitar los lobitos y bañarnos en la playa de Rada Tilly a pocos kilómetros de Comodoro Rivadavia.\r\n\r\nZONA CENTRAL\r\n\r\nEn la meseta el clima es riguroso y la escasa población rural se nuclea en pequeños centros o pueblos, o se halla dispersa en los puestos de los establecimientos ganaderos dedicada, casi exclusivamente, a la cría y cuidado de ganado ovino.\r\n\r\nRecorrer esta zona significa atravesar el desierto patagónico con su paisaje de estepa y llegar a la cordillera con montañas, bosques y lagos, cuya principal ciudad es Esquel. Si se anima a los caminos de ripio, conocerá pequeñísimos pueblos cuyos habitantes saben disfrutar de la soledad y le relatarán historias de vida que no olvidará.\r\n\r\nPodrá ver a lo largo de la ruta los molinos de energía eólica que generan electricidad o, si lo prefiere, puede visitar el Parque Eólico de Comodoro Rivadavia.\r\n\r\nTomando hacia el oeste se encontrará con el Bosque Petrificado de Sarmiento; podrá practicar la pescadeportiva y conocer el turismo rural en Río Mayo, hasta llegar a los lagos Fontana y La Plata en el límite con Chile.\r\n\r\nZONA CORDILLERANA\r\nEsta región tiene toda la belleza indiscutible de la Cordillera de los Andes, donde montañas, lagos, ríos y bosques se mezclan para dejarlo sin aliento. El turismo de aventura en esta zona no tiene límites: excursiones en 4x4, andinismo, esquí, rafting, parapente y aladeltismo. Pero si su corazón no se lo permite podrá realizar tranquilas cabalgatas, hacer campamentismo y trekking. También es la zona ideal para pescar en los ríos y lagos y disfrutar de la gastronomía con productos típicos como truchas, hierbas, hongos y fruta fina.'),
(15, 'zqwxqqse88v1qzxdusxd', 'CINCO MEJORES DESTINOS DE TURISMO RURAL POR ARGENTINA', 'Cinco destinos de Turismo Rural', 'El Turismo Rural es una modalidad que tiene lugar en entornos no urbanos y que le permite al viajero conocer la vida del campo y aprender sobre las costumbres y tradiciones propias de la comunidad que se recorre.\r\nAbarca actividades muy diversas como aprender técnicas agrícolas y hacer práctica de pato, nuestro deporte nacional. También tomar excursiones, caminatas y safaris fotográficos.\r\nTodo ello tiene lugar en establecimientos alejados de la ciudad y usualmente atendidos por sus propios dueños. Por ejemplo:\r\n-Fincas y Estancias: Muchas de ellas cuentan con cascos históricos y brindan servicios de máximo nivel. Algunas poseen cientos de hectáreas con plantaciones de nogales, olivares o viñedos.\r\n-Casas campestres: Enmarcadas por impresionantes paisajes de sierras, valles o montañas. Estas propiedades incluyen desayunos regionales y cartas de cocina local.\r\n-Hoteles temáticos: Cuya propuesta abarca días de campo con cabalgatas, partidos de polo o asado al aire libre.\r\n-Cabañas: De lago o de montaña, elegantes, lujosas o rústicas. En todas ellas se puede degustar una riquísima gastronomía y aprender acerca de las tradiciones del lugar.\r\n-Museos regionales: Donde se rescata la historia y origen de los primeros habitantes de la comunidad a través de documentos históricos, antiguas fotografías o viejas herramientas.\r\n\r\nTambién forman parte de esta cadena los hostales, bodegas, casas de artesanías y restaurantes que ofrecen los sabores típicos del lugar. La propuesta de cada uno de ellos es única, ya que su entorno determina que actividades se pueden realizar y qué productos se van a consumir. En Argentina es posible practicar este tipo de turismo en provincias como San Juan, La Pampa, Santa Cruz y Chubut, entre otros. También se desarrolla con fuerza en la provincia de Buenos Aires, que se caracteriza por la gran cantidad de pueblos rurales de su interior. Paisajes de ensueño, bosques de caldén, inmensas llanuras o altas montañas forman parte de la oferta de Turismo Rural en Argentina.\r\nA continuación te vamos a contar los 5 destinos para vivir una bella experiencia en zonas rurales:\r\n-La Rioja.\r\n-La Pampa.\r\n-Córdoba.\r\n-Buenos Aires (San Antonio de Areco, Chascomús, Lobos, Brandsen, Tandil). ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

DROP TABLE IF EXISTS `suscripcion`;
CREATE TABLE IF NOT EXISTS `suscripcion` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `suscripcion`
--

INSERT INTO `suscripcion` (`id`, `nombre`, `password`, `mail`) VALUES
(1, 'Violeta', '81dc9bdb52d04dc20036dbd8313ed055', 'violeta@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
