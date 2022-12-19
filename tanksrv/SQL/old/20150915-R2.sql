use [tankwars]

ALTER TABLE [dbo].[RadarConfigs] ADD [bundleId] int NULL
GO
UPDATE [dbo].[RadarConfigs] SET [bundleId] = 1
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [bundleId] int NOT NULL
GO

ALTER TABLE [dbo].[RadarConfigs] ADD [compMinVeasy] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMinVeasy] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMinVeasy] float NOT NULL
GO
ALTER TABLE [dbo].[RadarConfigs] ADD [compMaxVeasy] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMaxVeasy] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMaxVeasy] float NOT NULL
GO

ALTER TABLE [dbo].[RadarConfigs] ADD [compMinEasy] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMinEasy] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMinEasy] float NOT NULL
GO
ALTER TABLE [dbo].[RadarConfigs] ADD [compMaxEasy] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMaxEasy] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMaxEasy] float NOT NULL
GO

ALTER TABLE [dbo].[RadarConfigs] ADD [compMinNorm] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMinNorm] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMinNorm] float NOT NULL
GO
ALTER TABLE [dbo].[RadarConfigs] ADD [compMaxNorm] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMaxNorm] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMaxNorm] float NOT NULL
GO

ALTER TABLE [dbo].[RadarConfigs] ADD [compMinHard] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMinHard] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMinHard] float NOT NULL
GO
ALTER TABLE [dbo].[RadarConfigs] ADD [compMaxHard] float NULL
GO
UPDATE [dbo].[RadarConfigs] SET [compMaxHard] = 100
GO
ALTER TABLE [dbo].[RadarConfigs] ALTER COLUMN [compMaxHard] float NOT NULL