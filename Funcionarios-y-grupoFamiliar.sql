CREATE TABLE `iud`.`identificaciones` (
`id_identificacion` INT NOT NULL AUTO_INCREMENT,
`nombre_identificacion` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_identificacion`));

CREATE TABLE `iud`.`sexo` (
`id_sexo` INT NOT NULL AUTO_INCREMENT,
`nombre_sexo` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_sexo`));

CREATE TABLE `iud`.`estado` (
`id_estado` INT NOT NULL AUTO_INCREMENT,
`nombre_estado` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_estado`));

CREATE TABLE `iud`.`rol` (
`id_rol` INT NOT NULL AUTO_INCREMENT,
`nombre_rol` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_rol`));

CREATE TABLE `iud`.`funcionarios` (
`id_funcionario` INT NOT NULL AUTO_INCREMENT,
`tipo_identificacion` INT NOT NULL,
`numero_identificacion` VARCHAR(45) NOT NULL,
`nombres` VARCHAR(45) NOT NULL,
`apellidos` VARCHAR(45) NOT NULL,
`estado_civil` INT NOT NULL,
`sexo` INT NOT NULL,
`direccion` VARCHAR(45) NOT NULL,
`telefono` VARCHAR(45) NOT NULL,
`nacimiento` DATE NOT NULL,
PRIMARY KEY (`id_funcionario`),
FOREIGN KEY (`tipo_identificacion`) REFERENCES identificaciones (`id_identificacion`),
FOREIGN KEY (`estado_civil`) REFERENCES estado (`id_estado`),
FOREIGN KEY (sexo) REFERENCES sexo (`id_sexo`));

CREATE TABLE `iud`.`familiares` (
`id_familiar` INT NOT NULL AUTO_INCREMENT,
`nombre_familiar` VARCHAR(45) NOT NULL,
`apellido_familiar` VARCHAR(45) NOT NULL,
`rol_familiar` INT NOT NULL,
`funcionario` INT NOT NULL,
PRIMARY KEY (`id_familiar`),
FOREIGN KEY (`rol_familiar`) REFERENCES rol (`id_rol`),
FOREIGN KEY (`funcionario`) REFERENCES funcionarios (`id_funcionario`));

INSERT INTO rol (nombre_rol) VALUE ('Madre');
INSERT INTO rol (nombre_rol) VALUE ('Padre');
INSERT INTO rol (nombre_rol) VALUE ('Hija');
INSERT INTO rol (nombre_rol) VALUE ('Hijo');
INSERT INTO rol (nombre_rol) VALUE ('Hermano');
INSERT INTO rol (nombre_rol) VALUE ('Hermana');
INSERT INTO rol (nombre_rol) VALUE ('Abuela');
INSERT INTO rol (nombre_rol) VALUE ('Abuelo');

SELECT * FROM rol;

INSERT INTO estado (nombre_estado) value ('Soltero');
INSERT INTO estado (nombre_estado) value ('Casado');
INSERT INTO estado (nombre_estado) value ('Separado');

SELECT * FROM estado;

INSERT INTO sexo (nombre_sexo) value ('Femenino');
INSERT INTO sexo (nombre_sexo) value ('Masculino');

INSERT INTO identificaciones (nombre_identificacion) value ('Cedula');
INSERT INTO identificaciones (nombre_identificacion) value ('Pasaporte');

SELECT * FROM identificaciones;

INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento)
VALUES (1, '1036545874', 'Juan Diego', 'Salazar Velasquez', 1, 2, 'Medellin', '3002045122', '1990-11-23');
INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento)
VALUES (1, '1035877544', 'Daniela', 'Carmona Ruiz', 2, 1, 'Bogota', '3001452233', '1980-11-01');
INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento)
VALUES (2, '9856321', 'Gabriel', 'Carmargo Mesa', 3, 2, 'Barranquilla', '3216549899', '1950-01-23');
INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono, nacimiento)
VALUES (2, '32569874', 'Ligia', 'Sanchez Velez', 2, 1, 'Cali', '3102584466', '1960-07-12');

SELECT * FROM funcionarios;

INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Ana Maria', 'Salazar Fernandez', 3,1);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Yolanda', 'Velasquez', 1,1);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Rafael', 'Carmona', 2,2);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Camilo', 'Carmona', 4,2);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Daniel', 'Mesa', 5,3);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Julian', 'Sanchez', 2,4);
INSERT INTO familiares(nombre_familiar, apellido_familiar, rol_familiar, funcionario) VALUES ('Juana', 'Velez', 1,4);

SELECT * FROM familiares;


