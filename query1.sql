SELECT name, population FROM country
    WHERE region = 'Southern Europe'
    AND (population IN (SELECT MIN(population) FROM country WHERE region = 'Southern Europe'));