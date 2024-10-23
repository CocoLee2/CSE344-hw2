-- hw2-q8.sql
-- Number of rows in the query result: 22

SELECT C.name, SUM(F.departure_delay) AS delay
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
GROUP BY C.name;
