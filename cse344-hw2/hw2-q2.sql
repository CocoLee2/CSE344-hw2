-- hw2-q2.sql
-- Number of rows in the query result: 1472

SELECT C.name AS name,
       F1.flight_num AS f1_flight_num,
       F1.origin_city AS f1_origin_city,
       F1.dest_city AS f1_dest_city,
       F1.actual_time AS f1_actual_time,
       F2.flight_num AS f2_flight_num,
       F2.origin_city AS f2_origin_city,
       F2.dest_city AS f2_dest_city,
       F2.actual_time AS f2_actual_time,
       (F1.actual_time + F2.actual_time) AS actual_time
FROM FLIGHTS AS F1
JOIN FLIGHTS AS F2 ON F1.carrier_id = F2.carrier_id AND F1.month_id = F2.month_id AND F1.day_of_month = F2.day_of_month
JOIN CARRIERS AS C ON F1.carrier_id = C.cid
JOIN MONTHS ON F1.month_id = MONTHS.mid
WHERE F1.origin_city = 'Seattle WA'
  AND F2.dest_city = 'Boston MA'
  AND F1.dest_city = F2.origin_city
  AND MONTHS.month = 'July'
  AND F1.day_of_month = 15
  AND (F1.actual_time + F2.actual_time) < 420;