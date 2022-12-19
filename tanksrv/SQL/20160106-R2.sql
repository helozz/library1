USE [tankwars]
GO

ALTER TABLE [dbo].[UserMarkets] ADD [type] int NULL
GO
UPDATE [dbo].[UserMarkets] SET [type] = 1
GO
ALTER TABLE [dbo].[UserMarkets] ALTER COLUMN [type] int NOT NULL

ALTER TABLE [dbo].[UserMarkets] ADD [sold] bit NULL
GO
UPDATE [dbo].[UserMarkets] SET [sold] = 0
GO
ALTER TABLE [dbo].[UserMarkets] ALTER COLUMN [sold] bit NOT NULL
