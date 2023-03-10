USE [tankwars_test]
GO
DELETE FROM [dbo].[ShellShops]
GO
DELETE FROM [dbo].[RandomItems]
GO
DELETE FROM [dbo].[RadarConfigs]
GO
DELETE FROM [dbo].[Quests]
GO
DELETE FROM [dbo].[Offers]
GO
DELETE FROM [dbo].[NewMissions]
GO
DELETE FROM [dbo].[MarketItems]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[Evolves]
GO
DELETE FROM [dbo].[DefaultUnits]
GO
DELETE FROM [dbo].[Campaigns]
GO
DELETE FROM [dbo].[BlindBuys]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1044, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 6, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1045, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 15, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1046, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 4, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1047, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 9, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1049, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 2, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1051, 3, N'tank3tier', 0, 0, 0, 172800000, 0, 2, 40, 140, N'', 0, 1, 900, 5)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1053, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, 10, 0, 25, 125, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1054, 6, N'money_offer_03', 518400000, 0, 1, 172800000, 5, 0, 20, 130, N'', 0, 0, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1055, 2, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, 12, 23, 30, 135, N'[24,2]', 1, 1, 0, 3)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1059, 8, N'tank4tier', 0, 0, 0, 172800000, 0, 44, 40, 150, N'', 0, 1, 1600, 7)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1060, 9, N'tank5tier', 0, 0, 0, 172800000, 0, 49, 40, 160, N'', 0, 1, 3300, 9)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1061, 10, N'tank6tier', 0, 0, 0, 172800000, 0, 81, 40, 170, N'', 0, 1, 6350, 11)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1062, 11, N'tank7tier', 0, 0, 0, 172800000, 0, 87, 40, 180, N'', 0, 1, 10950, 13)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1063, 12, N'tank8tier', 0, 0, 0, 172800000, 0, 103, 40, 190, N'', 0, 1, 18100, 15)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1064, 4, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'newbie_veteran_crew1', 0, 0, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1065, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'veteran_crew1', 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] ON 

GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1, N'{"ident":"basic_tier_1","money":700,"tier":1,"gold":0,"items":[{"tank":3,"weight":2,"upgrades":[]},{"tank":57,"weight":2,"upgrades":[]},{"tank":11,"weight":2,"upgrades":[]}],"mask":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2, N'{"ident":"advanced_tier_1","money":1400,"tier":1,"gold":0,"items":[{"tank":4,"weight":2,"upgrades":[]},{"tank":58,"weight":2,"upgrades":[]},{"tank":12,"weight":2,"upgrades":[]}],"mask":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (28, N'{"ident":"hidden_1","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":57,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (29, N'{"ident":"hidden_2","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":11,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (30, N'{"ident":"hidden_3","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":1,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1002, N'{"ident":"common_crew1","money":2300,"mask":8,"items":[{"tier":1,"weight":9},{"tier":2,"weight":1}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1003, N'{"ident":"veteran_crew1","gold":190,"mask":8,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1006, N'{"ident":"newbie_common_crew1","money":900,"mask":24,"items":[{"tier":1,"weight":9,"ids":[2,3,4,5]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1007, N'{"ident":"newbie_veteran_crew1","money":0,"mask":24,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}],"gold":190}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1008, N'{"ident":"com.ambergames.tanksquadgame.tank2tier","gold":0,"money":0,"items":[{"tank":23},{"crew":5,"tier":3}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1009, N'{"ident":"tank3tier","gold":1000,"money":0,"items":[{"tank":21}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1011, N'{"ident":"basic_tier_2_reinforcement","tier":2,"money":0,"gold":900,"mask":7,"items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":120,"upgrades":[]},{"tank":13,"weight":150,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1012, N'{"ident":"basic_tier_3_reinforcement","tier":3,"money":0,"gold":1600,"mask":7,"items":[{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":120,"upgrades":[]},{"tank":25,"weight":150,"upgrades":[]},{"tank":27,"weight":200,"upgrades":[]},{"tank":33,"weight":180,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1013, N'{"ident":"basic_tier_4_reinforcement","tier":4,"money":0,"gold":3400,"mask":7,"items":[{"tank":29,"weight":200,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":120,"upgrades":[]},{"tank":45,"weight":150,"upgrades":[]},{"tank":75,"weight":180,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1014, N'{"ident":"basic_tier_5_reinforcement","tier":5,"money":0,"gold":6350,"mask":7,"items":[{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":150,"upgrades":[]},{"tank":51,"weight":200,"upgrades":[]},{"tank":55,"weight":180,"upgrades":[]},{"tank":63,"weight":120,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1015, N'{"ident":"basic_tier_6_reinforcement","tier":6,"money":0,"gold":10950,"mask":7,"items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":67,"weight":150,"upgrades":[]},{"tank":77,"weight":180,"upgrades":[]},{"tank":79,"weight":235,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1016, N'{"ident":"basic_tier_7_reinforcement","tier":7,"money":0,"gold":18100,"mask":7,"items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":65,"weight":120,"upgrades":[]},{"tank":69,"weight":150,"upgrades":[]},{"tank":73,"weight":200,"upgrades":[]},{"tank":82,"weight":120,"upgrades":[]},{"tank":85,"weight":180,"upgrades":[]},{"tank":88,"weight":235,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1017, N'{"ident":"basic_tier_8_reinforcement","tier":8,"money":0,"gold":28550,"mask":7,"items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":120,"upgrades":[]},{"tank":95,"weight":150,"upgrades":[]},{"tank":97,"weight":180,"upgrades":[]},{"tank":99,"weight":200,"upgrades":[]},{"tank":101,"weight":235,"upgrades":[]}]}')
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] OFF
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
SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (1, N'JeepWillys', 3, 8, 500, 90, 4, 5, 4, 5, 5, 16, 87, 160, 3, 2.36, 12, 10, 10, 13, 16, 1, 14, 300, 0, 1, 1, 0, 2, 1, 1, 13, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (2, N'M3Lee', 3, 30, 178, 60, 2, 4, 1, 6, 1, 11, 265, 551, 2.2, 27, 45, 35, 40, 16, 22, 3, 37, 750, 0, 1, 1, 6, 2, 3, 7, 52, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (3, N'BA64', 1, 6, 200, 90, 2, 3, 4, 5, 5, 12, 60, 110, 2.66, 2.36, 9, 6, 6, 13, 15, 1, 15, 400, 0, 1, 1, 0, 0, 1, 5, 1, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (4, N'BA64B', 1, 8, 200, 90, 2, 3, 4, 5, 5, 13, 69, 126, 2.66, 2.36, 10, 8, 6, 13, 15, 1, 15, 500, 0, 1, 1, 0, 1, 1, 8, 5, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (5, N'Scoutcar', 4, 9, 52, 90, 2, 2, 4, 5, 5, 14, 84, 154, 3, 4.8, 12, 12, 12, 14, 16, 1, 14, 600, 0, 1, 1, 0, 0, 2, 0, 3, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (6, N'Scoutcar2', 4, 11, 52, 90, 2, 2, 3, 6, 5, 15, 97, 177, 3, 4.8, 14, 14, 14, 14, 16, 1, 14, 700, 0, 1, 1, 0, 1, 2, 3, 4, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (7, N'PZ2', 2, 7, 140, 72, 3, 5, 4, 5, 5, 10, 66, 121, 2, 8.9, 13, 13, 13, 10, 20, 2, 20, 700, 0, 1, 1, 3, 4, 1, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (8, N'PZ2A', 2, 7, 140, 72, 3, 5, 4, 3, 5, 10, 75, 140, 2, 8.9, 14, 14, 14, 11, 20, 2, 20, 800, 0, 1, 1, 3, 4, 1, 3, 2, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (9, N'PZ2B', 2, 11, 140, 72, 3, 5, 4, 9, 5, 11, 101, 192, 2, 8.9, 21, 21, 21, 11, 21, 2, 20, 900, 0, 1, 1, 3, 0, 2, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (10, N'PZ2C', 2, 14, 140, 72, 3, 5, 4, 7, 5, 11, 116, 221, 2, 8.9, 24, 24, 24, 12, 21, 2, 20, 900, 0, 1, 1, 3, 1, 2, 3, 3, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (11, N'BirchGun', 4, 9, 150, 32, 2, 6, 1, 7, 1, 9, 84, 110, 1.5, 12, 6, 6, 6, 10, 16, 5, 84, 800, 0, 1, 1, 10, 0, 1, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (12, N'BirchGun2', 4, 11, 150, 32, 2, 6, 1, 6, 1, 9, 96, 126, 1.5, 12, 10, 6, 6, 10, 16, 5, 84, 1000, 0, 1, 1, 10, 1, 1, 1, 2, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (13, N'SU26', 1, 14, 46, 36, 1, 5, 1, 7, 1, 10, 118, 154, 1.6, 15.6, 14, 10, 12, 19, 25, 5, 37, 1200, 0, 1, 1, 10, 0, 2, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (14, N'SU2676', 1, 17, 46, 36, 1, 5, 1, 6, 1, 10, 134, 177, 1.6, 15.6, 16, 10, 13, 19, 26, 5, 76, 1200, 0, 1, 1, 10, 1, 2, 3, 2, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (15, N'Sdkfz222', 2, 9, 180, 90, 2, 3, 4, 5, 5, 12, 76, 130, 2.7, 4.8, 12, 10, 11, 13, 15, 1, 20, 500, 0, 1, 1, 0, 4, 2, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (16, N'Sdkfz223', 2, 9, 180, 90, 2, 3, 3, 8, 5, 13, 84, 143, 2.7, 4.8, 12, 10, 11, 13, 15, 1, 20, 600, 0, 1, 1, 0, 4, 2, 2, 2, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (17, N'Sdkfz231', 2, 14, 180, 90, 2, 3, 5, 8, 5, 14, 118, 216, 3, 4.8, 16, 16, 16, 14, 16, 1, 20, 700, 0, 1, 1, 0, 0, 3, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (18, N'Sdkfz233', 2, 17, 180, 90, 2, 3, 5, 5, 5, 15, 135, 248, 3, 4.8, 18, 18, 18, 14, 16, 1, 20, 750, 0, 1, 1, 0, 1, 3, 3, 3, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (19, N'BT2', 1, 16, 90, 72, 4, 5, 5, 5, 5, 10, 141, 269, 2, 11.6, 30, 24, 24, 12, 20, 2, 37, 800, 0, 1, 1, 3, 0, 3, 0, 0, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (20, N'BT5', 1, 20, 90, 72, 4, 5, 4, 7, 5, 11, 162, 309, 2, 11.6, 30, 20, 25, 11, 20, 2, 45, 1100, 0, 1, 1, 3, 1, 3, 3, 4, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (21, N'BT7', 1, 20, 60, 72, 4, 5, 4, 7, 5, 11, 206, 389, 2, 8, 32, 30, 31, 11, 21, 2, 45, 1200, 0, 1, 1, 3, 2, 3, 6, 20, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (22, N'BT7M', 1, 11, 60, 72, 3, 5, 4, 7, 5, 11, 227, 432, 1.5, 8, 22, 18, 20, 12, 21, 2, 45, 1250, 0, 1, 1, 3, 4, 2, 3, 4, 3)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (23, N'SU5', 1, 17, 25, 32, 2, 6, 1, 5, 1, 10, 168, 223, 1.5, 10.5, 18, 12, 15, 14, 23, 5, 76, 950, 0, 1, 1, 10, 2, 2, 4, 10, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (24, N'Matilda', 4, 68, 80, 60, 2, 4, 1, 6, 1, 11, 519, 1080, 1.5, 10.5, 60, 40, 53, 16, 22, 3, 75, 1150, 0, 1, 1, 6, 2, 5, 6, 100, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (25, N'M8Scott', 3, 20, 46, 36, 1, 5, 1, 9, 1, 10, 165, 216, 1.6, 15.6, 18, 12, 15, 19, 25, 5, 75, 1000, 0, 1, 1, 10, 0, 3, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (26, N'M8Scott2', 3, 25, 46, 36, 1, 5, 1, 8, 1, 10, 188, 248, 1.6, 15.6, 19, 13, 16, 19, 26, 5, 75, 1000, 0, 1, 1, 10, 1, 3, 3, 7, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (27, N'AT1', 1, 27, 40, 40, 1, 4, 1, 7, 1, 10, 206, 400, 1.33, 6.4, 39, 17, 28, 15, 23, 6, 76, 1250, 0, 1, 1, 8, 0, 3, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (28, N'AT1_2', 1, 34, 40, 40, 1, 4, 1, 6, 1, 10, 235, 460, 1.33, 6.4, 45, 19, 32, 16, 23, 6, 76, 1550, 0, 1, 1, 8, 1, 3, 5, 4, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (29, N'PZjag', 2, 41, 86, 40, 1, 4, 1, 7, 1, 10, 288, 560, 1.33, 6.4, 49, 21, 35, 16, 25, 6, 47, 1000, 0, 1, 1, 8, 0, 4, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (30, N'PZjag2', 2, 51, 86, 40, 1, 4, 1, 6, 1, 10, 329, 644, 1.33, 6.4, 55, 23, 39, 17, 25, 6, 47, 1000, 0, 1, 1, 8, 1, 4, 5, 6, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (31, N'PZ3', 2, 24, 125, 60, 2, 4, 5, 13, 5, 10, 176, 300, 2.2, 19.5, 40, 20, 40, 14, 20, 3, 37, 1150, 0, 1, 1, 6, 4, 3, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (32, N'PZ3D', 2, 24, 125, 60, 2, 4, 5, 12, 5, 10, 188, 330, 2.2, 19.5, 35, 35, 35, 15, 21, 3, 37, 1400, 0, 1, 1, 6, 4, 3, 1, 8, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (33, N'PZ3E', 2, 24, 125, 60, 2, 4, 5, 12, 5, 11, 188, 380, 2.2, 19.5, 35, 35, 35, 15, 22, 3, 37, 900, 0, 1, 1, 6, 0, 3, 1, 21, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (34, N'PZ3F', 2, 30, 125, 60, 2, 4, 5, 8, 5, 11, 226, 437, 2.2, 19.5, 38, 38, 38, 16, 22, 3, 37, 1000, 0, 1, 1, 6, 1, 3, 5, 25, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (35, N'Sdkfz251', 2, 6, 400, 90, 2, 2, 3, 3, 5, 12, 54, 100, 1.8, 2.66, 10, 8, 6, 11, 15, 1, 20, 400, 0, 1, 1, 0, 4, 1, 0, 0, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (36, N'Sdkfz251Gun', 2, 6, 90, 90, 2, 3, 3, 3, 5, 13, 60, 110, 1.8, 2.66, 10, 8, 6, 11, 15, 1, 37, 500, 0, 1, 1, 0, 4, 1, 1, 2, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (37, N'M8GHound', 3, 20, 80, 90, 2, 3, 5, 8, 5, 12, 165, 302, 2.7, 2.36, 20, 20, 20, 13, 15, 1, 37, 800, 0, 1, 1, 0, 0, 4, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (38, N'M8GHound2', 3, 25, 80, 90, 2, 3, 5, 5, 5, 13, 189, 347, 2.7, 2.36, 22, 22, 22, 13, 15, 1, 37, 1000, 0, 1, 1, 0, 1, 4, 3, 3, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (39, N'Daimler', 4, 30, 180, 90, 2, 2, 4, 10, 5, 14, 230, 423, 2.7, 5, 24, 24, 24, 14, 16, 1, 40, 1000, 0, 1, 1, 0, 0, 5, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (40, N'Daimler2', 4, 38, 180, 90, 2, 2, 4, 8, 5, 15, 265, 486, 2.7, 5, 26, 26, 26, 14, 16, 1, 40, 1000, 0, 1, 1, 0, 1, 5, 3, 5, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (41, N'T26', 1, 147, 250, 72, 4, 5, 4, 5, 5, 11, 105, 200, 2, 9, 16, 16, 16, 11, 21, 2, 20, 700, 0, 1, 1, 3, 2, 1, 6, 13, 8)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (42, N'M2A4', 3, 24, 90, 72, 2, 5, 4, 9, 5, 10, 198, 376, 2, 11, 35, 25, 30, 11, 20, 2, 37, 1600, 0, 1, 1, 3, 0, 4, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (43, N'M3Stuart', 3, 30, 60, 72, 2, 5, 3, 12, 5, 11, 227, 432, 2, 11, 35, 27, 33, 12, 21, 2, 45, 1500, 0, 1, 1, 3, 1, 4, 3, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (44, N'M5Stuart', 3, 24, 90, 72, 2, 5, 4, 7, 5, 11, 288, 545, 2, 11, 40, 30, 35, 12, 21, 2, 37, 1500, 0, 1, 1, 3, 2, 4, 5, 26, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (45, N'Sexton', 4, 30, 112, 36, 1, 8, 1, 9, 1, 9, 230, 302, 1.33, 11, 22, 14, 18, 19, 24, 5, 88, 1500, 0, 1, 1, 11, 0, 4, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (46, N'Sexton2', 4, 38, 112, 36, 1, 8, 1, 8, 1, 9, 263, 347, 1.33, 11, 25, 17, 21, 18, 26, 5, 88, 1900, 0, 1, 1, 11, 1, 4, 3, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (47, N'Wespe', 2, 46, 40, 44, 1, 7, 1, 9, 1, 10, 323, 423, 1.33, 11, 29, 19, 24, 19, 27, 5, 105, 2000, 0, 1, 1, 11, 0, 5, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (48, N'Wespe2', 2, 57, 40, 44, 1, 7, 1, 8, 1, 10, 369, 486, 1.33, 11, 32, 22, 27, 19, 28, 5, 105, 2000, 0, 1, 1, 11, 1, 5, 3, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (49, N'AlectoMk1', 4, 76, 45, 36, 1, 4, 1, 6, 1, 10, 412, 812, 1.33, 12, 60, 26, 43, 15, 23, 6, 57, 2500, 0, 1, 1, 8, 2, 4, 0, 48, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (50, N'AlectoMk2', 4, 27, 45, 32, 1, 4, 1, 9, 1, 10, 412, 567, 1.33, 12, 60, 25, 42, 16, 23, 6, 57, 3100, 0, 1, 1, 8, 4, 3, 0, 28, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (51, N'T82', 3, 61, 40, 36, 1, 4, 1, 7, 1, 10, 403, 784, 1.33, 12, 59, 25, 42, 16, 25, 6, 57, 2000, 0, 1, 1, 8, 0, 5, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (52, N'T82_2', 3, 76, 45, 36, 1, 4, 1, 6, 1, 10, 461, 902, 1.33, 12, 64, 28, 46, 15, 23, 6, 57, 2000, 0, 1, 1, 8, 1, 5, 5, 5, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (53, N'PZ4', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 346, 500, 1.3, 25, 45, 45, 45, 14, 20, 3, 75, 2400, 0, 1, 1, 6, 4, 5, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (54, N'PZ4C', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 369, 560, 1.3, 25, 45, 45, 45, 15, 21, 3, 75, 3000, 0, 1, 1, 6, 4, 5, 0, 15, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (55, N'PZ4D', 2, 55, 80, 60, 2, 4, 1, 7, 1, 11, 369, 745, 1.3, 25, 45, 45, 45, 15, 22, 3, 75, 1714, 0, 1, 1, 6, 0, 5, 2, 63, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (56, N'PZ4E', 2, 68, 80, 60, 2, 4, 1, 6, 1, 11, 443, 857, 1.3, 28, 48, 48, 48, 16, 22, 3, 75, 1810, 0, 1, 1, 6, 1, 5, 6, 70, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (57, N'T2US', 3, 7, 250, 72, 3, 5, 4, 5, 5, 11, 72, 137, 2, 10, 15, 15, 15, 11, 21, 2, 20, 714, 0, 1, 1, 3, 0, 1, 0, 4, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (58, N'T2E1', 3, 9, 250, 72, 3, 5, 3, 6, 5, 11, 83, 158, 2, 10, 18, 18, 18, 12, 21, 2, 20, 857, 0, 1, 1, 3, 1, 1, 3, 5, 2)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (59, N'BA3', 1, 46, 80, 90, 2, 3, 5, 5, 5, 12, 323, 592, 2.66, 4, 18, 26, 28, 13, 15, 1, 45, 800, 0, 1, 1, 0, 0, 6, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (60, N'BA6', 1, 57, 80, 90, 2, 3, 4, 7, 5, 13, 371, 680, 2.66, 4, 18, 28, 30, 13, 15, 1, 45, 800, 0, 1, 1, 0, 1, 6, 3, 7, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (61, N'CovMK1', 4, 68, 80, 90, 2, 2, 4, 10, 5, 14, 452, 592, 3, 4, 20, 32, 32, 14, 16, 1, 40, 900, 0, 1, 1, 0, 0, 7, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (62, N'CovMK2', 4, 85, 80, 90, 2, 2, 4, 9, 5, 15, 520, 680, 3, 4, 20, 34, 34, 14, 16, 1, 75, 900, 0, 1, 1, 0, 1, 7, 3, 10, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (63, N'PZ38tA', 2, 36, 100, 72, 2, 5, 4, 13, 5, 10, 277, 526, 2, 8, 35, 35, 35, 10, 20, 2, 37, 900, 0, 1, 1, 3, 0, 5, 0, 0, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (64, N'PZ38tB', 2, 46, 100, 72, 2, 5, 3, 15, 5, 10, 318, 605, 2, 11, 38, 38, 38, 11, 20, 2, 37, 900, 0, 1, 1, 3, 1, 5, 3, 5, 4)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (65, N'Valentine2', 4, 82, 140, 72, 2, 5, 5, 8, 5, 11, 387, 737, 2, 11, 40, 40, 40, 11, 21, 2, 40, 1000, 0, 1, 1, 3, 0, 6, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (66, N'Valentine3', 4, 103, 140, 72, 2, 5, 5, 5, 5, 11, 445, 847, 2, 11, 43, 43, 43, 12, 21, 2, 40, 1000, 0, 1, 1, 3, 1, 6, 3, 6, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (67, N'Bison1', 2, 68, 30, 36, 1, 8, 1, 9, 1, 9, 452, 592, 1.33, 11, 36, 24, 30, 19, 24, 5, 150, 1100, 0, 1, 1, 11, 0, 6, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (68, N'Bison2', 2, 85, 30, 36, 1, 8, 1, 8, 1, 9, 516, 680, 1.33, 11, 40, 26, 33, 18, 26, 5, 150, 1100, 0, 1, 1, 11, 1, 6, 3, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (69, N'M7Priest', 3, 103, 32, 44, 1, 7, 1, 11, 1, 10, 632, 828, 1.3, 11, 43, 29, 36, 19, 27, 5, 105, 1200, 0, 1, 1, 11, 0, 7, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (70, N'M7A1Priest', 3, 128, 32, 44, 1, 7, 1, 10, 1, 10, 723, 952, 1.3, 11, 47, 31, 39, 19, 28, 5, 105, 1200, 0, 1, 1, 11, 1, 7, 3, 15, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (71, N'SU76', 1, 114, 40, 24, 1, 4, 1, 7, 1, 10, 565, 1098, 1.33, 12, 69, 29, 49, 17, 25, 6, 76, 1500, 0, 1, 1, 8, 1, 6, 5, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (72, N'SU76M', 1, 114, 45, 24, 1, 4, 1, 8, 1, 10, 645, 1262, 1.33, 12, 74, 32, 53, 16, 23, 6, 76, 1500, 0, 1, 1, 8, 1, 6, 5, 10, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (73, N'Marder1', 2, 137, 40, 30, 1, 4, 1, 8, 1, 10, 791, 1537, 1.33, 12, 84, 36, 60, 16, 25, 6, 75, 1600, 0, 1, 1, 8, 0, 7, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (74, N'Marder2', 2, 171, 40, 30, 1, 4, 1, 7, 1, 10, 904, 1767, 1.33, 12, 78, 34, 56, 17, 25, 6, 75, 1600, 0, 1, 1, 8, 1, 7, 5, 4, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (75, N'T28A', 1, 36, 80, 60, 2, 4, 1, 8, 1, 10, 263, 532, 1.2, 28, 50, 30, 40, 14, 20, 3, 76, 1400, 0, 1, 1, 6, 0, 4, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (76, N'T28B', 1, 46, 80, 60, 2, 4, 1, 7, 1, 10, 316, 612, 1.2, 28, 50, 36, 43, 15, 21, 3, 76, 1400, 0, 1, 1, 6, 1, 4, 4, 2, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (77, N'M7', 3, 82, 80, 60, 2, 4, 1, 7, 1, 11, 516, 1043, 1.2, 28, 50, 50, 50, 15, 22, 3, 75, 1500, 0, 1, 1, 6, 0, 6, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (78, N'M7A1', 3, 103, 80, 60, 2, 4, 1, 6, 1, 11, 620, 1199, 1.2, 28, 50, 50, 50, 16, 22, 3, 75, 1500, 0, 1, 1, 6, 1, 6, 4, 6, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (79, N'DW2A', 2, 107, 60, 48, 2, 4, 1, 9, 1, 10, 678, 1300, 1.1, 30, 60, 60, 60, 14, 20, 4, 75, 3800, 0, 1, 1, 6, 0, 6, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (80, N'DW2B', 2, 134, 60, 48, 2, 4, 1, 9, 1, 10, 774, 1495, 1.1, 30, 65, 65, 65, 15, 21, 4, 75, 3800, 0, 1, 1, 6, 1, 6, 5, 60, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (81, N'M6', 3, 134, 60, 48, 2, 4, 1, 8, 1, 11, 968, 1820, 1.1, 57, 70, 70, 70, 15, 22, 4, 76, 4000, 0, 1, 1, 6, 2, 6, 9, 80, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (82, N'T50_1', 1, 82, 100, 72, 3, 5, 4, 16, 5, 10, 542, 737, 2, 14, 45, 45, 45, 10, 20, 2, 45, 900, 0, 1, 1, 3, 0, 7, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (83, N'T50_2', 1, 103, 100, 72, 3, 5, 3, 17, 5, 10, 623, 847, 2, 14, 48, 48, 48, 11, 20, 2, 45, 900, 0, 1, 1, 3, 1, 7, 3, 5, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (84, N'Grille1', 2, 110, 30, 36, 1, 8, 2, 13, 1, 9, 1240, 1623, 1.33, 11, 50, 34, 42, 19, 24, 5, 150, 1100, 0, 1, 1, 11, 0, 9, 0, 0, 8)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (85, N'T34_1', 1, 140, 80, 60, 2, 4, 1, 8, 1, 10, 723, 1460, 1.33, 28, 60, 40, 50, 14, 20, 3, 76, 1400, 0, 1, 1, 6, 0, 7, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (86, N'T34_2', 1, 140, 80, 60, 2, 4, 1, 7, 1, 10, 867, 1679, 1.33, 28, 60, 40, 50, 15, 21, 3, 76, 1400, 0, 1, 1, 6, 1, 7, 4, 2, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (87, N'SU85_1', 1, 160, 40, 30, 1, 4, 1, 7, 1, 10, 1129, 2228, 1.33, 13, 70, 38, 64, 16, 25, 6, 85, 1600, 0, 1, 1, 8, 2, 7, 10, 132, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (88, N'Churchill1', 4, 380, 60, 48, 2, 4, 1, 9, 1, 10, 949, 1820, 1, 30, 70, 57, 65, 14, 20, 4, 75, 3800, 0, 1, 1, 6, 0, 7, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (89, N'Churchill2', 4, 380, 60, 48, 2, 4, 1, 9, 1, 10, 1084, 2093, 1, 30, 70, 65, 66, 15, 21, 4, 75, 3800, 0, 1, 1, 6, 1, 7, 5, 85, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (90, N'Puma1', 2, 80, 80, 90, 4, 3, 5, 5, 5, 12, 632, 1160, 2.66, 5, 40, 32, 36, 13, 15, 1, 50, 800, 0, 1, 1, 0, 0, 8, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (91, N'Puma2', 2, 80, 80, 90, 4, 3, 4, 8, 5, 13, 727, 1333, 2.66, 5, 40, 36, 38, 13, 15, 1, 50, 800, 0, 1, 1, 0, 1, 8, 3, 10, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (92, N'AEC', 4, 90, 80, 90, 4, 2, 5, 5, 5, 14, 885, 1623, 3, 5, 50, 36, 40, 14, 16, 1, 75, 900, 0, 1, 1, 0, 2, 9, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (93, N'M24_1', 3, 100, 140, 72, 3, 5, 5, 12, 5, 11, 759, 1444, 2, 15, 60, 40, 50, 11, 21, 2, 75, 1000, 0, 1, 1, 3, 0, 8, 0, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (94, N'M24_2', 3, 100, 140, 72, 3, 5, 5, 8, 5, 11, 873, 1661, 2, 15, 60, 46, 53, 12, 21, 2, 75, 1000, 0, 1, 1, 3, 1, 8, 3, 10, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (95, N'Bishop_1', 4, 110, 30, 36, 1, 8, 2, 13, 1, 9, 885, 1160, 1.33, 11, 50, 34, 42, 19, 24, 5, 150, 1100, 0, 1, 1, 11, 0, 8, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (96, N'Bishop_2', 4, 110, 30, 36, 1, 8, 2, 11, 1, 9, 1012, 1333, 1.33, 11, 54, 36, 45, 18, 26, 5, 150, 1100, 0, 1, 1, 11, 1, 8, 3, 20, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (97, N'Sherman1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1012, 2044, 1.33, 28, 65, 55, 60, 15, 22, 3, 75, 1500, 0, 1, 1, 6, 0, 8, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (98, N'Sherman2', 3, 150, 80, 60, 2, 4, 1, 8, 1, 11, 1214, 2350, 1.33, 28, 68, 58, 63, 16, 22, 3, 75, 1500, 0, 1, 1, 6, 1, 8, 4, 5, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (99, N'Archer_1', 4, 150, 45, 24, 1, 4, 1, 9, 1, 10, 1107, 2151, 1.33, 13, 88, 38, 63, 15, 23, 6, 76, 1500, 0, 1, 1, 8, 0, 8, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (100, N'Archer_2', 4, 150, 45, 24, 1, 4, 1, 8, 1, 10, 1265, 2474, 1.33, 13, 94, 40, 67, 16, 23, 6, 76, 1500, 0, 1, 1, 8, 1, 8, 4, 5, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (101, N'KV1', 1, 400, 60, 48, 2, 4, 1, 11, 1, 11, 1328, 2548, 1.1, 53, 90, 70, 80, 15, 22, 4, 76, 4000, 0, 1, 1, 6, 0, 8, 0, 0, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (102, N'KV1S', 1, 400, 60, 48, 2, 4, 1, 10, 1, 11, 1518, 2930, 1.4, 42, 82, 63, 65, 16, 22, 4, 76, 4000, 0, 1, 1, 6, 1, 8, 5, 40, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (103, N'IS1', 1, 400, 60, 48, 2, 4, 1, 9, 1, 11, 1897, 3567, 1.1, 50, 110, 70, 90, 16, 22, 4, 76, 4000, 0, 1, 1, 6, 2, 8, 10, 161, 6)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (104, N'AECMK1', 4, 90, 80, 90, 4, 2, 4, 8, 5, 14, 1018, 1867, 3, 5, 50, 40, 42, 14, 16, 1, 75, 900, 0, 1, 1, 0, 2, 9, 3, 0, 5)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (105, N'T21_1', 3, 100, 140, 72, 3, 5, 5, 12, 5, 11, 1063, 2022, 2, 15, 65, 45, 55, 11, 21, 2, 75, 1000, 0, 1, 1, 3, 0, 9, 0, 0, 14)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (106, N'T21_2', 3, 100, 140, 72, 3, 5, 5, 8, 5, 11, 1222, 2325, 2, 15, 65, 51, 58, 12, 21, 2, 75, 1000, 0, 1, 1, 3, 1, 9, 3, 40, 14)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (107, N'Grille2', 2, 110, 30, 36, 1, 8, 2, 11, 1, 9, 1417, 1867, 1.33, 11, 54, 36, 45, 18, 26, 5, 150, 1100, 0, 1, 1, 11, 1, 9, 3, 50, 8)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (108, N'Pershing1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1417, 2861, 1.33, 28, 70, 60, 65, 15, 22, 3, 75, 1500, 0, 1, 1, 6, 0, 9, 0, 0, 14)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (109, N'Pershing2', 3, 150, 80, 60, 2, 4, 1, 8, 1, 11, 1700, 3290, 1.33, 28, 73, 63, 68, 16, 22, 3, 75, 1500, 0, 1, 1, 6, 1, 9, 4, 0, 14)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (110, N'ChurchillAT1', 4, 150, 45, 24, 1, 4, 1, 9, 1, 10, 1550, 3012, 1.33, 13, 98, 42, 70, 15, 23, 6, 76, 1500, 0, 1, 1, 8, 0, 9, 0, 0, 8)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (111, N'ChurchillAT2', 4, 150, 45, 24, 1, 4, 1, 8, 1, 10, 1771, 3464, 1.33, 13, 104, 44, 74, 16, 23, 6, 76, 1500, 0, 1, 1, 8, 1, 9, 4, 0, 8)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (112, N'Tiger1', 2, 400, 60, 48, 2, 4, 1, 11, 1, 11, 1859, 3567, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 4000, 0, 1, 1, 6, 0, 9, 0, 0, 14)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx]) VALUES (113, N'Tiger2', 2, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2125, 4102, 1.1, 42, 105, 85, 95, 16, 22, 4, 85, 4000, 0, 1, 1, 6, 1, 9, 5, 0, 14)
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] OFF
GO
SET IDENTITY_INSERT [dbo].[Evolves] ON 

GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (194, 1, N'[{"type":0,"num":600},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (195, 2, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":9},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (196, 3, N'[{"type":0,"num":200},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (197, 4, N'[{"type":0,"num":600},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (198, 5, N'[{"type":0,"num":1400},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (199, 6, N'[{"type":0,"num":1900},{"type":7,"item":21,"num":3},{"type":7,"item":22,"num":5},{"type":7,"item":23,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (200, 9, N'[{"type":0,"num":1400},{"type":7,"item":21,"num":3},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (201, 10, N'[{"type":0,"num":1900},{"type":7,"item":21,"num":5},{"type":7,"item":22,"num":5},{"type":7,"item":23,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (202, 11, N'[{"type":0,"num":200},{"type":7,"item":21,"num":2},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (203, 12, N'[{"type":0,"num":600},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (204, 13, N'[{"type":0,"num":1400},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":2},{"type":7,"item":24,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (205, 14, N'[{"type":0,"num":1900},{"type":7,"item":21,"num":3},{"type":7,"item":23,"num":2},{"type":7,"item":24,"num":3},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (206, 17, N'[{"type":0,"num":3000},{"type":7,"item":21,"num":3},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3},{"type":7,"item":25,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (207, 18, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":6},{"type":7,"item":23,"num":6},{"type":7,"item":25,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (208, 19, N'[{"type":0,"num":3000},{"type":7,"item":21,"num":5},{"type":7,"item":22,"num":4},{"type":7,"item":23,"num":4},{"type":7,"item":26,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (209, 20, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":7},{"type":7,"item":22,"num":7},{"type":7,"item":23,"num":7},{"type":7,"item":26,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (210, 21, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":7},{"type":7,"item":22,"num":7},{"type":7,"item":23,"num":7},{"type":7,"item":26,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (211, 23, N'[{"type":0,"num":1900},{"type":7,"item":21,"num":3},{"type":7,"item":23,"num":2},{"type":7,"item":24,"num":3},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (212, 24, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":52},{"type":7,"item":22,"num":51},{"type":7,"item":23,"num":51},{"type":7,"item":25,"num":13},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (213, 25, N'[{"type":0,"num":3000},{"type":7,"item":21,"num":8},{"type":7,"item":23,"num":3},{"type":7,"item":24,"num":6},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (214, 26, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":12},{"type":7,"item":23,"num":5},{"type":7,"item":24,"num":11},{"type":7,"item":27,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (215, 27, N'[{"type":0,"num":3000},{"type":7,"item":21,"num":11},{"type":7,"item":23,"num":7},{"type":7,"item":24,"num":5},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (216, 28, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":15},{"type":7,"item":23,"num":9},{"type":7,"item":24,"num":6},{"type":7,"item":27,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (217, 29, N'[{"type":0,"num":5400},{"type":7,"item":21,"num":19},{"type":7,"item":23,"num":11},{"type":7,"item":24,"num":8},{"type":7,"item":27,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (218, 30, N'[{"type":0,"num":6500},{"type":7,"item":21,"num":35},{"type":7,"item":23,"num":20},{"type":7,"item":24,"num":14},{"type":7,"item":27,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (219, 33, N'[{"type":0,"num":3000},{"type":7,"item":21,"num":6},{"type":7,"item":22,"num":7},{"type":7,"item":23,"num":7},{"type":7,"item":25,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (220, 34, N'[{"type":0,"num":3800},{"type":7,"item":21,"num":9},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (221, 37, N'[{"type":0,"num":5400},{"type":7,"item":21,"num":4},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (222, 38, N'[{"type":0,"num":6500},{"type":7,"item":21,"num":9},{"type":7,"item":22,"num":16},{"type":7,"item":23,"num":16},{"type":7,"item":25,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (223, 39, N'[{"type":0,"num":9100},{"type":7,"item":21,"num":11},{"type":7,"item":22,"num":21},{"type":7,"item":23,"num":21},{"type":7,"item":25,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (224, 40, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":20},{"type":7,"item":22,"num":40},{"type":7,"item":23,"num":40},{"type":7,"item":25,"num":9},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (225, 42, N'[{"type":0,"num":5400},{"type":7,"item":21,"num":10},{"type":7,"item":22,"num":10},{"type":7,"item":23,"num":10},{"type":7,"item":26,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (226, 43, N'[{"type":0,"num":6500},{"type":7,"item":21,"num":17},{"type":7,"item":22,"num":16},{"type":7,"item":23,"num":16},{"type":7,"item":26,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (227, 45, N'[{"type":0,"num":5400},{"type":7,"item":21,"num":12},{"type":7,"item":23,"num":6},{"type":7,"item":24,"num":12},{"type":7,"item":27,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (228, 46, N'[{"type":0,"num":6500},{"type":7,"item":21,"num":24},{"type":7,"item":23,"num":11},{"type":7,"item":24,"num":22},{"type":7,"item":27,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (229, 47, N'[{"type":0,"num":9100},{"type":7,"item":21,"num":32},{"type":7,"item":23,"num":15},{"type":7,"item":24,"num":30},{"type":7,"item":27,"num":6},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (230, 48, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":55},{"type":7,"item":23,"num":27},{"type":7,"item":24,"num":54},{"type":7,"item":27,"num":10},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (231, 49, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":85},{"type":7,"item":23,"num":51},{"type":7,"item":24,"num":34},{"type":7,"item":27,"num":15},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (232, 51, N'[{"type":0,"num":9100},{"type":7,"item":21,"num":46},{"type":7,"item":23,"num":28},{"type":7,"item":24,"num":19},{"type":7,"item":27,"num":9},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (233, 52, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":85},{"type":7,"item":23,"num":51},{"type":7,"item":24,"num":34},{"type":7,"item":27,"num":15},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (234, 55, N'[{"type":0,"num":9100},{"type":7,"item":21,"num":31},{"type":7,"item":22,"num":31},{"type":7,"item":23,"num":31},{"type":7,"item":25,"num":7},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (235, 56, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":52},{"type":7,"item":22,"num":51},{"type":7,"item":23,"num":51},{"type":7,"item":25,"num":13},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (236, 57, N'[{"type":0,"num":200},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (237, 58, N'[{"type":0,"num":600},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (238, 59, N'[{"type":0,"num":15100},{"type":7,"item":21,"num":29},{"type":7,"item":22,"num":57},{"type":7,"item":23,"num":57},{"type":7,"item":25,"num":11},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (239, 60, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":52},{"type":7,"item":22,"num":102},{"type":7,"item":23,"num":102},{"type":7,"item":25,"num":23},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (240, 61, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":77},{"type":7,"item":22,"num":150},{"type":7,"item":23,"num":150},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (241, 62, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":136},{"type":7,"item":22,"num":270},{"type":7,"item":23,"num":270},{"type":7,"item":25,"num":51},{"type":7,"item":28,"num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (242, 63, N'[{"type":0,"num":9100},{"type":7,"item":21,"num":24},{"type":7,"item":22,"num":23},{"type":7,"item":23,"num":23},{"type":7,"item":26,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (243, 64, N'[{"type":0,"num":10700},{"type":7,"item":21,"num":40},{"type":7,"item":22,"num":39},{"type":7,"item":23,"num":39},{"type":7,"item":26,"num":12},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (244, 65, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":156},{"type":7,"item":22,"num":149},{"type":7,"item":23,"num":149},{"type":7,"item":26,"num":37},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (245, 66, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":277},{"type":7,"item":22,"num":268},{"type":7,"item":23,"num":268},{"type":7,"item":26,"num":61},{"type":7,"item":28,"num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (246, 67, N'[{"type":0,"num":15100},{"type":7,"item":21,"num":82},{"type":7,"item":23,"num":41},{"type":7,"item":24,"num":82},{"type":7,"item":27,"num":19},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (247, 68, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":145},{"type":7,"item":23,"num":72},{"type":7,"item":24,"num":144},{"type":7,"item":27,"num":28},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (248, 69, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":213},{"type":7,"item":23,"num":106},{"type":7,"item":24,"num":212},{"type":7,"item":27,"num":43},{"type":7,"item":28,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (249, 70, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":380},{"type":7,"item":23,"num":190},{"type":7,"item":24,"num":380},{"type":7,"item":27,"num":71},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (250, 71, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":226},{"type":7,"item":23,"num":136},{"type":7,"item":24,"num":91},{"type":7,"item":27,"num":36},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (251, 72, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":226},{"type":7,"item":23,"num":136},{"type":7,"item":24,"num":91},{"type":7,"item":27,"num":36},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (252, 73, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":329},{"type":7,"item":23,"num":198},{"type":7,"item":24,"num":132},{"type":7,"item":27,"num":53},{"type":7,"item":28,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (253, 74, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":590},{"type":7,"item":23,"num":354},{"type":7,"item":24,"num":236},{"type":7,"item":27,"num":92},{"type":7,"item":28,"num":17}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (254, 75, N'[{"type":0,"num":5400},{"type":7,"item":21,"num":15},{"type":7,"item":22,"num":13},{"type":7,"item":23,"num":13},{"type":7,"item":25,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (255, 76, N'[{"type":0,"num":6500},{"type":7,"item":21,"num":23},{"type":7,"item":22,"num":21},{"type":7,"item":23,"num":21},{"type":7,"item":25,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (256, 77, N'[{"type":0,"num":15100},{"type":7,"item":21,"num":79},{"type":7,"item":22,"num":78},{"type":7,"item":23,"num":78},{"type":7,"item":25,"num":18},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (257, 78, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":140},{"type":7,"item":22,"num":134},{"type":7,"item":23,"num":134},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (258, 79, N'[{"type":0,"num":15100},{"type":7,"item":21,"num":102},{"type":7,"item":22,"num":100},{"type":7,"item":23,"num":100},{"type":7,"item":26,"num":24},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (259, 80, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":182},{"type":7,"item":22,"num":177},{"type":7,"item":23,"num":177},{"type":7,"item":26,"num":40},{"type":7,"item":28,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (260, 81, N'[{"type":0,"num":17700},{"type":7,"item":21,"num":182},{"type":7,"item":22,"num":177},{"type":7,"item":23,"num":177},{"type":7,"item":26,"num":40},{"type":7,"item":28,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (261, 82, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":156},{"type":7,"item":22,"num":149},{"type":7,"item":23,"num":149},{"type":7,"item":26,"num":37},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (262, 83, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":277},{"type":7,"item":22,"num":268},{"type":7,"item":23,"num":268},{"type":7,"item":26,"num":61},{"type":7,"item":28,"num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (263, 85, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":207},{"type":7,"item":22,"num":201},{"type":7,"item":23,"num":201},{"type":7,"item":25,"num":49},{"type":7,"item":28,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (264, 86, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":369},{"type":7,"item":22,"num":359},{"type":7,"item":23,"num":359},{"type":7,"item":25,"num":81},{"type":7,"item":28,"num":16}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (265, 87, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":590},{"type":7,"item":23,"num":354},{"type":7,"item":24,"num":236},{"type":7,"item":27,"num":92},{"type":7,"item":28,"num":17}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (266, 88, N'[{"type":0,"num":25600},{"type":7,"item":21,"num":269},{"type":7,"item":22,"num":259},{"type":7,"item":23,"num":259},{"type":7,"item":26,"num":63},{"type":7,"item":28,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (267, 89, N'[{"type":0,"num":30000},{"type":7,"item":21,"num":482},{"type":7,"item":22,"num":469},{"type":7,"item":23,"num":469},{"type":7,"item":26,"num":107},{"type":7,"item":28,"num":21}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (268, 90, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":202},{"type":7,"item":22,"num":400},{"type":7,"item":23,"num":400},{"type":7,"item":25,"num":78},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (269, 91, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":358},{"type":7,"item":22,"num":715},{"type":7,"item":23,"num":715},{"type":7,"item":25,"num":138},{"type":7,"item":28,"num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (271, 93, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":408},{"type":7,"item":22,"num":395},{"type":7,"item":23,"num":395},{"type":7,"item":26,"num":93},{"type":7,"item":28,"num":17}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (272, 94, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":731},{"type":7,"item":22,"num":710},{"type":7,"item":23,"num":710},{"type":7,"item":26,"num":161},{"type":7,"item":28,"num":32}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (273, 95, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":558},{"type":7,"item":23,"num":279},{"type":7,"item":24,"num":558},{"type":7,"item":27,"num":108},{"type":7,"item":28,"num":20}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (274, 96, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":1002},{"type":7,"item":23,"num":501},{"type":7,"item":24,"num":1002},{"type":7,"item":27,"num":190},{"type":7,"item":28,"num":37}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (275, 97, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":541},{"type":7,"item":22,"num":525},{"type":7,"item":23,"num":525},{"type":7,"item":25,"num":123},{"type":7,"item":28,"num":23}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (276, 98, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":976},{"type":7,"item":22,"num":946},{"type":7,"item":23,"num":946},{"type":7,"item":25,"num":218},{"type":7,"item":28,"num":42}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (277, 99, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":871},{"type":7,"item":23,"num":523},{"type":7,"item":24,"num":349},{"type":7,"item":27,"num":130},{"type":7,"item":28,"num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (278, 100, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":1564},{"type":7,"item":23,"num":938},{"type":7,"item":24,"num":626},{"type":7,"item":27,"num":239},{"type":7,"item":28,"num":46}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (279, 101, N'[{"type":0,"num":45000},{"type":7,"item":21,"num":712},{"type":7,"item":22,"num":690},{"type":7,"item":23,"num":690},{"type":7,"item":26,"num":157},{"type":7,"item":28,"num":31}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (280, 102, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":1280},{"type":7,"item":22,"num":1241},{"type":7,"item":23,"num":1241},{"type":7,"item":26,"num":282},{"type":7,"item":28,"num":56}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (281, 103, N'[{"type":0,"num":52900},{"type":7,"item":21,"num":1280},{"type":7,"item":22,"num":1241},{"type":7,"item":23,"num":1241},{"type":7,"item":26,"num":282},{"type":7,"item":28,"num":56}]')
GO
SET IDENTITY_INSERT [dbo].[Evolves] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":3,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":95,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":5,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":225,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":12,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":300,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":16,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:22,"money":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:22,"gold":3,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:22,"money":95,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:22,"gold":5,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":225,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":12,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":300,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":16,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:23,"money":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:23,"gold":3,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:23,"money":95,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:23,"gold":5,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:23,"money":225,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:23,"gold":12,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:23,"money":300,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:23,"gold":16,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:24,"money":60,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:24,"gold":3,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:24,"money":95,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:24,"gold":5,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:24,"money":225,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:24,"gold":12,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:24,"money":300,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:24,"gold":16,"amount":35}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:25,"money":355,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:25,"gold":19,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:25,"money":430,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:25,"gold":23,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:25,"money":855,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:25,"gold":46,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:25,"money":2120,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:25,"gold":114,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:25,"money":2545,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:25,"gold":137,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:26,"money":355,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:26,"gold":19,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:26,"money":430,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:26,"gold":23,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:26,"money":855,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:26,"gold":46,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:26,"money":2120,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:26,"gold":114,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:26,"money":2545,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:26,"gold":137,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:27,"money":355,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:27,"gold":19,"amount":4}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:27,"money":430,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:27,"gold":23,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:27,"money":855,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:27,"gold":46,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:27,"money":2120,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:27,"gold":114,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:27,"money":2545,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:27,"gold":137,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:28,"money":2120,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:28,"gold":114,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:28,"money":6355,"amount":15}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:28,"gold":342,"amount":15}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:28,"money":8470,"amount":20}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:28,"gold":456,"amount":20}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:28,"money":19040,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:28,"gold":1025,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:28,"money":19040,"amount":60}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:28,"gold":1025,"amount":60}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:28,"money":19040,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:28,"gold":1025,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:28,"money":19040,"amount":125}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:28,"gold":1025,"amount":125}', 6)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (214, 1, 2, N'{"ident":"shop_slot_2_1","items":[100,108,116,124],"weights":[34,23,30,14]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (215, 2, 2, N'{"ident":"shop_slot_2_2","items":[100,108,116,124,134,144,154],"weights":[34,23,30,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (216, 3, 2, N'{"ident":"shop_slot_2_3","items":[100,108,116,124,132,134,142,144,152,154],"weights":[35,19,29,11,2,2,1,1,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (217, 4, 2, N'{"ident":"shop_slot_2_4","items":[100,102,108,110,116,118,124,126,132,134,136,142,144,146,152,154,156,162],"weights":[35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (218, 6, 2, N'{"ident":"shop_slot_2_6","items":[100,102,104,108,110,112,116,118,120,124,126,128,132,134,136,140,142,144,146,150,152,154,156,160,162,164],"weights":[34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (219, 7, 2, N'{"ident":"shop_slot_2_7","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (220, 8, 2, N'{"ident":"shop_slot_2_8","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (221, 11, 2, N'{"ident":"shop_slot_2_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (222, 13, 2, N'{"ident":"shop_slot_2_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (223, 15, 2, N'{"ident":"shop_slot_2_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (224, 17, 2, N'{"ident":"shop_slot_2_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (225, 1, 3, N'{"ident":"shop_slot_3_1","items":[100,108,116,124],"weights":[34,23,30,14]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (226, 2, 3, N'{"ident":"shop_slot_3_2","items":[100,108,116,124,134,144,154],"weights":[34,23,30,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (227, 3, 3, N'{"ident":"shop_slot_3_3","items":[100,108,116,124,132,134,142,144,152,154],"weights":[35,19,29,11,2,2,1,1,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (228, 4, 3, N'{"ident":"shop_slot_3_4","items":[100,102,108,110,116,118,124,126,132,134,136,142,144,146,152,154,156,162],"weights":[35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (229, 6, 3, N'{"ident":"shop_slot_3_6","items":[100,102,104,108,110,112,116,118,120,124,126,128,132,134,136,140,142,144,146,150,152,154,156,160,162,164],"weights":[34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (230, 7, 3, N'{"ident":"shop_slot_3_7","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (231, 8, 3, N'{"ident":"shop_slot_3_8","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (232, 11, 3, N'{"ident":"shop_slot_3_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (233, 13, 3, N'{"ident":"shop_slot_3_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (234, 15, 3, N'{"ident":"shop_slot_3_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (235, 17, 3, N'{"ident":"shop_slot_3_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (236, 1, 4, N'{"ident":"shop_slot_4_1","items":[101,109,117,125,135,145,155],"weights":[1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (237, 2, 4, N'{"ident":"shop_slot_4_2","items":[101,109,117,125,133,135,143,145,153,155],"weights":[1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (238, 3, 4, N'{"ident":"shop_slot_4_3","items":[101,103,109,111,117,119,125,127,133,135,137,143,145,147,153,155,157,163],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (239, 4, 4, N'{"ident":"shop_slot_4_4","items":[101,103,105,109,111,113,117,119,121,125,127,129,133,135,137,141,143,145,147,151,153,155,157,161,163,165],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (240, 6, 4, N'{"ident":"shop_slot_4_6","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (241, 7, 4, N'{"ident":"shop_slot_4_7","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (242, 8, 4, N'{"ident":"shop_slot_4_8","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (243, 11, 4, N'{"ident":"shop_slot_4_11","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (244, 13, 4, N'{"ident":"shop_slot_4_13","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (245, 15, 4, N'{"ident":"shop_slot_4_15","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (246, 17, 4, N'{"ident":"shop_slot_4_17","items":[101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (247, 1, 5, N'{"ident":"shop_slot_5_1","items":[100,108,116,124,101,109,117,125],"weights":[34,23,30,14,34,23,30,14]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (248, 2, 5, N'{"ident":"shop_slot_5_2","items":[100,108,116,124,134,144,154,101,109,117,125,135,145,155],"weights":[34,23,30,14,0,0,0,34,23,30,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (249, 3, 5, N'{"ident":"shop_slot_5_3","items":[100,108,116,124,132,134,142,144,152,154,101,109,117,125,133,135,143,145,153,155],"weights":[35,19,29,11,2,2,1,1,2,2,35,19,29,11,2,2,1,1,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (250, 4, 5, N'{"ident":"shop_slot_5_4","items":[100,102,108,110,116,118,124,126,132,134,136,142,144,146,152,154,156,162,101,103,109,111,117,119,125,127,133,135,137,143,145,147,153,155,157,163],"weights":[35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0,35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (251, 6, 5, N'{"ident":"shop_slot_5_6","items":[100,102,104,108,110,112,116,118,120,124,126,128,132,134,136,140,142,144,146,150,152,154,156,160,162,164,101,103,105,109,111,113,117,119,121,125,127,129,133,135,137,141,143,145,147,151,153,155,157,161,163,165],"weights":[34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0,34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (252, 7, 5, N'{"ident":"shop_slot_5_7","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0,34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (253, 8, 5, N'{"ident":"shop_slot_5_8","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0,34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (254, 11, 5, N'{"ident":"shop_slot_5_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1,33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (255, 13, 5, N'{"ident":"shop_slot_5_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (256, 15, 5, N'{"ident":"shop_slot_5_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (257, 17, 5, N'{"ident":"shop_slot_5_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (258, 1, 6, N'{"ident":"shop_slot_6_1","items":[100,108,116,124,101,109,117,125],"weights":[34,23,30,14,34,23,30,14]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (259, 2, 6, N'{"ident":"shop_slot_6_2","items":[100,108,116,124,134,144,154,101,109,117,125,135,145,155],"weights":[34,23,30,14,0,0,0,34,23,30,14,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (260, 3, 6, N'{"ident":"shop_slot_6_3","items":[100,108,116,124,132,134,142,144,152,154,101,109,117,125,133,135,143,145,153,155],"weights":[35,19,29,11,2,2,1,1,2,2,35,19,29,11,2,2,1,1,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (261, 4, 6, N'{"ident":"shop_slot_6_4","items":[100,102,108,110,116,118,124,126,132,134,136,142,144,146,152,154,156,162,101,103,109,111,117,119,125,127,133,135,137,143,145,147,153,155,157,163],"weights":[35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0,35,35,19,19,29,29,11,11,2,2,2,1,1,1,2,2,2,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (262, 6, 6, N'{"ident":"shop_slot_6_6","items":[100,102,104,108,110,112,116,118,120,124,126,128,132,134,136,140,142,144,146,150,152,154,156,160,162,164,101,103,105,109,111,113,117,119,121,125,127,129,133,135,137,141,143,145,147,151,153,155,157,161,163,165],"weights":[34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0,34,34,34,17,17,17,27,27,27,12,12,12,4,4,4,4,2,2,2,2,5,5,5,5,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (263, 7, 6, N'{"ident":"shop_slot_6_7","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0,34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (264, 8, 6, N'{"ident":"shop_slot_6_8","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0,34,34,34,34,17,17,17,17,27,27,27,27,11,11,11,11,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (265, 11, 6, N'{"ident":"shop_slot_6_11","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1,33,33,33,33,20,20,20,20,28,28,28,28,9,9,9,9,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (266, 13, 6, N'{"ident":"shop_slot_6_13","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (267, 15, 6, N'{"ident":"shop_slot_6_15","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (268, 17, 6, N'{"ident":"shop_slot_6_17","items":[100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,166,101,103,105,107,109,111,113,115,117,119,121,123,125,127,129,131,133,135,137,139,141,143,145,147,149,151,153,155,157,159,161,163,165,167],"weights":[33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1,33,33,33,33,20,20,20,20,29,29,29,29,9,9,9,9,2,2,2,2,2,3,3,3,3,3,2,2,2,2,2,1,1]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
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
SET IDENTITY_INSERT [dbo].[Offers] ON 

GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1, N'com.iron5studio.iron5.money_offer_01', N'money_offer_01', 100, 100, 0, 15000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (2, N'com.iron5studio.iron5.money_offer_02', N'money_offer_02', 200, 200, 0, 65000, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (3, N'com.iron5studio.iron5.gold_offer_01', N'gold_offer_01', 0.99, 0.99, 1, 500, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (4, N'com.iron5studio.iron5.gold_offer_02', N'gold_offer_02', 3.99, 3.99, 1, 2100, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (5, N'com.iron5studio.iron5.gold_offer_03', N'gold_offer_03', 10.99, 10.99, 1, 6000, 0, 0, 1, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (6, N'com.iron5studio.iron5.gold_offer_04', N'gold_offer_04', 27.99, 27.99, 1, 15000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (7, N'com.iron5studio.iron5.gold_offer_05', N'gold_offer_05', 54.99, 54.99, 1, 31000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (8, N'com.iron5studio.iron5.gold_offer_06', N'gold_offer_06', 99.99, 99.99, 1, 56000, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1002, N'com.iron5studio.iron5.beginnerpack', N'beginner', 5.99, 5.99, 1, 3000, 0, 0, 0, 0)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1003, N'com.iron5studio.iron5.tank2tier', N'tank2tier', 0.99, 0.99, 1, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1004, N'com.iron5studio.iron5.gold_offer_01_discount', N'gold_offer_01', 0.99, 0.99, 1, 625, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1005, N'com.iron5studio.iron5.gold_offer_02_discount', N'gold_offer_02', 3.99, 3.99, 1, 2625, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1006, N'com.iron5studio.iron5.gold_offer_03_discount', N'gold_offer_03', 10.99, 10.99, 1, 7500, 0, 1, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1007, N'com.iron5studio.iron5.gold_offer_04_discount', N'gold_offer_04', 27.99, 27.99, 1, 18750, 0, 0, 1, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1008, N'com.iron5studio.iron5.gold_offer_05_discount', N'gold_offer_05', 54.99, 54.99, 1, 38750, 0, 0, 0, 1)
GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1009, N'com.iron5studio.iron5.gold_offer_06_discount', N'gold_offer_06', 99.99, 99.99, 1, 70000, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[Quests] ON 

GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (1, 1, 1, 0, 5, 16, 0, 0, 0, 0, 0, 3300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (2, 1, 1, 0, 5, 16, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (3, 1, 1, 0, 5, 16, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (4, 1, 1, 1, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (5, 1, 1, 1, 5, 24, 0, 0, 0, 0, 0, 3300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (6, 1, 1, 1, 5, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (7, 1, 1, 2, 5, 48, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (8, 1, 1, 2, 5, 48, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (9, 1, 1, 2, 5, 48, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (10, 1, 1, 2, 5, 48, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (11, 2, 2, 0, 5, 20, 0, 0, 0, 0, 0, 4625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (12, 2, 2, 0, 5, 20, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (13, 2, 2, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (14, 2, 2, 1, 5, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (15, 2, 2, 1, 5, 30, 0, 0, 0, 0, 0, 4625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 5, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (16, 2, 2, 1, 5, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (17, 2, 2, 2, 5, 60, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (18, 2, 2, 2, 5, 60, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (19, 2, 2, 2, 5, 60, 0, 0, 0, 0, 0, 0, 0, 5, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (20, 2, 2, 2, 5, 60, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (21, 3, 3, 0, 5, 25, 0, 0, 0, 0, 0, 8575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (22, 3, 3, 0, 5, 25, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (23, 3, 3, 0, 5, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (24, 3, 3, 1, 5, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (25, 3, 3, 1, 5, 38, 0, 0, 0, 0, 0, 8575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 2, 5, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (26, 3, 3, 1, 5, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (27, 3, 3, 2, 5, 75, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (28, 3, 3, 2, 5, 75, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (29, 3, 3, 2, 5, 75, 0, 0, 0, 0, 0, 0, 0, 5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (30, 3, 3, 2, 5, 75, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (31, 4, 4, 0, 5, 32, 0, 0, 0, 0, 0, 11350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (32, 4, 4, 0, 5, 32, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (33, 4, 4, 0, 5, 32, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (34, 4, 4, 1, 5, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (35, 4, 4, 1, 5, 48, 0, 0, 0, 0, 0, 11350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 3, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (36, 4, 4, 1, 5, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (37, 4, 4, 2, 5, 96, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (38, 4, 4, 2, 5, 96, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (39, 4, 4, 2, 5, 96, 0, 0, 0, 0, 0, 0, 0, 5, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (40, 4, 4, 2, 5, 96, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (41, 5, 5, 0, 5, 41, 0, 0, 0, 0, 0, 16925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (42, 5, 5, 0, 5, 41, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (43, 5, 5, 0, 5, 41, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (44, 5, 5, 1, 5, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (45, 5, 5, 1, 5, 62, 0, 0, 0, 0, 0, 16925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 3, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (46, 5, 5, 1, 5, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (47, 5, 5, 2, 5, 123, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (48, 5, 5, 2, 5, 123, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (49, 5, 5, 2, 5, 123, 0, 0, 0, 0, 0, 0, 0, 5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (50, 5, 5, 2, 5, 123, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (51, 6, 6, 0, 5, 52, 0, 0, 0, 0, 0, 26725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (52, 6, 6, 0, 5, 52, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (53, 6, 6, 0, 5, 52, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (54, 6, 6, 1, 5, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (55, 6, 6, 1, 5, 78, 0, 0, 0, 0, 0, 26725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 5, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (56, 6, 6, 1, 5, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (57, 6, 6, 2, 5, 156, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (58, 6, 6, 2, 5, 156, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (59, 6, 6, 2, 5, 156, 0, 0, 0, 0, 0, 0, 0, 5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (60, 6, 6, 2, 5, 156, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (61, 7, 7, 0, 5, 66, 0, 0, 0, 0, 0, 31250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (62, 7, 7, 0, 5, 66, 0, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (63, 7, 7, 0, 5, 66, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (64, 7, 7, 1, 5, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (65, 7, 7, 1, 5, 99, 0, 0, 0, 0, 0, 31250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 6, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (66, 7, 7, 1, 5, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (67, 7, 7, 2, 5, 198, 0, 0, 0, 0, 0, 0, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (68, 7, 7, 2, 5, 198, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (69, 7, 7, 2, 5, 198, 0, 0, 0, 0, 0, 0, 0, 5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (70, 7, 7, 2, 5, 198, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (71, 8, 8, 0, 5, 84, 0, 0, 0, 0, 0, 49575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (72, 8, 8, 0, 5, 84, 0, 0, 0, 0, 0, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (73, 8, 8, 0, 5, 84, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (74, 8, 8, 1, 5, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (75, 8, 8, 1, 5, 126, 0, 0, 0, 0, 0, 49575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 6, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (76, 8, 8, 1, 5, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (77, 8, 8, 2, 5, 252, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (78, 8, 8, 2, 5, 252, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (79, 8, 8, 2, 5, 252, 0, 0, 0, 0, 0, 0, 0, 5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (80, 8, 8, 2, 5, 252, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (81, 9, 9, 0, 5, 106, 0, 0, 0, 0, 0, 79320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (82, 9, 9, 0, 5, 106, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (83, 9, 9, 0, 5, 106, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (84, 9, 9, 1, 5, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (85, 9, 9, 1, 5, 159, 0, 0, 0, 0, 0, 79320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 4, 4, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (86, 9, 9, 1, 5, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (87, 9, 9, 2, 5, 318, 0, 0, 0, 0, 0, 0, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (88, 9, 9, 2, 5, 318, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (89, 9, 9, 2, 5, 318, 0, 0, 0, 0, 0, 0, 0, 5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
INSERT [dbo].[Quests] ([id], [tierMin], [tierMax], [slot], [reward1Type], [reward1Num], [reward1Item], [reward2Type], [reward2Num], [reward2Item], [damageCountAlly], [damageCountEnemy], [fragCountEnemy], [victoryDeathmatches], [deathmatchesSequence], [victoryDominations], [dominationsSequence], [victoryBaseVsBase], [baseVsBaseSequence], [enemyUnitType1], [enemyUnitTier1], [enemyUnitType2], [enemyUnitTier2], [enemySide], [playerSide], [playerUnitType1], [playerUnitType2], [playerUnitType3], [playerUnitType4], [playerUnitType5], [hidden], [storage]) VALUES (90, 9, 9, 2, 5, 318, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'')
GO
SET IDENTITY_INSERT [dbo].[Quests] OFF
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] ON 

GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (1, 0, 220, 93, 63, 80, 280, 40, 40, 40, 40, 33, 33, 33, 33, 1, 0, 0, 0, 1, 0.45, 0.45, 0.94, 1.13, 0, 0, 0, 0)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (2, 221, 420, 93, 63, 80, 280, 40, 40, 40, 40, 16, 16, 16, 16, 1, 0, 0, 0, 1, 0.68, 0.68, 0.94, 1.13, 0, 0, 0, 0)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (3, 421, 810, 93, 63, 80, 280, 40, 40, 40, 40, 11, 11, 11, 11, 1, 2, 0, 0, 1, 0.94, 0.94, 0.94, 1.13, 1.69, 2.37, 0, 0)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (4, 811, 1500, 93, 63, 80, 280, 40, 40, 40, 40, 7, 7, 7, 7, 0, 3, 1, 0, 1, 0.94, 0.94, 0.94, 1.13, 1.69, 2.37, 0, 0)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (5, 1501, 2900, 93, 63, 80, 280, 40, 40, 40, 40, 5, 5, 5, 5, 0, 2, 2, 1, 1, 0.94, 0.94, 0.94, 1.13, 1.69, 2.37, 4.43, 16.25)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (6, 2901, 4200, 93, 63, 80, 280, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 2, 1, 0.94, 0.94, 0.94, 1.13, 1.69, 2.37, 5.27, 19.34)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (7, 4201, 7000, 93, 63, 80, 280, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 3, 1, 0.94, 0.94, 0.94, 1.13, 1.69, 2.37, 5.36, 19.67)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (8, 7001, 15000, 93, 63, 80, 280, 40, 40, 40, 40, 2, 2, 2, 2, 0, 2, 4, 5, 1, 0.94, 0.94, 1.19, 1.43, 2.43, 3.4, 8.93, 32.73)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (9, 15001, 99999, 93, 63, 80, 280, 40, 40, 40, 40, 1, 1, 1, 1, 0, 1, 4, 5, 1, 0.94, 0.94, 1.19, 1.43, 2.43, 3.4, 8.93, 32.73)
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[RandomItems] ON 

GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"tier1","items":[21,22,23,24,25,26,27,28],"weights":[32,23,30,16,0,0,0,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (2, N'{"ident":"tier2","items":[21,22,23,24,25,26,27,28],"weights":[35,20,31,14,0,0,0,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (3, N'{"ident":"tier3","items":[21,22,23,24,25,26,27,28],"weights":[35,20,30,12,1,0,2,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (4, N'{"ident":"tier4","items":[21,22,23,24,25,26,27,28],"weights":[32,18,27,11,4,2,5,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (5, N'{"ident":"tier5","items":[21,22,23,24,25,26,27,28],"weights":[33,20,29,10,2,1,2,4]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (6, N'{"ident":"tier6","items":[21,22,23,24,25,26,27,28],"weights":[31,20,27,9,2,2,2,7]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (7, N'{"ident":"tier7","items":[21,22,23,24,25,26,27,28],"weights":[28,18,24,8,3,4,4,11]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (8, N'{"ident":"tier8","items":[21,22,23,24,25,26,27,28],"weights":[25,16,22,8,4,5,5,15]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (9, N'{"ident":"tier9","items":[21,22,23,24,25,26,27,28],"weights":[22,13,19,6,6,7,7,20]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (10, N'{"ident":"tier10","items":[21,22,23,24,25,26,27,28],"weights":[20,12,17,6,7,8,8,23]}')
GO
SET IDENTITY_INSERT [dbo].[RandomItems] OFF
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
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (79, N'HT6AP', 60, 74, 36, 0, 378, 462, 0, 10, 1, 4, 75, 6, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (80, N'HT6APCR', 69, 85, 42, 0, 435, 531, 0, 10, 5, 4, 75, 6, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (81, N'HT6APDS', 75, 92, 0, 5, 473, 578, 0, 10, 2, 4, 75, 6, N'APDS')
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
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (97, N'HT7AP', 68, 84, 54, 0, 522, 638, 0, 10, 1, 4, 75, 7, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (98, N'HT7APCR', 79, 96, 62, 0, 600, 734, 0, 10, 5, 4, 75, 7, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (99, N'HT7APDS', 86, 105, 0, 7, 653, 798, 0, 10, 2, 4, 75, 7, N'APDS')
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
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (115, N'HT8AP', 77, 94, 97, 0, 855, 1045, 0, 10, 1, 4, 75, 8, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (116, N'HT8APCR', 88, 108, 111, 0, 983, 1202, 0, 10, 5, 4, 75, 8, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (117, N'HT8APDS', 96, 117, 0, 13, 1069, 1306, 0, 10, 2, 4, 75, 8, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (119, N'300AP', 400, 400, 0, 0, 135, 135, 0, 100, 1, 5, 300, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (120, N'SC9AP', 54, 66, 21, 0, 270, 330, 0, 10, 1, 1, 50, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (121, N'SC9APCR', 62, 76, 24, 0, 311, 380, 0, 9, 5, 1, 50, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (122, N'SC9APCR2', 110, 134, 0, 3, 1229, 1502, 0, 9, 5, 1, 50, 9, N'APCR')
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
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (135, N'HT9AP', 85, 103, 97, 0, 1125, 1375, 0, 10, 1, 4, 85, 9, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (136, N'HT9APCR', 97, 119, 111, 0, 1294, 1581, 0, 10, 5, 4, 85, 9, N'APCR')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (137, N'HT9APDS', 106, 129, 0, 13, 1406, 1719, 0, 10, 2, 4, 85, 9, N'APDS')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (595, N'200HE', 1, 1, 0, 0, 150, 200, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (596, N'210HE', 1, 1, 0, 0, 200, 300, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (597, N'220HE', 1, 1, 0, 0, 400, 600, 2, 100, 3, 5, 200, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (600, N'40he01', 25, 27, 0, 0, 25, 30, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (601, N'40he02', 30, 30, 0, 0, 30, 35, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (602, N'40he03', 35, 35, 0, 0, 35, 40, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (603, N'40he04', 45, 40, 0, 0, 45, 50, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (604, N'40he05', 55, 47, 0, 0, 55, 60, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (605, N'40he06', 60, 55, 0, 0, 60, 70, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (606, N'40he07', 70, 60, 0, 0, 70, 80, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (607, N'40he08', 80, 62, 0, 0, 80, 90, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (608, N'40he09', 100, 70, 0, 0, 100, 120, 1, 15, 3, 5, 40, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (610, N'15mm01', 20, 20, 0, 0, 15, 20, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (611, N'15mm02', 22, 24, 0, 0, 19, 23, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (612, N'15mm03', 24, 28, 0, 0, 20, 24, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (613, N'15mm04', 26, 32, 0, 0, 21, 25, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (614, N'15mm05', 28, 36, 0, 0, 22, 26, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (615, N'15mm06', 30, 40, 0, 0, 23, 27, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (616, N'15mm07', 32, 44, 0, 0, 24, 28, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (617, N'15mm08', 34, 48, 0, 0, 25, 29, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (618, N'15mm09', 36, 52, 0, 0, 26, 30, 0, 15, 1, 1, 15, 0, N'AP')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (620, N'mine_a_01', 1, 1, 0, 0, 45, 65, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (621, N'mine_a_02', 1, 1, 0, 0, 60, 70, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (622, N'mine_a_03', 1, 1, 0, 0, 70, 80, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (623, N'mine_a_04', 1, 1, 0, 0, 80, 90, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (624, N'mine_a_05', 1, 1, 0, 0, 90, 100, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (625, N'mine_a_06', 1, 1, 0, 0, 100, 110, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (626, N'mine_a_07', 1, 1, 0, 0, 110, 120, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (627, N'mine_a_08', 1, 1, 0, 0, 120, 130, 2, 100, 3, 5, 80, 0, N'HE')
GO
INSERT [dbo].[ShellShops] ([i], [n], [k], [b], [m], [g], [dm], [dx], [ao], [r], [t], [ut], [z], [s], [ic]) VALUES (628, N'mine_a_09', 1, 1, 0, 0, 130, 140, 2, 100, 3, 5, 80, 0, N'HE')
GO
SET IDENTITY_INSERT [dbo].[ShellShops] OFF
GO
