-- hw2-q1.sql
-- Number of rows in the query result: 3

SELECT DISTINCT flight_num
FROM FLIGHTS
JOIN CARRIERS ON FLIGHTS.carrier_id = CARRIERS.cid
JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
WHERE origin_city = 'Seattle WA' AND dest_city = 'Boston MA'
	AND name = 'Alaska Airlines Inc.' AND day_of_week = 'Monday';