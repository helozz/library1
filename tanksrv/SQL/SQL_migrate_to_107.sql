USE [tankwars_test]
GO
DELETE FROM [dbo].[Skills]
GO
DELETE FROM [dbo].[ShellShops]
GO
DELETE FROM [dbo].[NewMissions]
GO
DELETE FROM [dbo].[MarketItems]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[FriendLevels]
GO
DELETE FROM [dbo].[Defines]
GO
DELETE FROM [dbo].[DefaultUnits]
GO
DELETE FROM [dbo].[Campaigns]
GO
DELETE FROM [dbo].[Buildings]
GO
DELETE FROM [dbo].[BlindBuys]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1044, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 6, 0, 160, 120, N'', 1, 1, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1045, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 15, 160, 120, N'', 1, 1, 2, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1046, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 4, 160, 120, N'', 1, 1, 2, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1047, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 9, 160, 120, N'', 1, 1, 2, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1049, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 2, 0, 160, 120, N'', 1, 1, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1051, 3, N'tank3tier', 0, 0, 0, 172800000, 0, 2, 35, 140, N'', 0, 1, 1300, 5, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1053, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, 10, 0, 25, 125, N'', 1, 1, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1054, 6, N'money_offer_03', 518400000, 0, 1, 172800000, 5, 0, 20, 130, N'', 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1055, 2, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, 12, 23, 30, 135, N'[24,2]', 1, 1, 0, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1059, 8, N'tank4tier', 0, 0, 0, 172800000, 0, 49, 35, 150, N'', 0, 1, 2275, 7, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1060, 9, N'tank5tier', 0, 0, 0, 172800000, 0, 24, 35, 160, N'', 0, 1, 3575, 9, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1061, 10, N'tank6tier', 0, 0, 0, 172800000, 0, 81, 35, 170, N'', 0, 1, 4550, 11, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1062, 11, N'tank7tier', 0, 0, 0, 172800000, 0, 87, 35, 180, N'', 0, 1, 7800, 13, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1063, 12, N'tank8tier', 0, 0, 0, 172800000, 0, 103, 35, 190, N'', 0, 1, 9750, 15, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1064, 4, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 50, 115, N'veteran_crew1', 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1065, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 50, 115, N'veteran_crew1', 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1071, 13, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, 9, 0, 33, 130, N'', 1, 1, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1074, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 1451153810650, 1452094804130, 1, 864000000, 10, 0, 25, 125, N'', 1, 1, 0, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1079, 14, N'tank9tier', 0, 0, 0, 172800000, 0, 109, 35, 195, N'', 0, 1, 13000, 17, 0)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] ON 

GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1, N'{"gold":0,"money":1600,"ident":"basic_tier_1","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2, N'{"gold":0,"money":2400,"ident":"advanced_tier_1","items":[{"tank":4,"weight":100,"upgrades":[]},{"tank":12,"weight":67,"upgrades":[]},{"tank":58,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (28, N'{"ident":"hidden_1","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":57,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (29, N'{"ident":"hidden_2","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":11,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (30, N'{"ident":"hidden_3","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":1,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1002, N'{"ident":"common_crew1","money":2300,"mask":8,"items":[{"tier":1,"weight":9},{"tier":2,"weight":1}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1003, N'{"ident":"veteran_crew1","gold":500,"mask":8,"items":[{"tier":1,"weight":8, "ids":[11,12,13,14,25,26,27,28,39,40,41,42,53,54,55,56]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1006, N'{"ident":"newbie_common_crew1","money":900,"mask":24,"items":[{"tier":1,"weight":9,"ids":[2,3,4,5]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1007, N'{"ident":"newbie_veteran_crew1","money":0,"mask":24,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}],"gold":190}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1008, N'{"ident":"com.iron5studio.iron5.tank2tier","gold":0,"money":0,"items":[{"tank":23},{"crew":5,"tier":3}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1009, N'{"ident":"tank3tier","gold":1000,"money":0,"items":[{"tank":21}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1011, N'{"gold":1250,"money":0,"ident":"basic_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":53,"upgrades":[]}],"mask":7,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1012, N'{"gold":2350,"money":0,"ident":"basic_tier_3_reinforcement","items":[{"tank":2,"weight":44,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":7,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1013, N'{"gold":4900,"money":0,"ident":"basic_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":40,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":7,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1014, N'{"gold":8750,"money":0,"ident":"basic_tier_5_reinforcement","items":[{"tank":24,"weight":44,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":7,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1015, N'{"gold":14200,"money":0,"ident":"basic_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":34,"upgrades":[]}],"mask":7,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1016, N'{"gold":22450,"money":0,"ident":"basic_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":40,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":7,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1017, N'{"gold":34250,"money":0,"ident":"basic_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":34,"upgrades":[]}],"mask":7,"tier":8}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1018, N'{"ident":"hidden_4","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":41,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1027, N'{"ident":"hidden_2_tier_tank","tier":2,"money":0,"gold":0,"mask":0,"items":[{"tank":23,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1028, N'{"ident":"hidden_3_tier_tank","tier":3,"money":0,"gold":0,"mask":0,"items":[{"tank":2,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1029, N'{"ident":"hidden_4_tier_tank","tier":4,"money":0,"gold":0,"mask":0,"items":[{"tank":49,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1030, N'{"ident":"hidden_5_tier_tank","tier":5,"money":0,"gold":0,"mask":0,"items":[{"tank":24,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1031, N'{"ident":"hidden_6_tier_tank","tier":6,"money":0,"gold":0,"mask":0,"items":[{"tank":81,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1032, N'{"ident":"hidden_7_tier_tank","tier":7,"money":0,"gold":0,"mask":0,"items":[{"tank":87,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1033, N'{"ident":"hidden_8_tier_tank","tier":8,"money":0,"gold":0,"mask":0,"items":[{"tank":103,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2001, N'{"ident":"event_tier_1_reinforcement","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":6,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2002, N'{"ident":"event_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":17,"upgrades":[]}],"mask":6,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2003, N'{"ident":"event_tier_3_reinforcement","items":[{"tank":2,"weight":15,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":6,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2004, N'{"ident":"event_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":13,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":6,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2005, N'{"ident":"event_tier_5_reinforcement","items":[{"tank":24,"weight":15,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":6,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2006, N'{"ident":"event_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":11,"upgrades":[]}],"mask":6,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2007, N'{"ident":"event_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":13,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":6,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2008, N'{"ident":"event_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":11,"upgrades":[]}],"mask":6,"tier":8}')
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] OFF
GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 

GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1, 1, 1, 0, 0, 0, 0, 35, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (3, 1, 2, 1, 400, 9, 15, 35, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (4, 1, 3, 2, 660, 15, 20, 40, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (5, 1, 4, 3, 920, 180, 215, 40, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (6, 1, 5, 4, 1440, 225, 255, 45, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (7, 1, 6, 5, 2230, 360, 390, 45, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (8, 1, 7, 6, 3410, 450, 465, 50, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (9, 1, 8, 7, 5150, 600, 590, 50, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (10, 1, 9, 8, 7670, 750, 700, 55, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (11, 1, 10, 9, 11270, 960, 850, 55, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (12, 2, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (13, 2, 0, 0, 390, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (14, 2, 1, 1, 260, 10, 20, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (15, 2, 2, 2, 390, 28, 45, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (16, 2, 3, 3, 520, 90, 115, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (17, 2, 4, 4, 1510, 162, 175, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (18, 2, 5, 6, 4050, 292, 255, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (19, 2, 6, 8, 9920, 525, 350, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (20, 2, 7, 10, 22020, 945, 445, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (21, 2, 8, 12, 43820, 1701, 455, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (22, 2, 9, 14, 77120, 3061, 515, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (23, 2, 10, 16, 117990, 5510, 920, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (24, 3, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (25, 3, 0, 0, 660, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (26, 3, 1, 1, 260, 2, 5, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (27, 3, 2, 2, 660, 28, 45, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (28, 3, 3, 4, 1980, 120, 155, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (29, 3, 4, 6, 4510, 240, 260, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (30, 3, 5, 8, 9700, 480, 420, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (31, 3, 6, 10, 19590, 960, 640, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (32, 3, 7, 12, 37030, 1920, 900, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (33, 3, 8, 14, 65170, 3840, 1025, 10, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (34, 3, 9, 16, 106230, 7680, 1280, 12, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (35, 3, 10, 18, 159350, 15360, 2560, 14, 0)
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
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (62, 6, 1, 0, 100, 5, 1, 228, 63.2)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (63, 6, 2, 0, 110, 1, 5, 237, 60.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (64, 6, 3, 1, 140, 2, 5, 246, 58.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (65, 6, 4, 1, 170, 3, 5, 255, 56.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (66, 6, 5, 1, 210, 10, 20, 264, 54.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (67, 6, 6, 2, 260, 13, 25, 288, 50.1)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (68, 6, 7, 2, 320, 17, 25, 311, 46.3)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (69, 6, 8, 3, 390, 23, 35, 335, 43)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (70, 6, 9, 3, 470, 30, 40, 374, 38.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (71, 6, 10, 4, 570, 39, 50, 413, 34.9)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (72, 7, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (73, 7, 0, 0, 710, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (74, 7, 1, 2, 380, 10, 20, 1000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (75, 7, 2, 4, 710, 40, 65, 2700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (76, 7, 3, 6, 1320, 180, 255, 6700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (77, 7, 4, 8, 2430, 480, 610, 13000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (78, 7, 5, 10, 4430, 960, 1090, 21600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (79, 7, 6, 12, 8020, 1440, 1440, 32500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (80, 7, 7, 14, 14400, 2880, 2500, 45700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (81, 7, 8, 16, 25630, 3840, 2820, 61200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (82, 7, 9, 18, 45240, 5760, 3460, 79000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (83, 7, 10, 19, 79170, 10080, 4705, 99100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (96, 9, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (97, 9, 0, 0, 270, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (98, 9, 1, 2, 200, 10, 20, 100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (99, 9, 2, 3, 270, 40, 65, 300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (100, 9, 3, 5, 1040, 120, 170, 500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (101, 9, 4, 7, 3430, 480, 610, 750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (102, 9, 5, 9, 9430, 960, 1090, 1050, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (103, 9, 6, 11, 20750, 1440, 1440, 1400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (104, 9, 7, 13, 34240, 2880, 2500, 1800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (105, 9, 8, 15, 46220, 3840, 2820, 2250, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (106, 9, 9, 17, 62400, 5760, 3460, 2750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (107, 9, 10, 19, 84240, 10080, 4705, 3300, 0)
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
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (114, 15, 1, 0, 0, 0, 0, 4200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (115, 15, 2, 1, 0, 0, 0, 4300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (116, 15, 3, 2, 0, 0, 0, 4400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (117, 15, 4, 3, 0, 0, 0, 4540, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (118, 15, 5, 4, 0, 0, 0, 4720, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (119, 15, 6, 5, 0, 0, 0, 4940, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (120, 15, 7, 6, 0, 0, 0, 5200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (121, 15, 8, 7, 0, 0, 0, 5500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (122, 15, 9, 8, 0, 0, 0, 5840, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (123, 15, 10, 9, 0, 0, 0, 6220, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (124, 16, 1, 0, 0, 0, 0, 600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (125, 16, 2, 1, 0, 0, 0, 630, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (126, 16, 3, 2, 0, 0, 0, 660, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (127, 16, 4, 3, 0, 0, 0, 690, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (128, 16, 5, 4, 0, 0, 0, 720, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (129, 16, 6, 5, 0, 0, 0, 750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (130, 16, 7, 6, 0, 0, 0, 780, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (131, 16, 8, 7, 0, 0, 0, 810, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (132, 16, 9, 8, 0, 0, 0, 840, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (133, 16, 10, 9, 0, 0, 0, 870, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (144, 11, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (145, 11, 0, 0, 770, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (146, 11, 1, 2, 480, 10, 20, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (147, 11, 2, 3, 770, 28, 45, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (148, 11, 3, 5, 1160, 120, 155, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (149, 11, 4, 7, 1970, 228, 245, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (150, 11, 5, 9, 3450, 433, 380, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (151, 11, 6, 11, 6210, 823, 550, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (152, 11, 7, 13, 11490, 1564, 735, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (153, 11, 8, 15, 21830, 2971, 795, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (154, 11, 9, 17, 42570, 5646, 945, 11, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (155, 11, 10, 19, 85140, 10726, 1790, 13, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (156, 1, 11, 10, 16340, 1200, 1000, 60, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (157, 1, 12, 11, 23370, 1536, 1205, 60, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (158, 1, 13, 12, 32950, 1920, 1410, 65, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (159, 1, 14, 13, 45800, 2458, 1685, 65, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (160, 1, 15, 14, 62750, 3072, 1950, 70, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (161, 1, 16, 15, 84710, 3932, 2295, 70, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (162, 1, 17, 16, 112660, 4915, 2625, 75, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (163, 1, 18, 17, 147580, 6291, 3045, 75, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (164, 1, 19, 18, 190380, 7864, 3410, 80, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (165, 6, 11, 4, 690, 50, 60, 467, 30.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (166, 6, 12, 5, 830, 65, 75, 521, 27.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (167, 6, 13, 5, 990, 83, 95, 584, 24.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (168, 6, 14, 6, 1180, 106, 115, 647, 22.3)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (169, 6, 15, 6, 1400, 135, 140, 723, 19.9)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (170, 6, 16, 7, 1660, 170, 170, 799, 18)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (171, 6, 17, 7, 1960, 214, 205, 889, 16.2)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (172, 6, 18, 8, 2310, 268, 240, 980, 14.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (173, 6, 19, 8, 2710, 334, 285, 1086, 13.3)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (174, 6, 20, 9, 3170, 414, 335, 1192, 12.1)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (175, 6, 21, 9, 3700, 511, 395, 1316, 10.9)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (176, 6, 22, 10, 4300, 627, 460, 1440, 10)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (177, 6, 23, 10, 4980, 767, 530, 1584, 9.1)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (178, 6, 24, 11, 5750, 932, 605, 1727, 8.3)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (179, 6, 25, 11, 6610, 1128, 685, 1891, 7.6)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (180, 6, 26, 12, 7580, 1358, 775, 2055, 7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (181, 6, 27, 12, 8660, 1627, 860, 2241, 6.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (182, 6, 28, 13, 9860, 1939, 945, 2427, 5.9)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (183, 6, 29, 13, 11180, 2300, 1030, 2636, 5.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (184, 6, 30, 14, 12630, 2714, 1105, 2845, 5.1)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (185, 6, 31, 14, 14220, 3186, 1170, 3077, 4.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (186, 6, 32, 15, 15950, 3722, 1220, 3309, 4.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (187, 6, 33, 15, 17830, 4324, 1245, 3564, 4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (188, 6, 34, 16, 19860, 4999, 1250, 3818, 3.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (189, 6, 35, 16, 22040, 5749, 1255, 4095, 3.5)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (190, 6, 36, 17, 24380, 6577, 1260, 4372, 3.3)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (191, 6, 37, 17, 26870, 7484, 1265, 4669, 3.1)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (192, 6, 38, 18, 29560, 8472, 1415, 4966, 2.9)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (193, 6, 39, 18, 32520, 9540, 1590, 5282, 2.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (194, 6, 40, 19, 35770, 10685, 1785, 5597, 2.6)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (195, 6, 41, 19, 39350, 11903, 1985, 5931, 2.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (196, 15, 11, 10, 0, 0, 0, 6640, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (197, 15, 12, 11, 0, 0, 0, 7100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (198, 15, 13, 12, 0, 0, 0, 7600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (199, 15, 14, 13, 0, 0, 0, 8140, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (200, 15, 15, 14, 0, 0, 0, 8720, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (201, 15, 16, 15, 0, 0, 0, 9340, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (202, 15, 17, 16, 0, 0, 0, 10000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (203, 15, 18, 17, 0, 0, 0, 10700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (204, 15, 19, 18, 0, 0, 0, 11500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (205, 16, 11, 10, 0, 0, 0, 900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (206, 16, 12, 11, 0, 0, 0, 930, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (207, 16, 13, 12, 0, 0, 0, 960, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (208, 16, 14, 13, 0, 0, 0, 990, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (209, 16, 15, 14, 0, 0, 0, 1020, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (210, 16, 16, 15, 0, 0, 0, 1050, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (211, 16, 17, 16, 0, 0, 0, 1080, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (212, 16, 18, 17, 0, 0, 0, 1110, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (213, 16, 19, 18, 0, 0, 0, 1140, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1003, 18, 1, 999, 0, 0, 0, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1004, 19, 1, 999, 0, 0, 0, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1005, 20, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1006, 20, 1, 2, 480, 10, 20, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 400, 0, 5, 100, 0, 7, 1, 43, 0, N'', 2, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 208, 0, 4, 50, 0, 7, 1, 42, 52, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 218, 0, 4, 100, 0, 3, 1, 16, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 222, 0, 4, 150, 0, 7, 2, 21, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 232, 0, 4, 200, 0, 7, 2, 22, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 500, 0, 5, 140, 0, -1, 0, 0, 0, N'', 3, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 238, 0, 4, 550, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 242, 0, 4, 600, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 247, 0, 4, 650, 0, 7, 1, 12, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 252, 0, 4, 700, 0, 7, 1, 22, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 256, 0, 4, 750, 0, 7, 2, 23, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 3, 0, N'c03', 0, 1, 5, 0, 600, 0, 5, 190, 0, -1, 0, 0, 0, N'', 4, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 1, N'c03_m01', 0, 1, 5, 0, 266, 0, 4, 1050, 0, 7, 1, 44, 188, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 2, N'c03_m02', 0, 1, 5, 0, 271, 0, 4, 1100, 0, 7, 1, 12, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 3, N'c03_m03', 0, 1, 5, 0, 276, 0, 4, 1150, 0, 7, 1, 24, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 4, N'c03_m04', 0, 1, 5, 0, 281, 0, 4, 1200, 0, 7, 2, 23, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 4, 0, N'c04', 0, 1, 5, 0, 700, 0, 5, 250, 0, -1, 0, 0, 0, N'', 5, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 4, 1, N'c04_m01', 0, 1, 5, 0, 290, 0, 4, 1550, 0, 7, 1, 4, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 4, 2, N'c04_m02', 0, 1, 5, 0, 295, 0, 4, 1600, 0, 7, 1, 12, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 4, 3, N'c04_m03', 0, 1, 5, 0, 301, 0, 4, 1650, 0, 7, 1, 22, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 4, 4, N'c04_m04', 0, 1, 5, 0, 310, 0, 4, 1700, 0, 7, 1, 21, 326, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 5, 0, N'c05', 0, 1, 5, 0, 800, 0, 5, 330, 0, -1, 0, 0, 0, N'', 6, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 5, 1, N'c05_m01', 0, 1, 5, 0, 324, 0, 4, 2050, 0, 7, 1, 3, 375, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 5, 2, N'c05_m02', 0, 1, 5, 0, 329, 0, 4, 2100, 0, 7, 1, 3, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 5, 3, N'c05_m03', 0, 1, 5, 0, 336, 0, 4, 2150, 0, 7, 1, 13, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 5, 4, N'c05_m04', 0, 1, 5, 0, 345, 0, 4, 2200, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 5, 5, N'c05_m05', 0, 1, 5, 0, 350, 0, 4, 2250, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 5, 6, N'c05_m06', 0, 1, 5, 0, 358, 0, 4, 2300, 0, 7, 1, 22, 462, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 6, 0, N'c06', 0, 1, 5, 0, 900, 0, 5, 430, 0, -1, 0, 0, 0, N'', 7, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 6, 1, N'c06_m01', 0, 1, 5, 0, 384, 0, 4, 2550, 0, 7, 1, 3, 462, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 6, 2, N'c06_m02', 0, 1, 5, 0, 388, 0, 4, 2600, 0, 7, 1, 3, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 6, 3, N'c06_m03', 0, 1, 5, 0, 395, 0, 4, 2650, 0, 7, 1, 13, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 6, 4, N'c06_m04', 0, 1, 5, 0, 405, 0, 4, 2700, 0, -1, 0, 0, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 6, 5, N'c06_m05', 0, 1, 5, 0, 412, 0, 4, 2750, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 6, 6, N'c06_m06', 0, 1, 5, 0, 420, 0, 4, 2800, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 6, 7, N'c06_m07', 0, 1, 5, 0, 429, 0, 4, 2850, 0, 7, 1, 23, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 7, 0, N'c07', 0, 1, 5, 0, 1100, 0, 5, 550, 0, -1, 0, 0, 0, N'', 8, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 7, 1, N'c07_m01', 0, 1, 5, 0, 458, 0, 4, 3050, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 7, 2, N'c07_m02', 0, 1, 5, 0, 466, 0, 4, 3100, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 7, 3, N'c07_m03', 0, 1, 5, 0, 476, 0, 4, 3150, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 7, 4, N'c07_m04', 0, 1, 5, 0, 484, 0, 4, 3200, 0, 7, 1, 14, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 7, 5, N'c07_m05', 0, 1, 5, 0, 482, 0, 4, 3250, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 7, 6, N'c07_m06', 0, 1, 5, 0, 490, 0, 4, 3300, 0, -1, 0, 0, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 7, 7, N'c07_m07', 0, 1, 5, 0, 502, 0, 4, 3350, 0, 7, 2, 24, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 8, 0, N'c08', 0, 1, 5, 0, 1300, 0, 5, 700, 0, -1, 0, 0, 0, N'', 9, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 8, 1, N'c08_m01', 0, 1, 5, 0, 533, 0, 4, 3550, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 8, 2, N'c08_m02', 0, 1, 5, 0, 542, 0, 4, 3600, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 8, 3, N'c08_m03', 0, 1, 5, 0, 555, 0, 4, 3650, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 8, 4, N'c08_m04', 0, 1, 5, 0, 565, 0, 4, 3700, 0, 7, 1, 14, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 8, 5, N'c08_m05', 0, 1, 5, 0, 574, 0, 4, 3750, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 8, 6, N'c08_m06', 0, 1, 5, 0, 585, 0, 4, 3800, 0, -1, 0, 0, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 8, 7, N'c08_m07', 0, 1, 5, 0, 595, 0, 4, 3850, 0, 7, 2, 25, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 9, 0, N'c09', 0, 1, 5, 0, 1500, 0, 5, 870, 0, -1, 0, 0, 0, N'', 10, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 9, 1, N'c09_m01', 0, 1, 5, 0, 642, 0, 4, 4050, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 9, 2, N'c09_m02', 0, 1, 5, 0, 653, 0, 4, 4100, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 9, 3, N'c09_m03', 0, 1, 5, 0, 667, 0, 4, 4150, 0, -1, 0, 0, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 9, 4, N'c09_m04', 0, 1, 5, 0, 679, 0, 4, 4200, 0, 7, 1, 14, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 9, 5, N'c09_m05', 0, 1, 5, 0, 694, 0, 4, 4250, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 9, 6, N'c09_m06', 0, 1, 5, 0, 706, 0, 4, 4300, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 9, 7, N'c09_m07', 0, 1, 5, 0, 720, 0, 4, 4350, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 9, 8, N'c09_m08', 0, 1, 5, 0, 732, 0, 4, 4400, 0, 7, 2, 26, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4550, 0, 7, 1, 3, 797, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4600, 0, 7, 1, 3, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4650, 0, 7, 1, 15, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4700, 0, -1, 0, 0, 911, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4750, 0, -1, 0, 0, 940, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 4800, 0, 7, 2, 27, 976, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5050, 0, 7, 1, 3, 976, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5100, 0, 7, 1, 3, 1041, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5150, 0, 7, 1, 15, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5200, 0, -1, 0, 0, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5250, 0, -1, 0, 0, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 5300, 0, 7, 2, 28, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5550, 0, 7, 1, 3, 1188, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5600, 0, 7, 1, 3, 1260, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5650, 0, 7, 1, 15, 1353, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5700, 0, -1, 0, 0, 1459, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5750, 0, -1, 0, 0, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 5800, 0, 7, 1, 28, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6050, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6100, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6150, 0, 7, 1, 16, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6200, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6250, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 6300, 0, 7, 2, 25, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6100, 0, 7, 1, 3, 1718, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6150, 0, 7, 1, 3, 1964, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6200, 0, 7, 1, 16, 2093, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6250, 0, -1, 0, 0, 2240, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6300, 0, -1, 0, 0, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 6350, 0, 7, 1, 28, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 6200, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 6250, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 6300, 0, 7, 1, 16, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 6350, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 6400, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 6450, 0, 7, 2, 26, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (104, 16, 0, N'c16', 0, 1, 5, 0, 4800, 0, 5, 2750, 0, -1, 0, 0, 0, N'', 17, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (105, 16, 1, N'c16_m01', 0, 1, 5, 0, 2200, 0, 4, 6350, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (106, 16, 2, N'c16_m02', 0, 1, 5, 0, 2350, 0, 4, 6400, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (107, 16, 3, N'c16_m03', 0, 1, 5, 0, 2500, 0, 4, 6450, 0, 7, 0, 0, 3317, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (108, 16, 4, N'c16_m04', 0, 1, 5, 0, 2650, 0, 4, 6500, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (109, 16, 5, N'c16_m05', 0, 1, 5, 0, 2800, 0, 4, 6550, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (110, 16, 6, N'c16_m06', 0, 1, 5, 0, 2950, 0, 4, 6600, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (111, 16, 7, N'c16_m07', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (112, 16, 8, N'c16_m08', 0, 1, 5, 0, 3250, 0, 4, 6700, 0, 7, 1, 28, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (113, 17, 0, N'c17', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 18, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (114, 17, 1, N'c17_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 3975, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (115, 17, 2, N'c17_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (116, 17, 3, N'c17_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (117, 17, 4, N'c17_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (118, 17, 5, N'c17_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (119, 17, 6, N'c17_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (120, 17, 7, N'c17_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (121, 17, 8, N'c17_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (122, 18, 0, N'c18', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 19, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (123, 18, 1, N'c18_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (124, 18, 2, N'c18_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (125, 18, 3, N'c18_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (126, 18, 4, N'c18_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (127, 18, 5, N'c18_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (128, 18, 6, N'c18_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (129, 18, 7, N'c18_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 6000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (130, 18, 8, N'c18_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (131, 18, 9, N'c18_m09', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 0, 0, 7000, N'', 0, 22)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (132, 18, 10, N'c18_m10', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 7000, N'', 0, 22)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
GO

SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (1, N'JeepWillys', 3, 8, 500, 90, 4, 5, 4, 5, 5, 16, 87, 160, 3, 2.36, 12, 10, 10, 13, 16, 1, 14, 0, 400, 1, 1, 0, 2, 1, 1, 13, 2, 125)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (11, N'BirchGun', 4, 9, 150, 32, 2, 6, 1, 7, 1, 9, 84, 110, 1.5, 12, 6, 6, 6, 10, 16, 5, 84, 1600, 0, 1, 1, 10, 0, 1, 0, 0, 3, 80)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (12, N'BirchGun2', 4, 11, 150, 32, 2, 6, 1, 6, 1, 9, 96, 126, 1.5, 12, 10, 6, 6, 10, 16, 5, 84, 1600, 0, 1, 1, 10, 1, 1, 1, 2, 3, 80)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (23, N'SU5', 1, 17, 25, 32, 2, 6, 1, 5, 1, 10, 168, 223, 1.5, 10.5, 18, 12, 15, 14, 23, 5, 76, 0, 1000, 1, 1, 10, 2, 2, 4, 10, 4, 500)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (87, N'SU85_1', 1, 160, 40, 30, 2, 4, 1, 7, 1, 10, 1129, 2228, 1.33, 13, 90, 38, 64, 16, 25, 6, 85, 0, 12000, 1, 1, 8, 2, 7, 10, 132, 6, 10000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (103, N'IS1', 1, 400, 60, 48, 2, 4, 1, 9, 1, 11, 1897, 3567, 1.1, 50, 110, 70, 90, 16, 22, 4, 76, 0, 15000, 1, 1, 6, 2, 8, 10, 161, 6, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (104, N'Puma2', 4, 90, 80, 90, 4, 2, 4, 8, 5, 14, 1018, 1867, 3, 5, 44, 40, 42, 14, 16, 1, 75, 250000, 0, 1, 1, 0, 4, 8, 3, 0, 5, 8333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (105, N'T21_1', 3, 100, 140, 72, 3, 5, 5, 12, 5, 11, 1063, 2022, 2, 15, 65, 45, 55, 11, 21, 2, 75, 400000, 0, 1, 1, 3, 0, 9, 0, 0, 6, 13333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (106, N'T21_2', 3, 100, 140, 72, 3, 5, 5, 8, 5, 11, 1222, 2325, 2, 15, 65, 51, 58, 12, 21, 2, 75, 420000, 0, 1, 1, 3, 1, 9, 3, 40, 6, 14000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (107, N'Grille2', 2, 110, 30, 36, 1, 8, 2, 11, 1, 9, 1417, 1867, 1.33, 11, 54, 36, 45, 18, 26, 5, 150, 560000, 0, 1, 1, 11, 1, 9, 3, 50, 6, 18667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (108, N'Pershing1', 3, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1992, 4149, 1.33, 28, 78, 64, 71, 15, 22, 3, 75, 0, 17000, 1, 1, 6, 4, 9, 4, 150, 6, 8500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (109, N'Conqueror', 4, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2656, 4637, 1.2, 42, 130, 70, 100, 15, 22, 4, 90, 0, 20000, 1, 1, 6, 2, 9, 5, 150, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (110, N'M36_1', 4, 150, 45, 24, 1, 4, 1, 9, 1, 10, 1550, 3012, 1.33, 13, 98, 42, 70, 15, 23, 6, 76, 620000, 0, 1, 1, 8, 0, 9, 0, 0, 6, 20667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (111, N'M36_2', 4, 150, 45, 24, 1, 4, 1, 8, 1, 10, 1771, 3464, 1.33, 13, 104, 44, 74, 16, 23, 6, 76, 650000, 0, 1, 1, 8, 1, 9, 4, 0, 6, 21667)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (112, N'Tiger1', 2, 400, 60, 48, 2, 4, 1, 11, 1, 11, 1859, 3567, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 700000, 0, 1, 1, 6, 0, 9, 0, 0, 6, 23333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (113, N'Tiger2', 2, 400, 60, 48, 2, 4, 1, 10, 1, 11, 2125, 4102, 1.1, 42, 105, 85, 95, 16, 22, 4, 85, 750000, 0, 1, 1, 6, 1, 9, 5, 0, 6, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (114, N'Panther1', 2, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1417, 2861, 1.4, 28, 70, 60, 65, 15, 22, 3, 75, 520000, 0, 1, 1, 6, 0, 9, 0, 0, 6, 17333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (115, N'Panther2', 2, 150, 80, 60, 2, 4, 1, 7, 1, 11, 1700, 3290, 1.4, 28, 73, 63, 68, 15, 22, 3, 75, 520000, 0, 1, 1, 6, 1, 9, 4, 0, 6, 17333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (116, N'ISU_152', 1, 350, 30, 24, 1, 4, 1, 7, 1, 10, 2214, 4066, 1.33, 13, 109, 47, 78, 16, 23, 6, 76, 0, 18000, 1, 1, 8, 2, 9, 4, 100, 6, 22500)
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanMaxPlaceLimit', N'35')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,282,685,1344,2150,1782,2433,-715,-8354,11')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitMoney', N'2020')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitParts', N'290')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitSlots', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitTank', N'3')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RefreshMarketPrice', N'10')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1138')
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
SET IDENTITY_INSERT [dbo].[FriendLevels] ON 

GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (1, 0)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (2, 50)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (3, 275)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (4, 540)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (5, 845)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (6, 1275)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (7, 1575)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (8, 1875)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (9, 2175)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (10, 2475)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (11, 3145)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (12, 3995)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (13, 4845)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (14, 5695)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (15, 6545)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (16, 7395)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (17, 8245)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (18, 9095)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (19, 9945)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (20, 11747)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (21, 13412)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (22, 15077)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (23, 16742)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (24, 18407)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (25, 20072)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (26, 21737)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (27, 23402)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (28, 25067)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (29, 26732)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (30, 28397)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (31, 31172)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (32, 33947)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (33, 36722)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (34, 39497)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (35, 42272)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (36, 45047)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (37, 47822)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (38, 50597)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (39, 53372)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (40, 57665)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (41, 64505)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (42, 71345)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (43, 78185)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (44, 85025)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (45, 91865)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (46, 98705)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (47, 105545)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (48, 112385)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (49, 119225)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (50, 126065)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (51, 132905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (52, 142405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (53, 151905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (54, 161405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (55, 170905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (56, 180405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (57, 189905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (58, 199405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (59, 208905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (60, 218405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (61, 227905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (62, 237405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (63, 246905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (64, 256405)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (65, 265905)
GO
INSERT [dbo].[FriendLevels] ([l], [e]) VALUES (66, 9999999)
GO
SET IDENTITY_INSERT [dbo].[FriendLevels] OFF
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (42, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_1_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':57},{''type'':2,''num'':1,''item'':1}],''premiumBonus'':[{''type'':8,''num'':1,''item'':57},{''type'':2,''num'':1,''item'':1}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (43, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_2_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':11},{''type'':2,''num'':1,''item'':43}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (44, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_3_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':1},{''type'':2,''num'':1,''item'':29}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (45, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_4_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':41},{''type'':2,''num'':1,''item'':2}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':23,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':24,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':24,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':5,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
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
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21,22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"tank","items":[41,1],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 3, 1, N'{"ident":"tank","items":[23,41],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 5, 1, N'{"ident":"tank","items":[2,23],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 7, 1, N'{"ident":"tank","items":[49,2],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (650, 9, 1, N'{"ident":"tank","items":[24,49],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (651, 11, 1, N'{"ident":"tank","items":[81,24],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (652, 13, 1, N'{"ident":"tank","items":[87,81],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (653, 15, 1, N'{"ident":"tank","items":[103,87],"weights":[1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (654, 17, 1, N'{"ident":"tank","items":[109,103,116],"weights":[1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (834, 1, 2, N'{"ident":"tank","items":[3,57,11],"weights":[1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (848, 15, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (849, 17, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (850, 1, 4, N'{"ident":"item","items":[137,125,113,101],"weights":[1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (851, 3, 4, N'{"ident":"item","items":[173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (852, 5, 4, N'{"ident":"item","items":[175,173,163,161,151,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (853, 9, 4, N'{"ident":"item","items":[185,177,175,173,165,163,161,153,151,149,141,139,137,129,127,125,117,115,113,105,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (854, 11, 4, N'{"ident":"item","items":[187,185,179,177,175,173,167,165,163,161,155,153,151,149,143,141,139,131,129,127,119,117,115,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (855, 13, 4, N'{"ident":"item","items":[189,187,185,181,179,177,175,169,167,165,163,157,155,153,151,145,143,141,133,131,129,121,119,117,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (856, 15, 4, N'{"ident":"item","items":[191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (857, 17, 4, N'{"ident":"item","items":[193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (874, 1, 7, N'{"ident":"powerUp","items":[1,5,9,13,16,25,28],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (875, 1, 8, N'{"ident":"powerUp","items":[1,5,9,13,16,25,28],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (876, 1, 9, N'{"ident":"powerUp","items":[1,5,9,13,16,25,28],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (877, 1, 10, N'{"ident":"powerUp","items":[38,42,46,50,54,62,66],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (878, 1, 11, N'{"ident":"powerUp","items":[38,42,46,50,54,62,66],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (879, 1, 12, N'{"ident":"powerUp","items":[38,42,46,50,54,62,66],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (880, 7, 7, N'{"ident":"powerUp","items":[1,5,9,13,16,25,28],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (881, 7, 8, N'{"ident":"powerUp","items":[2,6,10,14,17,26,29],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (882, 7, 9, N'{"ident":"powerUp","items":[2,6,10,14,17,26,29],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (883, 7, 10, N'{"ident":"powerUp","items":[38,42,46,50,54,62,66],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (884, 7, 11, N'{"ident":"powerUp","items":[39,43,47,51,55,63,67],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (885, 7, 12, N'{"ident":"powerUp","items":[39,43,47,51,55,63,67],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (886, 11, 7, N'{"ident":"powerUp","items":[2,6,10,14,17,26,29],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (887, 11, 8, N'{"ident":"powerUp","items":[3,7,11,15,18,27,30],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (888, 11, 9, N'{"ident":"powerUp","items":[3,7,11,15,18,27,30],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (889, 11, 10, N'{"ident":"powerUp","items":[39,43,47,51,55,63,67],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (890, 11, 11, N'{"ident":"powerUp","items":[40,44,48,52,56,64,68],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (891, 11, 12, N'{"ident":"powerUp","items":[40,44,48,52,56,64,68],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (892, 15, 7, N'{"ident":"powerUp","items":[3,7,11,15,18,27,30],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (893, 15, 8, N'{"ident":"powerUp","items":[4,8,12,23,24,31,32],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (894, 15, 9, N'{"ident":"powerUp","items":[4,8,12,23,24,31,32],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (895, 15, 10, N'{"ident":"powerUp","items":[40,44,48,52,56,64,68],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (896, 15, 11, N'{"ident":"powerUp","items":[41,45,49,53,57,65,69],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (897, 15, 12, N'{"ident":"powerUp","items":[41,45,49,53,57,65,69],"weights":[10,10,10,10,10,10,10]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (908, 1, 18, N'{"ident":"item","items":[201,202,203,204,205,206,207],"weights":[12,12,5,4,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (909, 7, 18, N'{"ident":"item","items":[201,202,203,204,205,206,207],"weights":[12,12,4,6,1,2,2]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
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
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1300, N'll_a_01', 0, 11, N'll_a_01', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1301, N'll_a_02', 0, 11, N'll_a_02', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1302, N'll_a_03', 0, 11, N'll_a_03', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1303, N'll_a_04', 0, 11, N'll_a_04', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1304, N'll_a_05', 0, 11, N'll_a_05', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1305, N'll_a_06', 0, 11, N'll_a_06', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1306, N'll_a_07', 0, 11, N'll_a_07', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1307, N'll_a_08', 0, 11, N'll_a_08', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1308, N'll_a_09', 0, 11, N'll_a_09', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1309, N'll_a_10', 0, 11, N'll_a_10', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1310, N'll_a_11', 0, 11, N'll_a_11', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1311, N'll_a_12', 0, 11, N'll_a_12', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1312, N'll_a_13', 0, 11, N'll_a_13', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1313, N'll_a_14', 0, 11, N'll_a_14', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1314, N'll_a_15', 0, 11, N'll_a_15', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1315, N'll_a_16', 0, 11, N'll_a_16', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1316, N'll_a_17', 0, 11, N'll_a_17', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1317, N'll_a_18', 0, 11, N'll_a_18', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1318, N'll_a_19', 0, 11, N'll_a_19', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1319, N'll_a_20', 0, 11, N'll_a_20', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1320, N'll_a_21', 0, 11, N'll_a_21', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1321, N'll_a_22', 0, 11, N'll_a_22', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1322, N'll_a_23', 0, 11, N'll_a_23', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1323, N'll_a_24', 0, 11, N'll_a_24', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1324, N'll_a_25', 0, 11, N'll_a_25', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1325, N'll_a_26', 0, 11, N'll_a_26', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1326, N'll_a_27', 0, 11, N'll_a_27', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1327, N'll_a_28', 0, 11, N'll_a_28', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1328, N'll_a_29', 0, 11, N'll_a_29', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1329, N'll_a_30', 0, 11, N'll_a_30', 0, 0, 200, 0, 1300)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1400, N'll_b_01', 0, 11, N'll_a_01', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1401, N'll_b_02', 0, 11, N'll_a_02', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1402, N'll_b_03', 0, 11, N'll_a_03', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1403, N'll_b_04', 0, 11, N'll_a_04', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1404, N'll_b_05', 0, 11, N'll_a_05', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1405, N'll_b_06', 0, 11, N'll_a_06', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1406, N'll_b_07', 0, 11, N'll_a_07', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1407, N'll_b_08', 0, 11, N'll_a_08', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1408, N'll_b_09', 0, 11, N'll_a_09', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1409, N'll_b_10', 0, 11, N'll_a_10', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1410, N'll_b_11', 0, 11, N'll_a_11', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1411, N'll_b_12', 0, 11, N'll_a_12', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1412, N'll_b_13', 0, 11, N'll_a_13', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1413, N'll_b_14', 0, 11, N'll_a_14', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1414, N'll_b_15', 0, 11, N'll_a_15', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1415, N'll_b_16', 0, 11, N'll_a_16', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1416, N'll_b_17', 0, 11, N'll_a_17', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1417, N'll_b_18', 0, 11, N'll_a_18', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1418, N'll_b_19', 0, 11, N'll_a_19', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1419, N'll_b_20', 0, 11, N'll_a_20', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1420, N'll_b_21', 0, 11, N'll_a_21', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1421, N'll_b_22', 0, 11, N'll_a_22', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1422, N'll_b_23', 0, 11, N'll_a_23', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1423, N'll_b_24', 0, 11, N'll_a_24', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1424, N'll_b_25', 0, 11, N'll_a_25', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1425, N'll_b_26', 0, 11, N'll_a_26', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1426, N'll_b_27', 0, 11, N'll_a_27', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1427, N'll_b_28', 0, 11, N'll_a_28', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1428, N'll_b_29', 0, 11, N'll_a_29', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1429, N'll_b_30', 0, 11, N'll_a_30', 0, 0, 200, 1301, 2499)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1500, N'll_c_01', 0, 11, N'll_a_01', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1501, N'll_c_02', 0, 11, N'll_a_02', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1502, N'll_c_03', 0, 11, N'll_a_03', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1503, N'll_c_04', 0, 11, N'll_a_04', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1504, N'll_c_05', 0, 11, N'll_a_05', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1505, N'll_c_06', 0, 11, N'll_a_06', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1506, N'll_c_07', 0, 11, N'll_a_07', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1507, N'll_c_08', 0, 11, N'll_a_08', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1508, N'll_c_09', 0, 11, N'll_a_09', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1509, N'll_c_10', 0, 11, N'll_a_10', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1510, N'll_c_11', 0, 11, N'll_a_11', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1511, N'll_c_12', 0, 11, N'll_a_12', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1512, N'll_c_13', 0, 11, N'll_a_13', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1513, N'll_c_14', 0, 11, N'll_a_14', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1514, N'll_c_15', 0, 11, N'll_a_15', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1515, N'll_c_16', 0, 11, N'll_a_16', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1516, N'll_c_17', 0, 11, N'll_a_17', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1517, N'll_c_18', 0, 11, N'll_a_18', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1518, N'll_c_19', 0, 11, N'll_a_19', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1519, N'll_c_20', 0, 11, N'll_a_20', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1520, N'll_c_21', 0, 11, N'll_a_21', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1521, N'll_c_22', 0, 11, N'll_a_22', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1522, N'll_c_23', 0, 11, N'll_a_23', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1523, N'll_c_24', 0, 11, N'll_a_24', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1524, N'll_c_25', 0, 11, N'll_a_25', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1525, N'll_c_26', 0, 11, N'll_a_26', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1526, N'll_c_27', 0, 11, N'll_a_27', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1527, N'll_c_28', 0, 11, N'll_a_28', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1528, N'll_c_29', 0, 11, N'll_a_29', 0, 0, 200, 2500, 999999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1529, N'll_c_30', 0, 11, N'll_a_30', 0, 0, 200, 2500, 999999)
GO
SET IDENTITY_INSERT [dbo].[NewMissions] OFF
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
SET IDENTITY_INSERT [dbo].[Skills] ON 

GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1, 1, N'more_hp_pts', N'more_hp_pts', 0, 1, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (2, 1, N'more_hp_pts', N'more_hp_pts', 0, 2, 6, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (3, 1, N'more_hp_pts', N'more_hp_pts', 0, 3, 6, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (4, 1, N'more_hp_pts', N'more_hp_pts', 0, 4, 6, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (5, 1, N'more_hp_pts', N'more_hp_pts', 0, 5, 6, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (6, 1, N'more_hp_pts', N'more_hp_pts', 0, 6, 6, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (7, 1, N'more_hp_pts', N'more_hp_pts', 0, 7, 6, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (8, 1, N'more_hp_pts', N'more_hp_pts', 0, 8, 6, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (9, 1, N'more_hp_pts', N'more_hp_pts', 0, 9, 6, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (10, 2, N'more_hp_pct', N'more_hp_pct', 0, 1, 21, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (11, 2, N'more_hp_pct', N'more_hp_pct', 0, 2, 21, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (12, 2, N'more_hp_pct', N'more_hp_pct', 0, 3, 21, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (13, 2, N'more_hp_pct', N'more_hp_pct', 0, 4, 21, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (14, 2, N'more_hp_pct', N'more_hp_pct', 0, 5, 21, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (15, 2, N'more_hp_pct', N'more_hp_pct', 0, 6, 21, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (16, 3, N'armor_all_pts', N'armor_all_pts', 0, 1, 17, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (17, 3, N'armor_all_pts', N'armor_all_pts', 0, 2, 17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (18, 3, N'armor_all_pts', N'armor_all_pts', 0, 3, 17, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (19, 3, N'armor_all_pts', N'armor_all_pts', 0, 4, 17, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (20, 3, N'armor_all_pts', N'armor_all_pts', 0, 5, 17, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (21, 3, N'armor_all_pts', N'armor_all_pts', 0, 6, 17, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (22, 3, N'armor_all_pts', N'armor_all_pts', 0, 7, 17, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (23, 3, N'armor_all_pts', N'armor_all_pts', 0, 8, 17, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (24, 3, N'armor_all_pts', N'armor_all_pts', 0, 9, 17, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (25, 4, N'armor_all_pct', N'armor_all_pct', 0, 1, 32, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (26, 4, N'armor_all_pct', N'armor_all_pct', 0, 2, 32, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (27, 4, N'armor_all_pct', N'armor_all_pct', 0, 3, 32, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (28, 4, N'armor_all_pct', N'armor_all_pct', 0, 4, 32, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (29, 4, N'armor_all_pct', N'armor_all_pct', 0, 5, 32, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (30, 4, N'armor_all_pct', N'armor_all_pct', 0, 6, 32, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (31, 5, N'damage_pts', N'damage_pts', 0, 1, 16, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (32, 5, N'damage_pts', N'damage_pts', 0, 2, 16, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (33, 5, N'damage_pts', N'damage_pts', 0, 3, 16, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (34, 5, N'damage_pts', N'damage_pts', 0, 4, 16, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (35, 5, N'damage_pts', N'damage_pts', 0, 5, 16, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (36, 5, N'damage_pts', N'damage_pts', 0, 6, 16, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (37, 5, N'damage_pts', N'damage_pts', 0, 7, 16, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (38, 5, N'damage_pts', N'damage_pts', 0, 8, 16, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (39, 5, N'damage_pts', N'damage_pts', 0, 9, 16, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (40, 6, N'damage_pct', N'damage_pct', 0, 1, 31, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (41, 6, N'damage_pct', N'damage_pct', 0, 2, 31, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (42, 6, N'damage_pct', N'damage_pct', 0, 3, 31, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (43, 6, N'damage_pct', N'damage_pct', 0, 4, 31, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (44, 6, N'damage_pct', N'damage_pct', 0, 5, 31, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (45, 6, N'damage_pct', N'damage_pct', 0, 6, 31, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (46, 7, N'piercing_pts', N'piercing_pts', 0, 1, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (47, 7, N'piercing_pts', N'piercing_pts', 0, 2, 15, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (48, 7, N'piercing_pts', N'piercing_pts', 0, 3, 15, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (49, 7, N'piercing_pts', N'piercing_pts', 0, 4, 15, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (50, 7, N'piercing_pts', N'piercing_pts', 0, 5, 15, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (51, 7, N'piercing_pts', N'piercing_pts', 0, 6, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (52, 7, N'piercing_pts', N'piercing_pts', 0, 7, 15, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (53, 7, N'piercing_pts', N'piercing_pts', 0, 8, 15, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (54, 7, N'piercing_pts', N'piercing_pts', 0, 9, 15, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (55, 8, N'piercing_pct', N'piercing_pct', 0, 1, 30, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (56, 8, N'piercing_pct', N'piercing_pct', 0, 2, 30, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (57, 8, N'piercing_pct', N'piercing_pct', 0, 3, 30, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (58, 8, N'piercing_pct', N'piercing_pct', 0, 4, 30, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (59, 8, N'piercing_pct', N'piercing_pct', 0, 5, 30, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (60, 8, N'piercing_pct', N'piercing_pct', 0, 6, 30, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (61, 9, N'visibility_pct', N'visibility_pct', 0, 1, 26, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (62, 9, N'visibility_pct', N'visibility_pct', 0, 2, 26, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (63, 9, N'visibility_pct', N'visibility_pct', 0, 3, 26, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (64, 9, N'visibility_pct', N'visibility_pct', 0, 4, 26, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (65, 9, N'visibility_pct', N'visibility_pct', 0, 5, 26, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (66, 9, N'visibility_pct', N'visibility_pct', 0, 6, 26, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (67, 9, N'visibility_pct', N'visibility_pct', 0, 7, 26, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (68, 9, N'visibility_pct', N'visibility_pct', 0, 8, 26, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (69, 9, N'visibility_pct', N'visibility_pct', 0, 9, 26, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (70, 10, N'range_pct', N'range_pct', 0, 1, 27, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (71, 10, N'range_pct', N'range_pct', 0, 2, 27, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (72, 10, N'range_pct', N'range_pct', 0, 3, 27, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (73, 10, N'range_pct', N'range_pct', 0, 4, 27, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (74, 10, N'range_pct', N'range_pct', 0, 5, 27, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (75, 10, N'range_pct', N'range_pct', 0, 6, 27, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (76, 11, N'min_accy_pct', N'min_accy_pct', 0, 1, 24, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (77, 11, N'min_accy_pct', N'min_accy_pct', 0, 2, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (78, 11, N'min_accy_pct', N'min_accy_pct', 0, 3, 24, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (79, 11, N'min_accy_pct', N'min_accy_pct', 0, 4, 24, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (80, 11, N'min_accy_pct', N'min_accy_pct', 0, 5, 24, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (81, 11, N'min_accy_pct', N'min_accy_pct', 0, 6, 24, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (82, 11, N'min_accy_pct', N'min_accy_pct', 0, 7, 24, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (83, 11, N'min_accy_pct', N'min_accy_pct', 0, 8, 24, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (84, 11, N'min_accy_pct', N'min_accy_pct', 0, 9, 24, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (85, 12, N'speed_pct', N'speed_pct', 0, 1, 22, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (86, 12, N'speed_pct', N'speed_pct', 0, 2, 22, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (87, 12, N'speed_pct', N'speed_pct', 0, 3, 22, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (88, 12, N'speed_pct', N'speed_pct', 0, 4, 22, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (89, 12, N'speed_pct', N'speed_pct', 0, 5, 22, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (90, 12, N'speed_pct', N'speed_pct', 0, 6, 22, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (91, 13, N'reload_pct', N'reload_pct', 0, 1, 29, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (92, 13, N'reload_pct', N'reload_pct', 0, 2, 29, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (93, 13, N'reload_pct', N'reload_pct', 0, 3, 29, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (94, 13, N'reload_pct', N'reload_pct', 0, 4, 29, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (95, 13, N'reload_pct', N'reload_pct', 0, 5, 29, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (96, 13, N'reload_pct', N'reload_pct', 0, 6, 29, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (97, 13, N'reload_pct', N'reload_pct', 0, 7, 29, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (98, 13, N'reload_pct', N'reload_pct', 0, 8, 29, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (99, 13, N'reload_pct', N'reload_pct', 0, 9, 29, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (100, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 1, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (101, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (102, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 3, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (103, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 4, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (104, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 5, 3, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (105, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 6, 3, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (106, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 7, 3, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (107, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 8, 3, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (108, 14, N'front_side_armor_pts', N'front_side_armor_pts', 0, 9, 3, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (109, 15, N'visible_range_pct', N'visible_range_pct', 0, 1, 26, 4, 27, 3, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (110, 15, N'visible_range_pct', N'visible_range_pct', 0, 2, 26, 5, 27, 5, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (111, 15, N'visible_range_pct', N'visible_range_pct', 0, 3, 26, 6, 27, 7, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (112, 15, N'visible_range_pct', N'visible_range_pct', 0, 4, 26, 7, 27, 9, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (113, 15, N'visible_range_pct', N'visible_range_pct', 0, 5, 26, 8, 27, 11, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (114, 15, N'visible_range_pct', N'visible_range_pct', 0, 6, 26, 9, 27, 13, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (115, 15, N'visible_range_pct', N'visible_range_pct', 0, 7, 26, 10, 27, 15, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (116, 15, N'visible_range_pct', N'visible_range_pct', 0, 8, 26, 11, 27, 17, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (117, 15, N'visible_range_pct', N'visible_range_pct', 0, 9, 26, 12, 27, 19, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (118, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 1, 16, 2, 15, 2, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (119, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 2, 16, 3, 15, 3, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (120, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 3, 16, 4, 15, 4, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (121, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 4, 16, 5, 15, 6, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (122, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 5, 16, 6, 15, 8, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (123, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 6, 16, 8, 15, 10, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (124, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 7, 16, 10, 15, 12, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (125, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 8, 16, 12, 15, 14, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (126, 16, N'damage_piercing_pts', N'damage_piercing_pts', 0, 9, 16, 14, 15, 16, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (127, 17, N'vehicle_sc', N'c_sc_01', 3, 1, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (128, 17, N'vehicle_sc', N'c_sc_01', 3, 2, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (129, 17, N'vehicle_sc', N'c_sc_01', 3, 3, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (130, 18, N'vehicle_lt', N'c_lt_01', 3, 1, 17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (131, 18, N'vehicle_lt', N'c_lt_01', 3, 2, 17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (132, 18, N'vehicle_lt', N'c_lt_01', 3, 3, 17, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (133, 19, N'vehicle_mt', N'c_mt_01', 3, 1, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (134, 19, N'vehicle_mt', N'c_mt_01', 3, 2, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (135, 19, N'vehicle_mt', N'c_mt_01', 3, 3, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (136, 20, N'vehicle_ht', N'c_ht_01', 3, 1, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (137, 20, N'vehicle_ht', N'c_ht_01', 3, 2, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (138, 20, N'vehicle_ht', N'c_ht_01', 3, 3, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (139, 21, N'vehicle_spg', N'c_spg_01', 3, 1, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (140, 21, N'vehicle_spg', N'c_spg_01', 3, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (141, 21, N'vehicle_spg', N'c_spg_01', 3, 3, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (142, 22, N'vehicle_at', N'c_at_01', 3, 1, 27, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (143, 22, N'vehicle_at', N'c_at_01', 3, 2, 27, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (144, 22, N'vehicle_at', N'c_at_01', 3, 3, 27, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (145, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 1, 2, 70, 39, 18, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (146, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 2, 2, 68, 39, 19, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (147, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 3, 2, 66, 39, 20, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (148, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 4, 2, 64, 39, 21, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (149, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 5, 2, 62, 39, 22, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (150, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 6, 2, 60, 39, 23, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (151, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 7, 2, 58, 39, 24, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (152, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 8, 2, 56, 39, 25, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (153, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 9, 2, 54, 39, 27, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (154, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 10, 2, 52, 39, 29, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (155, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 11, 2, 50, 39, 31, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (156, 23, N'repair_tank_pct', N'repair_tank_pct', 1, 12, 2, 48, 39, 33, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (157, 24, N'additional_armor', N'additional_armor', 1, 1, 2, 70, 1, 25, 38, 35, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (158, 24, N'additional_armor', N'additional_armor', 1, 2, 2, 68, 1, 26, 38, 50, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (159, 24, N'additional_armor', N'additional_armor', 1, 3, 2, 66, 1, 27, 38, 70, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (160, 24, N'additional_armor', N'additional_armor', 1, 4, 2, 64, 1, 29, 38, 90, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (161, 24, N'additional_armor', N'additional_armor', 1, 5, 2, 62, 1, 31, 38, 125, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (162, 24, N'additional_armor', N'additional_armor', 1, 6, 2, 60, 1, 33, 38, 150, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (163, 24, N'additional_armor', N'additional_armor', 1, 7, 2, 58, 1, 35, 38, 200, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (164, 24, N'additional_armor', N'additional_armor', 1, 8, 2, 56, 1, 35, 38, 280, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (165, 24, N'additional_armor', N'additional_armor', 1, 9, 2, 54, 1, 35, 38, 380, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (166, 24, N'additional_armor', N'additional_armor', 1, 10, 2, 52, 1, 35, 38, 480, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (167, 24, N'additional_armor', N'additional_armor', 1, 11, 2, 50, 1, 35, 38, 580, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (168, 24, N'additional_armor', N'additional_armor', 1, 12, 2, 48, 1, 35, 38, 650, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (169, 25, N'camouflage', N'camouflage', 1, 1, 2, 65, 1, 30, 34, 30, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (170, 25, N'camouflage', N'camouflage', 1, 2, 2, 65, 1, 31, 34, 32, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (171, 25, N'camouflage', N'camouflage', 1, 3, 2, 65, 1, 32, 34, 34, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (172, 25, N'camouflage', N'camouflage', 1, 4, 2, 60, 1, 33, 34, 36, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (173, 25, N'camouflage', N'camouflage', 1, 5, 2, 60, 1, 34, 34, 38, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (174, 25, N'camouflage', N'camouflage', 1, 6, 2, 60, 1, 36, 34, 40, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (175, 25, N'camouflage', N'camouflage', 1, 7, 2, 55, 1, 38, 34, 42, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (176, 25, N'camouflage', N'camouflage', 1, 8, 2, 55, 1, 40, 34, 44, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (177, 25, N'camouflage', N'camouflage', 1, 9, 2, 52, 1, 42, 34, 46, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (178, 25, N'camouflage', N'camouflage', 1, 10, 2, 52, 1, 44, 34, 48, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (179, 25, N'camouflage', N'camouflage', 1, 11, 2, 52, 1, 45, 34, 50, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (180, 25, N'camouflage', N'camouflage', 1, 12, 2, 52, 1, 45, 34, 52, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (181, 26, N'attack_leader', N'attack_leader', 1, 1, 2, 70, 1, 30, 37, 4, 48, 1, 31, 5, 15, 2)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (182, 26, N'attack_leader', N'attack_leader', 1, 2, 2, 68, 1, 30, 37, 4, 48, 1, 31, 6, 15, 3)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (183, 26, N'attack_leader', N'attack_leader', 1, 3, 2, 66, 1, 30, 37, 4, 48, 1, 31, 7, 15, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (184, 26, N'attack_leader', N'attack_leader', 1, 4, 2, 64, 1, 35, 37, 4, 48, 1, 31, 8, 15, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (185, 26, N'attack_leader', N'attack_leader', 1, 5, 2, 62, 1, 35, 37, 4, 48, 1, 31, 9, 15, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (186, 26, N'attack_leader', N'attack_leader', 1, 6, 2, 60, 1, 40, 37, 4, 48, 1, 31, 10, 15, 7)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (187, 26, N'attack_leader', N'attack_leader', 1, 7, 2, 58, 1, 40, 37, 4, 48, 1, 31, 11, 15, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (188, 26, N'attack_leader', N'attack_leader', 1, 8, 2, 56, 1, 45, 37, 4, 48, 1, 31, 12, 15, 9)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (189, 26, N'attack_leader', N'attack_leader', 1, 9, 2, 54, 1, 45, 37, 4, 48, 1, 31, 14, 15, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (190, 27, N'cautious_leader', N'cautious_leader', 1, 1, 2, 70, 1, 30, 37, 4, 48, 2, 3, 1, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (191, 27, N'cautious_leader', N'cautious_leader', 1, 2, 2, 68, 1, 30, 37, 4, 48, 2, 3, 2, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (192, 27, N'cautious_leader', N'cautious_leader', 1, 3, 2, 66, 1, 30, 37, 4, 48, 2, 3, 3, 4, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (193, 27, N'cautious_leader', N'cautious_leader', 1, 4, 2, 64, 1, 35, 37, 4, 48, 2, 3, 4, 4, 2)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (194, 27, N'cautious_leader', N'cautious_leader', 1, 5, 2, 62, 1, 35, 37, 4, 48, 2, 3, 5, 4, 3)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (195, 27, N'cautious_leader', N'cautious_leader', 1, 6, 2, 60, 1, 40, 37, 4, 48, 2, 3, 6, 4, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (196, 27, N'cautious_leader', N'cautious_leader', 1, 7, 2, 58, 1, 40, 37, 4, 48, 2, 3, 7, 4, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (197, 27, N'cautious_leader', N'cautious_leader', 1, 8, 2, 56, 1, 45, 37, 4, 48, 2, 3, 8, 4, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (198, 27, N'cautious_leader', N'cautious_leader', 1, 9, 2, 54, 1, 45, 37, 4, 48, 2, 3, 10, 4, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (199, 28, N'HEAT_shot', N'HEAT_shot', 1, 1, 2, 60, 45, 4, 43, 6, 32, -20, 1, 12, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (200, 28, N'HEAT_shot', N'HEAT_shot', 1, 2, 2, 59, 45, 4, 43, 8, 32, -22, 1, 13, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (201, 28, N'HEAT_shot', N'HEAT_shot', 1, 3, 2, 58, 45, 4, 43, 10, 32, -24, 1, 14, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (202, 28, N'HEAT_shot', N'HEAT_shot', 1, 4, 2, 57, 45, 4, 43, 12, 32, -26, 1, 15, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (203, 28, N'HEAT_shot', N'HEAT_shot', 1, 5, 2, 56, 45, 4, 43, 14, 32, -28, 1, 16, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (204, 28, N'HEAT_shot', N'HEAT_shot', 1, 6, 2, 55, 45, 4, 43, 16, 32, -30, 1, 17, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (205, 28, N'HEAT_shot', N'HEAT_shot', 1, 7, 2, 54, 45, 4, 43, 18, 32, -32, 1, 18, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (206, 28, N'HEAT_shot', N'HEAT_shot', 1, 8, 2, 52, 45, 4, 43, 20, 32, -35, 1, 19, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (207, 28, N'HEAT_shot', N'HEAT_shot', 1, 9, 2, 50, 45, 4, 43, 22, 32, -40, 1, 20, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (208, 28, N'HEAT_shot', N'HEAT_shot', 1, 10, 2, 50, 45, 4, 43, 24, 32, -40, 1, 21, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (209, 28, N'HEAT_shot', N'HEAT_shot', 1, 11, 2, 50, 45, 4, 43, 26, 32, -40, 1, 22, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (210, 28, N'HEAT_shot', N'HEAT_shot', 1, 12, 2, 50, 45, 4, 43, 30, 32, -40, 1, 23, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (211, 29, N'HE_shot', N'HE_shot', 1, 1, 2, 60, 43, -10, 36, 30, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (212, 29, N'HE_shot', N'HE_shot', 1, 2, 2, 59, 43, -7, 36, 35, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (213, 29, N'HE_shot', N'HE_shot', 1, 3, 2, 58, 43, -6, 36, 40, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (214, 29, N'HE_shot', N'HE_shot', 1, 4, 2, 57, 43, 1, 36, 45, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (215, 29, N'HE_shot', N'HE_shot', 1, 5, 2, 56, 43, 3, 36, 50, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (216, 29, N'HE_shot', N'HE_shot', 1, 6, 2, 55, 43, 6, 36, 53, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (217, 29, N'HE_shot', N'HE_shot', 1, 7, 2, 54, 43, 9, 36, 56, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (218, 29, N'HE_shot', N'HE_shot', 1, 8, 2, 53, 43, 12, 36, 59, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (219, 29, N'HE_shot', N'HE_shot', 1, 9, 2, 52, 43, 15, 36, 62, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (220, 29, N'HE_shot', N'HE_shot', 1, 10, 2, 51, 43, 18, 36, 65, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (221, 29, N'HE_shot', N'HE_shot', 1, 11, 2, 50, 43, 21, 36, 68, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (222, 29, N'HE_shot', N'HE_shot', 1, 12, 2, 49, 43, 24, 36, 71, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (223, 30, N'sniper_shot', N'sniper_shot', 1, 1, 2, 66, 43, 8, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (224, 30, N'sniper_shot', N'sniper_shot', 1, 2, 2, 65, 43, 12, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (225, 30, N'sniper_shot', N'sniper_shot', 1, 3, 2, 64, 43, 16, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (226, 30, N'sniper_shot', N'sniper_shot', 1, 4, 2, 63, 43, 20, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (227, 30, N'sniper_shot', N'sniper_shot', 1, 5, 2, 62, 43, 24, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (228, 30, N'sniper_shot', N'sniper_shot', 1, 6, 2, 61, 43, 28, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (229, 30, N'sniper_shot', N'sniper_shot', 1, 7, 2, 60, 43, 32, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (230, 30, N'sniper_shot', N'sniper_shot', 1, 8, 2, 59, 43, 36, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (231, 30, N'sniper_shot', N'sniper_shot', 1, 9, 2, 58, 43, 40, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (232, 30, N'sniper_shot', N'sniper_shot', 1, 10, 2, 57, 43, 45, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (233, 30, N'sniper_shot', N'sniper_shot', 1, 11, 2, 56, 43, 50, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (234, 30, N'sniper_shot', N'sniper_shot', 1, 12, 2, 52, 43, 55, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (235, 31, N'machinegun', N'machinegun', 1, 1, 2, 50, 40, 620, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (236, 31, N'machinegun', N'machinegun', 1, 2, 2, 49, 40, 621, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (237, 31, N'machinegun', N'machinegun', 1, 3, 2, 47, 40, 622, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (238, 31, N'machinegun', N'machinegun', 1, 4, 2, 45, 40, 623, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (239, 31, N'machinegun', N'machinegun', 1, 5, 2, 43, 40, 624, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (240, 31, N'machinegun', N'machinegun', 1, 6, 2, 41, 40, 625, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (241, 31, N'machinegun', N'machinegun', 1, 7, 2, 39, 40, 626, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (242, 31, N'machinegun', N'machinegun', 1, 8, 2, 37, 40, 627, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (243, 31, N'machinegun', N'machinegun', 1, 9, 2, 35, 40, 628, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (244, 31, N'machinegun', N'machinegun', 1, 10, 2, 35, 40, 629, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (245, 31, N'machinegun', N'machinegun', 1, 11, 2, 35, 40, 630, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (246, 31, N'machinegun', N'machinegun', 1, 12, 2, 35, 40, 631, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (247, 32, N'handyman', N'handyman', 1, 1, 2, 70, 1, 15, 49, 3, 6, 35, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (248, 32, N'handyman', N'handyman', 1, 2, 2, 68, 1, 15, 49, 3, 6, 40, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (249, 32, N'handyman', N'handyman', 1, 3, 2, 66, 1, 18, 49, 3, 6, 60, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (250, 32, N'handyman', N'handyman', 1, 4, 2, 64, 1, 18, 49, 3, 6, 80, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (251, 32, N'handyman', N'handyman', 1, 5, 2, 62, 1, 21, 49, 3, 6, 140, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (252, 32, N'handyman', N'handyman', 1, 6, 2, 60, 1, 21, 49, 3, 6, 200, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (253, 32, N'handyman', N'handyman', 1, 7, 2, 58, 1, 24, 49, 3, 6, 260, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (254, 32, N'handyman', N'handyman', 1, 8, 2, 56, 1, 24, 49, 3, 6, 320, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (255, 32, N'handyman', N'handyman', 1, 9, 2, 54, 1, 27, 49, 3, 6, 380, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (256, 32, N'handyman', N'handyman', 1, 10, 2, 52, 1, 27, 49, 3, 6, 440, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (257, 32, N'handyman', N'handyman', 1, 11, 2, 50, 1, 27, 49, 3, 6, 500, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (258, 32, N'handyman', N'handyman', 1, 12, 2, 48, 1, 27, 49, 3, 6, 560, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (259, 33, N'rocket_missile', N'rocket_missile', 1, 1, 2, 60, 45, 5, 35, 3, 58, -50, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (260, 33, N'rocket_missile', N'rocket_missile', 1, 2, 2, 59, 45, 5, 35, 3, 58, -47, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (261, 33, N'rocket_missile', N'rocket_missile', 1, 3, 2, 58, 45, 5, 35, 3, 58, -44, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (262, 33, N'rocket_missile', N'rocket_missile', 1, 4, 2, 57, 45, 5, 35, 3, 58, -41, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (263, 33, N'rocket_missile', N'rocket_missile', 1, 5, 2, 56, 45, 5, 35, 3, 58, -38, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (264, 33, N'rocket_missile', N'rocket_missile', 1, 6, 2, 55, 45, 5, 35, 3, 58, -35, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (265, 33, N'rocket_missile', N'rocket_missile', 1, 7, 2, 54, 45, 5, 35, 3, 58, -32, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (266, 33, N'rocket_missile', N'rocket_missile', 1, 8, 2, 52, 45, 5, 35, 3, 58, -29, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (267, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 50, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (268, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 50, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (269, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 50, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (270, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 50, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (271, 34, N'mines', N'mines', 1, 1, 2, 30, 1, 4, 50, 640, 36, 13, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (272, 34, N'mines', N'mines', 1, 2, 2, 30, 1, 4, 50, 641, 36, 14, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (273, 34, N'mines', N'mines', 1, 3, 2, 30, 1, 5, 50, 642, 36, 15, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (274, 34, N'mines', N'mines', 1, 4, 2, 30, 1, 5, 50, 643, 36, 17, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (275, 34, N'mines', N'mines', 1, 5, 2, 30, 1, 5, 50, 644, 36, 19, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (276, 34, N'mines', N'mines', 1, 6, 2, 30, 1, 5, 50, 645, 36, 21, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (277, 34, N'mines', N'mines', 1, 7, 2, 30, 1, 5, 50, 646, 36, 23, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (278, 34, N'mines', N'mines', 1, 8, 2, 30, 1, 6, 50, 647, 36, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (279, 34, N'mines', N'mines', 1, 9, 2, 30, 1, 6, 50, 648, 36, 27, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (280, 34, N'mines', N'mines', 1, 10, 2, 30, 1, 6, 50, 649, 36, 29, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (281, 34, N'mines', N'mines', 1, 11, 2, 30, 1, 6, 50, 650, 36, 31, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (282, 34, N'mines', N'mines', 1, 12, 2, 30, 1, 6, 50, 651, 36, 33, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (283, 35, N'special_aid', N'special_aid', 1, 1, 2, 50, 1, 20, 52, 20, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (284, 35, N'special_aid', N'special_aid', 1, 2, 2, 48, 1, 21, 52, 22, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (285, 35, N'special_aid', N'special_aid', 1, 3, 2, 46, 1, 22, 52, 24, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (286, 35, N'special_aid', N'special_aid', 1, 4, 2, 44, 1, 23, 52, 26, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (287, 35, N'special_aid', N'special_aid', 1, 5, 2, 42, 1, 24, 52, 28, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (288, 35, N'special_aid', N'special_aid', 1, 6, 2, 40, 1, 25, 52, 30, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (289, 35, N'special_aid', N'special_aid', 1, 7, 2, 38, 1, 26, 52, 32, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (290, 35, N'special_aid', N'special_aid', 1, 8, 2, 36, 1, 27, 52, 34, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (291, 35, N'special_aid', N'special_aid', 1, 9, 2, 34, 1, 28, 52, 36, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (292, 36, N'binoculars', N'binoculars', 1, 1, 2, 80, 1, 32, 51, 1, 26, 8, 27, 8, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (293, 36, N'binoculars', N'binoculars', 1, 2, 2, 79, 1, 33, 51, 1, 26, 9, 27, 9, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (294, 36, N'binoculars', N'binoculars', 1, 3, 2, 78, 1, 34, 51, 1, 26, 10, 27, 10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (295, 36, N'binoculars', N'binoculars', 1, 4, 2, 77, 1, 35, 51, 1, 26, 11, 27, 11, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (296, 36, N'binoculars', N'binoculars', 1, 5, 2, 76, 1, 36, 51, 1, 26, 12, 27, 12, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (297, 36, N'binoculars', N'binoculars', 1, 6, 2, 74, 1, 38, 51, 1, 26, 13, 27, 13, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (298, 36, N'binoculars', N'binoculars', 1, 7, 2, 72, 1, 40, 51, 1, 26, 14, 27, 14, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (299, 36, N'binoculars', N'binoculars', 1, 8, 2, 70, 1, 42, 51, 1, 26, 15, 27, 15, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (300, 36, N'binoculars', N'binoculars', 1, 9, 2, 68, 1, 44, 51, 1, 26, 16, 27, 16, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (301, 36, N'binoculars', N'binoculars', 1, 10, 2, 66, 1, 46, 51, 1, 26, 17, 27, 17, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (302, 36, N'binoculars', N'binoculars', 1, 11, 2, 64, 1, 48, 51, 1, 26, 18, 27, 18, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (303, 36, N'binoculars', N'binoculars', 1, 12, 2, 62, 1, 50, 51, 1, 26, 20, 27, 20, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (304, 37, N'iron_will', N'iron_will', 1, 1, 2, 60, 1, 30, 52, 20, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (305, 37, N'iron_will', N'iron_will', 1, 2, 2, 59, 1, 32, 52, 22, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (306, 37, N'iron_will', N'iron_will', 1, 3, 2, 58, 1, 34, 52, 24, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (307, 37, N'iron_will', N'iron_will', 1, 4, 2, 57, 1, 36, 52, 26, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (308, 37, N'iron_will', N'iron_will', 1, 5, 2, 56, 1, 38, 52, 28, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (309, 37, N'iron_will', N'iron_will', 1, 6, 2, 55, 1, 40, 52, 30, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (310, 37, N'iron_will', N'iron_will', 1, 7, 2, 54, 1, 42, 52, 32, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (311, 37, N'iron_will', N'iron_will', 1, 8, 2, 52, 1, 44, 52, 34, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (312, 37, N'iron_will', N'iron_will', 1, 9, 2, 50, 1, 46, 52, 36, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (313, 38, N'adrenaline', N'adrenaline', 1, 1, 2, 60, 1, 30, 56, 20, 29, 20, 58, 20, 59, 24)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (314, 38, N'adrenaline', N'adrenaline', 1, 2, 2, 59, 1, 31, 56, 22, 29, 22, 58, 22, 59, 23)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (315, 38, N'adrenaline', N'adrenaline', 1, 3, 2, 58, 1, 32, 56, 24, 29, 24, 58, 24, 59, 22)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (316, 38, N'adrenaline', N'adrenaline', 1, 4, 2, 57, 1, 33, 56, 26, 29, 26, 58, 26, 59, 21)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (317, 38, N'adrenaline', N'adrenaline', 1, 5, 2, 56, 1, 34, 56, 28, 29, 28, 58, 28, 59, 20)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (318, 38, N'adrenaline', N'adrenaline', 1, 6, 2, 55, 1, 35, 56, 30, 29, 30, 58, 30, 59, 19)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (319, 38, N'adrenaline', N'adrenaline', 1, 7, 2, 54, 1, 36, 56, 32, 29, 32, 58, 32, 59, 17)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (320, 38, N'adrenaline', N'adrenaline', 1, 8, 2, 52, 1, 38, 56, 34, 29, 34, 58, 34, 59, 14)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (321, 38, N'adrenaline', N'adrenaline', 1, 9, 2, 50, 1, 40, 56, 36, 29, 36, 58, 36, 59, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (322, 39, N'accurate_calculation', N'accurate_calculation', 1, 1, 2, 66, 1, 30, 54, 25, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (323, 39, N'accurate_calculation', N'accurate_calculation', 1, 2, 2, 65, 1, 31, 54, 27, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (324, 39, N'accurate_calculation', N'accurate_calculation', 1, 3, 2, 64, 1, 32, 54, 29, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (325, 39, N'accurate_calculation', N'accurate_calculation', 1, 4, 2, 63, 1, 33, 54, 31, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (326, 39, N'accurate_calculation', N'accurate_calculation', 1, 5, 2, 62, 1, 34, 54, 33, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (327, 39, N'accurate_calculation', N'accurate_calculation', 1, 6, 2, 61, 1, 35, 54, 35, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (328, 39, N'accurate_calculation', N'accurate_calculation', 1, 7, 2, 60, 1, 37, 54, 37, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (329, 39, N'accurate_calculation', N'accurate_calculation', 1, 8, 2, 59, 1, 39, 54, 39, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (330, 39, N'accurate_calculation', N'accurate_calculation', 1, 9, 2, 58, 1, 41, 54, 41, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (331, 39, N'accurate_calculation', N'accurate_calculation', 1, 10, 2, 57, 1, 43, 54, 44, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (332, 39, N'accurate_calculation', N'accurate_calculation', 1, 11, 2, 56, 1, 45, 54, 47, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (333, 39, N'accurate_calculation', N'accurate_calculation', 1, 12, 2, 55, 1, 45, 54, 55, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (334, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 1, 2, 90, 62, 25, 33, 150, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (335, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 2, 2, 88, 62, 25, 33, 180, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (336, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 3, 2, 86, 62, 25, 33, 210, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (337, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 4, 2, 84, 62, 25, 33, 240, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (338, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 5, 2, 82, 62, 25, 33, 270, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (339, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 6, 2, 80, 62, 25, 33, 300, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (340, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 1, 2, 90, 62, 25, 1, 15, 49, 3, 6, 200, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (341, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 2, 2, 88, 62, 25, 1, 15, 49, 3, 6, 260, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (342, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 3, 2, 86, 62, 25, 1, 15, 49, 3, 6, 320, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (343, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 4, 2, 84, 62, 25, 1, 15, 49, 3, 6, 380, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (344, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 5, 2, 82, 62, 25, 1, 15, 49, 3, 6, 440, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (345, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 6, 2, 80, 62, 25, 1, 15, 49, 3, 6, 500, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (346, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 1, 2, 90, 62, 25, 1, 10, 17, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (347, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 2, 2, 88, 62, 25, 1, 12, 17, 30, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (348, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 3, 2, 86, 62, 25, 1, 14, 17, 39, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (349, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 4, 2, 84, 62, 25, 1, 16, 17, 46, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (350, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 5, 2, 82, 62, 25, 1, 18, 17, 53, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (351, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 6, 2, 80, 62, 25, 1, 20, 17, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (352, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 1, 2, 90, 62, 25, 1, 15, 37, 4, 30, 15, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (353, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 2, 2, 88, 62, 25, 1, 17, 37, 4, 30, 17, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (354, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 3, 2, 86, 62, 25, 1, 19, 37, 4, 30, 20, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (355, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 4, 2, 84, 62, 25, 1, 22, 37, 4, 30, 23, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (356, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 5, 2, 82, 62, 25, 1, 26, 37, 4, 30, 26, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (357, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 6, 2, 80, 62, 25, 1, 31, 37, 4, 30, 30, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (358, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 1, 2, 90, 62, 25, 1, 25, 16, 20, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (359, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 2, 2, 88, 62, 25, 1, 26, 16, 28, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (360, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 3, 2, 86, 62, 25, 1, 27, 16, 36, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (361, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 4, 2, 84, 62, 25, 1, 28, 16, 44, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (362, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 5, 2, 82, 62, 25, 1, 29, 16, 52, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (363, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 6, 2, 80, 62, 25, 1, 30, 16, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (364, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 1, 2, 90, 62, 25, 43, -10, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (365, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 2, 2, 88, 62, 25, 43, -5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (366, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 3, 2, 86, 62, 25, 43, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (367, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 4, 2, 84, 62, 25, 43, 5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (368, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 5, 2, 82, 62, 25, 43, 9, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (369, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 6, 2, 80, 62, 25, 43, 13, 45, 3, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
