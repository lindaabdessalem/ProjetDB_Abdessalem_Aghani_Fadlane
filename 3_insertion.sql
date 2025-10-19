USE MUSIC1;

-- ============================================================
-- Nationalities
-- ============================================================
INSERT INTO Nationalite (id_nationalite, nom_nationalite) VALUES
('NAT001', 'Française'),
('NAT002', 'Américaine'),
('NAT003', 'Britannique'),
('NAT004', 'Canadienne'),
('NAT005', 'Allemande'),
('NAT006', 'Australienne'),
('NAT007', 'Colombienne'),
('NAT008', 'Italienne'),
('NAT009', 'Jamaïcaine'),
('NAT010', 'Brésilienne'),
('NAT011', 'Mexicaine'),
('NAT012', 'Indienne');

-- ============================================================
-- Countries
-- ============================================================
INSERT INTO Pays (id_pays, nom_pays) VALUES
('PAY001', 'France'),
('PAY002', 'États-Unis'),
('PAY003', 'Royaume-Uni'),
('PAY004', 'Canada'),
('PAY005', 'Allemagne'),
('PAY006', 'Australie'),
('PAY007', 'Colombie'),
('PAY008', 'Italie'),
('PAY009', 'Jamaïque'),
('PAY010', 'Brésil'),
('PAY011', 'Mexique'),
('PAY012', 'Inde');

-- ============================================================
-- Artists
-- ============================================================
INSERT INTO Artiste (id_artiste, nom_artiste, type_groupe_solo, date_naissance, id_nationalite) VALUES
('ART013', 'Eros Ramazzotti', 'Solo', '1963-10-28', 'NAT008'),
('ART014', 'Bob Marley', 'Groupe', '1945-02-06', 'NAT009'),
('ART015', 'Anitta', 'Solo', '1993-03-30', 'NAT010'),
('ART016', 'Carlos Santana', 'Groupe', '1947-07-20', 'NAT008'),
('ART017', 'Luis Miguel', 'Solo', '1970-04-19', 'NAT011'),
('ART018', 'A.R. Rahman', 'Solo', '1967-01-06', 'NAT012'),
('ART019', 'Kendrick Lamar', 'Solo', '1987-06-17', 'NAT002'),
('ART020', 'Bruno Mars', 'Solo', '1985-10-08', 'NAT002'),
('ART021', 'Coldplay', 'Groupe', '1996-01-01', 'NAT003'),
('ART022', 'Imagine Dragons', 'Groupe', '2008-09-01', 'NAT006'),
('ART023', 'Ed Sheeran', 'Solo', '1991-02-17', 'NAT003'),
('ART024', 'Shakira', 'Solo', '1977-02-02', 'NAT007'),
('ART025', 'Billie Eilish', 'Solo', '2001-12-18', 'NAT002'),
('ART026', 'Taylor Swift', 'Solo', '1989-12-13', 'NAT002'),
('ART027', 'Rammstein', 'Groupe', '1994-01-01', 'NAT005'),
('ART028', 'Daft Punk', 'Groupe', '1993-01-01', 'NAT001'),
('ART029', 'Adele', 'Solo', '1988-05-05', 'NAT003'),
('ART030', 'Drake', 'Solo', '1986-10-24', 'NAT004');

-- ============================================================
-- Labels
-- ============================================================
INSERT INTO Label (id_label, nom_label, date_creation, id_pays) VALUES
('LAB001', 'Columbia Records', '1887-01-01', 'PAY002'),
('LAB002', 'Epic Records', '1953-01-01', 'PAY002'),
('LAB003', 'Atlantic Records', '1947-10-01', 'PAY002'),
('LAB004', 'Capitol Records', '1942-03-27', 'PAY002'),
('LAB005', 'Decca Records', '1929-01-01', 'PAY003'),
('LAB006', 'Mercury Records', '1945-05-01', 'PAY003'),
('LAB007', 'Atlantic Records', '1947-10-01', 'PAY002'),
('LAB008', 'Capitol Records', '1942-03-27', 'PAY002'),
('LAB009', 'Decca Records', '1929-01-01', 'PAY003'),
('LAB010', 'Mercury Records', '1945-05-01', 'PAY003'),
('LAB011', 'Sony Music Italy', '1980-06-01', 'PAY008'),
('LAB012', 'Warner Music Latin', '1990-04-15', 'PAY011'),
('LAB013', 'Universal Brazil', '1980-01-10', 'PAY010'),
('LAB014', 'T-Series', '1983-03-25', 'PAY012');

-- ============================================================
-- Contracts
-- ============================================================
INSERT INTO Contrat (id_contrat, date_signature, duree, type_exclusif_non_exclusif, montant) VALUES
('CON012', '2024-01-15', 3, 'Exclusif', 500000.00),
('CON013', '2024-02-10', 4, 'Non exclusif', 350000.00),
('CON014', '2024-03-05', 5, 'Exclusif', 600000.00),
('CON015', '2024-04-01', 2, 'Exclusif', 200000.00),
('CON016', '2024-05-20', 3, 'Non exclusif', 300000.00),
('CON017', '2023-06-10', 6, 'Exclusif', 700000.00),
('CON018', '2023-07-25', 4, 'Non exclusif', 450000.00),
('CON019', '2024-08-15', 5, 'Exclusif', 550000.00),
('CON020', '2024-09-01', 2, 'Exclusif', 250000.00),
('CON021', '2024-10-10', 3, 'Non exclusif', 300000.00),
('CON022', '2024-11-05', 4, 'Exclusif', 400000.00),
('CON023', '2025-01-15', 3, 'Non exclusif', 320000.00),
('CON024', '2025-02-20', 2, 'Exclusif', 280000.00),
('CON025', '2025-03-10', 5, 'Exclusif', 500000.00),
('CON026', '2025-04-05', 3, 'Non exclusif', 350000.00);

-- ============================================================
-- Managers
-- ============================================================
INSERT INTO Manager (id_manager, nom_manager, contact, role_manager_producteur) VALUES
('MAN010', 'John Williams', 'john.williams@email.com', 'Manager'),
('MAN011', 'Maria Gonzalez', 'maria.gonzalez@email.com', 'Producteur'),
('MAN012', 'Antonio Rossi', 'antonio.rossi@email.com', 'Manager'),
('MAN013', 'Priya Singh', 'priya.singh@email.com', 'Producteur'),
('MAN014', 'Felipe Santos', 'felipe.santos@email.com', 'Manager'),
('MAN015', 'Tom Harris', 'tom.harris@email.com', 'Producteur');

-- ============================================================
-- Event Types
-- ============================================================
INSERT INTO TypeEvenement (id_type_evenement, nom_type_evenement) VALUES
('TEV001', 'Concert'),
('TEV002', 'Festival'),
('TEV004', 'Award Show'),
('TEV005', 'Fan Meeting'),
('TEV006', 'Live Session'),
('TEV007', 'World Tour'),
('TEV008', 'Private Show'),
('TEV009', 'Charity Event'),
('TEV010', 'Album Launch');

-- ============================================================
-- Events
-- ============================================================
INSERT INTO Evenement (id_evenement, id_type_evenement, prix) VALUES
('EVE012', 'TEV007', 120.00),
('EVE013', 'TEV008', 300.00),
('EVE014', 'TEV009', 200.00),
('EVE015', 'TEV010', 150.00),
('EVE016', 'TEV001', 90.00),
('EVE017', 'TEV002', 110.00),
('EVE018', 'TEV004', 95.00),
('EVE019', 'TEV005', 85.00),
('EVE020', 'TEV006', 140.00),
('EVE021', 'TEV007', 160.00),
('EVE022', 'TEV008', 220.00),
('EVE023', 'TEV009', 180.00),
('EVE024', 'TEV010', 130.00),
('EVE025', 'TEV001', 75.00);

-- ============================================================
-- Organise
-- ============================================================
INSERT INTO Organise (id_artiste, id_manager, id_evenement, date_evenement, lieu) VALUES
('ART013', 'MAN010', 'EVE012', '2025-11-05', 'Rome Arena'),
('ART014', 'MAN011', 'EVE013', '2025-10-20', 'Kingston Stadium'),
('ART015', 'MAN014', 'EVE014', '2025-12-12', 'Rio Dome'),
('ART016', 'MAN012', 'EVE015', '2025-10-28', 'Milan Arena'),
('ART017', 'MAN011', 'EVE016', '2025-11-18', 'Mexico City'),
('ART018', 'MAN013', 'EVE017', '2025-12-02', 'Chennai'),
('ART019', 'MAN010', 'EVE018', '2025-10-22', 'Los Angeles'),
('ART020', 'MAN012', 'EVE019', '2025-11-11', 'New York'),
('ART021', 'MAN014', 'EVE020', '2025-12-15', 'London'),
('ART022', 'MAN015', 'EVE021', '2025-11-30', 'Sydney'),
('ART023', 'MAN010', 'EVE022', '2025-10-26', 'Manchester'),
('ART024', 'MAN011', 'EVE023', '2025-11-17', 'Bogotá'),
('ART025', 'MAN012', 'EVE024', '2025-12-05', 'Los Angeles'),
('ART026', 'MAN015', 'EVE025', '2025-11-20', 'New York');

-- ============================================================
-- Albums
-- ============================================================
INSERT INTO Album (id_album, id_label, titre_album, date_de_sortie, prix_album) VALUES
('ALB005', 'LAB009', 'Viva La Vida', '2008-06-12', 25.00),
('ALB006', 'LAB003', 'Divide', '2017-03-03', 26.50),
('ALB007', 'LAB012', 'Camila', '2018-01-12', 23.50),
('ALB008', 'LAB013', 'Evolve', '2017-06-23', 24.00),
('ALB009', 'LAB009', 'Legend', '1984-05-01', 28.00),
('ALB012', 'LAB011', 'Vida', '2019-02-01', 22.99),
('ALB013', 'LAB002', 'Thriller', '1982-11-30', 27.50),
('ALB014', 'LAB010', 'Supernatural', '1999-06-15', 26.00),
('ALB016', 'LAB007', '24K Magic', '2016-11-18', 29.99),
('ALB017', 'LAB008', 'Purpose', '2015-11-13', 24.50),
('ALB018', 'LAB009', 'Let It Be', '1970-05-08', 28.00),
('ALB019', 'LAB010', 'Hotel California', '1976-12-08', 27.50),
('ALB020', 'LAB011', 'Noi', '2012-03-15', 22.99),
('ALB021', 'LAB012', 'Romance', '2017-02-14', 23.50),
('ALB022', 'LAB013', 'Bloco do Amor', '2018-09-20', 21.99),
('ALB023', 'LAB014', 'Aashiqui', '1990-06-10', 19.99);

-- ============================================================
-- Genres
-- ============================================================
INSERT INTO Genre (id_genre, nom_genre) VALUES
('GEN001', 'Pop'),
('GEN002', 'Rock'),
('GEN003', 'Hip-Hop'),
('GEN004', 'R&B'),
('GEN005', 'Electronic'),
('GEN006', 'Country'),
('GEN007', 'Alternative'),
('GEN008', 'Dance'),
('GEN009', 'Reggae'),
('GEN010', 'Latin'),
('GEN011', 'Jazz'),
('GEN012', 'Classical'),
('GEN013', 'Soul');

-- ============================================================
-- Tracks
-- ============================================================
INSERT INTO Morceau (id_morceau, titre_morceau, duree_morceau, auteur_morceau, compositeur, id_album, id_genre) VALUES
('MOR016', 'Viva La Vida', '00:04:02', 'Coldplay', 'Coldplay', 'ALB005', 'GEN001'),
('MOR017', 'Thunder', '00:03:07', 'Imagine Dragons', 'Imagine Dragons', 'ALB008', 'GEN007'),
('MOR018', 'Havana', '00:03:36', 'Camila Cabello', 'Camila Cabello', 'ALB007', 'GEN010'),
('MOR019', 'No Woman, No Cry', '00:07:08', 'Bob Marley', 'Bob Marley', 'ALB009', 'GEN009'),
('MOR020', 'Smooth', '00:04:56', 'Santana', 'Santana', 'ALB014', 'GEN010'),
('MOR021', 'Billie Jean', '00:04:54', 'Michael Jackson', 'Michael Jackson', 'ALB013', 'GEN001'),
('MOR022', 'Thriller', '00:05:57', 'Michael Jackson', 'Michael Jackson', 'ALB013', 'GEN001'),
('MOR023', 'Shape of You', '00:03:53', 'Ed Sheeran', 'Ed Sheeran', 'ALB006', 'GEN001'),
('MOR024', 'Despacito', '00:03:47', 'Luis Fonsi', 'Luis Fonsi', 'ALB012', 'GEN010'),
('MOR025', 'La Bicicleta', '00:03:48', 'Shakira', 'Shakira', 'ALB007', 'GEN010');
