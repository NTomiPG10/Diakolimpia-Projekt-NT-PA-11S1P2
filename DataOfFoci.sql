USE FociFiuk;

-- Csapatok beszúrása
INSERT INTO Team (TeamName, CoachName) VALUES 
('Budapest Bajnokok', 'Kovács István'),
('Debrecen Dühök', 'Tóth Gábor'),
('Győri Gyilkosok', 'Nagy Balázs'),
('Pécsi Prérifarkasok', 'Szabó Attila'),
('Szegedi Sólymok', 'Varga Zoltán'),
('Miskolci Menők', 'Kiss László'),
('Szombathelyi Száguldók', 'Molnár Péter'),
('Nyíregyházi Nyilak', 'Farkas Tamás'),
('Kaposvári Kardok', 'Tóth Norbert'),
('Kecskeméti Kékek', 'Horváth Dávid');

-- Játékosok beszúrása
INSERT INTO Player (TeamID, PlayerName, JerseyNumber, Position, IsSubstitute) VALUES
(1, 'Nagy Ádám', 10, 'Midfielder', FALSE),
(1, 'Kiss Péter', 1, 'Goalkeeper', FALSE),
(1, 'Szabó Dániel', 5, 'Defender', FALSE),
(1, 'Varga Tamás', 9, 'Forward', FALSE),

(2, 'Horváth László', 7, 'Midfielder', FALSE),
(2, 'Balogh Márk', 11, 'Forward', FALSE),
(2, 'Farkas Gergő', 2, 'Defender', FALSE),
(2, 'Tóth Kristóf', 1, 'Goalkeeper', FALSE),

(3, 'Simon Péter', 8, 'Midfielder', FALSE),
(3, 'Tóth Áron', 4, 'Forward', FALSE),
(3, 'Szilágyi Bence', 3, 'Defender', FALSE),
(3, 'Németh Marcell', 12, 'Goalkeeper', FALSE),

(4, 'Fehér Dominik', 6, 'Midfielder', FALSE),
(4, 'Kovács Olivér', 9, 'Forward', FALSE),
(4, 'Oláh Dániel', 5, 'Defender', FALSE),
(4, 'Bognár Levente', 1, 'Goalkeeper', FALSE),

(5, 'Vass Patrik', 7, 'Midfielder', FALSE),
(5, 'Kis Máté', 10, 'Forward', FALSE),
(5, 'Szőke Kristóf', 2, 'Defender', FALSE),
(5, 'Papp Ádám', 13, 'Goalkeeper', FALSE),

(6, 'Török Bálint', 8, 'Midfielder', FALSE),
(6, 'Antal Márk', 6, 'Forward', FALSE),
(6, 'Jakab Roland', 4, 'Defender', FALSE),
(6, 'Bíró Ákos', 1, 'Goalkeeper', FALSE),

(7, 'Gulyás Bence', 11, 'Midfielder', FALSE),
(7, 'Halász Tamás', 9, 'Forward', FALSE),
(7, 'Molnár Ádám', 3, 'Defender', FALSE),
(7, 'Süli Dávid', 1, 'Goalkeeper', FALSE),

(8, 'Pintér Levente', 5, 'Midfielder', FALSE),
(8, 'Varga Kristóf', 7, 'Forward', FALSE),
(8, 'Kádár Gergő', 2, 'Defender', FALSE),
(8, 'Barta Máté', 12, 'Goalkeeper', FALSE),

(9, 'Lengyel Balázs', 10, 'Midfielder', FALSE),
(9, 'Sánta Gábor', 11, 'Forward', FALSE),
(9, 'Sipos Dávid', 6, 'Defender', FALSE),
(9, 'Lakatos Máté', 1, 'Goalkeeper', FALSE),

(10, 'Fekete Gergely', 8, 'Midfielder', FALSE),
(10, 'Orbán Patrik', 9, 'Forward', FALSE),
(10, 'Major Ádám', 4, 'Defender', FALSE),
(10, 'Csernus Bálint', 1, 'Goalkeeper', FALSE);

-- Kapitányok beállítása
UPDATE Team SET CaptainPlayerID = 1 WHERE TeamID = 1;
UPDATE Team SET CaptainPlayerID = 5 WHERE TeamID = 2;
UPDATE Team SET CaptainPlayerID = 9 WHERE TeamID = 3;
UPDATE Team SET CaptainPlayerID = 13 WHERE TeamID = 4;
UPDATE Team SET CaptainPlayerID = 17 WHERE TeamID = 5;
UPDATE Team SET CaptainPlayerID = 21 WHERE TeamID = 6;
UPDATE Team SET CaptainPlayerID = 25 WHERE TeamID = 7;
UPDATE Team SET CaptainPlayerID = 29 WHERE TeamID = 8;
UPDATE Team SET CaptainPlayerID = 33 WHERE TeamID = 9;
UPDATE Team SET CaptainPlayerID = 37 WHERE TeamID = 10;
