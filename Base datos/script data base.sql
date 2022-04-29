-- MySQL Script generated by MySQL Workbench
-- vie 25 mar 2022 22:59:34
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Soderia
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Soderia` ;

-- -----------------------------------------------------
-- Schema Soderia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Soderia` ;
USE `Soderia` ;

-- -----------------------------------------------------
-- Table `Soderia`.`Persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`Persona` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`Persona` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `dni` VARCHAR(10) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `cel` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Soderia`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPersona` INT NOT NULL,
  `barrio` INT NULL DEFAULT NULL,
  `cuil` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Cliente_1_idx` (`idPersona` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente`
    FOREIGN KEY (`idPersona`)
    REFERENCES `Soderia`.`Persona` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Soderia`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`Producto` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`Producto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `precio` FLOAT NOT NULL,
  `stock` INT NOT NULL,
  `puntaje` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Soderia`.`Usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`Usuario` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idPersona` INT NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Usuario_idx` (`idPersona` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario`
    FOREIGN KEY (`idPersona`)
    REFERENCES `Soderia`.`Persona` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `Soderia`.`Pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`Pedido` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`Pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Cliente_id` INT NOT NULL,
  `Usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Pedido_Cliente1_idx` (`Cliente_id` ASC) VISIBLE,
  INDEX `fk_Pedido_Usuario1_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `Soderia`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_Usuario1`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `Soderia`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Soderia`.`PedidoProducto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Soderia`.`PedidoProducto` ;

CREATE TABLE IF NOT EXISTS `Soderia`.`PedidoProducto` (
  `Producto_id` INT NOT NULL,
  `Pedido_id` INT NOT NULL,
  PRIMARY KEY (`Producto_id`, `Pedido_id`),
  INDEX `fk_Producto_has_Pedido_Pedido1_idx` (`Pedido_id` ASC) VISIBLE,
  INDEX `fk_Producto_has_Pedido_Producto1_idx` (`Producto_id` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_has_Pedido_Producto1`
    FOREIGN KEY (`Producto_id`)
    REFERENCES `Soderia`.`Producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Pedido_Pedido1`
    FOREIGN KEY (`Pedido_id`)
    REFERENCES `Soderia`.`Pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;