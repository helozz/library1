USE [tankwars]
GO


ALTER TABLE [dbo].[UserCrews] ADD [isShared] bit NULL
GO
UPDATE [dbo].[UserCrews] SET [isShared] = 0
GO
ALTER TABLE [dbo].[UserCrews] ALTER COLUMN [isShared] bit NOT NULL
GO