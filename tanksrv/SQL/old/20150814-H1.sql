USE [tankwars]
GO

ALTER TABLE [dbo].[Actions] ADD [HQLevel] int NULL
GO
UPDATE [dbo].[Actions] SET [HQLevel] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [HQLevel]  int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [HQLevel] int NULL
GO
UPDATE [dbo].[UserActions] SET [HQLevel] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [HQLevel] int NOT NULL
GO

DELETE from [UserActions]
GO


  