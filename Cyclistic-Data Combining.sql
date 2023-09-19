--COMBINING ALL THE TABLES
DROP TABLE IF EXISTS [BikeShare].[combined_rides];

CREATE TABLE [BikeShare].[combined_rides]
( ride_id nvarchar(255),
rideable_type nvarchar(50),
started_at datetime2,
ended_at datetime2,
start_station_name nvarchar(255),
start_station_id nvarchar(255),
end_station_name nvarchar(255),
end_station_id nvarchar (255),
start_lat float,
start_lng float,
end_lat float,
end_lng float,
member_casual nvarchar(50))

-- INSERT JUNE 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[june_2022]);

-- INSERT JULY 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[july_2022]);

-- INSERT AUGUST 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[august_2022]);

-- INSERT SEPTEMBER 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[september_2022]);

-- INSERT OCTOBER 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[october_2022]);

-- INSERT NOVEMBER 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[november_2022]);

-- INSERT DECEMBER 2022

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[december_2022]);

-- INSERT JANUARY 2023

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[january_2023]);

--INSERT FEBRUARY 2023

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[february_2023]);

-- INSERT MARCH 2023

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[march_2023]);

-- INSERT APRIL 2023

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[april_2023]);

--INSERT MAY 2023

INSERT INTO [BikeShare].combined_rides
(ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,
end_station_name,end_station_id,start_lat,start_lng,end_lat,end_lng,member_casual)

(SELECT ride_id,rideable_type,started_at,ended_at,start_station_name,start_station_id,end_station_name,end_station_id,
start_lat,start_lng,end_lat,end_lng,member_casual

FROM [BikeShare].[dbo].[may_2023]); 


--CROSS CHECKING
SELECT SUM (counts) AS total 

from (SELECT count(*) as counts
FROM  [BikeShare].[dbo].[june_2022]
UNION ALL
SELECT count(*) as counts
FROM [BikeShare].[dbo].[july_2022]
UNION ALL
SELECT count(*) as counts
FROM BikeShare.[dbo].[august_2022]
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.september_2022
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.october_2022
UNION ALL
SELECT count(*)as counts
FROM Bikeshare.dbo.november_2022
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.december_2022
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.january_2023
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.february_2023
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.march_2023
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.april_2023 
UNION ALL
SELECT count(*) as counts
FROM BikeShare.dbo.may_2023 ) AS counts --5059826 rows

SELECT count(*)
FROM BikeShare.combined_rides --5059826 rows
