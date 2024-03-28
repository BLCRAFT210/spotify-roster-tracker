CREATE DATABASE IF NOT EXISTS label_artist_database;
USE label_artist_database;

CREATE TABLE IF NOT EXISTS Labels (
    label_id INT AUTO_INCREMENT PRIMARY KEY,
    label_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL,
    artist_popularity INT NOT NULL,
    CHECK (artist_popularity BETWEEN 0 AND 100)
);

CREATE TABLE IF NOT EXISTS Label_Artists (
    label_id INT,
    artist_id INT,
    PRIMARY KEY (label_id, artist_id),
    FOREIGN KEY (label_id) REFERENCES Labels(label_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);