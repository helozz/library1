
SELECT * FROM [tankwars].[dbo].[MissionEvents]

USE tankwars;
EXEC sp_rename 'MissionEvents.startMoney', 'money';
EXEC sp_rename 'MissionEvents.incMoney', 'experience';
EXEC sp_rename 'MissionEvents.startParts', 'parts';

ALTER TABLE [tankwars].[dbo].[MissionEvents] DROP COLUMN incParts
ALTER TABLE [tankwars].[dbo].[MissionEvents] ALTER COLUMN experience int NOT NULL