CREATE DATABASE IF NOT EXISTS KeziLanyok;
USE KeziLanyok;

-- 1. Csapatok
CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    coach_name VARCHAR(100),
    captain_player_id INT DEFAULT NULL
);

-- 2. Játékosok
CREATE TABLE players (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team_id INT,
    name VARCHAR(100) NOT NULL,
    jersey_number INT NOT NULL,
    position ENUM('Goalkeeper', 'Field') NOT NULL,
    is_substitute BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- 3. Mérkőzések
CREATE TABLE matches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME NOT NULL,
    location VARCHAR(150) NOT NULL,
    home_team_id INT,
    away_team_id INT,
    match_type ENUM('League', 'Cup', 'Final', 'Friendly') DEFAULT 'League',
    game_duration ENUM('2x30', '2x25', '2x20') DEFAULT '2x30',
    FOREIGN KEY (home_team_id) REFERENCES teams(id),
    FOREIGN KEY (away_team_id) REFERENCES teams(id)
);

-- 4. Események (gólok, büntetők, kiállítások, cserék, különleges események)
CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    team_id INT,
    player_id INT,
    event_type ENUM('Goal', 'Penalty', 'Yellow Card', 'Two Minute Suspension', 'Red Card', 'Blue Card', 'Substitution Error', 'Passive Play', 'Goalkeeper as Field', 'Injury') NOT NULL,
    event_time_minute INT NOT NULL,
    detail VARCHAR(255) DEFAULT NULL, -- például: akciógól, 7m dobás, védés, stb.
    comment TEXT DEFAULT NULL,
    FOREIGN KEY (match_id) REFERENCES matches(id),
    FOREIGN KEY (team_id) REFERENCES teams(id),
    FOREIGN KEY (player_id) REFERENCES players(id)
);

-- 5. Eredmény
CREATE TABLE match_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    halftime_home_score INT,
    halftime_away_score INT,
    fulltime_home_score INT,
    fulltime_away_score INT,
    overtime_home_score INT DEFAULT NULL,
    overtime_away_score INT DEFAULT NULL,
    penalty_home_score INT DEFAULT NULL,
    penalty_away_score INT DEFAULT NULL,
    FOREIGN KEY (match_id) REFERENCES matches(id)
);

-- 6. Hivatalos személyek
CREATE TABLE officials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    match_id INT,
    name VARCHAR(100) NOT NULL,
    role ENUM('Referee', 'Timekeeper', 'Scorekeeper', 'Statistician') NOT NULL,
    FOREIGN KEY (match_id) REFERENCES matches(id)
);
