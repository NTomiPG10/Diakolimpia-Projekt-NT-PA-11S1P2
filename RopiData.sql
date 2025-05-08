USE RoplabdaFiuk;

-- Csapatok
INSERT INTO teams (name) VALUES
('Pécsi Sasok'),
('Budapesti Farkasok');

-- Mérkőzés
INSERT INTO matches (date, location, home_team_id, away_team_id) VALUES
('2025-05-08 18:00:00', 'Pécs Sportcsarnok', 1, 2);

-- Játékosok (Pécsi Sasok)
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(1, 'Nagy Bence', 5, 'Setter', TRUE),
(1, 'Kovács Dániel', 7, 'Middle', TRUE),
(1, 'Szabó Marcell', 9, 'Outside', TRUE),
(1, 'Varga Péter', 11, 'Opposite', TRUE),
(1, 'Tóth Ádám', 12, 'Libero', TRUE);

-- Játékosok (Budapesti Farkasok)
INSERT INTO players (team_id, name, jersey_number, position, starter) VALUES
(2, 'Molnár Gergő', 4, 'Setter', TRUE),
(2, 'Kiss Balázs', 6, 'Middle', TRUE),
(2, 'Farkas Kristóf', 8, 'Outside', TRUE),
(2, 'Horváth Zoltán', 10, 'Opposite', TRUE),
(2, 'Lakatos Máté', 13, 'Libero', TRUE);

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
