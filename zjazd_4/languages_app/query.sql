SELECT city.district, SUM(city.population)
FROM city
JOIN country ON country.code = city.countrycode
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE countrylanguage.language = 'Polish' AND countrylanguage.isofficial = true
GROUP BY city.district
ORDER BY SUM(city.population) DESC;
