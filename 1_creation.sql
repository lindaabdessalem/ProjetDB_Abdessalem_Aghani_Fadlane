
CREATE DATABASE IF NOT EXISTS MUSIC1;
USE MUSIC1;

-- Table: Nationalite
CREATE TABLE Nationalite (
   id_nationalite CHAR(50),
   nom_nationalite VARCHAR(50),
   PRIMARY KEY(id_nationalite)
);

-- Table: Pays
CREATE TABLE Pays (
   id_pays CHAR(50),
   nom_pays VARCHAR(50),
   PRIMARY KEY(id_pays)
);

-- Table: Artiste
CREATE TABLE Artiste (
   id_artiste CHAR(50),
   nom_artiste VARCHAR(50),
   type_groupe_solo VARCHAR(50),
   date_naissance DATE,
   id_nationalite CHAR(50),
   PRIMARY KEY(id_artiste),
   FOREIGN KEY(id_nationalite) REFERENCES Nationalite(id_nationalite)
);

-- Table: Label
CREATE TABLE Label (
   id_label CHAR(50),
   nom_label VARCHAR(50),
   date_creation DATE,
   id_pays CHAR(50),
   PRIMARY KEY(id_label),
   FOREIGN KEY(id_pays) REFERENCES Pays(id_pays)
);

-- Table: Contrat
CREATE TABLE Contrat (
   id_contrat CHAR(50),
   date_signature DATE,
   duree INT,
   type_exclusif_non_exclusif VARCHAR(50),
   montant DECIMAL(10,2),
   PRIMARY KEY(id_contrat)
);

-- Table: Manager
CREATE TABLE Manager (
   id_manager CHAR(50),
   nom_manager VARCHAR(50),
   contact VARCHAR(50),
   role_manager_producteur VARCHAR(50),
   PRIMARY KEY(id_manager)
);

-- Table: TypeEvenement
CREATE TABLE TypeEvenement (
   id_type_evenement CHAR(50),
   nom_type_evenement VARCHAR(50),
   PRIMARY KEY(id_type_evenement)
);

-- Table: Evenement
CREATE TABLE Evenement (
   id_evenement CHAR(50),
   id_type_evenement CHAR(50),
   prix DECIMAL(10,2),
   PRIMARY KEY(id_evenement),
   FOREIGN KEY(id_type_evenement) REFERENCES TypeEvenement(id_type_evenement)
);

-- Table: Album
CREATE TABLE Album (
   id_album CHAR(50),
   id_label CHAR(50),
   titre_album VARCHAR(50),
   date_de_sortie DATE,
   prix_album DECIMAL(10,2),
   PRIMARY KEY(id_album),
   FOREIGN KEY(id_label) REFERENCES Label(id_label)
);

-- Table: Genre
CREATE TABLE Genre (
   id_genre CHAR(50),
   nom_genre VARCHAR(50),
   PRIMARY KEY(id_genre)
);

-- Table: Morceau
CREATE TABLE Morceau (
   id_morceau CHAR(50),
   titre_morceau VARCHAR(50),
   duree_morceau TIME,
   auteur_morceau VARCHAR(50),
   compositeur VARCHAR(50),
   id_album CHAR(50),
   id_genre CHAR(50),
   PRIMARY KEY(id_morceau),
   FOREIGN KEY(id_album) REFERENCES Album(id_album),
   FOREIGN KEY(id_genre) REFERENCES Genre(id_genre)
);

-- Table: Cree (Artiste crée Morceau)
CREATE TABLE Cree (
   id_artiste CHAR(50),
   id_morceau CHAR(50),
   date_publication DATE,
   PRIMARY KEY(id_artiste, id_morceau),
   FOREIGN KEY(id_artiste) REFERENCES Artiste(id_artiste),
   FOREIGN KEY(id_morceau) REFERENCES Morceau(id_morceau)
);

-- Table: Signer (Artiste signe un Contrat avec un Manager)
CREATE TABLE Signer (
   id_artiste CHAR(50),
   id_contrat CHAR(50),
   id_manager CHAR(50),
   PRIMARY KEY(id_artiste, id_contrat, id_manager),
   FOREIGN KEY(id_artiste) REFERENCES Artiste(id_artiste),
   FOREIGN KEY(id_contrat) REFERENCES Contrat(id_contrat),
   FOREIGN KEY(id_manager) REFERENCES Manager(id_manager)
);

-- Table: Organise (Artiste et Manager organisent un Evenement)
CREATE TABLE Organise (
   id_artiste CHAR(50),
   id_manager CHAR(50),
   id_evenement CHAR(50),
   date_evenement DATE,
   lieu VARCHAR(50),
   PRIMARY KEY(id_artiste, id_manager, id_evenement),
   FOREIGN KEY(id_artiste) REFERENCES Artiste(id_artiste),
   FOREIGN KEY(id_manager) REFERENCES Manager(id_manager),
   FOREIGN KEY(id_evenement) REFERENCES Evenement(id_evenement)
);
