USE KeziLanyok;

-- Csapatok
INSERT INTO teams (name, coach_name) VALUES
('Győri ETO KC', 'Ambros Martín'),
('FTC-Rail Cargo Hungaria', 'Elek Gábor');

-- Játékosok Győri ETO
INSERT INTO players (team_id, name, jersey_number, position, is_substitute) VALUES
(1, 'Kari Brattset', 8, 'Field', FALSE),
(1, 'Sandra Toft', 16, 'Goalkeeper', FALSE),
(1, 'Stine Oftedal', 10, 'Field', FALSE);

-- Játékosok FTC
INSERT INTO players (team_id, name, jersey_number, position, is_substitute) VALUES
(2, 'Háfra Noémi', 21, 'Field', FALSE),
(2, 'Bíró Blanka', 1, 'Goalkeeper', FALSE),
(2, 'Klujber Katrin', 15, 'Field', TRUE);

-- Mérkőzés
INSERT INTO matches (date, location, home_team_id, away_team_id, match_type, game_duration) VALUES
('2025-05-12 19:00:00', 'Audi Aréna Győr', 1, 2, 'Final', '2x30');

-- Események
INSERT INTO events (match_id, team_id, player_id, event_type, event_time_minute, detail) VALUES
(1, 1, 1, 'Goal', 2, 'Akciógól'),
(1, 2, 4, 'Goal', 7, '7 méteres gól'),
(1, 1, 2, 'Penalty', 15, '7 méteres védés'),
(1, 2, 5, 'Yellow Card', 20, NULL),
(1, 1, 3, 'Passive Play', 28, NULL),
(1, 2, 6, 'Goal', 35, 'Akciógól');

-- Eredmény
INSERT INTO match_results (match_id, halftime_home_score, halftime_away_score, fulltime_home_score, fulltime_away_score) VALUES
(1, 13, 12, 27, 24);

-- Hivatalos személyek
INSERT INTO officials (match_id, name, role) VALUES
(1, 'Kerekes András', 'Referee'),
(1, 'Tamás Péter', 'Referee'),
(1, 'Kis Judit', 'Scorekeeper');
