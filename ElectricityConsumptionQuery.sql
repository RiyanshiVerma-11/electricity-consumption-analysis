CREATE DATABASE electricity_db;
USE electricity_db;

show tables;
SELECT COUNT(*) FROM consumption;

SELECT * FROM consumption LIMIT 10;

SELECT States, SUM(Power_Usage) AS total_usage
FROM consumption
GROUP BY States
ORDER BY total_usage DESC;

SELECT DATE_FORMAT(Dates, '%Y-%m') AS month,
       SUM(Power_Usage) AS total_usage
FROM consumption
GROUP BY month
ORDER BY month;

SELECT Regions, SUM(Power_Usage) AS total_usage
FROM consumption
GROUP BY Regions
ORDER BY total_usage DESC;

SELECT States, Dates, Power_Usage
FROM consumption
ORDER BY Power_Usage DESC
LIMIT 10;

SELECT YEAR(Dates) AS year,
       SUM(Power_Usage) AS total_usage
FROM consumption
GROUP BY year
ORDER BY year;

SELECT States,
       AVG(Power_Usage) AS avg_usage
FROM consumption
GROUP BY States
ORDER BY avg_usage DESC;

SELECT States,
       SUM(Power_Usage) AS total_usage
FROM consumption
GROUP BY States
ORDER BY total_usage DESC
LIMIT 5;

DESCRIBE consumption;
