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

--Table Clans
ALTER TABLE [dbo].[Clans] ADD level int NULL
GO
UPDATE [dbo].[Clans] SET level = 0
GO
ALTER TABLE [dbo].[Clans] ALTER COLUMN level int NOT NULL
GO

--Table Clans
ALTER TABLE [dbo].[Clans] ADD statement varchar(200) NULL
GO
UPDATE [dbo].[Clans] SET statement = ''
GO
ALTER TABLE [dbo].[Clans] ALTER COLUMN statement varchar(200) NOT NULL
GO

--Table Users
ALTER TABLE [dbo].[Users] ADD clanSkill1 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill1 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill1 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill2 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill2 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill2 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill3 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill3 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill3 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill4 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill4 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill4 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill5 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill5 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill5 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill6 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill6 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill6 int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD clanSkill7 int NULL
GO
UPDATE [dbo].[Users] SET clanSkill7 = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN clanSkill7 int NOT NULL
GO



