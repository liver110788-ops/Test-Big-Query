SELECT
    original_title,
    budget,
    revenue,
    revenue - budget AS difference
FROM `test-data-analyst-123456.the_movie_database.movies`
WHERE budget < revenue
  AND revenue > 0
