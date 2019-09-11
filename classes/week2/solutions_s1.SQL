-- In-Class Exercises
-- Please use the "company_employees_plus.db" database to answer all questions.

/*
Breakdown the number of people by gender who work for a company with more than
1 person in the set, and who's total_worth is more than 5% over the average of
all employees.
*/
SELECT
    e.gender,
    count(*) as num_people
FROM employees e
    INNER JOIN (
        SELECT e.company, count(*) as num_people
        FROM employees e
        GROUP BY e.company
    ) as comp ON comp.company = e.company
WHERE comp.num_people > 1
    AND e.total_worth > (SELECT avg(total_worth) * 1.05 FROM employees)
GROUP BY e.gender;


/*
Produce a dataset of all employees who are management, female, and have a higher
than country average worth. Include in this dataset the id, name, and email address
of the employees, and sort the list in order by last name.
*/
SELECT e.id, e.first_name, e.last_name, e.email
FROM employees e
    INNER JOIN (
        SELECT e.country, avg(e.total_worth) as mean_worth
        FROM employees e
        GROUP BY e.country
    ) ca ON ca.country = e.country
WHERE e.gender = 'Female'
    AND e.is_management = 'true'
    AND e.total_worth > ca.mean_worth
ORDER BY e.last_name ASC;
