SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population > 200000000

SELECT name, (gdp/population) from world where population > 200000000

SELECT name, (population/1000000) FROM world WHERE continent = 'South America'

SELECT name, population FROM world where name in ('France', 'Germany', 'Italy')

SELECT name FROM world WHERE name like '%United%'

SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000

SELECT name, population, area FROM world WHERE area > 3000000 XOR population > 250000000

SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)  as population FROM world WHERE continent = 'South America'

SELECT name, ROUND(gdp/population, -3) as gdp FROM world where gdp > 1000000000000

SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital)

SELECT name, capital FROM world WHERE LEFT(name,1) = LEFT(capital, 1) and name <> capital

SELECT name FROM world WHERE name LIKE '%a%' and name LIKE '%e%' and name LIKE '%i%' and name LIKE '%o%' and name LIKE '%u%' AND name NOT LIKE '% %'

