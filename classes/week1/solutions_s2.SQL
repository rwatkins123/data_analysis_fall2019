-- In-Class Exercises
-- Please use the "company_employees_plus.db" database to answer all questions.

/*
Which counry accounts for the highest percentage of the population of the continent
it sits on?
*/
SELECT country, ((ct.population * 1.0) / cn.population) as pop_ratio
FROM country_master ct
    INNER JOIN continent_master cn ON cn.name = ct.continent
ORDER BY pop_ratio DESC
LIMIT 1;


/*
How many records on the employee table contain a country where we do not
have any information on the country_master table?
*/
SELECT count(*)
FROM employees e
    LEFT JOIN country_master c ON c.country = e.country
WHERE c.country is NULL;


/*
Produce a dataset of all employees located in Africa, grouped by the company they
work for. Include the company name, the number of employees, and the average
total_worth for those employees. Put them in descending order by the number of
employees. Include only companies with more than 1 employee in Africa.
*/
SELECT
    e.company,
    count(*) as num_employees,
    avg(e.total_worth) as mean_worth
FROM employees e
    INNER JOIN country_master c ON c.country = e.country
WHERE c.continent = 'Africa'
GROUP BY e.company
HAVING count(*) > 1
ORDER BY num_employees DESC;
