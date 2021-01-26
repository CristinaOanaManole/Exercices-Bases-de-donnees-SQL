/*  PARTIE 1 Création et suppression de bases de données */
CREATE DATABASE `languages` ; /*exo1-Créer une base de données languages.*/
CREATE DATABASE 'webDevelopment' CHARACTER SET utf8_general_ci; /*exo2-Créer une base de données webDevelopment avec l’encodage UTF-8.*/
CREATE DATABASE IF NOT EXISTS 'frameworks' CHARACTER SET utf8_general_ci; /*exo3-Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.*/ 
CREATE DATABASE IF NOT EXISTS 'languages' CHARACTER SET utf8_general_ci; /*exo4-Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.*/ 
DROP DATABASE 'languages'; /*exo5-Supprimer la base de données languages.*/
DROP DATABASE IF EXISTS 'frameworks'; /*exo6-Supprimer la base de données frameworks si elle existe.*/
DROP DATABASE IF EXISTS 'languages' ; /*exo7-Supprimer la base de données languages si elle existe.*/

/* PARTIE 2 Création de tables */

 /*exo1- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
id (type INT, auto-incrémenté, clé primaire)
language (type VARCHAR)*/
CREATE DATABASE IF NOT EXISTS 'webDevelopment' CHARACTER SET utf8_general_ci ;
CREATE TABLE 'languages' (
    id INT PRIMARY KEY  AUTO_INCREMENT NOT NULL,
    lanquage VARCHAR(20),
)
ENGINE=INNODB;

/*exo2-Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
tool (type VARCHAR)*/
CREATE TABLE 'tools' (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tool VARCHAR(10)
)
ENGINE=INNODB;

/*exo3-Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/
CREATE TABLE 'framework'(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(5)
)
ENGINE=INNODB;

/* exo4-Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
library (type VARCHAR)*/
CREATE TABLE 'libraires' (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    library VARCHAR(5)
)
ENGINE=INNODB;

/*exo5-Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
ideName (type VARCHAR)*/
CREATE TABLE 'ide' (
 id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ideName VARCHAR(5)
)
ENGINE=INNODB;

/*exo6-Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
id (type INT, auto-incrémenté, clé primaire)
name (type VARCHAR)*/
CREATE TABLE IF NOT EXISTS 'frameworks' (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nom VARCHAR(5)
)
ENGINE=INNODB;

/*exo7-Supprimer la table tools si elle existe.*/
DROP TABLE IF EXISTS 'tools';

/*exo8-Supprimer la table libraries.*/
DROP TABLE 'librairies';

/*exo9-Supprimer la table ide.*/
DROP TABLE 'ide';

/* PARTIE 3 Modification de tables */

/* exo1-Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).*/
USE 'webDevelopment';
ALTER TABLE 'languages'
ADD 'versions' VARCHAR(100);

/*exo2-Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).*/
USE 'webDevelopment';
ALTER TABLE 'frameworks'
ADD 'versions' INT;

/*exo3-Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.*/
USE 'webDevelopment';
ALTER TABLE 'languages'
CHANGE 'versions' 'version' VARCHAR(255);

/*exo4-Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.*/
USE 'webDevelopment';
ALTER TABLE 'frameworks'
CHANGE 'name' 'framework' VARCHAR(255);

/*exo5-Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10.*/
USE 'webDevelopment';
ALTER TABLE 'frameworks'
MODIFY 'version' VARCHAR(12);

/* PARTIE 4 Insertion de données */

/*exo1-Insérez les données suivantes dans la table languages de la base webDevelopment :
JavaScript, version 5
PHP, version 5.2
PHP, version 5.4
HTML, version 5.1
JavaScript, version 6
JavaScript, version 7
JavaScript, version 8
PHP, version 7*/
USE 'wevDevelopment';
ALTER TABLE 'languages'
INSERT INTO 'languages' (language , version)
VALUES 
('JavaScript', 'new 5'),
('JavaScript', 'new 6'),
('JavaScript', 'new 7'),
('JavaScript', 'new 8'),
('PHP', 'new 5.2'),
('PHP', 'new 5.4'),
('PHP', 'new 7'),
('HTML', 'new 5.1');

/*exo2-Insérez les données suivantes dans la table frameworks de la base webDevelopment :
Symfony, version 2.8
Symfony, version 3
Jquery, version 1.6
Jquery, version 2.10*/
USE 'wevDevelopment';
ALTER TABLE 'frameworks'
INSERT INTO 'frameworks' (language , version)
VALUES 
('Symphony', 'new 2.8'),
('Symphony', 'new 3'),
('Jquery', 'new 1.6'),
('Jquery', 'new 2.10');

/* PARTIE 5 Sélection de données */

/*exo1-Dans la table languages, afficher toutes les données de la table.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM 'languages';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+

/*exo2-Dans la table languages, afficher toutes les versions de PHP.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages` WHERE `languages`= 'PHP';
+----+-----------+-------------+
| id | language  | version     |
+----+-----------+-------------+
|  2 | PHP       | version 5.2 |
|  3 | PHP       | version 5.4 |
|  8 | PHP       | version 7   |
+----+-----------+-------------+

/*exo3-Dans la table languages, afficher toutes les versions de PHP et de JavaScript.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages`
WHERE `language` <> 'HTML';
WHERE `language` = 'PHP' OR  `language` = 'JavaScript';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+

/*exo4-Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT *
FROM `languages`
WHERE `id`IN (3, 5, 7);
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+


/*exo5-Dans la table languages, afficher les deux première entrées de JavaScript.*/
SELECT * FROM `languages`
WHERE `language` = 'JavaScript'
LIMIT 2;
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  7 | JavaScript | version 8 |
+----+------------+-----------+

/*exo6-Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.*/
SELECT * FROM `languages`
WHERE `language` <> 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+

/*exo7-Dans la table languages, afficher toutes les données par ordre alphabétique.*/
SELECT * FROM `languages`
ORDER BY `language`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+


/* Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE 
Avant de commencer les exercices, exécutez le script fourni.*/
-- Création de la base
CREATE DATABASE IF NOT EXISTS `development`;
-- On se positione dans la base nouvellement créé
USE `development`;
-- Création de la table languages
CREATE TABLE IF NOT EXISTS `languages` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Création de la table frameworks qui contient une clé étrangère
CREATE TABLE IF NOT EXISTS `frameworks` (
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`languagesId` INT NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=INNODB;
-- Insertion des données dans la table languages
INSERT INTO `languages` (`name`) VALUES ('Assembleur');
INSERT INTO `languages` (`name`) VALUES ('C');
INSERT INTO `languages` (`name`) VALUES ('C++');
INSERT INTO `languages` (`name`) VALUES ('Java');
INSERT INTO `languages` (`name`) VALUES ('HTML');
INSERT INTO `languages` (`name`) VALUES ('CSS');
INSERT INTO `languages` (`name`) VALUES ('JavaScript');
INSERT INTO `languages` (`name`) VALUES ('PHP');
INSERT INTO `languages` (`name`) VALUES ('C#');
INSERT INTO `languages` (`name`) VALUES ('VB');
INSERT INTO `languages` (`name`) VALUES ('Python');
INSERT INTO `languages` (`name`) VALUES ('Ruby');
INSERT INTO `languages` (`name`) VALUES ('Swift');
-- Insertion des données dans la table frameworks
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Qt',3);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('SDK Android',4);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Bootstrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Foundation',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('KNACSS',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Avalanche',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Miligram',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Skeleton',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Hoisin',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Inuit',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Mimic',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ministrap',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lotus',6);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Jquery',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Angular',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('ReactJS',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Vue.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ember.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Meteor.js',7);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Laravel',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Symfony',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('CodeIgniter',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Yii',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Phalcon',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Lumen',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Silex',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Slim',8);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',9);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('.NET',10);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Django',11);
INSERT INTO `frameworks` (`name`,`languagesId`) VALUES ('Ruby On Rails',12);

/*exo1-Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).*/



/*exo2-Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.*/


/*exo3-Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.*/


/* PARTIE 7 - Suppression et modification de données */

/*exo1-Dans la table languages, supprimer toutes les lignes parlant de HTML.*/


/*exo2-Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.*/


/*exo3-Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.*/


/*  PARTIE 8 -  Les jointures 
Avant de commencer les exercices, exécutez le script fourni.*/

CREATE TABLE `webDevelopment`.`ide` (
`id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`version` VARCHAR(10) NOT NULL,
`date` DATE NOT NULL,
PRIMARY KEY (`id`)
)
ENGINE=INNODB;

INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.3', '2007-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.5', '2009-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.6', '2010-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.7', '2011-06-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '4.3', '2013-06-13');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '7', '2011-04-01');
INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '8.2', '2016-10-03');

/*exo1-Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.*/

/*exo2-Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.*/

/*exo3-Afficher le nombre de framework qu'a un langage.*/

/*exo4-Afficher les langages ayant plus de 3 frameworks.*/