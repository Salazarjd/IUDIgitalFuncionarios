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

INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono) VALUES ('Cedula', '1036633236', 'Juan Diego', 'Salazar Velasquez', 1, 2, 'Medellin', '3005871539');
INSERT INTO funcionarios(tipo_identificacion, numero_identificacion, nombres, apellidos, estado_civil, sexo, direccion, telefono) VALUES ('Cedula', '1036655412', 'Carolina', 'Rojas Ayala', 2, 1, 'Medellin', '3145789988');

INSERT INTO sexo (nombre) value ('Femenino');
INSERT INTO sexo (nombre) value ('Masculino');


INSERT INTO estado (nombre) value ('Soltero');
INSERT INTO estado (nombre) value ('Casado');
INSERT INTO estado (nombre) value ('Separado');

SELECT funcionarios.id_funcionario, funcionarios.tipo_identificacion, funcionarios.numero_identificacion, funcionarios.nombres, funcionarios.apellidos,
       funcionarios.direccion, funcionarios.telefono, estado.nombre, sexo.nombre FROM funcionarios
        INNER JOIN estado ON funcionarios.estado_civil = estado.id_estado
        INNER JOIN sexo ON funcionarios.sexo = sexo.id_sexo