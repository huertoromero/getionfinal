-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2019 a las 09:02:32
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `salonbelleza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(11) NOT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  `salarioBasico` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `puesto`, `salarioBasico`) VALUES
(1, 'Administrador', 60000),
(2, 'Vendedor', 30000),
(3, 'Contador', 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `dniCliente` int(11) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` bigint(15) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `FechaDeAlta` date DEFAULT NULL,
  `FechaDeBaja` date DEFAULT NULL,
  `Estado` int(1) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dniCliente`, `Apellido`, `Nombre`, `Telefono`, `Email`, `FechaDeAlta`, `FechaDeBaja`, `Estado`, `Direccion`) VALUES
(11111111, 'Apaza', 'Silvana', 3814637256, 'silva_d@gmail.com', '2015-09-01', '0000-00-00', 1, 'barrio belgrano mc lote 12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `idCompra` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `idProveedor` int(11) NOT NULL,
  `Vuelto` float DEFAULT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`idCompra`, `Fecha`, `Hora`, `idProveedor`, `Vuelto`, `Total`) VALUES
(5, '2019-07-06', '01:23:00', 2, 0, 30),
(6, '2019-07-06', '02:01:00', 2, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conceptos`
--

CREATE TABLE `conceptos` (
  `idConcepto` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `montoFijo` float DEFAULT NULL,
  `montoVariable` float DEFAULT NULL,
  `porDefecto` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conceptos`
--

INSERT INTO `conceptos` (`idConcepto`, `descripcion`, `tipo`, `montoFijo`, `montoVariable`, `porDefecto`) VALUES
(1, 'jubilacion', 'resta', 0, 0.2, b'1'),
(2, 'obra social', 'resta', 0, 0.03, b'1'),
(3, 'salario complementario junio', 'suma', 0, 0.5, b'0'),
(4, 'Salario Complementario Diciembre', 'suma', 0, 0.5, b'0'),
(5, 'vacaciones 7 dias', 'suma', 0, 0, b'0'),
(6, 'Vacaciones 14 Dias', 'suma', 0, 0, b'0'),
(7, 'presentismo', 'suma', 140, 0, b'0'),
(8, 'Ley 23660', 'resta', 0, 0.03, b'1'),
(9, 'Aporte Obra Social', 'resta', 197, 0, b'1'),
(10, 'Aporte Sindicato', 'resta', 0, 0.02, b'1'),
(11, 'Salario Basico', 'suma', 0, 0, b'0'),
(12, 'Vacaciones 21 Dias', 'suma', 0, 0, b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleliquidacion`
--

CREATE TABLE `detalleliquidacion` (
  `idDetalleLiquidacion` int(11) NOT NULL,
  `idLiquidacion` int(11) NOT NULL,
  `idConcepto` int(11) NOT NULL,
  `Monto` float DEFAULT NULL,
  `descuentos` float DEFAULT NULL,
  `subTotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalleliquidacion`
--

INSERT INTO `detalleliquidacion` (`idDetalleLiquidacion`, `idLiquidacion`, `idConcepto`, `Monto`, `descuentos`, `subTotal`) VALUES
(1, 4, 11, 60000, 0, 60000),
(2, 4, 1, 0, 12000, -12000),
(3, 4, 2, 0, 1800, -1800),
(4, 4, 9, 0, 197, -197),
(5, 4, 10, 0, 1200, -1200),
(6, 4, 8, 0, 1800, -1800);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `idDetalleCompra` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  `compra_id` int(11) NOT NULL,
  `insumo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`idDetalleCompra`, `cantidad`, `subTotal`, `compra_id`, `insumo_id`) VALUES
(4, 1, 10, 5, 2),
(5, 2, 20, 5, 1),
(6, 1, 1, 5, 2),
(7, 1, 1, 5, 1),
(8, 1, 1, 5, 2),
(9, 1, 1, 5, 1),
(10, 1, 1, 6, 2),
(11, 1, 1, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `idDetalleVenta` int(11) NOT NULL,
  `subTotal` float DEFAULT NULL,
  `venta_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`idDetalleVenta`, `subTotal`, `venta_id`, `servicio_id`) VALUES
(1, 100, 13, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dniEmpleado` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cuil` bigint(15) NOT NULL,
  `fechadeingreso` date NOT NULL,
  `telefono` bigint(11) DEFAULT NULL,
  `Mail` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fechaBaja` date DEFAULT NULL,
  `idCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='				';

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`dniEmpleado`, `nombre`, `apellido`, `fechaNacimiento`, `cuil`, `fechadeingreso`, `telefono`, `Mail`, `direccion`, `estado`, `fechaBaja`, `idCategoria`) VALUES
(32412262, 'francisco', 'palavecino', '1986-06-15', 20324122622, '2019-05-08', 3814535153, 'palavecinofran@gmail.com', 'rivadavia 546', 1, NULL, 1),
(38742005, 'julieta', 'aro', '1995-08-17', 27387420059, '2019-05-08', 3815333706, 'julietaaaro@gmail.com', 'monteagudo 747', 1, NULL, 1),
(39479341, 'huerto', 'romero', '1995-07-05', 27394793412, '2019-05-05', 3814252612, 'huertoro@gmail.com', 'barrio 1', 1, NULL, 3),
(39479342, 'huerto', 'romero', '1995-07-05', 27394793421, '2019-05-08', 2353747, 'huertoro@gmail.com', 'jujuy74', 0, '2019-07-29', 3),
(39889919, 'virginia', 'arroyo', '1996-01-17', 27398899194, '2019-05-08', 3865623116, 'vickyarroyo@gmail.com', 'san juan 730', 1, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupofamiliar`
--

CREATE TABLE `grupofamiliar` (
  `idGrupoFamiliar` int(11) NOT NULL,
  `dniEmpleado` int(8) NOT NULL,
  `dni` bigint(8) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `Parentesco` varchar(30) DEFAULT NULL,
  `discapacidad` tinyint(1) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupofamiliar`
--

INSERT INTO `grupofamiliar` (`idGrupoFamiliar`, `dniEmpleado`, `dni`, `Apellido`, `Nombre`, `fechaNacimiento`, `Parentesco`, `discapacidad`, `estado`) VALUES
(1, 39889919, 39889919, 'barto', 'arroyo', '2015-01-01', 'hijo/a', 0, 1),
(2, 39479341, 55123432, 'Romero', 'India', '2016-03-05', 'Hijo/a', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo`
--

CREATE TABLE `insumo` (
  `idInsumo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `unidad_cantidad_uso` int(11) DEFAULT NULL,
  `disponibilidad` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `insumo`
--

INSERT INTO `insumo` (`idInsumo`, `nombre`, `cantidad`, `unidad_cantidad_uso`, `disponibilidad`) VALUES
(1, 'Shampoo Head and Shouders', 3, 10, 30),
(2, 'Acondicionador Nieva', 4, 5, 20),
(3, 'Tintura Inoa Supreme Loreal', 3, 30, 90),
(4, 'rubor smart shade', 10, 10, 100),
(5, 'sombra mate ', 3, 15, 45),
(6, 'aceite de aromaterapia', 2, 10, 19),
(7, 'setfacial', 5, 15, 73),
(8, 'cera depilatoria', 3, 5, 13),
(9, 'spray para cabello', 10, 20, 196),
(10, 'gel fijador de cabello', 5, 20, 100),
(11, 'gel efecto humedo', 5, 20, 100),
(12, 'mousse ', 5, 20, 100),
(13, 'mascarilla facial', 5, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumo_servicio`
--

CREATE TABLE `insumo_servicio` (
  `cantidad_uso` bit(1) NOT NULL DEFAULT b'1',
  `servicio_id` int(11) NOT NULL,
  `insumo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `insumo_servicio`
--

INSERT INTO `insumo_servicio` (`cantidad_uso`, `servicio_id`, `insumo_id`) VALUES
(b'1', 27, 1),
(b'1', 29, 2),
(b'1', 27, 1),
(b'1', 27, 3),
(b'1', 30, 7),
(b'1', 31, 8),
(b'1', 32, 9),
(b'1', 33, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacion`
--

CREATE TABLE `liquidacion` (
  `idLiquidacion` int(11) NOT NULL,
  `dniEmpleado` int(11) NOT NULL,
  `FechaDesde` date NOT NULL,
  `FechaHasta` date NOT NULL,
  `SalarioNeto` float NOT NULL,
  `PeriodoDeLiquidacion` varchar(25) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `liquidacion`
--

INSERT INTO `liquidacion` (`idLiquidacion`, `dniEmpleado`, `FechaDesde`, `FechaHasta`, `SalarioNeto`, `PeriodoDeLiquidacion`, `Estado`) VALUES
(1, 38742005, '2019-07-06', '2019-07-06', 45000, '8/12', 1),
(4, 38742005, '2019-06-29', '2019-07-29', 43003, '7/12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(11) NOT NULL,
  `RazonSocial` varchar(45) DEFAULT NULL,
  `Telefono` bigint(15) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `fechadeAlta` date DEFAULT NULL,
  `fechadeBaja` date DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `provincia` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `RazonSocial`, `Telefono`, `Email`, `fechadeAlta`, `fechadeBaja`, `estado`, `direccion`, `provincia`) VALUES
(1, 'distribuidora avon', 3865111111, 'avon@avon', '2015-09-05', NULL, 1, 'avon 200', 'tucuman'),
(2, 'distribuidora nivea', 3865222222, 'nivea@nivea', '2015-09-05', NULL, 1, 'nivea 300', 'tucuman'),
(3, 'distribuidora head and shouders', 3865333333, 'head@shouders', '2015-09-05', NULL, 1, 'head and shouders 300', 'tucuman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idServicio` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idServicio`, `nombre`, `precio`, `estado`) VALUES
(5, 'tintura', 50, 1),
(11, 'lavado pelo', 34, 1),
(12, 'peinado', 200, 1),
(14, 'planchita', 200, 1),
(27, 'lavado 3', 34, 1),
(29, 'lavado 5', 93, 1),
(30, 'facial', 120, 1),
(31, 'depilacion', 100, 1),
(32, 'estilizacion de cabello', 100, 1),
(33, 'masajes', 200, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `menuCliente` bit(1) DEFAULT NULL,
  `menuEmpleados` bit(1) DEFAULT NULL,
  `menuProveedores` bit(1) DEFAULT NULL,
  `menuSalarios` bit(1) DEFAULT NULL,
  `menuServicio` bit(1) DEFAULT NULL,
  `menuCompra` bit(1) DEFAULT NULL,
  `menuVenta` bit(1) DEFAULT NULL,
  `menuInsumo` int(1) NOT NULL DEFAULT 0,
  `dniEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Usuario`, `contrasenia`, `menuCliente`, `menuEmpleados`, `menuProveedores`, `menuSalarios`, `menuServicio`, `menuCompra`, `menuVenta`, `menuInsumo`, `dniEmpleado`) VALUES
(7, 'admin2', 'c84258e9c39059a89ab77d846ddab909', b'1', b'1', b'1', b'1', b'1', b'1', b'1', 1, 32412262),
(8, 'admin', '21232f297a57a5a743894ae4a801fc3', b'1', b'1', b'1', b'1', b'1', b'1', b'1', 1, 38742005),
(9, 'vendedor', '0407e8c8285ab85509ac2884025dcf42', b'0', b'0', b'0', b'0', b'1', b'0', b'1', 0, 39889919),
(10, 'rrhh', '89f71c4e9055ee73c3bc372528a54b9c', b'0', b'0', b'0', b'1', b'0', b'0', b'0', 0, 39479342),
(11, 'contador', '2c568fd1dcd24b9766888693d71af519', b'0', b'0', b'0', b'1', b'0', b'1', b'1', 0, 39479341);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Monto` float NOT NULL,
  `Vuelto` float DEFAULT NULL,
  `dniEmpleado` int(11) NOT NULL,
  `dniCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `Fecha`, `Hora`, `Total`, `Monto`, `Vuelto`, `dniEmpleado`, `dniCliente`) VALUES
(13, '2019-07-08', '17:36:00', 100, 120, 20, 38742005, 11111111);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`dniCliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idCompra`),
  ADD KEY `proveedor_id_idx` (`idProveedor`);

--
-- Indices de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  ADD PRIMARY KEY (`idConcepto`);

--
-- Indices de la tabla `detalleliquidacion`
--
ALTER TABLE `detalleliquidacion`
  ADD PRIMARY KEY (`idDetalleLiquidacion`),
  ADD KEY `liquidacion_id_idx` (`idLiquidacion`),
  ADD KEY `concepto_id_idx` (`idConcepto`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`idDetalleCompra`),
  ADD KEY `compra_id_idx` (`compra_id`),
  ADD KEY `insumo_id_idx` (`insumo_id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`idDetalleVenta`),
  ADD KEY `venta_id_idx` (`venta_id`),
  ADD KEY `servicio_id_idx` (`servicio_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dniEmpleado`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idCategoria_2` (`idCategoria`);

--
-- Indices de la tabla `grupofamiliar`
--
ALTER TABLE `grupofamiliar`
  ADD PRIMARY KEY (`idGrupoFamiliar`),
  ADD KEY `fk_GrupoFamiliar_Empleado1_idx` (`dniEmpleado`);

--
-- Indices de la tabla `insumo`
--
ALTER TABLE `insumo`
  ADD PRIMARY KEY (`idInsumo`);

--
-- Indices de la tabla `insumo_servicio`
--
ALTER TABLE `insumo_servicio`
  ADD KEY `fk_Insumo_servicio_Servicios1_idx` (`servicio_id`),
  ADD KEY `fk_Insumo_servicio_Insumos1_idx` (`insumo_id`);

--
-- Indices de la tabla `liquidacion`
--
ALTER TABLE `liquidacion`
  ADD PRIMARY KEY (`idLiquidacion`),
  ADD KEY `empleado_id_idx` (`dniEmpleado`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`idServicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `dniEmpleado` (`dniEmpleado`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `empleado_id_idx` (`dniEmpleado`),
  ADD KEY `cliente_id_idx` (`dniCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `idCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `conceptos`
--
ALTER TABLE `conceptos`
  MODIFY `idConcepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `detalleliquidacion`
--
ALTER TABLE `detalleliquidacion`
  MODIFY `idDetalleLiquidacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `idDetalleVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grupofamiliar`
--
ALTER TABLE `grupofamiliar`
  MODIFY `idGrupoFamiliar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `insumo`
--
ALTER TABLE `insumo`
  MODIFY `idInsumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `liquidacion`
--
ALTER TABLE `liquidacion`
  MODIFY `idLiquidacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `idServicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `proveedor_id` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalleliquidacion`
--
ALTER TABLE `detalleliquidacion`
  ADD CONSTRAINT `concepto_id` FOREIGN KEY (`idConcepto`) REFERENCES `conceptos` (`idConcepto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `liquidacion_id` FOREIGN KEY (`idLiquidacion`) REFERENCES `liquidacion` (`idLiquidacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `compra_id` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`idCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `insumo_id1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`idInsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `servicio_id` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`idServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `venta_id` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`);

--
-- Filtros para la tabla `grupofamiliar`
--
ALTER TABLE `grupofamiliar`
  ADD CONSTRAINT `grupofamiliar_ibfk_1` FOREIGN KEY (`dniEmpleado`) REFERENCES `empleados` (`dniEmpleado`);

--
-- Filtros para la tabla `insumo_servicio`
--
ALTER TABLE `insumo_servicio`
  ADD CONSTRAINT `fk_Insumo_servicio_Insumos1` FOREIGN KEY (`insumo_id`) REFERENCES `insumo` (`idInsumo`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_Insumo_servicio_Servicios1` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`idServicio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `liquidacion`
--
ALTER TABLE `liquidacion`
  ADD CONSTRAINT `liquidacion_ibfk_1` FOREIGN KEY (`dniEmpleado`) REFERENCES `empleados` (`dniEmpleado`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`dniEmpleado`) REFERENCES `empleados` (`dniEmpleado`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `cliente_id` FOREIGN KEY (`dniCliente`) REFERENCES `clientes` (`dniCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `empleado_id2` FOREIGN KEY (`dniEmpleado`) REFERENCES `empleados` (`dniEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
