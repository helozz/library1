USE [tankwars]
GO

ALTER TABLE [dbo].[UpgradesNew] ADD [goldPerMinute] float NULL
GO
UPDATE [dbo].[UpgradesNew] SET [goldPerMinute] = 0
GO
ALTER TABLE [dbo].[UpgradesNew] ALTER COLUMN [goldPerMinute] float NOT NULL
GO
