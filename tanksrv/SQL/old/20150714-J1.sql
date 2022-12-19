USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [battleSquad] varchar(50) NULL
GO
UPDATE [dbo].[Users] SET [battleSquad] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleSquad]  varchar(50) NOT NULL
GO
GO

ALTER TABLE [dbo].[Users] ADD [battlesScan] int NULL
GO
UPDATE [dbo].[Users] SET [battlesScan] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battlesScan]  int NOT NULL
GO
GO

ALTER TABLE [dbo].[Users] ADD [battlesLastScan] float NULL
GO
UPDATE [dbo].[Users] SET [battlesLastScan] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battlesLastScan]  float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battlesCount] int NULL
GO
UPDATE [dbo].[Users] SET [battlesCount] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battlesCount]  int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battlesLastTime] float NULL
GO
UPDATE [dbo].[Users] SET [battlesLastTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battlesLastTime]  float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battleTime] float NULL
GO
UPDATE [dbo].[Users] SET [battleTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleTime]  float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battleDailyRewardTime] float NULL
GO
UPDATE [dbo].[Users] SET [battleDailyRewardTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleDailyRewardTime]  float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battleBestLvlReward] float NULL
GO
UPDATE [dbo].[Users] SET [battleBestLvlReward] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleBestLvlReward]  float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battleBestReward] float NULL
GO
UPDATE [dbo].[Users] SET [battleBestReward] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleBestReward]  float NOT NULL
GO



ALTER TABLE [dbo].[UserBattleLogs] ADD battlesLevel int NULL
GO
UPDATE [dbo].[UserBattleLogs] SET battlesLevel = 0
GO
ALTER TABLE [dbo].[UserBattleLogs] ALTER COLUMN battlesLevel  int NOT NULL
GO
GO

ALTER TABLE [dbo].[UserBattleLogs] ADD enemySquadLvl VARCHAR(50) NULL
GO
UPDATE [dbo].[UserBattleLogs] SET enemySquadLvl = ''
GO
ALTER TABLE [dbo].[UserBattleLogs] ALTER COLUMN enemySquadLvl  VARCHAR(50)  NOT NULL
GO
GO



GO
CREATE TABLE [dbo].[UserBattles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[isBot] [bit] NOT NULL,
	[place] [int] NOT NULL,
	[prevBestPlace] [int] NOT NULL,
	[bestPlace] [int] NOT NULL,
	[squadPower] [int] NOT NULL,
 CONSTRAINT [PK_UserBattles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Battles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sector] [int] NOT NULL,
	[fromPlace] [int] NOT NULL,
	[toPlace] [int] NOT NULL,
	[percentage] [int] NOT NULL,
	[dailyRewards] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Battles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Battles] ON 

INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (1, 1, 1, 1, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (2, 2, 2, 3, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (3, 3, 4, 10, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (4, 4, 11, 20, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (5, 5, 21, 50, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (6, 6, 51, 100, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (7, 7, 101, 250, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (8, 8, 251, 500, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (9, 9, 501, 1000, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (10, 10, 1001, 5000, 0, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (11, 11, 0, 0, 5, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (13, 12, 0, 0, 20, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (14, 13, 0, 0, 25, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (16, 14, 0, 0, 50, N'[{"type":0,"num":10,},{"type":1,"num":20},{"type":4,"num":30},{"type":5,"num":40}]
')
SET IDENTITY_INSERT [dbo].[Battles] OFF

