-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-10-2025 a las 20:24:12
-- Versión del servidor: 10.11.14-MariaDB-ubu2404
-- Versión de PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juan_proyecto_formativo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendices`
--

CREATE TABLE `aprendices` (
  `Id_aprendiz` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `Email` varchar(400) DEFAULT NULL,
  `T_documento` varchar(50) DEFAULT NULL,
  `N_Documento` int(11) DEFAULT NULL,
  `N_Telefono` varchar(20) DEFAULT NULL,
  `Id_usuario` int(11) DEFAULT NULL,
  `Estado_formacion` varchar(50) DEFAULT NULL,
  `Numero_ficha` varchar(50) DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE `competencias` (
  `Id_competencia` int(11) NOT NULL,
  `Nombre_competencia` varchar(30) DEFAULT NULL,
  `Duracion_competencia` varchar(20) DEFAULT NULL,
  `Tipo_competencia` varchar(20) DEFAULT NULL,
  `Id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichas`
--

CREATE TABLE `fichas` (
  `Id_ficha` int(11) NOT NULL,
  `programa_formación` varchar(100) DEFAULT NULL,
  `Estado_ficha` varchar(20) DEFAULT NULL,
  `Horas_Totales` int(11) DEFAULT NULL,
  `Jornada` varchar(20) DEFAULT NULL,
  `Jefe_grupo` int(11) DEFAULT NULL,
  `numero_ficha` varchar(50) DEFAULT NULL,
  `Id_programa` int(11) DEFAULT NULL,
  `tipo_oferta` varchar(50) NOT NULL DEFAULT 'Abierta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_aprendiz`
--

CREATE TABLE `ficha_aprendiz` (
  `Id` int(11) NOT NULL,
  `Id_ficha` int(11) NOT NULL,
  `Id_aprendiz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_usuarios`
--

CREATE TABLE `historial_usuarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `accion` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `ip_usuario` varchar(45) DEFAULT NULL,
  `eliminado` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_usuarios`
--

INSERT INTO `historial_usuarios` (`id`, `usuario_id`, `accion`, `descripcion`, `fecha`, `ip_usuario`, `eliminado`) VALUES
(383, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-08 10:36:53', '::1', 0),
(384, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-15 11:24:27', '::1', 0),
(385, 30, 'Registro de instructor', 'Se registró el instructor Andres Gomez, Documento: 234, Ficha: 2895664', '2025-09-15 11:33:05', '::1', 0),
(386, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-20 14:18:29', '186.81.124.114', 0),
(387, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-20 14:19:07', '186.81.124.114', 0),
(388, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-21 17:43:20', '186.81.124.124', 0),
(389, 30, 'Registro de ficha', 'Ficha 2896547 creada', '2025-09-21 18:58:43', '186.81.124.124', 0),
(390, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-21 19:11:25', '186.81.124.86', 0),
(391, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 12:23:44', '179.1.216.1', 0),
(392, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 13:04:51', '179.1.216.3', 0),
(393, NULL, 'Cambio de contraseña', 'El usuario recuperó su contraseña mediante el enlace enviado al correo.', '2025-09-22 16:00:22', '179.1.216.1', 0),
(394, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 16:00:55', '179.1.216.1', 0),
(395, NULL, 'Cambio de contraseña', 'El usuario recuperó su contraseña mediante el enlace enviado al correo.', '2025-09-22 16:03:02', '191.156.5.205', 0),
(396, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-22 16:03:10', '179.1.216.1', 0),
(397, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 16:03:47', '191.156.5.205', 0),
(398, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 16:07:03', '179.1.216.3', 0),
(399, 30, 'Registro de ficha', 'Ficha 2895665 creada', '2025-09-22 16:07:58', '179.1.216.3', 0),
(400, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-22 23:46:45', '186.81.124.86', 0),
(401, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 12:20:43', '179.1.216.3', 0),
(402, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:07:01', '190.151.229.216', 0),
(403, 30, 'Registro de instructor', 'Se registró el instructor Jorge Raigosaq, Documento: 123', '2025-09-23 21:13:33', '190.151.229.216', 0),
(404, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:14:32', '190.151.229.216', 0),
(405, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:14:40', '190.151.229.216', 0),
(406, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:14:45', '190.151.229.216', 0),
(407, NULL, 'Cambio de contraseña', 'El usuario recuperó su contraseña mediante el enlace enviado al correo.', '2025-09-23 21:15:32', '190.151.229.216', 0),
(408, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:15:44', '190.151.229.216', 0),
(409, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:16:28', '190.151.229.216', 0),
(410, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:16:40', '190.151.229.216', 0),
(411, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-23 21:17:24', '190.151.229.216', 0),
(412, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:19:32', '186.81.124.86', 0),
(413, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:19:58', '186.81.124.86', 0),
(414, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:20:12', '186.81.124.86', 0),
(415, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:20:23', '186.81.124.86', 0),
(416, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:20:29', '186.81.124.86', 0),
(417, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:20:44', '186.81.124.86', 0),
(418, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:20:48', '186.81.124.86', 0),
(419, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:20:52', '186.81.124.86', 0),
(420, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:21:01', '186.81.124.86', 0),
(421, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-23 21:21:13', '186.81.124.86', 0),
(422, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 21:21:19', '186.81.124.86', 0),
(423, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-23 21:26:53', '190.151.229.216', 0),
(424, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-23 23:24:47', '186.81.124.86', 0),
(425, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 00:47:30', '186.81.124.86', 0),
(426, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-24 00:48:34', '186.81.124.86', 0),
(427, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 11:49:37', '179.1.216.3', 0),
(428, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-24 11:59:00', '179.1.216.3', 0),
(429, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 12:12:55', '179.1.216.3', 0),
(430, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 12:33:38', '179.1.216.2', 0),
(431, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-24 13:12:02', '179.1.216.3', 0),
(432, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 13:19:50', '179.1.216.3', 0),
(433, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-24 13:47:46', '179.1.216.3', 0),
(434, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 13:49:59', '179.1.216.3', 0),
(435, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-24 13:50:43', '179.1.216.3', 0),
(436, 30, 'Registro de usuario', 'Se registró el usuario Kevin Muñoz con documento 123345543.', '2025-09-24 13:54:26', '179.1.216.3', 0),
(437, 30, 'Registro de ficha', 'Ficha 2343234 creada', '2025-09-24 14:04:23', '179.1.216.3', 0),
(438, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 14:06:36', '191.95.36.201', 0),
(439, NULL, 'Cambio de contraseña', 'El usuario recuperó su contraseña mediante el enlace enviado al correo.', '2025-09-24 14:08:31', '190.130.107.219', 0),
(440, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 14:08:42', '179.19.134.207', 0),
(441, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-24 14:15:09', '179.1.216.3', 0),
(442, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 14:15:23', '179.1.216.3', 0),
(443, 30, 'Registro de ficha', 'Ficha 123 creada', '2025-09-24 15:19:23', '179.1.216.3', 0),
(444, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-24 15:22:07', '179.1.216.3', 0),
(445, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 18:47:19', '191.95.32.244', 0),
(446, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-24 21:55:10', '186.81.124.86', 0),
(447, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:29:08', '179.1.216.3', 0),
(448, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:33:39', '186.0.58.83', 0),
(449, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-26 16:34:40', '186.0.58.83', 0),
(450, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:36:32', '186.81.124.86', 0),
(451, 30, 'Registro de instructor', 'Se registró el instructor Kevin Muñoz, Documento: 11000000', '2025-09-26 16:38:10', '186.0.58.83', 0),
(452, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-26 16:38:57', '186.0.58.83', 0),
(453, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:39:17', '186.0.58.83', 0),
(454, NULL, 'Logout', 'El usuario cerró sesión.', '2025-09-26 16:39:26', '186.0.58.83', 0),
(455, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:45:27', '186.0.58.83', 0),
(456, 30, 'Registro de instructor', 'Se registró el instructor Jorge Raigosa, Documento: 123', '2025-09-26 16:47:29', '186.0.58.83', 0),
(457, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-26 16:48:09', '186.0.58.83', 0),
(458, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-26 16:50:40', '186.0.58.83', 0),
(459, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:50:55', '186.0.58.83', 0),
(460, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-26 16:51:28', '186.0.58.83', 0),
(461, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:51:40', '186.0.58.83', 0),
(462, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 16:54:14', '186.0.58.83', 0),
(463, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-26 23:02:46', '186.81.124.114', 0),
(464, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 00:52:09', '186.0.58.83', 0),
(465, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 00:52:58', '186.0.58.83', 0),
(466, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 00:58:51', '186.0.58.83', 0),
(467, 30, 'Registro de ficha', 'Ficha 1234 creada', '2025-09-28 01:02:25', '186.0.58.83', 0),
(468, 30, 'Registro de ficha', 'Ficha 3894327 creada', '2025-09-28 01:05:38', '186.0.58.83', 0),
(469, 30, 'Registro de ficha', 'Ficha 7384957943 creada', '2025-09-28 01:10:04', '186.0.58.83', 0),
(470, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 01:10:27', '186.0.58.83', 0),
(471, 30, 'Registro de ficha', 'Ficha 1324 creada', '2025-09-28 01:10:57', '186.0.58.83', 0),
(472, 30, 'Registro de ficha', 'Ficha 3453453245 creada', '2025-09-28 01:14:17', '186.0.58.83', 0),
(473, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 01:21:46', '186.0.58.83', 0),
(474, 30, 'Registro de ficha', 'Ficha 12312312 creada', '2025-09-28 01:26:27', '186.0.58.83', 0),
(475, 30, 'Registro de ficha', 'Ficha 812391823 creada', '2025-09-28 01:29:38', '186.0.58.83', 0),
(476, 30, 'Registro de ficha', 'Ficha 98465934 creada', '2025-09-28 01:31:44', '186.0.58.83', 0),
(477, 30, 'Registro de ficha', 'Ficha 3123123 creada', '2025-09-28 01:37:58', '186.0.58.83', 0),
(478, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 01:48:20', '186.0.58.83', 0),
(479, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 02:05:19', '186.0.58.83', 0),
(480, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-28 02:36:23', '186.0.58.83', 0),
(481, 30, 'Registro de ficha', 'Ficha 26772 creada', '2025-09-28 02:57:58', '186.0.58.83', 0),
(482, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 17:29:28', '186.81.124.189', 0),
(483, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 18:09:01', '186.0.58.83', 0),
(484, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 18:09:12', '186.0.58.83', 0),
(485, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 18:15:49', '186.81.124.189', 0),
(486, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 18:17:12', '186.81.124.189', 0),
(487, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:24:58', '186.0.58.83', 0),
(488, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 21:25:00', '186.0.58.83', 0),
(489, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:25:13', '186.0.58.83', 0),
(490, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 21:26:07', '186.81.124.189', 0),
(491, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:26:13', '186.81.124.189', 0),
(492, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:26:17', '186.0.58.83', 0),
(493, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Edwin Andres Rangel (ID 24)', '2025-09-28 21:26:22', '186.81.124.189', 0),
(494, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-09-28 21:26:30', '186.0.58.83', 0),
(495, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-09-28 21:26:34', '186.0.58.83', 0),
(496, 30, 'Cambio de estado de ficha', 'La ficha con ID 115 fue cambiada a estado Inactivo.', '2025-09-28 21:26:42', '186.0.58.83', 0),
(497, 30, 'Cambio de estado de ficha', 'La ficha con ID 115 fue cambiada a estado Activo.', '2025-09-28 21:26:49', '186.0.58.83', 0),
(498, 30, 'Registro de usuario', 'Se registró el usuario Edwin Andres Rangel con documento 67567.', '2025-09-28 21:31:01', '186.81.124.189', 0),
(499, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:32:40', '186.81.124.189', 0),
(500, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federico Castro (ID: 17)', '2025-09-28 21:52:57', '186.0.58.83', 0),
(501, 30, 'Habilitó un usuario', 'Usuario afectado: Federico Castro (ID: 17)', '2025-09-28 21:53:01', '186.0.58.83', 0),
(502, 30, 'Cambio de estado de ficha', 'La ficha con ID 114 fue cambiada a estado Inactivo.', '2025-09-28 21:56:45', '186.0.58.83', 0),
(503, 30, 'Cambio de estado de ficha', 'La ficha con ID 114 fue cambiada a estado Activo.', '2025-09-28 21:56:49', '186.0.58.83', 0),
(504, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 21:57:41', '186.0.58.83', 0),
(505, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:11:07', '186.0.58.83', 0),
(506, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:11:19', '186.0.58.83', 0),
(507, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:11:35', '186.0.58.83', 0),
(508, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:11:49', '186.0.58.83', 0),
(509, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:11:57', '186.0.58.83', 0),
(510, 30, 'Habilitó instructor', 'Habilitó instructor: Edwin Andres Rangel (ID 24)', '2025-09-28 22:13:41', '186.0.58.83', 0),
(511, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:14:31', '186.0.58.83', 0),
(512, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:14:58', '186.0.58.83', 0),
(513, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:16:12', '186.0.58.83', 0),
(514, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:18:47', '186.0.58.83', 0),
(515, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:19:01', '186.0.58.83', 0),
(516, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:24:43', '186.0.58.83', 0),
(517, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:24:57', '186.0.58.83', 0),
(518, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:25:01', '186.0.58.83', 0),
(519, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:25:09', '186.0.58.83', 0),
(520, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:25:14', '186.0.58.83', 0),
(521, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:26:09', '186.0.58.83', 0),
(522, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:26:12', '186.0.58.83', 0),
(523, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:26:22', '186.0.58.83', 0),
(524, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:26:30', '186.0.58.83', 0),
(525, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:27:06', '186.0.58.83', 0),
(526, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:27:14', '186.0.58.83', 0),
(527, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:27:25', '186.0.58.83', 0),
(528, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:27:35', '186.0.58.83', 0),
(529, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:27:59', '186.0.58.83', 0),
(530, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:30:22', '186.0.58.83', 0),
(531, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:30:38', '186.0.58.83', 0),
(532, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:30:52', '186.0.58.83', 0),
(533, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:32:16', '186.0.58.83', 0),
(534, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:32:26', '186.0.58.83', 0),
(535, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:32:31', '186.0.58.83', 0),
(536, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:32:56', '186.0.58.83', 0),
(537, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:33:29', '186.0.58.83', 0),
(538, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:33:37', '186.0.58.83', 0),
(539, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:33:44', '186.0.58.83', 0),
(540, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:33:49', '186.0.58.83', 0),
(541, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:33:54', '186.0.58.83', 0),
(542, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:35:02', '186.0.58.83', 0),
(543, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:35:07', '186.0.58.83', 0),
(544, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 22:38:32', '186.0.58.83', 0),
(545, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 22:55:43', '186.0.58.83', 0),
(546, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:55:55', '186.0.58.83', 0),
(547, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 22:56:46', '186.0.58.83', 0),
(548, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:05:45', '186.0.58.83', 0),
(549, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:05:52', '186.0.58.83', 0),
(550, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:05:54', '186.0.58.83', 0),
(551, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:06:03', '186.0.58.83', 0),
(552, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:06:13', '186.0.58.83', 0),
(553, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:06:24', '186.0.58.83', 0),
(554, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:12:59', '186.0.58.83', 0),
(555, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:13:37', '186.0.58.83', 0),
(556, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:14:11', '186.0.58.83', 0),
(557, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:14:29', '186.0.58.83', 0),
(558, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:14:38', '186.0.58.83', 0),
(559, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:14:46', '186.0.58.83', 0),
(560, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:14:57', '186.0.58.83', 0),
(561, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:15:29', '186.0.58.83', 0),
(562, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:15:40', '186.0.58.83', 0),
(563, 35, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:15:54', '186.0.58.83', 0),
(564, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:16:25', '186.0.58.83', 0),
(565, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:17:23', '186.0.58.83', 0),
(566, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:17:47', '186.0.58.83', 0),
(567, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:18:15', '186.0.58.83', 0),
(568, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:21:01', '186.0.58.83', 0),
(569, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:21:05', '186.0.58.83', 0),
(570, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:27:10', '186.0.58.83', 0),
(571, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:27:20', '186.0.58.83', 0),
(572, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:29:22', '186.0.58.83', 0),
(573, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:29:30', '186.0.58.83', 0),
(574, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:31:39', '186.0.58.83', 0),
(575, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:31:44', '186.0.58.83', 0),
(576, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:34:21', '186.0.58.83', 0),
(577, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:34:25', '186.0.58.83', 0),
(578, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:37:43', '186.0.58.83', 0),
(579, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:37:46', '186.0.58.83', 0),
(580, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:40:04', '186.0.58.83', 0),
(581, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:41:52', '186.0.58.83', 0),
(582, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:42:08', '186.0.58.83', 0),
(583, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:44:20', '186.0.58.83', 0),
(584, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:44:40', '186.0.58.83', 0),
(585, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:45:01', '186.0.58.83', 0),
(586, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:45:03', '186.0.58.83', 0),
(587, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:49:48', '186.0.58.83', 0),
(588, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:49:50', '186.0.58.83', 0),
(589, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:49:58', '186.0.58.83', 0),
(590, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:50:02', '186.0.58.83', 0),
(591, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:50:15', '186.0.58.83', 0),
(592, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:51:04', '186.0.58.83', 0),
(593, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:51:10', '186.0.58.83', 0),
(594, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:51:26', '186.0.58.83', 0),
(595, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:51:44', '186.0.58.83', 0),
(596, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-28 23:56:35', '186.0.58.83', 0),
(597, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:56:43', '186.0.58.83', 0),
(598, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:56:48', '186.0.58.83', 0),
(599, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:56:59', '186.0.58.83', 0),
(600, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-28 23:59:18', '186.0.58.83', 0),
(601, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-28 23:59:28', '186.0.58.83', 0),
(602, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:01:36', '186.0.58.83', 0),
(603, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-09-29 00:01:49', '186.0.58.83', 0),
(604, 30, 'Cambio de estado de ficha', 'La ficha con ID 114 fue cambiada a estado Inactivo.', '2025-09-29 00:02:16', '186.0.58.83', 0),
(605, 30, 'Registro de ficha', 'Ficha 12312312 creada', '2025-09-29 00:04:39', '186.0.58.83', 0),
(606, 30, 'Registro de ficha', 'Ficha 1211212 creada', '2025-09-29 00:05:15', '186.0.58.83', 0),
(607, 30, 'Registro de ficha', 'Ficha 12312321321 creada', '2025-09-29 00:07:45', '186.0.58.83', 0),
(608, 30, 'Registro de ficha', 'Ficha 121212212121 creada', '2025-09-29 00:08:55', '186.0.58.83', 0),
(609, 30, 'Registro de ficha', 'Ficha 11111 creada', '2025-09-29 00:09:19', '186.0.58.83', 0),
(610, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:12:34', '186.0.58.83', 0),
(611, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:18:02', '186.0.58.83', 0),
(612, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:18:09', '186.0.58.83', 0),
(613, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:20:44', '186.0.58.83', 0),
(614, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:20:50', '186.0.58.83', 0),
(615, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:22:22', '186.0.58.83', 0),
(616, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:22:25', '186.0.58.83', 0),
(617, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:24:49', '186.0.58.83', 0),
(618, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:24:53', '186.0.58.83', 0),
(619, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:26:23', '186.0.58.83', 0),
(620, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:26:33', '186.0.58.83', 0),
(621, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:27:52', '186.0.58.83', 0),
(622, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:27:56', '186.0.58.83', 0),
(623, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:32:08', '186.0.58.83', 0),
(624, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:32:11', '186.0.58.83', 0),
(625, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:32:59', '186.0.58.83', 0),
(626, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:33:07', '186.0.58.83', 0),
(627, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:33:13', '186.0.58.83', 0),
(628, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:33:21', '186.0.58.83', 0),
(629, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:33:34', '186.0.58.83', 0),
(630, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:34:02', '186.0.58.83', 0),
(631, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:36:04', '186.0.58.83', 0),
(632, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:36:12', '186.0.58.83', 0),
(633, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:36:33', '186.0.58.83', 0),
(634, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:36:37', '186.0.58.83', 0),
(635, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:36:47', '186.0.58.83', 0),
(636, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:42:46', '186.81.124.189', 0),
(637, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:45:44', '186.0.58.83', 0),
(638, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:46:04', '186.0.58.83', 0),
(639, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:46:13', '186.0.58.83', 0),
(640, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:46:27', '186.0.58.83', 0),
(641, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:46:33', '186.0.58.83', 0),
(642, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 00:46:42', '186.81.124.189', 0),
(643, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:47:43', '186.0.58.83', 0),
(644, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 00:58:59', '186.0.58.83', 0),
(645, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:59:34', '186.0.58.83', 0),
(646, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 00:59:38', '186.0.58.83', 0),
(647, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:00:21', '186.0.58.83', 0),
(648, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:00:46', '186.0.58.83', 0),
(649, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:02:33', '186.0.58.83', 0),
(650, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:03:37', '186.0.58.83', 0),
(651, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:04:40', '186.0.58.83', 0),
(652, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:06:51', '186.0.58.83', 0),
(653, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:07:32', '186.0.58.83', 0),
(654, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:12:08', '186.0.58.83', 0),
(655, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:12:28', '186.0.58.83', 0),
(656, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 01:12:41', '186.0.58.83', 0),
(657, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:14:21', '186.0.58.83', 0),
(658, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:19:13', '186.0.58.83', 0),
(659, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:29:27', '186.0.58.83', 0),
(660, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:31:03', '186.0.58.83', 0),
(661, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:33:12', '186.0.58.83', 0),
(662, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 01:33:53', '186.0.58.83', 0),
(663, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:34:19', '186.0.58.83', 0),
(664, 30, 'Deshabilitó un usuario', 'Usuario afectado: Edwin Andres Rangel (ID: 36)', '2025-09-29 01:35:54', '186.0.58.83', 0),
(665, 30, 'Habilitó un usuario', 'Usuario afectado: Edwin Andres Rangel (ID: 36)', '2025-09-29 01:35:57', '186.0.58.83', 0),
(666, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:39:57', '186.0.58.83', 0),
(667, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 01:42:18', '186.0.58.83', 0),
(668, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-09-29 01:43:04', '186.0.58.83', 0),
(669, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 16:22:26', '186.81.124.114', 0),
(670, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:31:43', '186.0.58.83', 0),
(671, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 18:31:50', '186.0.58.83', 0),
(672, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:32:11', '186.0.58.83', 0),
(673, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-29 18:32:59', '186.0.58.83', 0),
(674, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:33:16', '186.0.58.83', 0),
(675, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:33:28', '186.0.58.83', 0),
(676, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-09-29 18:34:07', '186.0.58.83', 0),
(677, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-29 18:34:33', '186.0.58.83', 0),
(678, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:34:39', '186.0.58.83', 0),
(679, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:39:48', '186.0.58.83', 0),
(680, 30, 'Logout', 'El usuario cerró sesión.', '2025-09-29 18:40:45', '186.0.58.83', 0),
(681, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:40:56', '186.0.58.83', 0),
(682, 35, 'Logout', 'El usuario cerró sesión.', '2025-09-29 18:51:58', '186.0.58.83', 0),
(683, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 18:52:09', '186.0.58.83', 0),
(684, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-09-29 19:19:58', '186.0.58.83', 0),
(685, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:20:02', '186.0.58.83', 0),
(686, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-29 19:33:11', '186.0.58.83', 0),
(687, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:36:25', '186.0.58.83', 0),
(688, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-29 19:38:12', '186.0.58.83', 0),
(689, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:39:54', '186.0.58.83', 0),
(690, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-29 19:40:00', '186.0.58.83', 0),
(691, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:40:24', '186.0.58.83', 0),
(692, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-09-29 19:40:34', '186.0.58.83', 0),
(693, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:40:41', '186.0.58.83', 0),
(694, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-29 19:40:49', '186.0.58.83', 0),
(695, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 19:40:55', '186.0.58.83', 0),
(696, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-09-29 19:41:01', '186.0.58.83', 0),
(697, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-29 22:27:25', '186.0.58.83', 0),
(698, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-09-29 22:27:34', '186.0.58.83', 0),
(699, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-30 12:13:50', '179.1.216.0', 0),
(700, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-30 12:15:24', '179.1.216.0', 0),
(701, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-30 12:16:18', '179.1.216.0', 0),
(702, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-09-30 12:16:25', '179.1.216.0', 0),
(703, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-09-30 12:16:48', '179.1.216.0', 0),
(704, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-09-30 12:18:24', '179.1.216.0', 0),
(705, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 14:00:52', '179.1.216.3', 0),
(706, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 14:01:21', '179.1.216.3', 0),
(707, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 14:02:01', '179.1.216.3', 0),
(708, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 14:02:18', '179.1.216.3', 0),
(709, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 14:03:03', '179.1.216.3', 0),
(710, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 14:04:16', '179.1.216.3', 0),
(711, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 14:04:26', '179.1.216.3', 0),
(712, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 14:05:27', '179.1.216.3', 0),
(713, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 14:08:18', '179.1.216.3', 0),
(714, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 14:08:30', '179.1.216.3', 0),
(715, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federico Castro (ID: 17)', '2025-10-01 14:09:15', '179.1.216.3', 0),
(716, 30, 'Habilitó un usuario', 'Usuario afectado: Federico Castro (ID: 17)', '2025-10-01 14:09:17', '179.1.216.3', 0),
(717, 30, 'Registro de ficha', 'Ficha -212312312 creada', '2025-10-01 14:11:48', '179.1.216.3', 0),
(718, 30, 'Registro de ficha', 'Ficha 123213 creada', '2025-10-01 14:14:20', '179.1.216.3', 0),
(719, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 14:18:07', '179.1.216.3', 0),
(720, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 14:20:11', '179.1.216.3', 0),
(721, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 17:25:32', '186.81.124.114', 0),
(722, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 17:29:13', '186.81.124.114', 0),
(723, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 17:29:24', '186.81.124.114', 0),
(724, 30, 'Registro de ficha', 'Ficha 678 creada', '2025-10-01 17:31:47', '186.81.124.114', 0),
(725, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 17:33:12', '186.81.124.114', 0),
(726, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 17:38:00', '186.81.124.114', 0),
(727, 30, 'Registro de usuario', 'Se registró el usuario Juanw123 Sotiño213 con documento -122334.', '2025-10-01 17:39:31', '186.81.124.114', 0),
(728, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 17:42:19', '186.81.124.114', 0),
(729, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 18:29:14', '186.0.58.83', 0),
(730, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 18:31:03', '186.0.58.83', 0),
(731, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:02:19', '186.0.58.83', 0),
(732, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:03:43', '186.0.58.83', 0),
(733, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:11:54', '186.0.58.83', 0),
(734, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:11:54', '186.0.58.83', 0),
(735, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:18:03', '186.0.58.83', 0),
(736, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:19:19', '186.0.58.83', 0),
(737, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:20:53', '186.0.58.83', 0),
(738, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:21:36', '186.0.58.83', 0),
(739, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:23:07', '186.0.58.83', 0),
(740, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:28:22', '186.0.58.83', 0),
(741, 30, 'Registro de ficha', 'Ficha 111111 creada', '2025-10-01 19:29:30', '186.0.58.83', 0),
(742, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:30:42', '186.0.58.83', 0),
(743, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:32:01', '186.0.58.83', 0),
(744, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:34:25', '186.0.58.83', 0),
(745, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:48:32', '186.0.58.83', 0),
(746, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 19:51:41', '186.0.58.83', 0),
(747, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:52:48', '186.0.58.83', 0),
(748, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 19:53:17', '186.0.58.83', 0),
(749, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 19:53:34', '186.0.58.83', 0),
(750, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 19:54:05', '186.0.58.83', 0),
(751, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:06:31', '186.0.58.83', 0),
(752, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 20:08:25', '186.0.58.83', 0),
(753, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:10:09', '186.0.58.83', 0),
(754, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 20:10:29', '186.0.58.83', 0),
(755, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:10:42', '186.0.58.83', 0),
(756, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 20:14:50', '186.0.58.83', 0),
(757, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:16:27', '186.0.58.83', 0),
(758, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 20:18:48', '186.0.58.83', 0),
(759, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:19:40', '186.0.58.83', 0),
(760, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 20:21:10', '186.0.58.83', 0),
(761, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:55:47', '186.81.124.22', 0),
(762, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 20:57:22', '186.81.124.22', 0),
(763, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 20:58:22', '186.81.124.22', 0),
(764, 30, 'Registro de ficha', 'Ficha 2826773 creada', '2025-10-01 20:59:59', '186.81.124.22', 0),
(765, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:01:24', '186.81.124.22', 0),
(766, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:18:20', '186.81.124.22', 0),
(767, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:19:36', '186.81.124.22', 0),
(768, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:23:24', '186.81.124.22', 0),
(769, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:24:27', '186.81.124.114', 0),
(770, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:25:50', '186.81.124.22', 0),
(771, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:27:39', '186.81.124.22', 0),
(772, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:41:53', '186.0.58.83', 0),
(773, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:43:52', '186.81.124.22', 0),
(774, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 21:44:00', '186.81.124.22', 0),
(775, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:44:19', '186.0.58.83', 0),
(776, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:45:59', '186.0.58.83', 0),
(777, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:46:22', '186.0.58.83', 0),
(778, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 21:46:49', '186.0.58.83', 0),
(779, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:47:53', '186.0.58.83', 0),
(780, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:53:00', '186.0.58.83', 0),
(781, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:54:29', '186.0.58.83', 0),
(782, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 21:57:49', '186.0.58.83', 0),
(783, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 21:59:26', '186.0.58.83', 0),
(784, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:00:46', '186.0.58.83', 0),
(785, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:01:49', '186.0.58.83', 0),
(786, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:02:52', '186.0.58.83', 0),
(787, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:04:37', '186.0.58.83', 0),
(788, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:05:21', '186.0.58.83', 0),
(789, 30, 'Registro de ficha', 'Ficha 1231231231231 creada', '2025-10-01 22:08:45', '186.0.58.83', 0),
(790, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:10:03', '186.0.58.83', 0),
(791, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:11:19', '186.0.58.83', 0),
(792, 30, 'Registro de ficha', 'Ficha 12112 creada', '2025-10-01 22:12:42', '186.0.58.83', 0),
(793, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:13:53', '186.0.58.83', 0),
(794, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:15:05', '186.0.58.83', 0),
(795, 30, 'Registro de ficha', 'Ficha 1231313212231 creada', '2025-10-01 22:15:21', '186.0.58.83', 0),
(796, 30, 'Registro de ficha', 'Ficha 123131 creada', '2025-10-01 22:16:38', '186.0.58.83', 0),
(797, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:35:09', '186.0.58.83', 0),
(798, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:42:49', '186.0.58.83', 0),
(799, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:46:21', '186.0.58.83', 0),
(800, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:47:39', '186.0.58.83', 0),
(801, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:48:24', '186.0.58.83', 0),
(802, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:48:29', '186.0.58.83', 0),
(803, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:50:21', '186.0.58.83', 0),
(804, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:51:04', '186.0.58.83', 0),
(805, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:53:31', '186.0.58.83', 0),
(806, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:56:21', '186.0.58.83', 0),
(807, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 22:58:11', '186.0.58.83', 0),
(808, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 22:59:10', '186.0.58.83', 0),
(809, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:03:08', '186.81.124.22', 0),
(810, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 23:03:19', '186.0.58.83', 0),
(811, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 23:03:23', '186.0.58.83', 0),
(812, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-01 23:03:38', '186.0.58.83', 0),
(813, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 23:03:46', '186.81.124.22', 0),
(814, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:03:52', '186.0.58.83', 0),
(815, 30, 'Registro de usuario', 'Se registró el usuario kevinchito Muñoz con documento 1128904517.', '2025-10-01 23:04:38', '186.0.58.83', 0),
(816, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:05:48', '186.0.58.83', 0),
(817, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:07:15', '186.0.58.83', 0),
(818, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:08:18', '186.0.58.83', 0),
(819, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:08:32', '186.0.58.83', 0),
(820, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:12:02', '186.0.58.83', 0),
(821, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:12:26', '186.0.58.83', 0),
(822, 30, 'Registro de usuario', 'Se registró el usuario kevinchote Muñoz con documento 123345678.', '2025-10-01 23:13:25', '186.0.58.83', 0),
(823, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:14:35', '186.0.58.83', 0),
(824, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:15:08', '186.0.58.83', 0),
(825, 30, 'Registro de usuario', 'Se registró el usuario aaa aaaaaa con documento 12312312.', '2025-10-01 23:15:35', '186.0.58.83', 0),
(826, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:16:40', '186.0.58.83', 0),
(827, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:18:00', '186.0.58.83', 0),
(828, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:19:10', '186.0.58.83', 0),
(829, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:22:12', '186.0.58.83', 0),
(830, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:24:40', '186.0.58.83', 0),
(831, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:38:05', '186.0.58.83', 0),
(832, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:40:05', '186.0.58.83', 0),
(833, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:41:37', '186.0.58.83', 0),
(834, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-01 23:44:00', '186.0.58.83', 0),
(835, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-01 23:44:14', '186.0.58.83', 0),
(836, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-01 23:46:20', '186.0.58.83', 0),
(837, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 00:01:35', '186.81.124.22', 0),
(838, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 00:05:12', '186.81.124.22', 0),
(839, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 00:05:44', '186.81.124.22', 0),
(840, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 00:06:53', '186.81.124.22', 0),
(841, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 00:09:40', '186.81.124.22', 0),
(842, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 00:11:08', '186.81.124.22', 0),
(843, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 00:11:34', '186.81.124.22', 0),
(844, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 00:12:44', '186.81.124.22', 0),
(845, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 01:02:40', '186.81.124.22', 0),
(846, 30, 'Registro de instructor', 'Se registró el instructor Kevin Castro, Documento: 1342423, Rol: transversal', '2025-10-02 01:13:07', '186.81.124.22', 0),
(847, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 01:14:28', '186.81.124.22', 0),
(848, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:28:42', '186.81.124.22', 0),
(849, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 02:29:46', '186.81.124.22', 0),
(850, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:31:33', '186.81.124.22', 0),
(851, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 02:34:41', '186.81.124.22', 0),
(852, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:35:42', '186.81.124.22', 0),
(853, NULL, 'Editó un usuario', 'Usuario editado: Kevincito Castro (ID: 43)', '2025-10-02 02:36:24', '186.81.124.22', 0),
(854, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro (ID: 17)', '2025-10-02 02:36:33', '186.81.124.22', 0),
(855, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro1 (ID: 17)', '2025-10-02 02:37:01', '186.81.124.22', 0),
(856, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 02:38:02', '186.81.124.22', 0),
(857, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:40:09', '186.81.124.22', 0),
(858, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 02:41:09', '186.81.124.22', 0),
(859, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:57:23', '186.81.124.22', 0),
(860, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 02:58:41', '186.81.124.22', 0),
(861, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 02:59:31', '186.81.124.22', 0),
(862, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Edwin Andres Rangel (ID 24)', '2025-10-02 03:03:06', '186.81.124.22', 0),
(863, 30, 'Habilitó instructor', 'Habilitó instructor: Edwin Andres Rangel (ID 24)', '2025-10-02 03:03:20', '186.81.124.22', 0),
(864, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 03:06:27', '186.81.124.22', 0),
(865, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 17:44:25', '186.0.58.83', 0),
(866, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-02 17:46:10', '186.0.58.83', 0),
(867, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 17:46:16', '186.0.58.83', 0);
INSERT INTO `historial_usuarios` (`id`, `usuario_id`, `accion`, `descripcion`, `fecha`, `ip_usuario`, `eliminado`) VALUES
(868, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro1 (ID: 17)', '2025-10-02 17:46:47', '186.0.58.83', 0),
(869, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 17:47:05', '186.0.58.83', 0),
(870, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 17:47:07', '186.0.58.83', 0),
(871, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 17:47:09', '186.0.58.83', 0),
(872, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 17:47:10', '186.0.58.83', 0),
(873, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Edwin Andres Rangel (ID 24)', '2025-10-02 17:47:16', '186.0.58.83', 0),
(874, 30, 'Habilitó instructor', 'Habilitó instructor: Edwin Andres Rangel (ID 24)', '2025-10-02 17:47:18', '186.0.58.83', 0),
(875, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 17:52:01', '186.0.58.83', 0),
(876, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 17:54:33', '186.0.58.83', 0),
(877, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:00:04', '186.0.58.83', 0),
(878, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:00:09', '186.0.58.83', 0),
(879, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:01:15', '186.0.58.83', 0),
(880, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:07:25', '186.0.58.83', 0),
(881, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:09:59', '186.0.58.83', 0),
(882, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:13:18', '186.0.58.83', 0),
(883, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:31:55', '186.0.58.83', 0),
(884, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:33:21', '186.0.58.83', 0),
(885, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:34:59', '186.0.58.83', 0),
(886, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:38:14', '186.0.58.83', 0),
(887, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:40:14', '186.0.58.83', 0),
(888, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:42:28', '186.0.58.83', 0),
(889, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:43:34', '186.0.58.83', 0),
(890, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:49:07', '186.0.58.83', 0),
(891, 30, 'Registro de usuario', 'Se registró el usuario Franco Escamilla con documento 123456.', '2025-10-02 18:53:42', '186.0.58.83', 0),
(892, 30, 'Deshabilitó un usuario', 'Usuario afectado: Franco Escamilla (ID: 44)', '2025-10-02 18:53:53', '186.0.58.83', 0),
(893, 30, 'Habilitó un usuario', 'Usuario afectado: Franco Escamilla (ID: 44)', '2025-10-02 18:53:56', '186.0.58.83', 0),
(894, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:56:48', '186.0.58.83', 0),
(895, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 18:58:35', '186.0.58.83', 0),
(896, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 18:58:44', '186.0.58.83', 0),
(897, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 18:59:52', '186.0.58.83', 0),
(898, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:00:37', '186.0.58.83', 0),
(899, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro1 (ID: 17)', '2025-10-02 19:00:42', '186.0.58.83', 0),
(900, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro1 (ID: 17)', '2025-10-02 19:00:45', '186.0.58.83', 0),
(901, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro (ID: 17)', '2025-10-02 19:00:52', '186.0.58.83', 0),
(902, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-02 19:01:17', '186.81.124.114', 0),
(903, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-02 19:01:27', '186.81.124.114', 0),
(904, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:01:54', '186.0.58.83', 0),
(905, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:01:59', '186.81.124.114', 0),
(906, NULL, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:02:37', '186.81.124.114', 0),
(907, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:02:59', '186.81.124.114', 0),
(908, NULL, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:05:43', '186.81.124.114', 0),
(909, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:06:10', '186.0.58.83', 0),
(910, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:06:13', '186.0.58.83', 0),
(911, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:06:14', '186.0.58.83', 0),
(912, NULL, 'Editó un usuario', 'Usuario editado: Federicos Castro (ID: 17)', '2025-10-02 19:06:17', '186.0.58.83', 0),
(913, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:07:19', '186.0.58.83', 0),
(914, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:08:07', '186.0.58.83', 0),
(915, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:08:11', '186.0.58.83', 0),
(916, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:08:12', '186.0.58.83', 0),
(917, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:09:13', '186.0.58.83', 0),
(918, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:13:09', '186.0.58.83', 0),
(919, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:13:12', '186.0.58.83', 0),
(920, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:13:14', '186.0.58.83', 0),
(921, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 19:13:18', '186.0.58.83', 0),
(922, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 19:13:52', '186.0.58.83', 0),
(923, 30, 'Deshabilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:14:38', '186.0.58.83', 0),
(924, 30, 'Habilitó un usuario', 'Usuario afectado: Federicos Castro (ID: 17)', '2025-10-02 19:14:45', '186.0.58.83', 0),
(925, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 19:15:43', '186.0.58.83', 0),
(926, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 19:15:51', '186.0.58.83', 0),
(927, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 19:15:57', '186.0.58.83', 0),
(928, 30, 'Actualizó un usuario', 'Usuario actualizado: Juanw123 Sotiño213 (ID: 37)', '2025-10-02 19:16:06', '186.0.58.83', 0),
(929, 30, 'Actualizó un usuario', 'Usuario actualizado: Juanw123 Sotiño213 (ID: 37)', '2025-10-02 19:16:17', '186.0.58.83', 0),
(930, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:17:23', '186.0.58.83', 0),
(931, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:22:15', '186.0.58.83', 0),
(932, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:26:48', '186.81.124.114', 0),
(933, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:28:00', '186.0.58.83', 0),
(934, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:29:26', '186.0.58.83', 0),
(935, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:29:41', '186.0.58.83', 0),
(936, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:31:20', '186.0.58.83', 0),
(937, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:32:19', '186.0.58.83', 0),
(938, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:33:37', '186.0.58.83', 0),
(939, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:37:52', '186.0.58.83', 0),
(940, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 19:39:34', '186.0.58.83', 0),
(941, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 19:52:40', '186.0.58.83', 0),
(942, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:05:43', '186.0.58.83', 0),
(943, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:07:36', '186.0.58.83', 0),
(944, 30, 'Registro de instructor', 'Se registró el instructor Yuli Paulin, Documento: 11000012, Rol: tecnico', '2025-10-02 20:09:19', '186.0.58.83', 0),
(945, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Yuli Paulin (ID 34)', '2025-10-02 20:09:29', '186.0.58.83', 0),
(946, 30, 'Habilitó instructor', 'Habilitó instructor: Yuli Paulin (ID 34)', '2025-10-02 20:09:32', '186.0.58.83', 0),
(947, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:11:38', '186.0.58.83', 0),
(948, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:12:04', '186.0.58.83', 0),
(949, 30, 'Registro de instructor', 'Se registró el instructor Yo ElMiradas, Documento: 123, Rol: tecnico', '2025-10-02 20:15:26', '186.0.58.83', 0),
(950, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:17:16', '186.0.58.83', 0),
(951, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:20:52', '186.0.58.83', 0),
(952, 30, 'Registro de instructor', 'Se registró el instructor Franco Escarlata, Documento: 123, Rol: tecnico', '2025-10-02 20:26:42', '186.0.58.83', 0),
(953, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:33:21', '186.0.58.83', 0),
(954, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:33:29', '186.0.58.83', 0),
(955, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:35:44', '186.0.58.83', 0),
(956, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:35:50', '186.0.58.83', 0),
(957, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:36:08', '186.0.58.83', 0),
(958, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:36:13', '186.0.58.83', 0),
(959, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:38:48', '186.0.58.83', 0),
(960, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:39:01', '186.0.58.83', 0),
(961, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:39:10', '186.0.58.83', 0),
(962, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:39:21', '186.0.58.83', 0),
(963, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:43:59', '186.0.58.83', 0),
(964, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:46:02', '186.0.58.83', 0),
(965, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:47:51', '186.0.58.83', 0),
(966, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:48:34', '186.0.58.83', 0),
(967, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 20:51:23', '186.0.58.83', 0),
(968, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 20:59:46', '186.0.58.83', 0),
(969, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:01:55', '186.0.58.83', 0),
(970, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:05:30', '186.0.58.83', 0),
(971, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:07:17', '186.0.58.83', 0),
(972, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:10:30', '186.0.58.83', 0),
(973, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:13:09', '186.0.58.83', 0),
(974, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:16:44', '186.0.58.83', 0),
(975, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:17:13', '186.0.58.83', 0),
(976, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:17:25', '186.0.58.83', 0),
(977, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:18:36', '186.0.58.83', 0),
(978, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:22:49', '186.0.58.83', 0),
(979, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:25:15', '186.0.58.83', 0),
(980, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:26:52', '186.0.58.83', 0),
(981, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:30:02', '186.0.58.83', 0),
(982, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:34:46', '186.0.58.83', 0),
(983, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:37:03', '186.0.58.83', 0),
(984, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:37:52', '186.0.58.83', 0),
(985, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:41:58', '186.0.58.83', 0),
(986, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:44:45', '186.0.58.83', 0),
(987, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:46:20', '186.0.58.83', 0),
(988, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:53:02', '186.0.58.83', 0),
(989, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:54:11', '186.0.58.83', 0),
(990, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 21:56:45', '186.0.58.83', 0),
(991, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 21:58:34', '186.0.58.83', 0),
(992, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:06:40', '186.0.58.83', 0),
(993, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:08:20', '186.0.58.83', 0),
(994, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:08:47', '186.0.58.83', 0),
(995, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:11:52', '186.0.58.83', 0),
(996, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:13:48', '186.0.58.83', 0),
(997, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:14:57', '186.0.58.83', 0),
(998, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:15:03', '186.0.58.83', 0),
(999, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:16:21', '186.0.58.83', 0),
(1000, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:18:33', '186.0.58.83', 0),
(1001, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:21:01', '186.0.58.83', 0),
(1002, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:24:00', '186.0.58.83', 0),
(1003, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:25:22', '186.0.58.83', 0),
(1004, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:25:27', '186.0.58.83', 0),
(1005, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:27:35', '186.0.58.83', 0),
(1006, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:43:39', '186.0.58.83', 0),
(1007, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:47:13', '186.0.58.83', 0),
(1008, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:48:23', '186.0.58.83', 0),
(1009, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:52:51', '186.0.58.83', 0),
(1010, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:54:04', '186.0.58.83', 0),
(1011, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 22:55:14', '186.0.58.83', 0),
(1012, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 22:55:50', '186.0.58.83', 0),
(1013, 30, 'Actualizó un usuario', 'Usuario actualizado: Federicos Castro (ID: 17)', '2025-10-02 22:57:35', '186.0.58.83', 0),
(1014, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 22:57:58', '186.0.58.83', 0),
(1015, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 22:58:10', '186.0.58.83', 0),
(1016, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 22:58:25', '186.0.58.83', 0),
(1017, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Edwin  Rangel (ID 24)', '2025-10-02 22:59:08', '186.0.58.83', 0),
(1018, 30, 'Habilitó instructor', 'Habilitó instructor: Edwin  Rangel (ID 24)', '2025-10-02 22:59:13', '186.0.58.83', 0),
(1019, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:01:46', '186.0.58.83', 0),
(1020, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:03:57', '186.0.58.83', 0),
(1021, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 23:04:04', '186.0.58.83', 0),
(1022, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 23:04:13', '186.0.58.83', 0),
(1023, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 23:04:22', '186.0.58.83', 0),
(1024, 30, 'Actualizó un usuario', 'Usuario actualizado: Federico Castro (ID: 17)', '2025-10-02 23:04:50', '186.0.58.83', 0),
(1025, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:07:53', '186.0.58.83', 0),
(1026, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:09:38', '186.0.58.83', 0),
(1027, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-10-02 23:10:26', '186.0.58.83', 0),
(1028, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:12:08', '186.0.58.83', 0),
(1029, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:12:55', '186.0.58.83', 0),
(1030, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-10-02 23:13:02', '186.0.58.83', 0),
(1031, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-10-02 23:13:11', '186.0.58.83', 0),
(1032, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:14:50', '186.0.58.83', 0),
(1033, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:15:25', '186.0.58.83', 0),
(1034, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:16:55', '186.0.58.83', 0),
(1035, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:18:26', '186.0.58.83', 0),
(1036, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:20:40', '186.0.58.83', 0),
(1037, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:21:54', '186.0.58.83', 0),
(1038, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:23:18', '186.0.58.83', 0),
(1039, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:25:28', '186.0.58.83', 0),
(1040, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:26:51', '186.0.58.83', 0),
(1041, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:29:04', '186.0.58.83', 0),
(1042, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:30:19', '186.0.58.83', 0),
(1043, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:32:23', '186.0.58.83', 0),
(1044, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:34:01', '186.0.58.83', 0),
(1045, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:34:33', '186.0.58.83', 0),
(1046, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:37:02', '186.0.58.83', 0),
(1047, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:37:58', '186.0.58.83', 0),
(1048, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:39:10', '186.0.58.83', 0),
(1049, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:39:36', '186.0.58.83', 0),
(1050, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:40:49', '186.0.58.83', 0),
(1051, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:46:32', '186.0.58.83', 0),
(1052, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:47:57', '186.0.58.83', 0),
(1053, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:49:15', '186.0.58.83', 0),
(1054, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Yo ElMiradas (ID 35)', '2025-10-02 23:50:37', '186.0.58.83', 0),
(1055, 30, 'Habilitó instructor', 'Habilitó instructor: Yo ElMiradas (ID 35)', '2025-10-02 23:50:40', '186.0.58.83', 0),
(1056, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Yo ElMiradas (ID 35)', '2025-10-02 23:52:03', '186.0.58.83', 0),
(1057, 30, 'Habilitó instructor', 'Habilitó instructor: Yo ElMiradas (ID 35)', '2025-10-02 23:52:08', '186.0.58.83', 0),
(1058, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-02 23:57:15', '186.0.58.83', 0),
(1059, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-02 23:57:19', '186.0.58.83', 0),
(1060, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:01:18', '186.0.58.83', 0),
(1061, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:01:36', '186.0.58.83', 0),
(1062, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:05:17', '186.0.58.83', 0),
(1063, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:08:04', '186.0.58.83', 0),
(1064, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:08:13', '186.0.58.83', 0),
(1065, 35, 'Cambio de contraseña', 'El usuario recuperó su contraseña mediante el enlace enviado al correo.', '2025-10-03 00:09:05', '186.0.58.83', 0),
(1066, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:09:46', '186.0.58.83', 0),
(1067, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:09:49', '186.0.58.83', 0),
(1068, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:10:35', '186.0.58.83', 0),
(1069, 30, 'Registro de usuario', 'Se registró el usuario Kevin M con documento 1128901111.', '2025-10-03 00:11:44', '186.0.58.83', 0),
(1070, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:11:47', '186.0.58.83', 0),
(1071, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:11:56', '186.0.58.83', 0),
(1072, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:13:13', '186.0.58.83', 0),
(1073, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:13:17', '186.0.58.83', 0),
(1074, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:14:20', '186.0.58.83', 0),
(1075, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:15:51', '186.0.58.83', 0),
(1076, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:20:38', '186.0.58.83', 0),
(1077, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:21:04', '186.0.58.83', 0),
(1078, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:22:06', '186.0.58.83', 0),
(1079, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:22:19', '186.0.58.83', 0),
(1080, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:22:26', '186.0.58.83', 0),
(1081, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Andres Gomez (ID 29)', '2025-10-03 00:25:10', '186.0.58.83', 0),
(1082, 30, 'Habilitó instructor', 'Habilitó instructor: Andres Gomez (ID 29)', '2025-10-03 00:25:12', '186.0.58.83', 0),
(1083, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 46', '2025-10-03 00:29:10', '186.0.58.83', 0),
(1084, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 46', '2025-10-03 00:29:15', '186.0.58.83', 0),
(1085, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 48', '2025-10-03 00:29:19', '186.0.58.83', 0),
(1086, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:29:31', '186.0.58.83', 0),
(1087, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:29:53', '186.0.58.83', 0),
(1088, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:30:01', '186.0.58.83', 0),
(1089, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:30:04', '186.0.58.83', 0),
(1090, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:32:13', '186.0.58.83', 0),
(1091, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:33:43', '186.0.58.83', 0),
(1092, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:33:50', '186.0.58.83', 0),
(1093, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:34:11', '186.0.58.83', 0),
(1094, NULL, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:35:14', '186.0.58.83', 0),
(1095, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:38:46', '186.0.58.83', 0),
(1096, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:38:54', '186.0.58.83', 0),
(1097, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:38:58', '186.0.58.83', 0),
(1098, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:39:04', '186.0.58.83', 0),
(1099, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:39:10', '186.0.58.83', 0),
(1100, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:39:16', '186.0.58.83', 0),
(1101, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:39:52', '186.0.58.83', 0),
(1102, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 00:40:00', '186.0.58.83', 0),
(1103, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:40:14', '186.0.58.83', 0),
(1104, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:40:23', '186.0.58.83', 0),
(1105, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:40:39', '186.81.124.114', 0),
(1106, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:40:41', '186.0.58.83', 0),
(1107, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:40:46', '186.81.124.114', 0),
(1108, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:40:53', '186.81.124.114', 0),
(1109, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:41:02', '186.0.58.83', 0),
(1110, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:41:06', '186.0.58.83', 0),
(1111, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:41:19', '186.0.58.83', 0),
(1112, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 00:42:23', '186.0.58.83', 0),
(1113, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:46:05', '186.0.58.83', 0),
(1114, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:46:48', '186.0.58.83', 0),
(1115, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:46:53', '186.0.58.83', 0),
(1116, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:49:38', '186.0.58.83', 0),
(1117, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:49:46', '186.0.58.83', 0),
(1118, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:50:07', '186.0.58.83', 0),
(1119, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:50:34', '186.0.58.83', 0),
(1120, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:50:44', '186.0.58.83', 0),
(1121, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:52:34', '186.0.58.83', 0),
(1122, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:54:22', '186.0.58.83', 0),
(1123, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:55:34', '186.0.58.83', 0),
(1124, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:55:41', '186.0.58.83', 0),
(1125, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 00:59:13', '186.0.58.83', 0),
(1126, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:13', '186.0.58.83', 0),
(1127, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:17', '186.0.58.83', 0),
(1128, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:21', '186.0.58.83', 0),
(1129, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:26', '186.0.58.83', 0),
(1130, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:34', '186.0.58.83', 0),
(1131, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:38', '186.0.58.83', 0),
(1132, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:45', '186.0.58.83', 0),
(1133, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 00:59:56', '186.0.58.83', 0),
(1134, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:00:05', '186.0.58.83', 0),
(1135, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:00:12', '186.0.58.83', 0),
(1136, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:00:15', '186.0.58.83', 0),
(1137, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:00:28', '186.0.58.83', 0),
(1138, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:00:31', '186.0.58.83', 0),
(1139, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:00:48', '186.0.58.83', 0),
(1140, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:00:53', '186.0.58.83', 0),
(1141, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:01:01', '186.0.58.83', 0),
(1142, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:02:17', '186.0.58.83', 0),
(1143, NULL, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:02:34', '186.0.58.83', 0),
(1144, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:03:52', '186.0.58.83', 0),
(1145, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:07:53', '186.0.58.83', 0),
(1146, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:07:58', '186.0.58.83', 0),
(1147, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:08:24', '186.0.58.83', 0),
(1148, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:08:33', '186.0.58.83', 0),
(1149, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:08:48', '186.0.58.83', 0),
(1150, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:09:00', '186.0.58.83', 0),
(1151, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:09:27', '186.0.58.83', 0),
(1152, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:09:36', '186.0.58.83', 0),
(1153, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:10:11', '186.0.58.83', 0),
(1154, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:10:16', '186.0.58.83', 0),
(1155, 35, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:10:38', '186.0.58.83', 0),
(1156, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:11:31', '186.0.58.83', 0),
(1157, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:11:39', '186.0.58.83', 0),
(1158, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:11:47', '186.0.58.83', 0),
(1159, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:11:56', '186.0.58.83', 0),
(1160, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:12:02', '186.0.58.83', 0),
(1161, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:12:08', '186.0.58.83', 0),
(1162, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:12:12', '186.0.58.83', 0),
(1163, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:15:46', '186.0.58.83', 0),
(1164, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:20:11', '186.0.58.83', 0),
(1165, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 01:20:55', '186.0.58.83', 0),
(1166, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:21:15', '186.0.58.83', 0),
(1167, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:21:20', '186.0.58.83', 0),
(1168, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:22:22', '186.0.58.83', 0),
(1169, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:22:49', '186.0.58.83', 0),
(1170, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:22:57', '186.0.58.83', 0),
(1171, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:23:00', '186.0.58.83', 0),
(1172, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:23:06', '186.0.58.83', 0),
(1173, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:23:16', '186.0.58.83', 0),
(1174, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:24:24', '186.0.58.83', 0),
(1175, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:26:58', '186.0.58.83', 0),
(1176, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:27:02', '186.0.58.83', 0),
(1177, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:27:24', '186.0.58.83', 0),
(1178, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:27:31', '186.0.58.83', 0),
(1179, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:27:37', '186.0.58.83', 0),
(1180, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:29:08', '186.0.58.83', 0),
(1181, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:29:12', '186.0.58.83', 0),
(1182, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:29:15', '186.0.58.83', 0),
(1183, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:29:18', '186.0.58.83', 0),
(1184, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:29:55', '186.0.58.83', 0),
(1185, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Yuli Paulin (ID 34)', '2025-10-03 01:30:32', '186.0.58.83', 0),
(1186, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:31:35', '186.0.58.83', 0),
(1187, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:34:28', '186.0.58.83', 0),
(1188, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:34:36', '186.0.58.83', 0),
(1189, 30, 'Habilitó instructor', 'Habilitó instructor: Yuli Paulin (ID 34)', '2025-10-03 01:34:39', '186.0.58.83', 0),
(1190, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 01:34:50', '186.0.58.83', 0),
(1191, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:34:55', '186.0.58.83', 0),
(1192, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:35:04', '186.0.58.83', 0),
(1193, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:35:06', '186.0.58.83', 0),
(1194, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:35:12', '186.0.58.83', 0),
(1195, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:36:21', '186.0.58.83', 0),
(1196, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:38:16', '186.0.58.83', 0),
(1197, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:38:18', '186.0.58.83', 0),
(1198, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:38:22', '186.0.58.83', 0),
(1199, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:38:24', '186.0.58.83', 0),
(1200, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:38:32', '186.0.58.83', 0),
(1201, 35, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:39:35', '186.0.58.83', 0),
(1202, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:42:53', '186.0.58.83', 0),
(1203, 35, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:44:44', '186.0.58.83', 0),
(1204, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:46:54', '186.0.58.83', 0),
(1205, 35, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 01:47:57', '186.0.58.83', 0),
(1206, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:48:30', '186.0.58.83', 0),
(1207, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:48:37', '186.0.58.83', 0),
(1208, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:49:14', '186.0.58.83', 0),
(1209, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:49:18', '186.0.58.83', 0),
(1210, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:49:41', '186.0.58.83', 0),
(1211, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 01:49:42', '186.0.58.83', 0),
(1212, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 01:58:55', '186.0.58.83', 0),
(1213, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 02:06:47', '186.0.58.83', 0),
(1214, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 02:06:52', '186.0.58.83', 0),
(1215, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 02:06:58', '186.0.58.83', 0),
(1216, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:08:26', '186.0.58.83', 0),
(1217, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:13:33', '186.0.58.83', 0),
(1218, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 02:13:39', '186.0.58.83', 0),
(1219, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:13:51', '186.0.58.83', 0),
(1220, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 02:13:53', '186.0.58.83', 0),
(1221, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:16:38', '186.0.58.83', 0),
(1222, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:18:50', '186.0.58.83', 0),
(1223, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:21:04', '186.0.58.83', 0),
(1224, NULL, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 02:21:06', '186.0.58.83', 0),
(1225, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:22:01', '186.0.58.83', 0),
(1226, 30, 'Habilitó instructor', 'Habilitó instructor: Franco Escarlata (ID 36)', '2025-10-03 02:22:44', '186.0.58.83', 0),
(1227, 30, 'Habilitó instructor', 'Habilitó instructor: Franco Escarlata (ID 36)', '2025-10-03 02:22:59', '186.0.58.83', 0),
(1228, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:24:08', '186.0.58.83', 0),
(1229, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:27:35', '186.0.58.83', 0),
(1230, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Franco Escarlata (ID 36)', '2025-10-03 02:27:44', '186.0.58.83', 0),
(1231, 30, 'Habilitó instructor', 'Habilitó instructor: Franco Escarlata (ID 36)', '2025-10-03 02:27:52', '186.0.58.83', 0),
(1232, 30, 'Habilitó instructor', 'Habilitó instructor: Franco Escarlata (ID 36)', '2025-10-03 02:28:12', '186.0.58.83', 0),
(1233, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:30:01', '186.0.58.83', 0),
(1234, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:32:23', '186.0.58.83', 0),
(1235, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:35:19', '186.0.58.83', 0),
(1236, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:38:18', '186.0.58.83', 0),
(1237, 30, 'Habilitó instructor', 'Habilitó instructor: Yo ElMiradas (ID 35)', '2025-10-03 02:39:24', '186.0.58.83', 0),
(1238, 30, 'Habilitó instructor', 'Habilitó instructor: Yo ElMiradas (ID 35)', '2025-10-03 02:39:29', '186.0.58.83', 0),
(1239, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Yuli Paulin (ID 34)', '2025-10-03 02:39:35', '186.0.58.83', 0),
(1240, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:40:42', '186.0.58.83', 0),
(1241, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:42:34', '186.0.58.83', 0),
(1242, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:43:56', '186.0.58.83', 0),
(1243, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:45:43', '186.0.58.83', 0),
(1244, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:46:53', '186.0.58.83', 0),
(1245, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:48:24', '186.0.58.83', 0),
(1246, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:49:31', '186.0.58.83', 0),
(1247, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:51:19', '186.0.58.83', 0),
(1248, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 47', '2025-10-03 02:51:29', '186.0.58.83', 0),
(1249, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 47', '2025-10-03 02:51:35', '186.0.58.83', 0),
(1250, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:53:14', '186.0.58.83', 0),
(1251, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 02:56:00', '186.0.58.83', 0),
(1252, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 02:57:08', '186.0.58.83', 0),
(1253, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:00:47', '186.0.58.83', 0),
(1254, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:02:13', '186.0.58.83', 0),
(1255, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:03:37', '186.0.58.83', 0),
(1256, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:05:01', '186.0.58.83', 0),
(1257, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:07:07', '186.0.58.83', 0),
(1258, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:09:59', '186.0.58.83', 0),
(1259, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:14:35', '186.81.124.114', 0),
(1260, 30, 'Registro de ficha', 'Ficha 5678 creada', '2025-10-03 03:17:30', '186.81.124.114', 0),
(1261, 30, 'Registro de ficha', 'Ficha 2 creada', '2025-10-03 03:18:55', '186.81.124.114', 0),
(1262, 30, 'Cambio de estado de ficha', 'La ficha con ID 131 fue cambiada a estado Inactivo.', '2025-10-03 03:20:27', '186.81.124.114', 0),
(1263, 30, 'Registro de instructor', 'Se registró el instructor Juan6543 Soto654, Documento: 6543, Rol: clave', '2025-10-03 03:24:43', '186.81.124.114', 0),
(1264, 30, 'Registro de instructor', 'Se registró el instructor rew re, Documento: 3222, Rol: clave', '2025-10-03 03:25:46', '186.81.124.114', 0),
(1265, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 03:26:33', '186.81.124.114', 0),
(1266, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: rew re (ID 38)', '2025-10-03 03:26:43', '186.81.124.114', 0),
(1267, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 03:27:54', '186.81.124.114', 0),
(1268, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 03:27:57', '186.81.124.114', 0),
(1269, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-10-03 03:28:05', '186.81.124.114', 0),
(1270, NULL, 'Editó un usuario', 'Usuario editado: Federico5432 Castro (ID: 17)', '2025-10-03 03:28:44', '186.81.124.114', 0),
(1271, NULL, 'Editó un usuario', 'Usuario editado: Federico5432 Castro (ID: 17)', '2025-10-03 03:28:55', '186.81.124.114', 0),
(1272, 30, 'Registro de usuario', 'Se registró el usuario Juan Soto con documento 5432.', '2025-10-03 03:31:04', '186.81.124.114', 0),
(1273, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 03:34:12', '186.81.124.114', 0),
(1274, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 03:34:21', '186.81.124.114', 0),
(1275, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:34:36', '186.81.124.114', 0),
(1276, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:38:12', '186.81.124.114', 0),
(1277, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:38:44', '186.81.124.114', 0),
(1278, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:40:44', '186.81.124.118', 0),
(1279, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 03:41:05', '186.81.124.114', 0),
(1280, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 03:41:10', '186.81.124.118', 0),
(1281, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:41:16', '186.81.124.114', 0),
(1282, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:42:19', '186.81.124.114', 0),
(1283, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:43:00', '186.81.124.118', 0),
(1284, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:44:08', '186.81.124.118', 0),
(1285, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:47:08', '186.81.124.118', 0),
(1286, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:49:07', '186.81.124.118', 0),
(1287, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:49:43', '186.81.124.114', 0),
(1288, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 03:49:45', '186.81.124.118', 0),
(1289, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 03:50:52', '186.81.124.114', 0),
(1290, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 03:54:20', '186.81.124.118', 0),
(1291, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:02:11', '186.81.124.118', 0),
(1292, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:03:57', '186.81.124.118', 0),
(1293, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:05:09', '186.81.124.118', 0),
(1294, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:08:53', '186.0.58.83', 0),
(1295, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:09:20', '186.81.124.118', 0),
(1296, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 04:09:29', '186.0.58.83', 0),
(1297, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:09:29', '186.81.124.118', 0),
(1298, 30, 'Registro de instructor', 'Se registró el instructor Juanito Desa, Documento: 13234234, Rol: transversal', '2025-10-03 04:11:17', '186.81.124.118', 0),
(1299, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:12:55', '186.81.124.118', 0),
(1300, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:14:52', '186.81.124.118', 0),
(1301, 30, 'Registro de instructor', 'Se registró el instructor Andres felipe, Documento: 234342, Rol: transversal', '2025-10-03 04:15:29', '186.81.124.118', 0),
(1302, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:16:08', '186.0.58.83', 0),
(1303, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:16:15', '186.0.58.83', 0),
(1304, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:16:19', '186.0.58.83', 0),
(1305, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:19:04', '186.0.58.83', 0),
(1306, NULL, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:20:02', '186.81.124.118', 0),
(1307, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:20:03', '186.0.58.83', 0),
(1308, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:21:21', '186.0.58.83', 0),
(1309, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:21:56', '186.0.58.83', 0),
(1310, NULL, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:22:46', '186.81.124.118', 0),
(1311, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:23:34', '186.0.58.83', 0),
(1312, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:29:04', '186.0.58.83', 0),
(1313, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:30:13', '186.0.58.83', 0),
(1314, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:30:29', '186.0.58.83', 0),
(1315, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:32:06', '186.0.58.83', 0),
(1316, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:36:33', '186.0.58.83', 0),
(1317, 30, 'Habilitó instructor', 'Habilitó instructor: Andres Gomez (ID 29)', '2025-10-03 04:38:30', '186.0.58.83', 0),
(1318, NULL, 'Editó un usuario', 'Usuario editado: Federico Castro (ID: 17)', '2025-10-03 04:42:30', '186.0.58.83', 0),
(1319, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 04:43:17', '186.0.58.83', 0),
(1320, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:43:17', '186.81.124.114', 0),
(1321, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 04:45:06', '186.81.124.114', 0),
(1322, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:45:10', '186.0.58.83', 0),
(1323, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:45:19', '186.0.58.83', 0),
(1324, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:45:30', '186.0.58.83', 0),
(1325, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:45:50', '186.0.58.83', 0),
(1326, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:46:00', '186.0.58.83', 0),
(1327, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:46:03', '186.0.58.83', 0),
(1328, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-03 04:46:07', '186.0.58.83', 0);
INSERT INTO `historial_usuarios` (`id`, `usuario_id`, `accion`, `descripcion`, `fecha`, `ip_usuario`, `eliminado`) VALUES
(1329, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:46:10', '186.0.58.83', 0),
(1330, 30, 'Registro de instructor', 'Se registró el instructor Kevinx rojas, Documento: 1524675, Rol: clave', '2025-10-03 04:49:03', '186.0.58.83', 0),
(1331, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:50:37', '186.0.58.83', 0),
(1332, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:53:55', '186.0.58.83', 0),
(1333, 30, 'Registro de instructor', 'Se registró el instructor Franco Escamilla, Documento: 12345679, Rol: transversal', '2025-10-03 04:55:08', '186.0.58.83', 0),
(1334, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:56:46', '186.0.58.83', 0),
(1335, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 04:57:25', '186.0.58.83', 0),
(1336, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 04:59:46', '186.0.58.83', 0),
(1337, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 05:00:33', '186.0.58.83', 0),
(1338, 30, 'Registro de usuario', 'Se registró el usuario Kevin Muñoz con documento 1128904517.', '2025-10-03 05:01:27', '186.0.58.83', 0),
(1339, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-03 05:02:46', '186.0.58.83', 0),
(1340, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 05:03:11', '186.0.58.83', 0),
(1341, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 05:04:20', '186.0.58.83', 0),
(1342, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 05:06:00', '186.81.124.114', 0),
(1343, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 05:06:45', '186.81.124.114', 0),
(1344, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 05:06:48', '186.81.124.114', 0),
(1345, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 05:14:15', '186.81.124.114', 0),
(1346, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 05:14:25', '186.81.124.114', 0),
(1347, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 05:15:47', '186.81.124.114', 0),
(1348, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 05:17:30', '186.0.58.83', 0),
(1349, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-03 05:17:35', '186.0.58.83', 0),
(1350, 30, 'Registro de instructor', 'Se registró el instructor kevin Castro, Documento: 1, Rol: transversal', '2025-10-03 05:20:53', '186.0.58.83', 0),
(1351, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 05:23:42', '186.0.58.83', 0),
(1352, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 12:18:13', '179.1.216.2', 0),
(1353, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 12:48:08', '179.1.216.2', 0),
(1354, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:19:18', '179.1.216.2', 0),
(1355, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:22:10', '179.1.216.2', 0),
(1356, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:26:11', '179.1.216.2', 0),
(1357, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:28:33', '179.1.216.2', 0),
(1358, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:30:03', '179.1.216.2', 0),
(1359, 30, 'Registro de usuario', 'Se registró el usuario Juan Soto con documento 1234567812.', '2025-10-03 13:33:27', '179.1.216.2', 0),
(1360, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:36:29', '179.1.216.2', 0),
(1361, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:36:38', '179.1.216.2', 0),
(1362, 30, 'Registro de usuario', 'Se registró el usuario Kevin M con documento 543243.', '2025-10-03 13:38:35', '179.1.216.2', 0),
(1363, 30, 'Registro de usuario', 'Se registró el usuario Diego Marin con documento 123459.', '2025-10-03 13:39:21', '179.1.216.2', 0),
(1364, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:40:35', '179.1.216.2', 0),
(1365, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:42:01', '179.1.216.2', 0),
(1366, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:43:07', '179.1.216.2', 0),
(1367, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:43:48', '179.1.216.2', 0),
(1368, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:44:53', '179.1.216.2', 0),
(1369, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:46:55', '179.1.216.2', 0),
(1370, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:48:01', '179.1.216.2', 0),
(1371, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:50:21', '179.1.216.2', 0),
(1372, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:51:22', '179.1.216.2', 0),
(1373, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:52:58', '179.1.216.2', 0),
(1374, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:54:05', '179.1.216.2', 0),
(1375, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:56:21', '179.1.216.2', 0),
(1376, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:57:22', '179.1.216.2', 0),
(1377, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 13:58:32', '179.1.216.2', 0),
(1378, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 13:59:38', '179.1.216.2', 0),
(1379, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:00:11', '179.1.216.2', 0),
(1380, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:01:27', '179.1.216.2', 0),
(1381, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:02:20', '179.1.216.2', 0),
(1382, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:05:56', '179.1.216.2', 0),
(1383, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:08:37', '179.1.216.2', 0),
(1384, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:10:12', '179.1.216.2', 0),
(1385, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:15:28', '179.1.216.2', 0),
(1386, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:16:42', '179.1.216.2', 0),
(1387, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:19:42', '179.1.216.2', 0),
(1388, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:21:12', '179.1.216.2', 0),
(1389, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 14:23:25', '179.1.216.2', 0),
(1390, 30, 'Registro de usuario', 'Se registró el usuario eddwin adfes con documento 87654.', '2025-10-03 14:24:31', '179.1.216.2', 0),
(1391, 30, 'Registro de usuario', 'Se registró el usuario soto arme con documento 765234.', '2025-10-03 14:25:12', '179.1.216.2', 0),
(1392, 30, 'Registro de usuario', 'Se registró el usuario oasj ne sotelo con documento 98930.', '2025-10-03 14:26:29', '179.1.216.2', 0),
(1393, 30, 'Registro de usuario', 'Se registró el usuario kajdb inios con documento 5463728.', '2025-10-03 14:27:19', '179.1.216.2', 0),
(1394, 30, 'Registro de usuario', 'Se registró el usuario orden fosb con documento 754893.', '2025-10-03 14:28:19', '179.1.216.2', 0),
(1395, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 14:30:12', '179.1.216.2', 0),
(1396, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 15:39:46', '186.81.124.118', 0),
(1397, 30, 'Registro de usuario', 'Se registró el usuario Edwin Andres Castaño con documento 45244234234.', '2025-10-03 15:40:38', '186.81.124.118', 0),
(1398, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 15:42:11', '186.81.124.118', 0),
(1399, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 15:46:19', '186.81.124.118', 0),
(1400, 30, 'Registro de ficha', 'Ficha 2343235 creada', '2025-10-03 15:47:04', '186.81.124.118', 0),
(1401, 30, 'Registro de usuario', 'Se registró el usuario Esteban castro con documento 1323423423.', '2025-10-03 15:48:26', '186.81.124.118', 0),
(1402, NULL, 'Editó un usuario', 'Usuario editado: Federico Andres Castro (ID: 17)', '2025-10-03 15:48:40', '186.81.124.118', 0),
(1403, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 15:48:43', '186.81.124.118', 0),
(1404, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 17', '2025-10-03 15:48:46', '186.81.124.118', 0),
(1405, 30, 'Registro de usuario', 'Se registró el usuario Walter as con documento 123123.', '2025-10-03 15:49:24', '186.81.124.118', 0),
(1406, 30, 'Registro de usuario', 'Se registró el usuario tres cuatro con documento 23423423.', '2025-10-03 15:49:55', '186.81.124.118', 0),
(1407, 30, 'Registro de usuario', 'Se registró el usuario d s con documento 785675675.', '2025-10-03 15:50:28', '186.81.124.118', 0),
(1408, 30, 'Registro de usuario', 'Se registró el usuario ewrwe qqweq con documento 134242.', '2025-10-03 15:50:55', '186.81.124.118', 0),
(1409, 30, 'Registro de usuario', 'Se registró el usuario j h con documento 3356456.', '2025-10-03 15:51:31', '186.81.124.118', 0),
(1410, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 15:54:11', '186.81.124.118', 0),
(1411, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 15:58:41', '186.81.124.118', 0),
(1412, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 16:00:31', '186.81.124.118', 0),
(1413, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 17:06:35', '186.81.124.118', 0),
(1414, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-03 19:02:21', '186.81.124.114', 0),
(1415, 30, 'Registro de usuario', 'Se registró el usuario ef wvxs con documento 12465334.', '2025-10-03 19:03:02', '186.81.124.114', 0),
(1416, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-03 19:05:55', '186.81.124.114', 0),
(1417, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:08:22', '186.81.124.114', 0),
(1418, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-04 16:11:50', '186.81.124.114', 0),
(1419, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:12:58', '186.81.124.114', 0),
(1420, 30, 'Registro de ficha', 'Ficha 34242 creada', '2025-10-04 16:14:04', '186.81.124.114', 0),
(1421, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-04 16:19:06', '186.81.124.114', 0),
(1422, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:20:10', '186.81.124.114', 0),
(1423, 30, 'Registro de instructor', 'Se registró el instructor Juan Guillermo Crespo, Documento: 235325, Rol: transversal', '2025-10-04 16:21:29', '186.81.124.114', 0),
(1424, 30, 'Registro de ficha', 'Ficha 5673456 creada', '2025-10-04 16:22:33', '186.81.124.114', 0),
(1425, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Juan Guillermo Crespo (ID 44)', '2025-10-04 16:22:54', '186.81.124.114', 0),
(1426, 30, 'Habilitó instructor', 'Habilitó instructor: Juan Guillermo Crespo (ID 44)', '2025-10-04 16:23:00', '186.81.124.114', 0),
(1427, 30, 'Registro de usuario', 'Se registró el usuario lola irmaño con documento 583004.', '2025-10-04 16:24:08', '186.81.124.114', 0),
(1428, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 77', '2025-10-04 16:24:23', '186.81.124.114', 0),
(1429, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 77', '2025-10-04 16:24:30', '186.81.124.114', 0),
(1430, NULL, 'Editó un usuario', 'Usuario editado: lola irmaño (ID: 77)', '2025-10-04 16:24:44', '186.81.124.114', 0),
(1431, NULL, 'Editó un usuario', 'Usuario editado: lola878798 irmaño (ID: 77)', '2025-10-04 16:24:53', '186.81.124.114', 0),
(1432, NULL, 'Editó un usuario', 'Usuario editado: lola878798 irmaño8989 (ID: 77)', '2025-10-04 16:25:06', '186.81.124.114', 0),
(1433, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-04 16:26:54', '186.81.124.114', 0),
(1434, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:28:23', '186.81.124.114', 0),
(1435, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-04 16:29:57', '186.81.124.114', 0),
(1436, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:30:05', '186.81.124.114', 0),
(1437, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-04 16:32:33', '186.81.124.114', 0),
(1438, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-04 16:36:06', '186.81.124.114', 0),
(1439, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-04 16:37:13', '186.81.124.114', 0),
(1440, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 22:36:45', '186.81.124.118', 0),
(1441, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-05 22:37:56', '186.81.124.118', 0),
(1442, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 22:43:10', '186.81.124.118', 0),
(1443, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-05 22:46:04', '186.81.124.118', 0),
(1444, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 22:46:28', '186.81.124.118', 0),
(1445, 30, 'Registro de usuario', 'Se registró el usuario carlos ramirez con documento 123567345.', '2025-10-05 22:49:10', '186.81.124.118', 0),
(1446, 30, 'Registro de usuario', 'Se registró el usuario Sebastian Montoya con documento 1069786089.', '2025-10-05 22:51:02', '186.81.124.118', 0),
(1447, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-05 22:52:12', '186.81.124.118', 0),
(1448, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 22:52:21', '186.81.124.118', 0),
(1449, 30, 'Registro de usuario', 'Se registró el usuario Francisco Rojas con documento 134320845.', '2025-10-05 22:55:37', '186.81.124.118', 0),
(1450, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-05 23:00:29', '186.81.124.118', 0),
(1451, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 23:00:36', '186.81.124.118', 0),
(1452, 30, 'Registro de ficha', 'Ficha 2895432 creada', '2025-10-05 23:03:44', '186.81.124.118', 0),
(1453, 30, 'Registro de instructor', 'Se registró el instructor vrg gotica, Documento: 6756756, Rol: transversal', '2025-10-05 23:06:03', '186.81.124.118', 0),
(1454, 30, 'Habilitó instructor', 'Habilitó instructor: raigosa jorge (ID 45)', '2025-10-05 23:06:31', '186.81.124.118', 0),
(1455, 30, 'Habilitó instructor', 'Habilitó instructor: raigosa jorge (ID 45)', '2025-10-05 23:06:34', '186.81.124.118', 0),
(1456, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Juan Guillermo Crespo Osorio (ID 44)', '2025-10-05 23:06:44', '186.81.124.118', 0),
(1457, 30, 'Habilitó instructor', 'Habilitó instructor: Juan Guillermo Crespo Osorio (ID 44)', '2025-10-05 23:06:49', '186.81.124.118', 0),
(1458, 30, 'Habilitó instructor', 'Habilitó instructor: raigosa jorge (ID 45)', '2025-10-05 23:06:53', '186.81.124.118', 0),
(1459, 30, 'Registro de instructor', 'Se registró el instructor sebas duque, Documento: 1356674564, Rol: transversal', '2025-10-05 23:07:46', '186.81.124.118', 0),
(1460, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: sebas duque (ID 46)', '2025-10-05 23:07:51', '186.81.124.118', 0),
(1461, 30, 'Habilitó instructor', 'Habilitó instructor: sebas duque (ID 46)', '2025-10-05 23:07:54', '186.81.124.118', 0),
(1462, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: sebastian duque (ID 46)', '2025-10-05 23:08:27', '186.81.124.118', 0),
(1463, 30, 'Habilitó instructor', 'Habilitó instructor: sebas duque (ID 46)', '2025-10-05 23:08:40', '186.81.124.118', 0),
(1464, 30, 'Registro de instructor', 'Se registró el instructor Holman Diaz, Documento: 105693745, Rol: tecnico', '2025-10-05 23:10:35', '186.81.124.118', 0),
(1465, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Holmancito Diaz (ID 47)', '2025-10-05 23:10:48', '186.81.124.118', 0),
(1466, 30, 'Habilitó instructor', 'Habilitó instructor: Holman Diaz (ID 47)', '2025-10-05 23:10:56', '186.81.124.118', 0),
(1467, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Holman Diaz (ID 47)', '2025-10-05 23:11:05', '186.81.124.118', 0),
(1468, 30, 'Habilitó instructor', 'Habilitó instructor: Holmancito Diaz (ID 47)', '2025-10-05 23:12:41', '186.81.124.118', 0),
(1469, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-05 23:13:41', '186.81.124.118', 0),
(1470, 35, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 23:14:22', '186.81.124.118', 0),
(1471, 35, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-05 23:15:08', '186.81.124.118', 0),
(1472, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-05 23:15:13', '186.81.124.118', 0),
(1473, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-05 23:17:28', '186.81.124.118', 0),
(1474, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 01:56:38', '186.0.58.83', 0),
(1475, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 01:57:44', '186.0.58.83', 0),
(1476, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 01:58:09', '186.0.58.83', 0),
(1477, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 01:59:12', '186.0.58.83', 0),
(1478, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 01:59:19', '186.0.58.83', 0),
(1479, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 02:01:23', '186.0.58.83', 0),
(1480, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 02:01:27', '186.0.58.83', 0),
(1481, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 02:02:58', '186.0.58.83', 0),
(1482, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 04:01:21', '186.81.124.114', 0),
(1483, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 13:23:39', '186.0.58.83', 0),
(1484, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 83', '2025-10-06 13:25:29', '186.0.58.83', 0),
(1485, 30, 'Habilitó instructor', 'Habilitó instructor: Holman Diaz (ID 47)', '2025-10-06 13:25:38', '186.0.58.83', 0),
(1486, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Holman Diaz (ID 47)', '2025-10-06 13:25:43', '186.0.58.83', 0),
(1487, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 83', '2025-10-06 13:25:48', '186.0.58.83', 0),
(1488, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 83', '2025-10-06 13:25:52', '186.0.58.83', 0),
(1489, 30, 'Habilitó instructor', 'Habilitó instructor: Holman Diaz (ID 47)', '2025-10-06 13:25:58', '186.0.58.83', 0),
(1490, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 83', '2025-10-06 13:26:31', '186.0.58.83', 0),
(1491, 30, 'Habilitó instructor', 'Habilitó instructor: Holman Diaz (ID 47)', '2025-10-06 13:26:38', '186.0.58.83', 0),
(1492, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-06 13:26:48', '186.0.58.83', 0),
(1493, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 15:30:18', '179.1.216.2', 0),
(1494, 30, 'Registro de usuario', 'Se registró el usuario Juan Soto con documento 12345.', '2025-10-06 15:32:52', '179.1.216.2', 0),
(1495, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 15:34:57', '179.1.216.2', 0),
(1496, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 15:36:04', '179.1.216.2', 0),
(1497, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-10-06 15:36:56', '179.1.216.2', 0),
(1498, 30, 'Registro de ficha', 'Ficha 26772 creada', '2025-10-06 15:39:58', '179.1.216.2', 0),
(1499, 30, 'Registro de usuario', 'Se registró el usuario Kevin M con documento 1234568.', '2025-10-06 15:41:39', '179.1.216.2', 0),
(1500, 30, 'Registro de instructor', 'Se registró el instructor pepito alcachofa, Documento: 1234567891, Rol: transversal', '2025-10-06 15:42:53', '179.1.216.2', 0),
(1501, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 86', '2025-10-06 15:43:59', '179.1.216.2', 0),
(1502, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 86', '2025-10-06 15:44:11', '179.1.216.2', 0),
(1503, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 86', '2025-10-06 15:44:42', '179.1.216.2', 0),
(1504, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 86', '2025-10-06 15:45:16', '179.1.216.2', 0),
(1505, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: pepito alcachofa (ID 48)', '2025-10-06 15:45:31', '179.1.216.2', 0),
(1506, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 86', '2025-10-06 15:45:36', '179.1.216.2', 0),
(1507, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 15:46:55', '179.1.216.2', 0),
(1508, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 15:50:11', '179.1.216.2', 0),
(1509, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 15:53:05', '179.1.216.2', 0),
(1510, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-06 15:53:19', '179.1.216.2', 0),
(1511, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-06 15:53:26', '179.1.216.2', 0),
(1512, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-06 15:53:35', '179.1.216.2', 0),
(1513, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 15:54:08', '179.1.216.2', 0),
(1514, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-06 15:54:33', '179.1.216.2', 0),
(1515, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 15:55:39', '179.1.216.2', 0),
(1516, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 15:55:51', '179.1.216.2', 0),
(1517, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-06 15:55:55', '179.1.216.2', 0),
(1518, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:18:22', '179.1.216.2', 0),
(1519, NULL, 'Editó un usuario', 'Usuario editado: Jorge Raigosa (ID: 35)', '2025-10-06 16:19:46', '179.1.216.2', 0),
(1520, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:21:17', '179.1.216.2', 0),
(1521, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:21:27', '179.1.216.2', 0),
(1522, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:22:30', '179.1.216.2', 0),
(1523, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:25:13', '179.1.216.2', 0),
(1524, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosas (ID: 35)', '2025-10-06 16:25:31', '179.1.216.2', 0),
(1525, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:26:47', '179.1.216.2', 0),
(1526, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:27:00', '179.1.216.2', 0),
(1527, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:28:42', '179.1.216.2', 0),
(1528, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:29:33', '179.1.216.2', 0),
(1529, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosas (ID: 35)', '2025-10-06 16:29:51', '179.1.216.2', 0),
(1530, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:31:03', '179.1.216.2', 0),
(1531, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:34:11', '179.1.216.2', 0),
(1532, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosas (ID: 35)', '2025-10-06 16:34:20', '179.1.216.2', 0),
(1533, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:35:27', '179.1.216.2', 0),
(1534, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:37:43', '179.1.216.2', 0),
(1535, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosas (ID: 35)', '2025-10-06 16:37:58', '179.1.216.2', 0),
(1536, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosas (ID: 35)', '2025-10-06 16:39:55', '179.1.216.2', 0),
(1537, NULL, 'Editó un usuario', 'Usuario editado: Jorge Raigosa (ID: 35)', '2025-10-06 16:40:05', '179.1.216.2', 0),
(1538, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:42:22', '179.1.216.2', 0),
(1539, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:43:02', '179.1.216.2', 0),
(1540, 30, 'Registro de usuario', 'Se registró el usuario Esteban Rangel con documento 1059760854.', '2025-10-06 16:44:07', '179.1.216.2', 0),
(1541, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:45:26', '179.1.216.2', 0),
(1542, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:46:27', '179.1.216.2', 0),
(1543, NULL, 'Editó un usuario', 'Usuario editado: Esteban Andres Rangel (ID: 87)', '2025-10-06 16:46:42', '179.1.216.2', 0),
(1544, NULL, 'Editó un usuario', 'Usuario editado: Esteban Rangel (ID: 87)', '2025-10-06 16:47:01', '179.1.216.2', 0),
(1545, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:48:03', '179.1.216.2', 0),
(1546, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:48:50', '179.1.216.2', 0),
(1547, NULL, 'Editó un usuario', 'Usuario editado: Jorges Raigosa (ID: 35)', '2025-10-06 16:49:21', '179.1.216.2', 0),
(1548, NULL, 'Editó un usuario', 'Usuario editado: Jorge Raigosa (ID: 35)', '2025-10-06 16:49:32', '179.1.216.2', 0),
(1549, 30, 'Deshabilitó instructor', 'Deshabilitó instructor: Jorge Raigosa (ID 32)', '2025-10-06 16:50:10', '179.1.216.2', 0),
(1550, NULL, 'Cambio de estado', 'Se cambió el estado del usuario con ID: 35', '2025-10-06 16:50:19', '179.1.216.2', 0),
(1551, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:52:18', '179.1.216.2', 0),
(1552, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:52:29', '179.1.216.2', 0),
(1553, 30, 'Registro de instructor', 'Se registró el instructor Kevin M, Documento: 12345, Rol: transversal', '2025-10-06 16:53:30', '179.1.216.2', 0),
(1554, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 16:56:55', '179.1.216.2', 0),
(1555, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 16:57:56', '179.1.216.2', 0),
(1556, 30, 'Habilitó instructor', 'Habilitó instructor: Jorge Raigosa (ID 32)', '2025-10-06 16:58:18', '179.1.216.2', 0),
(1557, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 17:00:00', '179.1.216.2', 0),
(1558, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-06 17:01:17', '179.1.216.2', 0),
(1559, 30, 'Registro de usuario', 'Se registró el usuario Diego Marin con documento 1234567.', '2025-10-06 17:02:06', '179.1.216.2', 0),
(1560, NULL, 'Editó un usuario', 'Usuario editado: Diego andres Marin (ID: 89)', '2025-10-06 17:02:33', '179.1.216.2', 0),
(1561, 30, 'Registro de ficha', 'Ficha 2895664 creada', '2025-10-06 17:04:34', '179.1.216.2', 0),
(1562, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-06 17:07:38', '179.1.216.2', 0),
(1563, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-27 21:42:40', '179.1.216.2', 0),
(1564, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-27 21:42:40', '179.1.216.1', 0),
(1565, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-27 21:42:49', '179.1.216.1', 0),
(1566, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-27 21:43:02', '179.1.216.1', 0),
(1567, 30, 'Logout', 'Se cerró sesión por iniciar sesión en otro dispositivo.', '2025-10-27 21:43:25', '179.1.216.1', 0),
(1568, 30, 'Logout manual', 'El usuario cerró sesión manualmente.', '2025-10-27 21:43:39', '179.1.216.2', 0),
(1569, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-27 21:43:41', '179.1.216.1', 0),
(1570, 30, 'Registro de ficha', 'Ficha 124567 creada', '2025-10-27 21:44:10', '179.1.216.1', 0),
(1571, 30, 'Registro de ficha', 'Ficha 9876543 creada', '2025-10-27 21:48:27', '179.1.216.1', 0),
(1572, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-27 21:50:55', '179.1.216.1', 0),
(1573, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-27 21:55:30', '179.1.216.1', 0),
(1574, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-28 19:48:08', '179.1.216.3', 0),
(1575, 30, 'Registro de ficha', 'Ficha 2928793 creada', '2025-10-28 19:49:04', '179.1.216.3', 0),
(1576, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-28 19:50:57', '179.1.216.3', 0),
(1577, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-28 19:51:48', '179.1.216.3', 0),
(1578, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-28 19:52:57', '179.1.216.3', 0),
(1579, 30, 'Login', 'El usuario inició sesión correctamente.', '2025-10-28 19:55:37', '179.1.216.3', 0),
(1580, 30, 'Logout', 'Sesión cerrada por inactividad', '2025-10-28 19:58:38', '179.1.216.3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `Id_instructor` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `fecha_inicio_contrato` date DEFAULT NULL,
  `fecha_fin_contrato` date DEFAULT NULL,
  `T_documento` varchar(10) NOT NULL,
  `N_Documento` varchar(20) DEFAULT NULL,
  `N_Telefono` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `Ficha` int(11) DEFAULT NULL,
  `Tipo_instructor` varchar(20) DEFAULT NULL,
  `rol_instructor` enum('clave','transversal','tecnico') DEFAULT 'tecnico',
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructores`
--

INSERT INTO `instructores` (`Id_instructor`, `nombre`, `apellido`, `Email`, `fecha_inicio_contrato`, `fecha_fin_contrato`, `T_documento`, `N_Documento`, `N_Telefono`, `Contraseña`, `Ficha`, `Tipo_instructor`, `rol_instructor`, `Id_usuario`) VALUES
(32, 'Jorge', 'Raigosa', 'kevinx7276@gmail.com', NULL, NULL, 'CC', '123', '310000000', '$2y$10$NSI4HPwscRiWSPsAqEKLBuc/UHIbQku6qHuJ3D/DLp5vcUFyOHrCC', NULL, 'planta', 'tecnico', 35),
(44, 'Juan Guillermo', 'Crespo Osorio', 'crespo@gmail.com', NULL, NULL, 'CC', '235325', '3138673159', '$2y$10$guDp5JFAFfjv8TV0p/Yvw.PnFd8F1ZdRx8T3GMv.7hPV2/U3cAJhS', NULL, 'planta', 'tecnico', 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juicios_evaluativos`
--

CREATE TABLE `juicios_evaluativos` (
  `Id_juicio` int(11) NOT NULL,
  `N_Documento` int(11) NOT NULL,
  `Nombre_aprendiz` varchar(100) DEFAULT NULL,
  `Apellido_aprendiz` varchar(100) DEFAULT NULL,
  `Estado_formacion` varchar(50) DEFAULT NULL,
  `Competencia` text DEFAULT NULL,
  `Resultado_aprendizaje` text DEFAULT NULL,
  `Juicio` varchar(50) DEFAULT NULL,
  `Numero_ficha` varchar(50) NOT NULL,
  `Programa_formacion` varchar(100) DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT current_timestamp(),
  `Funcionario_registro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observaciones_aprendiz`
--

CREATE TABLE `observaciones_aprendiz` (
  `id` int(11) NOT NULL,
  `id_aprendiz` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas_formacion`
--

CREATE TABLE `programas_formacion` (
  `Id_programa` int(11) NOT NULL,
  `nombre_programa` varchar(255) NOT NULL,
  `tipo_programa` enum('tecnico','tecnologo') NOT NULL DEFAULT 'tecnico',
  `estado` enum('activo','inactivo') DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programas_formacion`
--

INSERT INTO `programas_formacion` (`Id_programa`, `nombre_programa`, `tipo_programa`, `estado`) VALUES
(16, 'Tecnologo en analisis y desarrollo de software', 'tecnologo', 'activo'),
(17, 'Programacion en software', 'tecnico', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_aprendizaje`
--

CREATE TABLE `resultado_aprendizaje` (
  `Id_nota` int(11) NOT NULL,
  `Tipo_nota` varchar(30) DEFAULT NULL,
  `Actividad` varchar(20) DEFAULT NULL,
  `Aprendiz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo_es` varchar(255) DEFAULT NULL,
  `titulo_en` varchar(255) DEFAULT NULL,
  `descripcion_es` text DEFAULT NULL,
  `descripcion_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `slider`
--

INSERT INTO `slider` (`id`, `imagen`, `titulo_es`, `titulo_en`, `descripcion_es`, `descripcion_en`) VALUES
(11, '1754915793_fot1.jpeg', 'Hola', 'Hello', 'holaa', 'hola'),
(12, '1754915812_sd.jpg', 'chao', 'bye', 'hello', 'e'),
(13, '1754915829_kai.jpg', 'a', 'sd', 'f', 'd'),
(14, NULL, 'Aprendices', 'Students', 'Aprender', 'Learn'),
(15, '1758477564_sena2.jpg', 'Aprendices', 'Students', 'Aprender', 'Learn'),
(16, '1758477605_sena3.jpg', 'Aprendices', 'Students', 'aprender', 'learn'),
(17, '1758477697_sena1.jpg', 'Aprendices', 'Students', 'Aprender', 'Learn'),
(18, '1759462337_sena3.jpg', 'Aprendices', 'Students', 'Aprender', 'Learnn'),
(19, '1759462358_sena2.jpg', 'Aprendices', 'Students', 'Aprender', 'Learnn'),
(20, '1759594134_sena3.jpg', 'Aprendices', 'Students', 'Aprender', 'Learnn'),
(21, '1759594164_sena1.jpg', 'Aprendices', 'Students', 'Aprender', 'Learnn');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `T_Documento` varchar(10) DEFAULT NULL,
  `N_Documento` varchar(20) DEFAULT NULL,
  `N_Telefono` varchar(20) DEFAULT NULL,
  `Rol` varchar(20) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `token_recuperacion` varchar(255) DEFAULT NULL,
  `token_expiracion` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `nombre`, `apellido`, `Email`, `T_Documento`, `N_Documento`, `N_Telefono`, `Rol`, `Contraseña`, `token_recuperacion`, `token_expiracion`, `session_id`, `last_activity`, `estado`) VALUES
(30, 'Admin', 'Principal', 'admin@correo.com', 'CC', '1234567890', '3126637360', 'administrador', '$2y$10$zXXAzejJAvTAPIBEHtezIe/BrIYSD8OB4z4Pz8tW6vJ9gue8qoMUi', NULL, NULL, 'hhqogbi9rios0q2ijntp7snttq', '2025-10-28 19:58:38', 1),
(35, 'Jorge', 'Raigosa', 'kevinx7276@gmail.com', 'CC', '123', '310000000', 'instructor', '$2y$10$y773lq3paG4pv6LHQd.m7e.fWfsv5v0kuXoIaar2YnW86a7GpVfB.', NULL, NULL, NULL, '2025-10-05 23:14:56', 1),
(76, 'Juan Guillermo', 'Crespo', 'crespo@gmail.com', 'CC', '235325', '3138673159', 'instructor', '$2y$10$guDp5JFAFfjv8TV0p/Yvw.PnFd8F1ZdRx8T3GMv.7hPV2/U3cAJhS', NULL, NULL, NULL, NULL, 1),
(87, 'Esteban', 'Rangel', 'kevinx7274@gmail.com', 'CC', '1059760854', '3126638360', 'Usuario', '$2y$10$I5bwtYaUT2M7x112/fOa0ePk8H1rK92iJchhYMPWHLLG9k5Dy9TeK', NULL, NULL, NULL, NULL, 1),
(89, 'Diego andres', 'Marin', 'prueba2@correo.com', 'CC', '123456789', '123456781', 'Usuario', '$2y$10$ag.xxSG/86kPJfGKOlgpn.4qHcd5rgYYByTAKpMh3k7fV1ECmQd7y', NULL, NULL, NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD PRIMARY KEY (`Id_aprendiz`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `idx_documento` (`N_Documento`);

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`Id_competencia`),
  ADD KEY `Id_ficha` (`Id_ficha`);

--
-- Indices de la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD PRIMARY KEY (`Id_ficha`),
  ADD KEY `Jefe_grupo` (`Jefe_grupo`),
  ADD KEY `idx_numero_ficha` (`numero_ficha`),
  ADD KEY `Id_programa` (`Id_programa`);

--
-- Indices de la tabla `ficha_aprendiz`
--
ALTER TABLE `ficha_aprendiz`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_ficha` (`Id_ficha`),
  ADD KEY `Id_aprendiz` (`Id_aprendiz`);

--
-- Indices de la tabla `historial_usuarios`
--
ALTER TABLE `historial_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historial_usuarios_ibfk_1` (`usuario_id`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`Id_instructor`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `juicios_evaluativos`
--
ALTER TABLE `juicios_evaluativos`
  ADD PRIMARY KEY (`Id_juicio`),
  ADD KEY `fk_juicio_aprendiz` (`N_Documento`),
  ADD KEY `fk_juicio_ficha` (`Numero_ficha`);

--
-- Indices de la tabla `observaciones_aprendiz`
--
ALTER TABLE `observaciones_aprendiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aprendiz` (`id_aprendiz`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `programas_formacion`
--
ALTER TABLE `programas_formacion`
  ADD PRIMARY KEY (`Id_programa`);

--
-- Indices de la tabla `resultado_aprendizaje`
--
ALTER TABLE `resultado_aprendizaje`
  ADD PRIMARY KEY (`Id_nota`),
  ADD KEY `Aprendiz` (`Aprendiz`);

--
-- Indices de la tabla `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aprendices`
--
ALTER TABLE `aprendices`
  MODIFY `Id_aprendiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2195;

--
-- AUTO_INCREMENT de la tabla `competencias`
--
ALTER TABLE `competencias`
  MODIFY `Id_competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fichas`
--
ALTER TABLE `fichas`
  MODIFY `Id_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de la tabla `ficha_aprendiz`
--
ALTER TABLE `ficha_aprendiz`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307287;

--
-- AUTO_INCREMENT de la tabla `historial_usuarios`
--
ALTER TABLE `historial_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1581;

--
-- AUTO_INCREMENT de la tabla `instructores`
--
ALTER TABLE `instructores`
  MODIFY `Id_instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `juicios_evaluativos`
--
ALTER TABLE `juicios_evaluativos`
  MODIFY `Id_juicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184838;

--
-- AUTO_INCREMENT de la tabla `observaciones_aprendiz`
--
ALTER TABLE `observaciones_aprendiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `programas_formacion`
--
ALTER TABLE `programas_formacion`
  MODIFY `Id_programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `resultado_aprendizaje`
--
ALTER TABLE `resultado_aprendizaje`
  MODIFY `Id_nota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprendices`
--
ALTER TABLE `aprendices`
  ADD CONSTRAINT `aprendices_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Filtros para la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD CONSTRAINT `competencias_ibfk_1` FOREIGN KEY (`Id_ficha`) REFERENCES `fichas` (`Id_ficha`);

--
-- Filtros para la tabla `fichas`
--
ALTER TABLE `fichas`
  ADD CONSTRAINT `fichas_ibfk_1` FOREIGN KEY (`Jefe_grupo`) REFERENCES `instructores` (`Id_instructor`),
  ADD CONSTRAINT `fichas_ibfk_2` FOREIGN KEY (`Id_programa`) REFERENCES `programas_formacion` (`Id_programa`);

--
-- Filtros para la tabla `ficha_aprendiz`
--
ALTER TABLE `ficha_aprendiz`
  ADD CONSTRAINT `ficha_aprendiz_ibfk_1` FOREIGN KEY (`Id_ficha`) REFERENCES `fichas` (`Id_ficha`),
  ADD CONSTRAINT `ficha_aprendiz_ibfk_2` FOREIGN KEY (`Id_aprendiz`) REFERENCES `aprendices` (`Id_aprendiz`);

--
-- Filtros para la tabla `historial_usuarios`
--
ALTER TABLE `historial_usuarios`
  ADD CONSTRAINT `historial_usuarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`Id_usuario`) ON DELETE SET NULL;

--
-- Filtros para la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD CONSTRAINT `instructores_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Filtros para la tabla `juicios_evaluativos`
--
ALTER TABLE `juicios_evaluativos`
  ADD CONSTRAINT `fk_juicio_aprendiz` FOREIGN KEY (`N_Documento`) REFERENCES `aprendices` (`N_Documento`),
  ADD CONSTRAINT `fk_juicio_ficha` FOREIGN KEY (`Numero_ficha`) REFERENCES `fichas` (`numero_ficha`);

--
-- Filtros para la tabla `observaciones_aprendiz`
--
ALTER TABLE `observaciones_aprendiz`
  ADD CONSTRAINT `observaciones_aprendiz_ibfk_1` FOREIGN KEY (`id_aprendiz`) REFERENCES `aprendices` (`Id_aprendiz`),
  ADD CONSTRAINT `observaciones_aprendiz_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`Id_usuario`);

--
-- Filtros para la tabla `resultado_aprendizaje`
--
ALTER TABLE `resultado_aprendizaje`
  ADD CONSTRAINT `resultado_aprendizaje_ibfk_1` FOREIGN KEY (`Aprendiz`) REFERENCES `aprendices` (`Id_aprendiz`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
