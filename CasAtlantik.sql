CREATE DATABASE IF NOT EXISTS casAtlantik;

CREATE TABLE IF NOT EXISTS `Tarifs`(`idTarifs` INTEGER,`libelleTarifs` VARCHAR(25),`tarifsLiaison` INTEGER,primary key(`idTarifs`));

CREATE TABLE IF NOT EXISTS `Categorie`(`idCategorie` INTEGER,`libelleCategorie` VARCHAR(25),primary key(`idCategorie`));

CREATE TABLE IF NOT EXISTS `typeTarif`(`idTypeTarif` INTEGER,`libelletypeTarif` VARCHAR(25),`idCategorie` INTEGER NOT NULL, foreign key (`idCategorie`) references Categorie(`idCategorie`),primary key(`idTypeTarif`));

CREATE TABLE IF NOT EXISTS `Periode`(`idPeriode` INTEGER,`libellePeriode` VARCHAR(25),primary key(`idPeriode`));

CREATE TABLE IF NOT EXISTS `Secteur`(`idSecteur` INTEGER,`libelleSecteur` VARCHAR(25),primary key(`idSecteur`));

CREATE TABLE IF NOT EXISTS `Port`(`idPort` INTEGER,`libellePort` VARCHAR(25),primary key(`idPort`));

CREATE TABLE IF NOT EXISTS `Bateau`(`idBateau` INTEGER, `libelleBateau` VARCHAR(25), `longueur` FLOAT(5), `largeur` FLOAT(5), `vitesse` INTEGER(11), `type` char(1), primary key(`idBateau`));

CREATE TABLE IF NOT EXISTS `placeParCateg`(`idBateau` INTEGER NOT NULL,`idCategorie` INTEGER NOT NULL, foreign key (`idBateau`) references Bateau(`idBateau`), foreign key (`idCategorie`) references Categorie(`idCategorie`),primary key(`idBateau`,`idCategorie`));

CREATE TABLE IF NOT EXISTS `Liaison`(`idLiaison` INTEGER,`distanceLiaison` FLOAT,portDepart INTEGER NOT NULL,portArrivee INTEGER NOT NULL,`idSecteur` INTEGER NOT NULL, foreign key (portDepart) references Port(`idPort`), foreign key (portArrivee) references Port(`idPort`), foreign key (`idSecteur`) references Secteur(`idSecteur`),primary key(`idLiaison`));

CREATE TABLE IF NOT EXISTS `Traversees`(`idTraversees` INTEGER,`dateDepart` DATE,`heureDepart` DATETIME,`idLiaison` INTEGER NOT NULL,`idBateau` INTEGER NOT NULL, foreign key (`idLiaison`) references Liaison(`idLiaison`), foreign key (`idBateau`) references Bateau(`idBateau`),primary key(`idTraversees`));

CREATE TABLE IF NOT EXISTS `tarif`(`prix` INTEGER,`idPeriode` INTEGER NOT NULL,`idTypeTarif` INTEGER NOT NULL,`idLiaison` INTEGER NOT NULL, foreign key (`idPeriode`) references Periode(`idPeriode`), foreign key (`idTypeTarif`) references typeTarif(`idTypeTarif`), foreign key (`idLiaison`) references Liaison(`idLiaison`),primary key(`idPeriode`,`idTypeTarif`,`idLiaison`));

CREATE TABLE IF NOT EXISTS `ReservationEnLigne`(`idReservationEnLigne` INTEGER,`libelleRéservationEnLigne` VARCHAR(25),`nomReservation` VARCHAR(25),`adresseReservation` VARCHAR(75),`idTraversees` INTEGER NOT NULL,`idTarifs` INTEGER NOT NULL, foreign key (`idTraversees`) references Traversees(`idTraversees`), foreign key (`idTarifs`) references Tarifs(`idTarifs`),primary key(`idReservationEnLigne`));

CREATE TABLE IF NOT EXISTS `detailReserv`(`qteReserve` INTEGER,`idReservationEnLigne` INTEGER NOT NULL,`idTypeTarif` INTEGER NOT NULL, foreign key (`idReservationEnLigne`) references ReservationEnLigne(`idReservationEnLigne`), foreign key (`idTypeTarif`) references typeTarif(`idTypeTarif`),primary key(`idReservationEnLigne`,`idTypeTarif`));

CREATE TABLE IF NOT EXISTS `Equipement`(`idEquip` INTEGER, `libEquip` VARCHAR(50), primary key(`idEquip`));

CREATE TABLE IF NOT EXISTS `Equiper`(`idBateau` INTEGER,`idEquip` INTEGER, foreign key (idBateau) references Bateau(idBateau), foreign key (idEquip) references Equipement(idEquip), primary key(idBateau), primary key(idEquip));




--SCRIPT JEU D'ESSAI

DELETE FROM Tarifs;
DELETE FROM Categorie;
DELETE FROM typeTarif;
DELETE FROM Periode;
DELETE FROM Secteur;
DELETE FROM Port;
DELETE FROM Bateau;
DELETE FROM placeParCateg;
DELETE FROM Liaison;
DELETE FROM Traversees;
DELETE FROM tarif;
DELETE FROM ReservationEnLigne;
DELETE FROM detailReserv;
DELETE FROM Equipement;


INSERT INTO Tarifs VALUES (0,'Adulte',0),(1,'Junior 8 à 18ans',0),(2,'Enfant 0 à 7ans',0),(3,'Voiture long.inf.4m',1),(4,'Voiture long.inf.5m',1),(5,'Fourgon',2),(6,'Camping Car',2),(7,'Camion',2);
INSERT INTO Categorie VALUES (0, "A Passager"),(1, "Véh.inf.2m"),(2, "Véh.sup.2m");
INSERT INTO typeTarif VALUES (0, "Adulte", 0),(1, "Junior 8 à 18 ans", 0),(2, "Enfant 0 à 7 ans", 0),(3, "Voiture long.inf.4m", 0),(4, "Voiture long.inf.5m", 0),(5, "Fourgon", 0),(6, "Camping Car", 0),(7, "Camion", 0);
INSERT INTO Periode VALUES (0, "2010/09/01"),(1, "2011/06/15"),(2, "2011/06/16"),(3, "2011/09/15"),(4, "2011/09/16"),(5, "2012/05/31");
INSERT INTO Secteur VALUES (0,'Belle-Île-en-mer'),(1,'Houat'),(2,'Ile de Groix'),(3,'Ouessant'),(4,'Molène'),(5,'Sein'),(6,'Bréhat'),(7,'Batz'),(8,'Aix'),(9,'Yeu');
INSERT INTO Port VALUES (0, "Quiberon"), (1, "Le Palais"),(2, "Sauzon"),(3, "Vannes"),(4, "Port St Gildas"),(5, "Lorient"),(6, "Port-Tudy"),(7, "Port-Sainte-Marie"),(8, "Port-Ste-Anne");
INSERT INTO Bateau VALUES (0, "Poséidon", 37.20, 8.60, 26, 'v'),(1, "L'atlantide", 25, 7, 16, 'v'),(2, "El Bato", 12, 8, 6, 'f'),(3, "Barbichette", 45, 12, 50, 'f'),(4, "L'intrépide", 13.5, 18.6, 16, 'v'),(5, "Holandais-volant", 9, 8, 18, 'f'),(6, "Black-Pearl", 50, 30, 100, 'v');
INSERT INTO placeParCateg VALUES (0, 0),(1, 0),(2, 0),(3, 0),(4, 0),(5, 0),(6, 0);
INSERT INTO Liaison VALUES (0,15,8.3,0,1),(1,24,9.0,1),(2,16,8.0,0,2),(3,17,7.9,2,0),(4,19,23.7,4,1),(5,11,25.1,1,4),(6,25,8.8,0,5),(7,30,8.8,5,0),(8,21,7.7,6,7),(9,22,7.4,7,6);
INSERT INTO Traversees VALUES (0,'2011-07-10','7:45:00',4,0),(1,'2011-07-10','9:15:00',5,0),(2,'2011-07-10','10:50:00',4,6),(3,'2011-07-10','12:15:00',4,7),(4,'2011-07-10','14:30:00',4,4),(5,'2011-07-10','16:45:00',4,5),(6,'2011-07-10','18:15:00',4,6),(7,'2011-07-10','19:45:00',4,3),(8,'2011-05-25','7:45:00',0,0),(9,'2011-05-25','9:15:00',0,1),(10,'2011-05-25','10:50:00',0,0),(11,'2011-05-25','12:15:00',0,3),(12,'2011-05-25','14:30:00',0,5),(13,'2011-05-25','16:45:00',0,0),(14,'2011-05-25','18:15:00',0,1),(15,'2011-05-25','19:45:00',0,0);
--6 proprio --
INSERT INTO tarif VALUES (150, 0, 0, 0);
INSERT INTO ReservationEnLigne VALUES (0, "Une sorte de tarif", );
INSERT INTO detailReserv VALUES (2,0,0),(1,1,0),(2,2,0),(0,3,0),(1,4,0),(0,5,0),(0,6,0),(0,7,0),
                                (5,0,1),(0,1,1),(0,2,1),(5,3,1),(3,4,1),(2,5,1),(7,6,1),(0,7,1),
                                (1,0,2),(5,1,2),(2,2,2),(5,3,2),(0,4,2),(0,5,2),(0,6,2),(4,7,2);


INSERT INTO Equipement VALUES (0,"Un grand bar"),(1,"Un beau salon"),(2,"Passage aux handicapés"),(3, "Pont Promenade"),(4, "Salon Vidéo"), (5, "Pièce piscine");
INSERT INTO Equiper VALUES (0,1),(2,1),(3,2),(4,3),(5,3),(6,4);