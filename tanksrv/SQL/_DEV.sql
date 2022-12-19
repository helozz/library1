USE [tankwars]
GO

ALTER TABLE [dbo].[UserActions] ADD [isPurchase] bit NULL
GO
UPDATE [dbo].[UserActions] SET [isPurchase] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [isPurchase] bit NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [counter] int NULL
GO
UPDATE [dbo].[UserActions] SET [counter] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [counter] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [amount] int NULL
GO
UPDATE [dbo].[UserActions] SET [amount] = 0
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [amount] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ALTER COLUMN [name] varchar(100) NOT NULL
GO

DELETE from [UserActions]
GO

USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1002, N'com.ambergames.tanksquadgame.beginner', N'beginner', 5.99, 5.99, 1, 3000, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO



/****** Object:  Table [dbo].[Items]    Script Date: 6/3/2015 3:17:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[json] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
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


/* 20150513 */
DELETE FROM [UserBuildings] WHERE [type]=4 OR [type]=8 OR [type]=17

/****** Object:  Table [dbo].[UserFriendsRewards]    Script Date: 27.07.2015 14:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFriendsRewards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[socialId] varchar(100) NOT NULL,
	[refId] [int] NOT NULL,
	[activity] [int] NOT NULL,
	[lastExp] [int] NOT NULL,
 CONSTRAINT [PK_UserFriendsRewards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Users] ADD [marketTime] float NULL
GO
UPDATE [dbo].[Users] SET [marketTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [marketTime]  float NOT NULL
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [tankwars].[dbo].[Buildings] ALTER COLUMN [productionInSeconds] float NOT NULL

GO

SET ANSI_PADDING OFF
GO

/* 20150814-H1.sql */

ALTER TABLE [dbo].[Actions] ADD [HQLevel] int NULL
GO
UPDATE [dbo].[Actions] SET [HQLevel] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [HQLevel]  int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [HQLevel] int NULL
GO
UPDATE [dbo].[UserActions] SET [HQLevel] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [HQLevel] int NOT NULL
GO

DELETE from [UserActions]
GO

/* 20150812-A1.sql */
IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA='dbo' AND TABLE_NAME = 'Items' AND COLUMN_NAME = 'type')
BEGIN
 ALTER TABLE dbo.Items ADD
  type int NOT NULL CONSTRAINT DF_Items_type DEFAULT 0
END

/* 20150811-R2.sql */

ALTER TABLE [dbo].[Upgrades] ALTER COLUMN [price] int NOT NULL
GO

/****** Object:  Table [dbo].[Evolve]    Script Date: 8/4/2015 3:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evolves](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[defaultUnitId] [int] NOT NULL,
	[requirements] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Evolve] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/* 20150728-H1.sql */
ALTER TABLE [dbo].[Actions] ADD [isPurchase] bit NULL
GO
UPDATE [dbo].[Actions] SET [isPurchase] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [isPurchase] bit NOT NULL
GO

ALTER TABLE [dbo].[Actions] ADD [counter] int NULL
GO
UPDATE [dbo].[Actions] SET [counter] = 1
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [counter] int NOT NULL
GO

ALTER TABLE [dbo].[Actions] ADD [amount] int NULL
GO
UPDATE [dbo].[Actions] SET [amount] = 0
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [amount] int NOT NULL
GO

ALTER TABLE [dbo].[Actions] ALTER COLUMN [name] varchar(100) NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [isPurchase] bit NULL
GO
UPDATE [dbo].[UserActions] SET [isPurchase] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [isPurchase] bit NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [counter] int NULL
GO
UPDATE [dbo].[UserActions] SET [counter] = 1
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [counter] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ADD [amount] int NULL
GO
UPDATE [dbo].[UserActions] SET [amount] = 0
GO
ALTER TABLE [dbo].[UserActions] ALTER COLUMN [amount] int NOT NULL
GO

ALTER TABLE [dbo].[UserActions] ALTER COLUMN [name] varchar(100) NOT NULL
GO

DELETE from [UserActions]
GO

/* 20150831-R4.sql */

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

/* 20150821-R1.sql */

EXEC sp_RENAME '[NewMissions].[resPoints]', 'compmin', 'COLUMN'

EXEC sp_RENAME '[NewMissions].[UnitPower]', 'bundleId', 'COLUMN'

ALTER TABLE [dbo].[NewMissions] ADD [compmax] int NULL
GO
UPDATE [dbo].[NewMissions] SET [compmax] = 100
GO
ALTER TABLE [dbo].[NewMissions] ALTER COLUMN [compmax] int NOT NULL
GO

ALTER TABLE [dbo].[MarketItems] ALTER COLUMN [json] varchar(750) NULL

ALTER TABLE [dbo].[UserNewMissions] ADD [itemId] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [itemId] = 0
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [itemId] int NOT NULL
GO

ALTER TABLE [dbo].[UserNewMissions] ADD [itemCnt] int NULL
GO
UPDATE [dbo].[UserNewMissions] SET [itemCnt] = 0
GO
ALTER TABLE [dbo].[UserNewMissions] ALTER COLUMN [itemCnt] int NOT NULL
GO

UPDATE [dbo].[NewMissions] SET [bundleId] = 1
GO

/* 20150831-R2.sql */
DROP TABLE [dbo].[MarketItems]
GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 01.09.2015 19:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarketItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hq] [int] NOT NULL,
	[slot] [int] NOT NULL,
	[json] [varchar](750) NULL,
 CONSTRAINT [PK_MarketItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21, 22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
/* 20150831-R3.sql */
/****** Object:  Table [dbo].[NewMissions]    Script Date: 31.08.2015 16:23:40 ******/
ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [money]

GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [exp]

GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [pPoints]

GO

/****** Object:  Table [dbo].[RandomItems]    Script Date: 02.09.2015 11:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RandomItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[json] [varchar](500) NULL,
 CONSTRAINT [PK_RandomItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"radar","items":[21, 22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [compMin]

GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [compMax]

GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [bundleId]

GO

ALTER TABLE [dbo].[NewMissions]
DROP COLUMN [difficulty]

GO

USE [tankwars]
GO
/****** Object:  Table [dbo].[PvPConfigs]    Script Date: 15.09.2015 18:22:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PvPConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,	
	[mNorm] [int] NOT NULL,	
	[eNorm] [int] NOT NULL,
	[pNorm] [int] NOT NULL,		
	[bundleId] [int] NOT NULL,	
	[compMinNorm] [int] NOT NULL,
	[compMaxNorm] [int] NOT NULL,	
	[type] [int] NOT NULL
 CONSTRAINT [PK_PvPConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] ON 

GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm]) VALUES (1, 0, 99999, 100, 100, 100, 1, 100, 100, 1)
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] OFF
GO

/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 31.08.2015 15:27:26 ******/
DROP TABLE [dbo].[RadarConfigs]
GO
/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 31.08.2015 15:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadarConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
	[mVeasy] [int] NOT NULL,
	[mEasy] [int] NOT NULL,
	[mNorm] [int] NOT NULL,
	[mHard] [int] NOT NULL,
	[eVeasy] [int] NOT NULL,
	[eEasy] [int] NOT NULL,
	[eNorm] [int] NOT NULL,
	[eHard] [int] NOT NULL,
	[pVeasy] [int] NOT NULL,
	[pEasy] [int] NOT NULL,
	[pNorm] [int] NOT NULL,
	[pHard] [int] NOT NULL,
	[dVeasy] [int] NOT NULL,
	[dEasy] [int] NOT NULL,
	[dNorm] [int] NOT NULL,
	[dHard] [int] NOT NULL,
 CONSTRAINT [PK_RadarConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/* 20150915 */

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



/****** Object:  Table [dbo].[MarketItems]    Script Date: 14.08.2015 13:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarketItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[json] [varchar](250) NOT NULL,
 CONSTRAINT [PK_MarketItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

DROP TABLE [dbo].[UserMarkets]
/****** Object:  Table [dbo].[UserMarkets]    Script Date: 14.08.2015 13:03:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMarkets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[cellId] [int] NOT NULL,
	[money] [int] NOT NULL,
	[gold] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_UserMarkets] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

