-- write a SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.
SELECT name
FROM (SELECT DISTINCT person_id
From movies
Left Join stars on movies.id = stars.movie_id
WHERE year = 2004 and person_id is not NULL) MovieStars
Left Join people on MovieStars.person_id = people.id
ORDER BY birth
