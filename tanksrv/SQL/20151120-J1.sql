USE [tankwars]
GO

ALTER TABLE [dbo].[MissionEvents] ADD [tier] int NULL
GO
UPDATE [dbo].[MissionEvents] SET [tier] = 0
GO
ALTER TABLE [dbo].[MissionEvents] ALTER COLUMN [tier] int NOT NULL