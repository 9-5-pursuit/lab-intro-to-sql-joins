\c footy;

INSERT INTO teams (name,location,stadium,founded) VALUES
('Manchester United', 'Greater Manchester', 'Old Trafford', 1878),
('Arsenal', 'North London', 'Emirates Stadium',1886),
('Chelsea', 'West London','Stamford Bridge',1905),
('Manchester City', 'Manchester', 'Etihad Stadium', 1880);


INSERT INTO 
    players(teams_id,name,position,age, country)
VALUES
('1','Harry Maguire', 'Defender', 30, 'England'),
('3', 'Raheem Sterling','Forward',28, 'England'),
('2', 'Bukayo Saka', 'Midfielder',21, 'England'),
('1', 'Marcus Rashford','Forward', 25, 'England'),
('4', 'Erling Haaland', 'Forward', 23, 'Norway'),
('4', 'Bernardo Silva', 'Midfielder',28,'Portugal'),
('4', 'Kevin De Bruyne', 'Midfielder', 32, 'Belgium'),
('4', 'Julian Alverez', 'Forward', 23, 'Argentina'),
('1', 'Andre Onana','Goalkeeper',27, 'Cameroon'),
('1', 'Carlos Casemiro', 'Midfielder', 31,'Brazil');

\echo Both tables have been created

SELECT players.name, players.position,teams.name, teams.location, teams.founded FROM players INNER JOIN teams ON teams.id=players.teams_id;



\echo Displays INNER JOIN method 

SELECT players.name, players.position, teams.name, players.country FROM players RIGHT JOIN teams ON teams.id=players.teams_id;

\echo Displays Right Join method

SELECT teams.name, teams.location, players.name, teams.stadium FROM players LEFT JOIN teams ON teams.id=players.teams_id;

\echo Displays Left Join method

SELECT players.name, players.position, players.age ,teams.name, teams.founded, teams.location FROM players FULL OUTER JOIN teams ON players.teams_id=teams.id;

\echo A FULL OUTER JOIN METHOD

SELECT * FROM teams;
SELECT * FROM players;