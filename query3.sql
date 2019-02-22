-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on
-- to a different country, a country where people speak only the language she was learning. Find out which
--  nearby country speaks nothing but that language.
SELECT name FROM country
    WHERE code IN (
        SELECT countrycode FROM countrylanguage
            WHERE language IN 
                (SELECT language FROM countrylanguage
                    WHERE countrycode IN 
                        (SELECT code FROM country
                            WHERE region = 'Southern Europe'
                            AND (population IN (SELECT MIN(population) FROM country WHERE region = 'Southern Europe'))))
            AND percentage = 100
    );