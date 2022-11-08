CREATE TABLE `test`.`funcionarios` (
`id_funcionario` INT NOT NULL AUTO_INCREMENT,
`tipo_identificacion` VARCHAR(45) NOT NULL,
`numero_identificacion` VARCHAR(45) NOT NULL,
`nombres` VARCHAR(45) NOT NULL,
`apellidos` VARCHAR(45) NOT NULL,
`estado_civil` INT NOT NULL,
`sexo` INT NOT NULL,
`direccion` VARCHAR(45) NOT NULL,
`telefono` VARCHAR(45) NOT NULL,
`nacimiento` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_funcionario`),
FOREIGN KEY (`estado_civil`) REFERENCES estado (`id_estado`),
FOREIGN KEY (sexo) REFERENCES sexo (`id_sexo`));

CREATE TABLE `test`.`sexo` (
`id_sexo` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_sexo`));

CREATE TABLE `test`.`estado` (
`id_estado` INT NOT NULL AUTO_INCREMENT,
`nombre` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_estado`));

SELECT * FROM funcionarios;

INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento) VALUES ('Cedula', '1036545874', 'Juan Diego', 'Salazar Velasquez', 1, 2, 'Medellin', '3002045122', '1990');
INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento) VALUES ('Cedula', '1036655412', 'Carolina', 'Rojas Ayala', 2, 1, 'Medellin', '3145789988','1990');

INSERT INTO sexo (nombre) value ('Femenino');
INSERT INTO sexo (nombre) value ('Masculino');


INSERT INTO estado (nombre) value ('Soltero');
INSERT INTO estado (nombre) value ('Casado');
INSERT INTO estado (nombre) value ('Separado');

