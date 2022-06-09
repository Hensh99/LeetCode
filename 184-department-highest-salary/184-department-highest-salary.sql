# Write your MySQL query statement below

SELECT D.name AS Department, E.name AS Employee, E.salary AS Salary
FROM Employee E
LEFT JOIN Department D ON D.id = E.departmentId
WHERE E.salary = (SELECT MAX(salary) FROM Employee
                  GROUP BY departmentId
                  HAVING departmentId = E.departmentId);