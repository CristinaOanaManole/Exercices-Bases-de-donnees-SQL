/* Dans la base codex, dans la table clients :
supprimer la colonne secondPhoneNumber
renommer la colonne firstPhoneNumber en phoneNumber
changer le type de la colonne phoneNumber en VARCHAR
ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR) */

CREATE DATABASE `codex`;
USE `codex`;
CREATE TABLE IF NOT EXISTS `clients`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `lastname`VARCHAR(40),
    `firstname`VARCHAR(40),
    `birthDate` DATE, -- DATE permet de spécifier que la colonne est de type date.
    `address`VARCHAR(100),
    `firstPhoneNumber`INT,
    `secondPhoneNumber`INT,
    `mail`VARCHAR(20),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;