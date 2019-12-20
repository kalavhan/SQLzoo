SELECT matchid, player FROM goal WHERE teamid = 'GER'

SELECT id,stadium,team1,team2 FROM game  where id = 1012

SELECT player, teamid, stadium, mdate FROM game JOIN goal ON (game.id=goal.matchid AND goal.teamid='GER')

SELECT team1, team2, player FROM game JOIN goal ON (game.id=goal.matchid AND goal.player LIKE 'Mario%')

SELECT player, teamid, coach, gtime FROM goal JOIN eteam ON (teamid=id AND gtime<=10)

SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id AND coach LIKE '%Santos')

SELECT player FROM goal JOIN game ON (id=matchid AND stadium = 'National Stadium, Warsaw')

SELECT DISTINCT(player) FROM game JOIN goal ON matchid = id WHERE ((team1='GER' OR team2='GER') AND teamid != 'GER')

SELECT teamname, COUNT(player)FROM eteam JOIN goal ON id=teamid GROUP BY teamname

SELECT game.stadium, COUNT(game.id) FROM game JOIN goal ON (game.id=goal.matchid) GROUP BY game.stadium

SELECT game.id, game.mdate, COUNT(game.id) FROM game JOIN goal ON (goal.matchid=game.id AND team1 = 'POL' OR team2 = 'POL') GROUP BY game.id, game.mdate

SELECT game.id,game.mdate,COUNT(game.id) FROM game JOIN goal ON goal.matchid = game.id WHERE goal.teamid='GER' GROUP BY game.id,game.mdate

SELECT game.mdate, game.team1, SUM(CASE WHEN goal.teamid=game.team1 THEN 1 ELSE 0 END) as score1, team2, SUM(CASE WHEN goal.teamid=game.team2 THEN 1 ELSE 0 END) as score2 FROM game LEFT JOIN goal ON goal.matchid = game.id GROUP BY mdate,matchid,team1,team2
