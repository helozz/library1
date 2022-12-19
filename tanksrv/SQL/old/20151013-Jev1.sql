USE [tankwars]
GO

ALTER TABLE [dbo].[Offers] ADD [mask] int NULL
GO
UPDATE [dbo].[Offers] SET [mask] = 1
GO
ALTER TABLE [dbo].[Offers] ALTER COLUMN [mask] int NOT NULL
GO


