-- DATA CLEANING
USE BikeShare;
DROP TABLE IF EXISTS cleaned_data;

-- creating new table with clean data
CREATE TABLE cleaned_data
(
    ride_id NVARCHAR(255) PRIMARY KEY,
    rideable_type NVARCHAR(50),
    started_at DATETIME2,
    ended_at DATETIME2,
	ride_length FLOAT,
    day_of_week NVARCHAR(10),
    month NVARCHAR(10),
    start_station_name NVARCHAR(255),
    end_station_name NVARCHAR(255),
    start_lat FLOAT,
    start_lng FLOAT,
    end_lat FLOAT,
    end_lng FLOAT,
    member_casual NVARCHAR(50)
);

INSERT INTO cleaned_data (
    ride_id,
    rideable_type,
    started_at,
    ended_at,
	ride_length,
    day_of_week,
    month,
    start_station_name,
    end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual) 
SELECT
    a.ride_id,
    rideable_type,
    started_at,
    ended_at,
	DATEDIFF(MINUTE, started_at, ended_at) AS ride_length,
    CASE DATEPART(WEEKDAY, started_at)
        WHEN 1 THEN 'SUN'
        WHEN 2 THEN 'MON'
        WHEN 3 THEN 'TUES'
        WHEN 4 THEN 'WED'
        WHEN 5 THEN 'THURS'
        WHEN 6 THEN 'FRI'
        WHEN 7 THEN 'SAT'
    END AS day_of_week,
    CASE DATEPART(MONTH, started_at)
        WHEN 1 THEN 'JAN'
        WHEN 2 THEN 'FEB'
        WHEN 3 THEN 'MAR'
        WHEN 4 THEN 'APR'
        WHEN 5 THEN 'MAY'
        WHEN 6 THEN 'JUN'
        WHEN 7 THEN 'JUL'
        WHEN 8 THEN 'AUG'
        WHEN 9 THEN 'SEP'
        WHEN 10 THEN 'OCT'
        WHEN 11 THEN 'NOV'
        WHEN 12 THEN 'DEC'
    END AS month,
    start_station_name,
    end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM [BikeShare].[combined_rides] a

WHERE
    start_station_name IS NOT NULL
    AND end_station_name IS NOT NULL
    AND end_lat IS NOT NULL
    AND end_lng IS NOT NULL
    AND DATEDIFF(MINUTE, started_at, ended_at) > 1
    AND DATEDIFF(MINUTE, started_at, ended_at) < 1440;

SELECT COUNT(ride_id) AS no_of_rows       -- returned 4,371,339 rows so 1,457,691 rows removed
FROM cleaned_data; 


