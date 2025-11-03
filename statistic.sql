SELECT 
    r.race_name AS Race_Name,
    t.track_name AS Track_Name,
    COUNT(t.id) AS Track_Count, 
    MAX(res.result_score) AS Max_Result,
    c.car_name AS Car_Name,
    c.car_number AS Car_Number,
    d.driver_name AS Driver_Name,
    d.driver_number AS Driver_Number,
    te.team_name AS Team_Name
FROM Races AS r
JOIN Tracks AS t
    ON r.track_id = t.id
JOIN Results AS res
    ON r.id = res.race_id
JOIN Cars AS c
    ON res.car_id = c.id
JOIN Drivers AS d
    ON res.driver_id = d.id
JOIN Teams AS te
    ON c.team_id = te.id
GROUP BY 
    r.id, r.race_name, t.track_name, 
    c.car_name, c.car_number, 
    d.driver_name, d.driver_number, te.team_name
    ORDER BY Max_Result;