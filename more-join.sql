SELECT id, title FROM movie WHERE yr=1962

SELECT yr FROM movie WHERE title = 'Citizen Kane'

SELECT id, title, yr FROM movie WHERE title LIKE '%Star Trek%' order by yr 

SELECT id from actor where name = 'Glenn Close'

SELECT id FROM movie WHERE title = 'Casablanca'

SELECT actor.name FROM casting JOIN actor ON actor.id = casting.actorid WHERE movieid = 11768

SELECT actor.name FROM casting JOIN actor ON actor.id = casting.actorid WHERE casting.movieid = (SELECT id FROM movie WHERE title = 'Alien')

SELECT movie.title FROM movie JOIN casting ON casting.movieid = movie.id AND casting.actorid = (SELECT id from actor WHERE name = 'Harrison Ford')

SELECT movie.title FROM movie JOIN casting ON casting.movieid = movie.id AND casting.ord <> 1 AND casting.actorid = (SELECT id from actor WHERE name = 'Harrison Ford')

SELECT movie.title, actor.name FROM movie JOIN casting ON casting.movieid = movie.id JOIN actor ON actor.id = casting.actorid WHERE movie.yr = 1962 AND casting.ord = 1;

SELECT yr,COUNT(title)as times FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE name='Rock Hudson' GROUP BY yr HAVING COUNT(title) > 2

SELECT title, name FROM movie, casting, actor WHERE casting.movieid=movie.id AND casting.actorid=actor.id AND casting.ord=1 AND casting.movieid IN(SELECT movieid FROM casting, actor WHERE actorid=actor.id AND name='Julie Andrews')

SELECT actor.name FROM actor JOIN casting ON (actor.id = casting.actorid AND (SELECT COUNT(casting.ord) FROM casting WHERE casting.actorid = actor.id AND casting.ord=1)>=30) GROUP BY name

SELECT title, COUNT(actorid) FROM movie JOIN casting on id=movieid WHERE yr = 1978 GROUP BY title ORDER BY COUNT(actorid) DESC, title asc

SELECT name FROM actor JOIN casting ON id=actorid WHERE movieid IN (SELECT movieid FROM casting JOIN actor ON (actorid=id AND name='Art Garfunkel')) AND name != 'Art Garfunkel'
