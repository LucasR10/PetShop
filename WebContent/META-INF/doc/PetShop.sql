SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `PetShop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `PetShop` ;

-- -----------------------------------------------------
-- Table `PetShop`.`cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PetShop`.`cliente` (
  `idcliente` INT NOT NULL ,
  `nome` VARCHAR(20) NOT NULL ,
  `cpf` VARCHAR(12) NOT NULL ,
  `endereço` VARCHAR(45) NOT NULL ,
  `telefone` VARCHAR(11) NOT NULL ,
  `email` VARCHAR(20) NOT NULL ,
  `serviço` VARCHAR(25) NOT NULL ,
  PRIMARY KEY (`idcliente`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PetShop`.`funcionario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PetShop`.`funcionario` (
  `idfuncionario` INT NOT NULL ,
  `nome` VARCHAR(30) NOT NULL ,
  `cpf` VARCHAR(12) NOT NULL ,
  `matricula` INT NOT NULL ,
  `cargo` VARCHAR(20) NOT NULL ,
  `salario` DECIMAL(10) NOT NULL ,
  `comissao` DOUBLE NOT NULL ,
  PRIMARY KEY (`idfuncionario`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PetShop`.`animal`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PetShop`.`animal` (
  `idanimal` INT NOT NULL ,
  `nome` VARCHAR(20) NOT NULL ,
  `raça` VARCHAR(15) NOT NULL ,
  `cor` VARCHAR(10) NOT NULL ,
  `cliente` VARCHAR(20) NOT NULL ,
  `serviço` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idanimal`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PetShop`.`serviço`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PetShop`.`serviço` (
  `idserviço` INT NOT NULL ,
  `nome` VARCHAR(20) NOT NULL ,
  `descrição` VARCHAR(30) NOT NULL ,
  `valor` FLOAT NOT NULL ,
  `orçamento` FLOAT NOT NULL ,
  `cliente` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`idserviço`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PetShop`.`produto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `PetShop`.`produto` (
  `idproduto` INT NOT NULL ,
  `nome` VARCHAR(15) NOT NULL ,
  `descrição` VARCHAR(20) NOT NULL ,
  `valor` FLOAT NOT NULL ,
  `codigo` INT NOT NULL ,
  PRIMARY KEY (`idproduto`) )
ENGINE = InnoDB;

USE `PetShop` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
CREATE SCHEMA IF NOT EXISTS `PetShop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci
