--Hacker Rank
--Weather Observation Station
--MS Sql Server

--1. Query a list of CITY and STATE from the STATION table.
SELECT city, 
       state 
FROM   station; 

--2. Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.
SELECT DISTINCT city 
FROM   station 
WHERE  ( id % 2 ) = 0; 

--3. Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION; query the value of N - N' from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT Count(city) - Count(DISTINCT city) 
FROM   station; 

--4. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT TOP 1 city, 
             Len(city) 
FROM   station 
GROUP  BY city 
HAVING Len(city) = Max(Len(city)) 
ORDER  BY Len(city) DESC, 
          city DESC; 

SELECT TOP 1 city, 
             Len(city) 
FROM   station 
GROUP  BY city 
HAVING Len(city) = Max(Len(city)) 
ORDER  BY Len(city), 
          city; 

--5. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT distinct city 
FROM   station 
WHERE  city LIKE 'a%' 
        OR city LIKE 'e%' 
        OR city LIKE 'i%' 
        OR city LIKE 'o%' 
        OR city LIKE 'u%' 

--6. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city LIKE '%a' 
        OR city LIKE '%e' 
        OR city LIKE '%i' 
        OR city LIKE '%o' 
        OR city LIKE '%u'
		
--7. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city LIKE '[aeiou]%[aeiou]'

--8. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city NOT LIKE '[aeiou]%' 

--9. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city NOT LIKE '%[aeiou]' 

--10. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city NOT LIKE '[aeiou]%[aeiou]' 

--11. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT city 
FROM   station 
WHERE  city NOT LIKE '[aeiou]%' 
       AND city NOT LIKE '%[aeiou]'

