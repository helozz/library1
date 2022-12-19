USE [tankwars]
GO

ALTER TABLE [dbo].[Users] DROP COLUMN [BanEndTime]

GO

ALTER TABLE [dbo].[Users] ADD [BanEndTime] float NULL
GO
UPDATE [dbo].[Users] SET [BanEndTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [BanEndTime] float NOT NULL
GO

