-- write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.
Select title
From (SELECT title, count(movie_id) as count
FROM movies
INNER JOIN stars on stars.movie_id = movies.id
INNER JOIN people on stars.person_id = people.id
WHERE name IN ('Johnny Depp','Helena Bonham Carter')
GROUP BY movie_id)
WHERE count = 2
