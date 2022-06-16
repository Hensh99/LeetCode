# Write your MySQL query statement below

SELECT T.request_at AS 'Day', 
ROUND(SUM(CASE WHEN T.status IN ('cancelled_by_driver','cancelled_by_client') 
          THEN 1 ELSE 0 END) / COUNT(*),2) AS 'Cancellation Rate'
FROM Trips T
LEFT JOIN Users U1 ON T.client_id = U1.users_id
LEFT JOIN Users U2 ON T.driver_id = U2.users_id
WHERE U1.banned = 'No' AND U2.banned = 'No' 
AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY T.request_at;