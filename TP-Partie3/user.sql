/* Dans la base codex, dans la table clients :
supprimer la colonne secondPhoneNumber
renommer la colonne firstPhoneNumber en phoneNumber
changer le type de la colonne phoneNumber en VARCHAR
ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)*/

CREATE DATABASE 'codex' CHARACTER SET utf8_general_ci;
CREATE TABLE 'clients' (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lastname VARCHAR(100),
    firstname VARCHAR(100),
    birthDate DATE,
    adresse VARCHAR(100),
    firstPhoneNumber INT,
    secondPhoneNumber INT,
    mail VARCHAR (100)
)
ENGINE=INNODB;
ALTER TABLE 'clients' (
    DROP 'secondPhoneNumber',
CHANGE 'firstPhoneNumber' 'phoneNumber' INT,
MODIFY 'phoneNumber' VARCHAR(12),
ADD 'zipCode' VARCHAR(10),
ADD 'city' VARCHAR(10)
)
ENGINE=INNODB;