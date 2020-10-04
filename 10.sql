-- write a SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.
Select (name)
From (SELECT DISTINCT person_id
    FROM ratings
    INNER JOIN directors on ratings.movie_id = directors.movie_id
    WHERE rating >= 9) goodDirectors
LEFT JOIN people on people.id = goodDirectors.person_id