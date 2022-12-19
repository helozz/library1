USE [tankwars]
GO

ALTER TABLE [dbo].[Crews] ADD [forSale] bit NULL
GO
UPDATE [dbo].[Crews] SET [forSale] = 1
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [forSale]  bit NOT NULL
GO