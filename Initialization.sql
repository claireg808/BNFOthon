-- Combining all given files
-- And adding a column to correspond to location

DROP TABLE IF EXISTS temp1;
DROP TABLE IF EXISTS temp2;
DROP TABLE IF EXISTS temp3;
DROP TABLE IF EXISTS temp4;
DROP TABLE IF EXISTS temp5;
DROP TABLE IF EXISTS temp6;
DROP TABLE IF EXISTS temp7;
DROP TABLE IF EXISTS temp8;
DROP TABLE IF EXISTS temp9;
DROP TABLE IF EXISTS temp10;
DROP TABLE IF EXISTS temp11;
DROP TABLE IF EXISTS temp12;
DROP TABLE IF EXISTS temp13;

CREATE TEMP TABLE temp1 AS
SELECT *, 'CaryBelvidereChilis' AS Location
FROM st_read('PiCaryBelvidereChilis.csv');

SELECT *
FROM temp1;

CREATE TEMP TABLE temp2 AS
SELECT *, 'CaryStGym' AS Location
FROM st_read('PiCaryStGym.csv');

SELECT *
FROM temp2;

CREATE TEMP TABLE temp3 AS
SELECT *, 'Engineering' AS Location
FROM st_read('PiEngineering1.csv');

SELECT *
FROM temp3;

CREATE TEMP TABLE temp4 AS
SELECT *, 'Gateway' AS Location
FROM st_read('PiGateway.csv');

SELECT *
FROM temp4;

CREATE TEMP TABLE temp5 AS
SELECT *, 'HealthScience' AS Location
FROM st_read('PiHealthScience.csv');

SELECT *
FROM temp5;

CREATE TEMP TABLE temp6 AS
SELECT *, 'Larrick' AS Location
FROM st_read('PiLarrick.csv');

SELECT *
FROM temp6;

CREATE TEMP TABLE temp7 AS
SELECT *, 'MCALCLobby' AS Location
FROM st_read('PiMCALCLobby.csv');

SELECT *
FROM temp7;

CREATE TEMP TABLE temp8 AS
SELECT *, 'McGlothian' AS Location
FROM st_read('PiMcGlothian1.csv');

SELECT *
FROM temp8;

CREATE TEMP TABLE temp9 AS
SELECT *, 'MonroeParkLibrary' AS Location
FROM st_read('PiMonroeParkLibrary.csv');

SELECT *
FROM temp9;

CREATE TEMP TABLE temp10 AS
SELECT *, 'SneadHall' AS Location
FROM st_read('PiSneadHall.csv');

SELECT *
FROM temp10;

CREATE TEMP TABLE temp11 AS
SELECT *, 'UniversityCommons' AS Location
FROM st_read('PiUniversityCommons.csv');

SELECT *
FROM temp11;

CREATE TEMP TABLE temp12 AS
SELECT Date, Time, 'Harris' AS Location
FROM st_read('PiHarris.csv');

SELECT *
FROM temp12;

CREATE TEMP TABLE temp13 AS
SELECT *, 'PaceCenter' AS Location
FROM st_read('PiPaceCenter.csv');

SELECT *
FROM temp13;

-- Combining all tables

SELECT *
FROM temp1

UNION ALL

SELECT *
FROM temp2

UNION ALL

SELECT *
FROM temp3

UNION ALL

SELECT *
FROM temp4

UNION ALL

SELECT *
FROM temp5

UNION ALL

SELECT *
FROM temp6

UNION ALL

SELECT *
FROM temp7

UNION ALL

SELECT *
FROM temp8

UNION ALL

SELECT *
FROM temp9

UNION ALL

SELECT *
FROM temp10

UNION ALL

SELECT *
FROM temp11

UNION ALL

SELECT *
FROM temp13