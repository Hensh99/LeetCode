# Write your MySQL query statement below

SELECT name AS Employee
FROM Employee E
WHERE salary > (SELECT salary FROM Employee M WHERE E.managerid = M.id)
