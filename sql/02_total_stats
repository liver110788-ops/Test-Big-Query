#Нульову виручку було виключено з розрахунку середнього значення, оскільки вона, ймовірно, означає відсутність даних. Для цього використано NULLIF(revenue, 0), що дозволило не змінювати кількість title.




SELECT
    genres,

    COUNT(*) AS title_count,

    ROUND(AVG(budget), 2) AS avg_budget,

    ROUND(AVG(NULLIF(revenue, 0)), 2) AS avg_revenue

FROM `test-data-analyst-123456.the_movie_database.movies`

GROUP BY genres
