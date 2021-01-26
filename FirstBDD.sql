/*  PARTIE 1  */
CREATE DATABASE 'languages' ; /*exo1-Créer une base de données languages.*/
CREATE DATABASE 'webDevelopment' CHARACTER SET utf8_general_ci; /*exo2-Créer une base de données webDevelopment avec l’encodage UTF-8.*/
CREATE DATABASE IF NOT EXISTS 'frameworks' CHARACTER SET utf8_general_ci; /*exo3-Créer une base de données frameworks avec l’encodage UTF-8 si elle n’existe pas.*/ 
CREATE DATABASE IF NOT EXISTS 'languages' CHARACTER SET utf8_general_ci; /*exo4-Créer une base de données languages avec l’encodage UTF-8 si elle n’existe pas.*/ 
DROP DATABASE 'languages'; /*exo5-Supprimer la base de données languages.*/
DROP DATABASE IF EXISTS 'frameworks'; /*exo6-Supprimer la base de données frameworks si elle existe.*/
DROP DATABASE IF EXISTS 'languages' ; /*exo7-Supprimer la base de données languages si elle existe.*/

/* PARTIE 2  */

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

/* PARTIE 3 */

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

/* PARTIE 4 */

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

/* PARTIE 5 */

/*exo1-Dans la table languages, afficher toutes les données de la table.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM 'languages';

/*exo2-Dans la table languages, afficher toutes les versions de PHP.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages` WHERE `languages`= 'PHP';

/*exo3-Dans la table languages, afficher toutes les versions de PHP et de JavaScript.*/
USE 'wevDevelopment';
ALTER TABLE 'languages',
SELECT * FROM `languages` WHERE `languages` <> 'HTML';

/*exo4-Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.*/



/*exo5-Dans la table languages, afficher les deux première entrées de JavaScript.*/


/*exo6-Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.*/


/*exo7-Dans la table languages, afficher toutes les données par ordre alphabétique.*/



