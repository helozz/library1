USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [tutorialState] varchar(1000) NULL
GO
UPDATE [dbo].[Users] SET [tutorialState] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [tutorialState] varchar(1000) NOT NULL


