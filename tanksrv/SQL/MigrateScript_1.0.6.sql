USE [tankwars_test]
GO

ALTER TABLE [dbo].[UserMarkets] ADD [type] int NULL
GO
UPDATE [dbo].[UserMarkets] SET [type] = 1
GO
ALTER TABLE [dbo].[UserMarkets] ALTER COLUMN [type] int NOT NULL

ALTER TABLE [dbo].[UserMarkets] ADD [sold] bit NULL
GO
UPDATE [dbo].[UserMarkets] SET [sold] = 0
GO

ALTER TABLE [dbo].[UserMarkets] ALTER COLUMN [sold] bit NOT NULL

--1 detect players with incorrect experience
SELECT u.id, u.Name, u.UserLevel, u.Experience, l.l, l.e  
FROM Users u
LEFT JOIN Levels l ON u.UserLevel = l.l
WHERE u.Experience < l.e
ORDER BY u.UserLevel ASC


--2 update players with incorrect experience
UPDATE u
SET u.Experience = l.e
FROM Users AS u
LEFT JOIN Levels l ON u.UserLevel = l.l  
WHERE u.Experience < l.e