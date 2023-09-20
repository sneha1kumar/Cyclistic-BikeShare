# Cyclistic-BikeShare
Google Data Analytics Certificate Case Study

**SQL CODES:** <br>
[Data Combining.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Combining.sql) <br>
[Data Examining.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Examining.sql) <br>
[Data Cleaning.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Cleaning.sql) <br>
[Data Analysis.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Analysis.sql) <br>


**Tableau Visualizations:** <br>
[Percentage of Member Type.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Percentage%20of%20Member%20Type.png) <br>
[Average Ride Length of Member Type.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Average%20Ride%20Length%20of%20Member%20Types.png) <br>
[Bike Type Pregerences.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Bike%20Type%20Preferences.png) <br>
[Total Trips.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Total%20Trips%20of%20Bike%20Riders.png) <br>
[Avg Ride Length.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Average%20Ride%20Length%20of%20Bike%20Riders.png) <br>
[Starting Locations.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Starting%20Locations.png) <br>
[Ending Locations.png](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Ending%20Locations.png) <br>

### Scenario: 
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistice executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations. <br>

## What is Cyclistic? 
A bike-sharing company where bikes can be unlocked from one station and returned to any other station in the system anytime. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members. Moreno believes that maximizing the number of annual members will be key to future growth and has set a clear goal: Designing marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics.

## ASK
Moreno has assigned you this question to answer: How do annual members and casual riders use Cyclistic bikes differently?

Business Task: Conduct a comprehensive data analysis to highlight the distinctions in bike usage patterns and behaviors between annual members and casual riders of Cyclistic bikes.

## PREPARE

Data source: https://divvy-tripdata.s3.amazonaws.com/index.html

Made available by: Motivate International INC. under: https://www.divvybikes.com/data-license-agreement

I will identify trends from the past 12 months: June 2022 to May 2023.

Data Organization: Each file includes information for one month with the following columns: ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual

## PROCESS

Microsoft SQL Server was used to process the large volumes of data.

Each table from June 2022 to May 2023 was combined into one big file in the dataset, called BikeShare.combined_rides: [Data Combining.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Combining.sql)

Observing the data: [Data Examining.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Examining.sql) 
1. null values in each column
2. duplicate rows
3. entries longer than a day or less than a minute
4. counting each member type

Cleaning the data: [Data Cleaning.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Cleaning.sql) 

Created a new table for cleaned_data with added columns:
1. ride_length: found the difference between the ended_at and started_at columns in minutes
2. day_of_week: extracted the weekday from the started_at column using the DATEPART() function
3. month: extracted the month from the started_at column using the DATEPART() function

Rows that had null values and trips with ride lengths longer than a day and less than a minute were filtered out.

Total Rows Removed: 1,457,691 rows

## ANALYZE
Analysis: [Data Analysis.sql](https://github.com/sneha1kumar/Cyclistic-BikeShare/blob/main/Cyclistic-Data%20Analysis.sql)

Trends and Relationships:
1. Total Trips By Member Type--member_trips: 2662334 and casual_trips: 1709005
2. Average Ride Length Per Member Type--member: 12.55 min and casual: 23.11 min
Initial Findings: Members take more trips, yet casual riders are riding for longer during their trips.
3. Bike Types--both groups favor classic bikes, but some casual riders use docked_bikes
4. Total Trips Per Month--both groups use bikes more near the summer season (JUNE-AUG)
5. Avg. Ride Length Per Month--both groups use bikes for a longer period of time near the summer season
6. Total Trips Per Day--members use bikes more on the weekdays while casual riders use bikes more on the weekends
7. Avg. Ride Length Per Day--casual riders have a significant increase in ride length on the weekdays compared to annual members
8. Total Trips Per Hour--many members use bikes at 7AM-8AM and 5PM and many casual riders use bikes around 5PM
9. Avg. Ride Length Per Hour-annual members have a rather stagnant average ride length over the course of the day while casual riders tend to ride for a longer period of time during 10AM-2PM
10. Starting Locations and Ending Locations--generally near downtown and social areas for both groups

Summary:

    


   











