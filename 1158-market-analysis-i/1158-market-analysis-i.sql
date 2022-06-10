# Write your MySQL query statement below

SELECT U.user_id AS 'buyer_id', U.join_date, COUNT(O.buyer_id) AS 'orders_in_2019'
FROM Users U
LEFT JOIN Orders O ON U.user_id = O.buyer_id AND YEAR(O.order_Date) = '2019'
GROUP BY U.user_id ORDER BY U.user_id ASC;