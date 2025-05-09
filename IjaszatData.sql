USE IjSzLanyok;

-- Verseny létrehozása
INSERT INTO competitions (name, date, location) VALUES
('Hétkarika Lányok Verseny', '2025-05-06', 'Győr');

-- Versenyzők hozzáadása
INSERT INTO archers (competition_id, name, school_or_club, category, individual_score) VALUES
(1, 'Kiss Anna', 'Győri ETO', 'Vadászreflex', 345),
(1, 'Horváth Eszter', 'Győri ETO', 'Történelmi', 330),
(1, 'Balogh Réka', 'Győri ETO', 'Vadászreflex', 340),
(1, 'Molnár Zsófia', 'Szegedi Íjász Klub', 'Vadászreflex', 320),
(1, 'Fekete Dóra', 'Szegedi Íjász Klub', 'Történelmi', 325),
(1, 'Simon Katalin', 'Szegedi Íjász Klub', 'Történelmi', 315);

-- Csapatok létrehozása
INSERT INTO teams (competition_id, team_name, member1_id, member2_id, member3_id, team_score) VALUES
(1, 'Győri ETO', 1, 2, 3, 1015),
(1, 'Szegedi Íjász Klub', 4, 5, 6, 960);

-- Lövések (pár példa részletesen)
INSERT INTO shots (archer_id, round_number, shot_number, points, phase) VALUES
(1, 1, 1, 10, 'Egyéni'),
(1, 1, 2, 10, 'Egyéni'),
(1, 1, 3, 9, 'Egyéni'),
(2, 1, 1, 9, 'Egyéni'),
(2, 1, 2, 8, 'Egyéni'),
(2, 1, 3, 9, 'Egyéni');
