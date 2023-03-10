USE [tankwars_test]
GO
DELETE FROM [dbo].[Zones]
GO
DELETE FROM [dbo].[ShellShops]
GO
DELETE FROM [dbo].[Defines]
GO
DELETE FROM [dbo].[DefaultUnits]
GO
DELETE FROM [dbo].[Campaigns]
GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 300, 0, 5, 100, 0, -1, 0, 0, 0, N'', 2, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 200, 0, 4, 50, 0, 7, 1, 42, 56, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 205, 0, 4, 100, 0, 7, 1, 316, 108, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 210, 0, 4, 150, 0, 7, 15, 21, 108, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 215, 0, 4, 200, 0, 7, 1, 43, 128, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 400, 0, 5, 200, 0, -1, 0, 0, 0, N'', 3, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 220, 0, 4, 400, 0, 7, 15, 22, 169, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 225, 0, 4, 440, 0, 7, 1, 44, 169, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 230, 0, 4, 480, 0, 7, 15, 21, 237, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 235, 0, 4, 520, 0, 7, 15, 22, 237, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 240, 0, 4, 560, 0, 7, 12, 23, 237, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 2, 6, N'c02_m06', 0, 1, 5, 0, 245, 0, 4, 600, 0, 7, 1, 45, 237, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 0, N'c03', 0, 1, 5, 0, 500, 0, 5, 300, 0, -1, 0, 0, 0, N'', 4, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 1, N'c03_m01', 0, 1, 5, 0, 230, 0, 4, 700, 0, 7, 10, 79, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 2, N'c03_m02', 0, 1, 5, 0, 235, 0, 4, 730, 0, 7, 15, 21, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 3, N'c03_m03', 0, 1, 5, 0, 240, 0, 4, 760, 0, 7, 15, 22, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 3, 4, N'c03_m04', 0, 1, 5, 0, 245, 0, 4, 790, 0, 7, 12, 23, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 3, 5, N'c03_m05', 0, 1, 5, 0, 250, 0, 4, 820, 0, 7, 15, 21, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 3, 6, N'c03_m06', 0, 1, 5, 0, 255, 0, 4, 850, 0, 7, 15, 22, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 3, 7, N'c03_m07', 0, 1, 5, 0, 260, 0, 4, 880, 0, 7, 12, 23, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 3, 8, N'c03_m08', 0, 1, 5, 0, 265, 0, 4, 910, 0, 7, 18, 21, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 3, 9, N'c03_m09', 0, 1, 5, 0, 270, 0, 4, 940, 0, 7, 18, 22, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 3, 10, N'c03_m10', 0, 1, 5, 0, 275, 0, 4, 970, 0, 7, 15, 23, 295, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 4, 0, N'c04', 0, 1, 5, 0, 800, 0, 5, 250, 0, 7, 10, 25, 0, N'', 5, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 4, 1, N'c04_m01', 0, 1, 5, 0, 300, 0, 4, 1550, 0, 7, 10, 21, 333, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 4, 2, N'c04_m02', 0, 1, 5, 0, 310, 0, 4, 1600, 0, 7, 1, 12, 333, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 4, 3, N'c04_m03', 0, 1, 5, 0, 320, 0, 4, 1650, 0, 7, 10, 22, 333, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 4, 4, N'c04_m04', 0, 1, 5, 0, 330, 0, 4, 1700, 0, 7, 10, 23, 333, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 4, 5, N'c04_m05', 0, 1, 5, 0, 340, 0, 4, 1750, 0, 7, 10, 21, 333, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 4, 6, N'c04_m06', 0, 1, 5, 0, 350, 0, 4, 1800, 0, 7, 10, 24, 347, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 5, 0, N'c05', 0, 1, 5, 0, 1000, 0, 5, 330, 0, 7, 10, 26, 0, N'', 6, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 5, 1, N'c05_m01', 0, 1, 5, 0, 360, 0, 4, 2050, 0, 7, 10, 23, 347, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 5, 2, N'c05_m02', 0, 1, 5, 0, 370, 0, 4, 2100, 0, 7, 10, 24, 347, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 5, 3, N'c05_m03', 0, 1, 5, 0, 380, 0, 4, 2150, 0, 7, 1, 13, 347, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 5, 4, N'c05_m04', 0, 1, 5, 0, 390, 0, 4, 2200, 0, 7, 10, 21, 369, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 5, 5, N'c05_m05', 0, 1, 5, 0, 400, 0, 4, 2250, 0, 7, 10, 22, 369, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 5, 6, N'c05_m06', 0, 1, 5, 0, 410, 0, 4, 2300, 0, 7, 10, 22, 369, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 6, 0, N'c06', 0, 1, 5, 0, 1200, 0, 5, 430, 0, 7, 10, 27, 0, N'', 7, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 6, 1, N'c06_m01', 0, 1, 5, 0, 420, 0, 4, 2550, 0, 7, 10, 21, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 6, 2, N'c06_m02', 0, 1, 5, 0, 430, 0, 4, 2600, 0, 7, 10, 23, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 6, 3, N'c06_m03', 0, 1, 5, 0, 440, 0, 4, 2650, 0, 7, 1, 13, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 6, 4, N'c06_m04', 0, 1, 5, 0, 450, 0, 4, 2700, 0, 7, 10, 22, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 6, 5, N'c06_m05', 0, 1, 5, 0, 460, 0, 4, 2750, 0, 7, 10, 24, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 6, 6, N'c06_m06', 0, 1, 5, 0, 470, 0, 4, 2800, 0, 7, 10, 23, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 6, 7, N'c06_m07', 0, 1, 5, 0, 480, 0, 4, 2850, 0, 7, 10, 22, 392, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 7, 0, N'c07', 0, 1, 5, 0, 1300, 0, 5, 550, 0, 7, 10, 25, 0, N'', 8, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 7, 1, N'c07_m01', 0, 1, 5, 0, 500, 0, 4, 3050, 0, 7, 7, 21, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 7, 2, N'c07_m02', 0, 1, 5, 0, 520, 0, 4, 3100, 0, 7, 7, 22, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 7, 3, N'c07_m03', 0, 1, 5, 0, 540, 0, 4, 3150, 0, 7, 7, 23, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 7, 4, N'c07_m04', 0, 1, 5, 0, 560, 0, 4, 3200, 0, 7, 7, 24, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 7, 5, N'c07_m05', 0, 1, 5, 0, 580, 0, 4, 3250, 0, -1, 0, 0, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 7, 6, N'c07_m06', 0, 1, 5, 0, 600, 0, 4, 3300, 0, -1, 0, 0, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 7, 7, N'c07_m07', 0, 1, 5, 0, 620, 0, 4, 3350, 0, -1, 0, 0, 450, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 8, 0, N'c08', 0, 1, 5, 0, 1500, 0, 5, 700, 0, 7, 10, 26, 0, N'', 9, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 8, 1, N'c08_m01', 0, 1, 5, 0, 600, 0, 4, 3550, 0, 7, 7, 21, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 8, 2, N'c08_m02', 0, 1, 5, 0, 640, 0, 4, 3600, 0, 7, 7, 22, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 8, 3, N'c08_m03', 0, 1, 5, 0, 660, 0, 4, 3650, 0, 7, 7, 23, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 8, 4, N'c08_m04', 0, 1, 5, 0, 680, 0, 4, 3700, 0, 7, 7, 24, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 8, 5, N'c08_m05', 0, 1, 5, 0, 700, 0, 4, 3750, 0, -1, 0, 0, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 8, 6, N'c08_m06', 0, 1, 5, 0, 720, 0, 4, 3800, 0, -1, 0, 0, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 8, 7, N'c08_m07', 0, 1, 5, 0, 740, 0, 4, 3850, 0, -1, 0, 0, 505, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 9, 0, N'c09', 0, 1, 5, 0, 1800, 0, 5, 870, 0, 7, 10, 27, 0, N'', 10, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 9, 1, N'c09_m01', 0, 1, 5, 0, 750, 0, 4, 4050, 0, 7, 7, 21, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 9, 2, N'c09_m02', 0, 1, 5, 0, 770, 0, 4, 4100, 0, 7, 7, 22, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 9, 3, N'c09_m03', 0, 1, 5, 0, 790, 0, 4, 4150, 0, 7, 7, 23, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 9, 4, N'c09_m04', 0, 1, 5, 0, 810, 0, 4, 4200, 0, 7, 7, 24, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 9, 5, N'c09_m05', 0, 1, 5, 0, 830, 0, 4, 4250, 0, -1, 0, 0, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 9, 6, N'c09_m06', 0, 1, 5, 0, 850, 0, 4, 4300, 0, -1, 0, 0, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 9, 7, N'c09_m07', 0, 1, 5, 0, 870, 0, 4, 4350, 0, -1, 0, 0, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 9, 8, N'c09_m08', 0, 1, 5, 0, 890, 0, 4, 4400, 0, -1, 0, 0, 578, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4550, 0, 7, 1, 3, 797, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4600, 0, 7, 1, 3, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4650, 0, 7, 1, 15, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4700, 0, -1, 0, 0, 911, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4750, 0, -1, 0, 0, 940, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 4800, 0, 7, 2, 27, 976, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5050, 0, 7, 1, 3, 976, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5100, 0, 7, 1, 3, 1041, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5150, 0, 7, 1, 15, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5200, 0, -1, 0, 0, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5250, 0, -1, 0, 0, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 5300, 0, 7, 2, 28, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5550, 0, 7, 1, 3, 1188, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5600, 0, 7, 1, 3, 1260, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5650, 0, 7, 1, 15, 1353, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5700, 0, -1, 0, 0, 1459, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5750, 0, -1, 0, 0, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 5800, 0, 7, 1, 28, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6050, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6100, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6150, 0, 7, 1, 16, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6200, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6250, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 6300, 0, 7, 2, 25, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6100, 0, 7, 1, 3, 1718, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6150, 0, 7, 1, 3, 1964, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6200, 0, 7, 1, 16, 2093, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6250, 0, -1, 0, 0, 2240, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (104, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6300, 0, -1, 0, 0, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (105, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 6350, 0, 7, 1, 28, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (106, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (107, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 6200, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (108, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 6250, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (109, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 6300, 0, 7, 1, 16, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (110, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 6350, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (111, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 6400, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (112, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 6450, 0, 7, 2, 26, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (113, 16, 0, N'c16', 0, 1, 5, 0, 4800, 0, 5, 2750, 0, -1, 0, 0, 0, N'', 17, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (114, 16, 1, N'c16_m01', 0, 1, 5, 0, 2200, 0, 4, 6350, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (115, 16, 2, N'c16_m02', 0, 1, 5, 0, 2350, 0, 4, 6400, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (116, 16, 3, N'c16_m03', 0, 1, 5, 0, 2500, 0, 4, 6450, 0, 7, 0, 0, 3317, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (117, 16, 4, N'c16_m04', 0, 1, 5, 0, 2650, 0, 4, 6500, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (118, 16, 5, N'c16_m05', 0, 1, 5, 0, 2800, 0, 4, 6550, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (119, 16, 6, N'c16_m06', 0, 1, 5, 0, 2950, 0, 4, 6600, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (120, 16, 7, N'c16_m07', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (121, 16, 8, N'c16_m08', 0, 1, 5, 0, 3250, 0, 4, 6700, 0, 7, 1, 28, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (122, 17, 0, N'c17', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 18, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (123, 17, 1, N'c17_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 3975, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (124, 17, 2, N'c17_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (125, 17, 3, N'c17_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (126, 17, 4, N'c17_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (127, 17, 5, N'c17_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (128, 17, 6, N'c17_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (129, 17, 7, N'c17_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (130, 17, 8, N'c17_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (131, 18, 0, N'c18', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 19, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (132, 18, 1, N'c18_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (133, 18, 2, N'c18_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (134, 18, 3, N'c18_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (135, 18, 4, N'c18_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (136, 18, 5, N'c18_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (137, 18, 6, N'c18_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (138, 18, 7, N'c18_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (139, 18, 8, N'c18_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (140, 18, 9, N'c18_m09', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (141, 18, 10, N'c18_m10', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 7000, N'', 0, 22)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (1, N'JeepWillys', 3, 8, 500, 90, 4, 5, 4, 5, 5, 16, 87, 160, 3, 2.36, 12, 10, 10, 13, 16, 1, 14, 0, 500, 1, 1, 0, 4, 1, 1, 13, 2, 125)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (2, N'M3Lee', 3, 30, 178, 60, 2, 4, 1, 6, 1, 11, 265, 551, 2.2, 27, 45, 35, 40, 16, 22, 3, 37, 0, 1750, 1, 1, 6, 2, 3, 7, 52, 5, 1000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (21, N'BT7', 1, 20, 60, 72, 4, 5, 4, 7, 5, 11, 206, 389, 2, 8, 32, 30, 31, 11, 21, 2, 45, 0, 1750, 1, 1, 3, 4, 3, 6, 20, 3, 750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (22, N'BT7M', 1, 11, 60, 72, 3, 5, 4, 7, 5, 11, 227, 432, 1.5, 8, 32, 18, 31, 12, 21, 2, 45, 12000, 0, 1, 1, 3, 4, 2, 3, 4, 3, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (23, N'SU5', 1, 17, 40, 32, 2, 6, 1, 5, 1, 10, 168, 223, 1.5, 10.5, 18, 12, 15, 14, 23, 5, 76, 0, 1000, 1, 1, 10, 2, 2, 4, 10, 4, 500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (24, N'Matilda', 4, 68, 80, 60, 2, 4, 1, 6, 1, 11, 519, 1080, 1.5, 10.5, 60, 40, 53, 16, 22, 3, 75, 0, 3500, 1, 1, 6, 2, 5, 6, 100, 5, 3667)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (44, N'M5Stuart', 3, 24, 90, 72, 2, 5, 4, 7, 5, 11, 288, 545, 2, 11, 40, 30, 35, 12, 21, 2, 37, 0, 2500, 1, 1, 3, 4, 4, 5, 26, 4, 1900)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (45, N'Sexton', 4, 30, 112, 45, 2, 8, 1, 9, 1, 9, 230, 302, 1.33, 11, 22, 14, 18, 20, 25, 5, 88, 21000, 0, 1, 1, 11, 0, 4, 0, 0, 5, 840)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (46, N'Sexton2', 4, 38, 112, 45, 2, 8, 1, 8, 1, 9, 263, 347, 1.33, 11, 25, 17, 21, 20, 26, 5, 88, 21000, 0, 1, 1, 11, 1, 4, 3, 0, 5, 840)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (47, N'Wespe', 2, 46, 40, 44, 2, 7, 1, 9, 1, 10, 323, 423, 1.33, 11, 29, 19, 24, 19, 27, 5, 105, 40000, 0, 1, 1, 11, 0, 5, 0, 0, 5, 1600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (48, N'Wespe2', 2, 57, 40, 44, 2, 7, 1, 8, 1, 10, 369, 486, 1.33, 11, 32, 22, 27, 19, 28, 5, 105, 45000, 0, 1, 1, 11, 1, 5, 3, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (49, N'AlectoMk1', 4, 76, 45, 36, 2, 4, 1, 6, 1, 10, 412, 812, 1.33, 12, 60, 26, 43, 15, 23, 6, 57, 0, 2500, 1, 1, 8, 2, 4, 0, 48, 6, 2333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (50, N'AlectoMk2', 4, 27, 45, 32, 2, 4, 1, 9, 1, 10, 412, 567, 1.33, 12, 60, 26, 43, 16, 23, 6, 57, 0, 1750, 1, 1, 8, 4, 3, 0, 28, 6, 2333)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (81, N'M6', 3, 134, 60, 48, 2, 4, 1, 8, 1, 11, 968, 1820, 1.1, 57, 84, 56, 70, 15, 22, 4, 76, 0, 4500, 1, 1, 6, 2, 6, 9, 80, 6, 5833)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (87, N'SU85_1', 1, 160, 40, 30, 2, 4, 1, 7, 1, 10, 1129, 2228, 1.33, 13, 90, 38, 64, 16, 25, 6, 85, 0, 5750, 1, 1, 8, 2, 7, 10, 132, 6, 10000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (103, N'IS1', 1, 400, 60, 48, 2, 4, 1, 9, 1, 11, 1897, 3567, 1.1, 50, 110, 70, 90, 16, 22, 4, 76, 0, 7000, 1, 1, 6, 2, 8, 10, 161, 6, 15000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (109, N'Conqueror', 4, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2656, 4637, 1.2, 42, 130, 70, 100, 15, 22, 4, 90, 0, 8500, 1, 1, 6, 2, 9, 5, 150, 6, 25000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (116, N'ISU_152', 1, 350, 30, 24, 1, 4, 1, 7, 1, 10, 2214, 4066, 1.33, 13, 109, 47, 78, 16, 23, 6, 76, 0, 8500, 1, 1, 8, 2, 9, 4, 100, 6, 22500)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (124, N'IS4', 1, 400, 60, 48, 2, 4, 1, 10, 1, 11, 3719, 6492, 1.2, 60, 140, 90, 100, 16, 22, 4, 125, 0, 10000, 1, 1, 6, 2, 10, 5, 200, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (125, N'M41_1', 3, 100, 100, 72, 3, 5, 5, 12, 5, 11, 1488, 2831, 2, 15, 70, 50, 60, 11, 21, 2, 75, 550000, 0, 1, 1, 3, 0, 10, 0, 0, 6, 18333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (126, N'M41_2', 3, 100, 100, 72, 3, 5, 5, 8, 5, 11, 1711, 3255, 2, 15, 70, 55, 63, 12, 21, 2, 75, 600000, 0, 1, 1, 3, 1, 10, 3, 20, 6, 20000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (127, N'Maus', 1, 400, 60, 20, 1, 4, 1, 12, 1, 11, 4500, 7000, 1, 120, 180, 100, 120, 16, 22, 4, 128, 999999, 0, 1, 1, 6, 4, 10, 0, 0, 6, 20000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (200, N'JeepWillys', 3, 7, 200, 90, 4, 5, 5, 5, 5, 15, 53, 100, 2.7, 2, 9, 7, 8, 13, 16, 1, 14, 1000, 0, 1, 1, 0, 0, 1, 4, 7, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (201, N'BA64', 1, 7, 200, 90, 4, 3, 4, 5, 5, 12, 52, 100, 2.7, 2, 9, 7, 8, 13, 15, 1, 15, 1000, 0, 1, 1, 0, 0, 1, 4, 3, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (202, N'Sdkfz251', 2, 7, 400, 90, 4, 2, 3, 3, 5, 12, 50, 100, 2.5, 2, 9, 7, 8, 11, 15, 1, 20, 1000, 0, 1, 1, 0, 0, 1, 0, 0, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (203, N'T2US', 3, 9, 250, 72, 4, 5, 5, 5, 5, 11, 58, 115, 2, 9, 15, 15, 15, 11, 21, 2, 20, 1600, 0, 1, 1, 3, 0, 1, 0, 0, 2, 240)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (204, N'T26', 1, 9, 250, 72, 4, 5, 5, 5, 5, 11, 60, 115, 2.1, 9, 16, 16, 16, 11, 21, 2, 20, 1600, 0, 1, 1, 3, 0, 1, 0, 0, 2, 240)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (205, N'BirchGun', 3, 10, 150, 32, 2, 6, 1, 7, 1, 9, 63, 115, 1.5, 12, 7, 5, 6, 10, 16, 5, 84, 2000, 0, 1, 1, 10, 0, 1, 0, 0, 2, 260)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (206, N'T26_1939', 1, 10, 250, 72, 4, 5, 4, 7, 5, 11, 70, 115, 2.1, 9, 16, 16, 16, 11, 21, 2, 20, 0, 500, 1, 1, 3, 2, 1, 0, 0, 2, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (207, N'T2E1', 3, 10, 250, 72, 4, 5, 4, 7, 5, 11, 67, 132, 2.1, 9, 18, 18, 16, 12, 21, 2, 20, 0, 500, 1, 1, 3, 2, 1, 0, 0, 2, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (208, N'Scoutcar', 3, 9, 52, 90, 4, 2, 4, 7, 5, 14, 68, 130, 3, 5, 13, 11, 12, 14, 16, 1, 14, 2500, 0, 1, 1, 0, 0, 2, 0, 0, 3, 300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (209, N'Sdkfz222', 2, 9, 180, 90, 4, 3, 4, 5, 5, 12, 65, 130, 2.7, 5, 12, 10, 11, 13, 15, 1, 20, 2500, 0, 1, 1, 0, 0, 2, 0, 0, 3, 300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (210, N'M2', 3, 11, 200, 72, 4, 5, 4, 9, 5, 10, 75, 150, 2.1, 12, 21, 21, 21, 11, 20, 2, 37, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (211, N'BT2', 1, 11, 90, 72, 4, 5, 5, 5, 5, 10, 78, 150, 2.1, 8, 21, 21, 21, 11, 20, 2, 37, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (212, N'PZ2', 2, 11, 140, 72, 4, 5, 4, 9, 5, 11, 75, 150, 2.1, 9, 21, 21, 21, 11, 21, 2, 20, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (213, N'M8Scott', 3, 14, 46, 36, 1, 5, 1, 7, 1, 10, 82, 150, 1.5, 16, 14, 10, 12, 19, 25, 5, 75, 4000, 0, 1, 1, 10, 0, 2, 0, 0, 3, 390)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (214, N'SU5', 1, 14, 40, 32, 2, 6, 1, 7, 1, 10, 82, 150, 1.5, 11, 14, 10, 12, 14, 23, 5, 76, 4000, 0, 1, 1, 10, 0, 2, 0, 0, 3, 390)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (215, N'SU5_1', 1, 14, 40, 32, 2, 6, 1, 6, 1, 10, 94, 172, 1.5, 11, 18, 12, 15, 14, 23, 5, 76, 0, 1000, 1, 1, 10, 2, 2, 0, 0, 3, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (216, N'BA3', 1, 14, 80, 90, 4, 3, 5, 8, 5, 12, 88, 169, 2.9, 2, 18, 14, 16, 13, 15, 1, 45, 4000, 0, 1, 1, 0, 0, 3, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (217, N'Sdkfz231', 2, 14, 180, 90, 4, 3, 5, 8, 5, 14, 85, 169, 2.9, 5, 18, 14, 16, 14, 16, 1, 20, 4000, 0, 1, 1, 0, 0, 3, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (218, N'M2A4', 3, 17, 90, 72, 4, 5, 4, 9, 5, 10, 98, 194, 2, 12, 35, 25, 25, 11, 20, 2, 37, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (219, N'BT5', 1, 17, 90, 72, 4, 5, 4, 9, 5, 11, 101, 194, 2, 8, 32, 24, 25, 11, 21, 2, 45, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (220, N'PZ2C', 2, 17, 140, 72, 4, 5, 4, 9, 5, 11, 98, 194, 2, 9, 24, 24, 25, 12, 21, 2, 20, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (221, N'PZ3', 2, 24, 125, 60, 2, 4, 5, 13, 5, 10, 127, 254, 1.5, 20, 40, 20, 35, 14, 20, 3, 37, 8500, 0, 1, 1, 6, 0, 3, 0, 0, 4, 900)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (222, N'SU26', 1, 20, 46, 36, 2, 5, 1, 9, 1, 10, 106, 194, 1.5, 16, 18, 12, 15, 19, 25, 5, 37, 6000, 0, 1, 1, 10, 0, 3, 0, 0, 4, 780)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (223, N'AlectoMk1', 3, 27, 45, 36, 1, 4, 1, 6, 1, 10, 154, 254, 1.8, 13, 39, 17, 28, 15, 23, 6, 57, 12500, 0, 1, 1, 8, 0, 3, 0, 0, 4, 1080)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (224, N'M3Lee', 3, 25, 178, 60, 2, 4, 1, 6, 1, 11, 149, 340, 1.5, 27, 46, 34, 35, 16, 22, 3, 37, 0, 1750, 1, 1, 6, 2, 3, 0, 0, 4, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (225, N'M8GHound', 3, 21, 80, 90, 4, 3, 5, 8, 5, 12, 114, 220, 2.9, 2, 22, 18, 20, 13, 15, 1, 37, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (226, N'BA6', 1, 21, 80, 90, 4, 3, 5, 8, 5, 13, 114, 220, 2.9, 2, 22, 18, 20, 13, 15, 1, 45, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (227, N'Sdkfz233', 2, 21, 180, 90, 4, 3, 5, 5, 5, 15, 110, 220, 2.9, 5, 22, 18, 20, 14, 16, 1, 20, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (228, N'M3Stuart', 3, 30, 60, 72, 4, 5, 5, 5, 5, 11, 127, 253, 2, 8, 35, 27, 30, 12, 21, 2, 45, 9000, 0, 1, 1, 3, 0, 4, 0, 0, 5, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (229, N'BT7', 1, 30, 60, 72, 4, 5, 5, 5, 5, 11, 132, 253, 2, 12, 32, 30, 30, 12, 21, 2, 45, 9000, 0, 1, 1, 3, 0, 4, 0, 0, 5, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (230, N'M3A1', 3, 36, 178, 60, 2, 4, 1, 8, 1, 11, 165, 340, 1.5, 27, 46, 34, 35, 16, 22, 3, 37, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (231, N'T28A', 1, 36, 80, 60, 2, 4, 1, 7, 1, 10, 165, 330, 1.5, 28, 44, 36, 40, 14, 20, 3, 76, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (232, N'PZ3D', 2, 36, 125, 60, 2, 4, 7, 7, 5, 10, 165, 330, 1.5, 20, 35, 35, 40, 15, 21, 3, 37, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (233, N'Sexton', 3, 32, 112, 36, 1, 8, 1, 9, 1, 9, 138, 253, 1.5, 11, 22, 14, 18, 19, 24, 5, 88, 10000, 0, 1, 1, 11, 0, 4, 0, 0, 5, 1300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (234, N'AT1', 1, 41, 40, 40, 1, 4, 1, 7, 1, 10, 200, 330, 1.9, 6, 49, 21, 35, 15, 23, 6, 76, 18000, 0, 1, 1, 8, 0, 4, 0, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (235, N'PZjag', 2, 41, 86, 40, 1, 4, 1, 7, 1, 10, 200, 330, 1.9, 6, 49, 21, 35, 16, 25, 6, 47, 18000, 0, 1, 1, 8, 0, 4, 0, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (236, N'Matilda', 3, 36, 80, 60, 2, 4, 1, 8, 1, 11, 190, 379, 1.2, 28, 60, 46, 50, 16, 22, 3, 75, 0, 2500, 1, 1, 6, 2, 4, 0, 0, 5, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (237, N'M3GMC', 3, 30, 80, 90, 4, 3, 5, 5, 5, 13, 149, 286, 2.7, 2, 26, 22, 24, 13, 15, 1, 45, 10500, 0, 1, 1, 0, 0, 5, 0, 0, 6, 2500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (238, N'Puma1', 2, 30, 80, 90, 4, 3, 5, 5, 5, 12, 143, 286, 2.7, 5, 26, 22, 24, 13, 15, 1, 50, 10500, 0, 1, 1, 0, 0, 5, 0, 0, 6, 2500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (239, N'M5Stuart', 3, 36, 90, 72, 4, 5, 5, 8, 5, 11, 166, 328, 2, 12, 40, 30, 35, 12, 21, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (240, N'A20', 1, 36, 100, 72, 4, 5, 5, 8, 5, 10, 171, 328, 2, 8, 35, 35, 35, 10, 20, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (241, N'PZ38tA', 2, 36, 100, 72, 4, 5, 5, 8, 5, 10, 171, 328, 2, 8, 35, 35, 35, 10, 20, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (242, N'Matilda2', 3, 55, 80, 60, 2, 4, 1, 7, 1, 11, 214, 379, 1.2, 28, 60, 46, 50, 16, 22, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (243, N'A32', 1, 55, 80, 60, 2, 4, 1, 7, 1, 10, 214, 428, 1.2, 25, 45, 45, 45, 15, 21, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (244, N'PZ4', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 214, 428, 1.2, 25, 45, 45, 45, 15, 21, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (245, N'Wespe', 2, 46, 40, 44, 1, 7, 1, 9, 1, 10, 180, 328, 1.3, 11, 29, 19, 24, 19, 28, 5, 105, 16000, 0, 1, 1, 11, 0, 5, 0, 0, 6, 3250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (246, N'T82', 3, 61, 40, 36, 1, 4, 1, 7, 1, 10, 260, 428, 1.3, 13, 59, 25, 42, 16, 25, 6, 57, 30000, 0, 1, 1, 8, 0, 5, 0, 0, 6, 4500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (247, N'SU76', 1, 61, 40, 24, 1, 4, 1, 7, 1, 10, 260, 428, 1.3, 13, 59, 25, 42, 17, 25, 6, 76, 30000, 0, 1, 1, 8, 0, 5, 0, 0, 6, 4500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (248, N'Marder1', 2, 61, 40, 36, 1, 4, 1, 8, 1, 10, 300, 500, 1.3, 13, 63, 27, 45, 16, 25, 6, 57, 0, 3500, 1, 1, 8, 2, 5, 0, 0, 6, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (249, N'Daimler', 3, 46, 180, 90, 4, 2, 4, 10, 5, 14, 193, 371, 2.7, 5, 31, 25, 28, 14, 16, 1, 40, 17000, 0, 1, 1, 0, 0, 6, 0, 0, 6, 5000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (250, N'Puma2', 2, 46, 80, 90, 4, 3, 4, 10, 5, 13, 186, 371, 2.7, 5, 31, 25, 28, 13, 15, 1, 50, 17000, 0, 1, 1, 0, 0, 6, 0, 0, 6, 5000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (251, N'Valentine2', 3, 80, 140, 72, 3, 5, 5, 8, 5, 11, 215, 427, 2, 12, 40, 40, 40, 11, 21, 2, 40, 23500, 0, 1, 1, 3, 0, 6, 0, 0, 6, 6000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (252, N'T50_1', 1, 80, 100, 72, 3, 5, 5, 8, 5, 10, 223, 427, 2, 14, 45, 45, 40, 10, 20, 2, 45, 23500, 0, 1, 1, 3, 0, 6, 0, 0, 6, 6000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (253, N'M7', 3, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (254, N'T34_1', 1, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (255, N'PZ4H', 2, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (256, N'KV1S', 1, 135, 60, 48, 2, 4, 1, 9, 1, 10, 386, 743, 1, 30, 72, 48, 60, 14, 20, 4, 75, 75000, 0, 1, 1, 6, 0, 6, 0, 0, 6, 10500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (257, N'M7Priest', 3, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 11, 0, 6, 0, 0, 6, 6500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (258, N'Bison1', 2, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 11, 0, 6, 0, 0, 6, 6500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (259, N'Marder2', 2, 115, 40, 30, 1, 4, 1, 7, 1, 10, 338, 557, 1.3, 13, 69, 29, 49, 16, 25, 6, 75, 48500, 0, 1, 1, 8, 0, 6, 0, 0, 6, 9000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (260, N'KV1', 1, 140, 60, 48, 2, 4, 1, 9, 1, 10, 444, 854, 1, 30, 66, 54, 60, 14, 20, 4, 75, 0, 4500, 1, 1, 6, 2, 6, 0, 0, 6, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (261, N'CovMK1', 3, 75, 80, 90, 4, 2, 4, 10, 5, 14, 241, 464, 3, 5, 35, 29, 32, 14, 16, 1, 40, 27500, 0, 1, 1, 0, 0, 7, 0, 0, 7, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (262, N'T50_2', 1, 90, 100, 72, 3, 5, 4, 16, 5, 10, 278, 534, 2, 14, 45, 45, 45, 10, 20, 2, 45, 38000, 0, 1, 1, 3, 0, 7, 0, 0, 7, 9000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (263, N'Cromwell', 3, 140, 80, 60, 2, 4, 1, 7, 1, 10, 350, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (264, N'T34_2', 1, 140, 80, 60, 2, 4, 1, 7, 1, 10, 350, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (265, N'PZ4J', 2, 140, 80, 60, 2, 4, 1, 7, 1, 10, 348, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (266, N'M6', 3, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (267, N'KV2', 1, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (268, N'DW2A', 2, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (269, N'Bishop_1', 3, 110, 30, 36, 1, 8, 2, 13, 1, 9, 292, 534, 1.3, 11, 43, 29, 36, 19, 24, 5, 150, 42000, 0, 1, 1, 11, 0, 7, 0, 0, 7, 9750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (270, N'SU85_1', 1, 180, 40, 30, 1, 4, 1, 7, 1, 10, 422, 696, 1.3, 13, 78, 34, 56, 16, 25, 6, 85, 79000, 0, 1, 1, 8, 0, 7, 0, 0, 7, 13500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (271, N'Hetzer', 2, 180, 40, 30, 1, 4, 1, 7, 1, 10, 422, 696, 1.3, 13, 78, 34, 56, 16, 25, 6, 85, 79000, 0, 1, 1, 8, 0, 7, 0, 0, 7, 13500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (272, N'Tiger_P', 2, 350, 60, 48, 2, 4, 1, 9, 1, 10, 555, 1067, 1, 30, 77, 63, 70, 14, 20, 4, 75, 0, 5750, 1, 1, 6, 2, 7, 0, 0, 7, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (273, N'AEC', 3, 90, 80, 90, 4, 3, 5, 5, 5, 12, 300, 580, 2.7, 5, 40, 32, 36, 13, 15, 1, 50, 45000, 0, 1, 1, 0, 0, 8, 0, 0, 7, 10000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (274, N'M24_1', 3, 110, 140, 72, 3, 5, 5, 12, 5, 11, 350, 667, 2, 15, 60, 40, 50, 11, 21, 2, 75, 62000, 0, 1, 1, 3, 0, 8, 0, 0, 7, 12000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (275, N'Sherman1', 3, 160, 80, 60, 2, 4, 1, 7, 1, 11, 435, 870, 1.2, 28, 66, 54, 60, 15, 22, 3, 75, 90000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (276, N'VK3001H', 2, 160, 80, 60, 2, 4, 1, 7, 1, 11, 435, 870, 1.2, 28, 66, 54, 60, 15, 22, 3, 75, 90000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (277, N'Churchill', 3, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (278, N'Tiger1', 2, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (279, N'IS1', 1, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (280, N'Hummel', 2, 135, 30, 36, 1, 8, 2, 13, 1, 9, 365, 667, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 68000, 0, 1, 1, 11, 0, 8, 0, 0, 7, 13000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (281, N'Archer_1', 3, 190, 45, 24, 1, 4, 1, 9, 1, 10, 528, 870, 1.3, 13, 88, 38, 63, 15, 23, 6, 76, 127000, 0, 1, 1, 8, 0, 8, 0, 0, 7, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (282, N'SU100', 1, 190, 45, 24, 1, 4, 1, 9, 1, 10, 528, 870, 1.3, 13, 88, 38, 63, 15, 23, 6, 76, 127000, 0, 1, 1, 8, 0, 8, 0, 0, 7, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (283, N'ISU152', 1, 200, 45, 24, 1, 4, 1, 9, 1, 10, 607, 1001, 1.3, 13, 95, 41, 68, 15, 23, 6, 76, 0, 7000, 1, 1, 8, 2, 8, 0, 0, 7, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (284, N'T21_1', 3, 125, 140, 72, 3, 5, 5, 12, 5, 11, 420, 800, 2, 15, 65, 45, 55, 11, 21, 2, 75, 99000, 0, 1, 1, 3, 0, 9, 0, 0, 8, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (285, N'Pershing1', 3, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (286, N'Panther1', 2, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (287, N'T29', 3, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (288, N'Tiger2', 2, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (289, N'IS2', 1, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (290, N'Grille1', 2, 155, 30, 36, 1, 8, 2, 13, 1, 9, 440, 800, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 110000, 0, 1, 1, 11, 0, 9, 0, 0, 8, 19500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (291, N'M36_1', 3, 210, 45, 24, 1, 4, 1, 9, 1, 10, 634, 1044, 1.3, 13, 98, 42, 70, 15, 23, 6, 76, 205000, 0, 1, 1, 8, 0, 9, 0, 0, 8, 27000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (292, N'SU152', 1, 210, 45, 24, 1, 4, 1, 9, 1, 10, 634, 1044, 1.3, 13, 98, 42, 70, 15, 23, 6, 76, 205000, 0, 1, 1, 8, 0, 9, 0, 0, 8, 27000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (293, N'Conqueror', 3, 455, 60, 48, 2, 4, 1, 11, 1, 11, 833, 1601, 1.1, 53, 100, 80, 95, 15, 22, 4, 85, 0, 8500, 1, 1, 6, 2, 9, 0, 0, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (294, N'M41_1', 3, 145, 100, 72, 3, 5, 5, 12, 5, 11, 500, 960, 2, 15, 70, 50, 60, 11, 21, 2, 75, 160000, 0, 1, 1, 3, 0, 10, 0, 0, 8, 24000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (295, N'Patton', 3, 200, 80, 60, 2, 4, 1, 8, 1, 11, 627, 1253, 1.4, 28, 75, 65, 70, 15, 22, 3, 90, 237000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 30000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (296, N'Conqueror2', 3, 485, 60, 48, 2, 4, 1, 10, 1, 11, 870, 1671, 1.1, 60, 135, 80, 100, 16, 22, 4, 125, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (297, N'Maus', 2, 485, 60, 48, 2, 4, 1, 14, 1, 11, 870, 1671, 1.1, 60, 180, 100, 120, 16, 22, 4, 128, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (298, N'IS3', 1, 485, 60, 48, 2, 4, 1, 10, 1, 11, 870, 1671, 1.1, 60, 140, 80, 95, 16, 22, 4, 125, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (299, N'SU14_1', 1, 175, 30, 36, 1, 8, 2, 13, 1, 9, 526, 960, 1.2, 11, 100, 40, 70, 19, 24, 5, 150, 180000, 0, 1, 1, 11, 0, 10, 0, 0, 8, 26000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (300, N'Tortoise', 3, 240, 45, 24, 1, 4, 1, 9, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 120, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (301, N'Jagdtiger1', 2, 240, 45, 24, 1, 4, 1, 9, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 128, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (302, N'IS4', 1, 500, 60, 48, 2, 4, 1, 9, 1, 11, 999, 2000, 1.2, 60, 140, 90, 110, 16, 22, 4, 125, 0, 10000, 1, 1, 6, 2, 10, 0, 0, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (303, N'T30', 3, 500, 45, 24, 1, 4, 1, 9, 1, 10, 875, 1450, 1.2, 13, 112, 48, 80, 15, 23, 6, 155, 0, 10000, 1, 1, 8, 2, 10, 0, 0, 8, 0)
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventBuildingRepM', N'1,1.05,1.10,1.16,1.23,1.31,1.4,1.5,1.62,1.85,2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventFuelPrice', N'60')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventRewards', N'"[{''points'':2,''rewards'':[{''type'':7,''num'':1,''item'':19}]},{''points'':50,''rewards'':[{''type'':7,''num'':3,''item'':19}]},{''points'':100,''rewards'':[{''type'':7,''num'':10,''item'':79}]},{''points'':200,''rewards'':[{''type'':7,''num'':10,''item'':22},{''type'':7,''num'':10,''item'':23},{''type'':7,''num'':10,''item'':24}]},{''points'':300,''rewards'':[{''type'':7,''num'':15,''item'':21},{''type'':7,''num'':5,''item'':80}]},{''points'':600,''rewards'':[{''type'':7,''num'':1,''item'':3},{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':700}]},{''points'':800,''rewards'':[{''type'':7,''num'':5,''item'':25},{''type'':7,''num'':5,''item'':26},{''type'':7,''num'':5,''item'':27}]},{''points'':1000,''rewards'':[{''type'':7,''num'':1,''item'':81},{''type'':7,''num'':1,''item'':28},{''type'':1,''num'':100}]},{''points'':1250,''rewards'':[{''type'':7,''num'':1,''item'':309},{''type'':7,''num'':7,''item'':80}]},{''points'':1500,''rewards'':[{''type'':7,''num'':7,''item'':25},{''type'':7,''num'':7,''item'':26},{''type'':7,''num'':7,''item'':27}]},{''points'':2000,''rewards'':[{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':702}]},{''points'':2500,''rewards'':[{''type'':7,''num'':50,''item'':79},{''type'':7,''num'':10,''item'':80}]},{''points'':3000,''rewards'':[{''type'':7,''num'':1,''item'':4},{''type'':7,''num'':3,''item'':306}]},{''points'':4000,''rewards'':[{''type'':7,''num'':1,''item'':704}]},{''points'':5000,''rewards'':[{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':2,''item'':28},{''type'':1,''num'':150}]},{''points'':7000,''rewards'':[{''type'':7,''num'':1,''item'':5},{''type'':7,''num'':1,''item'':10}]},{''points'':8500,''rewards'':[{''type'':7,''num'':3,''item'':318},{''type'':7,''num'':2,''item'':704}]},{''points'':10000,''rewards'':[{''type'':7,''num'':4,''item'':81},{''type'':7,''num'':4,''item'':28},{''type'':1,''num'':250}]},{''points'':12500,''rewards'':[{''type'':7,''num'':1,''item'':706}]}]"')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitTank', N'203')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankCost', N'50')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellTankPrice', N'0.25')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1443')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TechTreeLinks', N'"[{''s'':201,''d'':216},{''s'':216,''d'':226},{''s'':204,''d'':211},{''s'':211,''d'':219},{''s'':219,''d'':229},{''s'':229,''d'':231},{''s'':229,''d'':240},{''s'':240,''d'':252},{''s'':252,''d'':262},{''s'':231,''d'':243},{''s'':243,''d'':254},{''s'':254,''d'':264},{''s'':254,''d'':256},{''s'':256,''d'':267},{''s'':267,''d'':279},{''s'':279,''d'':289},{''s'':289,''d'':298},{''s'':214,''d'':222},{''s'':222,''d'':234},{''s'':234,''d'':247},{''s'':247,''d'':270},{''s'':270,''d'':282},{''s'':282,''d'':292},{''s'':292,''d'':299},{''s'':209,''d'':217},{''s'':217,''d'':227},{''s'':227,''d'':238},{''s'':238,''d'':250},{''s'':238,''d'':241},{''s'':212,''d'':220},{''s'':220,''d'':241},{''s'':220,''d'':221},{''s'':221,''d'':232},{''s'':232,''d'':244},{''s'':244,''d'':255},{''s'':255,''d'':265},{''s'':265,''d'':276},{''s'':276,''d'':286},{''s'':265,''d'':268},{''s'':268,''d'':278},{''s'':278,''d'':288},{''s'':288,''d'':297},{''s'':235,''d'':245},{''s'':245,''d'':258},{''s'':245,''d'':259},{''s'':259,''d'':271},{''s'':271,''d'':280},{''s'':280,''d'':290},{''s'':290,''d'':301},{''s'':200,''d'':208},{''s'':208,''d'':225},{''s'':225,''d'':237},{''s'':237,''d'':249},{''s'':249,''d'':261},{''s'':261,''d'':273},{''s'':203,''d'':210},{''s'':210,''d'':218},{''s'':218,''d'':228},{''s'':228,''d'':239},{''s'':239,''d'':251},{''s'':251,''d'':274},{''s'':274,''d'':284},{''s'':284,''d'':294},{''s'':228,''d'':230},{''s'':230,''d'':242},{''s'':242,''d'':253},{''s'':253,''d'':263},{''s'':263,''d'':275},{''s'':275,''d'':285},{''s'':285,''d'':295},{''s'':263,''d'':266},{''s'':266,''d'':277},{''s'':277,''d'':287},{''s'':287,''d'':296},{''s'':205,''d'':213},{''s'':213,''d'':223},{''s'':223,''d'':233},{''s'':233,''d'':246},{''s'':246,''d'':257},{''s'':257,''d'':269},{''s'':269,''d'':281},{''s'':281,''d'':291},{''s'':291,''d'':300},{''s'':273,''d'':274},{''s'':226,''d'':229},{''s'':202,''d'':209}]"')
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
SET IDENTITY_INSERT [dbo].[ShellShops] ON 

GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (1, N'SC1AP', 14, 18, 1, 0, 16, 20, 0, 10, 1, 1, 15, 1, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (2, N'SC1APCR', 17, 20, 2, 0, 18, 22, 0, 10, 5, 1, 15, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (3, N'SC1APCR2', 18, 22, 0, 1, 20, 25, 0, 10, 5, 1, 15, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (4, N'LT1AP', 21, 25, 1, 0, 28, 34, 0, 10, 1, 2, 20, 1, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (5, N'LT1APCR', 24, 29, 2, 0, 31, 38, 0, 9, 5, 2, 20, 1, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (6, N'LT1APDS', 26, 32, 0, 1, 35, 43, 0, 9, 2, 2, 20, 1, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (7, N'SPG1HE', 30, 36, 3, 0, 36, 44, 1, 15, 3, 5, 84, 1, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (8, N'SPG1APHE', 34, 42, 3, 0, 40, 48, 1, 14, 6, 5, 84, 1, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (9, N'SPG1HEAT', 37, 45, 0, 1, 45, 55, 0, 14, 4, 5, 84, 1, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (10, N'SC2AP', 23, 28, 1, 0, 26, 32, 0, 10, 1, 1, 15, 2, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (11, N'SC2APCR', 26, 32, 2, 0, 29, 35, 0, 10, 5, 1, 15, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (12, N'SC2APCR2', 28, 34, 0, 1, 33, 40, 0, 10, 5, 1, 15, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (13, N'LT2AP', 32, 39, 1, 0, 37, 45, 0, 10, 1, 2, 20, 2, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (14, N'LT2APCR', 36, 44, 2, 0, 41, 50, 0, 9, 5, 2, 20, 2, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (15, N'LT2APDS', 39, 48, 0, 1, 46, 56, 0, 9, 2, 2, 20, 2, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (16, N'SPG2HE', 35, 43, 4, 0, 48, 58, 1, 15, 3, 5, 84, 2, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (17, N'SPG2APHE', 40, 49, 5, 0, 52, 64, 1, 14, 6, 5, 84, 2, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (18, N'SPG2HEAT', 44, 54, 0, 1, 60, 73, 0, 14, 4, 5, 84, 2, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (19, N'SC3AP', 27, 33, 3, 0, 41, 51, 0, 10, 1, 1, 20, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (20, N'SC3APCR', 31, 38, 4, 0, 46, 56, 0, 9, 5, 1, 20, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (21, N'SC3APCR2', 34, 41, 0, 1, 52, 63, 0, 9, 5, 1, 20, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (22, N'LT3AP', 36, 44, 4, 0, 47, 57, 0, 10, 1, 2, 37, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (23, N'LT3APCR', 41, 51, 4, 0, 51, 63, 0, 9, 5, 2, 37, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (24, N'LT3APDS', 45, 55, 0, 1, 59, 72, 0, 9, 2, 2, 37, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (25, N'SPG3HE', 41, 50, 7, 0, 90, 110, 1, 10, 3, 5, 76, 3, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (26, N'SPG3APHE', 47, 57, 8, 0, 99, 121, 1, 10, 6, 5, 76, 3, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (27, N'SPG3HEAT', 51, 62, 0, 1, 113, 138, 0, 10, 4, 5, 76, 3, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (28, N'TD3AP', 41, 50, 8, 0, 81, 99, 0, 10, 1, 6, 76, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (29, N'TD3APCR', 47, 57, 9, 0, 89, 109, 0, 10, 5, 6, 76, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (30, N'TD3APDS', 51, 62, 0, 1, 101, 124, 0, 10, 2, 6, 76, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (31, N'MT3AP', 43, 53, 7, 0, 81, 99, 0, 10, 1, 3, 37, 3, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (32, N'MT3APCR', 50, 61, 7, 0, 89, 109, 0, 9, 5, 3, 37, 3, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (33, N'MT3APDS', 54, 66, 0, 1, 101, 124, 0, 9, 2, 3, 37, 3, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (34, N'SC4AP', 32, 39, 5, 0, 54, 66, 0, 10, 1, 1, 37, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (35, N'SC4APCR', 36, 44, 6, 0, 59, 73, 0, 9, 5, 1, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (36, N'SC4APCR2', 39, 48, 0, 1, 68, 83, 0, 9, 5, 1, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (37, N'LT4AP', 41, 50, 5, 0, 60, 74, 0, 10, 1, 2, 37, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (38, N'LT4APCR', 47, 57, 6, 0, 66, 81, 0, 9, 5, 2, 37, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (39, N'LT4APDS', 51, 62, 0, 1, 75, 92, 0, 9, 2, 2, 37, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (40, N'SPG4HE', 46, 56, 11, 0, 122, 149, 1, 11, 3, 5, 88, 4, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (41, N'SPG4APHE', 53, 65, 12, 0, 134, 163, 1, 11, 6, 5, 88, 4, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (42, N'SPG4HEAT', 57, 70, 0, 2, 152, 186, 0, 11, 4, 5, 88, 4, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (43, N'TD4AP', 50, 61, 11, 0, 108, 132, 0, 10, 1, 6, 57, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (44, N'TD4APCR', 57, 70, 13, 0, 119, 145, 0, 9, 5, 6, 57, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (45, N'TD4APDS', 62, 76, 0, 2, 135, 165, 0, 9, 2, 6, 57, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (46, N'MT4AP', 50, 62, 10, 0, 116, 142, 0, 10, 1, 3, 75, 4, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (47, N'MT4APCR', 58, 71, 11, 0, 128, 156, 0, 9, 5, 3, 75, 4, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (48, N'MT4APDS', 63, 77, 0, 2, 145, 177, 0, 9, 4, 3, 75, 4, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (49, N'SC5AP', 36, 44, 7, 0, 63, 77, 0, 10, 1, 1, 40, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (50, N'SC5APCR', 41, 51, 8, 0, 69, 85, 0, 9, 5, 1, 40, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (51, N'SC5APCR2', 45, 55, 0, 1, 79, 96, 0, 9, 5, 1, 40, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (52, N'LT5AP', 45, 55, 9, 0, 83, 101, 0, 10, 1, 2, 47, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (53, N'LT5APCR', 52, 63, 10, 0, 91, 111, 0, 9, 5, 2, 47, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (54, N'LT5APDS', 56, 69, 0, 2, 104, 127, 0, 9, 2, 2, 47, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (55, N'SPG5HE', 51, 63, 16, 0, 158, 193, 1, 11, 3, 5, 105, 5, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (56, N'SPG5APHE', 59, 72, 18, 0, 173, 212, 1, 11, 6, 5, 105, 5, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (57, N'SPG5HEAT', 64, 78, 0, 2, 197, 241, 0, 11, 4, 5, 105, 5, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (58, N'TD5AP', 59, 72, 17, 0, 137, 167, 0, 10, 1, 6, 76, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (59, N'TD5APCR', 67, 82, 19, 0, 150, 184, 0, 10, 5, 6, 76, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (60, N'TD5APDS', 73, 89, 0, 3, 171, 209, 0, 10, 2, 6, 76, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (61, N'MT5AP', 58, 70, 15, 0, 133, 163, 0, 9, 1, 3, 75, 5, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (62, N'MT5APCR', 66, 81, 17, 0, 147, 179, 0, 9, 5, 3, 75, 5, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (63, N'MT5APDS', 72, 88, 0, 2, 167, 204, 0, 9, 2, 3, 75, 5, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (64, N'SC6AP', 41, 50, 10, 0, 80, 98, 0, 10, 1, 1, 50, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (65, N'SC6APCR', 47, 57, 11, 0, 88, 108, 0, 9, 5, 1, 50, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (66, N'SC6APCR2', 51, 62, 0, 2, 100, 122, 0, 9, 5, 1, 50, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (67, N'LT6AP', 50, 61, 12, 0, 104, 127, 0, 10, 1, 2, 47, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (68, N'LT6APCR', 57, 70, 14, 0, 114, 139, 0, 9, 5, 2, 47, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (69, N'LT6APDS', 62, 76, 0, 2, 129, 158, 0, 9, 2, 2, 47, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (70, N'SPG6HE', 57, 69, 23, 0, 207, 253, 1, 11, 3, 5, 105, 6, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (71, N'SPG6APHE', 65, 80, 27, 0, 228, 278, 1, 11, 6, 5, 105, 6, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (72, N'SPG6HEAT', 71, 87, 0, 3, 259, 316, 0, 11, 4, 5, 105, 6, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (73, N'TD6AP', 68, 83, 25, 0, 180, 220, 0, 10, 1, 6, 76, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (74, N'TD6APCR', 78, 95, 28, 0, 198, 242, 0, 10, 5, 6, 76, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (75, N'TD6APDS', 84, 103, 0, 4, 225, 275, 0, 10, 2, 6, 76, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (76, N'MT6AP', 65, 79, 22, 0, 189, 231, 0, 9, 1, 3, 75, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (77, N'MT6APCR', 75, 91, 26, 0, 208, 254, 0, 9, 5, 3, 75, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (78, N'MT6APDS', 81, 99, 0, 3, 236, 289, 0, 9, 2, 3, 75, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (79, N'HT6AP', 60, 74, 36, 0, 180, 220, 0, 10, 1, 4, 75, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (80, N'HT6APCR', 69, 85, 42, 0, 198, 242, 0, 10, 5, 4, 75, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (81, N'HT6APDS', 75, 92, 0, 5, 225, 275, 0, 10, 2, 4, 75, 6, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (82, N'SC7AP', 45, 55, 14, 0, 108, 132, 0, 10, 1, 1, 50, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (83, N'SC7APCR', 52, 63, 16, 0, 119, 145, 0, 9, 5, 1, 50, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (84, N'SC7APCR2', 56, 69, 0, 2, 135, 165, 0, 9, 5, 1, 50, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (85, N'LT7AP', 54, 66, 20, 0, 140, 171, 0, 10, 1, 2, 47, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (86, N'LT7APCR', 62, 76, 23, 0, 153, 188, 0, 9, 5, 2, 47, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (87, N'LT7APDS', 68, 83, 0, 3, 174, 213, 0, 9, 2, 2, 47, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (88, N'SPG7HE', 62, 76, 41, 0, 302, 369, 1, 11, 3, 5, 105, 7, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (89, N'SPG7APHE', 71, 87, 48, 0, 332, 405, 1, 11, 6, 5, 105, 7, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (90, N'SPG7HEAT', 78, 95, 0, 6, 377, 461, 0, 11, 4, 5, 105, 7, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (91, N'TD7AP', 77, 94, 41, 0, 252, 308, 0, 10, 1, 6, 76, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (92, N'TD7APCR', 88, 108, 48, 0, 277, 339, 0, 10, 5, 6, 76, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (93, N'TD7APDS', 96, 117, 0, 6, 315, 385, 0, 10, 2, 6, 76, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (94, N'MT7AP', 72, 88, 37, 0, 230, 281, 0, 9, 1, 3, 75, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (95, N'MT7APCR', 83, 101, 43, 0, 252, 309, 0, 9, 5, 3, 75, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (96, N'MT7APDS', 90, 110, 0, 5, 287, 351, 0, 9, 2, 3, 75, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (97, N'HT7AP', 68, 84, 54, 0, 221, 270, 0, 10, 1, 4, 75, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (98, N'HT7APCR', 79, 96, 62, 0, 243, 296, 0, 10, 5, 4, 75, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (99, N'HT7APDS', 86, 105, 0, 7, 276, 337, 0, 10, 2, 4, 75, 7, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (100, N'SC8AP', 50, 61, 21, 0, 135, 165, 0, 10, 1, 1, 50, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (101, N'SC8APCR', 57, 70, 24, 0, 149, 182, 0, 9, 5, 1, 50, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (102, N'SC8APCR2', 62, 76, 0, 3, 169, 206, 0, 9, 5, 1, 50, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (103, N'LT8AP', 59, 72, 31, 0, 171, 209, 0, 10, 1, 2, 47, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (104, N'LT8APCR', 67, 82, 35, 0, 188, 230, 0, 9, 5, 2, 47, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (105, N'LT8APDS', 73, 89, 0, 4, 214, 261, 0, 9, 2, 2, 47, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (106, N'SPG8HE', 68, 83, 77, 0, 468, 572, 1, 11, 3, 5, 105, 8, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (107, N'SPG8APHE', 78, 95, 89, 0, 515, 629, 1, 11, 6, 5, 105, 8, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (108, N'SPG8HEAT', 84, 103, 0, 10, 585, 715, 0, 11, 4, 5, 105, 8, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (109, N'TD8AP', 86, 105, 69, 0, 351, 429, 0, 10, 1, 6, 76, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (110, N'TD8APCR', 98, 120, 79, 0, 386, 472, 0, 10, 5, 6, 76, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (111, N'TD8APDS', 107, 131, 0, 9, 439, 536, 0, 10, 2, 6, 76, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (112, N'MT8AP', 79, 97, 50, 0, 297, 363, 0, 9, 1, 3, 75, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (113, N'MT8APCR', 91, 111, 57, 0, 327, 399, 0, 9, 5, 3, 75, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (114, N'MT8APDS', 99, 121, 0, 7, 371, 454, 0, 9, 2, 3, 75, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (115, N'HT8AP', 81, 99, 97, 0, 288, 352, 0, 10, 1, 4, 75, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (116, N'HT8APCR', 93, 114, 111, 0, 317, 387, 0, 10, 5, 4, 75, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (117, N'HT8APDS', 101, 124, 0, 13, 360, 440, 0, 10, 2, 4, 75, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (119, N'300AP', 400, 400, 0, 0, 1300, 1300, 0, 100, 1, 5, 300, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (120, N'SC9AP', 63, 77, 21, 0, 207, 253, 0, 10, 1, 1, 50, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (121, N'SC9APCR', 72, 89, 24, 0, 228, 278, 0, 9, 5, 1, 50, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (122, N'SC9APCR2', 116, 142, 0, 3, 396, 484, 0, 9, 5, 1, 50, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (123, N'LT9AP', 63, 77, 31, 0, 207, 253, 0, 10, 1, 2, 47, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (124, N'LT9APCR', 72, 89, 35, 0, 228, 278, 0, 9, 5, 2, 47, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (125, N'LT9APDS', 79, 96, 0, 4, 259, 316, 0, 9, 2, 2, 47, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (126, N'SPG9HE', 73, 89, 77, 0, 558, 682, 1, 11, 3, 5, 150, 9, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (127, N'SPG9APHE', 84, 102, 89, 0, 614, 750, 1, 11, 6, 5, 150, 9, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (128, N'SPG9HEAT', 91, 111, 0, 10, 698, 853, 0, 11, 4, 5, 150, 9, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (129, N'TD9AP', 95, 116, 69, 0, 396, 484, 0, 10, 1, 6, 76, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (130, N'TD9APCR', 109, 133, 79, 0, 436, 532, 0, 10, 5, 6, 76, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (131, N'TD9APDS', 118, 144, 0, 9, 495, 605, 0, 10, 2, 6, 76, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (132, N'MT9AP', 86, 106, 50, 0, 353, 431, 0, 9, 1, 3, 75, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (133, N'MT9APCR', 99, 121, 57, 0, 388, 474, 0, 9, 5, 3, 75, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (134, N'MT9APDS', 108, 132, 0, 7, 441, 539, 0, 9, 2, 3, 75, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (135, N'HT9AP', 89, 109, 97, 0, 374, 457, 0, 10, 1, 4, 85, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (136, N'HT9APCR', 102, 125, 111, 0, 411, 502, 0, 10, 5, 4, 85, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (137, N'HT9APDS', 111, 136, 0, 13, 467, 571, 0, 10, 2, 4, 85, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (138, N'LT10AP', 68, 83, 31, 0, 243, 297, 0, 10, 1, 2, 47, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (139, N'LT10APCR', 78, 95, 35, 0, 267, 327, 0, 9, 5, 2, 47, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (140, N'LT10APDS', 84, 103, 0, 4, 304, 371, 0, 9, 2, 2, 47, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (141, N'SPG10HE', 78, 96, 77, 0, 720, 880, 1, 11, 3, 5, 150, 10, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (142, N'SPG10APHE', 90, 110, 89, 0, 792, 968, 1, 11, 6, 5, 150, 10, N'APHE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (143, N'SPG10HEAT', 98, 120, 0, 10, 900, 1100, 0, 11, 4, 5, 150, 10, N'HEAT')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (144, N'TD10AP', 104, 127, 69, 0, 495, 605, 0, 10, 1, 6, 88, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (145, N'TD10APCR', 119, 145, 79, 0, 545, 666, 0, 10, 5, 6, 88, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (146, N'TD10APDS', 129, 158, 0, 9, 619, 756, 0, 10, 2, 6, 88, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (147, N'MT10AP', 94, 114, 56, 0, 410, 501, 0, 9, 1, 3, 88, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (148, N'MT10APCR', 108, 132, 64, 0, 450, 551, 0, 9, 5, 3, 88, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (149, N'MT10APDS', 117, 143, 0, 7, 512, 626, 0, 9, 2, 3, 88, 10, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (150, N'HT10AP', 97, 119, 97, 0, 450, 550, 0, 10, 1, 4, 125, 10, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (151, N'HT10APCR', 112, 137, 111, 0, 495, 605, 0, 10, 5, 4, 125, 10, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (152, N'HT10APDS', 122, 149, 0, 12, 563, 688, 0, 10, 2, 4, 125, 10, N'APDS')
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
SET IDENTITY_INSERT [dbo].[Zones] ON 

GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (1, -1, N'[3,1,1,1,1,1,1,1]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (2, -2, N'[0]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (3, -3, N'[1]', 0, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (4, -4, N'[]', 0, 0)
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
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (21, 1, N'[1,3,7,7,9,12,20,21]', 1, 0)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (22, 2, N'[11]', 6, 100)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (23, 3, N'[2]', 10, 100)
GO
INSERT [dbo].[Zones] ([id], [zone], [buildings], [forLevel], [forGold]) VALUES (24, 4, N'[]', 15, 200)
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

DELETE FROM [dbo].[MarketItems]
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21,22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 3, 1, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,25,25,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 5, 1, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 7, 1, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (650, 9, 1, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (651, 11, 1, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (652, 13, 1, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (653, 15, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (654, 17, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (673, 7, 2, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (834, 1, 2, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (835, 3, 2, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,25,25,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (836, 5, 2, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (837, 9, 2, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (838, 11, 2, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (839, 13, 2, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (840, 15, 2, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (841, 17, 2, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (897, 15, 12, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (911, 19, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
