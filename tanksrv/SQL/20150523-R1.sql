USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [LimitEventFuel] int NULL
GO
UPDATE [dbo].[Users] SET [LimitEventFuel] = 10
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [LimitEventFuel] int NOT NULL

GO
