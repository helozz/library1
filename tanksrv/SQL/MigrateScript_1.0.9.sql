USE [tankwars_test]
GO
/****** Object:  Table [dbo].[Upgrades]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[Upgrades]
GO
/****** Object:  Table [dbo].[ShellShops]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[ShellShops]
GO
/****** Object:  Table [dbo].[Evolves]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[Evolves]
GO
/****** Object:  Table [dbo].[Defines]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[Defines]
GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[DefaultUnits]
GO
/****** Object:  Table [dbo].[ClanSkillLevels]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[ClanSkillLevels]
GO
/****** Object:  Table [dbo].[ClanLevels]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[ClanLevels]
GO
/****** Object:  Table [dbo].[Campaigns]    Script Date: 03.05.2016 17:37:50 ******/
DROP TABLE [dbo].[Campaigns]
GO
/****** Object:  Table [dbo].[Campaigns]    Script Date: 03.05.2016 17:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Campaigns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[campaign] [int] NOT NULL,
	[episode] [int] NOT NULL,
	[episodeName] [varchar](50) NULL,
	[difficulty] [int] NOT NULL,
	[requiredLevel] [int] NOT NULL,
	[maxUnits] [int] NOT NULL,
	[reward1] [int] NOT NULL,
	[reward1Num] [int] NOT NULL,
	[reward1Item] [int] NOT NULL,
	[reward2] [int] NOT NULL,
	[reward2Num] [int] NOT NULL,
	[reward2Item] [int] NOT NULL,
	[reward3] [int] NOT NULL,
	[reward3Num] [int] NOT NULL,
	[reward3Item] [int] NOT NULL,
	[UnitPower] [int] NOT NULL,
	[storage] [varchar](200) NOT NULL CONSTRAINT [DF_Campaigns_storage]  DEFAULT (''),
	[openZone] [int] NOT NULL,
	[fuelCost] [int] NOT NULL,
 CONSTRAINT [PK_Campaigns] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClanLevels]    Script Date: 03.05.2016 17:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClanLevels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level] [int] NOT NULL,
	[experience] [int] NOT NULL,
	[place] [int] NOT NULL,
 CONSTRAINT [PK_ClansLevels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClanSkillLevels]    Script Date: 03.05.2016 17:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClanSkillLevels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[index] [int] NOT NULL,
	[level] [int] NOT NULL,
	[clanLevel] [int] NOT NULL,
	[money] [int] NOT NULL,
 CONSTRAINT [PK_ClanSkillLevels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 03.05.2016 17:37:50 ******/
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
/****** Object:  Table [dbo].[Defines]    Script Date: 03.05.2016 17:37:50 ******/
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
/****** Object:  Table [dbo].[Evolves]    Script Date: 03.05.2016 17:37:50 ******/
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
/****** Object:  Table [dbo].[ShellShops]    Script Date: 03.05.2016 17:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShellShops](
	[i] [int] IDENTITY(1,1) NOT NULL,
	[n] [varchar](50) NOT NULL,
	[k] [float] NOT NULL,
	[b] [int] NOT NULL,
	[m] [float] NOT NULL,
	[g] [float] NOT NULL,
	[dm] [float] NOT NULL,
	[dx] [float] NOT NULL,
	[ao] [float] NOT NULL,
	[r] [float] NOT NULL,
	[t] [int] NOT NULL,
	[ut] [int] NOT NULL,
	[z] [int] NOT NULL,
	[s] [int] NOT NULL,
	[ic] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShellShops] PRIMARY KEY CLUSTERED 
(
	[i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Upgrades]    Script Date: 03.05.2016 17:37:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upgrades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[price] [int] NOT NULL,
	[frontArmor] [float] NOT NULL,
	[backArmor] [float] NOT NULL,
	[sideArmor] [float] NOT NULL,
	[maxHP] [float] NOT NULL,
	[speed] [float] NOT NULL,
	[turnSpeed] [float] NOT NULL,
	[minAccuracy] [float] NOT NULL,
	[maxAccuracy] [float] NOT NULL,
	[visibilityRadius] [float] NOT NULL,
	[range] [float] NOT NULL,
	[aimingTime] [float] NOT NULL,
	[reloadDuration] [float] NOT NULL,
	[piercing] [float] NOT NULL,
	[damage] [float] NOT NULL,
 CONSTRAINT [PK_Upgrades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 400, 0, 5, 100, 0, -1, 0, 0, 0, N'', 2, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 210, 0, 4, 50, 0, 7, 1, 42, 63, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 215, 0, 4, 100, 0, 7, 1, 316, 116, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 220, 0, 4, 150, 0, 7, 2, 23, 116, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 225, 0, 4, 200, 0, 7, 1, 43, 116, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 500, 0, 5, 150, 0, -1, 0, 0, 0, N'', 3, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 230, 0, 4, 400, 0, 7, 2, 22, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 235, 0, 4, 430, 0, 7, 1, 44, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 240, 0, 4, 460, 0, 7, 1, 12, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 245, 0, 4, 490, 0, 7, 1, 22, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 250, 0, 4, 520, 0, 7, 2, 21, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 2, 6, N'c02_m06', 0, 1, 5, 0, 255, 0, 4, 550, 0, -1, 0, 0, 190, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 0, N'c03', 0, 1, 5, 0, 600, 0, 5, 250, 0, -1, 0, 0, 0, N'', 4, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 1, N'c03_m01', 0, 1, 5, 0, 260, 0, 4, 580, 0, 7, 5, 79, 180, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 2, N'c03_m02', 0, 1, 5, 0, 265, 0, 4, 610, 0, 7, 1, 12, 272, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 3, N'c03_m03', 0, 1, 5, 0, 270, 0, 4, 640, 0, 7, 1, 24, 272, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 3, 4, N'c03_m04', 0, 1, 5, 0, 275, 0, 4, 670, 0, 7, 2, 23, 272, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 3, 5, N'c03_m05', 0, 1, 5, 0, 280, 0, 4, 700, 0, -1, 0, 0, 282, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 3, 6, N'c03_m06', 0, 1, 5, 0, 285, 0, 4, 730, 0, -1, 0, 0, 282, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 3, 7, N'c03_m07', 0, 1, 5, 0, 290, 0, 4, 760, 0, -1, 0, 0, 393, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 3, 8, N'c03_m08', 0, 1, 5, 0, 295, 0, 4, 790, 0, -1, 0, 0, 393, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 3, 9, N'c03_m09', 0, 1, 5, 0, 300, 0, 4, 820, 0, -1, 0, 0, 393, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 3, 10, N'c03_m10', 0, 1, 5, 0, 305, 0, 4, 850, 0, -1, 0, 0, 393, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 4, 0, N'c04', 0, 1, 5, 0, 700, 0, 5, 250, 0, -1, 0, 0, 0, N'', 5, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 4, 1, N'c04_m01', 0, 1, 5, 0, 290, 0, 4, 1550, 0, 7, 1, 4, 393, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 4, 2, N'c04_m02', 0, 1, 5, 0, 295, 0, 4, 1600, 0, 7, 1, 12, 393, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 4, 3, N'c04_m03', 0, 1, 5, 0, 301, 0, 4, 1650, 0, 7, 1, 22, 393, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 4, 4, N'c04_m04', 0, 1, 5, 0, 310, 0, 4, 1700, 0, 7, 1, 21, 393, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 5, 0, N'c05', 0, 1, 5, 0, 800, 0, 5, 330, 0, -1, 0, 0, 0, N'', 6, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 5, 1, N'c05_m01', 0, 1, 5, 0, 324, 0, 4, 2050, 0, 7, 1, 3, 375, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 5, 2, N'c05_m02', 0, 1, 5, 0, 329, 0, 4, 2100, 0, 7, 1, 3, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 5, 3, N'c05_m03', 0, 1, 5, 0, 336, 0, 4, 2150, 0, 7, 1, 13, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 5, 4, N'c05_m04', 0, 1, 5, 0, 345, 0, 4, 2200, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 5, 5, N'c05_m05', 0, 1, 5, 0, 350, 0, 4, 2250, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 5, 6, N'c05_m06', 0, 1, 5, 0, 358, 0, 4, 2300, 0, 7, 1, 22, 462, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 6, 0, N'c06', 0, 1, 5, 0, 900, 0, 5, 430, 0, -1, 0, 0, 0, N'', 7, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 6, 1, N'c06_m01', 0, 1, 5, 0, 384, 0, 4, 2550, 0, 7, 1, 3, 462, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 6, 2, N'c06_m02', 0, 1, 5, 0, 388, 0, 4, 2600, 0, 7, 1, 3, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 6, 3, N'c06_m03', 0, 1, 5, 0, 395, 0, 4, 2650, 0, 7, 1, 13, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 6, 4, N'c06_m04', 0, 1, 5, 0, 405, 0, 4, 2700, 0, -1, 0, 0, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 6, 5, N'c06_m05', 0, 1, 5, 0, 412, 0, 4, 2750, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 6, 6, N'c06_m06', 0, 1, 5, 0, 420, 0, 4, 2800, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 6, 7, N'c06_m07', 0, 1, 5, 0, 429, 0, 4, 2850, 0, 7, 1, 23, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 7, 0, N'c07', 0, 1, 5, 0, 1100, 0, 5, 550, 0, -1, 0, 0, 0, N'', 8, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 7, 1, N'c07_m01', 0, 1, 5, 0, 458, 0, 4, 3050, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 7, 2, N'c07_m02', 0, 1, 5, 0, 466, 0, 4, 3100, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 7, 3, N'c07_m03', 0, 1, 5, 0, 476, 0, 4, 3150, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 7, 4, N'c07_m04', 0, 1, 5, 0, 484, 0, 4, 3200, 0, 7, 1, 14, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 7, 5, N'c07_m05', 0, 1, 5, 0, 482, 0, 4, 3250, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 7, 6, N'c07_m06', 0, 1, 5, 0, 490, 0, 4, 3300, 0, -1, 0, 0, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 7, 7, N'c07_m07', 0, 1, 5, 0, 502, 0, 4, 3350, 0, 7, 2, 24, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 8, 0, N'c08', 0, 1, 5, 0, 1300, 0, 5, 700, 0, -1, 0, 0, 0, N'', 9, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 8, 1, N'c08_m01', 0, 1, 5, 0, 533, 0, 4, 3550, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 8, 2, N'c08_m02', 0, 1, 5, 0, 542, 0, 4, 3600, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 8, 3, N'c08_m03', 0, 1, 5, 0, 555, 0, 4, 3650, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 8, 4, N'c08_m04', 0, 1, 5, 0, 565, 0, 4, 3700, 0, 7, 1, 14, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 8, 5, N'c08_m05', 0, 1, 5, 0, 574, 0, 4, 3750, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 8, 6, N'c08_m06', 0, 1, 5, 0, 585, 0, 4, 3800, 0, -1, 0, 0, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 8, 7, N'c08_m07', 0, 1, 5, 0, 595, 0, 4, 3850, 0, 7, 2, 25, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 9, 0, N'c09', 0, 1, 5, 0, 1500, 0, 5, 870, 0, -1, 0, 0, 0, N'', 10, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 9, 1, N'c09_m01', 0, 1, 5, 0, 642, 0, 4, 4050, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 9, 2, N'c09_m02', 0, 1, 5, 0, 653, 0, 4, 4100, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 9, 3, N'c09_m03', 0, 1, 5, 0, 667, 0, 4, 4150, 0, -1, 0, 0, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 9, 4, N'c09_m04', 0, 1, 5, 0, 679, 0, 4, 4200, 0, 7, 1, 14, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 9, 5, N'c09_m05', 0, 1, 5, 0, 694, 0, 4, 4250, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 9, 6, N'c09_m06', 0, 1, 5, 0, 706, 0, 4, 4300, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 9, 7, N'c09_m07', 0, 1, 5, 0, 720, 0, 4, 4350, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 9, 8, N'c09_m08', 0, 1, 5, 0, 732, 0, 4, 4400, 0, 7, 2, 26, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4550, 0, 7, 1, 3, 797, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4600, 0, 7, 1, 3, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4650, 0, 7, 1, 15, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4700, 0, -1, 0, 0, 911, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4750, 0, -1, 0, 0, 940, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 4800, 0, 7, 2, 27, 976, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5050, 0, 7, 1, 3, 976, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5100, 0, 7, 1, 3, 1041, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5150, 0, 7, 1, 15, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5200, 0, -1, 0, 0, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5250, 0, -1, 0, 0, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 5300, 0, 7, 2, 28, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5550, 0, 7, 1, 3, 1188, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5600, 0, 7, 1, 3, 1260, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5650, 0, 7, 1, 15, 1353, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5700, 0, -1, 0, 0, 1459, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5750, 0, -1, 0, 0, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 5800, 0, 7, 1, 28, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6050, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6100, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6150, 0, 7, 1, 16, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6200, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6250, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 6300, 0, 7, 2, 25, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6100, 0, 7, 1, 3, 1718, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6150, 0, 7, 1, 3, 1964, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6200, 0, 7, 1, 16, 2093, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6250, 0, -1, 0, 0, 2240, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6300, 0, -1, 0, 0, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 6350, 0, 7, 1, 28, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (104, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (105, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 6200, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (106, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 6250, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (107, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 6300, 0, 7, 1, 16, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (108, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 6350, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (109, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 6400, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (110, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 6450, 0, 7, 2, 26, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (111, 16, 0, N'c16', 0, 1, 5, 0, 4800, 0, 5, 2750, 0, -1, 0, 0, 0, N'', 17, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (112, 16, 1, N'c16_m01', 0, 1, 5, 0, 2200, 0, 4, 6350, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (113, 16, 2, N'c16_m02', 0, 1, 5, 0, 2350, 0, 4, 6400, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (114, 16, 3, N'c16_m03', 0, 1, 5, 0, 2500, 0, 4, 6450, 0, 7, 0, 0, 3317, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (115, 16, 4, N'c16_m04', 0, 1, 5, 0, 2650, 0, 4, 6500, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (116, 16, 5, N'c16_m05', 0, 1, 5, 0, 2800, 0, 4, 6550, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (117, 16, 6, N'c16_m06', 0, 1, 5, 0, 2950, 0, 4, 6600, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (118, 16, 7, N'c16_m07', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (119, 16, 8, N'c16_m08', 0, 1, 5, 0, 3250, 0, 4, 6700, 0, 7, 1, 28, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (120, 17, 0, N'c17', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 18, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (121, 17, 1, N'c17_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 3975, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (122, 17, 2, N'c17_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (123, 17, 3, N'c17_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (124, 17, 4, N'c17_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (125, 17, 5, N'c17_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (126, 17, 6, N'c17_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (127, 17, 7, N'c17_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (128, 17, 8, N'c17_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (129, 18, 0, N'c18', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 19, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (130, 18, 1, N'c18_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (131, 18, 2, N'c18_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (132, 18, 3, N'c18_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (133, 18, 4, N'c18_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (134, 18, 5, N'c18_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (135, 18, 6, N'c18_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (136, 18, 7, N'c18_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (137, 18, 8, N'c18_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (138, 18, 9, N'c18_m09', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (139, 18, 10, N'c18_m10', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 7000, N'', 0, 22)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
GO
SET IDENTITY_INSERT [dbo].[ClanLevels] ON 

GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1, 0, 0, 0)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (2, 1, 300, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (3, 2, 400, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (4, 3, 500, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (5, 4, 600, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (6, 5, 700, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (7, 6, 900, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (8, 7, 1100, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (9, 8, 1300, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (10, 9, 1500, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (11, 10, 1700, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (14, 11, 2000, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (15, 12, 2300, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (16, 13, 2600, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (17, 14, 2900, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (18, 15, 3200, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (21, 16, 3500, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (22, 17, 3800, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (23, 18, 4100, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (24, 19, 4400, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (25, 20, 4700, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1001, 21, 5000, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1002, 22, 5300, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1003, 23, 5600, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1005, 24, 5900, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1006, 25, 6200, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1007, 26, 6500, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1008, 27, 6800, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1009, 28, 7100, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1010, 29, 7500, 1)
GO
INSERT [dbo].[ClanLevels] ([id], [level], [experience], [place]) VALUES (1011, 30, 8000, 1)
GO
SET IDENTITY_INSERT [dbo].[ClanLevels] OFF
GO
SET IDENTITY_INSERT [dbo].[ClanSkillLevels] ON 

GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (1, 1, 0, 1, 100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (2, 1, 1, 1, 100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (3, 1, 2, 1, 200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (4, 1, 3, 1, 300)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (5, 1, 4, 1, 400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (6, 1, 5, 1, 500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (7, 1, 6, 2, 600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (8, 1, 7, 3, 700)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (9, 1, 8, 4, 800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (10, 1, 9, 5, 900)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (11, 1, 10, 6, 1000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (12, 2, 0, 5, 800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (13, 2, 1, 5, 800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (14, 2, 2, 7, 1000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (15, 2, 3, 9, 1200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (16, 2, 4, 11, 1400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (17, 2, 5, 13, 1600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (18, 2, 6, 15, 1800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (19, 2, 7, 17, 2000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (20, 2, 8, 19, 2200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (21, 2, 9, 21, 2400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (22, 2, 10, 23, 2600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (23, 3, 0, 15, 1500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (24, 3, 1, 15, 1500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (25, 3, 2, 16, 1800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (26, 3, 3, 17, 2100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (27, 3, 4, 18, 2400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (28, 3, 5, 19, 2700)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (29, 3, 6, 20, 3000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (30, 3, 7, 21, 3300)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (31, 3, 8, 22, 3600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (32, 3, 9, 23, 3900)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (33, 3, 10, 24, 4200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (34, 4, 0, 1, 500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (35, 4, 1, 1, 500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (36, 4, 2, 3, 700)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (37, 4, 3, 5, 900)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (38, 4, 4, 7, 1100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (39, 4, 5, 9, 1300)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (40, 4, 6, 11, 1500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (41, 4, 7, 13, 1700)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (42, 4, 8, 15, 1900)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (43, 4, 9, 17, 2100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (44, 4, 10, 20, 2300)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (45, 5, 0, 15, 2000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (46, 5, 1, 15, 2000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (47, 5, 2, 16, 2400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (48, 5, 3, 17, 2800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (49, 5, 4, 18, 3200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (50, 5, 5, 19, 3600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (51, 5, 6, 20, 4000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (52, 5, 7, 21, 4400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (53, 5, 8, 22, 4800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (54, 5, 9, 23, 5200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (55, 5, 10, 24, 5600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (56, 6, 0, 1, 1200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (57, 6, 1, 1, 1200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (58, 6, 2, 3, 1400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (59, 6, 3, 5, 1600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (60, 6, 4, 7, 1800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (61, 6, 5, 9, 2000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (62, 6, 6, 11, 2200)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (63, 6, 7, 13, 2400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (64, 6, 8, 15, 2600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (65, 6, 9, 17, 2800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (66, 6, 10, 20, 3000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (67, 7, 0, 1, 1500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (68, 7, 1, 1, 1500)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (69, 7, 2, 3, 1800)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (70, 7, 3, 5, 2100)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (71, 7, 4, 7, 2400)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (72, 7, 5, 9, 2700)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (73, 7, 6, 11, 3000)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (74, 7, 7, 13, 3300)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (75, 7, 8, 15, 3600)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (76, 7, 9, 17, 3900)
GO
INSERT [dbo].[ClanSkillLevels] ([id], [index], [level], [clanLevel], [money]) VALUES (77, 7, 10, 20, 4200)
GO
SET IDENTITY_INSERT [dbo].[ClanSkillLevels] OFF
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (84, N'Grille1', 2, 110, 30, 36, 2, 8, 2, 13, 1, 9, 1240, 1623, 1.33, 11, 50, 34, 42, 19, 24, 5, 150, 540000, 0, 1, 1, 11, 0, 9, 0, 0, 8, 18000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (108, N'Pershing1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1992, 4149, 1.33, 28, 78, 64, 71, 15, 22, 3, 75, 600000, 0, 1, 1, 6, 0, 10, 4, 150, 6, 18000)
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingsLimit', N'0,1,1,10,10,10,10,10,10,10,3,1,3,1000,1000,0,0,0,0,0,1')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DifficultyMult', N'0,0.2,0.4,0.6,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMissionDifficultyMult', N'0.62,0.8,0.9')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,282,685,844,1150,582,433,-2715,-10354,-8011')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GMCourse', N'2.1')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1248')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewardHints', N'"[{''name'':''camp_missions'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':3,''type'':4},{''lvl'':1,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''campaign'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':4,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''event'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':2,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''pvp'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''easy_radar'',''rewards'':[{''lvl'':1,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''normal_radar'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''hard_radar'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':2,''type'':5},{''lvl'':4,''type'':4},{''lvl'':4,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''quests'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''arena'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''top'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''top_up'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]},{''name'':''market'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''level_up'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewards', N'"[{''points'':25,''rewards'':[{''type'':0,''num'':500}]},{''points'':50,''rewards'':[{''type'':5,''num'':222}]},{''points'':75,''rewards'':[{''type'':7,''num'':5,''item'':21},{''type'':7,''num'':5,''item'':23}]},{''points'':120,''rewards'':[{''type'':1,''num'':50},{''type'':5,''num'':150}]}]"')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneShieldHours', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneUnderAttack', N'300')
GO
SET IDENTITY_INSERT [dbo].[Evolves] ON 

GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (808, 1, N'[{"type":0,"num":620},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (809, 2, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":26},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (810, 3, N'[{"type":0,"num":220},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (811, 4, N'[{"type":0,"num":620},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (812, 5, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (813, 6, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":4},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (814, 9, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":3},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (815, 10, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":8},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (816, 11, N'[{"type":0,"num":220},{"type":7,"item":21,"num":2},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (817, 12, N'[{"type":0,"num":620},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (818, 13, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":2},{"type":7,"item":24,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (819, 14, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":7},{"type":7,"item":23,"num":4},{"type":7,"item":24,"num":7},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (820, 17, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":7},{"type":7,"item":22,"num":10},{"type":7,"item":23,"num":10},{"type":7,"item":25,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (821, 18, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":10},{"type":7,"item":22,"num":18},{"type":7,"item":23,"num":18},{"type":7,"item":25,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (822, 19, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":12},{"type":7,"item":22,"num":11},{"type":7,"item":23,"num":11},{"type":7,"item":26,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (823, 20, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":22},{"type":7,"item":22,"num":19},{"type":7,"item":23,"num":19},{"type":7,"item":26,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (824, 23, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":7},{"type":7,"item":23,"num":4},{"type":7,"item":24,"num":7},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (825, 24, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":162},{"type":7,"item":22,"num":157},{"type":7,"item":23,"num":157},{"type":7,"item":25,"num":22},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (826, 25, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":18},{"type":7,"item":23,"num":8},{"type":7,"item":24,"num":16},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (827, 26, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":25},{"type":7,"item":23,"num":13},{"type":7,"item":24,"num":25},{"type":7,"item":27,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (828, 27, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":23},{"type":7,"item":23,"num":13},{"type":7,"item":24,"num":9},{"type":7,"item":27,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (829, 28, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":38},{"type":7,"item":23,"num":23},{"type":7,"item":24,"num":15},{"type":7,"item":27,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (830, 29, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":56},{"type":7,"item":23,"num":33},{"type":7,"item":24,"num":22},{"type":7,"item":27,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (831, 30, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":99},{"type":7,"item":23,"num":59},{"type":7,"item":24,"num":40},{"type":7,"item":27,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (832, 33, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":13},{"type":7,"item":22,"num":13},{"type":7,"item":23,"num":13},{"type":7,"item":25,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (833, 34, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":26},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (834, 37, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":14},{"type":7,"item":22,"num":27},{"type":7,"item":23,"num":27},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (835, 38, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":24},{"type":7,"item":22,"num":46},{"type":7,"item":23,"num":46},{"type":7,"item":25,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (836, 39, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":33},{"type":7,"item":22,"num":68},{"type":7,"item":23,"num":68},{"type":7,"item":25,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (837, 40, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":61},{"type":7,"item":22,"num":118},{"type":7,"item":23,"num":118},{"type":7,"item":25,"num":12},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (838, 41, N'[{"type":0,"num":620},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (839, 42, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":27},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":26,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (840, 43, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":47},{"type":7,"item":22,"num":47},{"type":7,"item":23,"num":47},{"type":7,"item":26,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (841, 45, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":36},{"type":7,"item":23,"num":17},{"type":7,"item":24,"num":34},{"type":7,"item":27,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (842, 46, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":63},{"type":7,"item":23,"num":31},{"type":7,"item":24,"num":62},{"type":7,"item":27,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (843, 47, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":94},{"type":7,"item":23,"num":46},{"type":7,"item":24,"num":93},{"type":7,"item":27,"num":13}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (844, 48, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":165},{"type":7,"item":23,"num":83},{"type":7,"item":24,"num":165},{"type":7,"item":27,"num":19},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (845, 49, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":99},{"type":7,"item":23,"num":59},{"type":7,"item":24,"num":40},{"type":7,"item":27,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (846, 51, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":142},{"type":7,"item":23,"num":85},{"type":7,"item":24,"num":57},{"type":7,"item":27,"num":12},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (847, 52, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":258},{"type":7,"item":23,"num":155},{"type":7,"item":24,"num":103},{"type":7,"item":27,"num":20},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (848, 55, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":91},{"type":7,"item":22,"num":87},{"type":7,"item":23,"num":87},{"type":7,"item":25,"num":10},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (849, 56, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":162},{"type":7,"item":22,"num":157},{"type":7,"item":23,"num":157},{"type":7,"item":25,"num":22},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (850, 57, N'[{"type":0,"num":220},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (851, 58, N'[{"type":0,"num":620},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (852, 59, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":89},{"type":7,"item":22,"num":174},{"type":7,"item":23,"num":174},{"type":7,"item":25,"num":20},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (853, 60, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":156},{"type":7,"item":22,"num":310},{"type":7,"item":23,"num":310},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (854, 61, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":228},{"type":7,"item":22,"num":456},{"type":7,"item":23,"num":456},{"type":7,"item":25,"num":48},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (855, 62, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":412},{"type":7,"item":22,"num":822},{"type":7,"item":23,"num":822},{"type":7,"item":25,"num":82},{"type":7,"item":28,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (856, 63, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":69},{"type":7,"item":22,"num":66},{"type":7,"item":23,"num":66},{"type":7,"item":26,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (857, 64, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":124},{"type":7,"item":22,"num":118},{"type":7,"item":23,"num":118},{"type":7,"item":26,"num":15},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (858, 65, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":178},{"type":7,"item":22,"num":173},{"type":7,"item":23,"num":173},{"type":7,"item":26,"num":20},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (859, 66, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":318},{"type":7,"item":22,"num":308},{"type":7,"item":23,"num":308},{"type":7,"item":26,"num":40},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (860, 67, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":242},{"type":7,"item":23,"num":120},{"type":7,"item":24,"num":240},{"type":7,"item":27,"num":26},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (861, 68, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":437},{"type":7,"item":23,"num":218},{"type":7,"item":24,"num":436},{"type":7,"item":27,"num":44},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (862, 69, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":639},{"type":7,"item":23,"num":320},{"type":7,"item":24,"num":639},{"type":7,"item":27,"num":65},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (863, 70, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1148},{"type":7,"item":23,"num":573},{"type":7,"item":24,"num":1146},{"type":7,"item":27,"num":117},{"type":7,"item":28,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (864, 71, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":377},{"type":7,"item":23,"num":225},{"type":7,"item":24,"num":150},{"type":7,"item":27,"num":30},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (865, 72, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":677},{"type":7,"item":23,"num":406},{"type":7,"item":24,"num":271},{"type":7,"item":27,"num":56},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (866, 73, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":997},{"type":7,"item":23,"num":599},{"type":7,"item":24,"num":399},{"type":7,"item":27,"num":84},{"type":7,"item":28,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (867, 74, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1791},{"type":7,"item":23,"num":1075},{"type":7,"item":24,"num":717},{"type":7,"item":27,"num":145},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (868, 75, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":36},{"type":7,"item":22,"num":35},{"type":7,"item":23,"num":35},{"type":7,"item":25,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (869, 76, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":62},{"type":7,"item":22,"num":60},{"type":7,"item":23,"num":60},{"type":7,"item":25,"num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (870, 77, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":235},{"type":7,"item":22,"num":227},{"type":7,"item":23,"num":227},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (871, 78, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":420},{"type":7,"item":22,"num":409},{"type":7,"item":23,"num":409},{"type":7,"item":25,"num":54},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (872, 79, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":306},{"type":7,"item":22,"num":298},{"type":7,"item":23,"num":298},{"type":7,"item":26,"num":39},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (873, 80, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":552},{"type":7,"item":22,"num":537},{"type":7,"item":23,"num":537},{"type":7,"item":26,"num":67},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (874, 81, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":552},{"type":7,"item":22,"num":537},{"type":7,"item":23,"num":537},{"type":7,"item":26,"num":67},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (875, 82, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":468},{"type":7,"item":22,"num":453},{"type":7,"item":23,"num":453},{"type":7,"item":26,"num":56},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (876, 83, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":838},{"type":7,"item":22,"num":812},{"type":7,"item":23,"num":812},{"type":7,"item":26,"num":102},{"type":7,"item":28,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (877, 85, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":620},{"type":7,"item":22,"num":601},{"type":7,"item":23,"num":601},{"type":7,"item":25,"num":74},{"type":7,"item":28,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (878, 86, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1116},{"type":7,"item":22,"num":1083},{"type":7,"item":23,"num":1083},{"type":7,"item":25,"num":131},{"type":7,"item":28,"num":13}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (879, 87, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1791},{"type":7,"item":23,"num":1075},{"type":7,"item":24,"num":717},{"type":7,"item":27,"num":145},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (880, 88, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":814},{"type":7,"item":22,"num":789},{"type":7,"item":23,"num":789},{"type":7,"item":26,"num":98},{"type":7,"item":28,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (881, 89, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1462},{"type":7,"item":22,"num":1419},{"type":7,"item":23,"num":1419},{"type":7,"item":26,"num":173},{"type":7,"item":28,"num":17}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (882, 90, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":605},{"type":7,"item":22,"num":1209},{"type":7,"item":23,"num":1209},{"type":7,"item":25,"num":120},{"type":7,"item":28,"num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (883, 91, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":1086},{"type":7,"item":22,"num":2173},{"type":7,"item":23,"num":2173},{"type":7,"item":25,"num":220},{"type":7,"item":28,"num":21}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (884, 93, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1230},{"type":7,"item":22,"num":1194},{"type":7,"item":23,"num":1194},{"type":7,"item":26,"num":147},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (885, 94, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":2217},{"type":7,"item":22,"num":2151},{"type":7,"item":23,"num":2151},{"type":7,"item":26,"num":260},{"type":7,"item":28,"num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (886, 95, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1690},{"type":7,"item":23,"num":844},{"type":7,"item":24,"num":1689},{"type":7,"item":27,"num":173},{"type":7,"item":28,"num":16}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (887, 96, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3042},{"type":7,"item":23,"num":1521},{"type":7,"item":24,"num":3042},{"type":7,"item":27,"num":305},{"type":7,"item":28,"num":30}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (888, 97, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1641},{"type":7,"item":22,"num":1593},{"type":7,"item":23,"num":1593},{"type":7,"item":25,"num":194},{"type":7,"item":28,"num":19}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (889, 98, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":2955},{"type":7,"item":22,"num":2868},{"type":7,"item":23,"num":2868},{"type":7,"item":25,"num":350},{"type":7,"item":28,"num":34}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (890, 99, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":2641},{"type":7,"item":23,"num":1584},{"type":7,"item":24,"num":1056},{"type":7,"item":27,"num":211},{"type":7,"item":28,"num":21}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (891, 100, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":4752},{"type":7,"item":23,"num":2851},{"type":7,"item":24,"num":1901},{"type":7,"item":27,"num":384},{"type":7,"item":28,"num":37}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (892, 101, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":2155},{"type":7,"item":22,"num":2092},{"type":7,"item":23,"num":2092},{"type":7,"item":26,"num":254},{"type":7,"item":28,"num":25}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (893, 102, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3876},{"type":7,"item":22,"num":3763},{"type":7,"item":23,"num":3763},{"type":7,"item":26,"num":458},{"type":7,"item":28,"num":45}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (894, 103, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3876},{"type":7,"item":22,"num":3763},{"type":7,"item":23,"num":3763},{"type":7,"item":26,"num":458},{"type":7,"item":28,"num":45}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (895, 105, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":3260},{"type":7,"item":22,"num":3164},{"type":7,"item":23,"num":3164},{"type":7,"item":26,"num":385},{"type":7,"item":28,"num":38}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (896, 106, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":5869},{"type":7,"item":22,"num":5695},{"type":7,"item":23,"num":5695},{"type":7,"item":26,"num":690},{"type":7,"item":28,"num":69}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (897, 84, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":4474},{"type":7,"item":23,"num":2237},{"type":7,"item":24,"num":4474},{"type":7,"item":27,"num":451},{"type":7,"item":28,"num":44}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (898, 107, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":8057},{"type":7,"item":23,"num":4028},{"type":7,"item":24,"num":8056},{"type":7,"item":27,"num":807},{"type":7,"item":28,"num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (899, 109, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":10270},{"type":7,"item":22,"num":9968},{"type":7,"item":23,"num":9968},{"type":7,"item":26,"num":1211},{"type":7,"item":28,"num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (900, 110, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":6995},{"type":7,"item":23,"num":4196},{"type":7,"item":24,"num":2798},{"type":7,"item":27,"num":563},{"type":7,"item":28,"num":55}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (901, 111, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":12586},{"type":7,"item":23,"num":7552},{"type":7,"item":24,"num":5035},{"type":7,"item":27,"num":1009},{"type":7,"item":28,"num":100}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (902, 112, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":5706},{"type":7,"item":22,"num":5538},{"type":7,"item":23,"num":5538},{"type":7,"item":26,"num":671},{"type":7,"item":28,"num":67}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (903, 113, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":10270},{"type":7,"item":22,"num":9968},{"type":7,"item":23,"num":9968},{"type":7,"item":26,"num":1211},{"type":7,"item":28,"num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (904, 114, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":5250},{"type":7,"item":22,"num":5000},{"type":7,"item":23,"num":5000},{"type":7,"item":25,"num":500},{"type":7,"item":28,"num":42}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (905, 115, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":9400},{"type":7,"item":22,"num":9000},{"type":7,"item":23,"num":9000},{"type":7,"item":25,"num":900},{"type":7,"item":28,"num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (908, 125, N'[{"type":0,"num":504000},{"type":7,"item":21,"num":5868},{"type":7,"item":22,"num":5695},{"type":7,"item":23,"num":5695},{"type":7,"item":26,"num":693},{"type":7,"item":28,"num":68}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (909, 126, N'[{"type":0,"num":612000},{"type":7,"item":21,"num":10564},{"type":7,"item":22,"num":10250},{"type":7,"item":23,"num":10250},{"type":7,"item":26,"num":1242},{"type":7,"item":28,"num":124}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (910, 118, N'[{"type":0,"num":504000},{"type":7,"item":21,"num":8050},{"type":7,"item":23,"num":4026},{"type":7,"item":24,"num":8053},{"type":7,"item":27,"num":812},{"type":7,"item":28,"num":79}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (911, 119, N'[{"type":0,"num":612000},{"type":7,"item":21,"num":14500},{"type":7,"item":23,"num":7250},{"type":7,"item":24,"num":14500},{"type":7,"item":27,"num":1452},{"type":7,"item":28,"num":144}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (912, 108, N'[{"type":0,"num":504000},{"type":7,"item":21,"num":9450},{"type":7,"item":22,"num":9000},{"type":7,"item":23,"num":9000},{"type":7,"item":25,"num":900},{"type":7,"item":28,"num":76}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (913, 117, N'[{"type":0,"num":612000},{"type":7,"item":21,"num":16920},{"type":7,"item":22,"num":16200},{"type":7,"item":23,"num":16200},{"type":7,"item":25,"num":1620},{"type":7,"item":28,"num":135}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (914, 120, N'[{"type":0,"num":504000},{"type":7,"item":21,"num":12591},{"type":7,"item":23,"num":7553},{"type":7,"item":24,"num":5036},{"type":7,"item":27,"num":1013},{"type":7,"item":28,"num":100}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (915, 121, N'[{"type":0,"num":612000},{"type":7,"item":21,"num":22650},{"type":7,"item":23,"num":13590},{"type":7,"item":24,"num":9060},{"type":7,"item":27,"num":1800},{"type":7,"item":28,"num":180}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (916, 122, N'[{"type":0,"num":504000},{"type":7,"item":21,"num":10270},{"type":7,"item":22,"num":9970},{"type":7,"item":23,"num":9970},{"type":7,"item":26,"num":1210},{"type":7,"item":28,"num":121}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (917, 123, N'[{"type":0,"num":615000},{"type":7,"item":21,"num":18500},{"type":7,"item":22,"num":17950},{"type":7,"item":23,"num":17950},{"type":7,"item":26,"num":2180},{"type":7,"item":28,"num":215}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (918, 124, N'[{"type":0,"num":615000},{"type":7,"item":21,"num":18500},{"type":7,"item":22,"num":17950},{"type":7,"item":23,"num":17950},{"type":7,"item":26,"num":2180},{"type":7,"item":28,"num":215}]')
GO
SET IDENTITY_INSERT [dbo].[Evolves] OFF
GO
SET IDENTITY_INSERT [dbo].[ShellShops] ON 

GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (1, N'SC1AP', 14, 17, 1, 0, 17, 21, 0, 10, 1, 1, 15, 1, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (2, N'SC1APCR', 16, 19, 2, 0, 20, 24, 0, 10, 5, 1, 15, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (3, N'SC1APCR2', 17, 21, 0, 1, 21, 26, 0, 10, 5, 1, 15, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (4, N'LT1AP', 21, 25, 2, 0, 24, 30, 0, 10, 1, 2, 20, 1, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (5, N'LT1APCR', 24, 29, 2, 0, 28, 34, 0, 9, 5, 2, 20, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (6, N'LT1APDS', 26, 32, 0, 1, 30, 37, 0, 9, 2, 2, 20, 1, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (7, N'SPG1HE', 30, 36, 3, 0, 34, 42, 1, 15, 3, 5, 84, 1, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (8, N'SPG1APHE', 34, 42, 3, 0, 39, 48, 1, 14, 6, 5, 84, 1, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (9, N'SPG1HEAT', 37, 45, 0, 1, 43, 52, 0, 14, 4, 5, 84, 1, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (10, N'SC2AP', 23, 28, 2, 0, 23, 29, 0, 10, 1, 1, 15, 2, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (11, N'SC2APCR', 26, 32, 2, 0, 27, 33, 0, 10, 5, 1, 15, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (12, N'SC2APCR2', 28, 34, 0, 1, 29, 36, 0, 10, 5, 1, 15, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (13, N'LT2AP', 25, 31, 3, 0, 41, 50, 0, 10, 1, 2, 20, 2, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (14, N'LT2APCR', 29, 35, 3, 0, 47, 57, 0, 9, 5, 2, 20, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (15, N'LT2APDS', 32, 39, 0, 1, 51, 62, 0, 9, 2, 2, 20, 2, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (16, N'SPG2HE', 35, 43, 4, 0, 50, 61, 1, 15, 3, 5, 84, 2, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (17, N'SPG2APHE', 40, 49, 5, 0, 57, 70, 1, 14, 6, 5, 84, 2, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (18, N'SPG2HEAT', 44, 54, 0, 1, 62, 76, 0, 14, 4, 5, 84, 2, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (19, N'SC3AP', 27, 33, 3, 0, 45, 55, 0, 10, 1, 1, 20, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (20, N'SC3APCR', 31, 38, 4, 0, 52, 63, 0, 9, 5, 1, 20, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (21, N'SC3APCR2', 34, 41, 0, 1, 56, 69, 0, 9, 5, 1, 20, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (22, N'LT3AP', 36, 44, 4, 0, 59, 73, 0, 10, 1, 2, 37, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (23, N'LT3APCR', 41, 51, 4, 0, 68, 83, 0, 9, 5, 2, 37, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (24, N'LT3APDS', 45, 55, 0, 1, 74, 91, 0, 9, 2, 2, 37, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (25, N'SPG3HE', 41, 50, 7, 0, 88, 108, 1, 10, 3, 5, 76, 3, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (26, N'SPG3APHE', 47, 57, 8, 0, 101, 124, 1, 10, 6, 5, 76, 3, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (27, N'SPG3HEAT', 51, 62, 0, 1, 110, 135, 0, 10, 4, 5, 76, 3, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (28, N'TD3AP', 41, 50, 8, 0, 112, 136, 0, 10, 1, 6, 76, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (29, N'TD3APCR', 47, 57, 9, 0, 128, 157, 0, 10, 5, 6, 76, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (30, N'TD3APDS', 51, 62, 0, 1, 140, 171, 0, 10, 2, 6, 76, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (31, N'MT3AP', 43, 53, 7, 0, 105, 129, 0, 10, 1, 3, 37, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (32, N'MT3APCR', 50, 61, 7, 0, 121, 148, 0, 9, 5, 3, 37, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (33, N'MT3APDS', 54, 66, 0, 1, 132, 161, 0, 9, 2, 3, 37, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (34, N'SC4AP', 32, 39, 5, 0, 63, 77, 0, 10, 1, 1, 37, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (35, N'SC4APCR', 36, 44, 6, 0, 72, 89, 0, 9, 5, 1, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (36, N'SC4APCR2', 39, 48, 0, 1, 79, 96, 0, 9, 5, 1, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (37, N'LT4AP', 41, 50, 5, 0, 82, 100, 0, 10, 1, 2, 37, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (38, N'LT4APCR', 47, 57, 6, 0, 94, 115, 0, 9, 5, 2, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (39, N'LT4APDS', 51, 62, 0, 1, 102, 125, 0, 9, 2, 2, 37, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (40, N'SPG4HE', 46, 56, 11, 0, 122, 149, 1, 11, 3, 5, 88, 4, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (41, N'SPG4APHE', 53, 65, 12, 0, 140, 171, 1, 11, 6, 5, 88, 4, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (42, N'SPG4HEAT', 57, 70, 0, 2, 152, 186, 0, 11, 4, 5, 88, 4, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (43, N'TD4AP', 50, 61, 11, 0, 155, 189, 0, 10, 1, 6, 57, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (44, N'TD4APCR', 57, 70, 13, 0, 178, 218, 0, 9, 5, 6, 57, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (45, N'TD4APDS', 62, 76, 0, 2, 194, 237, 0, 9, 2, 6, 57, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (46, N'MT4AP', 50, 62, 10, 0, 140, 171, 0, 10, 1, 3, 75, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (47, N'MT4APCR', 58, 71, 11, 0, 160, 196, 0, 9, 5, 3, 75, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (48, N'MT4APDS', 63, 77, 0, 2, 174, 213, 0, 9, 4, 3, 75, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (49, N'SC5AP', 36, 44, 7, 0, 79, 97, 0, 10, 1, 1, 40, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (50, N'SC5APCR', 41, 51, 8, 0, 91, 111, 0, 9, 5, 1, 40, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (51, N'SC5APCR2', 45, 55, 0, 1, 99, 121, 0, 9, 5, 1, 40, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (52, N'LT5AP', 45, 55, 9, 0, 122, 149, 0, 10, 1, 2, 47, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (53, N'LT5APCR', 52, 63, 10, 0, 140, 171, 0, 9, 5, 2, 47, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (54, N'LT5APDS', 56, 69, 0, 2, 152, 186, 0, 9, 2, 2, 47, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (55, N'SPG5HE', 51, 63, 16, 0, 171, 209, 1, 11, 3, 5, 105, 5, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (56, N'SPG5APHE', 59, 72, 18, 0, 197, 240, 1, 11, 6, 5, 105, 5, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (57, N'SPG5HEAT', 64, 78, 0, 2, 214, 261, 0, 11, 4, 5, 105, 5, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (58, N'TD5AP', 59, 72, 17, 0, 216, 264, 0, 10, 1, 6, 76, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (59, N'TD5APCR', 67, 82, 19, 0, 248, 304, 0, 10, 5, 6, 76, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (60, N'TD5APDS', 73, 89, 0, 3, 270, 330, 0, 10, 2, 6, 76, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (61, N'MT5AP', 58, 70, 15, 0, 196, 240, 0, 9, 1, 3, 75, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (62, N'MT5APCR', 66, 81, 17, 0, 226, 276, 0, 9, 5, 3, 75, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (63, N'MT5APDS', 72, 88, 0, 2, 245, 300, 0, 9, 2, 3, 75, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (64, N'SC6AP', 41, 50, 10, 0, 108, 132, 0, 10, 1, 1, 50, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (65, N'SC6APCR', 47, 57, 11, 0, 124, 152, 0, 9, 5, 1, 50, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (66, N'SC6APCR2', 51, 62, 0, 2, 135, 165, 0, 9, 5, 1, 50, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (67, N'LT6AP', 50, 61, 12, 0, 166, 202, 0, 10, 1, 2, 47, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (68, N'LT6APCR', 57, 70, 14, 0, 190, 233, 0, 9, 5, 2, 47, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (69, N'LT6APDS', 62, 76, 0, 2, 207, 253, 0, 9, 2, 2, 47, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (70, N'SPG6HE', 57, 69, 23, 0, 234, 286, 1, 11, 3, 5, 105, 6, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (71, N'SPG6APHE', 65, 80, 27, 0, 269, 329, 1, 11, 6, 5, 105, 6, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (72, N'SPG6HEAT', 71, 87, 0, 3, 293, 358, 0, 11, 4, 5, 105, 6, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (73, N'TD6AP', 68, 83, 25, 0, 297, 363, 0, 10, 1, 6, 76, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (74, N'TD6APCR', 78, 95, 28, 0, 342, 417, 0, 10, 5, 6, 76, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (75, N'TD6APDS', 84, 103, 0, 4, 371, 454, 0, 10, 2, 6, 76, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (76, N'MT6AP', 65, 79, 22, 0, 270, 330, 0, 9, 1, 3, 75, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (77, N'MT6APCR', 75, 91, 26, 0, 311, 380, 0, 9, 5, 3, 75, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (78, N'MT6APDS', 81, 99, 0, 3, 338, 413, 0, 9, 2, 3, 75, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (79, N'HT6AP', 60, 74, 36, 0, 297, 363, 0, 10, 1, 4, 75, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (80, N'HT6APCR', 69, 85, 42, 0, 342, 417, 0, 10, 5, 4, 75, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (81, N'HT6APDS', 75, 92, 0, 5, 371, 454, 0, 10, 2, 4, 75, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (82, N'SC7AP', 45, 55, 14, 0, 144, 176, 0, 10, 1, 1, 50, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (83, N'SC7APCR', 52, 63, 16, 0, 166, 202, 0, 9, 5, 1, 50, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (84, N'SC7APCR2', 56, 69, 0, 2, 180, 220, 0, 9, 5, 1, 50, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (85, N'LT7AP', 54, 66, 20, 0, 252, 308, 0, 10, 1, 2, 47, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (86, N'LT7APCR', 62, 76, 23, 0, 290, 354, 0, 9, 5, 2, 47, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (87, N'LT7APDS', 68, 83, 0, 3, 315, 385, 0, 9, 2, 2, 47, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (88, N'SPG7HE', 62, 76, 41, 0, 387, 473, 1, 11, 3, 5, 105, 7, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (89, N'SPG7APHE', 71, 87, 48, 0, 445, 544, 1, 11, 6, 5, 105, 7, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (90, N'SPG7HEAT', 78, 95, 0, 6, 484, 591, 0, 11, 4, 5, 105, 7, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (91, N'TD7AP', 77, 94, 41, 0, 466, 570, 0, 10, 1, 6, 76, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (92, N'TD7APCR', 88, 108, 48, 0, 536, 655, 0, 10, 5, 6, 76, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (93, N'TD7APDS', 96, 117, 0, 6, 583, 712, 0, 10, 2, 6, 76, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (94, N'MT7AP', 72, 88, 37, 0, 419, 512, 0, 9, 1, 3, 75, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (95, N'MT7APCR', 83, 101, 43, 0, 481, 588, 0, 9, 5, 3, 75, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (96, N'MT7APDS', 90, 110, 0, 5, 523, 639, 0, 9, 2, 3, 75, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (97, N'HT7AP', 68, 84, 54, 0, 405, 495, 0, 10, 1, 4, 75, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (98, N'HT7APCR', 79, 96, 62, 0, 466, 569, 0, 10, 5, 4, 75, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (99, N'HT7APDS', 86, 105, 0, 7, 506, 619, 0, 10, 2, 4, 75, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (100, N'SC8AP', 50, 61, 21, 0, 198, 242, 0, 10, 1, 1, 50, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (101, N'SC8APCR', 57, 70, 24, 0, 228, 278, 0, 9, 5, 1, 50, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (102, N'SC8APCR2', 62, 76, 0, 3, 248, 303, 0, 9, 5, 1, 50, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (103, N'LT8AP', 59, 72, 31, 0, 347, 424, 0, 10, 1, 2, 47, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (104, N'LT8APCR', 67, 82, 35, 0, 398, 487, 0, 9, 5, 2, 47, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (105, N'LT8APDS', 73, 89, 0, 4, 433, 529, 0, 9, 2, 2, 47, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (106, N'SPG8HE', 68, 83, 77, 0, 666, 814, 1, 11, 3, 5, 105, 8, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (107, N'SPG8APHE', 78, 95, 89, 0, 766, 936, 1, 11, 6, 5, 105, 8, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (108, N'SPG8HEAT', 84, 103, 0, 10, 833, 1018, 0, 11, 4, 5, 105, 8, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (109, N'TD8AP', 86, 105, 69, 0, 756, 924, 0, 10, 1, 6, 76, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (110, N'TD8APCR', 98, 120, 79, 0, 869, 1063, 0, 10, 5, 6, 76, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (111, N'TD8APDS', 107, 131, 0, 9, 945, 1155, 0, 10, 2, 6, 76, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (112, N'MT8AP', 79, 97, 50, 0, 576, 704, 0, 9, 1, 3, 75, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (113, N'MT8APCR', 91, 111, 57, 0, 662, 810, 0, 9, 5, 3, 75, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (114, N'MT8APDS', 99, 121, 0, 7, 720, 880, 0, 9, 2, 3, 75, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (115, N'HT8AP', 81, 99, 97, 0, 675, 825, 0, 10, 1, 4, 75, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (116, N'HT8APCR', 93, 114, 111, 0, 776, 949, 0, 10, 5, 4, 75, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (117, N'HT8APDS', 101, 124, 0, 13, 844, 1031, 0, 10, 2, 4, 75, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (119, N'300AP', 400, 400, 0, 0, 135, 135, 0, 100, 1, 5, 300, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (120, N'SC9AP', 54, 66, 21, 0, 270, 330, 0, 10, 1, 1, 50, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (121, N'SC9APCR', 62, 76, 24, 0, 311, 380, 0, 9, 5, 1, 50, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (122, N'SC9APCR2', 116, 142, 0, 3, 1229, 1502, 0, 9, 5, 1, 50, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (123, N'LT9AP', 63, 77, 31, 0, 450, 550, 0, 10, 1, 2, 47, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (124, N'LT9APCR', 72, 89, 35, 0, 518, 633, 0, 9, 5, 2, 47, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (125, N'LT9APDS', 79, 96, 0, 4, 563, 688, 0, 9, 2, 2, 47, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (126, N'SPG9HE', 73, 89, 77, 0, 900, 1100, 1, 11, 3, 5, 150, 9, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (127, N'SPG9APHE', 84, 102, 89, 0, 1035, 1265, 1, 11, 6, 5, 150, 9, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (128, N'SPG9HEAT', 91, 111, 0, 10, 1125, 1375, 0, 11, 4, 5, 150, 9, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (129, N'TD9AP', 95, 116, 69, 0, 990, 1210, 0, 10, 1, 6, 76, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (130, N'TD9APCR', 109, 133, 79, 0, 1139, 1392, 0, 10, 5, 6, 76, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (131, N'TD9APDS', 118, 144, 0, 9, 1238, 1513, 0, 10, 2, 6, 76, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (132, N'MT9AP', 86, 106, 50, 0, 765, 935, 0, 9, 1, 3, 75, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (133, N'MT9APCR', 99, 121, 57, 0, 880, 1075, 0, 9, 5, 3, 75, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (134, N'MT9APDS', 108, 132, 0, 7, 956, 1169, 0, 9, 2, 3, 75, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (135, N'HT9AP', 89, 109, 97, 0, 900, 1100, 0, 10, 1, 4, 85, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (136, N'HT9APCR', 102, 125, 111, 0, 1035, 1265, 0, 10, 5, 4, 85, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (137, N'HT9APDS', 111, 136, 0, 13, 1125, 1375, 0, 10, 2, 4, 85, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (138, N'LT10AP', 68, 83, 31, 0, 630, 770, 0, 10, 1, 2, 47, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (139, N'LT10APCR', 78, 95, 35, 0, 725, 886, 0, 9, 5, 2, 47, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (140, N'LT10APDS', 84, 103, 0, 4, 788, 963, 0, 9, 2, 2, 47, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (141, N'SPG10HE', 78, 96, 77, 0, 1260, 1540, 1, 11, 3, 5, 150, 10, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (142, N'SPG10APHE', 90, 110, 89, 0, 1449, 1771, 1, 11, 6, 5, 150, 10, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (143, N'SPG10HEAT', 98, 120, 0, 10, 1575, 1925, 0, 11, 4, 5, 150, 10, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (144, N'TD10AP', 104, 127, 69, 0, 1260, 1540, 0, 10, 1, 6, 88, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (145, N'TD10APCR', 119, 145, 79, 0, 1449, 1771, 0, 10, 5, 6, 88, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (146, N'TD10APDS', 129, 158, 0, 9, 1575, 1925, 0, 10, 2, 6, 88, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (147, N'MT10AP', 94, 114, 56, 0, 1035, 1265, 0, 9, 1, 3, 88, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (148, N'MT10APCR', 108, 132, 64, 0, 1190, 1455, 0, 9, 5, 3, 88, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (149, N'MT10APDS', 117, 143, 0, 7, 1294, 1581, 0, 9, 2, 3, 88, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (150, N'HT10AP', 97, 119, 97, 0, 1125, 1375, 0, 10, 1, 4, 125, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (151, N'HT10APCR', 112, 137, 111, 0, 1294, 1581, 0, 10, 5, 4, 125, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (152, N'HT10APDS', 122, 149, 0, 13, 1406, 1719, 0, 10, 2, 4, 125, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (595, N'200HE', 1, 1, 0, 0, 150, 200, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (596, N'210HE', 1, 1, 0, 0, 300, 400, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (597, N'220HE', 1, 1, 0, 0, 600, 800, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (598, N'230HE', 70, 70, 0, 0, 1200, 1600, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (600, N'40he01', 25, 27, 0, 0, 25, 30, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (601, N'40he02', 30, 30, 0, 0, 30, 35, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (602, N'40he03', 35, 35, 0, 0, 35, 40, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (603, N'40he04', 40, 48, 0, 0, 45, 50, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (604, N'40he05', 48, 55, 0, 0, 55, 60, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (605, N'40he06', 55, 63, 0, 0, 60, 70, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (606, N'40he07', 70, 80, 0, 0, 70, 80, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (607, N'40he08', 80, 90, 0, 0, 80, 90, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (608, N'40he09', 95, 100, 0, 0, 100, 120, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (609, N'40he10', 100, 110, 0, 0, 110, 130, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (610, N'40he11', 120, 130, 0, 0, 125, 140, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (611, N'40he12', 130, 140, 0, 0, 135, 150, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (620, N'15mm01', 20, 20, 0, 0, 15, 20, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (621, N'15mm02', 22, 24, 0, 0, 19, 25, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (622, N'15mm03', 24, 28, 0, 0, 23, 30, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (623, N'15mm04', 28, 32, 0, 0, 27, 35, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (624, N'15mm05', 34, 38, 0, 0, 31, 40, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (625, N'15mm06', 40, 44, 0, 0, 35, 45, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (626, N'15mm07', 46, 52, 0, 0, 39, 50, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (627, N'15mm08', 54, 60, 0, 0, 43, 55, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (628, N'15mm09', 62, 68, 0, 0, 47, 60, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (629, N'15mm10', 70, 76, 0, 0, 51, 65, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (630, N'15mm11', 78, 84, 0, 0, 55, 70, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (631, N'15mm12', 86, 92, 0, 0, 59, 75, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (640, N'mine_a_01', 1, 1, 0, 0, 250, 300, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (641, N'mine_a_02', 1, 1, 0, 0, 325, 390, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (642, N'mine_a_03', 1, 1, 0, 0, 422, 507, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (643, N'mine_a_04', 1, 1, 0, 0, 550, 660, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (644, N'mine_a_05', 1, 1, 0, 0, 715, 856, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (645, N'mine_a_06', 1, 1, 0, 0, 930, 1114, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (646, N'mine_a_07', 1, 1, 0, 0, 1100, 1300, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (647, N'mine_a_08', 1, 1, 0, 0, 1300, 1600, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (648, N'mine_a_09', 1, 1, 0, 0, 1600, 1900, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (649, N'mine_a_10', 1, 1, 0, 0, 1900, 2200, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (650, N'mine_a_11', 1, 1, 0, 0, 2200, 2300, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (651, N'mine_a_12', 1, 1, 0, 0, 2300, 2500, 2, 100, 3, 5, 80, 0, N'HE')
GO
SET IDENTITY_INSERT [dbo].[ShellShops] OFF
GO
SET IDENTITY_INSERT [dbo].[Upgrades] ON 

GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (1, 1, 1, 0, 2, 2, 2, 12, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (2, 1, 1, 1, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (3, 1, 1, 2, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (4, 2, 1, 0, 2, 2, 2, 12, 0, 7, 1, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (5, 2, 1, 1, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (6, 2, 1, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (7, 5, 1, 0, 2, 2, 2, 12, 0, 3, 1, 1, 1, 1, 1, 0.35, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (8, 5, 1, 1, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (9, 5, 1, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 3, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (10, 1, 2, 0, 2, 2, 2, 15, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (11, 1, 2, 1, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (12, 1, 2, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (13, 2, 2, 0, 3, 3, 3, 15, 0, 7, 1, 1, 1, 1, 1, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (14, 2, 2, 1, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (15, 2, 2, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (16, 3, 2, 0, 3, 3, 3, 30, 1, 2, 1, 1, 1, 1, 0.4, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (17, 3, 2, 1, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (18, 3, 2, 2, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 4, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (19, 5, 2, 0, 2, 2, 2, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (20, 5, 2, 1, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (21, 5, 2, 2, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (22, 6, 2, 0, 3, 3, 3, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (23, 6, 2, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (24, 6, 2, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (25, 1, 3, 0, 3, 3, 3, 18, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (26, 1, 3, 1, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (27, 1, 3, 2, 0, 0, 0, 3, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (28, 2, 3, 0, 4, 4, 4, 18, 0.3, 7, 1, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (29, 2, 3, 1, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (30, 2, 3, 2, 0, 0, 0, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (31, 3, 3, 0, 4, 4, 3, 18, 1, 4, 1, 1, 1, 1, 0.4, 1, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (32, 3, 3, 1, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (33, 3, 3, 2, 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 4, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (34, 5, 3, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 7)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (35, 5, 3, 1, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (36, 5, 3, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (37, 6, 3, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (38, 6, 3, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (39, 6, 3, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (40, 1, 4, 0, 3, 3, 3, 20, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (41, 1, 4, 1, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (42, 1, 4, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (43, 2, 4, 0, 4, 4, 4, 25, 0.25, 6, 1, 1, 1, 1, 1, 1, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (44, 2, 4, 1, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (45, 2, 4, 2, 0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (46, 3, 4, 0, 4, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (47, 3, 4, 1, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (48, 3, 4, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (49, 4, 4, 0, 3, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (50, 4, 4, 1, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (51, 4, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (52, 5, 4, 0, 3, 3, 3, 20, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (53, 5, 4, 1, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (54, 5, 4, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (55, 6, 4, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 6)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (56, 6, 4, 1, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (57, 6, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (58, 1, 5, 0, 3, 3, 3, 30, 1, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (59, 1, 5, 1, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (60, 1, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (61, 2, 5, 0, 4, 4, 4, 40, 1, 6, 1, 1, 1, 1, 0.4, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (62, 2, 5, 1, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (63, 2, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (64, 3, 5, 0, 3, 4, 4, 18, 1, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (65, 3, 5, 1, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (66, 3, 5, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (67, 4, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (68, 4, 5, 1, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (69, 4, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (70, 5, 5, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (71, 5, 5, 1, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (72, 5, 5, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (73, 6, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (74, 6, 5, 1, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (75, 6, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (76, 1, 6, 0, 3, 3, 3, 35, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (77, 1, 6, 1, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (78, 1, 6, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (79, 2, 6, 0, 4, 4, 4, 18, 0.2, 6, 1, 1, 1, 1, 1, 1, 2, 15)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (80, 2, 6, 1, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (81, 2, 6, 2, 0, 0, 0, 0, 4, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (82, 3, 6, 0, 3, 4, 4, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (83, 3, 6, 1, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (84, 3, 6, 2, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (85, 4, 6, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (86, 4, 6, 1, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (87, 4, 6, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (88, 5, 6, 0, 3, 3, 3, 35, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 12)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (89, 5, 6, 1, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (90, 5, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (91, 6, 6, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (92, 6, 6, 1, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (93, 6, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (94, 1, 7, 0, 3, 3, 3, 40, 0.25, 6, 0.7, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (95, 1, 7, 1, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (96, 1, 7, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (97, 2, 7, 0, 4, 4, 4, 50, 0.07, 6, 1, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (98, 2, 7, 1, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (99, 2, 7, 2, 0, 0, 0, 5, 0, 5, 5, 0, 0, 0, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (100, 3, 7, 0, 3, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (101, 3, 7, 1, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (102, 3, 7, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (103, 4, 7, 0, 3, 4, 3, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (104, 4, 7, 1, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (105, 4, 7, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (106, 5, 7, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (107, 5, 7, 1, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (108, 5, 7, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (109, 6, 7, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 2, 18)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (110, 6, 7, 1, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (111, 6, 7, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (112, 1, 8, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (113, 1, 8, 1, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (114, 1, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (115, 2, 8, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (116, 2, 8, 1, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (117, 2, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (118, 3, 8, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (119, 3, 8, 1, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (120, 3, 8, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (121, 4, 8, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (122, 4, 8, 1, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (123, 4, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (124, 5, 8, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (125, 5, 8, 1, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (126, 5, 8, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (127, 6, 8, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (128, 6, 8, 1, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (129, 6, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (130, 1, 9, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (131, 1, 9, 1, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (132, 1, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (133, 2, 9, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (134, 2, 9, 1, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (135, 2, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (136, 3, 9, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (137, 3, 9, 1, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (138, 3, 9, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (139, 4, 9, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (140, 4, 9, 1, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (141, 4, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (142, 5, 9, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (143, 5, 9, 1, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (144, 5, 9, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (145, 6, 9, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (146, 6, 9, 1, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (147, 6, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (148, 2, 10, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (149, 2, 10, 1, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (150, 2, 10, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (151, 3, 10, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (152, 3, 10, 1, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (153, 3, 10, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (154, 4, 10, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (155, 4, 10, 1, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (156, 4, 10, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (157, 5, 10, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (158, 5, 10, 1, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (159, 5, 10, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (160, 6, 10, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (161, 6, 10, 1, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (162, 6, 10, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[Upgrades] OFF
GO
