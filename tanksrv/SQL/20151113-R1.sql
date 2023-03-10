USE [tankwars]
GO
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 13.11.2015 19:29:39 ******/
DROP TABLE [dbo].[MissionEvents]
GO
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 13.11.2015 19:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MissionEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[eventId] [int] NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
	[startMoney] [int] NOT NULL,
	[incMoney] [float] NOT NULL,
	[startParts] [int] NOT NULL,
	[incParts] [float] NOT NULL,
	[rewards] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_MissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] ON 

GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (2, 1, 0, 267, 100, 1, 5, 1, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (3, 1, 268, 517, 200, 2, 10, 2, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (4, 1, 518, 763, 300, 3, 15, 3, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (5, 1, 764, 1134, 400, 4, 20, 4, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (6, 1, 1135, 1775, 500, 5, 25, 5, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (7, 1, 1776, 2484, 600, 6, 30, 6, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (8, 1, 2485, 3903, 700, 7, 35, 7, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (9, 1, 3904, 5640, 800, 8, 40, 8, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (10, 1, 5641, 7896, 900, 9, 45, 9, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards]) VALUES (11, 1, 7897, 11055, 1000, 10, 50, 10, N'[{"lvl":1,"type":0,"num":3600},{"lvl":1,"type":7,"item":21,"num":26},{"lvl":1,"type":7,"item":22,"num":25},{"lvl":1,"type":7,"item":23,"num":25},{"lvl":1,"type":7,"item":25,"num":3}]')
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] OFF
GO


/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 13.11.2015 19:31:58 ******/
DROP TABLE [dbo].[UserMissionEvents]
GO
/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 13.11.2015 19:31:58 ******/
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
	[power] [int] NOT NULL,
	[squadData] [varchar](1000) NOT NULL,
	[startTime] [float] NOT NULL,
	[nextMissionIndex] [int] NOT NULL,
	[missions] [varchar](1000) NOT NULL,
	[eventTier] [int] NOT NULL,
 CONSTRAINT [PK_UserMissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
