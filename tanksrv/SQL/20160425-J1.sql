USE [tankwars]
GO

ALTER TABLE [dbo].[Actions] ADD offerType int NULL
GO
UPDATE [dbo].[Actions] SET offerType = 0
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN offerType int NOT NULL
GO




ALTER TABLE [dbo].[UserActions] ADD offerType int NULL
GO
UPDATE [dbo].[UserActions] SET offerType = 0
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN offerType int NOT NULL
GO




