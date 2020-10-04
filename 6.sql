-- write a SQL query to determine the average rating of all movies released in 2012.
SELECT Avg(rating) As AvgRating
FROM ratings
JOIN movies on movies.id = ratings.movie_id
WHERE year = 2012