-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time.
 -- There are only two cities she could be flying to in the country. One is named the same as the country – that
 -- would be too obvious. We're following our gut on this one; find out what other city in that country she might
 --  be flying to.
SELECT name from city
    WHERE countrycode IN (
        SELECT code FROM country
        WHERE code IN (
        SELECT countrycode FROM countrylanguage WHERE language IN (SELECT language FROM countrylanguage
        WHERE countrycode IN (SELECT code FROM country
        WHERE region = 'Southern Europe'
        AND (population IN (SELECT MIN(population) FROM country WHERE region = 'Southern Europe'))))
        AND percentage = 100
    )) AND name <> 'San Marino';