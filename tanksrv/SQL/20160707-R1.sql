USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [eventReward] varchar(50) NULL
GO
UPDATE [dbo].[Users] SET [eventReward] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [eventReward] varchar(50) NOT NULL

