-- MySQL Script generated by MySQL Workbench
-- 09/12/18 20:44:52
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BBDDsistema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BBDDsistema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BBDDsistema` DEFAULT CHARACTER SET utf8 COLLATE utf8_estonian_ci ;
USE `BBDDsistema` ;

-- -----------------------------------------------------
-- Table `BBDDsistema`.`Persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Persona` (
  `IdPersona` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) CHARACTER SET 'utf8' COLLATE 'utf8_general_ci' NOT NULL,
  PRIMARY KEY (`IdPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Roll`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Roll` (
  `IdRoll` INT NOT NULL AUTO_INCREMENT,
  `Tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdRoll`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Usuario` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `IdPersona` INT NOT NULL,
  `user_name` VARCHAR(45) NOT NULL,
  `user_password_hash` VARCHAR(255) NOT NULL,
  `IdRoll` INT NOT NULL,
  PRIMARY KEY (`user_id`),
  INDEX `IdPersona_idx` (`IdPersona` ASC),
  INDEX `IdRoll_idx` (`IdRoll` ASC),
  CONSTRAINT `IdPersona`
    FOREIGN KEY (`IdPersona`)
    REFERENCES `BBDDsistema`.`Persona` (`IdPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdRoll`
    FOREIGN KEY (`IdRoll`)
    REFERENCES `BBDDsistema`.`Roll` (`IdRoll`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `IdPersona` INT NOT NULL,
  `Ci` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `IdPersona_idx` (`IdPersona` ASC),
  CONSTRAINT `IdPersona`
    FOREIGN KEY (`IdPersona`)
    REFERENCES `BBDDsistema`.`Persona` (`IdPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Funcionario` (
  `IdFuncionario` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `Cargo` VARCHAR(45) NOT NULL,
  `Nro_Funcionario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdFuncionario`),
  INDEX `IsUsuario_idx` (`user_id` ASC),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `BBDDsistema`.`Usuario` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Tag` (
  `IdTag` INT NOT NULL AUTO_INCREMENT,
  `IdCliente` INT NOT NULL,
  `Cod_Tag` VARCHAR(45) NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdTag`),
  INDEX `IdCliente_idx` (`IdCliente` ASC),
  CONSTRAINT `IdCliente`
    FOREIGN KEY (`IdCliente`)
    REFERENCES `BBDDsistema`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`transaccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`transaccion` (
  `IdTransaccion` INT NOT NULL AUTO_INCREMENT,
  `IdTag` INT NOT NULL,
  `Cantidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdTransaccion`),
  INDEX `IdTag_idx` (`IdTag` ASC),
  CONSTRAINT `IdTag`
    FOREIGN KEY (`IdTag`)
    REFERENCES `BBDDsistema`.`Tag` (`IdTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Categoria` (
  `IdCategoria` INT NOT NULL AUTO_INCREMENT,
  `Nro_cat` VARCHAR(45) NOT NULL,
  `Cantidad_eje` INT NOT NULL,
  `Costos` DOUBLE NOT NULL,
  PRIMARY KEY (`IdCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Vehiculo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Vehiculo` (
  `IdVehiculo` INT NOT NULL AUTO_INCREMENT,
  `IdTag` INT NOT NULL,
  `Marca` VARCHAR(45) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `Matricula` VARCHAR(45) NOT NULL,
  `IdCategoria` INT NOT NULL,
  PRIMARY KEY (`IdVehiculo`),
  INDEX `IdTag_idx` (`IdTag` ASC),
  INDEX `IdCategoria_idx` (`IdCategoria` ASC),
  CONSTRAINT `IdTag`
    FOREIGN KEY (`IdTag`)
    REFERENCES `BBDDsistema`.`Tag` (`IdTag`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdCategoria`
    FOREIGN KEY (`IdCategoria`)
    REFERENCES `BBDDsistema`.`Categoria` (`IdCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Barrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Barrera` (
  `IdBarrera` INT NOT NULL AUTO_INCREMENT,
  `IdFuncionario` INT NOT NULL,
  `Nro_Barrera` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdBarrera`),
  INDEX `IdFuncionario_idx` (`IdFuncionario` ASC),
  CONSTRAINT `IdFuncionario`
    FOREIGN KEY (`IdFuncionario`)
    REFERENCES `BBDDsistema`.`Funcionario` (`IdFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BBDDsistema`.`Distrito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BBDDsistema`.`Distrito` (
  `IdDistrito` INT NOT NULL AUTO_INCREMENT,
  `IdBarrera` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdDistrito`),
  INDEX `IdBarrera_idx` (`IdBarrera` ASC),
  CONSTRAINT `IdBarrera`
    FOREIGN KEY (`IdBarrera`)
    REFERENCES `BBDDsistema`.`Barrera` (`IdBarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;