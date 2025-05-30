-- Adatbázis létrehozása
CREATE DATABASE RoplabdaFiuk;
USE RoplabdaFiuk;

-- 1. Csapatok
CREATE TABLE teams (
    team_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- 2. Mérkőzések
CREATE TABLE matches (
    match_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date DATETIME NOT NULL,
    location VARCHAR(255) NOT NULL,
    home_team_id INT,
    away_team_id INT,
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id) ON DELETE SET NULL,
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id) ON DELETE SET NULL
);

-- 3. Játékosok
CREATE TABLE players (
    player_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_id INT,
    name VARCHAR(100) NOT NULL,
    jersey_number INT NOT NULL,
    position ENUM('Setter', 'Middle', 'Outside', 'Opposite', 'Libero') NOT NULL,
    starter BOOLEAN,
    FOREIGN KEY (team_id) REFERENCES teams(team_id) ON DELETE SET NULL
);

-- 4. Szettek
CREATE TABLE sets (
    set_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    set_number INT NOT NULL,
    home_score INT,
    away_score INT,
    start_time TIME,
    end_time TIME,
    winning_team_id INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id) ON DELETE CASCADE,
    FOREIGN KEY (winning_team_id) REFERENCES teams(team_id) ON DELETE SET NULL
);

-- 5. Események
CREATE TABLE events (
    event_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    set_id INT NOT NULL,
    timestamp TIME NOT NULL,
    home_score INT,
    away_score INT,
    scoring_team_id INT,
    reason VARCHAR(255),
    scoring_player_id INT,
    special_event ENUM('None', 'Libero Fault', 'Net Touch', 'Antenna Touch', 'Ceiling Touch', 'Back Row Violation') DEFAULT 'None',
    FOREIGN KEY (set_id) REFERENCES sets(set_id) ON DELETE CASCADE,
    FOREIGN KEY (scoring_team_id) REFERENCES teams(team_id) ON DELETE SET NULL,
    FOREIGN KEY (scoring_player_id) REFERENCES players(player_id) ON DELETE SET NULL
);

-- 6. Cserék
CREATE TABLE substitutions (
    substitution_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    set_id INT NOT NULL,
    time TIME NOT NULL,
    player_in_id INT NOT NULL,
    player_out_id INT NOT NULL,
    FOREIGN KEY (set_id) REFERENCES sets(set_id) ON DELETE CASCADE,
    FOREIGN KEY (player_in_id) REFERENCES players(player_id) ON DELETE CASCADE,
    FOREIGN KEY (player_out_id) REFERENCES players(player_id) ON DELETE CASCADE
);

-- 7. Időkérések
CREATE TABLE timeouts (
    timeout_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    set_id INT NOT NULL,
    team_id INT NOT NULL,
    time TIME NOT NULL,
    home_score INT,
    away_score INT,
    FOREIGN KEY (set_id) REFERENCES sets(set_id) ON DELETE CASCADE,
    FOREIGN KEY (team_id) REFERENCES teams(team_id) ON DELETE CASCADE
);

-- 8. Játékvezetők
CREATE TABLE referees (
    referee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    role ENUM('First Referee', 'Second Referee', 'Scorekeeper') NOT NULL,
    FOREIGN KEY (match_id) REFERENCES matches(match_id) ON DELETE CASCADE
);

-- 9. Eredményösszegzés
CREATE TABLE match_summary (
    summary_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    match_id INT NOT NULL,
    winning_team_id INT,
    home_sets_won INT,
    away_sets_won INT,
    total_home_points INT,
    total_away_points INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id) ON DELETE CASCADE,
    FOREIGN KEY (winning_team_id) REFERENCES teams(team_id) ON DELETE SET NULL
);
