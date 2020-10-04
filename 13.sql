-- write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.
-- -- Your query should output a table with a single column for the name of each person.
-- -- There may be multiple people named Kevin Bacon in the database. Be sure to only select the Kevin Bacon born in 1958.
-- -- Kevin Bacon himself should not be included in the resulting list.
SELECT DISTINCT count(name) FROM (SELECT movie_id, person_id
FROM stars
JOIN people on people.id = stars.person_id
WHERE name = 'Kevin Bacon' and birth = '1958') kevinmovies
INNER JOIN stars on stars.movie_id = kevinmovies.movie_id
LEFT JOIN people on stars.person_id = people.id
WHERE stars.person_id != kevinmovies.person_id
ORDER BY stars.movie_id ASC
