USE [tankwars_test]
GO
/****** Object:  Index [IX_Zones]    Script Date: 13.07.2016 14:12:49 ******/
ALTER TABLE [dbo].[Zones] DROP CONSTRAINT [IX_Zones]
GO
/****** Object:  Table [dbo].[Zones]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[Zones]
GO
/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[RadarConfigs]
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[NewMissions]
GO
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[MissionEvents]
GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[MarketItems]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Defines]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[Defines]
GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[DefaultUnits]
GO
/****** Object:  Table [dbo].[Buildings]    Script Date: 13.07.2016 14:12:49 ******/
DROP TABLE [dbo].[Buildings]
GO
/****** Object:  Table [dbo].[Buildings]    Script Date: 13.07.2016 14:12:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buildings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeEnum] [int] NOT NULL,
	[bLevel] [int] NOT NULL,
	[HQLevelReq] [int] NOT NULL,
	[buildingPrice] [int] NOT NULL,
	[buildingTime] [int] NOT NULL,
	[accelerationPrice] [int] NOT NULL,
	[storageSize] [int] NOT NULL,
	[productionInSeconds] [float] NOT NULL,
 CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 13.07.2016 14:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefaultUnits](
	[i] [int] IDENTITY(1,1) NOT NULL,
	[n] [varchar](50) NOT NULL,
	[s] [int] NOT NULL,
	[rm] [int] NOT NULL,
	[az] [int] NOT NULL,
	[ts] [float] NOT NULL,
	[tt] [float] NOT NULL,
	[at] [float] NOT NULL,
	[cd] [float] NOT NULL,
	[rd] [float] NOT NULL,
	[cs] [int] NOT NULL,
	[vr] [float] NOT NULL,
	[c] [int] NOT NULL,
	[hx] [int] NOT NULL,
	[sp] [float] NOT NULL,
	[ms] [float] NOT NULL,
	[fa] [int] NOT NULL,
	[ba] [int] NOT NULL,
	[ra] [int] NOT NULL,
	[am] [int] NOT NULL,
	[ax] [int] NOT NULL,
	[t] [int] NOT NULL,
	[z] [int] NOT NULL,
	[m] [float] NOT NULL,
	[g] [float] NOT NULL,
	[kr] [float] NOT NULL,
	[lm] [int] NOT NULL,
	[rg] [int] NOT NULL,
	[p] [int] NOT NULL,
	[sz] [int] NOT NULL,
	[pc] [float] NOT NULL,
	[dg] [float] NOT NULL,
	[lx] [int] NOT NULL,
	[parts] [int] NOT NULL,
 CONSTRAINT [PK_DefaultUnits] PRIMARY KEY CLUSTERED 
(
	[i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Defines]    Script Date: 13.07.2016 14:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defines](
	[n] [varchar](50) NOT NULL,
	[s] [varchar](max) NULL,
 CONSTRAINT [PK_Defines] PRIMARY KEY CLUSTERED 
(
	[n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 13.07.2016 14:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[id] [int] NOT NULL,
	[json] [varchar](1000) NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 13.07.2016 14:12:50 ******/
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
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 13.07.2016 14:12:50 ******/
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
	[money] [int] NOT NULL,
	[experience] [int] NOT NULL,
	[parts] [int] NOT NULL,
	[rewards] [varchar](1000) NOT NULL,
	[tier] [int] NOT NULL,
 CONSTRAINT [PK_MissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 13.07.2016 14:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewMissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](15) NULL,
	[fuelcost] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
	[map] [varchar](20) NULL,
	[power1] [int] NOT NULL,
	[power1num] [int] NOT NULL,
	[powermult] [int] NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
 CONSTRAINT [PK_NewMissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 13.07.2016 14:12:50 ******/
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
	[bundleId] [int] NOT NULL,
	[compMinVeasy] [float] NOT NULL,
	[compMaxVeasy] [float] NOT NULL,
	[compMinEasy] [float] NOT NULL,
	[compMaxEasy] [float] NOT NULL,
	[compMinNorm] [float] NOT NULL,
	[compMaxNorm] [float] NOT NULL,
	[compMinHard] [float] NOT NULL,
	[compMaxHard] [float] NOT NULL,
 CONSTRAINT [PK_RadarConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zones]    Script Date: 13.07.2016 14:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zone] [int] NOT NULL,
	[buildings] [varchar](50) NOT NULL,
	[forLevel] [int] NOT NULL,
	[forGold] [int] NOT NULL,
 CONSTRAINT [PK_Zones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 

GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1, 1, 1, 0, 0, 0, 0, 35, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (3, 1, 2, 1, 500, 10, 6, 35, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (4, 1, 3, 2, 1000, 15, 10, 40, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (5, 1, 4, 3, 4000, 120, 60, 40, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (6, 1, 5, 4, 10000, 240, 90, 45, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (7, 1, 6, 5, 16000, 480, 150, 45, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (8, 1, 7, 6, 25000, 600, 200, 50, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (9, 1, 8, 7, 35000, 900, 280, 50, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (10, 1, 9, 8, 45000, 1200, 350, 55, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (11, 1, 10, 9, 50000, 1440, 400, 55, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (12, 2, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (13, 2, 0, 0, 1000, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (14, 2, 1, 1, 2000, 30, 25, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (15, 2, 2, 2, 5000, 60, 50, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (16, 2, 3, 3, 12000, 90, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (17, 2, 4, 4, 20000, 180, 125, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (18, 2, 5, 6, 25000, 360, 220, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (19, 2, 6, 8, 35000, 1440, 350, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (20, 2, 7, 10, 45000, 1560, 380, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (21, 2, 8, 12, 50000, 2880, 500, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (22, 2, 9, 14, 60000, 3600, 550, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (23, 2, 10, 16, 80000, 5760, 600, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (25, 3, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (26, 3, 1, 1, 200, 10, 10, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (27, 3, 2, 1, 500, 25, 15, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (28, 3, 3, 1, 1000, 50, 30, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (29, 3, 4, 1, 2000, 120, 85, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (30, 3, 5, 1, 6000, 180, 100, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (31, 3, 6, 1, 10000, 240, 125, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (32, 3, 7, 1, 15000, 360, 200, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (33, 3, 8, 1, 21000, 900, 300, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (34, 3, 9, 1, 28000, 1200, 400, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (35, 3, 10, 1, 35000, 1680, 500, 10, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (48, 5, -1, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (49, 5, 0, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (50, 5, 1, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (51, 5, 2, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (52, 5, 3, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (53, 5, 4, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (54, 5, 5, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (55, 5, 6, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (56, 5, 7, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (57, 5, 8, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (58, 5, 9, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (59, 5, 10, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (60, 6, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (61, 6, 0, 0, 110, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (62, 6, 1, 1, 400, 10, 2, 600, 36)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (63, 6, 2, 1, 440, 15, 3, 810, 26.67)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (64, 6, 3, 2, 560, 30, 6, 1020, 21.18)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (65, 6, 4, 2, 680, 45, 9, 1230, 17.56)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (66, 6, 5, 3, 840, 60, 12, 1440, 15)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (67, 6, 6, 3, 1040, 80, 16, 1650, 13.09)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (68, 6, 7, 4, 1280, 120, 24, 1860, 11.61)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (69, 6, 8, 4, 1560, 160, 32, 2070, 10.43)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (70, 6, 9, 5, 1880, 200, 40, 2280, 9.47)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (71, 6, 10, 5, 2280, 240, 48, 2490, 8.67)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (72, 7, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (73, 7, 0, 1, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (74, 7, 1, 1, 150, 10, 5, 500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (75, 7, 2, 1, 250, 15, 6, 1100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (76, 7, 3, 2, 500, 20, 10, 2200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (77, 7, 4, 2, 700, 30, 12, 3300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (78, 7, 5, 3, 900, 40, 14, 4400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (79, 7, 6, 3, 1100, 50, 18, 6000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (80, 7, 7, 4, 1300, 60, 22, 7600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (81, 7, 8, 4, 1500, 70, 26, 9200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (82, 7, 9, 5, 1700, 80, 30, 10000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (83, 7, 10, 5, 1900, 90, 34, 12000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (96, 9, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (97, 9, 0, 0, 200, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (98, 9, 1, 1, 300, 20, 10, 100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (99, 9, 2, 1, 500, 30, 15, 400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (100, 9, 3, 2, 600, 60, 20, 750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (101, 9, 4, 2, 800, 80, 25, 1100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (102, 9, 5, 3, 1100, 90, 30, 1450, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (103, 9, 6, 3, 1400, 120, 35, 1800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (104, 9, 7, 4, 1700, 150, 40, 2150, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (105, 9, 8, 4, 2000, 180, 45, 2500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (106, 9, 9, 5, 2300, 210, 50, 2900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (107, 9, 10, 5, 2700, 240, 60, 3300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (108, 13, 1, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (109, 14, 1, 0, 0, 0, 0, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (110, 14, 2, 1, 0, 0, 0, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (111, 14, 3, 2, 0, 0, 0, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (112, 14, 4, 3, 0, 0, 0, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (113, 14, 5, 4, 0, 0, 0, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (114, 15, 1, 0, 0, 0, 0, 3500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (115, 15, 2, 1, 0, 0, 0, 3700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (116, 15, 3, 2, 0, 0, 0, 3900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (117, 15, 4, 3, 0, 0, 0, 4100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (118, 15, 5, 4, 0, 0, 0, 4300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (119, 15, 6, 5, 0, 0, 0, 4500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (120, 15, 7, 6, 0, 0, 0, 4700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (121, 15, 8, 7, 0, 0, 0, 4900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (122, 15, 9, 8, 0, 0, 0, 5100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (123, 15, 10, 9, 0, 0, 0, 5300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (124, 16, 1, 0, 0, 0, 0, 600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (125, 16, 2, 1, 0, 0, 0, 650, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (126, 16, 3, 2, 0, 0, 0, 700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (127, 16, 4, 3, 0, 0, 0, 750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (128, 16, 5, 4, 0, 0, 0, 800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (129, 16, 6, 5, 0, 0, 0, 850, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (130, 16, 7, 6, 0, 0, 0, 900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (131, 16, 8, 7, 0, 0, 0, 950, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (132, 16, 9, 8, 0, 0, 0, 1000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (133, 16, 10, 9, 0, 0, 0, 1050, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (144, 11, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (145, 11, 0, 0, 1000, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (146, 11, 1, 1, 2000, 60, 35, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (147, 11, 2, 1, 3000, 90, 50, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (148, 11, 3, 1, 4000, 120, 75, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (149, 11, 4, 3, 5000, 360, 100, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (150, 11, 5, 3, 6500, 480, 120, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (151, 11, 6, 3, 8000, 600, 150, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (152, 11, 7, 4, 10000, 720, 200, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (153, 11, 8, 4, 12000, 840, 220, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (154, 11, 9, 5, 15000, 960, 250, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (155, 11, 10, 5, 20000, 1080, 280, 10, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (156, 1, 11, 10, 60000, 1800, 500, 60, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (157, 1, 12, 11, 70000, 2400, 600, 60, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (158, 1, 13, 12, 80000, 3120, 700, 65, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (159, 1, 14, 13, 90000, 3840, 800, 65, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (160, 1, 15, 14, 100000, 4560, 900, 70, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (161, 1, 16, 15, 110000, 5280, 1000, 70, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (162, 1, 17, 16, 125000, 6000, 1100, 75, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (163, 1, 18, 17, 150000, 6720, 1200, 75, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (164, 1, 19, 18, 180000, 7440, 1300, 80, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (165, 6, 11, 6, 2760, 280, 56, 2820, 7.66)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (166, 6, 12, 6, 3320, 320, 64, 3150, 6.86)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (167, 6, 13, 7, 3960, 360, 72, 3480, 6.21)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (168, 6, 14, 7, 4720, 400, 80, 3810, 5.67)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (169, 6, 15, 8, 5600, 440, 88, 4140, 5.22)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (170, 6, 16, 8, 6640, 480, 96, 4470, 4.83)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (171, 6, 17, 9, 7840, 520, 104, 4800, 4.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (172, 6, 18, 9, 9240, 560, 112, 5130, 4.21)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (173, 6, 19, 10, 10840, 600, 120, 5460, 3.96)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (174, 6, 20, 10, 12680, 640, 128, 5790, 3.73)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (175, 6, 21, 11, 14800, 700, 140, 6300, 3.43)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (176, 6, 22, 11, 17200, 760, 152, 6810, 3.17)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (177, 6, 23, 12, 19920, 820, 164, 7320, 2.95)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (178, 6, 24, 12, 23000, 880, 176, 7830, 2.76)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (179, 6, 25, 13, 26440, 940, 188, 8340, 2.59)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (180, 6, 26, 13, 30320, 1000, 200, 8850, 2.44)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (181, 6, 27, 14, 34640, 1060, 212, 9360, 2.31)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (182, 6, 28, 14, 39440, 1120, 224, 9870, 2.19)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (183, 6, 29, 15, 44720, 1180, 236, 10380, 2.08)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (184, 6, 30, 15, 50520, 1300, 260, 10890, 1.98)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (185, 6, 31, 16, 56880, 1420, 284, 11790, 1.83)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (186, 6, 32, 16, 63800, 1540, 308, 12690, 1.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (187, 6, 33, 17, 71320, 1660, 332, 13590, 1.59)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (188, 6, 34, 17, 79440, 1780, 356, 14490, 1.49)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (189, 6, 35, 18, 88160, 1900, 380, 15390, 1.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (190, 6, 36, 18, 97520, 2020, 404, 16290, 1.33)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (191, 6, 37, 19, 107480, 2140, 428, 17190, 1.26)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (192, 6, 38, 19, 118240, 2260, 452, 18090, 1.19)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (193, 6, 39, 20, 130080, 2380, 476, 18990, 1.14)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (194, 6, 40, 20, 143080, 2500, 500, 19890, 1.09)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (195, 6, 41, 21, 157400, 2620, 524, 20790, 1.04)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (196, 15, 11, 10, 0, 0, 0, 5500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (197, 15, 12, 11, 0, 0, 0, 5700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (198, 15, 13, 12, 0, 0, 0, 5900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (199, 15, 14, 13, 0, 0, 0, 6100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (200, 15, 15, 14, 0, 0, 0, 6300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (201, 15, 16, 15, 0, 0, 0, 6500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (202, 15, 17, 16, 0, 0, 0, 6700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (203, 15, 18, 17, 0, 0, 0, 6900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (204, 15, 19, 18, 0, 0, 0, 7100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (205, 16, 11, 10, 0, 0, 0, 1100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (206, 16, 12, 11, 0, 0, 0, 1150, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (207, 16, 13, 12, 0, 0, 0, 1200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (208, 16, 14, 13, 0, 0, 0, 1250, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (209, 16, 15, 14, 0, 0, 0, 1300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (210, 16, 16, 15, 0, 0, 0, 1350, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (211, 16, 17, 16, 0, 0, 0, 1400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (212, 16, 18, 17, 0, 0, 0, 1450, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (213, 16, 19, 18, 0, 0, 0, 1500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (214, 1, 20, 19, 220000, 8160, 1400, 80, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (220, 12, 1, 1, 100, 60, 50, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (221, 12, 2, 2, 2500, 180, 75, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (222, 12, 3, 3, 5000, 360, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (223, 12, 4, 5, 10000, 720, 150, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (224, 12, 5, 7, 25000, 1440, 200, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (225, 12, 6, 9, 50000, 2880, 300, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (226, 12, 7, 12, 80000, 5760, 400, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (227, 12, 8, 15, 125000, 7200, 600, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (228, 12, 9, 18, 180000, 11520, 1000, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (229, 12, 10, 20, 250000, 14400, 1200, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (230, 3, 11, 1, 45000, 2160, 600, 11, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (231, 3, 12, 1, 55000, 2400, 700, 12, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (232, 3, 13, 1, 65000, 2880, 800, 13, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (233, 3, 14, 1, 75000, 3600, 900, 14, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (234, 3, 15, 1, 85000, 4320, 1000, 15, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (235, 3, 16, 1, 95000, 4800, 1100, 16, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (236, 7, 11, 6, 2100, 100, 38, 14000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (237, 7, 12, 6, 2300, 110, 42, 16000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (238, 7, 13, 7, 2500, 120, 46, 19000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (239, 7, 14, 7, 2700, 130, 50, 22000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (240, 7, 15, 8, 2900, 140, 54, 25000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (241, 7, 16, 8, 3100, 150, 58, 29000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (242, 7, 17, 9, 3300, 160, 62, 33000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (243, 7, 18, 9, 3500, 170, 66, 37000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (244, 7, 19, 10, 3700, 180, 70, 41000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (245, 7, 20, 10, 3900, 190, 74, 45000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (246, 7, 21, 11, 4100, 200, 78, 49000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (247, 7, 22, 11, 4300, 210, 82, 56000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (248, 7, 23, 12, 4500, 220, 86, 63000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (249, 7, 24, 12, 4800, 230, 90, 70000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (250, 7, 25, 13, 5100, 240, 94, 77000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (251, 7, 26, 13, 5400, 250, 98, 84000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (252, 7, 27, 14, 5700, 260, 102, 92000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (253, 7, 28, 14, 6000, 270, 106, 100000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (254, 7, 29, 15, 6300, 280, 110, 108000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (255, 7, 30, 15, 6600, 290, 114, 116000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (256, 7, 31, 16, 6900, 300, 118, 124000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (257, 7, 32, 16, 7200, 310, 122, 132000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (258, 7, 33, 17, 7500, 320, 126, 140000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (259, 7, 34, 17, 7800, 330, 130, 148000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (260, 7, 35, 18, 8100, 340, 134, 156000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (261, 7, 36, 18, 8400, 350, 138, 164000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (262, 7, 37, 19, 8700, 360, 142, 172000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (263, 7, 38, 19, 9000, 370, 146, 180000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (264, 7, 39, 20, 9300, 380, 150, 188000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (265, 7, 40, 20, 9600, 390, 154, 196000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (266, 9, 11, 6, 3100, 360, 70, 3700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (267, 9, 12, 6, 3500, 480, 80, 4200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (268, 9, 13, 7, 3900, 600, 90, 4700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (269, 9, 14, 7, 4300, 720, 100, 5200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (270, 9, 15, 8, 4700, 900, 110, 5700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (271, 9, 16, 8, 5100, 1200, 135, 6200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (272, 9, 17, 9, 5300, 1440, 160, 6700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (273, 9, 18, 9, 5500, 1560, 185, 7200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (274, 9, 19, 10, 5700, 1680, 210, 7700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (275, 9, 20, 10, 5900, 1800, 235, 8200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (276, 9, 21, 11, 6200, 1920, 260, 8700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (277, 9, 22, 11, 6500, 2040, 285, 9200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (278, 9, 23, 12, 6800, 2160, 310, 9700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (279, 9, 24, 12, 7100, 2280, 330, 10200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (280, 9, 25, 13, 7400, 2400, 350, 10700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (281, 9, 26, 13, 7700, 2520, 370, 11200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (282, 9, 27, 14, 8100, 2640, 390, 11700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (283, 9, 28, 14, 8500, 2760, 410, 12200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (284, 9, 29, 15, 8900, 2880, 430, 12700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (285, 9, 30, 15, 9300, 3000, 450, 13200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (286, 9, 31, 16, 9700, 3120, 470, 13700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (287, 9, 32, 16, 10100, 3240, 490, 14200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (288, 9, 33, 17, 10500, 3360, 510, 14700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (289, 9, 34, 17, 10900, 3480, 530, 15200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (290, 9, 35, 18, 11300, 3600, 550, 15700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (291, 9, 36, 18, 11700, 3720, 570, 16200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (292, 9, 37, 19, 12100, 3840, 590, 16700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (293, 9, 38, 19, 12500, 3960, 610, 17200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (294, 9, 39, 20, 12900, 4080, 630, 17700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (295, 9, 40, 20, 13500, 4200, 650, 18500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (296, 22, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (297, 22, 1, 1, 1500, 60, 20, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (298, 22, 2, 1, 1700, 60, 20, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (299, 22, 3, 1, 1900, 120, 35, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (300, 22, 4, 1, 2100, 120, 35, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (301, 22, 5, 1, 2400, 180, 45, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (302, 22, 6, 2, 2700, 180, 45, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (303, 22, 7, 2, 3000, 240, 60, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (304, 22, 8, 2, 3300, 240, 60, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (305, 22, 9, 2, 3600, 300, 75, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (306, 22, 10, 2, 3900, 360, 85, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (307, 22, 11, 3, 4400, 480, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (308, 22, 12, 3, 4900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (309, 22, 13, 3, 5400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (310, 22, 14, 3, 5900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (311, 22, 15, 3, 6400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (312, 22, 16, 4, 6900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (313, 22, 17, 4, 7400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (314, 22, 18, 4, 7900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (315, 22, 19, 4, 8400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (316, 22, 20, 4, 9000, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (317, 11, 11, 5, 25000, 1200, 320, 11, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (318, 11, 12, 5, 30000, 1320, 380, 12, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (319, 11, 13, 5, 35000, 1440, 500, 13, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (500, 21, 0, 0, 1000, 0, 0, 25, 1152)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (501, 21, 1, 1, 5000, 60, 50, 25, 1152)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (502, 21, 2, 2, 7000, 120, 75, 26, 1106)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (503, 21, 3, 3, 10000, 240, 100, 27, 1060)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (504, 21, 4, 4, 15000, 720, 150, 28, 1014)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (505, 21, 5, 5, 30000, 1440, 200, 29, 968)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (506, 21, 6, 6, 40000, 2880, 300, 30, 922)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (507, 21, 7, 7, 50000, 5760, 400, 31, 876)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (508, 21, 8, 8, 65000, 7200, 600, 32, 830)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (509, 21, 9, 9, 100000, 11520, 1000, 33, 784)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (510, 21, 10, 10, 125000, 14400, 1200, 34, 738)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1003, 18, 1, 999, 0, 0, 0, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1004, 19, 1, 999, 0, 0, 0, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1005, 20, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1006, 20, 1, 2, 480, 10, 22, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1007, 15, 20, 19, 0, 0, 0, 8000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1008, 16, 20, 19, 0, 0, 0, 1200, 0)
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (1, N'JeepWillys', 3, 8, 500, 90, 4, 5, 4, 5, 5, 16, 87, 160, 3, 2.36, 12, 10, 10, 13, 16, 1, 14, 0, 400, 1, 1, 0, 4, 1, 1, 13, 2, 125)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (2, N'M3Lee', 3, 30, 178, 60, 2, 4, 1, 6, 1, 11, 265, 551, 2.2, 27, 45, 35, 40, 16, 22, 3, 37, 0, 2000, 1, 1, 6, 2, 3, 7, 52, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (3, N'BA64', 1, 6, 200, 90, 2, 3, 4, 5, 5, 12, 60, 110, 2.66, 2.36, 9, 6, 6, 13, 15, 1, 15, 1000, 0, 1, 1, 0, 0, 1, 5, 1, 2, 50)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (4, N'BA64B', 1, 8, 200, 90, 2, 3, 4, 5, 5, 13, 69, 126, 2.66, 2.36, 10, 8, 6, 13, 15, 1, 15, 1000, 0, 1, 1, 0, 1, 1, 8, 5, 2, 50)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (5, N'Scoutcar', 4, 9, 52, 90, 2, 2, 4, 5, 5, 14, 84, 154, 3, 4.8, 12, 12, 12, 14, 16, 1, 14, 2800, 0, 1, 1, 0, 0, 2, 0, 3, 3, 140)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (6, N'Scoutcar2', 4, 11, 52, 90, 2, 2, 3, 6, 5, 15, 97, 177, 3, 4.8, 14, 14, 14, 14, 16, 1, 14, 3000, 0, 1, 1, 0, 1, 2, 3, 4, 3, 150)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (7, N'PZ2', 2, 7, 140, 72, 3, 5, 4, 5, 5, 10, 66, 121, 2, 8.9, 13, 13, 13, 10, 20, 2, 20, 3000, 0, 1, 1, 3, 4, 1, 0, 0, 3, 150)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (8, N'PZ2A', 2, 7, 140, 72, 3, 5, 4, 3, 5, 10, 75, 140, 2, 8.9, 14, 14, 14, 11, 20, 2, 20, 3000, 0, 1, 1, 3, 4, 1, 3, 2, 3, 150)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (9, N'PZ2B', 2, 11, 140, 72, 3, 5, 4, 9, 5, 11, 101, 192, 2, 8.9, 21, 21, 21, 11, 21, 2, 20, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 175)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (10, N'PZ2C', 2, 14, 140, 72, 3, 5, 4, 7, 5, 11, 116, 221, 2, 8.9, 24, 24, 24, 12, 21, 2, 20, 3500, 0, 1, 1, 3, 1, 2, 3, 3, 3, 175)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (11, N'BirchGun', 4, 9, 150, 32, 2, 6, 1, 7, 1, 9, 84, 110, 1.5, 12, 6, 6, 6, 15, 22, 5, 84, 1600, 0, 1, 1, 10, 0, 1, 0, 0, 3, 80)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (12, N'BirchGun2', 4, 11, 150, 32, 2, 6, 1, 6, 1, 9, 96, 126, 1.5, 12, 10, 6, 6, 15, 22, 5, 84, 1600, 0, 1, 1, 10, 1, 1, 1, 2, 3, 80)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (13, N'SU26', 1, 14, 46, 36, 2, 5, 1, 7, 1, 10, 118, 154, 1.6, 15.6, 14, 10, 12, 19, 25, 5, 37, 4000, 0, 1, 1, 10, 0, 2, 0, 0, 4, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (14, N'SU2676', 1, 17, 46, 36, 2, 5, 1, 6, 1, 10, 134, 177, 1.6, 15.6, 16, 10, 13, 19, 26, 5, 76, 4000, 0, 1, 1, 10, 1, 2, 3, 2, 4, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (15, N'Sdkfz222', 2, 9, 180, 90, 2, 3, 4, 5, 5, 12, 76, 130, 2.7, 4.8, 12, 10, 11, 13, 15, 1, 20, 2200, 0, 1, 1, 0, 4, 2, 0, 0, 3, 110)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (16, N'Sdkfz223', 2, 9, 180, 90, 2, 3, 3, 8, 5, 13, 84, 143, 2.7, 4.8, 12, 10, 11, 13, 15, 1, 20, 2200, 0, 1, 1, 0, 4, 2, 2, 2, 3, 110)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (17, N'Sdkfz231', 2, 14, 180, 90, 2, 3, 5, 8, 5, 14, 118, 216, 3, 4.8, 16, 16, 16, 14, 16, 1, 20, 8000, 0, 1, 1, 0, 0, 3, 0, 0, 3, 400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (18, N'Sdkfz233', 2, 17, 180, 90, 2, 3, 5, 5, 5, 15, 135, 248, 3, 4.8, 18, 18, 18, 14, 16, 1, 20, 9000, 0, 1, 1, 0, 1, 3, 3, 3, 3, 450)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (19, N'BT2', 1, 16, 90, 72, 4, 5, 5, 5, 5, 10, 141, 269, 2, 11.6, 30, 24, 25, 12, 20, 2, 37, 9500, 0, 1, 1, 3, 0, 3, 0, 0, 3, 475)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (20, N'BT5', 1, 20, 90, 72, 4, 5, 4, 7, 5, 11, 162, 309, 2, 11.6, 32, 20, 28, 11, 20, 2, 45, 9500, 0, 1, 1, 3, 1, 3, 3, 4, 3, 475)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (21, N'BT7', 1, 20, 60, 72, 4, 5, 4, 7, 5, 11, 206, 389, 2, 8, 32, 30, 31, 11, 21, 2, 45, 0, 1500, 1, 1, 3, 4, 3, 6, 20, 3, 750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (22, N'BT7M', 1, 11, 60, 72, 3, 5, 4, 7, 5, 11, 227, 432, 1.5, 8, 32, 18, 31, 12, 21, 2, 45, 12000, 0, 1, 1, 3, 4, 2, 3, 4, 3, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (23, N'SU5', 1, 17, 40, 32, 2, 6, 1, 5, 1, 10, 168, 223, 1.5, 10.5, 18, 12, 15, 14, 23, 5, 76, 0, 1000, 1, 1, 10, 2, 2, 4, 10, 4, 500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (24, N'Matilda', 4, 68, 80, 60, 2, 4, 1, 6, 1, 11, 519, 1080, 1.5, 10.5, 60, 40, 53, 16, 22, 3, 75, 0, 5500, 1, 1, 6, 2, 5, 6, 100, 5, 3667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (25, N'M8Scott', 3, 20, 46, 36, 2, 5, 1, 9, 1, 10, 165, 216, 1.6, 15.6, 18, 40, 15, 19, 25, 5, 75, 11000, 0, 1, 1, 10, 0, 3, 0, 0, 4, 550)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (26, N'M8Scott2', 3, 25, 46, 36, 2, 5, 1, 8, 1, 10, 188, 248, 1.6, 15.6, 19, 13, 16, 19, 26, 5, 75, 11000, 0, 1, 1, 10, 1, 3, 3, 7, 4, 550)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (27, N'AT1', 1, 27, 40, 40, 2, 4, 1, 7, 1, 10, 206, 400, 1.33, 6.4, 39, 17, 28, 15, 23, 6, 76, 20000, 0, 1, 1, 8, 0, 3, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (28, N'AT1_2', 1, 34, 40, 40, 2, 4, 1, 6, 1, 10, 235, 460, 1.33, 6.4, 45, 19, 32, 16, 23, 6, 76, 20000, 0, 1, 1, 8, 1, 3, 5, 4, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (29, N'PZjag', 2, 41, 86, 40, 2, 4, 1, 7, 1, 10, 288, 560, 1.33, 6.4, 49, 21, 35, 16, 25, 6, 47, 35000, 0, 1, 1, 8, 0, 4, 0, 0, 6, 1400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (30, N'PZjag2', 2, 51, 86, 40, 2, 4, 1, 6, 1, 10, 329, 644, 1.33, 6.4, 55, 23, 39, 17, 25, 6, 47, 35000, 0, 1, 1, 8, 1, 4, 5, 6, 6, 1400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (31, N'PZ3', 2, 24, 125, 60, 2, 4, 5, 13, 5, 10, 176, 300, 2.2, 19.5, 40, 20, 40, 14, 20, 3, 37, 12000, 0, 1, 1, 6, 4, 3, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (32, N'PZ3D', 2, 24, 125, 60, 2, 4, 5, 12, 5, 10, 188, 330, 2.2, 19.5, 35, 35, 35, 15, 21, 3, 37, 12000, 0, 1, 1, 6, 4, 3, 1, 8, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (33, N'PZ3E', 2, 24, 125, 60, 2, 4, 5, 12, 5, 11, 188, 380, 2.2, 19.5, 39, 32, 35, 15, 22, 3, 37, 15000, 0, 1, 1, 6, 0, 3, 1, 21, 4, 750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (34, N'PZ3F', 2, 30, 125, 60, 2, 4, 5, 8, 5, 11, 226, 437, 2.2, 19.5, 42, 34, 38, 16, 22, 3, 37, 20000, 0, 1, 1, 6, 1, 3, 5, 25, 4, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (35, N'Sdkfz251', 2, 6, 400, 90, 2, 2, 3, 3, 5, 12, 54, 100, 1.8, 2.66, 10, 8, 6, 11, 15, 1, 20, 1000, 0, 1, 1, 0, 4, 1, 0, 0, 2, 50)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (36, N'Sdkfz251Gun', 2, 6, 90, 90, 2, 3, 3, 3, 5, 13, 60, 110, 1.8, 2.66, 10, 8, 6, 11, 15, 1, 37, 1000, 0, 1, 1, 0, 4, 1, 1, 2, 2, 50)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (37, N'M8GHound', 3, 20, 80, 90, 2, 3, 5, 8, 5, 12, 165, 302, 2.7, 2.36, 20, 20, 20, 13, 15, 1, 37, 15000, 0, 1, 1, 0, 0, 4, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (38, N'M8GHound2', 3, 25, 80, 90, 2, 3, 5, 5, 5, 13, 189, 347, 2.7, 2.36, 22, 22, 22, 13, 15, 1, 37, 15000, 0, 1, 1, 0, 1, 4, 3, 3, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (39, N'Daimler', 4, 30, 180, 90, 2, 2, 4, 10, 5, 14, 230, 423, 2.7, 5, 24, 24, 24, 14, 16, 1, 40, 30000, 0, 1, 1, 0, 0, 5, 0, 0, 4, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (40, N'Daimler2', 4, 38, 180, 90, 2, 2, 4, 8, 5, 15, 265, 486, 2.7, 5, 26, 26, 26, 14, 16, 1, 40, 30000, 0, 1, 1, 0, 1, 5, 3, 5, 4, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (41, N'T26', 1, 147, 250, 72, 4, 5, 4, 5, 5, 11, 105, 200, 2, 9, 16, 16, 16, 11, 21, 2, 20, 0, 500, 1, 1, 3, 2, 1, 6, 13, 4, 250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (42, N'M2A4', 3, 24, 90, 72, 2, 5, 4, 9, 5, 10, 198, 376, 2, 11, 35, 25, 30, 11, 20, 2, 37, 18000, 0, 1, 1, 3, 0, 4, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (43, N'M3Stuart', 3, 30, 60, 72, 2, 5, 3, 12, 5, 11, 227, 432, 2, 11, 35, 27, 33, 12, 21, 2, 45, 20000, 0, 1, 1, 3, 1, 4, 3, 0, 4, 800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (44, N'M5Stuart', 3, 24, 90, 72, 2, 5, 4, 7, 5, 11, 288, 545, 2, 11, 40, 30, 35, 12, 21, 2, 37, 0, 2850, 1, 1, 3, 4, 4, 5, 26, 4, 1900)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (45, N'Sexton', 4, 30, 112, 45, 2, 8, 1, 9, 1, 9, 230, 302, 1.33, 11, 22, 14, 18, 20, 25, 5, 88, 21000, 0, 1, 1, 11, 0, 4, 0, 0, 5, 840)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (46, N'Sexton2', 4, 38, 112, 45, 2, 8, 1, 8, 1, 9, 263, 347, 1.33, 11, 25, 17, 21, 20, 26, 5, 88, 21000, 0, 1, 1, 11, 1, 4, 3, 0, 5, 840)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (47, N'Wespe', 2, 46, 40, 44, 2, 7, 1, 9, 1, 10, 323, 423, 1.33, 11, 29, 19, 24, 19, 27, 5, 105, 40000, 0, 1, 1, 11, 0, 5, 0, 0, 5, 1600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (48, N'Wespe2', 2, 57, 40, 44, 2, 7, 1, 8, 1, 10, 369, 486, 1.33, 11, 32, 22, 27, 19, 28, 5, 105, 45000, 0, 1, 1, 11, 1, 5, 3, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (49, N'AlectoMk1', 4, 76, 45, 36, 2, 4, 1, 6, 1, 10, 412, 812, 1.33, 12, 60, 26, 43, 15, 23, 6, 57, 0, 3500, 1, 1, 8, 2, 4, 0, 48, 6, 2333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (50, N'AlectoMk2', 4, 27, 45, 32, 2, 4, 1, 9, 1, 10, 412, 567, 1.33, 12, 60, 26, 43, 16, 23, 6, 57, 0, 3500, 1, 1, 8, 4, 3, 0, 28, 6, 2333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (51, N'T82', 3, 61, 40, 36, 2, 4, 1, 7, 1, 10, 403, 784, 1.33, 12, 59, 25, 42, 16, 25, 6, 57, 58000, 0, 1, 1, 8, 0, 5, 0, 0, 6, 2320)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (52, N'T82_2', 3, 76, 45, 36, 2, 4, 1, 6, 1, 10, 461, 902, 1.33, 12, 64, 28, 46, 15, 23, 6, 57, 65000, 0, 1, 1, 8, 1, 5, 5, 5, 6, 2600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (53, N'PZ4', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 346, 500, 1.3, 25, 45, 45, 45, 14, 20, 3, 75, 45000, 0, 1, 1, 6, 4, 5, 0, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (54, N'PZ4C', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 369, 560, 1.3, 25, 45, 45, 45, 15, 21, 3, 75, 45000, 0, 1, 1, 6, 4, 5, 0, 15, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (55, N'PZ4D', 2, 55, 80, 60, 2, 4, 1, 7, 1, 11, 369, 745, 1.3, 25, 50, 41, 45, 15, 22, 3, 75, 50000, 0, 1, 1, 6, 0, 5, 2, 63, 5, 2000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (56, N'PZ4E', 2, 68, 80, 60, 2, 4, 1, 6, 1, 11, 443, 857, 1.3, 28, 53, 43, 48, 16, 22, 3, 75, 58000, 0, 1, 1, 6, 1, 5, 6, 70, 5, 2320)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (57, N'T2US', 3, 7, 250, 72, 3, 5, 4, 5, 5, 11, 72, 137, 2, 10, 15, 15, 15, 11, 21, 2, 20, 1300, 0, 1, 1, 3, 0, 1, 0, 4, 2, 65)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (58, N'T2E1', 3, 9, 250, 72, 3, 5, 3, 6, 5, 11, 83, 158, 2, 10, 18, 18, 18, 12, 21, 2, 20, 1500, 0, 1, 1, 3, 1, 1, 3, 5, 2, 75)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (59, N'BA3', 1, 46, 80, 90, 2, 3, 5, 5, 5, 12, 323, 592, 2.66, 4, 30, 26, 28, 13, 15, 1, 45, 60000, 0, 1, 1, 0, 0, 6, 0, 0, 4, 2400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (60, N'BA6', 1, 57, 80, 90, 2, 3, 4, 7, 5, 13, 371, 680, 2.66, 4, 32, 28, 30, 13, 15, 1, 45, 65000, 0, 1, 1, 0, 1, 6, 3, 7, 4, 2600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (61, N'CovMK1', 4, 68, 80, 90, 2, 2, 4, 10, 5, 14, 452, 592, 3, 4, 32, 32, 32, 14, 16, 1, 40, 120000, 0, 1, 1, 0, 0, 7, 0, 0, 4, 4000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (62, N'CovMK2', 4, 85, 80, 90, 2, 2, 4, 9, 5, 15, 520, 680, 3, 4, 34, 34, 34, 14, 16, 1, 75, 130000, 0, 1, 1, 0, 1, 7, 3, 10, 4, 4333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (63, N'PZ38tA', 2, 36, 100, 72, 2, 5, 4, 13, 5, 10, 277, 526, 2, 8, 35, 35, 35, 10, 20, 2, 37, 35000, 0, 1, 1, 3, 0, 5, 0, 0, 4, 1400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (64, N'PZ38tB', 2, 46, 100, 72, 2, 5, 3, 15, 5, 10, 318, 605, 2, 11, 38, 38, 38, 11, 20, 2, 37, 40000, 0, 1, 1, 3, 1, 5, 3, 5, 4, 1600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (65, N'Valentine2', 4, 82, 140, 72, 2, 5, 5, 8, 5, 11, 387, 737, 2, 11, 40, 40, 40, 11, 21, 2, 40, 70000, 0, 1, 1, 3, 0, 6, 0, 0, 5, 2800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (66, N'Valentine3', 4, 103, 140, 72, 2, 5, 5, 5, 5, 11, 445, 847, 2, 11, 43, 43, 43, 12, 21, 2, 40, 80000, 0, 1, 1, 3, 1, 6, 3, 6, 5, 3200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (67, N'Bison1', 2, 68, 30, 36, 2, 8, 1, 9, 1, 9, 452, 592, 1.33, 11, 36, 24, 30, 19, 24, 5, 150, 85000, 0, 1, 1, 11, 0, 6, 0, 0, 5, 3400)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (68, N'Bison2', 2, 85, 30, 36, 2, 8, 1, 8, 1, 9, 516, 680, 1.33, 11, 40, 26, 33, 18, 26, 5, 150, 95000, 0, 1, 1, 11, 1, 6, 3, 0, 5, 3800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (69, N'M7Priest', 3, 103, 32, 44, 2, 7, 1, 11, 1, 10, 632, 828, 1.3, 11, 43, 29, 36, 19, 27, 5, 105, 160000, 0, 1, 1, 11, 0, 7, 0, 0, 6, 5333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (70, N'M7A1Priest', 3, 128, 32, 44, 2, 7, 1, 10, 1, 10, 723, 952, 1.3, 11, 47, 31, 39, 19, 28, 5, 105, 175000, 0, 1, 1, 11, 1, 7, 3, 15, 6, 5833)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (71, N'SU76', 1, 114, 40, 24, 2, 4, 1, 7, 1, 10, 565, 1098, 1.33, 12, 69, 29, 49, 17, 25, 6, 76, 105000, 0, 1, 1, 8, 0, 6, 5, 0, 6, 4200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (72, N'SU76M', 1, 114, 45, 24, 2, 4, 1, 8, 1, 10, 645, 1262, 1.33, 12, 74, 32, 53, 16, 23, 6, 76, 115000, 0, 1, 1, 8, 1, 6, 5, 10, 6, 4600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (73, N'Marder1', 2, 137, 40, 30, 2, 4, 1, 8, 1, 10, 791, 1537, 1.33, 12, 84, 36, 60, 16, 25, 6, 75, 200000, 0, 1, 1, 8, 0, 7, 0, 0, 6, 6667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (74, N'Marder2', 2, 171, 40, 30, 2, 4, 1, 7, 1, 10, 904, 1767, 1.33, 12, 78, 34, 56, 17, 25, 6, 75, 200000, 0, 1, 1, 8, 1, 7, 5, 4, 6, 6667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (75, N'T28A', 1, 36, 80, 60, 2, 4, 1, 8, 1, 10, 263, 532, 1.2, 28, 44, 36, 40, 14, 20, 3, 76, 28000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1120)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (76, N'T28B', 1, 46, 80, 60, 2, 4, 1, 7, 1, 10, 316, 612, 1.2, 28, 47, 39, 43, 15, 21, 3, 76, 30000, 0, 1, 1, 6, 1, 4, 4, 2, 5, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (77, N'M7', 3, 82, 80, 60, 2, 4, 1, 7, 1, 11, 516, 1043, 1.2, 28, 55, 45, 50, 15, 22, 3, 75, 95000, 0, 1, 1, 6, 0, 6, 0, 0, 5, 3800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (78, N'M7A1', 3, 103, 80, 60, 2, 4, 1, 6, 1, 11, 620, 1199, 1.2, 28, 55, 45, 50, 16, 22, 3, 75, 100000, 0, 1, 1, 6, 1, 6, 4, 6, 5, 4000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (79, N'DW2A', 2, 107, 60, 48, 2, 4, 1, 9, 1, 10, 678, 1300, 1.1, 30, 72, 48, 60, 14, 20, 4, 75, 120000, 0, 1, 1, 6, 0, 6, 0, 0, 6, 4800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (80, N'DW2B', 2, 134, 60, 48, 2, 4, 1, 9, 1, 10, 774, 1495, 1.1, 30, 78, 52, 65, 15, 21, 4, 75, 130000, 0, 1, 1, 6, 1, 6, 5, 60, 6, 5200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (81, N'M6', 3, 134, 60, 48, 2, 4, 1, 8, 1, 11, 968, 1820, 1.1, 57, 84, 56, 70, 15, 22, 4, 76, 0, 7000, 1, 1, 6, 2, 6, 9, 80, 6, 5833)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (82, N'T50_1', 1, 82, 100, 72, 3, 5, 4, 16, 5, 10, 542, 737, 2, 14, 45, 45, 45, 10, 20, 2, 45, 140000, 0, 1, 1, 3, 0, 7, 0, 0, 6, 4667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (83, N'T50_2', 1, 103, 100, 72, 3, 5, 3, 17, 5, 10, 623, 847, 2, 14, 48, 48, 48, 11, 20, 2, 45, 150000, 0, 1, 1, 3, 1, 7, 3, 5, 6, 5000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (84, N'Grille1', 2, 110, 30, 36, 2, 8, 2, 13, 1, 9, 1240, 1623, 1.33, 11, 50, 34, 42, 19, 24, 5, 150, 540000, 0, 1, 1, 11, 0, 9, 0, 0, 6, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (85, N'T34_1', 1, 140, 80, 60, 2, 4, 1, 8, 1, 10, 723, 1460, 1.33, 28, 60, 40, 50, 14, 20, 3, 76, 190000, 0, 1, 1, 6, 0, 7, 0, 0, 6, 6333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (86, N'T34_2', 1, 140, 80, 60, 2, 4, 1, 7, 1, 10, 867, 1679, 1.33, 28, 60, 40, 50, 15, 21, 3, 76, 220000, 0, 1, 1, 6, 1, 7, 4, 2, 6, 7333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (87, N'SU85_1', 1, 160, 40, 30, 2, 4, 1, 7, 1, 10, 1129, 2228, 1.33, 13, 90, 38, 64, 16, 25, 6, 85, 0, 10000, 1, 1, 8, 2, 7, 10, 132, 6, 10000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (88, N'Churchill1', 4, 380, 60, 48, 2, 4, 1, 9, 1, 10, 949, 1820, 1, 30, 72, 59, 65, 14, 20, 4, 75, 240000, 0, 1, 1, 6, 0, 7, 0, 0, 6, 8000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (89, N'Churchill2', 4, 380, 60, 48, 2, 4, 1, 9, 1, 10, 1084, 2093, 1, 30, 73, 59, 66, 15, 21, 4, 75, 275000, 0, 1, 1, 6, 1, 7, 5, 85, 6, 9167)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (90, N'AEC', 2, 80, 80, 90, 4, 3, 5, 5, 5, 12, 632, 1160, 2.66, 5, 40, 32, 36, 13, 15, 1, 50, 220000, 0, 1, 1, 0, 0, 8, 0, 0, 5, 7333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (91, N'AECMK1', 2, 80, 80, 90, 4, 3, 4, 8, 5, 13, 727, 1333, 2.66, 5, 40, 36, 38, 13, 15, 1, 50, 240000, 0, 1, 1, 0, 1, 8, 3, 10, 5, 8000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (92, N'Puma1', 4, 90, 80, 90, 4, 2, 5, 5, 5, 14, 885, 1623, 3, 5, 44, 36, 40, 14, 16, 1, 75, 220000, 0, 1, 1, 0, 4, 8, 0, 0, 5, 7333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (93, N'M24_1', 3, 100, 140, 72, 3, 5, 5, 12, 5, 11, 759, 1444, 2, 15, 60, 40, 50, 11, 21, 2, 75, 260000, 0, 1, 1, 3, 0, 8, 0, 0, 5, 8667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (94, N'M24_2', 3, 100, 140, 72, 3, 5, 5, 8, 5, 11, 873, 1661, 2, 15, 60, 46, 53, 12, 21, 2, 75, 275000, 0, 1, 1, 3, 1, 8, 3, 10, 5, 9167)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (95, N'Bishop_1', 4, 110, 30, 36, 2, 8, 2, 13, 1, 9, 885, 1160, 1.33, 11, 50, 34, 42, 19, 24, 5, 150, 280000, 0, 1, 1, 11, 0, 8, 0, 0, 6, 9333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (96, N'Bishop_2', 4, 110, 30, 36, 2, 8, 2, 11, 1, 9, 1012, 1333, 1.33, 11, 54, 36, 45, 18, 26, 5, 150, 295000, 0, 1, 1, 11, 1, 8, 3, 20, 6, 9833)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (97, N'Sherman1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1012, 2044, 1.33, 28, 66, 54, 60, 15, 22, 3, 75, 340000, 0, 1, 1, 6, 0, 8, 0, 0, 6, 11333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (98, N'Sherman2', 3, 150, 80, 60, 2, 4, 1, 8, 1, 11, 1214, 2350, 1.33, 28, 69, 57, 63, 16, 22, 3, 75, 355000, 0, 1, 1, 6, 1, 8, 4, 5, 6, 11833)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (99, N'Archer_1', 4, 150, 45, 24, 2, 4, 1, 9, 1, 10, 1107, 2151, 1.33, 13, 88, 38, 63, 15, 23, 6, 76, 370000, 0, 1, 1, 8, 0, 8, 0, 0, 6, 12333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (100, N'Archer_2', 4, 150, 45, 24, 2, 4, 1, 8, 1, 10, 1265, 2474, 1.33, 13, 94, 40, 67, 16, 23, 6, 76, 390000, 0, 1, 1, 8, 1, 8, 4, 5, 6, 13000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (101, N'KV1', 1, 400, 60, 48, 2, 4, 1, 11, 1, 11, 1328, 2548, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 440000, 0, 1, 1, 6, 0, 8, 0, 0, 6, 14667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (102, N'KV1S', 1, 400, 60, 48, 2, 4, 1, 10, 1, 11, 1518, 2930, 1.4, 42, 95, 52, 65, 16, 22, 4, 76, 465000, 0, 1, 1, 6, 1, 8, 5, 40, 6, 15500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (103, N'IS1', 1, 400, 60, 48, 2, 4, 1, 9, 1, 11, 1897, 3567, 1.1, 50, 110, 70, 90, 16, 22, 4, 76, 0, 13500, 1, 1, 6, 2, 8, 10, 161, 6, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (104, N'Puma2', 4, 90, 80, 90, 4, 2, 4, 8, 5, 14, 1018, 1867, 3, 5, 44, 40, 42, 14, 16, 1, 75, 250000, 0, 1, 1, 0, 4, 8, 3, 0, 5, 8333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (105, N'T21_1', 3, 100, 140, 72, 3, 5, 5, 12, 5, 11, 1063, 2022, 2, 15, 65, 45, 55, 11, 21, 2, 75, 400000, 0, 1, 1, 3, 0, 9, 0, 0, 6, 13333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (106, N'T21_2', 3, 100, 140, 72, 3, 5, 5, 8, 5, 11, 1222, 2325, 2, 15, 65, 51, 58, 12, 21, 2, 75, 420000, 0, 1, 1, 3, 1, 9, 3, 40, 6, 14000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (107, N'Grille2', 2, 110, 30, 36, 1, 8, 2, 11, 1, 9, 1417, 1867, 1.33, 11, 54, 36, 45, 18, 26, 5, 150, 560000, 0, 1, 1, 11, 1, 9, 3, 50, 6, 18667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (108, N'Pershing1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1992, 4149, 1.33, 28, 78, 64, 71, 15, 22, 3, 75, 600000, 0, 1, 1, 6, 0, 10, 0, 0, 6, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (109, N'Conqueror', 4, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2656, 4637, 1.2, 42, 130, 70, 100, 15, 22, 4, 90, 0, 18000, 1, 1, 6, 2, 9, 5, 150, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (110, N'M36_1', 3, 150, 45, 24, 1, 4, 1, 9, 1, 10, 1550, 3012, 1.33, 13, 98, 42, 70, 15, 23, 6, 76, 620000, 0, 1, 1, 8, 0, 9, 0, 0, 6, 20667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (111, N'M36_2', 3, 150, 45, 24, 1, 4, 1, 8, 1, 10, 1771, 3464, 1.33, 13, 104, 44, 74, 16, 23, 6, 76, 650000, 0, 1, 1, 8, 1, 9, 4, 0, 6, 21667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (112, N'Tiger1', 2, 400, 60, 48, 2, 4, 1, 11, 1, 11, 1859, 3567, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 700000, 0, 1, 1, 6, 0, 9, 0, 0, 6, 23333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (113, N'Tiger2', 2, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2125, 4102, 1.1, 42, 105, 85, 95, 16, 22, 4, 85, 750000, 0, 1, 1, 6, 1, 9, 5, 0, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (114, N'Panther1', 2, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1417, 2861, 1.4, 28, 70, 60, 65, 15, 22, 3, 75, 520000, 0, 1, 1, 6, 0, 9, 0, 0, 6, 17333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (115, N'Panther2', 2, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1700, 3290, 1.4, 28, 73, 63, 68, 15, 22, 3, 75, 520000, 0, 1, 1, 6, 1, 9, 4, 0, 6, 17333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (116, N'ISU_152', 1, 350, 30, 24, 1, 4, 1, 7, 1, 10, 2214, 4066, 1.33, 13, 109, 47, 78, 16, 23, 6, 76, 0, 17000, 1, 1, 8, 2, 9, 4, 100, 6, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (117, N'Pershing2', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 2380, 4607, 1.4, 28, 78, 68, 73, 16, 22, 3, 75, 650000, 0, 1, 1, 6, 1, 10, 4, 10, 6, 21667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (118, N'SU14_1', 1, 110, 30, 36, 1, 8, 2, 13, 1, 9, 1736, 2273, 1.2, 11, 100, 40, 70, 19, 24, 5, 150, 680000, 0, 1, 1, 11, 0, 10, 0, 0, 6, 22667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (119, N'SU14_2', 1, 110, 30, 36, 1, 8, 2, 11, 1, 9, 1983, 2614, 1.2, 11, 100, 46, 73, 18, 26, 5, 150, 700000, 0, 1, 1, 11, 1, 10, 3, 50, 6, 23333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (120, N'Jagdtiger1', 2, 150, 45, 24, 1, 4, 1, 9, 1, 10, 2169, 4217, 1.2, 13, 108, 46, 77, 15, 23, 6, 88, 750000, 0, 1, 1, 8, 0, 10, 0, 0, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (121, N'Jagdtiger2', 2, 150, 45, 24, 1, 4, 1, 8, 1, 10, 2479, 4849, 1.2, 13, 113, 49, 81, 16, 23, 6, 88, 800000, 0, 1, 1, 8, 1, 10, 4, 50, 6, 26667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (122, N'IS2', 1, 400, 60, 48, 2, 4, 1, 11, 1, 11, 2603, 4994, 1.1, 53, 130, 70, 100, 15, 22, 4, 125, 900000, 0, 1, 1, 6, 0, 10, 0, 0, 6, 30000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (123, N'IS3', 1, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2975, 5743, 1.1, 60, 135, 80, 100, 16, 22, 4, 125, 999999, 0, 1, 1, 6, 1, 10, 5, 0, 6, 33333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (124, N'IS4', 1, 400, 60, 48, 2, 4, 1, 10, 1, 11, 3719, 6492, 1.2, 60, 140, 90, 100, 16, 22, 4, 125, 0, 20000, 1, 1, 6, 2, 10, 5, 200, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (125, N'M41_1', 3, 100, 100, 72, 3, 5, 5, 12, 5, 11, 1488, 2831, 2, 15, 70, 50, 60, 11, 21, 2, 75, 550000, 0, 1, 1, 3, 0, 10, 0, 0, 6, 18333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (126, N'M41_2', 3, 100, 100, 72, 3, 5, 5, 8, 5, 11, 1711, 3255, 2, 15, 70, 55, 63, 12, 21, 2, 75, 600000, 0, 1, 1, 3, 1, 10, 3, 20, 6, 20000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (127, N'Maus', 1, 400, 60, 20, 1, 4, 1, 12, 1, 11, 4500, 7000, 1, 120, 180, 100, 120, 16, 22, 4, 128, 999999, 0, 1, 1, 6, 4, 10, 0, 0, 6, 20000)
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] OFF
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'AutoGameRating', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleAttemptsCost', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleCooldown', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleCooldownCost', N'10')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleDynamicTopGoldReward', N'400')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleMaxAttempts', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleScanAttemptsCost', N'10')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleScanMaxFreeAttempts', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleStaticTopGoldReward', N'300')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BeginnerItems', N'15,2,4,2,9,2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingQueue', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingRemovePrice', N'100')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingsLimit', N'0,1,1,10,10,10,10,10,10,10,2,1,1,1000,1000,0,0,0,0,0,1,1,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CampaignGraphData', N'new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, new[]{0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0}')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ChangeNamePrice', N'499')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuyPlaceDynamicPrice', N'25')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuyPlaceStaticPrice', N'157')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuySkillLvl1', N'1256')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuySkillLvl2', N'3140')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuySkillLvl3', N'7850')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuySkillLvl4', N'19625')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanBuySkillLvl5', N'49063')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanChangeFlagPrice', N'157')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanChangeLogoPrice', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanChangeOwner', N'500')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanChangeTaxPrice', N'157')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanConvertGoldToTreasury', N'0.3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanConvertMoneyToTreasury', N'0.02')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanCreateMinLevel', N'10')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanCreatePrice', N'11000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanDonateGoldPacks', N'50,100,300,500,1000,5000,10000,20000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanDonateGoldPacksMult', N'1.4,1.4,1.5,1.5,1.5,1.6,1.6,1.7')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanMaxPlaceLimit', N'40')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanTournamentReward', N'"[{''Value1'':1,''Value2'':1,''Value3'':[{''type'':0,''num'':3500},{''type'':5,''num'':700},{''type'':1,''num'':175}]},{''Value1'':2,''Value2'':2,''Value3'':[{''type'':0,''num'':3000},{''type'':5,''num'':600},{''type'':1,''num'':150}]},{''Value1'':3,''Value2'':3,''Value3'':[{''type'':0,''num'':2000},{''type'':5,''num'':400},{''type'':1,''num'':100}]},{''Value1'':4,''Value2'':5,''Value3'':[{''type'':0,''num'':1000},{''type'':5,''num'':200},{''type'':1,''num'':50}]},{''Value1'':6,''Value2'':10,''Value3'':[{''type'':0,''num'':500},{''type'':5,''num'':100},{''type'':1,''num'':25}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanTournamentRewardMinPoints', N'100')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ComponentsCost', N'3,30,150')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewAdditionalSkills', N'17,18,19,20,21,22')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewCostPowerGrowthDaily', N'1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEnforcePrices', N'0,2000,5000,10000,20000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEvolvePrices', N'0,200,1700,9300,35400')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewTierExp', N'200,1,4,9,15,0.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewTransferExpGoldPrices', N'50,50,100,150,200,250,300,350,400,450,500,15,16,17,18,19,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewTransferExpMoneyPrices', N'300,900,2200,3700,6700,9700,12000,14700,29700,13,14,15,16,17,18,19,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DailyRewards', N'600,600,601,602,603,604,605,606,607,608,609,609')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DailyRewardTimeMs', N'180000,600000,1800000,3600000,10800000,28800000,28800000,28800000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DifficultyMult', N'0,0.2,0.4,0.6,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventBuildingRepM', N'1,1.05,1.10,1.16,1.23,1.31,1.4,1.5,1.62,1.85')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventFuelPrice', N'10')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMap', N'"[{''mapParts'':16,''mapPartsPerX'':2,''cellsPerX'':12,''cellsPerY'':48,''fuelCost'':1,''dangerZoneY'':30,''encounterMissions'':[1528,1529],''encounters'':[{''id'':1,''imageKey'':''imgKey1'',''objectiveKey'':''objectiveKey1'',''actions'':[{''actionKey'':''key1.1'',''nextEncounterId'':2,''actionHandlers'':[]},{''actionKey'':''key1.2'',''nextEncounterId'':2,''actionHandlers'':[]}]},{''id'':2,''imageKey'':''imgKey2'',''objectiveKey'':''objectiveKe2'',''actions'':[{''actionKey'':''key2.1'',''nextEncounterId'':3,''actionHandlers'':[]},{''actionKey'':''key2.2'',''nextEncounterId'':3,''actionHandlers'':[]}]},{''id'':3,''imageKey'':''imgKey3'',''objectiveKey'':''objectiveKe3'',''actions'':[{''actionKey'':''key3.1'',''actionHandlers'':[{''name'':''ResourcesEncounterHandler'',''args'':''1,5,100,50,21,1''},{''name'':''AddBonusEncounterHandler'',''args'':''ScoutingBonus,1''},{''name'':''HealRandomSquadEncounterHandler''},{''name'':''DamageRandomSquadEncounterHandler'',''args'':10},{''name'':''ScoutEnemyBonusEncounterHandler''},{''name'':''StartBattleEncounterHandler'',''args'':''1528,1529''}]},{''actionKey'':''key3.2'',''actionHandlers'':[{''name'':''ResourcesEncounterHandler'',''args'':''1,5,100,50,21,1''},{''name'':''AddBonusEncounterHandler'',''args'':''ScoutingBonus,1''},{''name'':''HealRandomSquadEncounterHandler''},{''name'':''DamageRandomSquadEncounterHandler'',''args'':10},{''name'':''ScoutEnemyBonusEncounterHandler''},{''name'':''StartBattleEncounterHandler'',''args'':''1528,1529''}]},{''actionKey'':''key3.3'',''actionHandlers'':[{''name'':''ResourcesEncounterHandler'',''args'':''1,5,100,50,21,1''},{''name'':''AddBonusEncounterHandler'',''args'':''ScoutingBonus,1''},{''name'':''HealRandomSquadEncounterHandler''},{''name'':''DamageRandomSquadEncounterHandler'',''args'':10},{''name'':''ScoutEnemyBonusEncounterHandler''},{''name'':''StartBattleEncounterHandler'',''args'':''1528,1529''}]}]}],''cells'':[{''x'':2,''y'':3,''type'':''Encounter'',''tierRange'':0,''isObjectVisible'':true,''encounterId'':3},{''x'':5,''y'':3,''type'':''EncounterBlocking'',''tierRange'':0,''isObjectVisible'':true,''encounterId'':1},{''x'':5,''y'':0,''state'':''Open''},{''x'':4,''y'':0,''state'':''AvailableForOpen''},{''x'':6,''y'':0,''state'':''AvailableForOpen''},{''x'':5,''y'':1,''state'':''AvailableForOpen''},{''x'':0,''y'':1,''type'':''Bonus'',''bonusType'':''RepairAll'',''isObjectVisible'':true},{''x'':2,''y'':1,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':9,''y'':1,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':6,''y'':3,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':9,''y'':3,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':1,''y'':4,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':4,''y'':4,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':10,''y'':4,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':11,''y'':5,''type'':''Bonus'',''bonusType'':''ScoutingBonus'',''isObjectVisible'':false},{''x'':7,''y'':6,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':0,''y'':7,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':true},{''x'':3,''y'':7,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':7,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':10,''y'':7,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':0,''y'':8,''type'':''Bonus'',''bonusType'':''AllyPower'',''isObjectVisible'':true},{''x'':10,''y'':8,''type'':''Bonus'',''bonusType'':''Artillery'',''isObjectVisible'':false},{''x'':11,''y'':8,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':6,''y'':9,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':8,''y'':10,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':1,''y'':11,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':5,''y'':11,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':true},{''x'':6,''y'':11,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':true},{''x'':8,''y'':11,''type'':''Bonus'',''bonusType'':''ScoutingEnemy'',''isObjectVisible'':false},{''x'':10,''y'':11,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':0,''y'':12,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':1,''y'':12,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':4,''y'':12,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':4,''y'':13,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':13,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':11,''y'':13,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':2,''y'':14,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':4,''y'':14,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':14,''type'':''Bonus'',''bonusType'':''Restore'',''isObjectVisible'':false},{''x'':11,''y'':14,''type'':''Target'',''tierRange'':1,''isObjectVisible'':false},{''x'':0,''y'':15,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':2,''y'':15,''type'':''Bonus'',''bonusType'':''RepairAll'',''isObjectVisible'':false},{''x'':9,''y'':15,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':11,''y'':15,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':6,''y'':16,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':1,''y'':17,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':4,''y'':17,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':6,''y'':17,''type'':''Bonus'',''bonusType'':''ScoutingEnemy'',''isObjectVisible'':false},{''x'':1,''y'':18,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':2,''y'':18,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':3,''y'':18,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':10,''y'':18,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':11,''y'':18,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':1,''y'':19,''type'':''Bonus'',''bonusType'':''ScoutingEnemy'',''isObjectVisible'':false},{''x'':7,''y'':19,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':11,''y'':19,''type'':''Bonus'',''bonusType'':''AllyPower'',''isObjectVisible'':false},{''x'':5,''y'':20,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':7,''y'':20,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':6,''y'':21,''type'':''Target'',''tierRange'':1,''isObjectVisible'':false},{''x'':7,''y'':21,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':10,''y'':21,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':0,''y'':22,''type'':''Bonus'',''bonusType'':''AllyPower'',''isObjectVisible'':false},{''x'':2,''y'':22,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':4,''y'':22,''type'':''Bonus'',''bonusType'':''RepairAll'',''isObjectVisible'':false},{''x'':11,''y'':22,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':true},{''x'':1,''y'':23,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':2,''y'':23,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':true},{''x'':11,''y'':23,''type'':''Bonus'',''bonusType'':''ScoutingBonus'',''isObjectVisible'':true},{''x'':1,''y'':24,''type'':''Target'',''tierRange'':1,''isObjectVisible'':true},{''x'':3,''y'':24,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':6,''y'':24,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':9,''y'':25,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':11,''y'':25,''type'':''Fight'',''tierRange'':-1,''isObjectVisible'':false},{''x'':2,''y'':26,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':26,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':11,''y'':26,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':9,''y'':27,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':5,''y'':28,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':1,''y'':29,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':3,''y'':29,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':29,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':2,''y'':30,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':3,''y'':30,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':4,''y'':31,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':31,''type'':''Bonus'',''bonusType'':''ScoutingBonus'',''isObjectVisible'':false},{''x'':9,''y'':31,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':0,''y'':32,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':2,''y'':32,''type'':''Bonus'',''bonusType'':''ScoutingBonus'',''isObjectVisible'':false},{''x'':9,''y'':32,''type'':''Bonus'',''bonusType'':''AllyPower'',''isObjectVisible'':false},{''x'':0,''y'':33,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':0,''y'':34,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':6,''y'':34,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':10,''y'':34,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':0,''y'':35,''type'':''Bonus'',''bonusType'':''RepairAll'',''isObjectVisible'':false},{''x'':3,''y'':35,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':6,''y'':35,''type'':''Bonus'',''bonusType'':''Artillery'',''isObjectVisible'':false},{''x'':8,''y'':35,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':3,''y'':36,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':true},{''x'':4,''y'':36,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':true},{''x'':9,''y'':36,''type'':''Target'',''tierRange'':1,''isObjectVisible'':false},{''x'':0,''y'':37,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':7,''y'':37,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':11,''y'':37,''type'':''Resources'',''tierRange'':1,''isObjectVisible'':false},{''x'':2,''y'':38,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':11,''y'':38,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':1,''y'':39,''type'':''Target'',''tierRange'':1,''isObjectVisible'':true},{''x'':6,''y'':39,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':9,''y'':39,''type'':''Bonus'',''bonusType'':''AllyPower'',''isObjectVisible'':false},{''x'':10,''y'':39,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':11,''y'':39,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':0,''y'':40,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':3,''y'':40,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':5,''y'':40,''type'':''Resources'',''tierRange'':1,''isObjectVisible'':false},{''x'':3,''y'':41,''type'':''Bonus'',''bonusType'':''ScoutingEnemy'',''isObjectVisible'':false},{''x'':9,''y'':41,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':1,''y'':42,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':5,''y'':42,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':7,''y'':42,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':11,''y'':42,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':3,''y'':43,''type'':''Fight'',''tierRange'':0,''isObjectVisible'':false},{''x'':7,''y'':43,''type'':''Target'',''tierRange'':1,''isObjectVisible'':false},{''x'':9,''y'':43,''type'':''Fight'',''tierRange'':1,''isObjectVisible'':false},{''x'':3,''y'':44,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false},{''x'':5,''y'':44,''type'':''Resources'',''tierRange'':-1,''isObjectVisible'':false},{''x'':9,''y'':44,''type'':''Resources'',''tierRange'':0,''isObjectVisible'':false}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusMaxLimit', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusPriceGold', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusRepairAll', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapCompleteFightBonusReputation', N'40,70,90')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapDestroyTargetBonusReputation', N'500')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapOpencCellBonusReputation', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapResetAfterDays', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapResourceRewards', N'650,650,651,652,653,654,655,656,657,658,659')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMissionDifficultyMult', N'0.62,0.8,0.9')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventRewards', N'"[{''points'':2,''rewards'':[{''type'':7,''num'':1,''item'':19}]},{''points'':50,''rewards'':[{''type'':7,''num'':2,''item'':308}]},{''points'':100,''rewards'':[{''type'':7,''num'':1,''item'':19},{''type'':7,''num'':10,''item'':79}]},{''points'':200,''rewards'':[{''type'':7,''num'':10,''item'':21},{''type'':7,''num'':10,''item'':22},{''type'':7,''num'':10,''item'':23}]},{''points'':300,''rewards'':[{''type'':7,''num'':2,''item'':305},{''type'':7,''num'':5,''item'':80}]},{''points'':600,''rewards'':[{''type'':7,''num'':1,''item'':3},{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':700}]},{''points'':800,''rewards'':[{''type'':7,''num'':5,''item'':25},{''type'':7,''num'':5,''item'':26},{''type'':7,''num'':5,''item'':27}]},{''points'':1000,''rewards'':[{''type'':7,''num'':1,''item'':81},{''type'':7,''num'':1,''item'':28},{''type'':1,''num'':100}]},{''points'':1250,''rewards'':[{''type'':7,''num'':1,''item'':309},{''type'':7,''num'':7,''item'':80}]},{''points'':1500,''rewards'':[{''type'':7,''num'':7,''item'':25},{''type'':7,''num'':7,''item'':26},{''type'':7,''num'':7,''item'':27}]},{''points'':2000,''rewards'':[{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':702}]},{''points'':2500,''rewards'':[{''type'':7,''num'':50,''item'':79},{''type'':7,''num'':10,''item'':80}]},{''points'':3000,''rewards'':[{''type'':7,''num'':1,''item'':4},{''type'':7,''num'':3,''item'':306}]},{''points'':4000,''rewards'':[{''type'':7,''num'':1,''item'':704}]},{''points'':5000,''rewards'':[{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':2,''item'':28},{''type'':1,''num'':150}]},{''points'':7000,''rewards'':[{''type'':7,''num'':1,''item'':5},{''type'':7,''num'':1,''item'':10}]},{''points'':8500,''rewards'':[{''type'':7,''num'':3,''item'':318},{''type'':7,''num'':2,''item'':704}]},{''points'':10000,''rewards'':[{''type'':7,''num'':4,''item'':81},{''type'':7,''num'':4,''item'':28},{''type'':1,''num'':250}]},{''points'':12500,''rewards'':[{''type'':7,''num'':1,''item'':706}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,282,685,844,1150,582,433,-2715,-11354,-12582')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveEliteUnitDiscountPercentage', N'25')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FBLinkGold', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FriendMaxStat', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelCost', N'7,7,11,14')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelHQStorage', N'10')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelPerLvl', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelPremiumBonus', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelPrice', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GMCourse', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GRCourse', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'HealWoundPrices', N'0.03,0.03,0.05,0.07')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitFriendExperience', N'1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitGold', N'200')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitMoney', N'200')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitParts', N'290')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitSlots', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitTank', N'57')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankCost', N'100')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankItemId', N'41')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionPool', N'false')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionsPerDay', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'PVPDailyCount', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'Quest4GoldPercent', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QuestChoosePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QuestDropPrice', N'25')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QuestNowPrice', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QuestWaitingTime', N'6')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QueueCampaign', N'8')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'QueueGold', N'300')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RadarScanDelay', N'21600000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RefreshMarketPrice', N'12')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RemoveDevicePercent', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ReqMarketLvl', N'1,10,15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ResetPriceMult', N'0, 1.5, 2, 3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ResetPriceTiers', N'100, 200,400,800')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RewardMult', N'1,1,1.25,1.6')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'Sandbox', N'true')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ScanRadarCost', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellCrew', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellDevice', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellPower', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellShell', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellTank', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1354')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewardHints', N'"[{''name'':''camp_missions'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':3,''type'':4},{''lvl'':1,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''campaign'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':4,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''event'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':2,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''pvp'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''easy_radar'',''rewards'':[{''lvl'':1,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''normal_radar'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''hard_radar'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':2,''type'':5},{''lvl'':4,''type'':4},{''lvl'':4,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''quests'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''arena'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''top'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''top_up'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]},{''name'':''market'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''level_up'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewards', N'"[{''points'':25,''rewards'':[{''type'':0,''num'':500}]},{''points'':50,''rewards'':[{''type'':5,''num'':222}]},{''points'':75,''rewards'':[{''type'':7,''num'':1,''item'':28},{''type'':7,''num'':1,''item'':81}]},{''points'':120,''rewards'':[{''type'':1,''num'':50},{''type'':5,''num'':150}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TWLinkGold', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireBattles', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHirePriceG', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHirePriceMPercent', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireTimeH', N'24')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitSharingCancelTimeH', N'1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitSharingTimeH', N'24')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeDropPrice', N'300')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeMultiplier', N'1,1.1,1.2,1.3,1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpperMult', N'1.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserFriendReward', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserTierLevels', N'0,10,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'VIPMatrix', N'new int[] {1,0,100,550,2000,20,0,0,8,0}, new int[] {2,2000,100,550,2000,25,7,10,10,1}, new int[] {3,4000,100,550,2000,30,15,20,12,1}, new int[] {4,8000,100,550,2000,40,25,30,14,1}, new int[] {5,16000,100,550,2000,50,35,1000,16,2}')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneShieldHours', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneUnderAttack', N'300')
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1, N'{"type":"Resources","tier":"1","name":"moneyPack1","price":"250","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"250,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (2, N'{"type":"Resources","tier":"2","name":"moneyPack2","price":"500","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"500,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (3, N'{"type":"Resources","tier":"3","name":"moneyPack3","price":"1000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"1000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (4, N'{"type":"Resources","tier":"4","name":"moneyPack4","price":"2000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"2000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (5, N'{"type":"Resources","tier":"5","name":"moneyPack5","price":"5000","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"5000,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (6, N'{"type":"Resources","tier":"1","name":"partsPack1","price":"20","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,25"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (7, N'{"type":"Resources","tier":"2","name":"partsPack2","price":"50","active":"true","money":510,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,50"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (8, N'{"type":"Resources","tier":"3","name":"partsPack3","price":"100","active":"true","money":950,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,100"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (9, N'{"type":"Resources","tier":"4","name":"partsPack4","price":"250","active":"true","money":2190,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,250"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (10, N'{"type":"Resources","tier":"5","name":"partsPack5","price":"500","active":"true","money":4060,"OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,500"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (11, N'{"type":"Construction","tier":"1","name":"construction1","price":"10","active":"true","param":5}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (12, N'{"type":"Construction","tier":"2","name":"construction2","price":"20","active":"true","param":15}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (13, N'{"type":"Construction","tier":"3","name":"construction3","price":"40","active":"true","param":30}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (14, N'{"type":"Construction","tier":"4","name":"construction4","price":"80","active":"true","param":60}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (15, N'{"type":"Construction","tier":"5","name":"construction5","price":"240","active":"true","param":180}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (16, N'{"type":"Construction","tier":"6","name":"construction6","price":"480","active":"true","param":360}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (17, N'{"type":"Construction","tier":"7","name":"construction7","price":"1000","active":"true","param":720}', 3)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (18, N'{"type":"Construction","tier":"8","name":"construction8","price":"5000","active":"true","param":600000}', 5)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (19, N'{"type":"Resources","tier":"1","name":"moneyPackMini","price":"100","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"100,0"}]}', 1)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (20, N'{"type":"Resources","tier":"1","name":"partsPackMini","price":"10","active":"true","OnUse":[{"name":"AddResourcesOnUseItemHandler","args":"0,10"}]}', 2)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (21, N'{"type":"EvolvePart","tier":"1","name":"cmp_engine_schema","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (22, N'{"type":"EvolvePart","tier":"1","name":"cmp_gun_schema","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (23, N'{"type":"EvolvePart","tier":"1","name":"cmp_armor_plate","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (24, N'{"type":"EvolvePart","tier":"1","name":"cmp_electroparts","param":1,"price":5}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (25, N'{"type":"EvolvePart","tier":"2","name":"cmp_radioparts","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (26, N'{"type":"EvolvePart","tier":"2","name":"cmp_turret_schema","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (27, N'{"type":"EvolvePart","tier":"2","name":"cmp_aiming_parts","param":5,"price":60}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (28, N'{"type":"EvolvePart","tier":"3","name":"cmp_hull_schema","param":25,"price":300}', 4)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (31, N'{"type":"OrderItem","tier":1,"name":"event_tier_1_reinforcement","money":500,"price":500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':3}]},{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':11}]},{''weight'':4,''bonus'':[{''type'':8,''num'':1,''item'':57}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (32, N'{"type":"OrderItem","tier":2,"name":"event_tier_2_reinforcement","money":1000,"price":1000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':5}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':9}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':13}]},{''weight'':53,''bonus'':[{''type'':8,''num'':1,''item'':23}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (33, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3000,"price":3000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':44,''bonus'':[{''type'':8,''num'':1,''item'':2}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':17}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':19}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':25}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':27}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':33}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (34, N'{"type":"OrderItem","tier":1,"name":"event_tier_4_reinforcement","money":4000,"price":4000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':29}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':37}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':42}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':45}]},{''weight'':40,''bonus'':[{''type'':8,''num'':1,''item'':49}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':75}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (35, N'{"type":"OrderItem","tier":1,"name":"event_tier_5_reinforcement","money":5000,"price":5000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':15,''bonus'':[{''type'':8,''num'':1,''item'':24}]},{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':39}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':47}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':51}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':55}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':63}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (36, N'{"type":"OrderItem","tier":1,"name":"event_tier_6_reinforcement","money":6000,"price":6000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':59}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':65}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':67}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':71}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':77}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':79}]},{''weight'':11,''bonus'':[{''type'':8,''num'':1,''item'':81}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (37, N'{"type":"OrderItem","tier":1,"name":"event_tier_7_reinforcement","money":7000,"price":7000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':61}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':69}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':73}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':82}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':85}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':88}]},{''weight'':13,''bonus'':[{''type'':8,''num'':1,''item'':88}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (38, N'{"type":"OrderItem","tier":1,"name":"event_tier_8_reinforcement","money":7000,"price":7000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':8,''num'':1,''item'':61}]},{''weight'':67,''bonus'':[{''type'':8,''num'':1,''item'':69}]},{''weight'':50,''bonus'':[{''type'':8,''num'':1,''item'':73}]},{''weight'':83,''bonus'':[{''type'':8,''num'':1,''item'':82}]},{''weight'':56,''bonus'':[{''type'':8,''num'':1,''item'':85}]},{''weight'':43,''bonus'':[{''type'':8,''num'':1,''item'':88}]},{''weight'':13,''bonus'':[{''type'':8,''num'':1,''item'':88}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (41, N'{"type":"ResurrectTank","name":"resurrectItem",param:5,"gold":0,"amount":1,"price":300,"money":300,"tier":1}', 7)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (42, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_1_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':3},{''type'':2,''num'':1,''item'':1}],''premiumBonus'':[{''type'':8,''num'':1,''item'':3},{''type'':2,''num'':1,''item'':1}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (43, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_2_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':11},{''type'':2,''num'':1,''item'':43}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (44, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_3_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':41},{''type'':2,''num'':1,''item'':2}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (45, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_4_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''premiumBonus'':[{''type'':8,''num'':1,''item'':23},{''type'':2,''num'':1,''item'':2}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":300,"money":300,"tier":"2","name":"silverChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":400,"money":400,"tier":"3","name":"goldChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':80}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':31}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':31}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest3","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':32}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest4","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':33}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest5","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':34}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest6","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':35}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest7","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':36}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":500,"money":500,"tier":"3","name":"platinumChest8","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':1,''item'':37}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':25}]},{''weight'':18,''bonus'':[{''type'':7,''num'':5,''item'':26}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':27}]},{''weight'':19,''bonus'':[{''type'':7,''num'':5,''item'':80}]},{''weight'':12,''bonus'':[{''type'':7,''num'':3,''item'':28}]},{''weight'':11,''bonus'':[{''type'':7,''num'':2,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (79, N'{"type":"Book","tier":"1","name":"book_common","param":1,"price":10}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (80, N'{"type":"Book","tier":"2","name":"book_rare","param":1,"price":75}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (81, N'{"type":"Book","tier":"3","name":"book_elite","param":1,"price":350}', 10)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:21,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:21,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:21,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:21,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:22,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:22,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:22,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:22,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:22,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:22,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:22,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:22,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:23,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:23,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:23,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:23,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:23,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:23,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:23,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:23,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:23,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:23,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:23,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:23,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:24,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:24,"gold":7,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:24,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:24,"gold":13,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:24,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:24,"gold":33,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:24,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:24,"gold":129,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:24,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:24,"gold":258,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:24,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:24,"gold":580,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:25,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:25,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:25,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:25,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:25,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:25,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:25,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:25,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:25,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:25,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:25,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:25,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:26,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:26,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:26,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:26,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:26,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:26,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:26,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:26,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:26,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:26,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:26,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:26,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:27,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:27,"gold":13,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:27,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:27,"gold":65,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (176, N'{"type":"ShopItem",param:27,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (177, N'{"type":"ShopItem",param:27,"gold":129,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (178, N'{"type":"ShopItem",param:27,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (179, N'{"type":"ShopItem",param:27,"gold":386,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (180, N'{"type":"ShopItem",param:27,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (181, N'{"type":"ShopItem",param:27,"gold":580,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (182, N'{"type":"ShopItem",param:27,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (183, N'{"type":"ShopItem",param:27,"gold":1930,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (184, N'{"type":"ShopItem",param:28,"money":1845,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (185, N'{"type":"ShopItem",param:28,"gold":65,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (186, N'{"type":"ShopItem",param:28,"money":3690,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (187, N'{"type":"ShopItem",param:28,"gold":129,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (188, N'{"type":"ShopItem",param:28,"money":9200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (189, N'{"type":"ShopItem",param:28,"gold":322,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (190, N'{"type":"ShopItem",param:28,"money":18390,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (191, N'{"type":"ShopItem",param:28,"gold":643,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (192, N'{"type":"ShopItem",param:28,"money":59765,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (193, N'{"type":"ShopItem",param:28,"gold":1609,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (200, N'{"type":"ShopItem",param:79,"money":600,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (201, N'{"type":"ShopItem",param:79,"money":1200,"amount":20}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (202, N'{"type":"ShopItem",param:79,"money":2800,"amount":50}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (203, N'{"type":"ShopItem",param:80,"money":1500,"amount":3}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (204, N'{"type":"ShopItem",param:80,"gold":130,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (205, N'{"type":"ShopItem",param:81,"money":2500,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (206, N'{"type":"ShopItem",param:81,"gold":70,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (207, N'{"type":"ShopItem",param:81,"gold":165,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (300, N'{"type":"PowerUp","tier":1,"name":"repair_01","customId":1,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (301, N'{"type":"PowerUp","tier":2,"name":"repair_02","customId":2,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (302, N'{"type":"PowerUp","tier":3,"name":"repair_03","customId":3,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (303, N'{"type":"PowerUp","tier":4,"name":"repair_04","customId":4,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (304, N'{"type":"PowerUp","tier":1,"name":"massrepair_01","customId":5,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (305, N'{"type":"PowerUp","tier":2,"name":"massrepair_02","customId":6,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (306, N'{"type":"PowerUp","tier":3,"name":"massrepair_03","customId":7,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (307, N'{"type":"PowerUp","tier":4,"name":"massrepair_04","customId":8,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (308, N'{"type":"PowerUp","tier":1,"name":"pierceammo_01","customId":9,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (309, N'{"type":"PowerUp","tier":2,"name":"pierceammo_02","customId":10,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (310, N'{"type":"PowerUp","tier":3,"name":"pierceammo_05","customId":11,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (311, N'{"type":"PowerUp","tier":4,"name":"pierceammo_06","customId":12,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (312, N'{"type":"PowerUp","tier":1,"name":"recon_01","customId":13,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (313, N'{"type":"PowerUp","tier":2,"name":"recon_02","customId":14,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (314, N'{"type":"PowerUp","tier":3,"name":"recon_03","customId":15,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (315, N'{"type":"PowerUp","tier":4,"name":"recon_04","customId":23,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (316, N'{"type":"PowerUp","tier":1,"name":"airstrike_01","customId":16,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (317, N'{"type":"PowerUp","tier":2,"name":"airstrike_02","customId":17,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (318, N'{"type":"PowerUp","tier":3,"name":"airstrike_03","customId":18,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (319, N'{"type":"PowerUp","tier":4,"name":"airstrike_04","customId":24,"price":5000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (320, N'{"type":"PowerUp","tier":1,"name":"superration_01","customId":19,"price":200}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (321, N'{"type":"PowerUp","tier":2,"name":"superration_02","customId":20,"price":500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (322, N'{"type":"PowerUp","tier":3,"name":"superration_03","customId":21,"price":1500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (323, N'{"type":"PowerUp","tier":4,"name":"superration_04","customId":22,"price":4000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (324, N'{"type":"PowerUp","tier":1,"name":"artilerystrike_01","customId":25,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (325, N'{"type":"PowerUp","tier":2,"name":"artilerystrike_02","customId":26,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (326, N'{"type":"PowerUp","tier":3,"name":"artilerystrike_03","customId":27,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (327, N'{"type":"PowerUp","tier":4,"name":"artilerystrike_04","customId":31,"price":5000}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (328, N'{"type":"PowerUp","tier":1,"name":"speed_01","customId":28,"price":80}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (329, N'{"type":"PowerUp","tier":2,"name":"speed_02","customId":29,"price":240}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (330, N'{"type":"PowerUp","tier":3,"name":"speed_03","customId":30,"price":720}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (331, N'{"type":"PowerUp","tier":4,"name":"speed_04","customId":32,"price":2160}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (332, N'{"type":"PowerUp","tier":1,"name":"repair_01p","customId":38,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (333, N'{"type":"PowerUp","tier":2,"name":"repair_02p","customId":39,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (334, N'{"type":"PowerUp","tier":3,"name":"repair_03p","customId":40,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (335, N'{"type":"PowerUp","tier":4,"name":"repair_04p","customId":41,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (336, N'{"type":"PowerUp","tier":1,"name":"massrepair_01p","customId":42,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (337, N'{"type":"PowerUp","tier":2,"name":"massrepair_02p","customId":43,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (338, N'{"type":"PowerUp","tier":3,"name":"massrepair_03p","customId":44,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (339, N'{"type":"PowerUp","tier":4,"name":"massrepair_04p","customId":45,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (340, N'{"type":"PowerUp","tier":1,"name":"pierceammo_01p","customId":46,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (341, N'{"type":"PowerUp","tier":2,"name":"pierceammo_02p","customId":47,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (342, N'{"type":"PowerUp","tier":3,"name":"pierceammo_05p","customId":48,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (343, N'{"type":"PowerUp","tier":4,"name":"pierceammo_06p","customId":49,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (344, N'{"type":"PowerUp","tier":1,"name":"recon_01p","customId":50,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (345, N'{"type":"PowerUp","tier":2,"name":"recon_02p","customId":51,"price":4}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (346, N'{"type":"PowerUp","tier":3,"name":"recon_03p","customId":52,"price":8}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (347, N'{"type":"PowerUp","tier":4,"name":"recon_04p","customId":53,"price":16}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (348, N'{"type":"PowerUp","tier":1,"name":"airstrike_01p","customId":54,"price":5}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (349, N'{"type":"PowerUp","tier":2,"name":"airstrike_02p","customId":55,"price":15}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (350, N'{"type":"PowerUp","tier":3,"name":"airstrike_03p","customId":56,"price":45}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (351, N'{"type":"PowerUp","tier":4,"name":"airstrike_04p","customId":57,"price":135}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (352, N'{"type":"PowerUp","tier":1,"name":"superration_01","customId":58,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (353, N'{"type":"PowerUp","tier":2,"name":"superration_02","customId":59,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (354, N'{"type":"PowerUp","tier":3,"name":"superration_03","customId":60,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (355, N'{"type":"PowerUp","tier":4,"name":"superration_04","customId":61,"price":10}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (356, N'{"type":"PowerUp","tier":1,"name":"artilerystrike_01p","customId":62,"price":4}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (357, N'{"type":"PowerUp","tier":2,"name":"artilerystrike_02p","customId":63,"price":12}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (358, N'{"type":"PowerUp","tier":3,"name":"artilerystrike_03p","customId":64,"price":36}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (359, N'{"type":"PowerUp","tier":4,"name":"artilerystrike_04p","customId":65,"price":108}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (360, N'{"type":"PowerUp","tier":1,"name":"speed_01p","customId":66,"price":2}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (361, N'{"type":"PowerUp","tier":2,"name":"speed_02p","customId":67,"price":6}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (362, N'{"type":"PowerUp","tier":3,"name":"speed_03p","customId":68,"price":18}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (363, N'{"type":"PowerUp","tier":4,"name":"speed_04p","customId":69,"price":54}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (400, N'{"type":"ShopItem",param:300,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (401, N'{"type":"ShopItem",param:301,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (402, N'{"type":"ShopItem",param:302,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (403, N'{"type":"ShopItem",param:303,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (404, N'{"type":"ShopItem",param:304,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (405, N'{"type":"ShopItem",param:305,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (406, N'{"type":"ShopItem",param:306,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (407, N'{"type":"ShopItem",param:307,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (408, N'{"type":"ShopItem",param:308,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (409, N'{"type":"ShopItem",param:309,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (410, N'{"type":"ShopItem",param:310,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (411, N'{"type":"ShopItem",param:311,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (412, N'{"type":"ShopItem",param:312,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (413, N'{"type":"ShopItem",param:313,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (414, N'{"type":"ShopItem",param:314,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (415, N'{"type":"ShopItem",param:315,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (416, N'{"type":"ShopItem",param:316,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (417, N'{"type":"ShopItem",param:317,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (418, N'{"type":"ShopItem",param:318,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (419, N'{"type":"ShopItem",param:319,"money":25000,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (420, N'{"type":"ShopItem",param:324,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (421, N'{"type":"ShopItem",param:325,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (422, N'{"type":"ShopItem",param:326,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (423, N'{"type":"ShopItem",param:327,"money":25000,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (424, N'{"type":"ShopItem",param:328,"money":400,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (425, N'{"type":"ShopItem",param:329,"money":1200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (426, N'{"type":"ShopItem",param:330,"money":3600,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (427, N'{"type":"ShopItem",param:331,"money":10800,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (428, N'{"type":"ShopItem",param:332,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (429, N'{"type":"ShopItem",param:333,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (430, N'{"type":"ShopItem",param:334,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (431, N'{"type":"ShopItem",param:335,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (432, N'{"type":"ShopItem",param:336,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (433, N'{"type":"ShopItem",param:337,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (434, N'{"type":"ShopItem",param:338,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (435, N'{"type":"ShopItem",param:339,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (436, N'{"type":"ShopItem",param:340,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (437, N'{"type":"ShopItem",param:341,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (438, N'{"type":"ShopItem",param:342,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (439, N'{"type":"ShopItem",param:343,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (440, N'{"type":"ShopItem",param:344,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (441, N'{"type":"ShopItem",param:345,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (442, N'{"type":"ShopItem",param:346,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (443, N'{"type":"ShopItem",param:347,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (444, N'{"type":"ShopItem",param:348,"gold":20,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (445, N'{"type":"ShopItem",param:349,"gold":40,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (446, N'{"type":"ShopItem",param:350,"gold":80,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (447, N'{"type":"ShopItem",param:351,"gold":160,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (448, N'{"type":"ShopItem",param:356,"gold":20,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (449, N'{"type":"ShopItem",param:357,"gold":40,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (450, N'{"type":"ShopItem",param:358,"gold":80,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (451, N'{"type":"ShopItem",param:359,"gold":160,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (452, N'{"type":"ShopItem",param:360,"gold":15,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (453, N'{"type":"ShopItem",param:361,"gold":30,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (454, N'{"type":"ShopItem",param:362,"gold":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (455, N'{"type":"ShopItem",param:363,"gold":120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (456, N'{"type":"ShopItem",param:300,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (457, N'{"type":"ShopItem",param:301,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (458, N'{"type":"ShopItem",param:302,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (459, N'{"type":"ShopItem",param:303,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (460, N'{"type":"ShopItem",param:304,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (461, N'{"type":"ShopItem",param:305,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (462, N'{"type":"ShopItem",param:306,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (463, N'{"type":"ShopItem",param:307,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (464, N'{"type":"ShopItem",param:308,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (465, N'{"type":"ShopItem",param:309,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (466, N'{"type":"ShopItem",param:310,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (467, N'{"type":"ShopItem",param:311,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (468, N'{"type":"ShopItem",param:312,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (469, N'{"type":"ShopItem",param:313,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (470, N'{"type":"ShopItem",param:314,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (471, N'{"type":"ShopItem",param:315,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (472, N'{"type":"ShopItem",param:316,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (473, N'{"type":"ShopItem",param:317,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (474, N'{"type":"ShopItem",param:318,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (475, N'{"type":"ShopItem",param:319,"money":10000,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (476, N'{"type":"ShopItem",param:324,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (477, N'{"type":"ShopItem",param:325,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (478, N'{"type":"ShopItem",param:326,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (479, N'{"type":"ShopItem",param:327,"money":10000,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (480, N'{"type":"ShopItem",param:328,"money":160,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (481, N'{"type":"ShopItem",param:329,"money":480,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (482, N'{"type":"ShopItem",param:330,"money":1440,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (483, N'{"type":"ShopItem",param:331,"money":4320,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (484, N'{"type":"ShopItem",param:332,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (485, N'{"type":"ShopItem",param:333,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (486, N'{"type":"ShopItem",param:334,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (487, N'{"type":"ShopItem",param:335,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (488, N'{"type":"ShopItem",param:336,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (489, N'{"type":"ShopItem",param:337,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (490, N'{"type":"ShopItem",param:338,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (491, N'{"type":"ShopItem",param:339,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (492, N'{"type":"ShopItem",param:340,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (493, N'{"type":"ShopItem",param:341,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (494, N'{"type":"ShopItem",param:342,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (495, N'{"type":"ShopItem",param:343,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (496, N'{"type":"ShopItem",param:344,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (497, N'{"type":"ShopItem",param:345,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (498, N'{"type":"ShopItem",param:346,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (499, N'{"type":"ShopItem",param:347,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (500, N'{"type":"ShopItem",param:348,"gold":8,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (501, N'{"type":"ShopItem",param:349,"gold":16,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (502, N'{"type":"ShopItem",param:350,"gold":32,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (503, N'{"type":"ShopItem",param:351,"gold":64,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (504, N'{"type":"ShopItem",param:356,"gold":8,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (505, N'{"type":"ShopItem",param:357,"gold":16,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (506, N'{"type":"ShopItem",param:358,"gold":32,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (507, N'{"type":"ShopItem",param:359,"gold":64,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (508, N'{"type":"ShopItem",param:360,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (509, N'{"type":"ShopItem",param:361,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (510, N'{"type":"ShopItem",param:362,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (511, N'{"type":"ShopItem",param:363,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (512, N'{"type":"ShopItem",param:7,"money":600,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (513, N'{"type":"ShopItem",param:8,"money":1000,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (514, N'{"type":"ShopItem",param:9,"money":2200,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (515, N'{"type":"ShopItem",param:10,"money":4100,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (600, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':360,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':25,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':4,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (601, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':540,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':648,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':45,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':6,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':6,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (602, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':720,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':865,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':60,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':9,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (603, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':990,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1190,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':83,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (604, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':1200,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1450,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':100,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':4,''item'':25}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (605, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':1800,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2160,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':150,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (606, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':33,''bonus'':[{''type'':0,''num'':2250,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2700,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':187,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (607, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':3600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':275,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (608, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':4600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':350,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':5,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (609, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':45,''bonus'':[{''type'':0,''num'':6000,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':450,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (650, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':40,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':50,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':60,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':8,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':10,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':12,''item'':0}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (651, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':64,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':80,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':96,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':12,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':16,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':19,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':2,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (652, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':88,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':110,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':132,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':17,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':22,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':26,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':3,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (653, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':120,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':150,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':180,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':24,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':30,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':35,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':4,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (654, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':160,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':200,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':240,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':32,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':40,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':47,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':10,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (655, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':200,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':250,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':40,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':50,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':59,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (656, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':248,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':310,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':372,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':50,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':62,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':73,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':20,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (657, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':280,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':350,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':420,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':56,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':70,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':82,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':25,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (658, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':320,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':400,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':480,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':64,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':80,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':94,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':35,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (659, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"event3res_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':12,''bonus'':[{''type'':0,''num'':380,''item'':0}]},{''weight'':12,''bonus'':[{''type'':0,''num'':475,''item'':0}]},{''weight'':6,''bonus'':[{''type'':0,''num'':570,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':76,''item'':0}]},{''weight'':16,''bonus'':[{''type'':5,''num'':95,''item'':0}]},{''weight'':8,''bonus'':[{''type'':5,''num'':111,''item'':0}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':21}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':22}]},{''weight'':6,''bonus'':[{''type'':7,''num'':50,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (700, N'{"type":"Chest","price":250,"money":250,"tier":"1","name":"silverChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':30,''item'':21},{''type'':7,''num'':30,''item'':22},{''type'':7,''num'':20,''item'':79}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':79},{''type'':7,''num'':5,''item'':80},{''type'':7,''num'':2,''item'':305}]},{''weight'':25,''bonus'':[{''type'':7,''num'':35,''item'':21},{''type'':7,''num'':35,''item'':22},{''type'':7,''num'':35,''item'':23}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':21},{''type'':7,''num'':10,''item'':79},{''type'':7,''num'':2,''item'':80}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (702, N'{"type":"Chest","price":400,"money":400,"tier":"2","name":"goldChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':100,''item'':21},{''type'':7,''num'':100,''item'':22},{''type'':7,''num'':50,''item'':79}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':79},{''type'':7,''num'':8,''item'':80},{''type'':7,''num'':3,''item'':306}]},{''weight'':25,''bonus'':[{''type'':7,''num'':100,''item'':21},{''type'':7,''num'':100,''item'':22},{''type'':7,''num'':100,''item'':23}]},{''weight'':25,''bonus'':[{''type'':7,''num'':40,''item'':79},{''type'':7,''num'':5,''item'':80},{''type'':7,''num'':3,''item'':337}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (704, N'{"type":"Chest","price":650,"money":650,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':5,''item'':25},{''type'':7,''num'':5,''item'':26},{''type'':7,''num'':5,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':7,''item'':25},{''type'':7,''num'':7,''item'':26},{''type'':7,''num'':7,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':1,''item'':28}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':3,''item'':81},{''type'':7,''num'':3,''item'':341}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (706, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':25,''num'':5,''item'':25},{''type'':7,''num'':25,''item'':26},{''type'':7,''num'':25,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':35,''item'':25},{''type'':7,''num'':35,''item'':26},{''type'':7,''num'':35,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':50,''item'':80},{''type'':7,''num'':10,''item'':81},{''type'':7,''num'':5,''item'':28}]},{''weight'':25,''bonus'':[{''type'':7,''num'':60,''item'':80},{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':3,''item'':342}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1000, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1001, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':5,''item'':28},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':8,''item'':28},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1002, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':11}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':12}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':41}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':56}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1003, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':57}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':58}]}]"}]}', 8)
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21,22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"tank","items":[41],"weights":[1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 3, 1, N'{"ident":"tank","items":[41,23],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 5, 1, N'{"ident":"tank","items":[41,23,2],"weights":[1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 7, 1, N'{"ident":"tank","items":[41,23,2,49],"weights":[1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (650, 9, 1, N'{"ident":"tank","items":[41,23,2,49,24],"weights":[1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (651, 11, 1, N'{"ident":"tank","items":[41,23,2,49,24,81],"weights":[1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (652, 13, 1, N'{"ident":"tank","items":[41,23,2,49,24,81,87],"weights":[1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (653, 15, 1, N'{"ident":"tank","items":[41,23,2,49,24,81,87,103],"weights":[1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (654, 17, 1, N'{"ident":"tank","items":[41,23,2,49,24,81,87,103,109],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (655, 15, 8, N'{"ident":"shop_slot_8_15","items":[209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (656, 17, 8, N'{"ident":"shop_slot_8_17","items":[211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (657, 19, 8, N'{"ident":"shop_slot_8_19","items":[213,211,209,205,203,201,199,197,191,189,187,185,183,177,175,173,171,169,163,161,159,157,155,147,145,143,141,139,131,129,127,125,123,115,113,111,109,107],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (658, 1, 11, N'{"ident":"shop_slot_11_1","items":[148,132,116,100,149,133,117,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (659, 3, 11, N'{"ident":"shop_slot_11_3","items":[192,178,164,150,148,134,132,118,116,102,100,193,179,165,151,149,135,133,119,117,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (660, 9, 11, N'{"ident":"shop_slot_11_9","items":[206,194,192,180,178,166,164,152,150,148,136,134,132,120,118,116,104,102,100,207,195,193,181,179,167,165,153,151,149,137,135,133,121,119,117,105,103,101],"weights":[1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (661, 11, 11, N'{"ident":"shop_slot_11_11","items":[206,196,194,192,182,180,178,168,166,164,154,152,150,138,136,134,122,120,118,106,104,102,207,197,195,193,183,181,179,169,167,165,155,153,151,139,137,135,123,121,119,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (662, 13, 11, N'{"ident":"shop_slot_11_13","items":[206,198,196,194,184,182,180,170,168,166,156,154,152,140,138,136,124,122,120,108,106,104,207,199,197,195,185,183,181,171,169,167,157,155,153,141,139,137,125,123,121,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (663, 15, 11, N'{"ident":"shop_slot_11_15","items":[208,206,200,198,196,194,186,184,182,180,172,170,168,166,158,156,154,152,142,140,138,136,126,124,122,120,110,108,106,104,209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (664, 17, 11, N'{"ident":"shop_slot_11_17","items":[210,208,206,202,200,198,196,194,188,186,184,182,180,174,172,170,168,166,160,158,156,154,152,144,142,140,138,136,128,126,124,122,120,112,110,108,106,104,211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (665, 19, 11, N'{"ident":"shop_slot_11_19","items":[212,210,208,204,202,200,198,196,190,188,186,184,182,176,174,172,170,168,162,160,158,156,154,146,144,142,140,138,130,128,126,124,122,114,112,110,108,106,213,211,209,205,203,201,199,197,191,189,187,185,183,177,175,173,171,169,163,161,159,157,155,147,145,143,141,139,131,129,127,125,123,115,113,111,109,107],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (666, 1, 14, N'{"ident":"shop_slot_14_1","items":[148,132,116,100,149,133,117,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (667, 3, 14, N'{"ident":"shop_slot_14_3","items":[192,178,164,150,148,134,132,118,116,102,100,193,179,165,151,149,135,133,119,117,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (668, 9, 14, N'{"ident":"shop_slot_14_9","items":[206,194,192,180,178,166,164,152,150,148,136,134,132,120,118,116,104,102,100,207,195,193,181,179,167,165,153,151,149,137,135,133,121,119,117,105,103,101],"weights":[1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (669, 11, 14, N'{"ident":"shop_slot_14_11","items":[206,196,194,192,182,180,178,168,166,164,154,152,150,138,136,134,122,120,118,106,104,102,207,197,195,193,183,181,179,169,167,165,155,153,151,139,137,135,123,121,119,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (670, 13, 14, N'{"ident":"shop_slot_14_13","items":[206,198,196,194,184,182,180,170,168,166,156,154,152,140,138,136,124,122,120,108,106,104,207,199,197,195,185,183,181,171,169,167,157,155,153,141,139,137,125,123,121,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (671, 15, 14, N'{"ident":"shop_slot_14_15","items":[208,206,200,198,196,194,186,184,182,180,172,170,168,166,158,156,154,152,142,140,138,136,126,124,122,120,110,108,106,104,209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (672, 17, 14, N'{"ident":"shop_slot_14_17","items":[210,208,206,202,200,198,196,194,188,186,184,182,180,174,172,170,168,166,160,158,156,154,152,144,142,140,138,136,128,126,124,122,120,112,110,108,106,104,211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (673, 7, 2, N'{"ident":"tank","items":[5,9,13],"weights":[1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (834, 1, 2, N'{"ident":"tank","items":[3,57,11],"weights":[0,1,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (835, 3, 2, N'{"ident":"tank","items":[3,57,11],"weights":[1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (836, 5, 2, N'{"ident":"tank","items":[3,57,11],"weights":[1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (837, 9, 2, N'{"ident":"tank","items":[17,19,25,33],"weights":[2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (838, 11, 2, N'{"ident":"tank","items":[37,42,45,75,29],"weights":[2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (839, 13, 2, N'{"ident":"tank","items":[39,63,47,55,51],"weights":[2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (840, 15, 2, N'{"ident":"tank","items":[59,65,67,77,71,79],"weights":[3,3,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (841, 17, 2, N'{"ident":"tank","items":[59,65,67,77,71,79],"weights":[3,3,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (842, 1, 3, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (843, 3, 3, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,12,12,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (844, 5, 3, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (845, 9, 3, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (846, 11, 3, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (847, 13, 3, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (848, 15, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (849, 17, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (850, 1, 4, N'{"ident":"item","items":[137,125,113,101],"weights":[1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (851, 3, 4, N'{"ident":"item","items":[173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (852, 5, 4, N'{"ident":"item","items":[175,173,163,161,151,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (853, 9, 4, N'{"ident":"item","items":[185,177,175,173,165,163,161,153,151,149,141,139,137,129,127,125,117,115,113,105,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (854, 11, 4, N'{"ident":"item","items":[187,185,179,177,175,173,167,165,163,161,155,153,151,149,145,143,141,139,131,129,127,119,117,115,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (855, 13, 4, N'{"ident":"item","items":[189,187,185,181,179,177,175,169,167,165,163,157,155,153,151,145,143,141,133,131,129,121,119,117,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (856, 15, 4, N'{"ident":"item","items":[191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145],"weights":[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (857, 17, 4, N'{"ident":"item","items":[193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,133,121,109],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (858, 1, 5, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (859, 3, 5, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (860, 5, 5, N'{"ident":"item","items":[180,178,176,170,168,166,164,158,156,154,152,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (861, 9, 5, N'{"ident":"item","items":[184,182,180,178,176,170,168,166,164,158,156,154,152,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (862, 11, 5, N'{"ident":"item","items":[186,184,182,180,178,176,170,168,166,164,158,156,154,152,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (863, 13, 5, N'{"ident":"item","items":[188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (864, 15, 5, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (865, 17, 5, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (866, 1, 6, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (867, 3, 6, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (868, 5, 6, N'{"ident":"item","items":[180,178,176,170,168,166,164,158,156,154,152,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (869, 9, 6, N'{"ident":"item","items":[184,182,180,178,176,170,168,166,164,158,156,154,152,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (870, 11, 6, N'{"ident":"item","items":[186,184,182,180,178,176,170,168,166,164,158,156,154,152,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (871, 13, 6, N'{"ident":"item","items":[188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (872, 15, 6, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (873, 17, 6, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (874, 1, 7, N'{"ident":"item","items":[428,432,436,440,444,448,452,484,488,492,496,500,504,508],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (875, 1, 8, N'{"ident":"item","items":[400,404,408,412,416,420,424],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (876, 1, 9, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (877, 1, 10, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (878, 1, 11, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (879, 1, 12, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (880, 7, 7, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (881, 7, 8, N'{"ident":"item","items":[401,405,409,413,417,421],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (882, 7, 9, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (883, 7, 10, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (884, 7, 11, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (885, 7, 12, N'{"ident":"item","items":[429,433,437,441,445,449,453,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (886, 11, 7, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (887, 11, 8, N'{"ident":"item","items":[402,406,410,414,418,422],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (888, 11, 9, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (889, 11, 10, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (890, 11, 11, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (891, 11, 12, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (892, 15, 7, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (893, 15, 8, N'{"ident":"item","items":[403,407,411,415,419,423],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (894, 15, 9, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (895, 15, 10, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (896, 15, 11, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (897, 15, 12, N'{"ident":"item","items":[431,435,439,443,447,451487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (898, 1, 13, N'{"ident":"crew","items":[11,12,13,14,25,26,27,28,39,40,41,42,53,54,55,56],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (899, 1, 14, N'{"ident":"crew","items":[1,2,3,4,5,6,15,16,17,18,19,20,29,30,31,32,33,34,43,44,45,46,47,48],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (900, 4, 14, N'{"ident":"crew","items":[1,2,3,4,5,6,15,16,17,18,19,20,29,30,31,32,33,34,43,44,45,46,47,48,7,8,9,10,21,22,23,24,35,36,37,38,49,50,51,52],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (901, 1, 15, N'{"ident":"item","items":[200,201,203],"weights":[6,6,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (902, 7, 15, N'{"ident":"item","items":[201,202,203],"weights":[3,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (903, 1, 16, N'{"ident":"item","items":[204,206,207],"weights":[5,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (905, 7, 16, N'{"ident":"item","items":[204,206,207],"weights":[5,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (906, 1, 17, N'{"ident":"item","items":[201,202,203,204,205,206,207],"weights":[12,12,5,4,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (907, 7, 17, N'{"ident":"item","items":[201,202,203,204,205,206,207],"weights":[12,12,4,6,1,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (908, 1, 18, N'{"ident":"item","items":[203,204,205,206,207],"weights":[5,4,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (909, 7, 18, N'{"ident":"item","items":[203,204,205,206,207],"weights":[4,6,1,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (911, 19, 1, N'{"ident":"tank","items":[23,2,49,24,81,87,103,109,124],"weights":[1,1,1,1,1,1,2,2,3]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] ON 

GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (132, 1, 0, 450, 25, 25, 0, N'', 1)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (133, 1, 451, 670, 25, 25, 0, N'', 2)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (134, 1, 671, 1100, 25, 25, 0, N'', 3)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (135, 1, 1101, 1650, 30, 25, 0, N'', 4)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (136, 1, 1651, 2300, 30, 25, 0, N'', 5)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (137, 1, 2301, 4000, 30, 25, 0, N'', 6)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (138, 1, 4001, 5400, 35, 25, 0, N'', 7)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (139, 1, 5401, 9999, 35, 25, 0, N'', 8)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (140, 1, 10000, 20000, 35, 25, 0, N'', 9)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [money], [experience], [parts], [rewards], [tier]) VALUES (141, 1, 20001, 999999, 35, 30, 0, N'', 10)
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[NewMissions] ON 

GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1, N'r_kill_01_01', 1, 4, N'r_kill_01_01', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (2, N'r_kill_01_02', 1, 4, N'r_kill_01_02', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (3, N'r_kill_01_03', 1, 4, N'r_kill_01_03', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (4, N'r_kill_01_04', 1, 4, N'r_kill_01_04', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (5, N'r_kill_03_01', 1, 4, N'r_kill_03_01', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (6, N'r_kill_03_02', 1, 4, N'r_kill_03_02', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (7, N'r_kill_03_03', 1, 4, N'r_kill_03_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (8, N'r_kill_03_04', 1, 4, N'r_kill_03_04', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (9, N'r_kill_03_05', 1, 4, N'r_kill_03_05', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (10, N'r_kill_03_06', 1, 4, N'r_kill_03_06', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (11, N'r_kill_03_07', 1, 4, N'r_kill_03_07', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (12, N'r_kill_03_08', 1, 4, N'r_kill_03_08', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (13, N'r_kill_03_09', 1, 4, N'r_kill_03_09', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (14, N'r_kill_03_10', 1, 4, N'r_kill_03_10', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (100, N'r_kill_05_01', 1, 4, N'r_kill_05_01', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (101, N'r_kill_05_02', 1, 4, N'r_kill_05_02', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (102, N'r_kill_05_03', 1, 4, N'r_kill_05_03', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (103, N'r_kill_05_04', 1, 4, N'r_kill_05_04', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (104, N'r_kill_05_05', 1, 4, N'r_kill_05_05', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (105, N'r_kill_05_06', 1, 4, N'r_kill_05_06', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (106, N'r_kill_05_07', 1, 4, N'r_kill_05_07', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (107, N'r_kill_05_08', 1, 4, N'r_kill_05_08', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (108, N'r_kill_05_09', 1, 4, N'r_kill_05_09', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (109, N'r_kill_05_10', 1, 4, N'r_kill_05_10', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (110, N'r_kill_05_11', 1, 4, N'r_kill_05_11', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (111, N'r_kill_05_12', 1, 4, N'r_kill_05_12', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (112, N'r_kill_05_13', 1, 4, N'r_kill_05_13', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (113, N'r_kill_05_14', 1, 4, N'r_kill_05_14', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (114, N'r_kill_05_04', 1, 4, N'r_kill_05_04', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (115, N'r_kill_05_09', 1, 4, N'r_kill_05_09', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (200, N'r_kill_09_01', 1, 4, N'r_kill_09_01', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (201, N'r_kill_09_02', 1, 4, N'r_kill_09_02', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (202, N'r_kill_09_03', 1, 4, N'r_kill_09_03', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (203, N'r_kill_09_04', 1, 4, N'r_kill_09_04', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (204, N'r_kill_09_05', 1, 4, N'r_kill_09_05', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (205, N'r_kill_09_06', 1, 4, N'r_kill_09_06', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (206, N'r_kill_09_07', 1, 4, N'r_kill_09_07', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (207, N'r_kill_09_08', 1, 4, N'r_kill_09_08', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (208, N'r_kill_09_09', 1, 4, N'r_kill_09_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (209, N'r_kill_09_10', 1, 4, N'r_kill_09_10', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (210, N'r_kill_09_11', 1, 4, N'r_kill_09_11', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (211, N'r_kill_09_12', 1, 4, N'r_kill_09_12', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (212, N'r_kill_09_13', 1, 4, N'r_kill_09_13', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (213, N'r_kill_09_14', 1, 4, N'r_kill_09_14', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (300, N'r_kill_11_01', 1, 4, N'r_kill_11_01', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (301, N'r_kill_11_02', 1, 4, N'r_kill_11_02', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (302, N'r_kill_11_03', 1, 4, N'r_kill_11_03', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (303, N'r_kill_11_04', 1, 4, N'r_kill_11_04', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (304, N'r_kill_11_05', 1, 4, N'r_kill_11_05', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (305, N'r_kill_11_06', 1, 4, N'r_kill_11_06', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (306, N'r_kill_11_07', 1, 4, N'r_kill_11_07', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (307, N'r_kill_11_08', 1, 4, N'r_kill_11_08', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (308, N'r_kill_11_09', 1, 4, N'r_kill_11_09', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (309, N'r_kill_11_10', 1, 4, N'r_kill_11_10', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (310, N'r_kill_11_11', 1, 4, N'r_kill_11_11', 0, 0, 220, 2201, 3200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (500, N'r_kill_13_01', 1, 4, N'r_kill_13_01', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (501, N'r_kill_13_02', 1, 4, N'r_kill_13_02', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (502, N'r_kill_13_03', 1, 4, N'r_kill_13_03', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (503, N'r_kill_13_04', 1, 4, N'r_kill_13_04', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (504, N'r_kill_13_05', 1, 4, N'r_kill_13_05', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (505, N'r_kill_13_06', 1, 4, N'r_kill_13_06', 0, 0, 220, 3201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (900, N'apvp_forest_01', 0, 7, N'apvp_forest_01', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (901, N'apvp_forest_02', 0, 7, N'apvp_forest_02', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (902, N'apvp_forest_03', 0, 7, N'apvp_forest_03', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (903, N'apvp_forest_04', 0, 7, N'apvp_forest_04', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (904, N'apvp_base_01', 0, 7, N'apvp_base_01', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (905, N'apvp_base_02', 0, 7, N'apvp_base_02', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (906, N'apvp_base_03', 0, 7, N'apvp_base_03', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (907, N'apvp_village_01', 0, 7, N'apvp_village_01', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (908, N'apvp_base_04', 0, 7, N'apvp_base_04', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (909, N'apvp_forest_05', 0, 7, N'apvp_forest_05', 0, 0, 100, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1015, N'pvp_01', 0, 1, N'pvp_01', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1016, N'pvp_02', 0, 1, N'pvp_02', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1017, N'pvp_03', 0, 1, N'pvp_03', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1018, N'pvp_04', 0, 1, N'pvp_04', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1019, N'pvp_05', 0, 1, N'pvp_05', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1020, N'pvp_06', 0, 1, N'pvp_06', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1021, N'Control01', 0, 2, N'Control01', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1022, N'Control02', 0, 2, N'Control02', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1023, N'base2base_01', 0, 3, N'base2base_01', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1024, N'base2base_02', 0, 3, N'base2base_02', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1025, N'base2base_03', 0, 3, N'base2base_03', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1026, N'base2base_04', 0, 3, N'base2base_04', 0, 0, 200, 0, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1300, N'e3_a_01', 0, 11, N'e3_a_01', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1301, N'e3_a_02', 0, 11, N'e3_a_02', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1302, N'e3_a_03', 0, 11, N'e3_a_03', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1303, N'e3_a_04', 0, 11, N'e3_a_04', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1304, N'e3_a_05', 0, 11, N'e3_a_05', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1305, N'e3_a_06', 0, 11, N'e3_a_06', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1306, N'e3_a_07', 0, 11, N'e3_a_07', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1307, N'e3_a_08', 0, 11, N'e3_a_08', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1308, N'e3_a_09', 0, 11, N'e3_a_09', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1309, N'e3_a_10', 0, 11, N'e3_a_10', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1310, N'e3_a_11', 0, 11, N'e3_a_11', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1311, N'e3_a_12', 0, 11, N'e3_a_12', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1312, N'e3_a_13', 0, 11, N'e3_a_13', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1313, N'e3_a_14', 0, 11, N'e3_a_14', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1314, N'e3_a_15', 0, 11, N'e3_a_15', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1315, N'e3_a_16', 0, 11, N'e3_a_16', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1316, N'e3_a_17', 0, 11, N'e3_a_17', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1317, N'e3_a_18', 0, 11, N'e3_a_01', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1318, N'e3_a_19', 0, 11, N'e3_a_02', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1319, N'e3_a_20', 0, 11, N'e3_a_03', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1320, N'e3_a_21', 0, 11, N'e3_a_04', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1321, N'e3_a_22', 0, 11, N'e3_a_05', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1322, N'e3_a_23', 0, 11, N'e3_a_06', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1323, N'e3_a_24', 0, 11, N'e3_a_07', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1324, N'e3_a_25', 0, 11, N'e3_a_08', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1325, N'e3_a_26', 0, 11, N'e3_a_09', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1326, N'e3_a_27', 0, 11, N'e3_a_10', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1327, N'e3_a_28', 0, 11, N'e3_a_11', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1328, N'e3_a_29', 0, 11, N'e3_a_12', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1329, N'e3_a_30', 0, 11, N'e3_a_13', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1380, N'e3_a_01b', 0, 12, N'e3_a_01b', 0, 0, 200, 0, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1381, N'e3_a_02b', 0, 12, N'e3_a_02b', 0, 0, 200, 0, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1400, N'e3_a_01', 0, 11, N'e3_a_01', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1401, N'e3_a_02', 0, 11, N'e3_a_02', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1402, N'e3_a_03', 0, 11, N'e3_a_03', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1403, N'e3_a_04', 0, 11, N'e3_a_04', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1404, N'e3_a_05', 0, 11, N'e3_a_05', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1405, N'e3_a_06', 0, 11, N'e3_a_06', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1406, N'e3_a_07', 0, 11, N'e3_a_07', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1407, N'e3_a_08', 0, 11, N'e3_a_08', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1408, N'e3_a_09', 0, 11, N'e3_a_09', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1409, N'e3_a_10', 0, 11, N'e3_a_10', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1410, N'e3_a_11', 0, 11, N'e3_a_11', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1411, N'e3_a_12', 0, 11, N'e3_a_12', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1412, N'e3_a_13', 0, 11, N'e3_a_13', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1413, N'e3_a_14', 0, 11, N'e3_a_14', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1414, N'e3_a_15', 0, 11, N'e3_a_15', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1415, N'e3_a_16', 0, 11, N'e3_a_16', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1416, N'e3_a_17', 0, 11, N'e3_a_17', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1417, N'e3_a_18', 0, 11, N'e3_a_01', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1418, N'e3_a_19', 0, 11, N'e3_a_02', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1419, N'e3_a_20', 0, 11, N'e3_a_03', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1420, N'e3_a_21', 0, 11, N'e3_a_04', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1421, N'e3_a_22', 0, 11, N'e3_a_05', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1422, N'e3_a_23', 0, 11, N'e3_a_06', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1423, N'e3_a_24', 0, 11, N'e3_a_07', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1424, N'e3_a_25', 0, 11, N'e3_a_08', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1425, N'e3_a_26', 0, 11, N'e3_a_09', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1426, N'e3_a_27', 0, 11, N'e3_a_10', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1427, N'e3_a_28', 0, 11, N'e3_a_11', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1428, N'e3_a_29', 0, 11, N'e3_a_12', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1429, N'e3_a_30', 0, 11, N'e3_a_13', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1500, N'e3_a_01', 0, 11, N'e3_a_01', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1501, N'e3_a_02', 0, 11, N'e3_a_02', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1502, N'e3_a_03', 0, 11, N'e3_a_03', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1503, N'e3_a_04', 0, 11, N'e3_a_04', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1504, N'e3_a_05', 0, 11, N'e3_a_05', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1505, N'e3_a_06', 0, 11, N'e3_a_06', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1506, N'e3_a_07', 0, 11, N'e3_a_07', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1507, N'e3_a_08', 0, 11, N'e3_a_08', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1508, N'e3_a_09', 0, 11, N'e3_a_09', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1509, N'e3_a_10', 0, 11, N'e3_a_10', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1510, N'e3_a_11', 0, 11, N'e3_a_11', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1511, N'e3_a_12', 0, 11, N'e3_a_12', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1512, N'e3_a_13', 0, 11, N'e3_a_13', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1513, N'e3_a_14', 0, 11, N'e3_a_14', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1514, N'e3_a_15', 0, 11, N'e3_a_15', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1515, N'e3_a_16', 0, 11, N'e3_a_16', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1516, N'e3_a_17', 0, 11, N'e3_a_17', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1517, N'e3_a_18', 0, 11, N'e3_a_01', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1518, N'e3_a_19', 0, 11, N'e3_a_02', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1519, N'e3_a_20', 0, 11, N'e3_a_03', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1520, N'e3_a_21', 0, 11, N'e3_a_04', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1521, N'e3_a_22', 0, 11, N'e3_a_05', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1522, N'e3_a_23', 0, 11, N'e3_a_06', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1523, N'e3_a_24', 0, 11, N'e3_a_07', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1524, N'e3_a_25', 0, 11, N'e3_a_08', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1525, N'e3_a_26', 0, 11, N'e3_a_09', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1526, N'e3_a_27', 0, 11, N'e3_a_10', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1527, N'e3_a_28', 0, 11, N'e3_a_11', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1528, N'e3_a_29', 0, 11, N'e3_a_12', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1529, N'e3_a_30', 0, 11, N'e3_a_13', 0, 0, 200, 2500, 999999)
GO
SET IDENTITY_INSERT [dbo].[NewMissions] OFF
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] ON 

GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (1, 0, 220, 70, 70, 85, 145, 40, 40, 40, 40, 38, 38, 38, 38, 1, 0, 0, 0, 1, 0.45, 0.45, 1.62, 1.98, 2.43, 4.51, 2.18, 5.09)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (2, 221, 420, 70, 70, 85, 150, 40, 40, 40, 40, 14, 14, 14, 14, 1, 0, 0, 0, 1, 0.99, 0.99, 1.62, 1.98, 2.43, 4.51, 2.18, 5.09)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (3, 421, 810, 70, 70, 85, 175, 40, 40, 40, 40, 8, 8, 8, 8, 1, 2, 0, 0, 1, 1.63, 1.63, 1.39, 1.7, 2.09, 3.88, 2.18, 5.09)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (4, 811, 1500, 70, 70, 85, 180, 40, 40, 40, 40, 5, 5, 5, 5, 0, 3, 1, 0, 1, 1.63, 1.63, 0.8, 0.98, 1.2, 2.23, 2.18, 5.09)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (5, 1501, 2900, 70, 70, 85, 185, 40, 40, 40, 40, 4, 4, 4, 4, 0, 2, 2, 1, 1, 1.63, 1.63, 1.09, 1.34, 1.64, 3.05, 2.98, 6.95)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (6, 2901, 4200, 70, 70, 85, 190, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 2, 1, 1.63, 1.63, 1.27, 1.55, 1.91, 3.54, 3.46, 8.08)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (7, 4201, 7000, 70, 70, 85, 195, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 3, 1, 1.63, 1.63, 1.38, 1.69, 2.07, 3.85, 3.76, 8.77)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (8, 7001, 15000, 70, 70, 85, 200, 40, 40, 40, 40, 2, 2, 2, 2, 0, 2, 4, 5, 1, 1.63, 1.63, 1.09, 1.34, 1.65, 3.06, 2.99, 6.97)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (9, 15001, 99999, 70, 70, 85, 205, 40, 40, 40, 40, 2, 2, 2, 2, 0, 1, 4, 5, 1, 1.63, 1.63, 1.09, 1.34, 1.65, 3.06, 2.99, 6.97)
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[Zones] ON 

GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (1, -1, N'[1,1,1,1,1,1,1]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (2, -2, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (3, -3, N'[1]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (4, -4, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (5, -5, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (6, -6, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (7, -7, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (8, -8, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (9, -9, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (10, -10, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (11, -11, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (12, -12, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (13, -13, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (14, -14, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (15, -15, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (16, -16, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (17, -17, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (18, -18, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (19, -19, N'[]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (20, -20, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (21, 1, N'[1,3,7,7,9,12,21]', 1, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (22, 2, N'[11]', 6, 100)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (23, 3, N'[2]', 10, 100)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (24, 4, N'[20]', 15, 200)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (25, 5, N'[]', 18, 300)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (26, 6, N'[]', 20, 500)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (27, 7, N'[6]', 30, 700)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (28, 8, N'[]', 21, 100)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (29, 9, N'[]', 24, 400)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (30, 10, N'[]', 28, 400)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (31, 11, N'[]', 30, 200)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (32, 12, N'[]', 35, 800)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (33, 13, N'[]', 40, 800)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (34, 14, N'[]', 45, 300)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (35, 15, N'[]', 50, 1500)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (36, 16, N'[]', 55, 1500)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (37, 17, N'[]', 60, 400)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (38, 18, N'[]', 65, 2000)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (39, 19, N'[]', 70, 2000)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (40, 20, N'[]', 75, 4000)
GO
SET IDENTITY_INSERT [dbo].[Zones] OFF
GO
/****** Object:  Index [IX_Zones]    Script Date: 13.07.2016 14:12:50 ******/
ALTER TABLE [dbo].[Zones] ADD  CONSTRAINT [IX_Zones] UNIQUE NONCLUSTERED 
(
	[zone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
