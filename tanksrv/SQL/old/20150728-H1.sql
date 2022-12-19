USE [tankwars]
GO

ALTER TABLE [dbo].[Actions] ADD [isPurchase] bit NULL
GO
UPDATE [dbo].[Actions] SET [isPurchase] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [isPurchase] bit NOT NULL
GO

ALTER TABLE [dbo].[Actions] ADD [counter] int NULL
GO
UPDATE [dbo].[Actions] SET [counter] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [counter] int NOT NULL
GO

ALTER TABLE [dbo].[Actions] ADD [amount] int NULL
GO
UPDATE [dbo].[Actions] SET [amount] = 0
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [amount] int NOT NULL
GO

ALTER TABLE [dbo].[Actions] ALTER COLUMN [name] varchar(100) NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [isPurchase] bit NULL
GO
UPDATE [dbo].[UserActions] SET [isPurchase] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [isPurchase] bit NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [counter] int NULL
GO
UPDATE [dbo].[UserActions] SET [counter] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [counter] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [amount] int NULL
GO
UPDATE [dbo].[UserActions] SET [amount] = 0
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [amount] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ALTER COLUMN [name] varchar(100) NOT NULL
GO

DELETE from [UserActions]
GO