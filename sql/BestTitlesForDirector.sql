#Було виведено всіх режисерів, але частина з них має максимальну виручку 0. Найімовірніше, це означає, що дані про виручку для цих фільмів відсутні. Тому було застосовано фільтр WHERE revenue > 0, щоб виключити такі записи.

WITH RankedFilms AS (
    SELECT
        director,
        original_title,
        revenue AS MaxRevenue,

        ROW_NUMBER() OVER (
            PARTITION BY director
            ORDER BY revenue DESC
        ) AS rwnb

    FROM `test-data-analyst-123456.the_movie_database.movies`

    WHERE director IS NOT NULL
      
      #AND revenue > 0
)

SELECT
    director,
    original_title,
    MaxRevenue

FROM RankedFilms

WHERE rwnb = 1
