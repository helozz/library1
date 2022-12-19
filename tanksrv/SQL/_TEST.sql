USE [tankwars]
GO


ALTER TABLE [dbo].[Crews] ADD [forSale] bit NULL
GO
UPDATE [dbo].[Crews] SET [forSale] = 1
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [forSale]  bit NOT NULL
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

ALTER TABLE [dbo].[Users] ADD [ScanTime] float NULL
GO
UPDATE [dbo].[Users] SET [ScanTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [ScanTime] float NOT NULL
GO

/****** Object:  Table [dbo].[UserNewMissions]    Script Date: 07.05.2015 15:20:57 ******/
DROP TABLE [dbo].[UserNewMissions]
GO
/****** Object:  Table [dbo].[UserNewMissions]    Script Date: 07.05.2015 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewMissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[userzone] [int] NOT NULL,
	[missionid] [int] NOT NULL,
 CONSTRAINT [PK_UserNewMissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[UserItems]    Script Date: 6/3/2015 3:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_UserItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sp_rename 'Users.LimitResearch', 'RNDTank', 'COLUMN';
EXEC sp_rename 'Users.ResearchPoints', 'RegisterTime', 'COLUMN';
GO
update [dbo].[Users] set [RegisterTime] = 0;
update [dbo].[Users] set [RNDTank] = 1;
GO

ALTER TABLE [dbo].[Users] ADD [battleSquad] varchar(50) NULL
GO
UPDATE [dbo].[Users] SET [battleSquad] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battleSquad]  varchar(50) NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [battlesScan] int NULL
GO
UPDATE [dbo].[Users] SET [battlesScan] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [battlesScan]  int NOT NULL
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

ALTER TABLE [dbo].[UserBattleLogs] ADD enemySquadLvl VARCHAR(50) NULL
GO
UPDATE [dbo].[UserBattleLogs] SET enemySquadLvl = ''
GO
ALTER TABLE [dbo].[UserBattleLogs] ALTER COLUMN enemySquadLvl  VARCHAR(50)  NOT NULL
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

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserFeedbacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[userName] [varchar](50) NULL,
	[stars] [int] NULL,
	[title] [varchar](50) NULL,
	[text] [varchar](255) NULL,
	[postDate] [datetime] NULL,
	[version] [varchar](50) NULL,
 CONSTRAINT [PK_UserFeedbacks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO