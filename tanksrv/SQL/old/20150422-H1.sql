USE [tankwars]
GO

ALTER TABLE [dbo].[UserBattleLogs] ADD [enableRevenge] bit NULL
GO
UPDATE [dbo].[UserBattleLogs] SET [enableRevenge] = 0
GO
ALTER TABLE [dbo].[UserBattleLogs] ALTER COLUMN [enableRevenge]  bit NOT NULL
GO