-- hw2-q6.sql
-- Number of rows in the query result: 3

SELECT C.name AS carrier, MAX(F.price) AS max_price
FROM FLIGHTS AS F
JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'New York NY')
   OR (F.origin_city = 'New York NY' AND F.dest_city = 'Seattle WA')
GROUP BY C.name;
