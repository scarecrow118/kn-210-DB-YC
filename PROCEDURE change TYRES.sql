DELIMITER $$

CREATE PROCEDURE change_tyres(IN race_pk INT)
BEGIN
DECLARE weather_condition VARCHAR(50);

SELECT race_weather INTO weather_condition
FROM Races
WHERE id = race_pk;
UPDATE Tyres AS t
JOIN Results AS r ON t.id = r.tyre_id
SET t.tyre_type = CASE
WHEN weather_condition = 'cloud' THEN 'medium'
WHEN weather_condition = 'rain' THEN 'hard'
WHEN weather_condition = 'sunny' THEN 'soft'
WHEN weather_condition = 'rain' THEN 'Intermediate'
WHEN weather_condition = 'rain' THEN 'Wet'
ELSE t.tyre_type
END
WHERE r.race_id = race_pk;
END $$

DELIMITER ;
