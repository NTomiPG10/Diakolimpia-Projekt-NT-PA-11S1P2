CREATE DATABASE IF NOT EXISTS IjSzFiuk;
USE IjSzFiuk;

-- Versenyek táblája
CREATE TABLE competitions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    distance_meters INT DEFAULT 14,
    shots_per_round INT DEFAULT 36,
    team_final_shots INT DEFAULT 9
);

-- Versenyzők
CREATE TABLE archers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competition_id INT,
    name VARCHAR(255) NOT NULL,
    school_or_club VARCHAR(255) NOT NULL,
    category ENUM('Vadászreflex', 'Történelmi') NOT NULL,
    individual_score INT DEFAULT 0,
    FOREIGN KEY (competition_id) REFERENCES competitions(id)
);

-- Csapatok
CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competition_id INT,
    team_name VARCHAR(255) NOT NULL,
    member1_id INT,
    member2_id INT,
    member3_id INT,
    team_score INT DEFAULT 0,
    FOREIGN KEY (competition_id) REFERENCES competitions(id),
    FOREIGN KEY (member1_id) REFERENCES archers(id),
    FOREIGN KEY (member2_id) REFERENCES archers(id),
    FOREIGN KEY (member3_id) REFERENCES archers(id)
);

-- Lövések részletes adatai (opcionális)
CREATE TABLE shots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    archer_id INT,
    round_number INT,
    shot_number INT,
    points INT,
    phase ENUM('Egyéni', 'Csapatdöntő') NOT NULL,
    FOREIGN KEY (archer_id) REFERENCES archers(id)
);



CREATE DATABASE IF NOT EXISTS IjSzLanyok;
USE IjSzLanyok;

-- Ugyanazok a táblák, mint a fiúknál:

CREATE TABLE competitions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    distance_meters INT DEFAULT 14,
    shots_per_round INT DEFAULT 36,
    team_final_shots INT DEFAULT 9
);

CREATE TABLE archers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competition_id INT,
    name VARCHAR(255) NOT NULL,
    school_or_club VARCHAR(255) NOT NULL,
    category ENUM('Vadászreflex', 'Történelmi') NOT NULL,
    individual_score INT DEFAULT 0,
    FOREIGN KEY (competition_id) REFERENCES competitions(id)
);

CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    competition_id INT,
    team_name VARCHAR(255) NOT NULL,
    member1_id INT,
    member2_id INT,
    member3_id INT,
    team_score INT DEFAULT 0,
    FOREIGN KEY (competition_id) REFERENCES competitions(id),
    FOREIGN KEY (member1_id) REFERENCES archers(id),
    FOREIGN KEY (member2_id) REFERENCES archers(id),
    FOREIGN KEY (member3_id) REFERENCES archers(id)
);

CREATE TABLE shots (
    id INT AUTO_INCREMENT PRIMARY KEY,
    archer_id INT,
    round_number INT,
    shot_number INT,
    points INT,
    phase ENUM('Egyéni', 'Csapatdöntő') NOT NULL,
    FOREIGN KEY (archer_id) REFERENCES archers(id)
);
