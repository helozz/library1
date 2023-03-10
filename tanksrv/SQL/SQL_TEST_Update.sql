USE [tankwars_test]
GO
DELETE FROM [dbo].[Offers]
GO
DELETE FROM [dbo].[MarketItems]
GO
DELETE FROM [dbo].[Campaigns]
GO
DELETE FROM [dbo].[Battles]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1044, 1, N'com.ambergames.tanksquadgame.beginnerpack', 2000000000000, 0, 1, 172800000, 6, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1045, 1, N'com.ambergames.tanksquadgame.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 15, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1046, 1, N'com.ambergames.tanksquadgame.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 4, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1047, 1, N'com.ambergames.tanksquadgame.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 9, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1049, 1, N'com.ambergames.tanksquadgame.beginnerpack', 2000000000000, 0, 1, 172800000, 2, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1051, 3, N'tank3tier', 0, 0, 0, 172800000, 0, 2, 40, 140, N'', 1, 1, 900, 5)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1053, 5, N'com.glu.tanksquad.gold_offer_03_discount', 172800000, 0, 1, 172800000, 10, 0, 25, 125, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1054, 6, N'money_offer_03', 518400000, 0, 1, 172800000, 5, 0, 20, 130, N'', 0, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1055, 2, N'com.ambergames.tanksquadgame.tank2tier', 0, 0, 0, 172800000, 12, 23, 30, 135, N'[24,2]', 1, 1, 0, 3)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1059, 8, N'tank4tier', 0, 0, 0, 172800000, 0, 44, 40, 150, N'', 1, 1, 1600, 7)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1060, 9, N'tank5tier', 0, 0, 0, 172800000, 0, 49, 40, 160, N'', 1, 1, 3300, 9)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1061, 10, N'tank6tier', 0, 0, 0, 172800000, 0, 81, 40, 170, N'', 1, 1, 6350, 11)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1062, 11, N'tank7tier', 0, 0, 0, 172800000, 0, 84, 40, 180, N'', 1, 1, 10950, 13)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1063, 12, N'tank8tier', 0, 0, 0, 172800000, 0, 92, 40, 190, N'', 1, 1, 18100, 15)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1064, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 30, 115, N'newbie_veteran_crew1', 0, 1, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
SET IDENTITY_INSERT [dbo].[Battles] ON 

GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (1, 1, 1, 1, 0, N'[{"type":7,"item":5,"num":1},{"type":7,"item":9,"num":3},{"type":1,"num":75}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (2, 2, 2, 3, 0, N'[{"type":7,"item":5,"num":1},{"type":7,"item":8,"num":7},{"type":1,"num":70}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (3, 3, 4, 10, 0, N'[{"type":7,"item":4,"num":1},{"type":7,"item":8,"num":6},{"type":1,"num":65}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (4, 4, 11, 15, 0, N'[{"type":7,"item":4,"num":1},{"type":7,"item":9,"num":2},{"type":1,"num":60}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (5, 5, 16, 25, 0, N'[{"type":7,"item":3,"num":2},{"type":7,"item":7,"num":9},{"type":1,"num":55}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (6, 6, 26, 50, 0, N'[{"type":7,"item":2,"num":2},{"type":7,"item":8,"num":4},{"type":1,"num":50}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (7, 7, 51, 75, 0, N'[{"type":7,"item":2,"num":2},{"type":7,"item":7,"num":7},{"type":1,"num":45}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (8, 8, 76, 100, 0, N'[{"type":7,"item":3,"num":1},{"type":7,"item":8,"num":3},{"type":1,"num":40}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (9, 9, 101, 150, 0, N'[{"type":7,"item":3,"num":1},{"type":7,"item":8,"num":3},{"type":1,"num":35}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (10, 10, 151, 300, 0, N'[{"type":7,"item":2,"num":1},{"type":7,"item":9,"num":1},{"type":1,"num":30}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (11, 11, 301, 500, 0, N'[{"type":7,"item":2,"num":1},{"type":7,"item":8,"num":2},{"type":1,"num":25}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (12, 12, 501, 1000, 0, N'[{"type":7,"item":1,"num":2},{"type":7,"item":8,"num":2},{"type":1,"num":20}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (13, 13, 0, 0, 5, N'[{"type":7,"item":1,"num":2},{"type":7,"item":7,"num":3},{"type":1,"num":15}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (14, 14, 0, 0, 15, N'[{"type":7,"item":1,"num":2},{"type":7,"item":7,"num":3},{"type":1,"num":10}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (15, 15, 0, 0, 30, N'[{"type":7,"item":19,"num":4},{"type":7,"item":7,"num":3},{"type":1,"num":5}]')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (16, 16, 0, 0, 50, N'[{"type":7,"item":19,"num":2},{"type":7,"item":7,"num":2}]')
GO
SET IDENTITY_INSERT [dbo].[Battles] OFF
GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 400, 0, 5, 100, 0, -1, 0, 0, 0, N'0 hidden_2', 2, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 208, 0, 4, 100, 0, -1, 0, 0, 52, N'0 hidden_1', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 218, 0, 4, 150, 0, 3, 1, 16, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 222, 0, 4, 200, 0, 7, 2, 21, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 232, 0, 4, 140, 0, 7, 2, 22, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 500, 0, 5, 140, 0, -1, 0, 0, 0, N'', 3, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 238, 0, 4, 600, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 242, 0, 4, 650, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 247, 0, 4, 700, 0, 7, 1, 12, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 252, 0, 4, 750, 0, 7, 1, 22, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 256, 0, 4, 190, 0, 7, 2, 23, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 3, 0, N'c03', 0, 1, 5, 0, 600, 0, 5, 190, 0, -1, 0, 0, 0, N'', 4, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 1, N'c03_m01', 0, 1, 5, 0, 266, 0, 4, 1100, 0, 7, 1, 3, 188, N'0 hidden_3', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 2, N'c03_m02', 0, 1, 5, 0, 271, 0, 4, 1150, 0, 7, 1, 12, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 3, N'c03_m03', 0, 1, 5, 0, 276, 0, 4, 1200, 0, 7, 1, 24, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 4, N'c03_m04', 0, 1, 5, 0, 281, 0, 4, 250, 0, 7, 2, 23, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 4, 0, N'c04', 0, 1, 5, 0, 700, 0, 5, 250, 0, -1, 0, 0, 0, N'', 5, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 4, 1, N'c04_m01', 0, 1, 5, 0, 290, 0, 4, 1600, 0, 7, 1, 4, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 4, 2, N'c04_m02', 0, 1, 5, 0, 295, 0, 4, 1650, 0, 7, 1, 12, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 4, 3, N'c04_m03', 0, 1, 5, 0, 301, 0, 4, 1700, 0, 7, 1, 22, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 4, 4, N'c04_m04', 0, 1, 5, 0, 310, 0, 4, 330, 0, 7, 1, 21, 326, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 5, 0, N'c05', 0, 1, 5, 0, 800, 0, 5, 330, 0, -1, 0, 0, 0, N'', 6, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 5, 1, N'c05_m01', 0, 1, 5, 0, 324, 0, 4, 2100, 0, 7, 1, 3, 375, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 5, 2, N'c05_m02', 0, 1, 5, 0, 329, 0, 4, 2150, 0, 7, 1, 3, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 5, 3, N'c05_m03', 0, 1, 5, 0, 336, 0, 4, 2200, 0, 7, 1, 13, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 5, 4, N'c05_m04', 0, 1, 5, 0, 345, 0, 4, 2250, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 5, 5, N'c05_m05', 0, 1, 5, 0, 350, 0, 4, 2300, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 5, 6, N'c05_m06', 0, 1, 5, 0, 358, 0, 4, 430, 0, 7, 1, 22, 462, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 6, 0, N'c06', 0, 1, 5, 0, 900, 0, 5, 430, 0, -1, 0, 0, 0, N'', 7, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 6, 1, N'c06_m01', 0, 1, 5, 0, 384, 0, 4, 2600, 0, 7, 1, 3, 462, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 6, 2, N'c06_m02', 0, 1, 5, 0, 388, 0, 4, 2650, 0, 7, 1, 3, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 6, 3, N'c06_m03', 0, 1, 5, 0, 395, 0, 4, 2700, 0, 7, 1, 13, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 6, 4, N'c06_m04', 0, 1, 5, 0, 405, 0, 4, 2750, 0, -1, 0, 0, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 6, 5, N'c06_m05', 0, 1, 5, 0, 412, 0, 4, 2800, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 6, 6, N'c06_m06', 0, 1, 5, 0, 420, 0, 4, 2850, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 6, 7, N'c06_m07', 0, 1, 5, 0, 429, 0, 4, 550, 0, 7, 1, 23, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 7, 0, N'c07', 0, 1, 5, 0, 1100, 0, 5, 550, 0, -1, 0, 0, 0, N'', 8, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 7, 1, N'c07_m01', 0, 1, 5, 0, 458, 0, 4, 3100, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 7, 2, N'c07_m02', 0, 1, 5, 0, 466, 0, 4, 3150, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 7, 3, N'c07_m03', 0, 1, 5, 0, 476, 0, 4, 3200, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 7, 4, N'c07_m04', 0, 1, 5, 0, 484, 0, 4, 3250, 0, 7, 1, 14, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 7, 5, N'c07_m05', 0, 1, 5, 0, 482, 0, 4, 3300, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 7, 6, N'c07_m06', 0, 1, 5, 0, 490, 0, 4, 3350, 0, -1, 0, 0, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 7, 7, N'c07_m07', 0, 1, 5, 0, 502, 0, 4, 700, 0, 7, 2, 24, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 8, 0, N'c08', 0, 1, 5, 0, 1300, 0, 5, 700, 0, -1, 0, 0, 0, N'', 9, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 8, 1, N'c08_m01', 0, 1, 5, 0, 533, 0, 4, 3600, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 8, 2, N'c08_m02', 0, 1, 5, 0, 542, 0, 4, 3650, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 8, 3, N'c08_m03', 0, 1, 5, 0, 555, 0, 4, 3700, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 8, 4, N'c08_m04', 0, 1, 5, 0, 565, 0, 4, 3750, 0, 7, 1, 14, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 8, 5, N'c08_m05', 0, 1, 5, 0, 574, 0, 4, 3800, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 8, 6, N'c08_m06', 0, 1, 5, 0, 585, 0, 4, 3850, 0, -1, 0, 0, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 8, 7, N'c08_m07', 0, 1, 5, 0, 595, 0, 4, 870, 0, 7, 5, 25, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 9, 0, N'c09', 0, 1, 5, 0, 1500, 0, 5, 870, 0, -1, 0, 0, 0, N'', 10, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 9, 1, N'c09_m01', 0, 1, 5, 0, 642, 0, 4, 4100, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 9, 2, N'c09_m02', 0, 1, 5, 0, 653, 0, 4, 4150, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 9, 3, N'c09_m03', 0, 1, 5, 0, 667, 0, 4, 4200, 0, -1, 0, 0, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 9, 4, N'c09_m04', 0, 1, 5, 0, 679, 0, 4, 4250, 0, 7, 1, 14, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 9, 5, N'c09_m05', 0, 1, 5, 0, 694, 0, 4, 4300, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 9, 6, N'c09_m06', 0, 1, 5, 0, 706, 0, 4, 4350, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 9, 7, N'c09_m07', 0, 1, 5, 0, 720, 0, 4, 4400, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 9, 8, N'c09_m08', 0, 1, 5, 0, 732, 0, 4, 1070, 0, 7, 5, 26, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4600, 0, 7, 1, 3, 797, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4650, 0, 7, 1, 3, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4700, 0, 7, 1, 15, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4750, 0, -1, 0, 0, 911, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4800, 0, -1, 0, 0, 940, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 1300, 0, 7, 5, 27, 976, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5100, 0, 7, 1, 3, 976, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5150, 0, 7, 1, 3, 1041, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5200, 0, 7, 1, 15, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5250, 0, -1, 0, 0, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5300, 0, -1, 0, 0, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 1550, 0, 7, 5, 28, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5600, 0, 7, 1, 3, 1188, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5650, 0, 7, 1, 3, 1260, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5700, 0, 7, 1, 15, 1353, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5750, 0, -1, 0, 0, 1459, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5800, 0, -1, 0, 0, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 1830, 0, 7, 5, 28, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6100, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6150, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6200, 0, 7, 1, 16, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6250, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6300, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 2130, 0, 7, 30, 22, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6600, 0, 7, 1, 3, 1718, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6650, 0, 7, 1, 3, 1964, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6700, 0, 7, 1, 16, 2093, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6750, 0, -1, 0, 0, 2240, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6800, 0, -1, 0, 0, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 2440, 0, 7, 5, 28, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 7100, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 7150, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 7200, 0, 7, 1, 16, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 7250, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 7300, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 0, 0, 7, 30, 23, 2387, N'', 0, 19)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21, 22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"shop_slot_1_1","items":[7],"weights":[10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 3, 1, N'{"ident":"shop_slot_1_3","items":[7,8],"weights":[10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 5, 1, N'{"ident":"shop_slot_1_5","items":[7,8,9],"weights":[10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 7, 1, N'{"ident":"shop_slot_1_7","items":[7,8,9,10],"weights":[10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (104, 1, 2, N'{"ident":"shop_slot_2_1","items":[100,110,120,130],"weights":[32,23,30,16]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (105, 3, 2, N'{"ident":"shop_slot_2_3","items":[100,110,120,130,140,146,152],"weights":[35,20,31,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (106, 4, 2, N'{"ident":"shop_slot_2_4","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154],"weights":[35,35,20,20,31,31,14,14,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (107, 5, 2, N'{"ident":"shop_slot_2_5","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,158],"weights":[35,35,20,20,30,30,12,12,1,1,0,0,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (108, 8, 2, N'{"ident":"shop_slot_2_8","items":[100,102,106,110,112,116,120,122,126,130,132,136,140,142,144,146,148,150,152,154,156,158,162],"weights":[32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (109, 9, 2, N'{"ident":"shop_slot_2_9","items":[100,102,106,108,110,112,116,118,120,122,126,128,130,132,136,138,140,142,144,146,148,150,152,154,156,158,162,164],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (110, 10, 2, N'{"ident":"shop_slot_2_10","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (111, 11, 2, N'{"ident":"shop_slot_2_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (112, 13, 2, N'{"ident":"shop_slot_2_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (113, 15, 2, N'{"ident":"shop_slot_2_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (114, 17, 2, N'{"ident":"shop_slot_2_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (115, 1, 3, N'{"ident":"shop_slot_3_1","items":[100,110,120,130],"weights":[32,23,30,16]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (116, 3, 3, N'{"ident":"shop_slot_3_3","items":[100,110,120,130,140,146,152],"weights":[35,20,31,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (117, 4, 3, N'{"ident":"shop_slot_3_4","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154],"weights":[35,35,20,20,31,31,14,14,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (118, 5, 3, N'{"ident":"shop_slot_3_5","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,158],"weights":[35,35,20,20,30,30,12,12,1,1,0,0,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (119, 8, 3, N'{"ident":"shop_slot_3_8","items":[100,102,106,110,112,116,120,122,126,130,132,136,140,142,144,146,148,150,152,154,156,158,162],"weights":[32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (120, 9, 3, N'{"ident":"shop_slot_3_9","items":[100,102,106,108,110,112,116,118,120,122,126,128,130,132,136,138,140,142,144,146,148,150,152,154,156,158,162,164],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (121, 10, 3, N'{"ident":"shop_slot_3_10","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (122, 11, 3, N'{"ident":"shop_slot_3_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (123, 13, 3, N'{"ident":"shop_slot_3_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (124, 15, 3, N'{"ident":"shop_slot_3_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (125, 17, 3, N'{"ident":"shop_slot_3_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164],"weights":[22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (126, 1, 4, N'{"ident":"shop_slot_4_1","items":[101,111,121,131,141,147,153],"weights":[1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (127, 3, 4, N'{"ident":"shop_slot_4_3","items":[101,103,111,113,121,123,131,133,141,143,147,149,153,155],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (128, 4, 4, N'{"ident":"shop_slot_4_4","items":[101,103,111,113,121,123,131,133,141,143,147,149,153,155,159],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (129, 5, 4, N'{"ident":"shop_slot_4_5","items":[101,103,107,111,113,117,121,123,127,131,133,137,141,143,145,147,149,151,153,155,157,159,163],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (130, 8, 4, N'{"ident":"shop_slot_4_8","items":[101,103,107,109,111,113,117,119,121,123,127,129,131,133,137,139,141,143,145,147,149,151,153,155,157,159,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (131, 9, 4, N'{"ident":"shop_slot_4_9","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (132, 10, 4, N'{"ident":"shop_slot_4_10","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (133, 11, 4, N'{"ident":"shop_slot_4_11","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (134, 13, 4, N'{"ident":"shop_slot_4_13","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (135, 15, 4, N'{"ident":"shop_slot_4_15","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (136, 17, 4, N'{"ident":"shop_slot_4_17","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (137, 1, 5, N'{"ident":"shop_slot_5_1","items":[100,110,120,130,101,111,121,131],"weights":[32,23,30,16,32,23,30,16]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (138, 3, 5, N'{"ident":"shop_slot_5_3","items":[100,110,120,130,140,146,152,101,111,121,131,141,147,153],"weights":[35,20,31,14,0,0,0,35,20,31,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (139, 4, 5, N'{"ident":"shop_slot_5_4","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,101,103,111,113,121,123,131,133,141,143,147,149,153,155],"weights":[35,35,20,20,31,31,14,14,0,0,0,0,0,0,35,35,20,20,31,31,14,14,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (140, 5, 5, N'{"ident":"shop_slot_5_5","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,158,101,103,111,113,121,123,131,133,141,143,147,149,153,155,159],"weights":[35,35,20,20,30,30,12,12,1,1,0,0,2,2,0,35,35,20,20,30,30,12,12,1,1,0,0,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (141, 8, 5, N'{"ident":"shop_slot_5_8","items":[100,102,106,110,112,116,120,122,126,130,132,136,140,142,144,146,148,150,152,154,156,158,162,101,103,107,111,113,117,121,123,127,131,133,137,141,143,145,147,149,151,153,155,157,159,163],"weights":[32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0,32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (142, 9, 5, N'{"ident":"shop_slot_5_9","items":[100,102,106,108,110,112,116,118,120,122,126,128,130,132,136,138,140,142,144,146,148,150,152,154,156,158,162,164,101,103,107,109,111,113,117,119,121,123,127,129,131,133,137,139,141,143,145,147,149,151,153,155,157,159,163,165],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (143, 10, 5, N'{"ident":"shop_slot_5_10","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4,33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (144, 11, 5, N'{"ident":"shop_slot_5_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7,31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (145, 13, 5, N'{"ident":"shop_slot_5_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11,28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (146, 15, 5, N'{"ident":"shop_slot_5_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15,25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (147, 17, 5, N'{"ident":"shop_slot_5_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20,22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (148, 1, 6, N'{"ident":"shop_slot_6_1","items":[100,110,120,130,101,111,121,131],"weights":[32,23,30,16,32,23,30,16]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (149, 3, 6, N'{"ident":"shop_slot_6_3","items":[100,110,120,130,140,146,152,101,111,121,131,141,147,153],"weights":[35,20,31,14,0,0,0,35,20,31,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (150, 4, 6, N'{"ident":"shop_slot_6_4","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,101,103,111,113,121,123,131,133,141,143,147,149,153,155],"weights":[35,35,20,20,31,31,14,14,0,0,0,0,0,0,35,35,20,20,31,31,14,14,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (151, 5, 6, N'{"ident":"shop_slot_6_5","items":[100,102,110,112,120,122,130,132,140,142,146,148,152,154,158,101,103,111,113,121,123,131,133,141,143,147,149,153,155,159],"weights":[35,35,20,20,30,30,12,12,1,1,0,0,2,2,0,35,35,20,20,30,30,12,12,1,1,0,0,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (152, 8, 6, N'{"ident":"shop_slot_6_8","items":[100,102,106,110,112,116,120,122,126,130,132,136,140,142,144,146,148,150,152,154,156,158,162,101,103,107,111,113,117,121,123,127,131,133,137,141,143,145,147,149,151,153,155,157,159,163],"weights":[32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0,32,32,32,18,18,18,27,27,27,11,11,11,4,4,4,2,2,2,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (153, 9, 6, N'{"ident":"shop_slot_6_9","items":[100,102,106,108,110,112,116,118,120,122,126,128,130,132,136,138,140,142,144,146,148,150,152,154,156,158,162,164,101,103,107,109,111,113,117,119,121,123,127,129,131,133,137,139,141,143,145,147,149,151,153,155,157,159,163,165],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,33,33,33,33,20,20,20,20,29,29,29,29,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (154, 10, 6, N'{"ident":"shop_slot_6_10","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4,33,33,33,33,33,20,20,20,20,20,29,29,29,29,29,10,10,10,10,10,2,2,2,1,1,1,2,2,2,4,4,4,4]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (155, 11, 6, N'{"ident":"shop_slot_6_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7,31,31,31,31,31,20,20,20,20,20,27,27,27,27,27,9,9,9,9,9,2,2,2,2,2,2,2,2,2,7,7,7,7]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (156, 13, 6, N'{"ident":"shop_slot_6_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11,28,28,28,28,28,18,18,18,18,18,24,24,24,24,24,8,8,8,8,8,3,3,3,4,4,4,4,4,4,11,11,11,11]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (157, 15, 6, N'{"ident":"shop_slot_6_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15,25,25,25,25,25,16,16,16,16,16,22,22,22,22,22,8,8,8,8,8,4,4,4,5,5,5,5,5,5,15,15,15,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (158, 17, 6, N'{"ident":"shop_slot_6_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165],"weights":[22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20,22,22,22,22,22,13,13,13,13,13,19,19,19,19,19,6,6,6,6,6,6,6,6,7,7,7,7,7,7,20,20,20,20]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1, N'com.glu.tanksquad.money_offer_01', N'money_offer_01', 100, 100, 0, 15000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (2, N'com.glu.tanksquad.money_offer_02', N'money_offer_02', 200, 200, 0, 65000, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (3, N'com.glu.tanksquad.gold_offer_01', N'gold_offer_01', 0.99, 0.99, 1, 500, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (4, N'com.glu.tanksquad.gold_offer_02', N'gold_offer_02', 3.99, 3.99, 1, 2100, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (5, N'com.glu.tanksquad.gold_offer_03', N'gold_offer_03', 10.99, 10.99, 1, 6000, 0, 0, 1, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (6, N'com.glu.tanksquad.gold_offer_04', N'gold_offer_04', 27.99, 27.99, 1, 15000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (7, N'com.glu.tanksquad.gold_offer_05', N'gold_offer_05', 54.99, 54.99, 1, 31000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (8, N'com.glu.tanksquad.gold_offer_06', N'gold_offer_06', 99.99, 99.99, 1, 56000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1002, N'com.ambergames.tanksquadgame.beginnerpack', N'beginner', 5.99, 5.99, 1, 3000, 0, 0, 0, 0)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1003, N'com.ambergames.tanksquadgame.tank2tier', N'tank2tier', 5.99, 5.99, 1, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1004, N'com.glu.tanksquad.gold_offer_01_discount', N'gold_offer_01', 0.99, 0.99, 1, 625, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1005, N'com.glu.tanksquad.gold_offer_02_discount', N'gold_offer_02', 3.99, 3.99, 1, 2625, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1006, N'com.glu.tanksquad.gold_offer_03_discount', N'gold_offer_03', 10.99, 10.99, 1, 7500, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1007, N'com.glu.tanksquad.gold_offer_04_discount', N'gold_offer_04', 27.99, 27.99, 1, 18750, 0, 0, 1, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1008, N'com.glu.tanksquad.gold_offer_05_discount', N'gold_offer_05', 54.99, 54.99, 1, 38750, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1009, N'com.glu.tanksquad.gold_offer_06_discount', N'gold_offer_06', 99.99, 99.99, 1, 70000, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
