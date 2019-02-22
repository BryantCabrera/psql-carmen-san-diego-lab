-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards
 -- the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll
 -- follow right behind you!
SELECT localname FROM country
    WHERE code IN (SELECT countrycode FROM city
    WHERE name LIKE 'Serra%'
    AND countrycode IN (SELECT code FROM country WHERE continent = 'South America'));