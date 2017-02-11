CREATE TABLE `device` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `iddevicetype` bigint(20) DEFAULT NULL,
  `iddevicestatus` bigint(20) DEFAULT NULL,
  `motherboard` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `hardisk` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `flash` varchar(255) DEFAULT NULL,
  `interfaces` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `device`
--

INSERT INTO `device` (`id`, `name`, `brand`, `color`, `description`, `iddevicetype`, `iddevicestatus`, `motherboard`, `ram`, `cpu`, `hardisk`, `os`, `flash`, `interfaces`) VALUES
(2, 'aaa', 'bbb', 'eee', 'aaaa', 3, 1, 'aaa', '23', 'aaaa', 'aaaa', 'aaaa', 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devicestatus`
--

CREATE TABLE `devicestatus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `devicestatus`
--

INSERT INTO `devicestatus` (`id`, `name`) VALUES
(1, 'OK'),
(2, 'Completely broken');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devicetype`
--

CREATE TABLE `devicetype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `devicetype`
--

INSERT INTO `devicetype` (`id`, `name`) VALUES
(1, 'Desktop Computer'),
(2, 'Display'),
(3, 'Switch');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKB06B1E563F5A960F` (`iddevicetype`),
  ADD KEY `FKB06B1E56CF099CBF` (`iddevicestatus`);

--
-- Indices de la tabla `devicestatus`
--
ALTER TABLE `devicestatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `devicetype`
--
ALTER TABLE `devicetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `device`
--
ALTER TABLE `device`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `devicestatus`
--
ALTER TABLE `devicestatus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `devicetype`
--
ALTER TABLE `devicetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `FKB06B1E563F5A960F` FOREIGN KEY (`iddevicetype`) REFERENCES `devicetype` (`id`),
  ADD CONSTRAINT `FKB06B1E56CF099CBF` FOREIGN KEY (`iddevicestatus`) REFERENCES `devicestatus` (`id`);
