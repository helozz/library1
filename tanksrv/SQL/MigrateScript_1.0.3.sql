USE [iron5]
GO
DELETE FROM [dbo].[RandomItems]
GO
DELETE FROM [dbo].[PvPConfigs]
GO
DELETE FROM [dbo].[BlindBuys]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1044, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 6, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1045, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 15, 160, 120, N'', 1, 1, 2, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1046, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 4, 160, 120, N'', 1, 1, 2, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1047, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 9, 160, 120, N'', 1, 1, 2, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1049, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 2, 0, 160, 120, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1051, 3, N'tank3tier', 0, 0, 0, 172800000, 0, 2, 40, 140, N'', 0, 1, 2500, 5)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1053, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, 10, 0, 25, 125, N'', 1, 1, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1054, 6, N'money_offer_03', 518400000, 0, 1, 172800000, 5, 0, 20, 130, N'', 0, 0, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1055, 2, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, 12, 23, 30, 135, N'[24,2]', 1, 1, 0, 3)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1059, 8, N'tank4tier', 0, 0, 0, 172800000, 0, 44, 40, 150, N'', 0, 1, 4900, 7)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1060, 9, N'tank5tier', 0, 0, 0, 172800000, 0, 49, 40, 160, N'', 0, 1, 8750, 9)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1061, 10, N'tank6tier', 0, 0, 0, 172800000, 0, 81, 40, 170, N'', 0, 1, 14200, 11)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1062, 11, N'tank7tier', 0, 0, 0, 172800000, 0, 87, 40, 180, N'', 0, 1, 22450, 13)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1063, 12, N'tank8tier', 0, 0, 0, 172800000, 0, 103, 40, 190, N'', 0, 1, 34250, 15)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1064, 4, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'newbie_veteran_crew1', 0, 0, 0, 1)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel]) VALUES (1065, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'veteran_crew1', 0, 0, 0, 1)
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
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1003, N'{"ident":"veteran_crew1","gold":190,"mask":8,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1006, N'{"ident":"newbie_common_crew1","money":900,"mask":24,"items":[{"tier":1,"weight":9,"ids":[2,3,4,5]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1007, N'{"ident":"newbie_veteran_crew1","money":0,"mask":24,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}],"gold":190}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1008, N'{"ident":"com.iron5studio.iron5.tank2tier","gold":0,"money":0,"items":[{"tank":23},{"crew":5,"tier":3}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1009, N'{"ident":"tank3tier","gold":1000,"money":0,"items":[{"tank":21}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1011, N'{"gold":1250,"money":0,"ident":"basic_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":13,"upgrades":[]}],"mask":7,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1012, N'{"gold":2500,"money":0,"ident":"basic_tier_3_reinforcement","items":[{"tank":2,"weight":11,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":21,"weight":17,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":7,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1013, N'{"gold":4900,"money":0,"ident":"basic_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":44,"weight":17,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":10,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":7,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1014, N'{"gold":8750,"money":0,"ident":"basic_tier_5_reinforcement","items":[{"tank":24,"weight":11,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":7,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1015, N'{"gold":14200,"money":0,"ident":"basic_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":9,"upgrades":[]}],"mask":7,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1016, N'{"gold":22450,"money":0,"ident":"basic_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":10,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":7,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1017, N'{"gold":34250,"money":0,"ident":"basic_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":9,"upgrades":[]}],"mask":7,"tier":8}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1018, N'{"ident":"hidden_4","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":41,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1019, N'{"ident":"hidden_2_tier_tank","tier":2,"money":0,"gold":0,"mask":0,"items":[{"tank":23,"weight":1,"upgrades":[]}]}')
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] OFF
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] ON 

GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (1, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (2, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (3, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (4, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (5, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (6, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (7, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (8, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (9, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (10, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 1)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (11, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (12, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (13, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (14, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (15, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (16, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (17, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (18, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (19, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (20, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 2)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (21, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (22, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (23, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (24, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (25, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (26, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (27, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (28, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (29, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (30, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 3)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (31, 0, 267, 104, 48, 22, 1, 0.69, 0.84, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (32, 268, 517, 101, 48, 19, 2, 1.27, 1.55, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (33, 518, 763, 100, 48, 16, 3, 1.14, 1.39, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (34, 764, 1134, 98, 48, 13, 4, 1.3, 1.59, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (35, 1135, 1775, 96, 48, 11, 5, 1.39, 1.7, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (36, 1776, 2484, 95, 48, 9, 6, 3.04, 3.72, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (37, 2485, 3903, 93, 48, 7, 7, 2.89, 3.53, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (38, 3904, 5640, 92, 48, 5, 8, 5.11, 6.24, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (39, 5641, 7896, 91, 48, 4, 9, 6.27, 7.66, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (40, 7897, 11055, 90, 48, 4, 10, 13.97, 17.07, 7)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (41, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (42, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (43, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (44, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (45, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (46, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (47, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (48, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (49, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (50, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 8)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (51, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (52, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (53, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (54, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (55, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (56, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (57, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (58, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (59, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (60, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 9)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (61, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (62, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (63, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (64, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (65, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (66, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (67, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (68, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (69, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (70, 7897, 11055, 90, 55, 4, 10, 7.99, 9.77, 10)
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[RandomItems] ON 

GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"tier1","items":[21,22,23,24,25,26,27,28],"weights":[72,96,108,24,0,0,0,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (2, N'{"ident":"tier2","items":[21,22,23,24,25,26,27,28],"weights":[99,78,75,35,4,6,4,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (3, N'{"ident":"tier3","items":[21,22,23,24,25,26,27,28],"weights":[104,35,49,90,1,4,17,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (4, N'{"ident":"tier4","items":[21,22,23,24,25,26,27,28],"weights":[107,47,74,55,5,2,9,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (5, N'{"ident":"tier5","items":[21,22,23,24,25,26,27,28],"weights":[122,35,84,47,3,1,7,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (6, N'{"ident":"tier6","items":[21,22,23,24,25,26,27,28],"weights":[85,81,73,44,3,7,7,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (7, N'{"ident":"tier7","items":[21,22,23,24,25,26,27,28],"weights":[109,62,87,29,2,5,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (8, N'{"ident":"tier8","items":[21,22,23,24,25,26,27,28],"weights":[104,66,83,32,4,4,6,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (9, N'{"ident":"tier9","items":[21,22,23,24,25,26,27,28],"weights":[115,59,92,22,2,5,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (10, N'{"ident":"tier10","items":[21,22,23,24,25,26,27,28],"weights":[108,73,93,13,2,6,3,1]}')
GO
SET IDENTITY_INSERT [dbo].[RandomItems] OFF
GO
