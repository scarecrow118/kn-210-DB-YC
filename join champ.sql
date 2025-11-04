SELECT 
    ch.id AS Championship_ID,
    ch.champ_name AS Championship_Name,
    ch.champ_year AS Year,
    COUNT(r.id) AS Race_Count
FROM Championships AS ch
LEFT JOIN Races AS r
    ON ch.id = r.championship_id
GROUP BY ch.champ_name;