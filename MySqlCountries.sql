-- QUERY 1
SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language="Slovene"
ORDER BY languages.percentage DESC;

-- QUERY 2
SELECT countries.name, COUNT(cities.id) AS city_count
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.id;

-- QUERY 3
SELECT cities.name, cities.population, cities.country_id
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name="Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

-- QUERY 4
SELECT countries.name, languages.language, languages.percentage 
FROM languages
JOIN countries ON countries.id = languages.country_id
WHERE percentage > 89
ORDER BY percentage DESC;

-- QUERY 5
SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 AND population > 100000;

-- QUERY 6
SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form="Constitutional Monarchy" AND capital > 200 AND life_expectancy > 75;

-- QUERY 7
SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON countries.id = cities.country_id
WHERE cities.population > 500000 AND countries.name="Argentina" AND cities.district="Buenos Aires";

-- QUERY 8
SELECT countries.region, COUNT(countries.id) AS countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;
