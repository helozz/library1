USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [dailyRewardTime] float NULL
GO
UPDATE [dbo].[Users] SET [dailyRewardTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [dailyRewardTime] float NOT NULL


GO

ALTER TABLE [dbo].[Users] ADD [dailyRewardIndex] int NULL
GO
UPDATE [dbo].[Users] SET [dailyRewardIndex] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [dailyRewardIndex] int NOT NULL
