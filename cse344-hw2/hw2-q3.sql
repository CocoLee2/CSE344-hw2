-- hw2-q3.sql
-- Number of rows in the query result: 1

SELECT WEEKDAYS.day_of_week AS day_of_week, AVG(arrival_delay) AS delay
FROM FLIGHTS
JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
GROUP BY WEEKDAYS.day_of_week
ORDER BY AVG(arrival_delay) DESC
LIMIT 1;