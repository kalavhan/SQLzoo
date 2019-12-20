SELECT yr, subject, winner FROM nobel WHERE yr = 1950

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature'

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein'

SELECT winner FROM nobel WHERE subject = 'Peace' and yr>=2000

SELECT * FROM nobel where subject = 'Literature' and yr>=1980 and yr<= 1989

SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

SELECT winner FROM nobel WHERE winner like 'John%'

SELECT * FROM nobel WHERE (subject = 'Physics' AND yr = '1980') OR (subject = 'Chemistry' AND yr = 1984)

SELECT * FROM nobel WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

SELECT * FROM nobel WHERE (subject  = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)

SELECT * FROM nobel WHERE winner LIKE 'peter gr%nberg'

SELECT * FROM nobel WHERE winner = 'Eugene O''Neill'

SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'sir%' ORDER BY yr DESC, winner

SELECT winner, subject FROM nobel WHERE yr=1984 ORDER BY subject IN ('Physics','Chemistry'),subject,winner

