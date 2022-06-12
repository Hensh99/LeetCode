# Write your MySQL query statement below

SELECT DISTINCT(num) AS 'ConsecutiveNums'
FROM Logs
WHERE (Id + 1, Num) IN (SELECT * FROM Logs) AND (Id + 2, num) IN (SELECT * FROM Logs);