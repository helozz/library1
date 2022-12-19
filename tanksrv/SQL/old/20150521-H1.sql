USE [tankwars]
GO

ALTER TABLE [dbo].[Zones] ADD [forLevel] int NULL
GO
UPDATE [dbo].[Zones] SET [forLevel] = [Zones].zone * 3
GO
ALTER TABLE [dbo].[Zones] ALTER COLUMN [forLevel]  int NOT NULL
GO

ALTER TABLE [dbo].[Zones] ADD [forGold] int NULL
GO
UPDATE [dbo].[Zones] SET [forGold] = ([Zones].zone-1) * 50
GO
ALTER TABLE [dbo].[Zones] ALTER COLUMN [forGold]  int NOT NULL
GO