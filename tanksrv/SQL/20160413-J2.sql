USE [tankwars]
GO

--Table Clans
ALTER TABLE [dbo].[Clans] ADD level int NULL
GO
UPDATE [dbo].[Clans] SET level = 0
GO
ALTER TABLE [dbo].[Clans] ALTER COLUMN level int NOT NULL
GO
