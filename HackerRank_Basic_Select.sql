--Hacker Rank Solution
--Basic Select
--MS SQL Server

--1. Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
SELECT * 
FROM   city 
WHERE  countrycode = 'USA' 
       AND population > 100000;

--2. Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.
SELECT NAME 
FROM   city 
WHERE  countrycode = 'USA' 
       AND population > 120000; 

--3. Query all columns (attributes) for every row in the CITY table.
SELECT * 
FROM   city; 

--4. Query all columns for a city in CITY with the ID 1661.
SELECT * 
FROM   city 
WHERE  id = '1661' 

--5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * 
FROM   city 
WHERE  countrycode = 'JPN' 

--6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME 
FROM   city 
WHERE  countrycode = 'JPN'

