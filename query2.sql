SELECT language FROM countrylanguage
    WHERE countrycode IN (SELECT code FROM country
    WHERE region = 'Southern Europe'
    AND (population IN (SELECT MIN(population) FROM country WHERE region = 'Southern Europe')));