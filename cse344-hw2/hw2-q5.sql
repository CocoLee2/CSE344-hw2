-- hw2-q5.sql
-- Number of rows in the query result: 6

SELECT C.name AS name, 
       (SUM(CASE WHEN F.canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS percentage
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE F.origin_city = 'Seattle WA'
GROUP BY C.name
HAVING SUM(CASE WHEN F.canceled = 1 THEN 1 ELSE 0 END) > 0.005 * COUNT(*)
ORDER BY percentage ASC;
