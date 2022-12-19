USE [tankwars]
GO

ALTER TABLE [dbo].[UserMissionEvents] ADD [map] varchar(1000) NULL
GO
UPDATE [dbo].[UserMissionEvents] SET [map] = ''
GO
ALTER TABLE [dbo].[UserMissionEvents] ALTER COLUMN [map] varchar(1000) NOT NULL





