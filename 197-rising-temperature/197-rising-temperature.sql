# Write your MySQL query statement below

SELECT W1.Id
FROM weather W1, weather W2
WHERE DATEDIFF(W1.recordDate, W2.recordDate)=1
AND W1.Temperature > W2.Temperature;