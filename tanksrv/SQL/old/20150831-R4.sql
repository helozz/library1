use [tankwars]
ALTER TABLE [dbo].[UserNewMissions] ADD [money] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [money] = 100
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [money] int NOT NULL
GO
ALTER TABLE [dbo].[UserNewMissions] ADD [exp] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [exp] = 100
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [exp] int NOT NULL
GO
ALTER TABLE [dbo].[UserNewMissions] ADD [parts] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [parts] = 100
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [parts] int NOT NULL
GO

ALTER TABLE [dbo].[UserNewMissions] ADD [diff] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [diff] = 1
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [diff] int NOT NULL
GO