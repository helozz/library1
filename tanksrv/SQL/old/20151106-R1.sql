USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [marketBuyAttempts] int NULL
GO
UPDATE [dbo].[Users] SET [marketBuyAttempts] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [marketBuyAttempts] int NOT NULL


