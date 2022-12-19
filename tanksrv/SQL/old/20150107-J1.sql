USE [tankwars]
GO

ALTER TABLE [dbo].[DefaultUnits] ADD [parts] int NULL
GO
UPDATE [dbo].[DefaultUnits] SET [parts] = 0
GO
ALTER TABLE [dbo].[DefaultUnits] ALTER COLUMN [parts] int NOT NULL
