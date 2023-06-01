/*1.Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
--and their respective average city populations (CITY.Population) rounded down to the nearest integer.*/
SELECT country.continent,FLOOR(avg(city.population))
FROM country
JOIN city
ON country.code=city.countrycode
GROUP BY country.continent;

/*2.Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/
SELECT SUM(city.population)
FROM city
JOIN country
ON city.countrycode=country.code
WHERE country.continent='asia';

/*3.Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/
SELECT city.name
FROM city
JOIN country
ON city.countrycode=country.code
WHERE country.continent='africa';

/*4.Query all columns for all American cities in the CITY table
 with populations larger than 100000. The CountryCode for America is USA.*/
 SELECT *
FROM city
WHERE countrycode='usa'AND population>100000;

/*5.Query all columns (attributes) for every row in the CITY table.*/
SELECT *
FROM city;

/*6.Query all columns for a city in CITY with the ID 1661.*/
SELECT *
FROM city 
WHERE id =1661;

/*7.Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.*/
SELECT *
FROM city
WHERE countrycode='jpn';

/*8.Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN*/
SELECT name 
FROM city
WHERE countrycode='jpn';

/*9.Find the difference between the total number of CITY entries in the table
 and the number of distinct CITY entries in the table.*/
SELECT COUNT(city)-COUNT(DISTINCT city)
FROM station;

/*10.Query a count of the number of cities in CITY
 having a Population larger than 100,000*/
SELECT COUNT(name)
FROM city
WHERE population>100000;

/*11. Query the average population of all cities in CITY
 where District is California.*/
SELECT AVG(population)
FROM city
WHERE district ='california';

/*12. Query the difference between the maximum and minimum populations in CITY.*/
SELECT MAX(population)- MIN(population)
FROM CITY;

/*13.Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
 Your result cannot contain duplicates.*/
 SELECT DISTINCT(city)
FROM station
WHERE city LIKE 'a%' OR city LIKE 'e%' OR city LIKE 'i%' OR city LIKE 'o%' OR city LIKE 'u%'
ORDER BY city ASC;

/*14. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.*/
SELECT DISTINCT city
FROM station
WHERE (city LIKE 'a%' OR city LIKE 'e%' OR city LIKE 'i%' OR city LIKE 'o%' OR city LIKE 'u%') AND (city LIKE '%a' OR CITY LIKE '%e' OR city LIKE '%i' OR city LIKE '%o' OR city LIKE '%u')
order by city;

/*15. Write a query that prints a list of employee names
 (i.e.: the name attribute) from the Employee table in alphabetical order.*/
SELECT name 
FROM employee
ORDER BY name;   

/*16. Query the Name of any student in STUDENTS who scored higher than 75  Marks.
 Order your output by the last three characters of each name.
 If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/
 SELECT name
 FROM students 
 WHERE marks > 75 
 ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id; 
 
 /*17.Write a query that prints a list of employee names (i.e.: the name attribute)
 for employees in Employee having a salary greater than %2000 per month
 who have been employees for less than 10  months. 
 Sort your result by ascending employee_id.*/
SELECT name
FROM employee
WHERE salary > 2000  AND months < 10 
ORDER BY employee_id;

/*18.Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.*/
SELECT DISTINCT city
FROM station
WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U') AND lower(SUBSTR(CITY,1,1)) NOT IN
('a','e','i','o','u');     

/*19.Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.*/
SELECT DISTINCT city
FROM station
WHERE UPPER(SUBSTR(city, LENGTH(city), 1)) NOT IN ('A','E','I','O','U') AND LOWER(SUBSTR(city, LENGTH(city),1)) NOT IN ('a','e','i','o','u');    

/*20.Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.*/
SELECT DISTINCT city
FROM station
WHERE LOWER(SUBSTR(city,1,1)) NOT IN ('a','e','i','o','u') AND LOWER(SUBSTR(city,LENGTH(city),1)) NOT IN ('a','e','i','o','u');   