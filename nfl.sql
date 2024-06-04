-- 1. List the names of all NFL teams'
 Select name from teams;

-- 2. List the stadium name and head coach of all NFC teams
Select stadium, head_coach from teams Where conference = 'NFC';

-- 3. List the head coaches of the AFC South
Select head_coach from teams where division = 'South' and  conference = 'AFC';

-- 4. The total number of players in the NFL
Select count(*), name from players group by name;

-- 5. The team names and head coaches of the NFC North and AFC East
select name, head_coach from teams where division = 'North' and conference = 'NFC';
select name, head_coach from teams where division = 'East' and conference = 'AFC';

-- 6. The 50 players with the highest salaries
select name, salary from players order by salary DESC limit 50;

-- 7. The average salary of all NFL players
select AVG(salary) from players group by position;

-- 8. The names and positions of players with a salary above 10_000_000
select name, position from players where salary > 10000000;  

-- 9. The player with the highest salary in the NFL
  select name, salary from players order by salary DESC limit 1;
-- 10. The name and position of the first 100 players with the lowest salaries
  select AVG(salary) as average from players where position = 'DE'; 

-- 11. The average salary for a DE in the nfl
SELECT players.name, teams.name FROM players, teams WHERE players.team_id=teams.id AND teams.name = 'Buffalo Bills';  

-- 12. The names of all the players on the Buffalo Bills
SELECT players.name FROM players LEFT JOIN teams ON players.team_id = teams.id WHERE teams.name = 'Buffalo Bills';
-- 13. The total salary of all players on the New York Giants
SELECT SUM(salary) FROM players LEFT JOIN teams ON players.team_id = teams.id WHERE teams.name = '
New York Giants';  

-- 14. The player with the lowest salary on the Green Bay Packers
 SELECT * FROM players LEFT JOIN teams ON players.team_id = teams.id WHERE teams.name = 'Green Bay Packers' ORDER BY salary ASC LIMIT 1;
 
