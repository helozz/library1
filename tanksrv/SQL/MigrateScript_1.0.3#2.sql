USE [iron5]
GO
EXEC sp_RENAME '[Users].[Surname]', 'BundleId', 'COLUMN'
GO

ALTER TABLE [dbo].[Users] ADD [marketBuyAttempts] int NULL
GO
UPDATE [dbo].[Users] SET [marketBuyAttempts] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [marketBuyAttempts] int NOT NULL
GO


/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 10.11.2015 10:11:13 ******/
DROP TABLE [dbo].[UserMissionEvents]
GO
/****** Object:  Table [dbo].[UserFeedbacks]    Script Date: 10.11.2015 10:11:13 ******/
DROP TABLE [dbo].[UserFeedbacks]
GO
/****** Object:  Table [dbo].[RandomItems]    Script Date: 10.11.2015 10:11:13 ******/
DROP TABLE [dbo].[RandomItems]
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 10.11.2015 10:11:13 ******/
DROP TABLE [dbo].[NewMissions]
GO
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 10.11.2015 10:11:13 ******/
DROP TABLE [dbo].[MissionEvents]
GO
/****** Object:  Table [dbo].[MissionEvents]    Script Date: 10.11.2015 10:11:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MissionEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rewards] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_MissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 10.11.2015 10:11:14 ******/
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
/****** Object:  Table [dbo].[RandomItems]    Script Date: 10.11.2015 10:11:14 ******/
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
/****** Object:  Table [dbo].[UserFeedbacks]    Script Date: 10.11.2015 10:11:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserFeedbacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[userName] [nvarchar](50) NULL,
	[stars] [int] NULL,
	[title] [nvarchar](50) NULL,
	[text] [nvarchar](255) NULL,
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
/****** Object:  Table [dbo].[UserMissionEvents]    Script Date: 10.11.2015 10:11:14 ******/
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
	[eventTier] [int] NOT NULL,
 CONSTRAINT [PK_UserMissionEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NewMissions] ON 

GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1, N'r_kill_01_01', 1, 4, N'r_kill_10_01', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (2, N'r_kill_01_02', 1, 4, N'r_kill_11_01', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (3, N'r_kill_01_03', 1, 4, N'r_kill_12_01', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (4, N'r_kill_01_04', 1, 4, N'r_kill_13_01', 0, 0, 220, 0, 220)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (5, N'r_kill_03_01', 1, 4, N'r_kill_10_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (6, N'r_kill_03_02', 1, 4, N'r_kill_11_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (7, N'r_kill_03_03', 1, 4, N'r_kill_12_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (8, N'r_kill_03_04', 1, 4, N'r_kill_13_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (9, N'r_kill_03_05', 1, 4, N'r_kill_06_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (10, N'r_kill_03_06', 1, 4, N'r_kill_14_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (11, N'r_kill_03_07', 1, 4, N'r_kill_02_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (12, N'r_kill_03_08', 1, 4, N'r_kill_21_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (13, N'r_kill_03_22', 1, 4, N'r_kill_22_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (14, N'r_kill_03_23', 1, 4, N'r_kill_03_03', 0, 0, 220, 221, 420)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (100, N'r_kill_05_01', 1, 4, N'r_kill_01', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (101, N'r_kill_05_02', 1, 4, N'r_kill_02', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (102, N'r_kill_05_03', 1, 4, N'r_kill_03', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (103, N'r_kill_05_06', 1, 4, N'r_kill_06', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (104, N'r_kill_05_08', 1, 4, N'r_kill_08', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (105, N'r_kill_05_10', 1, 4, N'r_kill_10', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (106, N'r_kill_05_11', 1, 4, N'r_kill_11', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (107, N'r_kill_05_12', 1, 4, N'r_kill_12', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (108, N'r_kill_05_13', 1, 4, N'r_kill_13', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (109, N'r_kill_05_14', 1, 4, N'r_kill_14', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (110, N'r_kill_05_17', 1, 4, N'r_kill_17', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (111, N'r_kill_05_19', 1, 4, N'r_kill_19', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (112, N'r_kill_05_21', 1, 4, N'r_kill_21', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (113, N'r_kill_05_22', 1, 4, N'r_kill_22', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (114, N'r_kill_05_18', 1, 4, N'r_kill_18', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (115, N'r_kill_05_23', 1, 4, N'r_kill_23', 0, 0, 220, 421, 810)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (200, N'r_kill_09_01', 1, 4, N'r_kill_01_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (201, N'r_kill_09_02', 1, 4, N'r_kill_02_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (202, N'r_kill_09_03', 1, 4, N'r_kill_03_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (203, N'r_kill_09_04', 1, 4, N'r_kill_04_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (204, N'r_kill_09_05', 1, 4, N'r_kill_05_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (205, N'r_kill_09_06', 1, 4, N'r_kill_06_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (206, N'r_kill_09_07', 1, 4, N'r_kill_07_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (207, N'r_kill_09_08', 1, 4, N'r_kill_08_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (208, N'r_kill_09_09', 1, 4, N'r_kill_09_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (209, N'r_kill_09_10', 1, 4, N'r_kill_10_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (210, N'r_kill_09_17', 1, 4, N'r_kill_17_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (211, N'r_kill_09_19', 1, 4, N'r_kill_19_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (212, N'r_kill_09_21', 1, 4, N'r_kill_21_09', 0, 0, 220, 811, 2200)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (300, N'r_kill_11_01', 1, 4, N'r_kill_01_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (301, N'r_kill_11_02', 1, 4, N'r_kill_02_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (302, N'r_kill_11_03', 1, 4, N'r_kill_03_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (303, N'r_kill_11_04', 1, 4, N'r_kill_04_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (304, N'r_kill_11_05', 1, 4, N'r_kill_05_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (305, N'r_kill_11_06', 1, 4, N'r_kill_06_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (306, N'r_kill_11_07', 1, 4, N'r_kill_07_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (307, N'r_kill_11_08', 1, 4, N'r_kill_08_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (308, N'r_kill_11_09', 1, 4, N'r_kill_09_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (309, N'r_kill_11_10', 1, 4, N'r_kill_10_11', 0, 0, 220, 2201, 99999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (310, N'r_kill_11_11', 1, 4, N'r_kill_11_11', 0, 0, 220, 2201, 99999)
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
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1022, N'base2base', 0, 3, N'base2base', 0, 0, 200, 0, 99999)
GO
SET IDENTITY_INSERT [dbo].[NewMissions] OFF
GO
SET IDENTITY_INSERT [dbo].[RandomItems] ON 

GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"tier1","items":[21,22,23,24,25,26,27,28],"weights":[29,38,43,10,0,0,0,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (2, N'{"ident":"tier2","items":[21,22,23,24,25,26,27,28],"weights":[28,23,21,10,3,4,3,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (3, N'{"ident":"tier3","items":[21,22,23,24,25,26,27,28],"weights":[25,8,12,22,1,3,10,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (4, N'{"ident":"tier4","items":[21,22,23,24,25,26,27,28],"weights":[26,12,18,14,3,1,6,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (5, N'{"ident":"tier5","items":[21,22,23,24,25,26,27,28],"weights":[32,9,22,12,2,1,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (6, N'{"ident":"tier6","items":[21,22,23,24,25,26,27,28],"weights":[21,20,18,11,2,4,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (7, N'{"ident":"tier7","items":[21,22,23,24,25,26,27,28],"weights":[29,16,23,8,1,3,3,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (8, N'{"ident":"tier8","items":[21,22,23,24,25,26,27,28],"weights":[26,17,21,8,2,3,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (9, N'{"ident":"tier9","items":[21,22,23,24,25,26,27,28],"weights":[30,15,24,6,1,3,3,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (10, N'{"ident":"tier10","items":[21,22,23,24,25,26,27,28],"weights":[28,19,24,3,2,4,2,1]}')
GO
SET IDENTITY_INSERT [dbo].[RandomItems] OFF
GO
