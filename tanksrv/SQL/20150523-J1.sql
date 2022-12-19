USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [eventReputation] int NULL
GO
UPDATE [dbo].[Users] SET [eventReputation] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [eventReputation] int NOT NULL
