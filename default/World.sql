
USE WORLD;

SELECT * FROM CITY WHERE CountryCode = 'jpn';

SELECT * FROM COUNTRY INNER JOIN city c on country.Code = c.CountryCode where country.Name = 'Ghana' ;

select  * from country where country.Name = 'United Kingdom';

SELECT  Continent from country ;



   SELECT CITY.NAME,CountryCode ,CITY.Population ,CONTINENT  FROM CITY INNER JOIN country on city.CountryCode = country.Code WHERE country.Name ='Ghana';