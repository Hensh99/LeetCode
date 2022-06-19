# Write your MySQL query statement below

SELECT S.id, visit_date, people
FROM Stadium AS S
WHERE (
    S.people >= 100 AND 
    (
       (SELECT people FROM Stadium WHERE id = S.id-1) >= 100 AND  
       (SELECT people FROM Stadium WHERE id = S.id+1) >= 100  
        OR 
       (SELECT people FROM Stadium WHERE id = S.id-1) >= 100 AND  
       (SELECT people FROM Stadium WHERE id = S.id-2) >= 100 
        OR 
       (SELECT people FROM Stadium WHERE id = S.id+1) >= 100 AND  
       (SELECT people FROM Stadium WHERE id = S.id+2) >= 100  
    )
)