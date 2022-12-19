USE [tankwars]
GO

ALTER TABLE [dbo].[UserUnits] ADD [setUpgrades] int NULL
GO
UPDATE [dbo].[UserUnits] SET [setUpgrades] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [setUpgrades] int NOT NULL
GO
UPDATE [dbo].[UserUnits] SET [upgrades] = 0
UPDATE [dbo].[UserUnits] SET [aimingTime] = 0
UPDATE [dbo].[UserUnits] SET [backArmor] = 0
UPDATE [dbo].[UserUnits] SET [damage] = 0
UPDATE [dbo].[UserUnits] SET [frontArmor] = 0
UPDATE [dbo].[UserUnits] SET [maxAccuracy] = 0
UPDATE [dbo].[UserUnits] SET [maxHP] = 0
UPDATE [dbo].[UserUnits] SET [minAccuracy] = 0
UPDATE [dbo].[UserUnits] SET [piercing] = 0
UPDATE [dbo].[UserUnits] SET [range] = 0
UPDATE [dbo].[UserUnits] SET [reloadDuration] = 0
UPDATE [dbo].[UserUnits] SET [sideArmor] = 0
UPDATE [dbo].[UserUnits] SET [speed] = 0
UPDATE [dbo].[UserUnits] SET [turnSpeed] = 0
UPDATE [dbo].[UserUnits] SET [visibilityRadius] = 0
UPDATE [dbo].[UserUnits] SET [power] = (SELECT [DefaultUnits].[c] FROM [DefaultUnits] WHERE [DefaultUnits].[i] = [UserUnits].[t])
GO