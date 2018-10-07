-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2018 a las 23:26:01
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `callcenter`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesousuarios`
--

CREATE TABLE `accesousuarios` (
  `ID` int(11) NOT NULL,
  `USUARIO` int(11) NOT NULL,
  `PROTECCION` int(11) NOT NULL,
  `ESTATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accesousuarios`
--

INSERT INTO `accesousuarios` (`ID`, `USUARIO`, `PROTECCION`, `ESTATUS`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 1),
(13, 1, 13, 1),
(14, 1, 14, 1),
(15, 1, 15, 1),
(16, 1, 16, 1),
(17, 3, 1, 1),
(18, 3, 2, 1),
(19, 3, 3, 1),
(20, 3, 4, 1),
(21, 3, 5, 1),
(22, 3, 6, 1),
(23, 3, 7, 1),
(24, 3, 8, 1),
(25, 3, 9, 1),
(26, 3, 10, 1),
(27, 3, 11, 1),
(28, 3, 12, 1),
(29, 3, 13, 1),
(30, 3, 14, 1),
(31, 3, 15, 1),
(32, 3, 16, 1),
(33, 3, 17, 1),
(34, 3, 18, 1),
(35, 3, 19, 1),
(36, 3, 20, 1),
(37, 1, 17, 1),
(38, 1, 18, 1),
(39, 1, 19, 1),
(40, 1, 20, 1),
(41, 1, 21, 1),
(42, 1, 22, 1),
(43, 1, 23, 1),
(44, 1, 24, 1),
(45, 1, 25, 1),
(46, 1, 26, 1),
(47, 1, 27, 1),
(48, 1, 28, 1),
(49, 1, 29, 1),
(50, 1, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrera`
--

CREATE TABLE `barrera` (
  `IdBarrera` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Nro_Barrera` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `barrera`
--

INSERT INTO `barrera` (`IdBarrera`, `IdUsuario`, `Nro_Barrera`) VALUES
(1, 1, 'barrera 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`ID`, `DESCRIPCION`, `ESTATUS`) VALUES
(1, 'INICIO', 0),
(2, 'MIS CLIENTES', 0),
(3, 'COBRANZA', 0),
(4, 'CARGAR EXCEL', 0),
(5, 'PROCESAR EXCEL', 0),
(6, 'USUARIOS', 0),
(7, 'REPORTES', 0),
(8, 'LISTA USUARIO ', 0),
(9, 'PLANES', 0),
(10, 'PERMISOS', 0),
(11, 'ASIGNAR PERMISOS', 0),
(12, 'CAMBIAR PASSWORD', 0),
(13, 'INFORMACION', 0),
(14, 'ELIMINAR EXCEL', 0),
(15, 'VACIAR TABLAS MYSQL', 0),
(16, 'RESPALDAR BASE DE DATOS MYSQL', 0),
(17, 'PERSONA', 0),
(18, 'TAG', 0),
(20, 'CLIENTE', 0),
(21, 'PERSONA', 0),
(22, 'LISTAR PERSONA', 0),
(23, 'LISTAR CLIENTE', 0),
(24, 'PASO', 0),
(25, 'LISTAR TAG', 0),
(26, 'VEHICULO', 0),
(27, 'LISTAR USUARIO', 0),
(28, 'LISTAR VEHICULO', 0),
(29, 'EQUIPO', 0),
(30, 'LISTAR EQUIPOS', 0),
(31, 'LIBERAR', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcat` int(10) NOT NULL,
  `nro_cat` varchar(45) DEFAULT NULL,
  `cantidad_eje` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcat`, `nro_cat`, `cantidad_eje`) VALUES
(1, 'AA', 2),
(2, 'NOMBRE', 2),
(3, 'NOMBRE', 789),
(4, 'PRUEBA', 2147483647),
(5, 'PRUEBA', 2147483647),
(6, 'NOSE', 1231),
(7, 'BG', 6252),
(8, '2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `IdPersona` int(11) NOT NULL,
  `Ci` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `IdPersona`, `Ci`, `Direccion`) VALUES
(1, 2, '4874066', 'ESPAÃ±A'),
(2, 2, '4874055', 'Mariscal lopez'),
(3, 3, '589602', 'san isidro'),
(4, 4, '4874560', 'VENEZUELA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `IdDistrito` int(11) NOT NULL,
  `IdBarrera` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`IdDistrito`, `IdBarrera`, `Nombre`) VALUES
(1, 1, 'Ypacarai');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `idEquipos` int(11) NOT NULL,
  `nombre_equipo` varchar(45) NOT NULL,
  `idbarrera_equipos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`idEquipos`, `nombre_equipo`, `idbarrera_equipos`) VALUES
(1, 'NOSE', 1),
(2, 'EQUIPO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `ID` int(11) NOT NULL,
  `USUARIO` int(11) NOT NULL,
  `TABLA` varchar(30) NOT NULL,
  `ACCION` varchar(10) NOT NULL,
  `COMANDO` varchar(300) NOT NULL,
  `FECHA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_llamadas`
--

CREATE TABLE `log_llamadas` (
  `ID` int(11) NOT NULL,
  `FECHA` varchar(30) NOT NULL,
  `RUT` varchar(20) NOT NULL,
  `OBSERVACIONES` text NOT NULL,
  `DATOSCIERRE` text NOT NULL,
  `ID_TIPIFICACION` int(11) NOT NULL,
  `ID_CLIENTE` int(11) NOT NULL,
  `ID_EJECUTIVO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `lstvehiculos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `lstvehiculos` (
`idCliente` int(11)
,`Nombre` varchar(45)
,`Apellido` varchar(45)
,`ci` varchar(45)
,`Telefono` varchar(45)
,`Direccion` varchar(45)
,`Cod_Tag` varchar(45)
,`Estado` varchar(45)
,`Marca` varchar(45)
,`Modelo` varchar(45)
,`Matricula` varchar(45)
,`Chasis` varchar(45)
,`COSTO` double
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `ci` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `Nombre`, `Apellido`, `Correo`, `Telefono`, `ci`) VALUES
(1, 'damian', 'APELLIDO', 'MMM@MMMM', '0981187124', '480'),
(2, 'Pedro', 'APELLIDO', 'pedro@gmail.com', '0971733880', '5555'),
(3, 'PABLO', 'caceres', 'MMM@MMMM', '0992568214', '8787'),
(4, 'pedro', 'CACERES', 'MMM@MMMM', '0981325783', '5685'),
(5, 'PEDRO', 'CACERES', 'MMM@MMMM', '0971733880', '4874055'),
(6, 'PRUEBA', 'PRUEBA', 'MMM@MMMM', '0971733880', '8888'),
(7, 'Pablo', 'caceres', 'MMM@MMMM', '0971733880', '8989'),
(8, 'NOMBRE', 'TRECE', 'MMM@MMMM', '0971733880', '7842'),
(9, 'PEDRO', 'CACERES', 'MMM@MMMM', '0971733880', '9999');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Costo` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`ID`, `DESCRIPCION`, `Costo`) VALUES
(5, 'LIVIANO', 5000),
(6, 'CAMIONES Y Ã³MNIBUS CON DOS EJES', 10000),
(7, 'VEHÃ­CULOS LIVIANOS CON ACOPLADOS', 10000),
(8, 'CAMIONES CON 03 (TRES) EJES', 15000),
(9, 'CAMIONES CON MÃ¡S DE 03 (TRES) EJES', 20000),
(10, 'NINGUNO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_clientes`
--

CREATE TABLE `plan_clientes` (
  `ID` int(11) NOT NULL,
  `NOMBRE_PLAN` varchar(50) NOT NULL,
  `FECHA_ACTIVACION` varchar(20) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan_clientes`
--

INSERT INTO `plan_clientes` (`ID`, `NOMBRE_PLAN`, `FECHA_ACTIVACION`, `TELEFONO`, `ESTATUS`) VALUES
(1, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(2, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(3, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(4, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(5, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(6, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(7, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(8, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(9, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(10, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(11, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(12, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(13, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(14, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(15, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(16, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(17, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(18, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(19, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(20, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(21, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(22, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(23, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(24, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(25, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(26, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(27, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(28, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(29, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(30, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(31, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(32, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(33, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(34, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(35, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(36, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(37, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(38, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(39, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(40, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(41, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(42, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(43, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(44, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(45, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(46, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(47, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(48, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(49, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(50, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(51, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(52, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(53, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(54, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(55, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(56, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(57, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(58, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(59, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(60, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(61, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(62, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(63, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(64, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(65, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(66, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(67, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(68, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(69, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(70, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(71, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(72, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(73, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(74, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(75, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(76, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(77, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(78, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(79, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(80, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(81, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(82, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(83, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(84, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(85, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(86, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(87, '292 CTA CONTROLADA RED 11990', '17-Aug-11', '96773378', 0),
(88, '291 CTA CONTROLADA RED 8990', '9-Dec-10', '98978515', 0),
(89, '291 CTA CONTROLADA RED 8990', '24-Nov-11', '76036191', 0),
(90, '291 CTA CONTROLADA RED 8990', '13-May-09', '77535226', 0),
(91, '1410 Multimedia CC Light 9990', '21-Aug-12', '66050933', 0),
(92, '1418 Cta Cda Red 11.990', '22-Oct-11', '84063664', 0),
(93, '291 CTA CONTROLADA RED 8990', '26-Jul-12', '66609626', 0),
(94, '291 CTA CONTROLADA RED 8990', '20-Apr-10', '90916319', 0),
(95, '291 CTA CONTROLADA RED 8990', '18-Oct-11', '82157442', 0),
(96, '1418 Cta Cda Red 11.990', '25-Jul-09', '96974307', 0),
(97, '291 CTA CONTROLADA RED 8990', '13-Nov-10', '98357817', 0),
(98, '1418 Cta Cda Red 11.990', '19-Jul-12', '82247711', 0),
(99, '291 CTA CONTROLADA RED 8990', '6-May-10', '91420678', 0),
(100, '1410 Multimedia CC Light 9990', '22-Jun-13', '76054419', 0),
(101, '291 CTA CONTROLADA RED 8990', '20-Apr-10', '88339299', 0),
(102, '285 CC FLAT 9990', '31-Jan-11', '94781474', 0),
(103, '291 CTA CONTROLADA RED 8990', '28-Jun-12', '73804333', 0),
(104, '285 CC FLAT 9990', '29-Jan-13', '84244173', 0),
(105, '291 CTA CONTROLADA RED 8990', '2-Aug-11', '82248857', 0),
(106, '291 CTA CONTROLADA RED 8990', '2-Feb-12', '99137580', 0),
(107, '1418 Cta Cda Red 11.990', '30-May-13', '78016967', 0),
(108, '291 CTA CONTROLADA RED 8990', '20-Oct-12', '97851971', 0),
(109, '291 CTA CONTROLADA RED 8990', '20-Jun-12', '91517141', 0),
(110, '285 CC FLAT 9990', '16-Dec-11', '66365568', 0),
(111, '1410 Multimedia CC Light 9990', '25-Jun-13', '90814398', 0),
(112, '286 CC FLAT 12990', '13-Jan-10', '93152489', 0),
(113, '291 CTA CONTROLADA RED 8990', '17-May-10', '81348169', 0),
(114, '285 CC FLAT 9990', '13-Dec-12', '90868824', 0),
(115, '291 CTA CONTROLADA RED 8990', '10-Sep-10', '95164111', 0),
(116, '292 CTA CONTROLADA RED 11990', '23-May-12', '83587196', 0),
(117, '1418 Cta Cda Red 11.990', '17-May-13', '57836611', 0),
(118, '286 CC FLAT 12990', '24-Feb-10', '95027729', 0),
(119, '286 CC FLAT 12990', '13-Dec-10', '87656138', 0),
(120, '1410 Multimedia CC Light 9990', '12-Mar-13', '75160110', 0),
(121, '291 CTA CONTROLADA RED 8990', '2-Dec-11', '95764098', 0),
(122, '291 CTA CONTROLADA RED 8990', '16-Aug-11', '62210352', 0),
(123, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91420406', 0),
(124, '1410 Multimedia CC Light 9990', '11-Jun-09', '84525817', 0),
(125, '1418 Cta Cda Red 11.990', '23-Sep-11', '95084518', 0),
(126, '291 CTA CONTROLADA RED 8990', '6-Aug-10', '97703164', 0),
(127, '285 CC FLAT 9990', '29-Sep-11', '66201587', 0),
(128, '292 CTA CONTROLADA RED 11990', '19-May-11', '95785207', 0),
(129, '292 CTA CONTROLADA RED 11990', '20-Oct-11', '97119171', 0),
(130, '1410 Multimedia CC Light 9990', '28-Jun-13', '93569715', 0),
(131, '291 CTA CONTROLADA RED 8990', '3-Nov-09', '94167619', 0),
(132, '285 CC FLAT 9990', '21-Oct-09', '87270589', 0),
(133, '292 CTA CONTROLADA RED 11990', '1-Feb-13', '69007279', 0),
(134, '291 CTA CONTROLADA RED 8990', '10-Jan-09', '90929556', 0),
(135, '1418 Cta Cda Red 11.990', '30-Apr-10', '78001695', 0),
(136, '292 CTA CONTROLADA RED 11990', '14-Apr-12', '75262840', 0),
(137, '291 CTA CONTROLADA RED 8990', '9-Aug-10', '77608413', 0),
(138, '291 CTA CONTROLADA RED 8990', '23-Sep-10', '82227327', 0),
(139, '1410 Multimedia CC Light 9990', '14-May-13', '84203591', 0),
(140, '1418 Cta Cda Red 11.990', '18-Aug-10', '96119168', 0),
(141, '292 CTA CONTROLADA RED 11990', '11-Jul-11', '75440450', 0),
(142, '291 CTA CONTROLADA RED 8990', '19-Jan-11', '82277022', 0),
(143, '291 CTA CONTROLADA RED 8990', '11-Nov-09', '81919940', 0),
(144, '291 CTA CONTROLADA RED 8990', '9-Aug-12', '62226375', 0),
(145, '1410 Multimedia CC Light 9990', '29-Jul-13', '91325565', 0),
(146, '292 CTA CONTROLADA RED 11990', '9-Jul-12', '82410641', 0),
(147, '292 CTA CONTROLADA RED 11990', '12-Sep-12', '67264654', 0),
(148, '285 CC FLAT 9990', '25-Sep-09', '90906957', 0),
(149, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '66049919', 0),
(150, '1418 Cta Cda Red 11.990', '16-Jan-09', '79529467', 0),
(151, '1416 Cta Cda 9.990', '23-Mar-12', '82263129', 0),
(152, '1418 Cta Cda Red 11.990', '20-Aug-09', '84558805', 0),
(153, '292 CTA CONTROLADA RED 11990', '15-Jan-10', '82578224', 0),
(154, '1410 Multimedia CC Light 9990', '11-Jun-13', '57629026', 0),
(155, '291 CTA CONTROLADA RED 8990', '16-Nov-09', '84457694', 0),
(156, '292 CTA CONTROLADA RED 11990', '17-Jan-09', '78824912', 0),
(157, '1418 Cta Cda Red 11.990', '17-May-12', '67666187', 0),
(158, '291 CTA CONTROLADA RED 8990', '23-Apr-10', '82758958', 0),
(159, '292 CTA CONTROLADA RED 11990', '18-Mar-10', '95970106', 0),
(160, '291 CTA CONTROLADA RED 8990', '11-Feb-13', '91502001', 0),
(161, '1410 Multimedia CC Light 9990', '10-Apr-13', '56010451', 0),
(162, '1410 Multimedia CC Light 9990', '30-Apr-13', '91425010', 0),
(163, '1418 Cta Cda Red 11.990', '15-Jul-13', '84212396', 0),
(164, '291 CTA CONTROLADA RED 8990', '27-Feb-12', '98930710', 0),
(165, '291 CTA CONTROLADA RED 8990', '28-Apr-10', '87688548', 0),
(166, '291 CTA CONTROLADA RED 8990', '30-Jul-09', '84323222', 0),
(167, '1410 Multimedia CC Light 9990', '4-May-10', '82893533', 0),
(168, '292 CTA CONTROLADA RED 11990', '5-Mar-12', '84613042', 0),
(169, '291 CTA CONTROLADA RED 8990', '12-Oct-12', '81310123', 0),
(170, '1410 Multimedia CC Light 9990', '6-Jan-12', '87436782', 0),
(171, '1410 Multimedia CC Light 9990', '5-Mar-13', '77602965', 0),
(172, '1410 Multimedia CC Light 9990', '25-Feb-13', '76622283', 0),
(173, '286 CC FLAT 12990', '12-Feb-13', '93017632', 0),
(174, '291 CTA CONTROLADA RED 8990', '21-Apr-12', '82587910', 0),
(175, '291 CTA CONTROLADA RED 8990', '28-Apr-10', '62174042', 0),
(176, '292 CTA CONTROLADA RED 11990', '23-Feb-12', '75561058', 0),
(177, '1418 Cta Cda Red 11.990', '19-Jun-13', '90854715', 0),
(178, '1410 Multimedia CC Light 9990', '17-Jan-12', '79907556', 0),
(179, '291 CTA CONTROLADA RED 8990', '9-Jun-10', '94163408', 0),
(180, '286 CC FLAT 12990', '15-Jun-12', '95187547', 0),
(181, '292 CTA CONTROLADA RED 11990', '8-Jan-10', '88238745', 0),
(182, '1418 Cta Cda Red 11.990', '16-May-12', '66329416', 0),
(183, '291 CTA CONTROLADA RED 8990', '12-Oct-10', '95720686', 0),
(184, '291 CTA CONTROLADA RED 8990', '18-Jan-10', '87405729', 0),
(185, '291 CTA CONTROLADA RED 8990', '26-Dec-12', '94125697', 0),
(186, '291 CTA CONTROLADA RED 8990', '4-May-12', '96771895', 0),
(187, '1410 Multimedia CC Light 9990', '19-Jun-13', '84533357', 0),
(188, '1410 Multimedia CC Light 9990', '22-May-12', '90929544', 0),
(189, '291 CTA CONTROLADA RED 8990', '1-Jun-10', '76467702', 0),
(190, '1410 Multimedia CC Light 9990', '18-Mar-13', '75668701', 0),
(191, '291 CTA CONTROLADA RED 8990', '14-Aug-12', '85807423', 0),
(192, '291 CTA CONTROLADA RED 8990', '10-Apr-09', '88228610', 0),
(193, '1418 Cta Cda Red 11.990', '21-Sep-12', '75847249', 0),
(194, '1418 Cta Cda Red 11.990', '22-Feb-12', '97931287', 0),
(195, '291 CTA CONTROLADA RED 8990', '13-Apr-12', '87241919', 0),
(196, '1418 Cta Cda Red 11.990', '20-Dec-12', '95118059', 0),
(197, '292 CTA CONTROLADA RED 11990', '25-Sep-12', '73719842', 0),
(198, '291 CTA CONTROLADA RED 8990', '7-Jun-11', '84613905', 0),
(199, '291 CTA CONTROLADA RED 8990', '16-Oct-09', '93028998', 0),
(200, '291 CTA CONTROLADA RED 8990', '4-May-12', '66434519', 0),
(201, '1418 Cta Cda Red 11.990', '25-Jul-13', '57218197', 0),
(202, '1418 Cta Cda Red 11.990', '21-Feb-11', '95756881', 0),
(203, '291 CTA CONTROLADA RED 8990', '6-Aug-10', '87349872', 0),
(204, '291 CTA CONTROLADA RED 8990', '10-Dec-08', '82035985', 0),
(205, '291 CTA CONTROLADA RED 8990', '18-Jul-11', '82769124', 0),
(206, '285 CC FLAT 9990', '7-Dec-09', '82654006', 0),
(207, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '78837774', 0),
(208, '1410 Multimedia CC Light 9990', '27-Jun-13', '75553973', 0),
(209, '291 CTA CONTROLADA RED 8990', '8-Jun-10', '91316997', 0),
(210, '291 CTA CONTROLADA RED 8990', '31-Aug-10', '94986905', 0),
(211, '1418 Cta Cda Red 11.990', '11-Jun-09', '84560300', 0),
(212, '291 CTA CONTROLADA RED 8990', '28-Dec-10', '82160874', 0),
(213, '291 CTA CONTROLADA RED 8990', '21-Jan-11', '76471714', 0),
(214, '291 CTA CONTROLADA RED 8990', '18-Aug-10', '96182962', 0),
(215, '291 CTA CONTROLADA RED 8990', '24-Oct-11', '75354629', 0),
(216, '291 CTA CONTROLADA RED 8990', '29-May-10', '87261014', 0),
(217, '285 CC FLAT 9990', '28-Dec-12', '81529476', 0),
(218, '1418 Cta Cda Red 11.990', '20-Aug-11', '84128487', 0),
(219, '291 CTA CONTROLADA RED 8990', '24-Oct-12', '79568268', 0),
(220, '286 CC FLAT 12990', '27-Sep-10', '95137253', 0),
(221, '292 CTA CONTROLADA RED 11990', '10-Oct-12', '73923415', 0),
(222, '291 CTA CONTROLADA RED 8990', '22-Nov-11', '94155239', 0),
(223, '1416 Cta Cda 9.990', '22-May-13', '98651616', 0),
(224, '291 CTA CONTROLADA RED 8990', '7-Jul-10', '88144930', 0),
(225, '1410 Multimedia CC Light 9990', '4-Jun-13', '57869727', 0),
(226, '1410 Multimedia CC Light 9990', '4-Mar-13', '87368428', 0),
(227, '286 CC FLAT 12990', '11-Apr-12', '69064237', 0),
(228, '291 CTA CONTROLADA RED 8990', '19-Jan-11', '81316511', 0),
(229, '291 CTA CONTROLADA RED 8990', '26-Feb-13', '68955037', 0),
(230, '1418 Cta Cda Red 11.990', '8-Jul-13', '75104122', 0),
(231, '292 CTA CONTROLADA RED 11990', '11-Nov-11', '98164877', 0),
(232, '291 CTA CONTROLADA RED 8990', '3-Jun-09', '99358950', 0),
(233, '1410 Multimedia CC Light 9990', '4-Jun-13', '62422239', 0),
(234, '291 CTA CONTROLADA RED 8990', '4-Jan-12', '66400594', 0),
(235, '1418 Cta Cda Red 11.990', '23-Apr-09', '84301717', 0),
(236, '1418 Cta Cda Red 11.990', '7-Apr-09', '91421360', 0),
(237, '291 CTA CONTROLADA RED 8990', '28-Jan-12', '93128805', 0),
(238, '286 CC FLAT 12990', '29-Jul-10', '99970343', 0),
(239, '291 CTA CONTROLADA RED 8990', '15-May-12', '88858984', 0),
(240, '291 CTA CONTROLADA RED 8990', '19-Dec-11', '66108644', 0),
(241, '291 CTA CONTROLADA RED 8990', '14-Nov-11', '99405130', 0),
(242, '291 CTA CONTROLADA RED 8990', '17-Aug-12', '81515853', 0),
(243, '291 CTA CONTROLADA RED 8990', '23-May-12', '99661218', 0),
(244, '1418 Cta Cda Red 11.990', '28-Mar-13', '78714223', 0),
(245, '1416 Cta Cda 9.990', '6-Sep-12', '76028085', 0),
(246, '291 CTA CONTROLADA RED 8990', '22-Jun-11', '76057680', 0),
(247, '291 CTA CONTROLADA RED 8990', '8-Jun-12', '65187483', 0),
(248, '1418 Cta Cda Red 11.990', '9-Aug-12', '92912758', 0),
(249, '1416 Cta Cda 9.990', '29-Jan-13', '76409386', 0),
(250, '291 CTA CONTROLADA RED 8990', '3-Nov-10', '88820435', 0),
(251, '285 CC FLAT 9990', '11-Jul-11', '97761691', 0),
(252, '291 CTA CONTROLADA RED 8990', '4-Jul-11', '82187318', 0),
(253, '291 CTA CONTROLADA RED 8990', '30-Apr-11', '82250806', 0),
(254, '1418 Cta Cda Red 11.990', '18-Jun-13', '99421367', 0),
(255, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '78764354', 0),
(256, '1418 Cta Cda Red 11.990', '12-Mar-13', '96179915', 0),
(257, '291 CTA CONTROLADA RED 8990', '19-Mar-12', '92973849', 0),
(258, '292 CTA CONTROLADA RED 11990', '14-Mar-12', '81331977', 0),
(259, '292 CTA CONTROLADA RED 11990', '24-Sep-12', '84350141', 0),
(260, '1418 Cta Cda Red 11.990', '28-Jul-12', '76554200', 0),
(261, '291 CTA CONTROLADA RED 8990', '10-Aug-11', '87501207', 0),
(262, '1418 Cta Cda Red 11.990', '30-Mar-10', '88310179', 0),
(263, '291 CTA CONTROLADA RED 8990', '24-May-10', '77494432', 0),
(264, '285 CC FLAT 9990', '19-Oct-09', '99400615', 0),
(265, '291 CTA CONTROLADA RED 8990', '26-Aug-11', '98282935', 0),
(266, '291 CTA CONTROLADA RED 8990', '3-May-12', '82606551', 0),
(267, '291 CTA CONTROLADA RED 8990', '18-Jun-11', '88202332', 0),
(268, '1418 Cta Cda Red 11.990', '13-May-10', '84071519', 0),
(269, '292 CTA CONTROLADA RED 11990', '17-Nov-12', '66246296', 0),
(270, '291 CTA CONTROLADA RED 8990', '4-Nov-11', '87466623', 0),
(271, '1418 Cta Cda Red 11.990', '28-May-10', '84210086', 0),
(272, '1410 Multimedia CC Light 9990', '11-Feb-13', '92168162', 0),
(273, '286 CC FLAT 12990', '18-Jan-10', '77046786', 0),
(274, '1410 Multimedia CC Light 9990', '11-Apr-13', '96171929', 0),
(275, '291 CTA CONTROLADA RED 8990', '5-Feb-10', '92116152', 0),
(276, '1418 Cta Cda Red 11.990', '24-Nov-10', '97955542', 0),
(277, '292 CTA CONTROLADA RED 11990', '28-Feb-12', '81861543', 0),
(278, '291 CTA CONTROLADA RED 8990', '29-Aug-12', '95005006', 0),
(279, '292 CTA CONTROLADA RED 11990', '4-Sep-12', '84465657', 0),
(280, '291 CTA CONTROLADA RED 8990', '14-Apr-09', '93149225', 0),
(281, '291 CTA CONTROLADA RED 8990', '3-Nov-10', '84723548', 0),
(282, '291 CTA CONTROLADA RED 8990', '19-Apr-12', '79630221', 0),
(283, '1410 Multimedia CC Light 9990', '22-Aug-12', '87264755', 0),
(284, '291 CTA CONTROLADA RED 8990', '13-Sep-10', '87385905', 0),
(285, '291 CTA CONTROLADA RED 8990', '21-Oct-10', '94859599', 0),
(286, '285 CC FLAT 9990', '15-Jun-11', '84027331', 0),
(287, '1418 Cta Cda Red 11.990', '23-Mar-10', '84738395', 0),
(288, '1410 Multimedia CC Light 9990', '10-Jun-10', '84776592', 0),
(289, '291 CTA CONTROLADA RED 8990', '14-May-12', '71010345', 0),
(290, '291 CTA CONTROLADA RED 8990', '27-Dec-10', '81863792', 0),
(291, '285 CC FLAT 9990', '26-Apr-12', '96999073', 0),
(292, '286 CC FLAT 12990', '21-Jan-10', '82242575', 0),
(293, '1418 Cta Cda Red 11.990', '15-Dec-11', '94851961', 0),
(294, '1410 Multimedia CC Light 9990', '31-May-12', '94732253', 0),
(295, '291 CTA CONTROLADA RED 8990', '24-Feb-12', '84518670', 0),
(296, '291 CTA CONTROLADA RED 8990', '5-Aug-09', '87324304', 0),
(297, '291 CTA CONTROLADA RED 8990', '22-Dec-10', '82869242', 0),
(298, '291 CTA CONTROLADA RED 8990', '21-Oct-10', '99135937', 0),
(299, '291 CTA CONTROLADA RED 8990', '31-Jul-09', '78005578', 0),
(300, '1418 Cta Cda Red 11.990', '22-Aug-11', '62049025', 0),
(301, '285 CC FLAT 9990', '24-Jun-09', '88839349', 0),
(302, '291 CTA CONTROLADA RED 8990', '16-Aug-10', '95084141', 0),
(303, '285 CC FLAT 9990', '11-May-12', '79444615', 0),
(304, '291 CTA CONTROLADA RED 8990', '4-Mar-09', '95739151', 0),
(305, '1410 Multimedia CC Light 9990', '29-Sep-12', '92128451', 0),
(306, '292 CTA CONTROLADA RED 11990', '9-Feb-13', '78355116', 0),
(307, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '78941581', 0),
(308, '1416 Cta Cda 9.990', '29-Apr-11', '78966612', 0),
(309, '291 CTA CONTROLADA RED 8990', '24-Jul-12', '79607390', 0),
(310, '1410 Multimedia CC Light 9990', '16-Apr-13', '90903504', 0),
(311, '291 CTA CONTROLADA RED 8990', '30-Nov-11', '78733872', 0),
(312, '291 CTA CONTROLADA RED 8990', '16-Nov-12', '75328302', 0),
(313, '291 CTA CONTROLADA RED 8990', '14-Jul-11', '96915032', 0),
(314, '291 CTA CONTROLADA RED 8990', '22-Jan-13', '66427432', 0),
(315, '1410 Multimedia CC Light 9990', '28-Jun-11', '88301925', 0),
(316, '1418 Cta Cda Red 11.990', '25-Jun-12', '69016565', 0),
(317, '285 CC FLAT 9990', '3-Jun-10', '94740430', 0),
(318, '1418 Cta Cda Red 11.990', '12-Jul-13', '98397651', 0),
(319, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '76047901', 0),
(320, '291 CTA CONTROLADA RED 8990', '20-Oct-11', '94846105', 0),
(321, '1418 Cta Cda Red 11.990', '4-Jul-13', '75293500', 0),
(322, '292 CTA CONTROLADA RED 11990', '14-Apr-12', '66850468', 0),
(323, '1410 Multimedia CC Light 9990', '22-May-13', '83022994', 0),
(324, '291 CTA CONTROLADA RED 8990', '22-May-12', '98819395', 0),
(325, '1418 Cta Cda Red 11.990', '9-Jun-12', '66526351', 0),
(326, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '96927450', 0),
(327, '291 CTA CONTROLADA RED 8990', '19-Mar-12', '66426200', 0),
(328, '1410 Multimedia CC Light 9990', '22-Jun-13', '73825468', 0),
(329, '286 CC FLAT 12990', '4-Aug-10', '62320396', 0),
(330, '292 CTA CONTROLADA RED 11990', '22-Nov-10', '94987877', 0),
(331, '292 CTA CONTROLADA RED 11990', '31-Aug-10', '93009558', 0),
(332, '1418 Cta Cda Red 11.990', '31-Jul-13', '84049881', 0),
(333, '285 CC FLAT 9990', '5-Jul-12', '81389282', 0),
(334, '292 CTA CONTROLADA RED 11990', '12-Jun-12', '56058392', 0),
(335, '292 CTA CONTROLADA RED 11990', '19-Jun-10', '79534228', 0),
(336, '291 CTA CONTROLADA RED 8990', '14-Aug-12', '77573754', 0),
(337, '1410 Multimedia CC Light 9990', '9-Apr-13', '56507961', 0),
(338, '291 CTA CONTROLADA RED 8990', '9-Nov-10', '98351013', 0),
(339, '292 CTA CONTROLADA RED 11990', '14-Nov-11', '90904920', 0),
(340, '1418 Cta Cda Red 11.990', '22-Nov-11', '90944410', 0),
(341, '1418 Cta Cda Red 11.990', '18-Jul-13', '69154011', 0),
(342, '291 CTA CONTROLADA RED 8990', '31-Jan-11', '82177009', 0),
(343, '292 CTA CONTROLADA RED 11990', '28-Nov-11', '76502996', 0),
(344, '291 CTA CONTROLADA RED 8990', '14-May-09', '84472956', 0),
(345, '292 CTA CONTROLADA RED 11990', '9-Jun-11', '84523104', 0),
(346, '291 CTA CONTROLADA RED 8990', '25-Aug-11', '62426943', 0),
(347, '292 CTA CONTROLADA RED 11990', '26-Apr-12', '93546142', 0),
(348, '1410 Multimedia CC Light 9990', '12-Apr-13', '95979903', 0),
(349, '286 CC FLAT 12990', '17-Dec-11', '76618763', 0),
(350, '1410 Multimedia CC Light 9990', '11-Nov-10', '90760849', 0),
(351, '291 CTA CONTROLADA RED 8990', '20-Jul-09', '93139431', 0),
(352, '292 CTA CONTROLADA RED 11990', '9-Oct-12', '66390131', 0),
(353, '292 CTA CONTROLADA RED 11990', '10-Dec-11', '84011242', 0),
(354, '291 CTA CONTROLADA RED 8990', '20-Apr-12', '84738838', 0),
(355, '1410 Multimedia CC Light 9990', '30-May-13', '76619211', 0),
(356, '291 CTA CONTROLADA RED 8990', '13-Aug-12', '62183488', 0),
(357, '1418 Cta Cda Red 11.990', '14-Jun-13', '84253463', 0),
(358, '1410 Multimedia CC Light 9990', '15-Jul-13', '84237355', 0),
(359, '292 CTA CONTROLADA RED 11990', '25-Nov-10', '77023212', 0),
(360, '1410 Multimedia CC Light 9990', '12-Aug-10', '82090310', 0),
(361, '1418 Cta Cda Red 11.990', '30-Aug-12', '95918736', 0),
(362, '291 CTA CONTROLADA RED 8990', '30-Jul-10', '88955573', 0),
(363, '292 CTA CONTROLADA RED 11990', '21-Jan-13', '76605192', 0),
(364, '291 CTA CONTROLADA RED 8990', '17-Aug-12', '65063917', 0),
(365, '291 CTA CONTROLADA RED 8990', '12-May-12', '96157146', 0),
(366, '1418 Cta Cda Red 11.990', '17-Apr-12', '87206987', 0),
(367, '1418 Cta Cda Red 11.990', '26-Jul-11', '75350439', 0),
(368, '1418 Cta Cda Red 11.990', '27-Jan-12', '82224092', 0),
(369, '286 CC FLAT 12990', '25-Sep-09', '96186817', 0),
(370, '1418 Cta Cda Red 11.990', '16-Oct-10', '98277099', 0),
(371, '291 CTA CONTROLADA RED 8990', '14-Sep-11', '88353156', 0),
(372, '291 CTA CONTROLADA RED 8990', '23-Oct-12', '97169800', 0),
(373, '286 CC FLAT 12990', '14-Jul-11', '75264277', 0),
(374, '1410 Multimedia CC Light 9990', '4-Jul-13', '66395707', 0),
(375, '291 CTA CONTROLADA RED 8990', '26-Dec-12', '94433015', 0),
(376, '291 CTA CONTROLADA RED 8990', '22-Jun-12', '75671730', 0),
(377, '291 CTA CONTROLADA RED 8990', '30-Jan-12', '62445304', 0),
(378, '1410 Multimedia CC Light 9990', '24-Apr-13', '82638131', 0),
(379, '291 CTA CONTROLADA RED 8990', '21-Sep-09', '98105974', 0),
(380, '292 CTA CONTROLADA RED 11990', '22-Feb-13', '84257839', 0),
(381, '291 CTA CONTROLADA RED 8990', '31-Jul-10', '94165338', 0),
(382, '1410 Multimedia CC Light 9990', '24-Apr-13', '56928583', 0),
(383, '291 CTA CONTROLADA RED 8990', '27-Aug-09', '90840336', 0),
(384, '291 CTA CONTROLADA RED 8990', '22-May-12', '93005448', 0),
(385, '291 CTA CONTROLADA RED 8990', '21-Sep-11', '84695054', 0),
(386, '1410 Multimedia CC Light 9990', '24-May-13', '90850026', 0),
(387, '291 CTA CONTROLADA RED 8990', '24-Nov-11', '90953685', 0),
(388, '1418 Cta Cda Red 11.990', '6-May-13', '90741268', 0),
(389, '1410 Multimedia CC Light 9990', '12-Jul-13', '75558435', 0),
(390, '292 CTA CONTROLADA RED 11990', '23-Apr-12', '82311325', 0),
(391, '291 CTA CONTROLADA RED 8990', '2-Nov-10', '90868944', 0),
(392, '291 CTA CONTROLADA RED 8990', '18-Aug-12', '66763765', 0),
(393, '285 CC FLAT 9990', '5-Jan-10', '90955231', 0),
(394, '1410 Multimedia CC Light 9990', '24-Jul-13', '76418026', 0),
(395, '1418 Cta Cda Red 11.990', '11-Nov-11', '97929989', 0),
(396, '291 CTA CONTROLADA RED 8990', '11-Jul-12', '56201438', 0),
(397, '291 CTA CONTROLADA RED 8990', '15-Nov-11', '66398897', 0),
(398, '285 CC FLAT 9990', '21-Dec-12', '78966323', 0),
(399, '291 CTA CONTROLADA RED 8990', '16-Jan-13', '66264946', 0),
(400, '1418 Cta Cda Red 11.990', '5-Jun-13', '57748765', 0),
(401, '291 CTA CONTROLADA RED 8990', '30-Jan-12', '84689821', 0),
(402, '291 CTA CONTROLADA RED 8990', '26-Oct-12', '90886101', 0),
(403, '1418 Cta Cda Red 11.990', '28-Dec-11', '84305653', 0),
(404, '1418 Cta Cda Red 11.990', '21-Feb-11', '62142312', 0),
(405, '291 CTA CONTROLADA RED 8990', '25-May-11', '87666073', 0),
(406, '1410 Multimedia CC Light 9990', '25-Jul-13', '98506109', 0),
(407, '286 CC FLAT 12990', '13-May-09', '76625571', 0),
(408, '291 CTA CONTROLADA RED 8990', '3-Sep-10', '84122775', 0),
(409, '292 CTA CONTROLADA RED 11990', '27-Jul-12', '79522465', 0),
(410, '286 CC FLAT 12990', '4-Jan-12', '79849929', 0),
(411, '291 CTA CONTROLADA RED 8990', '25-Feb-12', '66709220', 0),
(412, '1410 Multimedia CC Light 9990', '19-Jun-13', '98921746', 0),
(413, '292 CTA CONTROLADA RED 11990', '5-Apr-12', '76600394', 0),
(414, '291 CTA CONTROLADA RED 8990', '10-Dec-09', '99118869', 0),
(415, '1418 Cta Cda Red 11.990', '21-Feb-12', '73720568', 0),
(416, '1410 Multimedia CC Light 9990', '20-Jan-11', '84126309', 0),
(417, '291 CTA CONTROLADA RED 8990', '11-May-11', '90792422', 0),
(418, '1410 Multimedia CC Light 9990', '27-May-11', '92131430', 0),
(419, '291 CTA CONTROLADA RED 8990', '21-Aug-09', '82684639', 0),
(420, '1410 Multimedia CC Light 9990', '19-Jul-13', '66049461', 0),
(421, '291 CTA CONTROLADA RED 8990', '28-Mar-12', '99372335', 0),
(422, '1410 Multimedia CC Light 9990', '30-Jan-13', '93047528', 0),
(423, '1410 Multimedia CC Light 9990', '10-May-13', '73716971', 0),
(424, '291 CTA CONTROLADA RED 8990', '8-Mar-12', '66043995', 0),
(425, '1410 Multimedia CC Light 9990', '25-Aug-09', '94966182', 0),
(426, '291 CTA CONTROLADA RED 8990', '11-Dec-12', '96951584', 0),
(427, '1410 Multimedia CC Light 9990', '18-Jun-13', '67269481', 0),
(428, '291 CTA CONTROLADA RED 8990', '29-Jan-09', '82526846', 0),
(429, '291 CTA CONTROLADA RED 8990', '23-Feb-10', '87207324', 0),
(430, '1418 Cta Cda Red 11.990', '30-Oct-12', '62100044', 0),
(431, '286 CC FLAT 12990', '23-Apr-10', '81568772', 0),
(432, '1416 Cta Cda 9.990', '17-Feb-11', '95133224', 0),
(433, '1410 Multimedia CC Light 9990', '24-May-13', '91506961', 0),
(434, '291 CTA CONTROLADA RED 8990', '11-May-11', '82646244', 0),
(435, '1416 Cta Cda 9.990', '28-Nov-11', '84591014', 0),
(436, '292 CTA CONTROLADA RED 11990', '18-Apr-12', '94888594', 0),
(437, '291 CTA CONTROLADA RED 8990', '21-Mar-11', '88200079', 0),
(438, '291 CTA CONTROLADA RED 8990', '6-Oct-11', '87651928', 0),
(439, '291 CTA CONTROLADA RED 8990', '7-Dec-11', '75559481', 0),
(440, '291 CTA CONTROLADA RED 8990', '30-Nov-09', '84514960', 0),
(441, '291 CTA CONTROLADA RED 8990', '12-Mar-09', '96764778', 0),
(442, '291 CTA CONTROLADA RED 8990', '31-Mar-10', '88192565', 0),
(443, '292 CTA CONTROLADA RED 11990', '4-Dec-09', '84522777', 0),
(444, '286 CC FLAT 12990', '23-Jun-09', '82475241', 0),
(445, '1418 Cta Cda Red 11.990', '24-Jun-13', '94909681', 0),
(446, '291 CTA CONTROLADA RED 8990', '4-May-10', '84257466', 0),
(447, '1410 Multimedia CC Light 9990', '25-Oct-11', '75518798', 0),
(448, '1418 Cta Cda Red 11.990', '15-Feb-13', '56619630', 0),
(449, '1410 Multimedia CC Light 9990', '14-Jun-13', '62421043', 0),
(450, '291 CTA CONTROLADA RED 8990', '22-Jun-09', '82655735', 0),
(451, '292 CTA CONTROLADA RED 11990', '23-Mar-12', '87657702', 0),
(452, '292 CTA CONTROLADA RED 11990', '22-Dec-10', '81869056', 0),
(453, '1418 Cta Cda Red 11.990', '10-Jan-12', '99341047', 0),
(454, '291 CTA CONTROLADA RED 8990', '12-Jan-10', '92105576', 0),
(455, '291 CTA CONTROLADA RED 8990', '29-May-10', '82524143', 0),
(456, '292 CTA CONTROLADA RED 11990', '23-Apr-12', '91562336', 0),
(457, '291 CTA CONTROLADA RED 8990', '19-Oct-11', '81854071', 0),
(458, '291 CTA CONTROLADA RED 8990', '22-Jan-13', '82448583', 0),
(459, '1410 Multimedia CC Light 9990', '13-Apr-12', '87594387', 0),
(460, '286 CC FLAT 12990', '10-Sep-10', '84373426', 0),
(461, '1410 Multimedia CC Light 9990', '8-Jul-13', '57941834', 0),
(462, '1410 Multimedia CC Light 9990', '13-Jun-13', '62319300', 0),
(463, '285 CC FLAT 9990', '5-Sep-11', '99937432', 0),
(464, '291 CTA CONTROLADA RED 8990', '7-Jul-11', '94750264', 0),
(465, '291 CTA CONTROLADA RED 8990', '4-May-10', '82969878', 0),
(466, '1418 Cta Cda Red 11.990', '5-Sep-12', '82256480', 0),
(467, '291 CTA CONTROLADA RED 8990', '22-Dec-10', '84724876', 0),
(468, '1418 Cta Cda Red 11.990', '16-Apr-13', '76022246', 0),
(469, '291 CTA CONTROLADA RED 8990', '24-May-12', '88307283', 0),
(470, '292 CTA CONTROLADA RED 11990', '10-May-12', '88291968', 0),
(471, '292 CTA CONTROLADA RED 11990', '23-Nov-12', '98178104', 0),
(472, '285 CC FLAT 9990', '23-Mar-10', '94743060', 0),
(473, '1418 Cta Cda Red 11.990', '24-Sep-11', '82104892', 0),
(474, '1410 Multimedia CC Light 9990', '28-Aug-12', '68956260', 0),
(475, '291 CTA CONTROLADA RED 8990', '21-Sep-12', '88905375', 0),
(476, '286 CC FLAT 12990', '5-Aug-09', '82133105', 0),
(477, '1410 Multimedia CC Light 9990', '13-Sep-11', '93019897', 0),
(478, '1410 Multimedia CC Light 9990', '25-Mar-13', '88850409', 0),
(479, '291 CTA CONTROLADA RED 8990', '24-Jul-12', '95943034', 0),
(480, '1410 Multimedia CC Light 9990', '22-Sep-09', '87443079', 0),
(481, '291 CTA CONTROLADA RED 8990', '8-Nov-12', '82876908', 0),
(482, '1418 Cta Cda Red 11.990', '13-Nov-12', '79981383', 0),
(483, '1410 Multimedia CC Light 9990', '17-May-13', '66958180', 0),
(484, '291 CTA CONTROLADA RED 8990', '28-Mar-12', '91363900', 0),
(485, '1410 Multimedia CC Light 9990', '17-Nov-11', '81974028', 0),
(486, '291 CTA CONTROLADA RED 8990', '31-May-11', '88238296', 0),
(487, '291 CTA CONTROLADA RED 8990', '22-Aug-11', '92963781', 0),
(488, '292 CTA CONTROLADA RED 11990', '4-Apr-11', '84583853', 0),
(489, '291 CTA CONTROLADA RED 8990', '12-Oct-12', '62231746', 0),
(490, '286 CC FLAT 12990', '21-Oct-09', '92140011', 0),
(491, '292 CTA CONTROLADA RED 11990', '14-Nov-11', '79533370', 0),
(492, '292 CTA CONTROLADA RED 11990', '23-Jan-13', '62333393', 0),
(493, '1410 Multimedia CC Light 9990', '16-Apr-13', '95744939', 0),
(494, '292 CTA CONTROLADA RED 11990', '8-Feb-12', '76503140', 0),
(495, '291 CTA CONTROLADA RED 8990', '7-Jul-11', '91548198', 0),
(496, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '98810117', 0),
(497, '1410 Multimedia CC Light 9990', '16-May-12', '99159355', 0),
(498, '1418 Cta Cda Red 11.990', '23-Oct-12', '87446484', 0),
(499, '291 CTA CONTROLADA RED 8990', '8-Oct-10', '82651348', 0),
(500, '286 CC FLAT 12990', '27-Apr-12', '82203160', 0),
(501, '285 CC FLAT 9990', '21-Feb-11', '97912912', 0),
(502, '292 CTA CONTROLADA RED 11990', '25-Jul-11', '97729839', 0),
(503, '291 CTA CONTROLADA RED 8990', '12-Sep-12', '82962921', 0),
(504, '291 CTA CONTROLADA RED 8990', '26-Oct-12', '73707881', 0),
(505, '291 CTA CONTROLADA RED 8990', '17-Jan-12', '97759644', 0),
(506, '292 CTA CONTROLADA RED 11990', '22-Jan-13', '94187815', 0),
(507, '285 CC FLAT 9990', '15-May-10', '82774727', 0),
(508, '292 CTA CONTROLADA RED 11990', '24-Oct-12', '84145581', 0),
(509, '291 CTA CONTROLADA RED 8990', '9-Jul-11', '98313545', 0),
(510, '291 CTA CONTROLADA RED 8990', '7-Feb-11', '92940200', 0),
(511, '286 CC FLAT 12990', '6-May-11', '79513832', 0),
(512, '285 CC FLAT 9990', '10-May-10', '99445715', 0),
(513, '285 CC FLAT 9990', '22-Dec-09', '97904278', 0),
(514, '1418 Cta Cda Red 11.990', '1-Oct-12', '98353287', 0),
(515, '1410 Multimedia CC Light 9990', '9-Jan-13', '81443929', 0),
(516, '1416 Cta Cda 9.990', '5-Mar-13', '79913929', 0),
(517, '1410 Multimedia CC Light 9990', '19-Apr-13', '83401476', 0),
(518, '291 CTA CONTROLADA RED 8990', '28-Mar-12', '82786336', 0),
(519, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '82800408', 0),
(520, '291 CTA CONTROLADA RED 8990', '8-Jul-11', '93184673', 0),
(521, '292 CTA CONTROLADA RED 11990', '14-Jan-11', '94962163', 0),
(522, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78869339', 0),
(523, '291 CTA CONTROLADA RED 8990', '29-Oct-12', '97985654', 0),
(524, '285 CC FLAT 9990', '9-Feb-13', '75201689', 0),
(525, '1418 Cta Cda Red 11.990', '11-Jun-13', '82669350', 0),
(526, '291 CTA CONTROLADA RED 8990', '18-Feb-11', '87278229', 0),
(527, '291 CTA CONTROLADA RED 8990', '30-Jun-11', '84679826', 0),
(528, '291 CTA CONTROLADA RED 8990', '24-Jan-12', '81878371', 0),
(529, '1418 Cta Cda Red 11.990', '29-Jun-12', '92945469', 0),
(530, '1418 Cta Cda Red 11.990', '19-Jun-13', '97162318', 0),
(531, '291 CTA CONTROLADA RED 8990', '1-Jun-10', '93583489', 0),
(532, '285 CC FLAT 9990', '16-Oct-12', '82900689', 0),
(533, '291 CTA CONTROLADA RED 8990', '15-Dec-11', '87608496', 0),
(534, '286 CC FLAT 12990', '28-May-10', '84671844', 0),
(535, '291 CTA CONTROLADA RED 8990', '6-Sep-11', '62427788', 0),
(536, '291 CTA CONTROLADA RED 8990', '11-Mar-11', '82500722', 0),
(537, '291 CTA CONTROLADA RED 8990', '24-Jan-12', '99372928', 0),
(538, '291 CTA CONTROLADA RED 8990', '13-Apr-10', '95927520', 0),
(539, '1410 Multimedia CC Light 9990', '3-Jan-13', '66638750', 0),
(540, '291 CTA CONTROLADA RED 8990', '10-May-10', '94187218', 0),
(541, '291 CTA CONTROLADA RED 8990', '14-Dec-11', '82286226', 0),
(542, '291 CTA CONTROLADA RED 8990', '12-Sep-12', '94735341', 0),
(543, '291 CTA CONTROLADA RED 8990', '6-May-11', '88137345', 0),
(544, '291 CTA CONTROLADA RED 8990', '27-Sep-08', '99687479', 0),
(545, '1410 Multimedia CC Light 9990', '26-Jul-11', '81550701', 0),
(546, '291 CTA CONTROLADA RED 8990', '8-Jan-11', '91531816', 0),
(547, '1410 Multimedia CC Light 9990', '13-Jan-12', '87606871', 0),
(548, '292 CTA CONTROLADA RED 11990', '22-Aug-12', '56325254', 0),
(549, '1418 Cta Cda Red 11.990', '23-May-13', '65073212', 0),
(550, '1410 Multimedia CC Light 9990', '12-Jul-13', '77508687', 0),
(551, '1418 Cta Cda Red 11.990', '5-Apr-13', '65155610', 0),
(552, '1410 Multimedia CC Light 9990', '4-Apr-12', '84442809', 0),
(553, '286 CC FLAT 12990', '22-Jul-09', '78810514', 0),
(554, '291 CTA CONTROLADA RED 8990', '26-Feb-13', '78822064', 0),
(555, '1418 Cta Cda Red 11.990', '24-May-13', '68967787', 0),
(556, '291 CTA CONTROLADA RED 8990', '19-Jun-12', '82821620', 0),
(557, '291 CTA CONTROLADA RED 8990', '22-Jun-12', '99663254', 0),
(558, '291 CTA CONTROLADA RED 8990', '8-Oct-12', '95121975', 0),
(559, '291 CTA CONTROLADA RED 8990', '12-Oct-12', '77623421', 0),
(560, '1410 Multimedia CC Light 9990', '12-Jul-13', '99347798', 0),
(561, '1410 Multimedia CC Light 9990', '7-Jun-13', '56663101', 0),
(562, '1418 Cta Cda Red 11.990', '25-Oct-12', '76011640', 0),
(563, '1410 Multimedia CC Light 9990', '14-Sep-12', '87522929', 0),
(564, '291 CTA CONTROLADA RED 8990', '20-May-11', '79614355', 0),
(565, '291 CTA CONTROLADA RED 8990', '28-Jan-10', '82878248', 0),
(566, '291 CTA CONTROLADA RED 8990', '21-Feb-13', '65075071', 0),
(567, '291 CTA CONTROLADA RED 8990', '14-May-11', '82184742', 0),
(568, '286 CC FLAT 12990', '3-Jun-11', '84069808', 0),
(569, '1418 Cta Cda Red 11.990', '20-Apr-12', '76087838', 0),
(570, '291 CTA CONTROLADA RED 8990', '12-Dec-09', '99433773', 0),
(571, '286 CC FLAT 12990', '20-Jul-09', '90735763', 0),
(572, '291 CTA CONTROLADA RED 8990', '13-Apr-10', '94169466', 0),
(573, '292 CTA CONTROLADA RED 11990', '3-Mar-11', '99487540', 0),
(574, '1418 Cta Cda Red 11.990', '2-Jul-10', '95080225', 0),
(575, '292 CTA CONTROLADA RED 11990', '17-Jun-11', '78772051', 0),
(576, '291 CTA CONTROLADA RED 8990', '25-May-12', '99957132', 0),
(577, '285 CC FLAT 9990', '6-Apr-10', '96115231', 0),
(578, '1410 Multimedia CC Light 9990', '28-May-13', '84624094', 0),
(579, '285 CC FLAT 9990', '8-Jul-11', '98256575', 0),
(580, '292 CTA CONTROLADA RED 11990', '25-Aug-11', '90994903', 0),
(581, '185 CTA CONTROLADA PLANO 11000', '10-Jan-12', '68995506', 0),
(582, '185 CTA CONTROLADA PLANO 11000', '10-Jan-12', '93161583', 0),
(583, '1416 Cta Cda 9.990', '11-Jan-12', '82736394', 0),
(584, '285 CC FLAT 9990', '12-Jan-12', '84324092', 0),
(585, '185 CTA CONTROLADA PLANO 11000', '12-Jan-12', '71096465', 0),
(586, '285 CC FLAT 9990', '12-Jan-12', '97192644', 0),
(587, '291 CTA CONTROLADA RED 8990', '13-Jan-12', '71098270', 0),
(588, '185 CTA CONTROLADA PLANO 11000', '13-Jan-12', '71098252', 0),
(589, '185 CTA CONTROLADA PLANO 11000', '13-Jan-12', '71098185', 0),
(590, '1418 Cta Cda Red 11.990', '13-Jan-12', '71099535', 0),
(591, '185 CTA CONTROLADA PLANO 11000', '14-Jan-12', '77432870', 0),
(592, '291 CTA CONTROLADA RED 8990', '15-Jan-12', '73880476', 0),
(593, '292 CTA CONTROLADA RED 11990', '16-Jan-12', '73978629', 0),
(594, '185 CTA CONTROLADA PLANO 11000', '17-Jan-12', '99684959', 0),
(595, '185 CTA CONTROLADA PLANO 11000', '17-Jan-12', '68982860', 0),
(596, '185 CTA CONTROLADA PLANO 11000', '17-Jan-12', '82845298', 0),
(597, '291 CTA CONTROLADA RED 8990', '18-Jan-12', '77641152', 0),
(598, '185 CTA CONTROLADA PLANO 11000', '18-Jan-12', '77491423', 0),
(599, '291 CTA CONTROLADA RED 8990', '18-Jan-12', '90989936', 0),
(600, '185 CTA CONTROLADA PLANO 11000', '19-Jan-12', '77679970', 0),
(601, '1418 Cta Cda Red 11.990', '19-Jan-12', '97721665', 0),
(602, '291 CTA CONTROLADA RED 8990', '19-Jan-12', '95035369', 0),
(603, '292 CTA CONTROLADA RED 11990', '19-Jan-12', '87442589', 0),
(604, '291 CTA CONTROLADA RED 8990', '19-Jan-12', '93767392', 0),
(605, '185 CTA CONTROLADA PLANO 11000', '19-Jan-12', '78977756', 0),
(606, '185 CTA CONTROLADA PLANO 11000', '20-Jan-12', '89550209', 0),
(607, '292 CTA CONTROLADA RED 11990', '20-Jan-12', '79672377', 0),
(608, '291 CTA CONTROLADA RED 8990', '20-Jan-12', '96775859', 0),
(609, '1418 Cta Cda Red 11.990', '21-Jan-12', '62496970', 0),
(610, '291 CTA CONTROLADA RED 8990', '21-Jan-12', '93749081', 0),
(611, '286 CC FLAT 12990', '21-Jan-12', '86605865', 0),
(612, '291 CTA CONTROLADA RED 8990', '21-Jan-12', '95184201', 0),
(613, '185 CTA CONTROLADA PLANO 11000', '21-Jan-12', '84605598', 0),
(614, '291 CTA CONTROLADA RED 8990', '21-Jan-12', '95983394', 0),
(615, '185 CTA CONTROLADA PLANO 11000', '21-Jan-12', '62485713', 0),
(616, '185 CTA CONTROLADA PLANO 11000', '22-Jan-12', '95087899', 0),
(617, '185 CTA CONTROLADA PLANO 11000', '22-Jan-12', '65952014', 0),
(618, '185 CTA CONTROLADA PLANO 11000', '23-Jan-12', '66176103', 0),
(619, '185 CTA CONTROLADA PLANO 11000', '23-Jan-12', '76207372', 0),
(620, '185 CTA CONTROLADA PLANO 11000', '23-Jan-12', '71091350', 0),
(621, '1418 Cta Cda Red 11.990', '24-Jan-12', '98307893', 0),
(622, '291 CTA CONTROLADA RED 8990', '24-Jan-12', '85780708', 0),
(623, '292 CTA CONTROLADA RED 11990', '24-Jan-12', '68363172', 0),
(624, '291 CTA CONTROLADA RED 8990', '24-Jan-12', '91407587', 0),
(625, '1418 Cta Cda Red 11.990', '25-Jan-12', '82122514', 0),
(626, '1418 Cta Cda Red 11.990', '25-Jan-12', '73793561', 0),
(627, '292 CTA CONTROLADA RED 11990', '25-Jan-12', '94865096', 0),
(628, '291 CTA CONTROLADA RED 8990', '25-Jan-12', '73793193', 0),
(629, '185 CTA CONTROLADA PLANO 11000', '26-Jan-12', '73880174', 0),
(630, '185 CTA CONTROLADA PLANO 11000', '26-Jan-12', '75295760', 0),
(631, '286 CC FLAT 12990', '27-Jan-12', '92673414', 0),
(632, '292 CTA CONTROLADA RED 11990', '27-Jan-12', '96279824', 0),
(633, '185 CTA CONTROLADA PLANO 11000', '27-Jan-12', '81726448', 0),
(634, '292 CTA CONTROLADA RED 11990', '28-Jan-12', '95168727', 0),
(635, '285 CC FLAT 9990', '28-Jan-12', '97918353', 0),
(636, '286 CC FLAT 12990', '28-Jan-12', '85913611', 0),
(637, '291 CTA CONTROLADA RED 8990', '28-Jan-12', '92131729', 0),
(638, '1418 Cta Cda Red 11.990', '28-Jan-12', '97818229', 0),
(639, '292 CTA CONTROLADA RED 11990', '28-Jan-12', '88978903', 0),
(640, '185 CTA CONTROLADA PLANO 11000', '29-Jan-12', '75583891', 0),
(641, '285 CC FLAT 9990', '30-Jan-12', '89063568', 0),
(642, '291 CTA CONTROLADA RED 8990', '30-Jan-12', '61698904', 0),
(643, '185 CTA CONTROLADA PLANO 11000', '30-Jan-12', '67767524', 0),
(644, '185 CTA CONTROLADA PLANO 11000', '30-Jan-12', '79794515', 0),
(645, '1418 Cta Cda Red 11.990', '30-Jan-12', '99458144', 0),
(646, '185 CTA CONTROLADA PLANO 11000', '31-Jan-12', '79976405', 0),
(647, '285 CC FLAT 9990', '31-Jan-12', '62608620', 0),
(648, '185 CTA CONTROLADA PLANO 11000', '31-Jan-12', '79991403', 0),
(649, '292 CTA CONTROLADA RED 11990', '31-Jan-12', '92383758', 0),
(650, '291 CTA CONTROLADA RED 8990', '31-Jan-12', '81911585', 0),
(651, '285 CC FLAT 9990', '31-Jan-12', '81383297', 0),
(652, '291 CTA CONTROLADA RED 8990', '01-Feb-12', '88838868', 0),
(653, '1418 Cta Cda Red 11.990', '01-Feb-12', '98028943', 0),
(654, '185 CTA CONTROLADA PLANO 11000', '01-Feb-12', '78338638', 0),
(655, '185 CTA CONTROLADA PLANO 11000', '01-Feb-12', '81880700', 0),
(656, '185 CTA CONTROLADA PLANO 11000', '01-Feb-12', '81990768', 0),
(657, '291 CTA CONTROLADA RED 8990', '01-Feb-12', '84715134', 0),
(658, '185 CTA CONTROLADA PLANO 11000', '02-Feb-12', '79181936', 0),
(659, '185 CTA CONTROLADA PLANO 11000', '02-Feb-12', '86495444', 0),
(660, '285 CC FLAT 9990', '02-Feb-12', '88537577', 0),
(661, '286 CC FLAT 12990', '02-Feb-12', '82341723', 0),
(662, '291 CTA CONTROLADA RED 8990', '02-Feb-12', '88506874', 0),
(663, '185 CTA CONTROLADA PLANO 11000', '03-Feb-12', '65978448', 0),
(664, '291 CTA CONTROLADA RED 8990', '03-Feb-12', '73767252', 0),
(665, '292 CTA CONTROLADA RED 11990', '03-Feb-12', '99821097', 0),
(666, '185 CTA CONTROLADA PLANO 11000', '03-Feb-12', '91698067', 0),
(667, '285 CC FLAT 9990', '03-Feb-12', '88243090', 0),
(668, '185 CTA CONTROLADA PLANO 11000', '03-Feb-12', '77075612', 0),
(669, '1418 Cta Cda Red 11.990', '04-Feb-12', '96707732', 0),
(670, '1418 Cta Cda Red 11.990', '06-Feb-12', '88285825', 0),
(671, '291 CTA CONTROLADA RED 8990', '06-Feb-12', '62273927', 0),
(672, '1416 Cta Cda 9.990', '06-Feb-12', '76450727', 0),
(673, '291 CTA CONTROLADA RED 8990', '06-Feb-12', '75885601', 0),
(674, '185 CTA CONTROLADA PLANO 11000', '07-Feb-12', '88897184', 0),
(675, '185 CTA CONTROLADA PLANO 11000', '07-Feb-12', '90895485', 0),
(676, '185 CTA CONTROLADA PLANO 11000', '07-Feb-12', '88993135', 0),
(677, '1418 Cta Cda Red 11.990', '07-Feb-12', '88371359', 0),
(678, '292 CTA CONTROLADA RED 11990', '08-Feb-12', '96159215', 0),
(679, '286 CC FLAT 12990', '08-Feb-12', '94993750', 0),
(680, '', '2018-09-10 13:07:42', '55555', 0),
(681, '', '2018-09-10 13:08:08', '4454', 0),
(682, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(683, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(684, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(685, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(686, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(687, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(688, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(689, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(690, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(691, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(692, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(693, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(694, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(695, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(696, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(697, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(698, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(699, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(700, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(701, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(702, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(703, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(704, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(705, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(706, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(707, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(708, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(709, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(710, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(711, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(712, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(713, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(714, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(715, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(716, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(717, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(718, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(719, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(720, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(721, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(722, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(723, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(724, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(725, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(726, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(727, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(728, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(729, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(730, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(731, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(732, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(733, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(734, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(735, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(736, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(737, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(738, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(739, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(740, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(741, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(742, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(743, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(744, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(745, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(746, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(747, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(748, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(749, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(750, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(751, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(752, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(753, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(754, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(755, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(756, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(757, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(758, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(759, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(760, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(761, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(762, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(763, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(764, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(765, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(766, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(767, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(768, '2 EJES ', '2018-09-11 13:24:54', 'c', 0),
(769, '2 EJES ', '2018-09-11 13:26:35', '4454', 0),
(770, '2 EJES ', '2018-09-11 13:26:45', '4454', 0),
(771, '2 EJES ', '2018-09-11 13:26:50', '4454', 0),
(772, '2 EJES ', '2018-09-11 13:27:57', 'df', 0),
(773, '2 EJES ', '2018-09-11 13:30:51', '4564', 0),
(774, '2 EJES ', '2018-09-11 13:39:44', '4564', 0),
(775, '2 EJES ', '2018-09-11 13:40:37', '4', 0),
(776, '2 EJES ', '2018-09-11 13:53:12', 'gh', 0),
(777, '2 EJES ', '2018-09-11 13:53:30', 'gh', 0),
(778, '2 EJES ', '2018-09-11 13:53:39', 'fg', 0),
(779, '2 EJES ', '2018-09-11 13:54:35', 'd', 0),
(780, '', '2018-09-11 13:55:57', 'r', 0),
(781, '2 EJES ', '2018-09-11 21:01:44', 'hola', 0),
(782, '2 EJES ', '2018-09-11 21:02:44', 'hola', 0),
(783, '2 EJES ', '2018-09-11 21:02:45', 'hola', 0),
(784, '2 EJES ', '2018-09-11 21:03:15', 'f', 0),
(785, '2 EJES ', '2018-09-11 21:08:20', 'hg', 0),
(786, '2 EJES ', '2018-09-11 21:09:03', 'hg', 0),
(787, 'LIVIANO ', '2018-09-12 09:55:13', '4564', 0),
(788, 'LIVIANO ', '2018-09-12 09:56:50', '4564', 0),
(789, 'LIVIANO ', '2018-09-12 10:00:17', '4454', 0),
(790, 'LIVIANO ', '2018-09-12 10:01:19', '4454', 0),
(791, 'CAMIONES CON 03 (TRES) EJES ', '2018-09-12 13:06:11', 'nose', 0),
(792, 'CAMIONES CON 03 (TRES) EJES ', '2018-09-13 09:02:39', '2', 0),
(793, '0', '2018-09-13 11:13:43', '4454', 0),
(794, 'CAMIONES CON 03 (TRES) EJES ', '2018-09-13 11:14:34', '4564', 0),
(795, '', '2018-09-13 13:48:38', '4454', 0),
(796, '', '2018-09-13 13:49:16', '4454', 0),
(797, '', '2018-09-13 13:50:02', '4454', 0),
(798, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(799, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(800, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(801, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(802, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(803, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(804, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(805, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0);
INSERT INTO `plan_clientes` (`ID`, `NOMBRE_PLAN`, `FECHA_ACTIVACION`, `TELEFONO`, `ESTATUS`) VALUES
(806, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(807, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(808, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(809, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(810, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(811, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(812, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(813, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(814, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(815, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(816, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(817, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(818, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(819, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(820, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(821, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(822, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(823, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(824, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(825, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(826, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(827, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(828, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(829, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(830, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(831, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(832, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(833, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(834, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(835, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(836, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(837, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(838, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(839, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(840, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(841, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(842, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(843, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(844, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(845, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(846, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(847, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(848, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(849, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(850, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(851, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(852, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(853, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(854, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(855, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(856, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(857, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(858, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(859, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(860, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(861, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(862, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(863, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(864, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(865, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(866, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(867, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(868, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(869, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(870, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(871, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(872, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(873, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(874, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(875, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(876, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(877, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(878, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(879, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(880, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(881, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(882, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(883, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(884, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(885, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(886, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(887, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(888, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(889, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(890, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(891, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(892, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(893, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(894, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(895, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(896, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(897, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(898, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(899, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(900, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(901, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(902, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(903, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(904, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(905, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(906, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(907, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(908, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(909, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(910, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(911, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(912, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(913, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(914, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(915, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(916, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(917, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(918, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(919, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(920, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(921, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(922, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(923, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(924, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(925, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(926, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(927, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(928, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(929, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(930, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(931, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(932, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(933, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(934, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(935, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(936, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(937, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(938, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(939, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(940, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(941, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(942, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(943, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(944, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(945, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(946, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(947, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(948, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(949, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(950, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(951, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(952, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(953, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(954, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(955, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(956, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(957, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(958, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(959, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(960, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(961, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(962, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(963, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(964, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(965, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(966, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(967, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(968, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(969, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(970, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(971, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(972, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(973, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(974, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(975, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(976, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(977, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(978, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(979, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(980, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(981, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(982, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(983, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(984, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(985, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(986, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(987, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(988, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(989, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(990, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(991, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(992, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(993, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(994, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(995, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(996, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(997, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(998, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(999, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1000, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1001, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1002, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1003, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1004, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1005, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1006, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1007, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1008, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1009, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1010, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1011, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1012, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1013, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1014, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1015, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1016, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1017, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1018, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1019, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1020, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1021, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1022, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1023, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1024, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1025, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1026, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1027, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1028, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1029, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1030, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1031, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1032, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1033, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1034, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1035, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1036, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1037, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1038, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1039, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1040, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1041, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1042, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1043, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1044, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1045, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1046, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1047, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1048, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1049, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1050, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1051, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1052, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1053, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1054, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1055, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1056, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1057, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1058, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1059, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1060, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1061, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1062, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1063, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1064, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1065, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1066, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1067, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1068, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1069, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1070, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1071, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1072, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1073, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1074, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1075, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1076, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1077, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1078, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1079, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1080, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1081, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1082, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1083, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1084, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1085, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1086, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1087, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1088, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1089, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1090, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1091, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1092, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1093, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1094, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1095, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1096, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1097, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1098, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1099, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1100, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1101, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1102, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1103, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1104, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1105, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1106, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1107, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1108, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1109, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1110, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1111, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1112, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1113, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1114, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1115, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1116, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1117, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1118, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1119, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1120, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1121, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1122, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1123, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1124, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1125, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1126, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1127, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1128, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1129, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1130, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1131, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1132, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1133, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1134, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1135, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1136, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1137, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1138, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1139, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1140, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1141, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1142, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1143, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1144, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1145, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1146, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1147, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1148, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1149, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1150, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1151, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1152, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1153, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1154, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1155, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1156, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1157, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1158, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1159, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1160, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1161, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1162, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1163, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1164, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1165, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1166, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1167, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1168, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1169, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1170, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1171, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1172, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1173, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1174, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1175, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1176, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1177, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1178, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1179, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1180, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1181, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1182, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1183, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1184, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1185, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1186, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1187, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1188, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1189, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1190, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1191, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1192, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1193, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1194, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1195, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1196, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1197, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1198, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1199, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1200, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1201, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1202, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1203, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1204, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1205, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1206, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1207, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1208, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1209, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1210, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1211, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1212, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1213, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1214, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1215, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1216, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1217, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1218, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1219, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1220, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1221, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1222, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1223, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1224, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1225, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1226, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1227, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1228, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1229, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1230, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1231, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1232, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1233, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1234, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1235, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1236, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1237, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1238, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1239, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1240, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1241, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1242, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1243, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1244, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1245, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1246, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1247, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1248, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1249, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1250, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1251, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1252, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1253, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1254, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1255, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1256, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1257, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1258, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1259, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1260, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1261, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1262, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1263, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1264, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1265, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1266, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1267, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1268, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1269, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1270, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1271, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1272, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1273, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1274, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1275, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1276, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1277, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1278, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1279, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1280, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1281, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1282, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1283, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1284, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1285, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1286, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1287, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1288, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1289, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1290, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1291, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1292, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1293, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1294, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1295, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1296, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1297, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1298, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1299, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1300, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1301, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1302, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1303, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1304, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1305, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1306, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1307, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1308, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1309, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1310, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1311, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1312, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1313, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1314, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1315, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1316, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1317, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1318, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1319, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1320, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1321, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1322, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1323, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1324, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1325, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1326, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1327, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1328, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1329, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1330, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1331, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1332, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1333, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1334, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1335, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1336, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1337, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1338, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1339, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1340, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1341, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1342, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1343, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1344, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1345, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1346, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1347, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1348, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1349, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1350, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1351, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1352, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1353, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1354, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1355, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1356, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1357, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1358, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1359, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1360, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1361, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1362, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1363, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1364, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1365, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1366, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1367, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1368, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1369, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1370, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1371, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1372, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1373, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1374, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1375, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1376, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1377, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1378, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1379, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1380, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1381, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1382, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1383, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1384, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1385, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1386, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1387, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1388, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1389, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1390, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1391, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1392, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1393, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1394, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1395, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1396, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1397, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1398, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1399, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1400, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1401, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1402, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1403, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1404, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1405, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1406, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1407, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1408, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1409, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1410, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1411, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1412, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1413, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1414, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1415, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1416, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1417, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1418, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1419, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1420, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1421, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1422, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1423, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1424, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1425, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1426, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1427, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1428, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1429, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1430, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1431, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1432, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1433, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1434, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1435, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1436, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1437, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1438, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1439, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1440, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1441, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1442, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1443, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1444, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1445, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1446, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1447, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1448, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1449, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1450, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1451, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1452, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1453, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1454, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1455, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1456, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1457, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1458, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1459, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1460, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1461, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1462, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1463, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1464, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1465, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1466, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1467, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1468, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1469, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1470, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1471, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1472, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1473, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1474, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1475, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1476, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1477, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1478, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1479, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1480, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1481, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1482, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1483, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1484, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1485, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1486, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1487, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1488, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1489, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1490, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1491, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1492, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1493, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1494, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1495, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1496, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1497, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1498, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1499, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1500, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1501, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1502, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1503, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1504, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1505, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1506, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1507, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1508, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1509, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1510, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1511, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1512, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1513, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1514, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1515, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1516, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1517, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1518, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1519, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1520, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1521, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1522, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1523, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1524, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1525, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1526, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1527, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1528, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1529, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1530, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1531, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1532, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1533, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1534, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1535, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1536, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1537, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1538, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1539, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1540, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1541, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1542, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1543, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1544, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1545, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1546, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1547, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1548, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1549, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1550, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1551, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1552, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1553, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1554, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1555, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1556, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1557, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1558, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1559, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1560, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1561, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1562, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1563, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1564, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1565, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1566, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1567, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1568, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1569, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1570, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1571, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1572, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1573, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1574, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1575, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1576, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1577, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1578, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1579, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1580, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1581, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1582, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1583, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1584, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1585, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1586, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1587, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1588, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0);
INSERT INTO `plan_clientes` (`ID`, `NOMBRE_PLAN`, `FECHA_ACTIVACION`, `TELEFONO`, `ESTATUS`) VALUES
(1589, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1590, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1591, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1592, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1593, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1594, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1595, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1596, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1597, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1598, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1599, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1600, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1601, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1602, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1603, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1604, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1605, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1606, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1607, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1608, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1609, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1610, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1611, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1612, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1613, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1614, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1615, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1616, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1617, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1618, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1619, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1620, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1621, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1622, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1623, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1624, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1625, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1626, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1627, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1628, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1629, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1630, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1631, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1632, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1633, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1634, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1635, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1636, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1637, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1638, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1639, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1640, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1641, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1642, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1643, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1644, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1645, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1646, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1647, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1648, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1649, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1650, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1651, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1652, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1653, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1654, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1655, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1656, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1657, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1658, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1659, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1660, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1661, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1662, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1663, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1664, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1665, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1666, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1667, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1668, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1669, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1670, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1671, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1672, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1673, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1674, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1675, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1676, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1677, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1678, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1679, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1680, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1681, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1682, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1683, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1684, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1685, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1686, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1687, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1688, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1689, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1690, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1691, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1692, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1693, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1694, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1695, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1696, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1697, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1698, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1699, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1700, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1701, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1702, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1703, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1704, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1705, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1706, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1707, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1708, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1709, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1710, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1711, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1712, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1713, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1714, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1715, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1716, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1717, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1718, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1719, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1720, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1721, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1722, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1723, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1724, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1725, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1726, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1727, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1728, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1729, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1730, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1731, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1732, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1733, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1734, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1735, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1736, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1737, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1738, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1739, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1740, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1741, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1742, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1743, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1744, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1745, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1746, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1747, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1748, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1749, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1750, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1751, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1752, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1753, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1754, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1755, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1756, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1757, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1758, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1759, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1760, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1761, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1762, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1763, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1764, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1765, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1766, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1767, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1768, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1769, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1770, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1771, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1772, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1773, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1774, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1775, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1776, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1777, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1778, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1779, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1780, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1781, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1782, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1783, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1784, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1785, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1786, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1787, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1788, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1789, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1790, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1791, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1792, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1793, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1794, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1795, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1796, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1797, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1798, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1799, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1800, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1801, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1802, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1803, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1804, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1805, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1806, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1807, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1808, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1809, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1810, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1811, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1812, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1813, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1814, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1815, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1816, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1817, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1818, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1819, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1820, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1821, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1822, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1823, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1824, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1825, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1826, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1827, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1828, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1829, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1830, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1831, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1832, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1833, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1834, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1835, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1836, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1837, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1838, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1839, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1840, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1841, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1842, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1843, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1844, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1845, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1846, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1847, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1848, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1849, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1850, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1851, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1852, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1853, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1854, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1855, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1856, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1857, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1858, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1859, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1860, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1861, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1862, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1863, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1864, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1865, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1866, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1867, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1868, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1869, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1870, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1871, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1872, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1873, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1874, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1875, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1876, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1877, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1878, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1879, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1880, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1881, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1882, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1883, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1884, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1885, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1886, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1887, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1888, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1889, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1890, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1891, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1892, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1893, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1894, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1895, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1896, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1897, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1898, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1899, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1900, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1901, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1902, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1903, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1904, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1905, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1906, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1907, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1908, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1909, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1910, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1911, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1912, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1913, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(1914, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(1915, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(1916, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(1917, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(1918, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(1919, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(1920, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(1921, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(1922, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(1923, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(1924, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(1925, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(1926, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(1927, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(1928, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(1929, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(1930, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(1931, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(1932, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(1933, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(1934, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(1935, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(1936, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(1937, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(1938, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(1939, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(1940, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(1941, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(1942, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(1943, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(1944, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(1945, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(1946, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(1947, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(1948, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(1949, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(1950, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(1951, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(1952, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(1953, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(1954, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(1955, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(1956, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(1957, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(1958, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(1959, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(1960, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(1961, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(1962, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(1963, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(1964, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(1965, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(1966, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(1967, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(1968, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(1969, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(1970, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(1971, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(1972, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(1973, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(1974, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(1975, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(1976, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(1977, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(1978, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(1979, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(1980, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(1981, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(1982, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(1983, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(1984, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(1985, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(1986, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(1987, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(1988, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(1989, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(1990, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(1991, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(1992, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(1993, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(1994, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(1995, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0),
(1996, '1410 Multimedia CC Light 9990', '5-Sep-11', '99479504', 0),
(1997, '1410 Multimedia CC Light 9990', '21-Mar-13', '57031846', 0),
(1998, '1418 Cta Cda Red 11.990', '27-Jun-12', '78966874', 0),
(1999, '1410 Multimedia CC Light 9990', '21-Mar-12', '95766074', 0),
(2000, '291 CTA CONTROLADA RED 8990', '1-Feb-11', '62246343', 0),
(2001, '291 CTA CONTROLADA RED 8990', '28-May-11', '95046471', 0),
(2002, '1418 Cta Cda Red 11.990', '28-Mar-13', '94766066', 0),
(2003, '291 CTA CONTROLADA RED 8990', '20-Jun-11', '78915135', 0),
(2004, '291 CTA CONTROLADA RED 8990', '6-Feb-13', '94789073', 0),
(2005, '291 CTA CONTROLADA RED 8990', '25-Jun-09', '91574789', 0),
(2006, '291 CTA CONTROLADA RED 8990', '10-Oct-12', '67866035', 0),
(2007, '1410 Multimedia CC Light 9990', '8-Mar-13', '57105105', 0),
(2008, '1410 Multimedia CC Light 9990', '8-Apr-13', '94876170', 0),
(2009, '292 CTA CONTROLADA RED 11990', '2-Mar-11', '87249265', 0),
(2010, '1410 Multimedia CC Light 9990', '27-Feb-12', '96752584', 0),
(2011, '291 CTA CONTROLADA RED 8990', '14-Jul-09', '97855656', 0),
(2012, '291 CTA CONTROLADA RED 8990', '29-Jun-11', '93049542', 0),
(2013, '291 CTA CONTROLADA RED 8990', '22-Dec-11', '92905769', 0),
(2014, '291 CTA CONTROLADA RED 8990', '27-Mar-09', '96730733', 0),
(2015, '286 CC FLAT 12990', '8-Feb-10', '84315732', 0),
(2016, '291 CTA CONTROLADA RED 8990', '29-Mar-12', '98864831', 0),
(2017, '291 CTA CONTROLADA RED 8990', '3-Oct-09', '99139074', 0),
(2018, '291 CTA CONTROLADA RED 8990', '7-Dec-09', '97756660', 0),
(2019, '291 CTA CONTROLADA RED 8990', '11-May-10', '82368318', 0),
(2020, '1410 Multimedia CC Light 9990', '13-Oct-12', '84690668', 0),
(2021, '1418 Cta Cda Red 11.990', '8-Feb-12', '95161646', 0),
(2022, '1416 Cta Cda 9.990', '30-Jul-13', '81379164', 0),
(2023, '291 CTA CONTROLADA RED 8990', '13-Sep-12', '87396072', 0),
(2024, '291 CTA CONTROLADA RED 8990', '9-Nov-09', '93010483', 0),
(2025, '291 CTA CONTROLADA RED 8990', '27-Dec-12', '56330098', 0),
(2026, '291 CTA CONTROLADA RED 8990', '16-Mar-11', '82859770', 0),
(2027, '291 CTA CONTROLADA RED 8990', '17-May-11', '97877306', 0),
(2028, '291 CTA CONTROLADA RED 8990', '25-Nov-09', '82867029', 0),
(2029, '1410 Multimedia CC Light 9990', '21-Apr-09', '93588046', 0),
(2030, '291 CTA CONTROLADA RED 8990', '29-Apr-11', '87278485', 0),
(2031, '286 CC FLAT 12990', '18-Jan-11', '87414704', 0),
(2032, '291 CTA CONTROLADA RED 8990', '20-Oct-10', '91514352', 0),
(2033, '1410 Multimedia CC Light 9990', '25-Jun-13', '57645431', 0),
(2034, '292 CTA CONTROLADA RED 11990', '28-Dec-11', '82797184', 0),
(2035, '286 CC FLAT 12990', '12-Dec-12', '84368901', 0),
(2036, '286 CC FLAT 12990', '13-Jul-12', '95177364', 0),
(2037, '1410 Multimedia CC Light 9990', '10-Jun-13', '76001311', 0),
(2038, '285 CC FLAT 9990', '11-Jan-13', '75650570', 0),
(2039, '1410 Multimedia CC Light 9990', '6-May-11', '77619578', 0),
(2040, '1410 Multimedia CC Light 9990', '24-Jul-13', '94129984', 0),
(2041, '1410 Multimedia CC Light 9990', '6-Jun-13', '56324376', 0),
(2042, '291 CTA CONTROLADA RED 8990', '3-Aug-10', '77512285', 0),
(2043, '1410 Multimedia CC Light 9990', '8-Nov-11', '62318030', 0),
(2044, '1410 Multimedia CC Light 9990', '27-Mar-12', '79936633', 0),
(2045, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '91323512', 0),
(2046, '1410 Multimedia CC Light 9990', '23-Mar-12', '75448194', 0),
(2047, '291 CTA CONTROLADA RED 8990', '11-Feb-10', '76578171', 0),
(2048, '291 CTA CONTROLADA RED 8990', '17-Jan-11', '88118802', 0),
(2049, '1418 Cta Cda Red 11.990', '24-Mar-12', '77513257', 0),
(2050, '1410 Multimedia CC Light 9990', '26-May-11', '84145936', 0),
(2051, '1410 Multimedia CC Light 9990', '14-Jan-11', '79623301', 0),
(2052, '285 CC FLAT 9990', '15-Sep-09', '84220867', 0),
(2053, '291 CTA CONTROLADA RED 8990', '28-Dec-09', '87659157', 0),
(2054, '291 CTA CONTROLADA RED 8990', '28-Nov-12', '66544077', 0),
(2055, '1410 Multimedia CC Light 9990', '22-Jul-13', '93516284', 0),
(2056, '291 CTA CONTROLADA RED 8990', '16-Mar-12', '78706533', 0),
(2057, '291 CTA CONTROLADA RED 8990', '24-May-10', '88172872', 0),
(2058, '292 CTA CONTROLADA RED 11990', '24-Apr-12', '75355317', 0),
(2059, '286 CC FLAT 12990', '9-May-12', '75834742', 0),
(2060, '291 CTA CONTROLADA RED 8990', '10-Apr-12', '76467708', 0),
(2061, '1410 Multimedia CC Light 9990', '23-Aug-10', '88953789', 0),
(2062, '291 CTA CONTROLADA RED 8990', '26-Apr-10', '82548271', 0),
(2063, '1418 Cta Cda Red 11.990', '31-Jul-13', '62157841', 0),
(2064, '291 CTA CONTROLADA RED 8990', '21-Apr-09', '98807654', 0),
(2065, '1418 Cta Cda Red 11.990', '5-Nov-12', '99659549', 0),
(2066, '291 CTA CONTROLADA RED 8990', '26-Sep-11', '96720098', 0),
(2067, '291 CTA CONTROLADA RED 8990', '11-Jun-10', '91335586', 0),
(2068, '286 CC FLAT 12990', '24-Feb-11', '84702855', 0),
(2069, '1416 Cta Cda 9.990', '27-Jan-09', '91200014', 0),
(2070, '291 CTA CONTROLADA RED 8990', '26-Dec-11', '81864349', 0),
(2071, '291 CTA CONTROLADA RED 8990', '23-Aug-12', '96909764', 0),
(2072, '291 CTA CONTROLADA RED 8990', '2-May-12', '94927054', 0),
(2073, '291 CTA CONTROLADA RED 8990', '19-Aug-10', '82689984', 0),
(2074, '1410 Multimedia CC Light 9990', '8-Aug-12', '87616571', 0),
(2075, '1410 Multimedia CC Light 9990', '29-May-13', '73430858', 0),
(2076, '291 CTA CONTROLADA RED 8990', '26-Oct-09', '88117136', 0),
(2077, '291 CTA CONTROLADA RED 8990', '18-Aug-11', '81869993', 0),
(2078, '291 CTA CONTROLADA RED 8990', '10-Sep-12', '75151249', 0),
(2079, '1410 Multimedia CC Light 9990', '8-Aug-12', '95752472', 0),
(2080, '291 CTA CONTROLADA RED 8990', '15-Sep-09', '76403230', 0),
(2081, '1410 Multimedia CC Light 9990', '14-Apr-12', '98218889', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `IdTag` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `Cod_Tag` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tag`
--

INSERT INTO `tag` (`IdTag`, `IdCliente`, `Cod_Tag`, `Estado`) VALUES
(1, 1, '123456', '1'),
(2, 1, '564', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `test`
--

INSERT INTO `test` (`id`, `name`, `code`) VALUES
(1, '', ''),
(2, 'aaa', '111'),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', ''),
(11, '', ''),
(12, 'pepe', '123456'),
(13, 'pepe', '123456'),
(14, 'pepe', '123456'),
(15, 'pepe', '123456'),
(16, 'pepe', '123456'),
(17, 'pepe', '123456'),
(18, 'pepe', '123456'),
(19, 'pepe', '123456'),
(20, 'pepe11111', '123456'),
(21, 'pepe11111', '123456'),
(22, 'pepe11111', '123456'),
(23, 'pepe11111', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipificacion`
--

CREATE TABLE `tipificacion` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipificacion`
--

INSERT INTO `tipificacion` (`ID`, `DESCRIPCION`) VALUES
(1, 'No Contesta'),
(2, 'No atiende');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `IdTransaccion` int(11) NOT NULL,
  `IdTag` int(11) NOT NULL,
  `Cantidad` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`IdTransaccion`, `IdTag`, `Cantidad`) VALUES
(1, 1, 2),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(100) CHARACTER SET latin1 NOT NULL,
  `CI` varchar(50) CHARACTER SET latin1 NOT NULL,
  `DIRECCION` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `USUARIO` varchar(50) CHARACTER SET latin1 NOT NULL,
  `PASSWORD` varchar(50) CHARACTER SET latin1 NOT NULL,
  `TIPO_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOMBRE`, `APELLIDOS`, `CI`, `DIRECCION`, `USUARIO`, `PASSWORD`, `TIPO_USUARIO`) VALUES
(1, 'ADMIN', 'ADMINISTRADOR', '2189', 'CASI MARISCAL LOPEZ', '2189', 'MANUEL2189', 1),
(2, 'DATOS', 'DE PRUEBA', '12345678', 'NO TIENE', '12345678', '12345678', 2),
(7, 'NATHALI', 'OCAMPOS', '4874055', 'MARISCAL LOPEZ 390', '4874055', '4874055', 3),
(8, 'Miguel', 'gonzalez', '4874055', 'E. Ayala', '598400', '4874055', 4),
(9, 'RAUL', 'FERNANDEZ', '4874056', 'VENEZUELA', '4874056', '4874056', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `IdVehiculo` int(11) NOT NULL,
  `IdTag` int(11) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modelo` varchar(45) NOT NULL,
  `Matricula` varchar(45) NOT NULL,
  `Chasis` varchar(45) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`IdVehiculo`, `IdTag`, `Marca`, `Modelo`, `Matricula`, `Chasis`, `ID`) VALUES
(1, 1, 'toyota', 'corolla', 'FDT 458', 'SD45F4DS4F54SD6F', 5);

-- --------------------------------------------------------

--
-- Estructura para la vista `lstvehiculos`
--
DROP TABLE IF EXISTS `lstvehiculos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lstvehiculos`  AS  select `cliente`.`idCliente` AS `idCliente`,`persona`.`Nombre` AS `Nombre`,`persona`.`Apellido` AS `Apellido`,`persona`.`ci` AS `ci`,`persona`.`Telefono` AS `Telefono`,`cliente`.`Direccion` AS `Direccion`,`tag`.`Cod_Tag` AS `Cod_Tag`,`tag`.`Estado` AS `Estado`,`vehiculo`.`Marca` AS `Marca`,`vehiculo`.`Modelo` AS `Modelo`,`vehiculo`.`Matricula` AS `Matricula`,`vehiculo`.`Chasis` AS `Chasis`,`planes`.`Costo` AS `COSTO` from ((((`persona` join `cliente`) join `tag`) join `vehiculo`) join `planes`) where ((`persona`.`idPersona` = `cliente`.`IdPersona`) and (`cliente`.`idCliente` = `tag`.`IdCliente`) and (`tag`.`IdTag` = `vehiculo`.`IdTag`) and (`vehiculo`.`ID` = `planes`.`ID`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesousuarios`
--
ALTER TABLE `accesousuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `barrera`
--
ALTER TABLE `barrera`
  ADD PRIMARY KEY (`IdBarrera`),
  ADD KEY `IdUsuario_idx` (`IdUsuario`);

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `IdPersona_idx` (`IdPersona`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`IdDistrito`),
  ADD KEY `IdBarrera_idx` (`IdBarrera`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`idEquipos`),
  ADD KEY `idbarrera_idx` (`idbarrera_equipos`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `log_llamadas`
--
ALTER TABLE `log_llamadas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `plan_clientes`
--
ALTER TABLE `plan_clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`IdTag`),
  ADD KEY `IdCliente_idx` (`IdCliente`);

--
-- Indices de la tabla `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipificacion`
--
ALTER TABLE `tipificacion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`IdTransaccion`),
  ADD KEY `IdTag_idx` (`IdTag`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`IdVehiculo`),
  ADD KEY `IdTag_idx` (`IdTag`),
  ADD KEY `IdCategoria_idx` (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesousuarios`
--
ALTER TABLE `accesousuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `barrera`
--
ALTER TABLE `barrera`
  MODIFY `IdBarrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `IdDistrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `idEquipos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `log_llamadas`
--
ALTER TABLE `log_llamadas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `plan_clientes`
--
ALTER TABLE `plan_clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2082;

--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `IdTag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tipificacion`
--
ALTER TABLE `tipificacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `IdTransaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `IdVehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barrera`
--
ALTER TABLE `barrera`
  ADD CONSTRAINT `IdUsuario` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `IdPersona` FOREIGN KEY (`IdPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `IdBarrera` FOREIGN KEY (`IdBarrera`) REFERENCES `barrera` (`IdBarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `idbarrera2` FOREIGN KEY (`idbarrera_equipos`) REFERENCES `barrera` (`IdBarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `IdCliente` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `IdTagt` FOREIGN KEY (`IdTag`) REFERENCES `tag` (`IdTag`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `planes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `IdTag` FOREIGN KEY (`IdTag`) REFERENCES `tag` (`IdTag`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
