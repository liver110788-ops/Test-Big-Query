SELECT
    genres,
    ROUND(AVG(runtime), 2) AS avg_runtime
FROM `test-data-analyst-123456.the_movie_database.movies`
WHERE runtime > 0
GROUP BY genres
