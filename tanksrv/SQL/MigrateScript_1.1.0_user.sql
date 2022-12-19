USE [tankwars_test]
GO

ALTER TABLE [dbo].[Users] ADD [EventFuelRestoreAttempt] int NULL
GO
UPDATE [dbo].[Users] SET [EventFuelRestoreAttempt] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [EventFuelRestoreAttempt] int NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [eventReward] varchar(50) NULL
GO
UPDATE [dbo].[Users] SET [eventReward] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [eventReward] varchar(50) NOT NULL

ALTER TABLE [dbo].[Users] ADD [VIPgold] float NULL
GO
UPDATE [dbo].[Users] SET [VIPgold] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [VIPgold] float NOT NULL
GO


ALTER TABLE [dbo].[Users] ADD [VIPsubscription] float NULL
GO
UPDATE [dbo].[Users] SET [VIPsubscription] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [VIPsubscription] float NOT NULL
GO

ALTER TABLE [dbo].[Users] ADD [LimitEventFuel] int NULL
GO
UPDATE [dbo].[Users] SET [LimitEventFuel] = 10
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [LimitEventFuel] int NOT NULL

GO

ALTER TABLE [dbo].[Users] ADD [eventReputation] int NULL
GO
UPDATE [dbo].[Users] SET [eventReputation] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [eventReputation] int NOT NULL

ALTER TABLE [dbo].[UserMissionEvents] ADD [map] varchar(1000) NULL
GO
UPDATE [dbo].[UserMissionEvents] SET [map] = ''
GO
ALTER TABLE [dbo].[UserMissionEvents] ALTER COLUMN [map] varchar(1000) NOT NULL

ALTER TABLE [dbo].[Users] ADD [dailyRewardTime] float NULL
GO
UPDATE [dbo].[Users] SET [dailyRewardTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [dailyRewardTime] float NOT NULL

ALTER TABLE [dbo].[Users] ADD [dailyRewardIndex] int NULL
GO
UPDATE [dbo].[Users] SET [dailyRewardIndex] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [dailyRewardIndex] int NOT NULL

/****** Object:  Table [dbo].[States]    Script Date: 13.07.2016 14:55:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventStartTime] [float] NOT NULL,
	[eventMapIndex] [int] NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[States] ON 

GO
INSERT [dbo].[States] ([id], [eventStartTime], [eventMapIndex]) VALUES (3, 1468224274653, 2)
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO


/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 13.07.2016 15:34:16 ******/
DROP TABLE [dbo].[UserMissionEvents]
GO
/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 13.07.2016 15:34:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMissionEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[eventId] [int] NOT NULL,
	[startTime] [float] NOT NULL,
	[userTier] [int] NOT NULL,
	[userPower] [int] NOT NULL,
	[squadData] [varchar](5000) NOT NULL,
	[fightMissions] [varchar](1000) NOT NULL,
	[targetMissions] [varchar](1000) NOT NULL,
	[lastCellIndex] [int] NOT NULL,
	[bonus] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UserMissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[UserEventMapStates]    Script Date: 13.07.2016 15:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEventMapStates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[eventId] [int] NOT NULL,
	[state] [int] NOT NULL,
	[bonus] [int] NOT NULL,
	[index] [int] NOT NULL,
 CONSTRAINT [PK_UserEventMapStates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
