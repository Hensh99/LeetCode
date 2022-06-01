# Write your MySQL query statement below

SELECT * FROM (
    SELECT employee_id FROM employees e LEFT JOIN salaries s USING(employee_id)
    WHERE salary IS NULL
UNION
SELECT employee_id 
    FROM salaries s LEFT JOIN employees e USING(employee_id)
    WHERE name IS NULL) a ORDER BY employee_id