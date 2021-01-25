 /*exo1- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
id (type INT, auto-incrémenté, clé primaire)
language (type VARCHAR)*/
CREATE DATABASE IF NOT EXISTS 'webDevelopment' CHARACTER SET utf8_general_ci ;
CREATE TABLE 'languages' (
    id INT AUTO_INCREMENT NOT NULL,
    lanquage VARCHAR(20),
    PRIMARY KEY (id)
);

/*exo2-Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
tool (type VARCHAR)*/
CREATE TABLE 'tools' (
    id INT AUTO_INCREMENT NOT NULL,
    tool VARCHAR(10)
    PRIMARY KEY (id)
);

/*exo3-Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/
CREATE TABLE 'framework'(
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(5)
    PRIMARY KEY (id)
);

/* exo4-Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
library (type VARCHAR)*/
CREATE TABLE 'libraires' (
    id INT AUTO_INCREMENT NOT NULL,
    library VARCHAR(5)
    PRIMARY KEY (id)
);

/*exo5-Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
ideName (type VARCHAR)*/
CREATE TABLE 'ide' (
 id INT AUTO_INCREMENT NOT NULL,
    ideName VARCHAR(5)
    PRIMARY KEY (id)
);

/*exo6-Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/
CREATE TABLE IF NOT EXISTS 'frameworks' (
    id INT AUTO_INCREMENT NOT NULL,
    nom VARCHAR(5)
    PRIMARY KEY (id)
);

/*exo7-Supprimer la table tools si elle existe.*/
DROP TABLE IF EXISTS 'tools';

/*exo8-Supprimer la table libraries.*/
DROP TABLE 'librairies';

/*exo9-Supprimer la table ide.*/
DROP TABLE 'ide';