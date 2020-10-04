-- Write a SQL query to list the names of all people who starred in Toy Story.
-- -- Your query should output a table with a single column for the name of each person.
-- -- You may assume that there is only one movie in the database with the title Toy Story.
SELECT name
From Movies
JOIN stars on stars.movie_id = movies.id
JOIN people on people.id = stars.person_id
WHERE title = 'Toy Story'