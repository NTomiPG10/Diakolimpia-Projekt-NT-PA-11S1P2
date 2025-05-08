USE FociLanyok;


INSERT INTO Team (TeamName, CoachName) VALUES 
('Pécsi Párducok', 'Kiss Veronika'),
('Győri Gyémántok', 'Nagy Eszter');


INSERT INTO Player (TeamID, PlayerName, JerseyNumber, Position, IsSubstitute) VALUES
(1, 'Molnár Anna', 10, 'Midfielder', FALSE),
(1, 'Tóth Zsófia', 1, 'Goalkeeper', FALSE),
(1, 'Kovács Júlia', 5, 'Defender', FALSE),
(1, 'Varga Réka', 9, 'Forward', FALSE),
(2, 'Horváth Dóra', 7, 'Midfielder', FALSE),
(2, 'Balogh Laura', 11, 'Forward', FALSE),
(2, 'Farkas Kata', 2, 'Defender', FALSE),
(2, 'Tóth Lili', 1, 'Goalkeeper', FALSE);


UPDATE Team SET CaptainPlayerID = 1 WHERE TeamID = 1;
UPDATE Team SET CaptainPlayerID = 5 WHERE TeamID = 2;


INSERT INTO Match (Date, Time, Location, City, HomeTeamID, AwayTeamID, MatchType) VALUES
('2025-05-08', '20:00:00', 'Dunántúli Stadion', 'Pécs', 1, 2, 'Döntő');


INSERT INTO Event (MatchID, Minute, EventType, Description, InvolvedPlayerID) VALUES
(1, 15, 'Goal', 'Fejes gól szöglet után.', 4),
(1, 38, 'YellowCard', 'Időhúzás.', 6),
(1, 75, 'Penalty', 'Büntető megítélve.', 5);


INSERT INTO Goal (EventID, ScorerPlayerID, GoalType) VALUES
(1, 4, 'Header');


INSERT INTO Card (EventID, CardType, Reason) VALUES
(2, 'Yellow', 'Időhúzás');


INSERT INTO Penalty (EventID, TeamID, PlayerID, PenaltyResult) VALUES
(3, 2, 5, 'Saved');


INSERT INTO Result (MatchID, HalfTimeScore, FullTimeScore) VALUES
(1, '1-0', '1-0');


INSERT INTO Officials (MatchID, RefereeName, Assistant1Name, Assistant2Name, VARName, MatchReporterName) VALUES
(1, 'Szabó Erika', 'Varga Ágnes', 'Németh Katalin', 'Fehér Lilla', 'Tóth Bernadett');


INSERT INTO Notes (MatchID, Minute, Description) VALUES
(1, 82, 'Heves eső miatt a pálya csúszóssá vált.');

USE FociFiuk;

-- Csapatok beszúrása
INSERT INTO Team (TeamName, CoachName) VALUES 
('Budapest Bajnokok', 'Kovács István'),
('Debrecen Dühök', 'Tóth Gábor');


INSERT INTO Player (TeamID, PlayerName, JerseyNumber, Position, IsSubstitute) VALUES
(1, 'Nagy Ádám', 10, 'Midfielder', FALSE),
(1, 'Kiss Péter', 1, 'Goalkeeper', FALSE),
(1, 'Szabó Dániel', 5, 'Defender', FALSE),
(1, 'Varga Tamás', 9, 'Forward', FALSE),
(2, 'Horváth László', 7, 'Midfielder', FALSE),
(2, 'Balogh Márk', 11, 'Forward', FALSE),
(2, 'Farkas Gergő', 2, 'Defender', FALSE),
(2, 'Tóth Kristóf', 1, 'Goalkeeper', FALSE);


UPDATE Team SET CaptainPlayerID = 1 WHERE TeamID = 1;
UPDATE Team SET CaptainPlayerID = 5 WHERE TeamID = 2;


INSERT INTO Match (Date, Time, Location, City, HomeTeamID, AwayTeamID, MatchType) VALUES
('2025-05-08', '18:00:00', 'Puskás Aréna', 'Budapest', 1, 2, 'Alapszakasz');


INSERT INTO Event (MatchID, Minute, EventType, Description, InvolvedPlayerID) VALUES
(1, 23, 'Goal', 'Szép akciógól.', 4),
(1, 45, 'YellowCard', 'Durva szabálytalanság.', 3),
(1, 67, 'Substitution', 'Taktikai csere.', NULL);


INSERT INTO Goal (EventID, ScorerPlayerID, GoalType) VALUES
(1, 4, 'Action');


INSERT INTO Card (EventID, CardType, Reason) VALUES
(2, 'Yellow', 'Durva szabálytalanság');


INSERT INTO Substitution (EventID, PlayerInID, PlayerOutID, SubstitutionType) VALUES
(3, 1, 3, 'Tactical');


INSERT INTO Result (MatchID, HalfTimeScore, FullTimeScore) VALUES
(1, '1-0', '1-0');


INSERT INTO Officials (MatchID, RefereeName, Assistant1Name, Assistant2Name, VARName, MatchReporterName) VALUES
(1, 'Fekete Zoltán', 'Molnár Béla', 'Németh Gábor', 'Sárközi Péter', 'Fehér Krisztián');


INSERT INTO Notes (MatchID, Minute, Description) VALUES
(1, 60, 'Rövid áramszünet miatt 5 perc szünet volt.');