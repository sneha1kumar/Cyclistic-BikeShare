-- EXAMINING THE DATA
USE BikeShare
--null values in each column
SELECT COUNT(*) - COUNT(ride_id) ride_id, --0 null values
 COUNT(*) - COUNT(rideable_type) rideable_type, --0 null values
 COUNT(*) - COUNT(started_at) started_at, --0 null values
 COUNT(*) - COUNT(ended_at) ended_at, --0 null values
 COUNT(*) - COUNT(start_station_name) start_station_name, --834545 null values
 COUNT(*) - COUNT(start_station_id) start_station_id, --834677 null values
 COUNT(*) - COUNT(end_station_name) end_station_name, --891757 null values
 COUNT(*) - COUNT(end_station_id) end_station_id, --891898 null values**
 COUNT(*) - COUNT(start_lat) start_lat, --0 null values
 COUNT(*) - COUNT(start_lng) start_lng, --0 null values
 COUNT(*) - COUNT(end_lat) end_lat, --5961 null values
 COUNT(*) - COUNT(end_lng) end_lng, --5969 null values
 COUNT(*) - COUNT(member_casual) member_casual --0 null values
FROM BikeShare.combined_rides;

--duplicate rows
SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM BikeShare.combined_rides --0 duplicate rows

-- started_at, ended_at

SELECT COUNT(*) AS longer_than_a_day
FROM BikeShare.combined_rides
WHERE (DATEDIFF(DAY, started_at, ended_at) > 1); --1587 rows

SELECT COUNT(*) AS less_than_a_minute
FROM BikeShare.combined_rides
WHERE (DATEDIFF(SECOND, started_at, ended_at) < 60); --145973 rows

--counting each member type
SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_rides
FROM BikeShare.combined_rides
GROUP BY member_casual; --member: 3516957 and casual: 2312073