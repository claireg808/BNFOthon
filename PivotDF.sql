SELECT
    "DOOR-OPEN",
    COUNT(CASE WHEN Location = 'CaryBelvidereChilis' THEN "DOOR-OPEN" END) AS CarBelvidereChilis_frequency,
    COUNT(CASE WHEN Location = 'CaryStGym' THEN "DOOR-OPEN" END) AS CaryStGym_frequency,
    COUNT(CASE WHEN Location = 'Engineering' THEN "DOOR-OPEN" END) AS Engineering_frequency,
    COUNT(CASE WHEN Location = 'Gateway' THEN "DOOR-OPEN" END) AS Gateway_frequency,
    COUNT(CASE WHEN Location = 'Harris' THEN "DOOR-OPEN" END) AS Harris_frequency,
    COUNT(CASE WHEN Location = 'HealthScience' THEN "DOOR-OPEN" END) AS HealthScience_frequency,
    COUNT(CASE WHEN Location = 'Larrick' THEN "DOOR-OPEN" END) AS Larrick_frequency,
    COUNT(CASE WHEN Location = 'MCALCLobby' THEN "DOOR-OPEN" END) AS MCALCLobby_frequency,
    COUNT(CASE WHEN Location = 'McGlothian' THEN "DOOR-OPEN" END) AS McGlothian_frequency,
    COUNT(CASE WHEN Location = 'MonroeParkLibrary' THEN "DOOR-OPEN" END) AS MonroeParkLibrary_frequency,
    COUNT(CASE WHEN Location = 'PaceCenter' THEN "DOOR-OPEN" END) AS PaceCenter_frequency,
    COUNT(CASE WHEN Location = 'SneadHall' THEN "DOOR-OPEN" END) AS SneadHall_frequency,
    COUNT(CASE WHEN Location = 'UniversityCommons' THEN "DOOR-OPEN" END) AS UniversityCommons_frequency
FROM
    OpenDF
GROUP BY
    "DOOR-OPEN"
ORDER BY
    "DOOR-OPEN" ASC;