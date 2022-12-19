USE [tankwars_test]
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

SET IDENTITY_INSERT [dbo].[Offers] ON 

GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1002, N'com.ambergames.tanksquadgame.beginner', N'beginner', 5.99, 5.99, 1, 3000, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
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

SET ANSI_PADDING OFF
GO

/* 20150814-H1.sql */

DELETE from [UserActions]
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

