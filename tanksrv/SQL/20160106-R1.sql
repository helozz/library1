USE [tankwars]
GO

ALTER TABLE [dbo].[PowerUps] ADD [lvl] int NULL
GO
UPDATE [dbo].[PowerUps] SET [lvl] = 0
GO
ALTER TABLE [dbo].[PowerUps] ALTER COLUMN [lvl] int NOT NULL
