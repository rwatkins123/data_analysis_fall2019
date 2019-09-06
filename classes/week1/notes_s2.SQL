-- Aggregations ------------------------------------------------------------------------------------

SELECT country, count(*) as num_recs
FROM employees
GROUP BY country;

SELECT country, count(*) as num_recs
FROM employees
WHERE total_worth > 30
GROUP BY country;

-- HAVING: like a where clause, but after the aggregation
SELECT country, count(*) as num_recs
FROM employees
WHERE total_worth > 30
GROUP BY country
HAVING num_recs > 75;



-- JOINS: how to link data from multiple tables together. ------------------------------------------

SELECT *
FROM country_master

SELECT *
FROM continent_master

SELECT *
FROM country_master as ct
    INNER JOIN continent_master as cn
        ON cn.name = ct.continent

SELECT
    e.first_name,
    e.last_name,
    e.company,
    ct.population as pop_country,
    cn.population as pop_cont
FROM employees as e
    INNER JOIN country_master as ct
        ON ct.country = e.country
    INNER JOIN continent_master as cn
        ON cn.name = ct.continent
LIMIT 100;

SELECT cn.name, count(*) as num_recs
FROM employees as e
    INNER JOIN country_master as ct
        ON ct.country = e.country
    INNER JOIN continent_master as cn
        ON cn.name = ct.continent
GROUP BY cn.name;


-- Types of Joins: the direction specifies how the tables connect ----------------------------------

-- INNER: keep only matching records, based on JOIN criteria.
SELECT *
FROM country_master as ct
    INNER JOIN continent_master as cn
        ON cn.name = ct.continent

-- JOIN Criteria is kind of like a mini WHERE clause
SELECT *
FROM continent_master as cm1
    INNER JOIN continent_master as cm2
        ON cm1.name != cm2.name

-- LEFT JOIN: keep non-matching records from the source table
SELECT *
FROM continent_master as cn
    LEFT JOIN country_master as ct
        ON cn.name = ct.continent


-- RIGHT JOIN: keep non-matching records from the joining table
-- NOTE: currently SQLite does not support RIGHT JOINS, so this block can't
-- be run in your SQL environment.
SELECT *
FROM country_master as ct
    RIGHT JOIN continent_master as cn
        ON cn.name = ct.continent


-- CROSS: match all records to all records, produces all possible combinations
-- WARNING: be careful with this one, numbers can add up very quickly.
SELECT *
FROM country_master as ct
    CROSS JOIN continent_master as cn
