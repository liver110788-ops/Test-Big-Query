WITH GenreCounts AS (

SELECT
    genre_1,
    genre_2,
    COUNT(original_title) AS title_count

FROM `test-data-analyst-123456.the_movie_database.movies`

GROUP BY
    genre_1,
    genre_2

),

RankedGenres AS (

SELECT
    genre_1,
    genre_2,
    title_count,

    ROW_NUMBER() OVER(
        PARTITION BY genre_1
        ORDER BY title_count DESC
    ) AS rwnb

FROM GenreCounts

)

SELECT
    genre_1,
    genre_2,
    title_count

FROM RankedGenres

WHERE rwnb <= 3
