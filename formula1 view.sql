DROP VIEW IF EXISTS Race_Tyres_View;

CREATE VIEW Race_Tyres_View AS
SELECT  
    r.race_number,
    r.race_name AS Race,
    c.car_name AS Car,
    d.driver_name AS Driver,
    t.tyre_type AS Tyre,
    r.race_weather AS Weather
FROM Results AS res
JOIN Races AS r ON res.race_id = r.id
JOIN Cars AS c ON res.car_id = c.id
JOIN Drivers AS d ON res.driver_id = d.id
JOIN Tyres AS t ON res.tyre_id = t.id;