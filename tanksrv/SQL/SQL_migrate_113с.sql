use tankwars_test

UPDATE UserBuildings
SET blevel = 20 
WHERE  (type = 6) and blevel > 20

DELETE FROM Buildings
WHERE  (typeEnum = 6) and bLevel > 20