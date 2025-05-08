USE RoplabdaFiuk;

-- Csapatok
INSERT INTO teams (name) VALUES
('Viharmadarak'),
('Tüzes Tornádók'),
('Acélcsillagok'),
('Arany Sasok'),
('Vörös Villámok'),
('Kék Hullámok'),
('Fekete Párducok'),
('Fehér Tigrisek'),
('Bronz Bajnokok'),
('Zöld Sólymok');

-- Mérkőzés
INSERT INTO matches (date, location, home_team_id, away_team_id) VALUES
('2025-05-08 18:00:00', 'Pécs Sportcsarnok', 1, 2);

-- Viharmadarak
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(1, 'Kovács Ádám', 1, 'Setter', TRUE),
(1, 'Szabó Márk', 2, 'Outside', TRUE),
(1, 'Tóth Bence', 3, 'Middle', TRUE),
(1, 'Nagy Kristóf', 4, 'Opposite', TRUE),
(1, 'Farkas Levente', 5, 'Outside', FALSE),
(1, 'László Dávid', 6, 'Middle', FALSE),
(1, 'Bíró András', 7, 'Libero', TRUE);

-- Tüzes Tornádók
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(2, 'Molnár Patrik', 1, 'Setter', TRUE),
(2, 'Varga Zoltán', 2, 'Outside', TRUE),
(2, 'Kiss Gergely', 3, 'Middle', TRUE),
(2, 'Balogh Milán', 4, 'Opposite', TRUE),
(2, 'Szilágyi Máté', 5, 'Outside', FALSE),
(2, 'Papp Dániel', 6, 'Middle', FALSE),
(2, 'Simon Attila', 7, 'Libero', TRUE);

-- Acélcsillagok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(3, 'Németh Péter', 1, 'Setter', TRUE),
(3, 'Horváth Máté', 2, 'Outside', TRUE),
(3, 'Fodor Zsolt', 3, 'Middle', TRUE),
(3, 'Török Krisztián', 4, 'Opposite', TRUE),
(3, 'Bereczki Bálint', 5, 'Outside', FALSE),
(3, 'Jakab Dénes', 6, 'Middle', FALSE),
(3, 'Székely Richárd', 7, 'Libero', TRUE);

-- Arany Sasok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(4, 'Sándor Gábor', 1, 'Setter', TRUE),
(4, 'Fekete Lehel', 2, 'Outside', TRUE),
(4, 'Szőke Bence', 3, 'Middle', TRUE),
(4, 'Bognár Áron', 4, 'Opposite', TRUE),
(4, 'Takács Márton', 5, 'Outside', FALSE),
(4, 'Barta István', 6, 'Middle', FALSE),
(4, 'Benedek Ádám', 7, 'Libero', TRUE);

-- Vörös Villámok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(5, 'Kelemen Balázs', 1, 'Setter', TRUE),
(5, 'Lengyel Ákos', 2, 'Outside', TRUE),
(5, 'Major Tamás', 3, 'Middle', TRUE),
(5, 'Pintér Zsolt', 4, 'Opposite', TRUE),
(5, 'Borbély Kristóf', 5, 'Outside', FALSE),
(5, 'Gál Dániel', 6, 'Middle', FALSE),
(5, 'Bíró Roland', 7, 'Libero', TRUE);

-- Kék Hullámok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(6, 'Puskás Andor', 1, 'Setter', TRUE),
(6, 'Vass Dániel', 2, 'Outside', TRUE),
(6, 'Antal Zsolt', 3, 'Middle', TRUE),
(6, 'Orosz Dávid', 4, 'Opposite', TRUE),
(6, 'Barna András', 5, 'Outside', FALSE),
(6, 'Soltész Patrik', 6, 'Middle', FALSE),
(6, 'Sipos Márk', 7, 'Libero', TRUE);

-- Fekete Párducok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(7, 'Vincze Richárd', 1, 'Setter', TRUE),
(7, 'Mészáros Norbert', 2, 'Outside', TRUE),
(7, 'Lukács Bence', 3, 'Middle', TRUE),
(7, 'Hajdu István', 4, 'Opposite', TRUE),
(7, 'Ábrahám Ádám', 5, 'Outside', FALSE),
(7, 'Juhász Dávid', 6, 'Middle', FALSE),
(7, 'Görög Gábor', 7, 'Libero', TRUE);

-- Fehér Tigrisek
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(8, 'Szűcs Ákos', 1, 'Setter', TRUE),
(8, 'Veres Tamás', 2, 'Outside', TRUE),
(8, 'Sárközi Marcell', 3, 'Middle', TRUE),
(8, 'Oláh Norbert', 4, 'Opposite', TRUE),
(8, 'Gulyás Péter', 5, 'Outside', FALSE),
(8, 'Gyöngyös Bálint', 6, 'Middle', FALSE),
(8, 'Sánta Zoltán', 7, 'Libero', TRUE);

-- Bronz Bajnokok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(9, 'Pál Attila', 1, 'Setter', TRUE),
(9, 'Boros Áron', 2, 'Outside', TRUE),
(9, 'Zentai Kristóf', 3, 'Middle', TRUE),
(9, 'Tarnai Marcell', 4, 'Opposite', TRUE),
(9, 'Kozma Benedek', 5, 'Outside', FALSE),
(9, 'Kádár Zoltán', 6, 'Middle', FALSE),
(9, 'Fodor Miklós', 7, 'Libero', TRUE);

-- Zöld Sólymok
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(10, 'Balla Gergely', 1, 'Setter', TRUE),
(10, 'Polgár Gábor', 2, 'Outside', TRUE),
(10, 'Katona Ádám', 3, 'Middle', TRUE),
(10, 'Sipos Tamás', 4, 'Opposite', TRUE),
(10, 'Lukács Máté', 5, 'Outside', FALSE),
(10, 'Bíró Márk', 6, 'Middle', FALSE),
(10, 'Oláh Bálint', 7, 'Libero', TRUE);

-- Szettek (például az első szett eredménye)
INSERT INTO sets (match_id, set_number, home_score, away_score, start_time, end_time, winning_team_id) VALUES
(1, 1, 25, 20, '18:00:00', '18:30:00', 1);

-- Események (pontszerzések és hibák az első szettben)
INSERT INTO events (set_id, timestamp, home_score, away_score, scoring_team_id, reason, scoring_player_id, special_event) VALUES
(1, '18:01:30', 1, 0, 1, 'Sikeres támadás', 3, 'None'),
(1, '18:03:20', 1, 1, 2, 'Blokk hiba', 7, 'Net Touch'),
(1, '18:05:00', 2, 1, 1, 'Ásszerv', 1, 'None');

-- Cserék
INSERT INTO substitutions (set_id, time, player_in_id, player_out_id) VALUES
(1, '18:20:00', 6, 8); -- pl. Farkas Kristófot lecserélik Kiss Balázsra

-- Időkérések
INSERT INTO timeouts (set_id, team_id, time, home_score, away_score) VALUES
(1, 2, '18:15:00', 15, 12);

-- Játékvezetők
INSERT INTO referees (match_id, name, role) VALUES
(1, 'Szilágyi Tamás', 'First Referee'),
(1, 'Varga Katalin', 'Second Referee'),
(1, 'Fekete László', 'Scorekeeper');

-- Eredményösszegzés
INSERT INTO match_summary (match_id, winning_team_id, home_sets_won, away_sets_won, total_home_points, total_away_points) VALUES
(1, 1, 2, 0, 50, 40);



USE RoplabdaLanyok;

-- Csapatok
INSERT INTO teams (name) VALUES
('Győri Amazonok'),
('Szegedi Villámok');

-- Mérkőzés
INSERT INTO matches (date, location, home_team_id, away_team_id) VALUES
('2025-05-08 17:00:00', 'Győr Városi Sportcsarnok', 1, 2);

-- Játékosok (Győri Amazonok)
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(1, 'Szabó Anna', 2, 'Setter', TRUE),
(1, 'Kovács Eszter', 4, 'Middle', TRUE),
(1, 'Nagy Luca', 6, 'Outside', TRUE),
(1, 'Varga Fanni', 8, 'Opposite', TRUE),
(1, 'Tóth Dóra', 10, 'Libero', TRUE);

-- Játékosok (Szegedi Villámok)
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(2, 'Molnár Réka', 3, 'Setter', TRUE),
(2, 'Kiss Petra', 5, 'Middle', TRUE),
(2, 'Farkas Nóra', 7, 'Outside', TRUE),
(2, 'Horváth Lili', 9, 'Opposite', TRUE),
(2, 'Lakatos Zsófi', 11, 'Libero', TRUE);

-- Szettek
INSERT INTO sets (match_id, set_number, home_score, away_score, start_time, end_time, winning_team_id) VALUES
(1, 1, 25, 22, '17:00:00', '17:30:00', 1),
(1, 2, 20, 25, '17:40:00', '18:10:00', 2); -- Szeged visszahozta

-- Események az első szettben (rövidebben)
INSERT INTO events (set_id, timestamp, home_score, away_score, scoring_team_id, reason, scoring_player_id, special_event) VALUES
(1, '17:01:30', 1, 0, 1, 'Sikeres támadás', 3, 'None'),
(1, '17:05:00', 2, 0, 1, 'Ász szerva', 2, 'None'),
(1, '17:10:00', 2, 1, 2, 'Hálóérintés', NULL, 'Net Touch');

-- Események a második szettben (hosszabb + hibák)
INSERT INTO events (set_id, timestamp, home_score, away_score, scoring_team_id, reason, scoring_player_id, special_event) VALUES
(2, '17:41:00', 0, 1, 2, 'Sikeres támadás', 7, 'None'),
(2, '17:43:00', 1, 1, 1, 'Libero szabály hiba', 5, 'Libero Fault'),
(2, '17:46:00', 1, 2, 2, 'Plafonérintés', NULL, 'Ceiling Touch'),
(2, '17:50:00', 2, 2, 1, 'Blokkolt támadás', 6, 'None'),
(2, '18:00:00', 2, 3, 2, 'Ász szerva', 3, 'None');

-- Cserék a 2. szettben
INSERT INTO substitutions (set_id, time, player_in_id, player_out_id) VALUES
(2, '17:45:00', 5, 7); -- Szeged cserél

-- Időkérések
INSERT INTO timeouts (set_id, team_id, time, home_score, away_score) VALUES
(2, 2, '17:55:00', 18, 20);

-- Játékvezetők
INSERT INTO referees (match_id, name, role) VALUES
(1, 'Fodor Gábor', 'First Referee'),
(1, 'Németh Veronika', 'Second Referee'),
(1, 'Kelemen Gergő', 'Scorekeeper');

-- Eredményösszegzés (eddig döntetlen 1-1 szett)
INSERT INTO match_summary (match_id, winning_team_id, home_sets_won, away_sets_won, total_home_points, total_away_points) VALUES
(1, NULL, 1, 1, 45, 47);
