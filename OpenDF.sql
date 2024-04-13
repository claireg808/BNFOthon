-- create dataframe with new columns DOOR-OPEN and DOOR-CLOSED
-- with row values of the time of each action

SELECT
    Date,
    Location,
    CONCAT(LEFT("DOOR-OPEN", 2), ':00') AS "DOOR-OPEN"
FROM (
    SELECT
        Date,
        Location,
        Status,
        Time AS "DOOR-OPEN"
    FROM
        DF
)
WHERE "DOOR-OPEN" IS NOT NULL;