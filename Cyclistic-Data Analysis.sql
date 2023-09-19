--ANALYSIS

--total trips per member type --member_trips: 2662334 and casual_trips: 1709005
SELECT
    COUNT (ride_id) AS total_trips,
    SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS member_trips,
    SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS casual_trips
FROM cleaned_data 

--average ride length per member type --member: 12.55 min and casual: 23.11 min
SELECT 
	member_casual, 
	ROUND(AVG(ride_length), 2) as average_ride_length
FROM cleaned_data
GROUP BY member_casual

--bike types used per member type: both groups favor class bikes the most
SELECT member_casual, rideable_type, COUNT(*) as count_bike_types
FROM cleaned_data
GROUP BY member_casual, rideable_type
ORDER BY  member_casual, count_bike_types

--total trips ber month -- summer and fall have most rides from both groups
SELECT month, member_casual, COUNT(ride_id) as month_trips
FROM cleaned_data
GROUP BY month, member_casual
ORDER BY member_casual, month_trips DESC

--average ride length per month
SELECT 
	month,
	member_casual,
	ROUND(AVG(ride_length), 2) as avg_month_length
FROM cleaned_data
GROUP BY month, member_casual
ORDER BY member_casual, avg_month_length DESC

--busiest day for rides -- casual: preference on WEEKENDS member: preference on WEEKDAYS
SELECT
	day_of_week, member_casual, COUNT(ride_id) as day_trips
FROM cleaned_data
GROUP BY day_of_week, member_casual
ORDER BY member_casual, day_trips DESC

--average ride length per day of week --both groups riding for longer on the weekends, casual riders ride for longer
SELECT 
	day_of_week,
	member_casual,
	ROUND(AVG(ride_length), 2) as avg_day_length
FROM cleaned_data
GROUP BY day_of_week, member_casual
ORDER BY member_casual, avg_day_length DESC

--total trips per hour --more members use it in morning, but both group use around 5pm
SELECT
    DATEPART(HOUR, started_at) as hour_of_day, member_casual, COUNT(ride_id) as hour_trips
FROM cleaned_data
GROUP BY DATEPART(HOUR, started_at), member_casual
ORDER BY member_casual, hour_trips DESC;

--average ride length per hour-- casual members ride for longer
SELECT 
	DATEPART(HOUR, started_at) as hour_of_day,
	member_casual,
	ROUND(AVG(ride_length), 2) as avg_hr_length
FROM cleaned_data
GROUP BY DATEPART(HOUR, started_at), member_casual
ORDER BY member_casual, avg_hr_length DESC

--popular start stations
SELECT start_station_name,member_casual, COUNT(ride_id) as start_station_trips
FROM cleaned_data
GROUP BY start_station_name, member_casual
ORDER BY member_casual, start_station_trips DESC

--popular end stations
SELECT end_station_name,member_casual, COUNT(ride_id) as end_station_trips
FROM cleaned_data
GROUP BY end_station_name, member_casual
ORDER BY member_casual, end_station_trips DESC
