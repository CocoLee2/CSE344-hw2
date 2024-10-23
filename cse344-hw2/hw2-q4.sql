-- hw2-q4.sql
-- Number of rows in the query result: 12

SELECT DISTINCT C.name
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
GROUP BY C.name, F.month_id, F.day_of_month
HAVING COUNT(*) > 1000;