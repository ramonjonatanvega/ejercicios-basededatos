-- Listar los nombres de los usuarios
SELECT nombre FROM `usuarios` 

-- Calcular el saldo máximo de los usuarios de sexo “Mujer”
SELECT MAX(saldo) FROM `Usuarios` WHERE sexo ='M';

-- Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM `Usuarios` WHERE marca IN ('NOKIA', 'BLACKBERRY', 'SONY');

-- Contar los usuarios sin saldo o inactivos
SELECT COUNT(*) FROM `Usuarios` WHERE NOT activo OR saldo <=0;

-- Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario FROM `Usuarios` WHERE nivel > 0;

-- Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM `Usuarios` WHERE saldo <= 300;

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica NEXTEL
SELECT SUM(saldo) FROM `Usuarios` WHERE compania = 'NEXTEL';

-- Contar el número de usuarios por compañía telefónica
SELECT compania, COUNT(*) FROM `Usuarios` GROUP BY compania;

-- Contar el número de usuarios por nivel
SELECT nivel, COUNT(*) FROM `Usuarios` GROUP BY nivel;

-- Listar el login de los usuarios con nivel 2
SELECT usuario FROM `Usuarios` WHERE nivel = 2;

-- Mostrar el email de los usuarios que usan gmail
SELECT email FROM Usuarios WHERE email LIKE '%gmail.com';

-- Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM Usuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('LG', 'SAMSUNG');

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL
SELECT usuario, telefono FROM Usuarios WHERE compania = 'IUSACELL';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL
SELECT usuario, telefono FROM Usuarios WHERE compania <> "TELCEL";

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'NOKIA';

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o AXEL
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'AXEL');

-- Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM Usuarios WHERE email NOT LIKE '%yahoo.com';

-- Listar el login y teléfono de los usuarios con compañía telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM Usuarios WHERE compania NOT IN('TELCEL', 'IUSACELL');

-- Listar el login y teléfono de los usuarios con compañía telefónica UNEFON
SELECT usuario, telefono FROM Usuarios WHERE compania = 'UNEFON';

-- Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;

-- Listar las diferentes compañías en orden alfabético aleatorio
SELECT DISTINCT compania FROM Usuarios ORDER BY RAND();

-- Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM Usuarios WHERE nivel IN(0, 2);

-- Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM Usuarios WHERE marca = 'LG';

-- Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM Usuarios WHERE nivel IN(1, 3);

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
SELECT nombre, telefono FROM Usuarios WHERE marca <> "BLACKBERRY";

-- Listar el login de los usuarios con nivel 3
SELECT usuario FROM Usuarios WHERE nivel = 3;

-- Listar el login de los usuarios con nivel 0
SELECT usuario FROM Usuarios WHERE nivel = 0;

-- Listar el login de los usuarios con nivel 1
SELECT usuario FROM Usuarios WHERE nivel = 1;

-- Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) FROM Usuarios GROUP BY sexo;

-- Listar el login y teléfono de los usuarios con compañía telefónica AT&T
SELECT usuario, telefono FROM Usuarios WHERE compania = "AT&T";

-- Listar las diferentes compañías en orden alfabético descendentemente
SELECT DISTINCT compania FROM Usuarios ORDER BY compania DESC;

-- Listar el login de los usuarios inactivos
SELECT usuario FROM Usuarios WHERE NOT activo;

-- Listar los números de teléfono sin saldo
SELECT telefono FROM Usuarios WHERE saldo <= 0;

-- Calcular el saldo mínimo de los usuarios de sexo “Hombre”
SELECT MIN(saldo) FROM Usuarios WHERE sexo = 'H';

-- Listar los números de teléfono con saldo mayor a 300
SELECT telefono FROM Usuarios WHERE saldo > 300;

-- Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(*) FROM Usuarios GROUP BY marca;

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
SELECT nombre, telefono FROM Usuarios WHERE marca <> "LG";

-- Listar las diferentes compañías en orden alfabético ascendentemente
SELECT DISTINCT compania FROM Usuarios ORDER BY compania ASC;

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica UNEFON
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'UNEFON';

-- Mostrar el email de los usuarios que usan hotmail
SELECT email FROM Usuarios WHERE email LIKE "%hotmail.com";

-- Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre FROM Usuarios WHERE NOT activo OR saldo <= 0;

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o TELCEL
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'TELCEL');

-- Listar las diferentes marcas de celular en orden alfabético ascendentemente
SELECT DISTINCT marca FROM Usuarios ORDER BY marca DESC;

-- Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT DISTINCT marca FROM Usuarios ORDER BY RAND();

-- Listar el login y teléfono de los usuarios con compañía telefónica IUSACELL o UNEFON
SELECT usuario, telefono FROM Usuarios WHERE compania IN('IUSACELL', 'UNEFON');

-- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono FROM Usuarios WHERE marca NOT IN('MOTOROLA', 'NOKIA');

-- Calcular la suma de los saldos de los usuarios de la compañía telefónica TELCELListar el login de los usuarios con nivel 1, 2 o 3
SELECT SUM(saldo) FROM Usuarios WHERE compania = 'TELCEL';






          
          
          
          
          
          
          
           !OJO!  TAREA SCRIPT OPCIONAL






-- MySQL Script generated by MySQL Workbench
-- Thu Nov  3 00:25:07 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema portfolio
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `portfolio` ;

-- -----------------------------------------------------
-- Schema portfolio
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portfolio` DEFAULT CHARACTER SET utf8 ;
USE `portfolio` ;

-- -----------------------------------------------------
-- Table `portfolio`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Persona` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `image` LONGBLOB NOT NULL,
  `sobre mi` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `portfolio`.`Educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Educacion` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre institucion` VARCHAR(45) NOT NULL,
  `inicio` DATE NOT NULL,
  `fin` DATE NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `Persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Persona_id`),
  CONSTRAINT `fk_Educacion_Persona1`
    FOREIGN KEY (`Persona_id`)
    REFERENCES `portfolio`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_Educacion_Persona1_idx` ON `portfolio`.`Educacion` (`Persona_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Experiencia` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre empresa` VARCHAR(45) NOT NULL,
  `puesto` VARCHAR(45) NOT NULL,
  `inicio` DATE NOT NULL,
  `fin` DATE NOT NULL,
  `Persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Persona_id`),
  CONSTRAINT `fk_Experiencia_Persona1`
    FOREIGN KEY (`Persona_id`)
    REFERENCES `portfolio`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_Experiencia_Persona1_idx` ON `portfolio`.`Experiencia` (`Persona_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Proyectos` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre proyecto` VARCHAR(45) NOT NULL,
  `inicio` DATE NOT NULL,
  `fin` DATE NOT NULL,
  `Persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Persona_id`),
  CONSTRAINT `fk_Proyectos_Persona1`
    FOREIGN KEY (`Persona_id`)
    REFERENCES `portfolio`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_Proyectos_Persona1_idx` ON `portfolio`.`Proyectos` (`Persona_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Habilidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Habilidad` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `porcentaje` INT UNSIGNED NOT NULL,
  `Persona_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Persona_id`),
  CONSTRAINT `fk_Habilidad_Persona1`
    FOREIGN KEY (`Persona_id`)
    REFERENCES `portfolio`.`Persona` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE INDEX `fk_Habilidad_Persona1_idx` ON `portfolio`.`Habilidad` (`Persona_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Empresa` (
  `id` INT NOT NULL,
  `logo empresa` LONGBLOB NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio`.`Logo Institucion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Logo Institucion` (
  `id` INT NOT NULL,
  `logo institucion` LONGBLOB NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio`.`Descripcion Institucion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Descripcion Institucion` (
  `id` INT NOT NULL,
  `Descripcion Institucion` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio`.`Proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Proyecto` (
  `id` INT NOT NULL,
  `imagen proyecto` LONGBLOB NULL,
  `tecnologias usadas` VARCHAR(45) NULL,
  `descripcion proyecto` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portfolio`.`Empresa_has_Experiencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Empresa_has_Experiencia` (
  `Empresa_id` INT NOT NULL,
  `Experiencia_id` INT UNSIGNED NOT NULL,
  `Experiencia_Persona_id` INT NOT NULL,
  PRIMARY KEY (`Empresa_id`, `Experiencia_id`, `Experiencia_Persona_id`),
  CONSTRAINT `fk_Empresa_has_Experiencia_Empresa1`
    FOREIGN KEY (`Empresa_id`)
    REFERENCES `portfolio`.`Empresa` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Empresa_has_Experiencia_Experiencia1`
    FOREIGN KEY (`Experiencia_id` , `Experiencia_Persona_id`)
    REFERENCES `portfolio`.`Experiencia` (`id` , `Persona_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Empresa_has_Experiencia_Experiencia1_idx` ON `portfolio`.`Empresa_has_Experiencia` (`Experiencia_id` ASC, `Experiencia_Persona_id` ASC) VISIBLE;

CREATE INDEX `fk_Empresa_has_Experiencia_Empresa1_idx` ON `portfolio`.`Empresa_has_Experiencia` (`Empresa_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Proyecto_has_Proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Proyecto_has_Proyectos` (
  `Proyecto_id` INT NOT NULL,
  `Proyectos_id` INT UNSIGNED NOT NULL,
  `Proyectos_Persona_id` INT NOT NULL,
  PRIMARY KEY (`Proyecto_id`, `Proyectos_id`, `Proyectos_Persona_id`),
  CONSTRAINT `fk_Proyecto_has_Proyectos_Proyecto1`
    FOREIGN KEY (`Proyecto_id`)
    REFERENCES `portfolio`.`Proyecto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Proyecto_has_Proyectos_Proyectos1`
    FOREIGN KEY (`Proyectos_id` , `Proyectos_Persona_id`)
    REFERENCES `portfolio`.`Proyectos` (`id` , `Persona_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Proyecto_has_Proyectos_Proyectos1_idx` ON `portfolio`.`Proyecto_has_Proyectos` (`Proyectos_id` ASC, `Proyectos_Persona_id` ASC) VISIBLE;

CREATE INDEX `fk_Proyecto_has_Proyectos_Proyecto1_idx` ON `portfolio`.`Proyecto_has_Proyectos` (`Proyecto_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Logo Institucion_has_Educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Logo Institucion_has_Educacion` (
  `Logo Institucion_id` INT NOT NULL,
  `Educacion_id` INT UNSIGNED NOT NULL,
  `Educacion_Persona_id` INT NOT NULL,
  PRIMARY KEY (`Logo Institucion_id`, `Educacion_id`, `Educacion_Persona_id`),
  CONSTRAINT `fk_Logo Institucion_has_Educacion_Logo Institucion1`
    FOREIGN KEY (`Logo Institucion_id`)
    REFERENCES `portfolio`.`Logo Institucion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Logo Institucion_has_Educacion_Educacion1`
    FOREIGN KEY (`Educacion_id` , `Educacion_Persona_id`)
    REFERENCES `portfolio`.`Educacion` (`id` , `Persona_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Logo Institucion_has_Educacion_Educacion1_idx` ON `portfolio`.`Logo Institucion_has_Educacion` (`Educacion_id` ASC, `Educacion_Persona_id` ASC) VISIBLE;

CREATE INDEX `fk_Logo Institucion_has_Educacion_Logo Institucion1_idx` ON `portfolio`.`Logo Institucion_has_Educacion` (`Logo Institucion_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `portfolio`.`Descripcion Institucion_has_Educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portfolio`.`Descripcion Institucion_has_Educacion` (
  `Descripcion Institucion_id` INT NOT NULL,
  `Educacion_id` INT UNSIGNED NOT NULL,
  `Educacion_Persona_id` INT NOT NULL,
  PRIMARY KEY (`Descripcion Institucion_id`, `Educacion_id`, `Educacion_Persona_id`),
  CONSTRAINT `fk_Descripcion Institucion_has_Educacion_Descripcion Instituc1`
    FOREIGN KEY (`Descripcion Institucion_id`)
    REFERENCES `portfolio`.`Descripcion Institucion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Descripcion Institucion_has_Educacion_Educacion1`
    FOREIGN KEY (`Educacion_id` , `Educacion_Persona_id`)
    REFERENCES `portfolio`.`Educacion` (`id` , `Persona_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Descripcion Institucion_has_Educacion_Educacion1_idx` ON `portfolio`.`Descripcion Institucion_has_Educacion` (`Educacion_id` ASC, `Educacion_Persona_id` ASC) VISIBLE;

CREATE INDEX `fk_Descripcion Institucion_has_Educacion_Descripcion Instit_idx` ON `portfolio`.`Descripcion Institucion_has_Educacion` (`Descripcion Institucion_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;