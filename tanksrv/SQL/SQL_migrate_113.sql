USE [tankwars_test]
GO

EXEC sp_RENAME 'dbo.Battles.sector' , 'league', 'COLUMN'

ALTER TABLE [dbo].[UserBattles] ADD [attackBonus] float NULL
GO
UPDATE [dbo].[UserBattles] SET [attackBonus] = 0
GO
ALTER TABLE [dbo].[UserBattles] ALTER COLUMN [attackBonus] float NOT NULL
GO

ALTER TABLE [dbo].[UserBattles] ADD [defenseBonus] float NULL
GO
UPDATE [dbo].[UserBattles] SET [defenseBonus] = 0
GO
ALTER TABLE [dbo].[UserBattles] ALTER COLUMN [defenseBonus] float NOT NULL
GO

ALTER TABLE [dbo].[UserBattles] ADD [rating] int NULL
GO
UPDATE [dbo].[UserBattles] SET [rating] = 500
GO
ALTER TABLE [dbo].[UserBattles] ALTER COLUMN [rating] int NOT NULL
GO      

ALTER TABLE [dbo].[UserBattles] ADD [place0] int NULL
GO
UPDATE [dbo].[UserBattles] SET [place0] = [place]
GO
ALTER TABLE [dbo].[UserBattles] ALTER COLUMN [place0] int NOT NULL
GO            
   

/****** Object:  Table [dbo].[UserBattleLogs]    Script Date: 02.12.2016 19:21:17 ******/
DROP TABLE [dbo].[UserBattleLogs]
GO
/****** Object:  Table [dbo].[UserBattleLogs]    Script Date: 02.12.2016 19:21:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserBattleLogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[enemyid] [int] NOT NULL,
	[enemylvl] [int] NOT NULL,
	[enemyname] [varchar](50) NULL,
	[enemyclan] [varchar](50) NULL,
	[enemysqpower] [int] NOT NULL,
	[enemysquad] [varchar](50) NULL,
	[type] [int] NOT NULL,
	[timestamp] [bigint] NOT NULL,
	[win] [bit] NOT NULL,
	[logtype] [int] NOT NULL,
	[viewed] [bit] NOT NULL,
	[deltaRating] [int] NOT NULL,
	[enemyClanIcon] [varchar](50) NULL,
 CONSTRAINT [PK_UserBattleLogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


DELETE FROM [dbo].[Campaigns]
GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 300, 0, 5, 100, 0, -1, 0, 0, 0, N'', 2, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 200, 0, 4, 50, 0, 7, 1, 42, 56, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 205, 0, 4, 100, 0, 7, 1, 316, 108, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 210, 0, 4, 150, 0, 7, 15, 21, 108, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 215, 0, 4, 200, 0, 7, 1, 43, 128, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 400, 0, 5, 200, 0, -1, 0, 0, 0, N'', 3, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 220, 0, 4, 400, 0, 7, 15, 22, 169, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 225, 0, 4, 440, 0, 7, 1, 44, 169, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 230, 0, 4, 480, 0, 7, 15, 21, 237, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 235, 0, 4, 520, 0, 7, 15, 22, 237, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 240, 0, 4, 560, 0, 7, 12, 23, 237, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 2, 6, N'c02_m06', 0, 1, 5, 0, 245, 0, 4, 600, 0, 7, 1, 45, 237, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 0, N'c03', 0, 1, 5, 0, 500, 0, 5, 300, 0, -1, 0, 0, 0, N'', 4, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 1, N'c03_m01', 0, 1, 5, 0, 230, 0, 4, 700, 0, 7, 10, 79, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 2, N'c03_m02', 0, 1, 5, 0, 235, 0, 4, 730, 0, 7, 15, 21, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 3, N'c03_m03', 0, 1, 5, 0, 240, 0, 4, 760, 0, 7, 15, 22, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 3, 4, N'c03_m04', 0, 1, 5, 0, 245, 0, 4, 790, 0, 7, 12, 23, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 3, 5, N'c03_m05', 0, 1, 5, 0, 250, 0, 4, 820, 0, 7, 15, 21, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 3, 6, N'c03_m06', 0, 1, 5, 0, 255, 0, 4, 850, 0, 7, 15, 22, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 3, 7, N'c03_m07', 0, 1, 5, 0, 260, 0, 4, 880, 0, 7, 12, 23, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 3, 8, N'c03_m08', 0, 1, 5, 0, 265, 0, 4, 910, 0, 7, 18, 21, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 3, 9, N'c03_m09', 0, 1, 5, 0, 270, 0, 4, 940, 0, 7, 18, 22, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 3, 10, N'c03_m10', 0, 1, 5, 0, 275, 0, 4, 970, 0, 7, 15, 23, 295, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 4, 0, N'c04', 0, 1, 5, 0, 800, 0, 5, 250, 0, 7, 10, 25, 0, N'', 5, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 4, 1, N'c04_m01', 0, 1, 5, 0, 300, 0, 4, 1550, 0, 7, 10, 21, 333, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 4, 2, N'c04_m02', 0, 1, 5, 0, 310, 0, 4, 1600, 0, 7, 1, 12, 333, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 4, 3, N'c04_m03', 0, 1, 5, 0, 320, 0, 4, 1650, 0, 7, 10, 22, 333, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 4, 4, N'c04_m04', 0, 1, 5, 0, 330, 0, 4, 1700, 0, 7, 10, 23, 333, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 4, 5, N'c04_m05', 0, 1, 5, 0, 340, 0, 4, 1750, 0, 7, 10, 21, 333, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 4, 6, N'c04_m06', 0, 1, 5, 0, 350, 0, 4, 1800, 0, 7, 10, 24, 347, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 5, 0, N'c05', 0, 1, 5, 0, 1000, 0, 5, 330, 0, 7, 10, 26, 0, N'', 6, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 5, 1, N'c05_m01', 0, 1, 5, 0, 360, 0, 4, 2050, 0, 7, 10, 23, 347, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 5, 2, N'c05_m02', 0, 1, 5, 0, 370, 0, 4, 2100, 0, 7, 10, 24, 347, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 5, 3, N'c05_m03', 0, 1, 5, 0, 380, 0, 4, 2150, 0, 7, 1, 13, 347, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 5, 4, N'c05_m04', 0, 1, 5, 0, 390, 0, 4, 2200, 0, 7, 10, 21, 369, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 5, 5, N'c05_m05', 0, 1, 5, 0, 400, 0, 4, 2250, 0, 7, 10, 22, 369, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 5, 6, N'c05_m06', 0, 1, 5, 0, 410, 0, 4, 2300, 0, 7, 10, 22, 369, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 6, 0, N'c06', 0, 1, 5, 0, 1200, 0, 5, 430, 0, 7, 10, 27, 0, N'', 7, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 6, 1, N'c06_m01', 0, 1, 5, 0, 420, 0, 4, 2550, 0, 7, 10, 21, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 6, 2, N'c06_m02', 0, 1, 5, 0, 430, 0, 4, 2600, 0, 7, 10, 23, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 6, 3, N'c06_m03', 0, 1, 5, 0, 440, 0, 4, 2650, 0, 7, 1, 13, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 6, 4, N'c06_m04', 0, 1, 5, 0, 450, 0, 4, 2700, 0, 7, 10, 22, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 6, 5, N'c06_m05', 0, 1, 5, 0, 460, 0, 4, 2750, 0, 7, 10, 24, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 6, 6, N'c06_m06', 0, 1, 5, 0, 470, 0, 4, 2800, 0, 7, 10, 23, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 6, 7, N'c06_m07', 0, 1, 5, 0, 480, 0, 4, 2850, 0, 7, 10, 22, 392, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 7, 0, N'c07', 0, 1, 5, 0, 1300, 0, 5, 550, 0, 7, 10, 25, 0, N'', 8, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 7, 1, N'c07_m01', 0, 1, 5, 0, 500, 0, 4, 3050, 0, 7, 7, 21, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 7, 2, N'c07_m02', 0, 1, 5, 0, 520, 0, 4, 3100, 0, 7, 7, 22, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 7, 3, N'c07_m03', 0, 1, 5, 0, 540, 0, 4, 3150, 0, 7, 7, 23, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 7, 4, N'c07_m04', 0, 1, 5, 0, 560, 0, 4, 3200, 0, 7, 7, 24, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 7, 5, N'c07_m05', 0, 1, 5, 0, 580, 0, 4, 3250, 0, -1, 0, 0, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 7, 6, N'c07_m06', 0, 1, 5, 0, 600, 0, 4, 3300, 0, -1, 0, 0, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 7, 7, N'c07_m07', 0, 1, 5, 0, 620, 0, 4, 3350, 0, -1, 0, 0, 450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 8, 0, N'c08', 0, 1, 5, 0, 1500, 0, 5, 700, 0, 7, 10, 26, 0, N'', 9, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 8, 1, N'c08_m01', 0, 1, 5, 0, 600, 0, 4, 3550, 0, 7, 7, 21, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 8, 2, N'c08_m02', 0, 1, 5, 0, 640, 0, 4, 3600, 0, 7, 7, 22, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 8, 3, N'c08_m03', 0, 1, 5, 0, 660, 0, 4, 3650, 0, 7, 7, 23, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 8, 4, N'c08_m04', 0, 1, 5, 0, 680, 0, 4, 3700, 0, 7, 7, 24, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 8, 5, N'c08_m05', 0, 1, 5, 0, 700, 0, 4, 3750, 0, -1, 0, 0, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 8, 6, N'c08_m06', 0, 1, 5, 0, 720, 0, 4, 3800, 0, -1, 0, 0, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 8, 7, N'c08_m07', 0, 1, 5, 0, 740, 0, 4, 3850, 0, -1, 0, 0, 505, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 9, 0, N'c09', 0, 1, 5, 0, 1800, 0, 5, 870, 0, 7, 10, 27, 0, N'', 10, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 9, 1, N'c09_m01', 0, 1, 5, 0, 750, 0, 4, 4050, 0, 7, 7, 21, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 9, 2, N'c09_m02', 0, 1, 5, 0, 770, 0, 4, 4100, 0, 7, 7, 22, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 9, 3, N'c09_m03', 0, 1, 5, 0, 790, 0, 4, 4150, 0, 7, 7, 23, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 9, 4, N'c09_m04', 0, 1, 5, 0, 810, 0, 4, 4200, 0, 7, 7, 24, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 9, 5, N'c09_m05', 0, 1, 5, 0, 830, 0, 4, 4250, 0, -1, 0, 0, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 9, 6, N'c09_m06', 0, 1, 5, 0, 850, 0, 4, 4300, 0, -1, 0, 0, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 9, 7, N'c09_m07', 0, 1, 5, 0, 870, 0, 4, 4350, 0, -1, 0, 0, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 9, 8, N'c09_m08', 0, 1, 5, 0, 890, 0, 4, 4400, 0, -1, 0, 0, 578, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4550, 0, 7, 1, 3, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4600, 0, 7, 1, 3, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4650, 0, 7, 1, 15, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4700, 0, -1, 0, 0, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4750, 0, -1, 0, 0, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 4800, 0, 7, 2, 27, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5050, 0, 7, 1, 3, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5100, 0, 7, 1, 3, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5150, 0, 7, 1, 15, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5200, 0, -1, 0, 0, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5250, 0, -1, 0, 0, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 5300, 0, 7, 2, 28, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5550, 0, 7, 1, 3, 600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5600, 0, 7, 1, 3, 700, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5650, 0, 7, 1, 15, 700, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5700, 0, -1, 0, 0, 700, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5750, 0, -1, 0, 0, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 5800, 0, 7, 1, 28, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6050, 0, 7, 1, 3, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6100, 0, 7, 1, 3, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6150, 0, 7, 1, 16, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6200, 0, -1, 0, 0, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6250, 0, -1, 0, 0, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 6300, 0, 7, 2, 25, 800, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6100, 0, 7, 1, 3, 900, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6150, 0, 7, 1, 3, 1000, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6200, 0, 7, 1, 16, 1000, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6250, 0, -1, 0, 0, 1100, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (104, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6300, 0, -1, 0, 0, 1200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (105, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 6350, 0, 7, 1, 28, 1200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (106, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (107, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 6200, 0, 7, 1, 3, 1200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (108, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 6250, 0, 7, 1, 3, 1200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (109, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 6300, 0, 7, 1, 16, 1200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (110, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 6350, 0, -1, 0, 0, 1300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (111, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 6400, 0, -1, 0, 0, 1300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (112, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 6450, 0, 7, 2, 26, 1400, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (113, 16, 0, N'c16', 0, 1, 5, 0, 4800, 0, 5, 2750, 0, -1, 0, 0, 0, N'', 17, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (114, 16, 1, N'c16_m01', 0, 1, 5, 0, 2200, 0, 4, 6350, 0, 7, 0, 0, 1850, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (115, 16, 2, N'c16_m02', 0, 1, 5, 0, 2350, 0, 4, 6400, 0, 7, 0, 0, 1850, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (116, 16, 3, N'c16_m03', 0, 1, 5, 0, 2500, 0, 4, 6450, 0, 7, 0, 0, 1850, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (117, 16, 4, N'c16_m04', 0, 1, 5, 0, 2650, 0, 4, 6500, 0, 7, 0, 0, 2000, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (118, 16, 5, N'c16_m05', 0, 1, 5, 0, 2800, 0, 4, 6550, 0, 7, 0, 0, 2000, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (119, 16, 6, N'c16_m06', 0, 1, 5, 0, 2950, 0, 4, 6600, 0, 7, 0, 0, 2000, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (120, 16, 7, N'c16_m07', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 2100, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (121, 16, 8, N'c16_m08', 0, 1, 5, 0, 3250, 0, 4, 6700, 0, 7, 1, 28, 2100, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (122, 17, 0, N'c17', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 18, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (123, 17, 1, N'c17_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 2100, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (124, 17, 2, N'c17_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 2200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (125, 17, 3, N'c17_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 2200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (126, 17, 4, N'c17_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 2200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (127, 17, 5, N'c17_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 2300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (128, 17, 6, N'c17_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 2300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (129, 17, 7, N'c17_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 2300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (130, 17, 8, N'c17_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 2400, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (131, 18, 0, N'c18', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 19, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (132, 18, 1, N'c18_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 2200, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (133, 18, 2, N'c18_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 2250, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (134, 18, 3, N'c18_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 2300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (135, 18, 4, N'c18_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 2350, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (136, 18, 5, N'c18_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 2400, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (137, 18, 6, N'c18_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 2450, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (138, 18, 7, N'c18_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 2500, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (139, 18, 8, N'c18_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 2550, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (140, 18, 9, N'c18_m09', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 2600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (141, 18, 10, N'c18_m10', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 2700, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (142, 19, 0, N'c19', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 20, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (143, 19, 1, N'c19_m01', 0, 1, 5, 0, 3800, 0, 4, 7000, 0, 7, 0, 0, 3100, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (144, 19, 2, N'c19_m02', 0, 1, 5, 0, 3900, 0, 4, 7000, 0, 7, 0, 0, 3150, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (145, 19, 3, N'c19_m03', 0, 1, 5, 0, 4000, 0, 4, 7000, 0, 7, 0, 0, 3250, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (146, 19, 4, N'c19_m04', 0, 1, 5, 0, 4100, 0, 4, 7000, 0, 7, 0, 0, 3300, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (147, 19, 5, N'c19_m05', 0, 1, 5, 0, 4200, 0, 4, 7100, 0, 7, 0, 0, 3350, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (148, 19, 6, N'c19_m06', 0, 1, 5, 0, 4300, 0, 4, 7100, 0, 7, 0, 0, 3400, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (149, 19, 7, N'c19_m07', 0, 1, 5, 0, 4400, 0, 4, 7100, 0, 7, 0, 0, 3500, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (150, 19, 8, N'c19_m08', 0, 1, 5, 0, 4500, 0, 4, 7100, 0, 7, 0, 0, 3600, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (151, 19, 9, N'c19_m09', 0, 1, 5, 0, 5000, 0, 4, 7100, 0, 7, 0, 0, 3700, N'', 0, 1)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (152, 19, 10, N'c19_m10', 0, 1, 5, 0, 6000, 0, 4, 7100, 0, 7, 10, 28, 3800, N'', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
GO
