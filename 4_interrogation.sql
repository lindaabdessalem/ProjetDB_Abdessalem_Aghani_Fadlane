USE MUSIC1;


SELECT nom_artiste, date_naissance
FROM Artiste
WHERE date_naissance > '1990-01-01'
ORDER BY date_naissance;


SELECT DISTINCT nom_genre
FROM Genre;


SELECT titre_morceau
FROM Morceau
WHERE titre_morceau LIKE 'A%' OR titre_morceau LIKE 'B%';


SELECT titre_album, prix_album
FROM Album
WHERE prix_album BETWEEN 10 AND 20;


SELECT nom_artiste
FROM Artiste
WHERE id_nationalite IN ('N1', 'N2', 'N3');



SELECT id_genre, COUNT(*) AS nb_morceaux
FROM Morceau
GROUP BY id_genre;


SELECT id_label, AVG(prix_album) AS prix_moyen
FROM Album
GROUP BY id_label;


SELECT id_nationalite, COUNT(*) AS nb_artistes
FROM Artiste
GROUP BY id_nationalite
HAVING COUNT(*) >= 2;


SELECT type_exclusif_non_exclusif, SUM(montant) AS total_montant
FROM Contrat
GROUP BY type_exclusif_non_exclusif;


SELECT id_album, SEC_TO_TIME(AVG(TIME_TO_SEC(duree_morceau))) AS duree_moyenne
FROM Morceau
GROUP BY id_album;




SELECT M.titre_morceau, A.titre_album
FROM Morceau M
INNER JOIN Album A ON M.id_album = A.id_album;


SELECT AR.nom_artiste, N.nom_nationalite
FROM Artiste AR
LEFT JOIN Nationalite N ON AR.id_nationalite = N.id_nationalite;


SELECT E.id_evenement, AR.nom_artiste, O.lieu
FROM Evenement E
INNER JOIN Organise O ON E.id_evenement = O.id_evenement
INNER JOIN Artiste AR ON O.id_artiste = AR.id_artiste;


SELECT L.nom_label, A.titre_album
FROM Label L
LEFT JOIN Album A ON L.id_label = A.id_label;


SELECT AR.nom_artiste, M.titre_morceau, G.nom_genre
FROM Artiste AR
INNER JOIN Cree C ON AR.id_artiste = C.id_artiste
INNER JOIN Morceau M ON C.id_morceau = M.id_morceau
INNER JOIN Genre G ON M.id_genre = G.id_genre;




SELECT nom_artiste
FROM Artiste
WHERE id_artiste NOT IN (SELECT id_artiste FROM Signer);


SELECT titre_album
FROM Album
WHERE prix_album > ALL (SELECT prix_album FROM Album WHERE id_label = 'L1');


SELECT titre_morceau
FROM Morceau
WHERE id_morceau IN (
    SELECT id_morceau
    FROM Cree C
    INNER JOIN Artiste AR ON C.id_artiste = AR.id_artiste
    WHERE AR.date_naissance > '2000-01-01'
);


SELECT nom_artiste
FROM Artiste AR
WHERE NOT EXISTS (
    SELECT 1
    FROM Organise O
    WHERE O.id_artiste = AR.id_artiste
);


SELECT id_contrat, montant
FROM Contrat
WHERE montant > (SELECT AVG(montant) FROM Contrat);
