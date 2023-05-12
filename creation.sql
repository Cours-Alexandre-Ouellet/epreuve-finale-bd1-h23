DROP DATABASE IF EXISTS banque;
CREATE DATABASE banque;
USE banque;

CREATE TABLE Client(
	id_client INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL,
    numero_client NUMERIC(12) NOT NULL
);

CREATE TABLE Compte(
	id_compte INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(30),
    numero_compte CHAR(14),
    solde NUMERIC(10, 2),
    type_compte ENUM('Epargne', 'Cheque', 'Placement')
);

CREATE TABLE Compte_client(
	id_compte INTEGER,
    id_client INTEGER,
    PRIMARY KEY (id_compte, id_client),
    FOREIGN KEY (id_compte) REFERENCES Compte (id_compte),
    FOREIGN KEY (id_client) REFERENCES Client (id_client)
);

-- Ajoutez les tables manquantes ici


/*
 * Commentaires pour les contraintes impossibles à ajouter.
 *
 * Contrainte 0 : Ma raison pour ne pas l'ajouter.
 *
 *
 *
 *
 */

-- Données de test
INSERT INTO Client (nom, prenom, date_naissance, numero_client) VALUES
	('Mendoza','Hedley','1986-02-17',223365084803),
	('Langley','Ginger','1989-03-13',869815842540),
	('Chaney','Nicholas','1986-07-14',628042351398),
	('Farmer','Demetrius','1970-11-05',260000138522),
	('Ford','Nelle','1968-05-21',957298940967);
        
INSERT INTO Compte (nom, numero_compte, solde, type_compte) VALUES
	('Compte','XEQ88LOL3LE5J',55274.25,'Epargne'),
	('1','ROO24EKP7FC4P',99087.34,'Epargne'),
	('Mes chèques','YGV73TSZ3OV4I',64545.78,'Epargne'),
	('Compte principal','FZX63CJY2UU9V',81178.21,'Epargne'),
	('A','TCJ87TSS4EK7I',484.32,'Epargne'),
	('Mes chèques','WYK32QUB4FJ1L',42054.75,'Placement'),
	('Compte 1 ','DRG86DRO0DX3C',25695.68,'Placement'),
	('A','YKK12MOO1FT1D',20132.20,'Epargne'),
	('Épargne claude','WHE85GJF1OC3M',68884.00,'Placement'),
	('Compte 1 ','XPB41PTC3DD4W',87424.48,'Epargne');
  
INSERT INTO Compte_client(id_compte, id_client) VALUES
	(2,2),
	(1,4),
	(8,5),
	(6,3),
	(5,5),
	(7,4),
	(4,1),
	(7,2),
	(6,4),
	(9,1),
	(3,5),
	(9,5),
	(4,4),
	(2,4),
	(8,2);
 
INSERT INTO Operation (compte, montant, date_operation) VALUES
  (9,-475.00,'2022-07-06'),
  (6,-1969.28,'2022-04-16'),
  (6,-745.67,'2022-11-23'),
  (9,-1027.12,'2022-02-03'),
  (10,1279.17,'2022-08-09'),
  (4,1626.65,'2022-03-18'),
  (6,-1695.78,'2022-10-03'),
  (4,473.77,'2022-12-08'),
  (2,-1164.02,'2022-11-24'),
  (6,891.36,'2022-11-30'),
  (9,-613.94,'2022-03-12'),
  (3,-1486.47,'2022-10-08'),
  (3,-1165.49,'2022-12-15'),
  (2,1279.69,'2022-05-21'),
  (6,1825.34,'2022-02-05'),
  (9,979.17,'2022-04-07'),
  (4,1669.33,'2022-12-02'),
  (7,-1322.98,'2022-07-20'),
  (1,-859.34,'2022-03-08'),
  (2,-546.21,'2022-03-02');  
    
INSERT INTO Modele_operation(compte_emetteur, compte_receveur, montant, premiere_date, repetition) VALUES
	(5,8,100.00,'2022-05-15',10),
	(3,6,279.77,'2022-03-04',14),
	(7,3,832.97,'2022-04-23',28),
	(2,8,704.32,'2022-08-23',7),
	(2,1,811.47,'2022-09-03',21);