-- hw2-q7.sql
-- Number of rows in the query result: 1

SELECT SUM(capacity) AS capacity
FROM FLIGHTS
JOIN MONTHS ON FLIGHTS.month_id = MONTHS.mid
WHERE (origin_city = 'Seattle WA' AND dest_city = 'San Francisco CA')
   OR (origin_city = 'San Francisco CA' AND dest_city = 'Seattle WA')
   AND MONTHS.month = 'July'
   AND day_of_month = 10;
