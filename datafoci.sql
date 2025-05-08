CREATE DATABASE FociFiuk;
USE FociFiuk;


CREATE TABLE Team (
    TeamID INT AUTO_INCREMENT PRIMARY KEY,
    TeamName VARCHAR(100) NOT NULL,
    CoachName VARCHAR(100),
    CaptainPlayerID INT
);


CREATE TABLE Player (
    PlayerID INT AUTO_INCREMENT PRIMARY KEY,
    TeamID INT,
    PlayerName VARCHAR(100) NOT NULL,
    JerseyNumber INT,
    Position ENUM('Goalkeeper', 'Defender', 'Midfielder', 'Forward'),
    IsSubstitute BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);


CREATE TABLE Mtch (
    MatchID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Time TIME,
    Location VARCHAR(100),
    City VARCHAR(100),
    HomeTeamID INT,
    AwayTeamID INT,
    MatchType VARCHAR(50),
    FOREIGN KEY (HomeTeamID) REFERENCES Team(TeamID),
    FOREIGN KEY (AwayTeamID) REFERENCES Team(TeamID)
);


CREATE TABLE Evnt (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    MatchID INT,
    Minute INT,
    EventType ENUM('Goal', 'Substitution', 'YellowCard', 'RedCard', 'Penalty'),
    Description TEXT,
    InvolvedPlayerID INT,
    FOREIGN KEY (MatchID) REFERENCES Mtch(MatchID),
    FOREIGN KEY (InvolvedPlayerID) REFERENCES Player(PlayerID)
);


CREATE TABLE Goal (
    GoalID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    ScorerPlayerID INT,
    GoalType ENUM('Action', 'Penalty', 'Header', 'OwnGoal'),
    FOREIGN KEY (EventID) REFERENCES Evnt(EventID),
    FOREIGN KEY (ScorerPlayerID) REFERENCES Player(PlayerID)
);


CREATE TABLE Substitution (
    SubstitutionID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    PlayerInID INT,
    PlayerOutID INT,
    SubstitutionType ENUM('Tactical', 'Injury', 'Other'),
    FOREIGN KEY (EventID) REFERENCES Evnt(EventID),
    FOREIGN KEY (PlayerInID) REFERENCES Player(PlayerID),
    FOREIGN KEY (PlayerOutID) REFERENCES Player(PlayerID)
);


CREATE TABLE Card (
    CardID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    CardType ENUM('Yellow', 'Red'),
    Reason TEXT,
    FOREIGN KEY (EventID) REFERENCES Evnt(EventID)
);


CREATE TABLE Penalty (
    PenaltyID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT,
    TeamID INT,
    PlayerID INT,
    PenaltyResult ENUM('Goal', 'Saved', 'Missed'),
    FOREIGN KEY (EventID) REFERENCES Evnt(EventID),
    FOREIGN KEY (TeamID) REFERENCES Team(TeamID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);


CREATE TABLE Result (
    ResultID INT AUTO_INCREMENT PRIMARY KEY,
    MatchID INT,
    HalfTimeScore VARCHAR(10),
    FullTimeScore VARCHAR(10),
    ExtraTimeScore VARCHAR(10),
    PenaltyShootoutScore VARCHAR(10),
    FOREIGN KEY (MatchID) REFERENCES Mtch(MatchID)
);


CREATE TABLE Officials (
    OfficialID INT AUTO_INCREMENT PRIMARY KEY,
    MatchID INT,
    RefereeName VARCHAR(100),
    Assistant1Name VARCHAR(100),
    Assistant2Name VARCHAR(100),
    VARName VARCHAR(100),
    MatchReporterName VARCHAR(100),
    FOREIGN KEY (MatchID) REFERENCES Mtch(MatchID)
);


CREATE TABLE Notes (
    NoteID INT AUTO_INCREMENT PRIMARY KEY,
    MatchID INT,
    Minute INT,
    Description TEXT,
    FOREIGN KEY (MatchID) REFERENCES Mtch(MatchID)
);


