USE [tankwars]
GO

ALTER TABLE UserTournaments ADD updateTime float NULL
GO
ALTER TABLE UserTournaments ALTER COLUMN updateTime float NOT NULL
GO
UPDATE UserTournaments SET updateTime = 0
GO
