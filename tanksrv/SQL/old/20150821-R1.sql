use [tankwars]

EXEC sp_RENAME '[NewMissions].[resPoints]', 'compmin', 'COLUMN'

EXEC sp_RENAME '[NewMissions].[UnitPower]', 'bundleId', 'COLUMN'

ALTER TABLE [dbo].[NewMissions] ADD [compmax] int NULL
GO
UPDATE [dbo].[NewMissions] SET [compmax] = 100
GO
ALTER TABLE [dbo].[NewMissions] ALTER COLUMN [compmax] int NOT NULL
GO

ALTER TABLE [dbo].[MarketItems] ALTER COLUMN [json] varchar(750) NULL

ALTER TABLE [dbo].[UserNewMissions] ADD [itemId] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [itemId] = 0
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [itemId] int NOT NULL
GO

ALTER TABLE [dbo].[UserNewMissions] ADD [itemCnt] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [itemCnt] = 0
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [itemCnt] int NOT NULL
GO

UPDATE [dbo].[NewMissions] SET [bundleId] = 1
GO
