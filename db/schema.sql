DROP DATABASE IF EXISTS footy;
CREATE DATABASE footy;

\c footy;

\echo Created a table called teams

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    stadium TEXT,
    founded INT  
);

DROP TABLE IF EXISTS players;

\echo Created a table called players

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    age INT,
    country TEXT,
    teams_id INTEGER REFERENCES teams (id)
    ON DELETE CASCADE
);


