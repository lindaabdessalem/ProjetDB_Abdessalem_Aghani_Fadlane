USE MUSIC1;

ALTER TABLE Manager
ADD CONSTRAINT UQ_Manager_Email UNIQUE (contact);


ALTER TABLE Evenement
ADD CONSTRAINT CHK_Evenement_PositivePrice CHECK (prix > 0);

ALTER TABLE Signer
ADD CONSTRAINT FK_Signer_Artiste FOREIGN KEY (id_artiste) REFERENCES Artiste(id_artiste) ON DELETE CASCADE,
ADD CONSTRAINT FK_Signer_Contrat FOREIGN KEY (id_contrat) REFERENCES Contrat(id_contrat) ON DELETE CASCADE;

CREATE INDEX IDX_Morceau_Genre ON Morceau(id_genre);
