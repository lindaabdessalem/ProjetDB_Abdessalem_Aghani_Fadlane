USE MUSIC1;

-- =====================================================
-- FICHIER : 4_interrogation.sql
-- SCÉNARIO D’UTILISATION :
-- Utilisateur : Responsable marketing d’une maison de disque
-- Objectif : Analyser artistes, albums, morceaux, événements et contrats pour prendre des décisions commerciales
-- Données à extraire : 
-- 1. Artistes et informations personnelles (nom, date de naissance, nationalité)
-- 2. Albums et prix (titre, prix, label)
-- 3. Morceaux (titre, durée, auteur, genre, album)
-- 4. Événements (type, prix, lieu, date, artistes participants)
-- 5. Contrats (type, montant, durée, artiste et manager associé)
-- 6. Statistiques : nombre de morceaux par genre, prix moyen des albums, montant total des contrats, durée moyenne des morceaux, nombre d’artistes par nationalité
-- =====================================================

-- ===========================================
-- 1. Projections et sélections avec tri, DISTINCT, IN, BETWEEN, LIKE
-- ===========================================

-- 1.1 Liste des artistes nés après 1990, triés par date de naissance
SELECT nom_artiste, date_naissance, id_nationalite
FROM Artiste
WHERE date_naissance > '1990-01-01'
ORDER BY date_naissance;

-- 1.2 Liste distincte des genres présents dans la base
SELECT DISTINCT nom_genre
FROM Genre;

-- 1.3 Morceaux dont le titre commence par 'A' ou 'B'
SELECT titre_morceau
FROM Morceau
WHERE titre_morceau LIKE 'A%' OR titre_morceau LIKE 'B%';

-- 1.4 Albums dont le prix est entre 10 et 20
SELECT titre_album, prix_album
FROM Album
WHERE prix_album BETWEEN 10 AND 20;

-- 1.5 Artistes appartenant à certaines nationalités spécifiques
SELECT nom_artiste
FROM Artiste
WHERE id_nationalite IN ('N1', 'N2', 'N3');

-- ===========================================
-- 2. Fonctions d’agrégation avec GROUP BY et HAVING
-- ===========================================

-- 2.1 Nombre de morceaux par genre
SELECT id_genre, COUNT(*) AS nb_morceaux
FROM Morceau
GROUP BY id_genre;

-- 2.2 Prix moyen des albums par label
SELECT id_label, AVG(prix_album) AS prix_moyen
FROM Album
GROUP BY id_label;

-- 2.3 Nombre d’artistes par nationalité avec au moins 2 artistes
SELECT id_nationalite, COUNT(*) AS nb_artistes
FROM Artiste
GROUP BY id_nationalite
HAVING COUNT(*) >= 2;

-- 2.4 Montant total des contrats par type (exclusif/non exclusif)
SELECT type_exclusif_non_exclusif, SUM(montant) AS total_montant
FROM Contrat
GROUP BY type_exclusif_non_exclusif;

-- 2.5 Durée moyenne des morceaux par album
SELECT id_album, SEC_TO_TIME(AVG(TIME_TO_SEC(duree_morceau))) AS duree_moyenne
FROM Morceau
GROUP BY id_album;

-- ===========================================
-- 3. Jointures internes, externes, multiples
-- ===========================================

-- 3.1 Morceaux avec le nom de leur album
SELECT M.titre_morceau, A.titre_album
FROM Morceau M
INNER JOIN Album A ON M.id_album = A.id_album;

-- 3.2 Artistes et leur nationalité
SELECT AR.nom_artiste, N.nom_nationalite
FROM Artiste AR
LEFT JOIN Nationalite N ON AR.id_nationalite = N.id_nationalite;

-- 3.3 Événements et artistes organisateurs
SELECT E.id_evenement, AR.nom_artiste, O.lieu, E.prix
FROM Evenement E
INNER JOIN Organise O ON E.id_evenement = O.id_evenement
INNER JOIN Artiste AR ON O.id_artiste = AR.id_artiste;

-- 3.4 Tous les labels et leurs albums (même si aucun album)
SELECT L.nom_label, A.titre_album
FROM Label L
LEFT JOIN Album A ON L.id_label = A.id_label;

-- 3.5 Artistes avec leurs morceaux et leur genre
SELECT AR.nom_artiste, M.titre_morceau, G.nom_genre
FROM Artiste AR
INNER JOIN Cree C ON AR.id_artiste = C.id_artiste
INNER JOIN Morceau M ON C.id_morceau = M.id_morceau
INNER JOIN Genre G ON M.id_genre = G.id_genre;

-- ===========================================
-- 4. Requêtes imbriquées avec (NOT) IN, (NOT) EXISTS, ANY, ALL
-- ===========================================

-- 4.1 Artistes n’ayant jamais signé de contrat
SELECT nom_artiste
FROM Artiste
WHERE id_artiste NOT IN (SELECT id_artiste FROM Signer);

-- 4.2 Albums dont le prix est supérieur à tous les albums du label 'L1'
SELECT titre_album
FROM Album
WHERE prix_album > ALL (SELECT prix_album FROM Album WHERE id_label = 'L1');

-- 4.3 Morceaux créés par au moins un artiste né après 2000
SELECT titre_morceau
FROM Morceau
WHERE id_morceau IN (
    SELECT id_morceau
    FROM Cree C
    INNER JOIN Artiste AR ON C.id_artiste = AR.id_artiste
    WHERE AR.date_naissance > '2000-01-01'
);

-- 4.4 Artistes n’ayant jamais organisé d’événement
SELECT nom_artiste
FROM Artiste AR
WHERE NOT EXISTS (
    SELECT 1
    FROM Organise O
    WHERE O.id_artiste = AR.id_artiste
);

-- 4.5 Contrats dont le montant est supérieur à la moyenne de tous les contrats
SELECT id_contrat, montant
FROM Contrat
WHERE montant > (SELECT AVG(montant) FROM Contrat);
