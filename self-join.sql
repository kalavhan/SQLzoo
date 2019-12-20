SELECT COUNT(*) FROM stops;

SELECT id FROM stops WHERE name = 'Craiglockhart';

SELECT id, name FROM route JOIN stops ON stops.id = route.stop WHERE num = 4 AND company = 'LRT'

SELECT company, num, count(*) FROM route WHERE stop IN (149, 53) GROUP BY company, num HAVING COUNT(*) = 2;

SELECT r1.company, r1.num, r1.stop, r2.stop FROM route AS r1 JOIN route AS r2 ON (r1.company = r2.company) AND (r1.num = r2.num) WHERE r1.stop = 53 AND r2.stop = 149;

SELECT r1.company, r1.num, s1.name, s2.name FROM route AS r1 JOIN route AS r2 ON (r1.company, r1.num) = (r2.company, r2.num) JOIN stops AS s1 ON r1.stop = s1.id JOIN stops AS s2 ON r2.stop = s2.id WHERE s1.name = 'Craiglockhart' AND s2.name = 'London Road';

SELECT DISTINCT r1.company, r2.num FROM route AS r1 JOIN route AS r2 ON (r1.company, r1.num) = (r2.company, r2.num) WHERE r1.stop = 115 AND r2.stop = 137;

SELECT r1.company, r1.num FROM route AS r1 JOIN route AS r2 ON (r1.company, r1.num) = (r2.company, r2.num) JOIN stops AS s1 ON r1.stop = s1.id JOIN stops AS s2 ON r2.stop = s2.id WHERE s1.name = 'Craiglockhart' AND s2.name = 'Tollcross';

SELECT s2.name, r1.company, r1.num FROM route AS r1 JOIN route AS r2 ON (r1.company, r1.num) = (r2.company, r2.num) JOIN stops AS s1 ON r1.stop = s1.id JOIN stops AS s2 ON r2.stop = s2.id WHERE s1.name = 'Craiglockhart';
