-- SubQueries: use the result of one query like it's a table in another ----------------------------

SELECT
    ct.country, ct.continent, ct.population, cn.population,
    (ct.population * 1.0) / cn.population as pop_ratio
FROM country_master ct
    INNER JOIN continent_master cn
        ON cn.name = ct.continent


SELECT
    e.gender,
    count(*) as num_recs,
    sum(total_worth) as total_worth,
    avg(total_worth) as mean_worth
FROM employees e
    INNER JOIN (
        SELECT
            ct.country, ct.continent, ct.population, cn.population,
            (ct.population * 1.0) / cn.population as pop_ratio
        FROM country_master ct
            INNER JOIN continent_master cn
                ON cn.name = ct.continent
    ) as sq
WHERE sq.pop_ratio > 0.03
    AND e.gender is NOT NULL
GROUP BY e.gender
ORDER BY total_worth DESC;


-- A Sub-Query can also be used with an "in" statement if it has 1 column.
SELECT ct.country
     as pop_ratio
FROM country_master ct
    INNER JOIN continent_master cn
        ON cn.name = ct.continent
WHERE ((ct.population * 1.0) / cn.population) < 0.03;


SELECT
    e.gender,
    count(*) as num_recs,
    sum(total_worth) as total_worth,
    avg(total_worth) as mean_worth
FROM employees e
WHERE e.country in (
    SELECT ct.country
         as pop_ratio
    FROM country_master ct
        INNER JOIN continent_master cn
            ON cn.name = ct.continent
    WHERE ((ct.population * 1.0) / cn.population) < 0.03
)
GROUP BY e.gender
