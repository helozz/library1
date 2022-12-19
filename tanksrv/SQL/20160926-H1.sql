USE [tankwars]
GO

ALTER TABLE [dbo].[Actions] DROP Column [startDateTrigger]
GO

ALTER TABLE [dbo].[Actions] ADD [userTier] int NULL
GO
UPDATE [dbo].[Actions] SET [userTier] = 0
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [userTier] int NOT NULL
GO