USE [tankwars]
GO

ALTER TABLE [dbo].[UserUnits] DROP COLUMN [sharingClanUser]
GO
ALTER TABLE [dbo].[UserUnits] DROP COLUMN [sharingTime]
GO
ALTER TABLE [dbo].[UserUnits] DROP COLUMN [sharingData]
GO

ALTER TABLE [dbo].[UserUnits] ADD [sharingTime] float NULL
GO
UPDATE [dbo].[UserUnits] SET [sharingTime] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [sharingTime] float NOT NULL
GO
ALTER TABLE [dbo].[UserUnits] ADD [sharingClanUnit] int NULL
GO
UPDATE [dbo].[UserUnits] SET [sharingClanUnit] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [sharingClanUnit] int NOT NULL
GO
ALTER TABLE [dbo].[UserUnits] ADD [sharingUser] int NULL
GO
UPDATE [dbo].[UserUnits] SET [sharingUser] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [sharingUser] int NOT NULL
GO
ALTER TABLE [dbo].[UserUnits] ADD [sharingData] int NULL
GO
UPDATE [dbo].[UserUnits] SET [sharingData] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [sharingData] int NOT NULL
GO

/****** Object:  Index [Sharing]    Script Date: 03/29/2016 11:19:16 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[UserUnits]') AND name = N'Sharing')
DROP INDEX [Sharing] ON [dbo].[UserUnits] WITH ( ONLINE = OFF )
GO

/****** Object:  Index [Sharing]    Script Date: 03/29/2016 11:19:17 ******/
CREATE NONCLUSTERED INDEX [Sharing] ON [dbo].[UserUnits] 
(
	[sharingClanUnit] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

