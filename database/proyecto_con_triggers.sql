basededatosproyecto-- --------------------------------------------------------
-- Host:                         127.0.0.2
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para basededatosproyecto
CREATE DATABASE IF NOT EXISTS `basededatosproyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `basededatosproyecto`;

-- Volcando estructura para tabla basededatosproyecto.conceptos
CREATE TABLE IF NOT EXISTS `conceptos` (
  `concepto` varchar(50) NOT NULL DEFAULT '',
  `tipoConcepto` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`concepto`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.conceptos: ~5 rows (aproximadamente)
REPLACE INTO `conceptos` (`concepto`, `tipoConcepto`) VALUES
	('C1', 'ausencia remunerada'),
	('C2', 'ausencia no remunerada'),
	('C3', 'horas extra feriado'),
	('C4', 'horas extra'),
	('C5', 'sin concepto');

-- Volcando estructura para tabla basededatosproyecto.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departamento` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.departamento: ~4 rows (aproximadamente)
REPLACE INTO `departamento` (`id_departamento`, `nombre`) VALUES
	(1, 'atencion al cliente'),
	(2, 'deposito'),
	(3, 'marketing'),
	(4, 'contabilidad');

-- Volcando estructura para tabla basededatosproyecto.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `DNI` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL DEFAULT '0',
  `mail` varchar(100) NOT NULL,
  `id_puestos` int(11) NOT NULL DEFAULT 0,
  `salarioBruto` double NOT NULL DEFAULT 0,
  `id_usuario` varchar(50) DEFAULT '',
  PRIMARY KEY (`DNI`),
  KEY `id_puestos` (`id_puestos`),
  KEY `fk_empleados_usuario` (`id_usuario`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_puestos`) REFERENCES `puestos` (`id_puestos`),
  CONSTRAINT `fk_empleados_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.empleados: ~31 rows (aproximadamente)
REPLACE INTO `empleados` (`DNI`, `nombre`, `apellido`, `celular`, `mail`, `id_puestos`, `salarioBruto`, `id_usuario`) VALUES
	(12345678, 'daniel', 'hola', '2612266666', 'hola@gmail.com', 400, 520000, 'profedaniel'),
	(20356320, 'Sonia', 'Micames', '2610223514', 'micamessonia@gmail.com', 100, 700000, 'sonia'),
	(20709596, 'sandra', 'Spedaletti', '2616598633', 'sandrasp@gmail.com', 400, 900000, 'sandra'),
	(23056963, 'Claudio', 'Jofre', '2610002365', 'jofreclaudio@gmail.com', 100, 700000, 'claudio'),
	(25632150, 'Daniel', 'Guerra', '2615551218', 'danielguerra@gmail.com', 100, 700000, 'daniel'),
	(25656520, 'sandra', 'villar', '2613677939', 'piri@gmail.com', 400, 500000, 'sandrapiri'),
	(27121025, 'Emanuel', 'Solari', '2617485256', 'emasolari@gmail.com', 100, 700000, 'emanuel'),
	(29548678, 'pepito', 'abcde', '2614586321', 'pepito@gmail.com', 300, 450000, 'pepitoprueba'),
	(31652369, 'Luis', 'Morales', '2615236963', 'luism@gmail.com', 100, 700000, NULL),
	(32457819, 'Juan', 'diofnidv', '2614587485', 'juan@gmail.com', 100, 450000, 'juan'),
	(32569852, 'Pedro', 'Micheletti', '2617852698', 'pedromicheletti@gmail.com', 300, 800000, 'pedro'),
	(35778102, 'Lucia', 'Capone', '2616542589', 'luciCapone@gmail.com', 100, 700000, 'lucia'),
	(38562302, 'Juan', 'Ceschin', '2616323033', 'juanc@gmail.com', 100, 700000, 'juan'),
	(38563021, 'Franco', 'Carloni', '2614562536', 'franncarloni@gmail.com', 400, 900000, 'franco'),
	(38563254, 'Camila', 'Nalda', '2615633690', 'caminal@gmail.com', 100, 450000, NULL),
	(38632105, 'Lucia', 'Hernandez', '2615339684', 'lucihe02@gmail.com', 300, 400000, NULL),
	(38756081, 'candela', 'Massola', '2614563691', 'candeM@gmail.com', 300, 900000, 'candela'),
	(39526412, 'Pierina', 'Muratori', '2616302163', 'pierimuratori@gmail.com', 200, 850000, NULL),
	(40123581, 'Ismael', 'Molina', '2616353620', 'ismamolina@gmail.com', 200, 850000, 'Ismael'),
	(40256398, 'Francisco', 'Montiel', '2617485740', 'montielfrann@gmail.com', 100, 700000, NULL),
	(40268453, 'Julian', 'Agostini', '2615963327', 'juliagost@gmail.com', 200, 350000, NULL),
	(40854256, 'Victoria', 'Pravata', '2612113025', 'victoriap@gmail.com', 100, 700000, 'victoria'),
	(41031150, 'Joaco', 'Baldo', '261999999', 'joaco@gmail.com', 300, 800000, NULL),
	(41563258, 'Romina', 'Ruiz', '2616552848', 'romiruiz@gmail.com', 300, 800000, 'Romina'),
	(42569856, 'Lucas', 'Musso', '2614569121', 'luquitasm@gmail.com', 200, 850000, 'Lucas'),
	(43601201, 'Sofia', 'Costarelli', '2616358534', 'soficostarelli@gmail.com', 200, 850000, 'sofia'),
	(43652023, 'Valentina', 'Elizondo', '2615023208', 'valeelizondo@gmail.com', 200, 850000, 'valentina'),
	(44246077, 'Mica', 'Chacon', '2616666666', 'hola@gmail.com', 300, 400000, 'Mica'),
	(46253020, 'Ludmila', 'Laurencio', '2614563259', 'ludmilaurencio@gmail.com', 100, 700000, 'ludmila'),
	(76403629, 'lola', 'lolita', '2612222222', 'hola@gmail.com', 400, 360500, NULL),
	(98745632, 'Pepe', 'Prueba', '2615555555', 'chau@gmail.com', 200, 600000, NULL);

-- Volcando estructura para tabla basededatosproyecto.puestos
CREATE TABLE IF NOT EXISTS `puestos` (
  `id_puestos` int(11) NOT NULL DEFAULT 0,
  `nombre` varchar(50) NOT NULL,
  `id_departamento` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_puestos`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `puestos_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.puestos: ~4 rows (aproximadamente)
REPLACE INTO `puestos` (`id_puestos`, `nombre`, `id_departamento`) VALUES
	(100, 'vendedor', 1),
	(200, 'repositor', 2),
	(300, 'community manager', 3),
	(400, 'contador', 4);

-- Volcando estructura para tabla basededatosproyecto.registro
CREATE TABLE IF NOT EXISTS `registro` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` int(11) NOT NULL,
  `periodo` varchar(7) NOT NULL DEFAULT '',
  `salario` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_registro`),
  KEY `FK_DNI` (`DNI`),
  CONSTRAINT `FK_DNI` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.registro: ~49 rows (aproximadamente)
REPLACE INTO `registro` (`id_registro`, `DNI`, `periodo`, `salario`) VALUES
	(68, 20709596, '2024-01', 611464.29),
	(69, 20709596, '2024-02', 828562.5),
	(70, 20709596, '2024-03', 597401.79),
	(71, 20709596, '2024-04', 822937.5),
	(72, 20709596, '2024-05', 879187.5),
	(73, 20709596, '2024-06', 554544.64),
	(74, 20709596, '2024-07', 797625),
	(75, 20709596, '2024-08', 666241.07),
	(76, 20709596, '2024-09', 703473.21),
	(77, 20709596, '2024-10', 754767.86),
	(78, 38756081, '2024-01', 608523.81),
	(79, 38756081, '2024-02', 516023.81),
	(80, 38756081, '2024-03', 836500),
	(81, 38756081, '2024-04', 684000),
	(82, 38562302, '2024-01', 555895.83),
	(83, 38562302, '2024-02', 618187.5),
	(84, 38562302, '2024-03', 537875),
	(85, 38562302, '2024-04', 637875),
	(86, 38562302, '2024-05', 455895.83),
	(87, 38562302, '2024-06', 642250),
	(88, 35778102, '2024-01', 670687.5),
	(89, 35778102, '2024-02', 558083.33),
	(90, 35778102, '2024-03', 620375),
	(91, 35778102, '2024-04', 651000),
	(92, 35778102, '2024-05', 644437.5),
	(93, 35778102, '2024-06', 420375),
	(94, 20356320, '2024-01', 531312.5),
	(95, 20356320, '2024-02', 429125),
	(96, 20356320, '2024-03', 679437.5),
	(97, 20356320, '2024-04', 633500),
	(98, 20356320, '2024-05', 594125),
	(99, 20356320, '2024-06', 607250),
	(100, 23056963, '2024-01', 679437.5),
	(101, 23056963, '2024-02', 640062.5),
	(102, 23056963, '2024-03', 583812.5),
	(103, 23056963, '2024-04', 625895.83),
	(104, 23056963, '2024-05', 637875),
	(105, 25632150, '2024-01', 692562.5),
	(106, 25632150, '2024-02', 570687.5),
	(107, 25632150, '2024-03', 620375),
	(108, 25632150, '2024-04', 551000),
	(109, 25632150, '2024-05', 710062.5),
	(110, 25632150, '2024-06', 692562.5),
	(111, 20709596, '2024-11', 898875),
	(112, 20709596, '2024-12', 898875),
	(113, 25656520, '2024-01', 426755.95),
	(114, 25656520, '2024-02', 419315.48),
	(115, 25656520, '2024-03', 389255.95),
	(116, 41031150, '2024-06', 505428.57);

-- Volcando estructura para tabla basededatosproyecto.registro_respaldo
CREATE TABLE IF NOT EXISTS `registro_respaldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` int(11) NOT NULL,
  `oldSueldo` decimal(10,2) NOT NULL,
  `newSueldo` decimal(10,2) NOT NULL,
  `fecha_cambio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `FK_registro_respaldo` (`DNI`),
  CONSTRAINT `FK_registro_respaldo` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.registro_respaldo: ~5 rows (aproximadamente)
REPLACE INTO `registro_respaldo` (`id`, `DNI`, `oldSueldo`, `newSueldo`, `fecha_cambio`) VALUES
	(1, 38632105, 307500.00, 400000.00, '2024-07-02 19:08:20'),
	(2, 38756081, 950000.00, 900000.00, '2024-07-21 19:25:28'),
	(3, 12345678, 0.00, 0.00, '2024-07-18 14:09:39'),
	(4, 12345678, 0.00, 778.51, '2024-07-18 14:10:37'),
	(5, 12345678, 778.51, 404826.19, '2024-07-18 14:16:06');

-- Volcando estructura para tabla basededatosproyecto.rol
CREATE TABLE IF NOT EXISTS `rol` (
  `codigo_rol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.rol: ~2 rows (aproximadamente)
REPLACE INTO `rol` (`codigo_rol`, `descripcion`) VALUES
	(0, 'supervisor'),
	(1, 'empleado');

-- Volcando estructura para tabla basededatosproyecto.supervisores
CREATE TABLE IF NOT EXISTS `supervisores` (
  `id_supervisor` varchar(50) NOT NULL DEFAULT '',
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `id_departamento` int(11) NOT NULL DEFAULT 0,
  `id_usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_supervisor`),
  KEY `id_departamento` (`id_departamento`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `fk_supervisores_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `supervisores_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.supervisores: ~4 rows (aproximadamente)
REPLACE INTO `supervisores` (`id_supervisor`, `nombre`, `apellido`, `id_departamento`, `id_usuario`) VALUES
	('37461528', 'damian', 'cardenas', 4, 'damian'),
	('42468723', 'sabrina', 'massola', 1, 'sabrina'),
	('44246077', 'micaela', 'chacon', 3, 'micaela'),
	('46403629', 'paz', 'sinner', 2, 'paz');

-- Volcando estructura para tabla basededatosproyecto.temporal
CREATE TABLE IF NOT EXISTS `temporal` (
  `id_temporal` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(50) NOT NULL,
  `DNI` int(11) NOT NULL,
  `cantidadEnValor` double NOT NULL DEFAULT 0,
  `periodo` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_temporal`),
  KEY `FK_temporal_empleados` (`DNI`),
  KEY `FK_temporal_conceptos` (`concepto`),
  CONSTRAINT `FK_temporal_conceptos` FOREIGN KEY (`concepto`) REFERENCES `conceptos` (`concepto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_temporal_empleados` FOREIGN KEY (`DNI`) REFERENCES `empleados` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.temporal: ~0 rows (aproximadamente)

-- Volcando estructura para tabla basededatosproyecto.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` varchar(50) NOT NULL DEFAULT '',
  `DNI` int(10) NOT NULL DEFAULT 0,
  `claveIngreso` varchar(50) NOT NULL DEFAULT '',
  `tipo` varchar(50) NOT NULL,
  `codigo_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `codigo_rol` (`codigo_rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`codigo_rol`) REFERENCES `rol` (`codigo_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla basededatosproyecto.usuario: ~28 rows (aproximadamente)
REPLACE INTO `usuario` (`id_usuario`, `DNI`, `claveIngreso`, `tipo`, `codigo_rol`) VALUES
	('analia', 41598765, 'aaead7e4387cdce408a9dbab7a3f21ee', 'MD5', 0),
	('candela', 38756081, '650310509971348bc6fbaab05d3d6178', 'MD5', 1),
	('claudio', 23056963, 'f6a47a638824180d57f0a561fd5843c6', 'MD5', 1),
	('damian', 40100200, 'fe0b714aaecbd5c8961994c655d18a0d', 'MD5', 0),
	('daniel', 25632150, 'aa47f8215c6f30a0dcdb2a36a9f4168e', 'MD5', 1),
	('emanuel', 27121025, 'a80e1c212420901edde8bbeb64037593', 'MD5', 1),
	('franco', 38563021, '6dd1411a66159040b7fff30d0097dbe4', 'MD5', 1),
	('Ismael', 40123581, '56437ee14d804bfa14762e0b1782827e', 'MD5', 1),
	('juan', 38562302, 'a94652aa97c7211ba8954dd15a3cf838', 'MD5', 1),
	('juansupervisor', 40512687, 'a94652aa97c7211ba8954dd15a3cf838', 'MD5', 0),
	('Lucas', 42569856, 'dc53fc4f621c80bdc2fa0329a6123708', 'MD5', 1),
	('lucia', 35778102, '3ba430337eb30f5fd7569451b5dfdf32', 'MD5', 1),
	('ludmila', 46253020, '8acedebd15b3139ddb80c6d6b01074a8', 'MD5', 1),
	('Mica', 44246077, '73188d55afc05b6389bdbea6a55a9f4b', 'MD5', 1),
	('micaela', 44246077, 'aea2c5e8317b1eeab8a6c4e6f6ef8299', 'MD5', 0),
	('paz', 46403629, 'e003268a052a053ee5ec481e2a097648', 'MD5', 0),
	('pedro', 32569852, 'c6cc8094c2dc07b700ffcc36d64e2138', 'MD5', 1),
	('pepitoprueba', 29548678, '4d186321c1a7f0f354b297e8914ab240', 'MD5', 1),
	('profedaniel', 12345678, '712802c78f8c9e31e604bb37b387eb0c', 'MD5', 1),
	('Romina', 41563258, '5ca3af0fd9e5b83ccf6d56bf14e1d804', 'MD5', 1),
	('sabrina', 42468723, '00e45749508fe15ca1af3397eab8db78', 'MD5', 0),
	('sandra', 20709596, 'f40a37048732da05928c3d374549c832', 'MD5', 1),
	('sandrapiri', 25656520, 'ecbe67ec064547ee4a5786956f2ed1c0', 'MD5', 1),
	('sergio', 38568479, '3bffa4ebdf4874e506c2b12405796aa5', 'MD5', 0),
	('sofia', 43601201, '17da1ae431f965d839ec8eb93087fb2b', 'MD5', 1),
	('sonia', 20356320, 'd31cb1e2b7902e8e9b4d1793e94c38a0', 'MD5', 1),
	('valentina', 43652023, 'ab3ab964804dc9ae20de3b02d379b1bd', 'MD5', 1),
	('victoria', 40854256, 'e0e34c5ad05aac3eef6ab31eacbf7a5c', 'MD5', 1);

-- Volcando estructura para vista basededatosproyecto.vista_usuarios
-- Creando tabla temporal para superar errores de dependencia de VIEW
CREATE TABLE `vista_usuarios` (
	`id_usuario` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`DNI` INT(10) NOT NULL,
	`claveIngreso` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`tipo` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`codigo_rol` INT(11) NOT NULL,
	`nombre` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`apellido` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Volcando estructura para disparador basededatosproyecto.trg_respaldo_registro_AU
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_respaldo_registro_AU` AFTER UPDATE ON `registro` FOR EACH ROW BEGIN
    INSERT INTO registro_respaldo (DNI, oldSueldo, newSueldo, fecha_cambio)
    VALUES (OLD.DNI, OLD.salario, NEW.salario, NOW());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador basededatosproyecto.trg_validar_salario_bruto_empleados_BI
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_validar_salario_bruto_empleados_BI` BEFORE INSERT ON `empleados` FOR EACH ROW BEGIN
    IF NEW.salarioBruto < 0 OR NEW.salarioBruto > 1000000 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El salario debe ser positivo y no superior a 1.000.000.';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador basededatosproyecto.trg_validar_salario_bruto_empleados_BU
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_validar_salario_bruto_empleados_BU` BEFORE UPDATE ON `empleados` FOR EACH ROW BEGIN
    IF NEW.salarioBruto < 0 OR NEW.salarioBruto > 1000000 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El salario debe ser positivo y no superior a 1,000,000.';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador basededatosproyecto.trg_validar_salario_registro_BI
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_validar_salario_registro_BI` BEFORE INSERT ON `registro` FOR EACH ROW BEGIN
    IF NEW.salario < 0 OR NEW.salario > 1000000 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'El salario debe ser positivo y no superior a 1.000.000.';
    END IF;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Eliminando tabla temporal y crear estructura final de VIEW
DROP TABLE IF EXISTS `vista_usuarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vista_usuarios` AS SELECT u.id_usuario, u.DNI, u.claveIngreso, u.tipo, u.codigo_rol,
       COALESCE(e.nombre, s.nombre) AS nombre,
       COALESCE(e.apellido, s.apellido) AS apellido
FROM usuario u
LEFT JOIN empleados e ON u.id_usuario = e.id_usuario
LEFT JOIN supervisores s ON u.id_usuario= s.id_usuario ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
