USE [iron5]
GO
DELETE FROM [dbo].[PowerUps]
GO
DELETE FROM [dbo].[MarketItems]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1044, 1, 4, N'com.iron5studio.iron5.beginnerpack', 86400000, 0, 10, 86400000, N'[2,15,6,7,7]', N'[0,0,0,348,10]', N'[4000,7,1,10,10]', 320, 0, 120, 0, 0, 1, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1051, 3, 1, N'tank3tier', 0, 0, 0, 86400000, N'[0]', N'[224]', N'[1]', 0, 35, 140, 224, 0, 0, 1, 3, 1750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1053, 5, 8, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, N'[10]', N'[]', N'[]', 0, 35, 125, 0, 0, 1, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1055, 2, 3, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 86400000, N'[0,1,15]', N'[215,11,0]', N'[1,1,1]', 220, 0, 135, 215, 0, 1, 1, 2, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1059, 8, 1, N'tank4tier', 0, 0, 0, 86400000, N'[0]', N'[236]', N'[1]', 0, 35, 150, 236, 0, 0, 1, 4, 2500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1060, 9, 1, N'tank5tier', 0, 0, 0, 86400000, N'[0]', N'[248]', N'[1]', 0, 35, 160, 248, 0, 0, 1, 5, 3500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1061, 10, 1, N'tank6tier', 0, 0, 0, 86400000, N'[0]', N'[260]', N'[1]', 0, 35, 170, 260, 0, 0, 1, 6, 4500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1062, 11, 1, N'tank7tier', 0, 0, 0, 86400000, N'[0]', N'[272]', N'[1]', 0, 35, 180, 272, 0, 0, 1, 7, 5750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1063, 12, 1, N'tank8tier', 0, 0, 0, 86400000, N'[0]', N'[283]', N'[1]', 0, 35, 190, 283, 0, 0, 1, 8, 7000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1065, 4, 7, N'veteran_crew1', 0, 0, 0, 86400000, N'[1,1,1]', N'[40,27,14]', N'[1,1,1]', 0, 50, 115, 0, 0, 0, 1, 3, 1500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1079, 14, 1, N'tank9tier', 0, 0, 0, 86400000, N'[0]', N'[293]', N'[1]', 0, 35, 195, 293, 0, 0, 1, 9, 8500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1081, 15, 1, N'tank10tier', 0, 0, 0, 86400000, N'[0]', N'[302]', N'[1]', 0, 35, 200, 302, 0, 0, 1, 10, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1088, 16, 0, N'components', 1479945600000, 1480032000000, 0, 86400000, N'[13]', N'[]', N'[]', 0, 50, 200, 0, 3, 0, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1092, 17, 0, N'books', 1479945600000, 1480032000000, 0, 86400000, N'[14]', N'[]', N'[]', 0, 50, 200, 0, 3, 0, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1094, 18, 10, N'powerups', 1475575200000, 1476439200000, 0, 86400000, N'[3]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1095, 19, 9, N'parts', 1475575200000, 1476439200000, 0, 86400000, N'[9]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1097, 20, 6, N'componentpack3', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[21,22,23,24]', N'[200,200,200,200]', 0, 25, 150, 0, 0, 0, 1, 3, 500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1100, 21, 6, N'bookpack4', 0, 0, 0, 86400000, N'[7,7,7]', N'[79,80,81]', N'[150,30,15]', 0, 25, 150, 0, 0, 0, 1, 4, 500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1101, 22, 1, N'tank10tier', 0, 0, 0, 86400000, N'[0]', N'[303]', N'[1]', 0, 35, 200, 303, 0, 0, 1, 10, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1102, 23, 6, N'componentpack4', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[25,26,27,28]', N'[35,35,35,10]', 0, 25, 150, 0, 0, 0, 1, 4, 1000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1106, 6, 14, N'com.iron5studio.iron5.elitepack', 0, 0, 10, 86400000, N'[2,15,7,7,7]', N'[0,0,710,711,5]', N'[6000,30,1,1,20]', 500, 0, 210, 0, 0, 1, 1, 10, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1107, 30, 13, N'com.iron5studio.iron5.veteranpack', 0, 0, 0, 86400000, N'[2,15,7,7,1]', N'[0,0,711,5,64]', N'[4000,15,1,10,1]', 400, 0, 210, 0, 0, 1, 1, 5, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1108, 29, 1, N'tank9tier', 0, 0, 0, 86400000, N'[0]', N'[314]', N'[1]', 0, 40, 195, 314, 0, 0, 1, 9, 7000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1109, 31, 1, N'tank3tier', 0, 0, 0, 86400000, N'[0]', N'[310]', N'[1]', 0, 35, 140, 310, 0, 0, 1, 3, 2000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1110, 32, 1, N'tank3tier', 0, 0, 0, 86400000, N'[0]', N'[311]', N'[1]', 0, 35, 140, 311, 0, 0, 1, 3, 2000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1111, 33, 6, N'componentpack5', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[21,22,23,24]', N'[500,500,500,500]', 0, 50, 150, 0, 0, 0, 1, 5, 1200)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1112, 34, 6, N'componentpack6', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[25,26,27,28]', N'[75,75,75,20]', 0, 50, 150, 0, 0, 0, 1, 4, 2000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1113, 35, 6, N'bookpack6', 0, 0, 0, 86400000, N'[7,7,7]', N'[90,91,92]', N'[100,25,5]', 0, 50, 150, 0, 0, 0, 1, 4, 2500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1114, 36, 6, N'componentpack7', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[25,26,27,28]', N'[75,75,75,20]', 0, 50, 150, 0, 0, 0, 1, 7, 2000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1115, 38, 6, N'componentpack9', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[25,26,27,28]', N'[250,250,250,50]', 0, 75, 150, 0, 0, 0, 1, 9, 5000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1116, 39, 1, N'tank9tier', 0, 0, 0, 86400000, N'[0]', N'[312]', N'[1]', 0, 40, 195, 312, 0, 0, 1, 9, 8000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1117, 40, 1, N'tank10tier', 0, 0, 0, 86400000, N'[0]', N'[304]', N'[1]', 0, 40, 200, 303, 0, 0, 1, 10, 9000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1118, 41, 6, N'bookpack10', 0, 0, 0, 86400000, N'[7,7,7,7]', N'[79,80,81,92]', N'[200,100,25,15]', 0, 75, 150, 0, 0, 0, 1, 4, 3000)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (42, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_1_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':200},{''type'':2,''num'':1,''item'':1}],''premiumBonus'':[{''type'':8,''num'':1,''item'':200},{''type'':2,''num'':1,''item'':1}]}]"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (43, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_2_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':205},{''type'':2,''num'':1,''item'':43}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (44, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_3_reinforcement","money": 0,
"price": 0,"OnUse": [
{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':206},{''type'':2,''num'':1,''item'':2}]}]"
}]
}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (45, N'{"type": "OrderItem","tier": 1,"name": "hidden_tier_4_reinforcement","money": 0,"price": 0,"OnUse": [{"name": "OrderItemOnUseItemHandler","args": "[{''weight'':32,''bonus'':[{''type'':8,''num'':1,''item'':204},{''type'':2,''num'':1,''item'':43}]}]"
}]
}', 9)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (90, N'{"type":"Exp","tier":"1","name":"exp_common","param":1000,"price":2000}', 12)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (91, N'{"type":"Exp","tier":"2","name":"exp_rare","param":5000,"price":10000}', 12)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (92, N'{"type":"Exp","tier":"3","name":"exp_elite","param":25000,"price":50000}', 12)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (208, N'{"type":"ShopItem",param:90,"money":5000,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (209, N'{"type":"ShopItem",param:90,"money":50000,"amount":50}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (210, N'{"type":"ShopItem",param:91,"gold":50,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (211, N'{"type":"ShopItem",param:92,"gold":250,"amount":5}', 6)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (320, N'{"type":"PowerUp","tier":1,"name":"minefield_01","customId":70,"price":200}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (321, N'{"type":"PowerUp","tier":2,"name":"minefield_02","customId":71,"price":500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (322, N'{"type":"PowerUp","tier":3,"name":"minefield_03","customId":72,"price":1500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (323, N'{"type":"PowerUp","tier":4,"name":"minefield_04","customId":73,"price":4000}', 11)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (516, N'{"type":"ShopItem",param:320,"gold":6,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (517, N'{"type":"ShopItem",param:321,"gold":12,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (518, N'{"type":"ShopItem",param:322,"gold":24,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (519, N'{"type":"ShopItem",param:323,"gold":48,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (600, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':360,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':25,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':4,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (601, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':540,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':648,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':45,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':6,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':6,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (602, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':720,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':865,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':60,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':9,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (603, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':990,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1190,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':83,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (604, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':5,''item'':90}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1450,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':100,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':4,''item'':25}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (605, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':6,''item'':90}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2160,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':150,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (606, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':7,''item'':90}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2700,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':187,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (607, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':8,''item'':90}]},{''weight'':20,''bonus'':[{''type'':5,''num'':275,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (608, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':9,''item'':90}]},{''weight'':20,''bonus'':[{''type'':5,''num'':350,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':5,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (609, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':7,''num'':10,''item'':90}]},{''weight'':20,''bonus'':[{''type'':5,''num'':450,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':27}]}]"}]}', 8)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (704, N'{"type":"Chest","price":650,"money":650,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':25},{''type'':7,''num'':15,''item'':26},{''type'':7,''num'':15,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':25},{''type'':7,''num'':20,''item'':26},{''type'':7,''num'':20,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81},{''type'':7,''num'':3,''item'':28}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':3,''item'':81},{''type'':7,''num'':3,''item'':341}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (706, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':81},{''type'':7,''num'':6,''item'':28},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':5,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':12,''item'':28},{''type'':7,''num'':20,''item'':80},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':25,''item'':80},{''type'':7,''num'':3,''item'':342}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (707, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':12,''item'':81},{''type'':7,''num'':12,''item'':28},{''type'':7,''num'':1000,''item'':22}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':50,''item'':80},{''type'':7,''num'':50,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':28},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':40,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':1200,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (710, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"componentChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':500,''item'':25},{''type'':7,''num'':500,''item'':26},{''type'':7,''num'':500,''item'':27},{''type'':7,''num'':100,''item'':28}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (711, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"bookChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':150,''item'':80},{''type'':7,''num'':25,''item'':81},{''type'':7,''num'':20,''item'':92}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1000, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':20,''item'':28},{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':5,''item'':92}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1001, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':5,''item'':28},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':8,''item'':28},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1002, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':11}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':12}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':41}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':56}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1003, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':57}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':58}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1004, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':62}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':62}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1005, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':63}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':63}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1006, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':64}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':64}]}]"}]}', 8)
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21,22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 2, 1, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,25,25,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 3, 1, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 4, 1, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (650, 5, 1, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (651, 6, 1, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (652, 7, 1, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (653, 8, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (654, 9, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (655, 8, 8, N'{"ident":"shop_slot_8_15","items":[209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (656, 9, 8, N'{"ident":"shop_slot_8_17","items":[211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (657, 10, 8, N'{"ident":"shop_slot_8_19","items":[213,211,209,205,203,201,199,197,191,189,187,185,183,177,175,173,171,169,163,161,159,157,155,147,145,143,141,139,131,129,127,125,123,115,113,111,109,107],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (658, 1, 11, N'{"ident":"shop_slot_11_1","items":[148,132,116,100,149,133,117,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (659, 2, 11, N'{"ident":"shop_slot_11_3","items":[192,178,164,150,148,134,132,118,116,102,100,193,179,165,151,149,135,133,119,117,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (660, 3, 11, N'{"ident":"shop_slot_11_9","items":[206,194,192,180,178,166,164,152,150,148,136,134,132,120,118,116,104,102,100,207,195,193,181,179,167,165,153,151,149,137,135,133,121,119,117,105,103,101],"weights":[1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (661, 6, 11, N'{"ident":"shop_slot_11_11","items":[206,196,194,192,182,180,178,168,166,164,154,152,150,138,136,134,122,120,118,106,104,102,207,197,195,193,183,181,179,169,167,165,155,153,151,139,137,135,123,121,119,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (662, 7, 11, N'{"ident":"shop_slot_11_13","items":[206,198,196,194,184,182,180,170,168,166,156,154,152,140,138,136,124,122,120,108,106,104,207,199,197,195,185,183,181,171,169,167,157,155,153,141,139,137,125,123,121,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (663, 8, 11, N'{"ident":"shop_slot_11_15","items":[208,206,200,198,196,194,186,184,182,180,172,170,168,166,158,156,154,152,142,140,138,136,126,124,122,120,110,108,106,104,209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (664, 9, 11, N'{"ident":"shop_slot_11_17","items":[210,208,206,202,200,198,196,194,188,186,184,182,180,174,172,170,168,166,160,158,156,154,152,144,142,140,138,136,128,126,124,122,120,112,110,108,106,104,211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (665, 10, 11, N'{"ident":"shop_slot_11_19","items":[212,210,208,204,202,200,198,196,190,188,186,184,182,176,174,172,170,168,162,160,158,156,154,146,144,142,140,138,130,128,126,124,122,114,112,110,108,106,213,211,209,205,203,201,199,197,191,189,187,185,183,177,175,173,171,169,163,161,159,157,155,147,145,143,141,139,131,129,127,125,123,115,113,111,109,107],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (666, 1, 14, N'{"ident":"shop_slot_14_1","items":[148,132,116,100,149,133,117,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (667, 2, 14, N'{"ident":"shop_slot_14_3","items":[192,178,164,150,148,134,132,118,116,102,100,193,179,165,151,149,135,133,119,117,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (668, 5, 14, N'{"ident":"shop_slot_14_9","items":[206,194,192,180,178,166,164,152,150,148,136,134,132,120,118,116,104,102,100,207,195,193,181,179,167,165,153,151,149,137,135,133,121,119,117,105,103,101],"weights":[1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (669, 6, 14, N'{"ident":"shop_slot_14_11","items":[206,196,194,192,182,180,178,168,166,164,154,152,150,138,136,134,122,120,118,106,104,102,207,197,195,193,183,181,179,169,167,165,155,153,151,139,137,135,123,121,119,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (670, 7, 14, N'{"ident":"shop_slot_14_13","items":[206,198,196,194,184,182,180,170,168,166,156,154,152,140,138,136,124,122,120,108,106,104,207,199,197,195,185,183,181,171,169,167,157,155,153,141,139,137,125,123,121,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (671, 8, 14, N'{"ident":"shop_slot_14_15","items":[208,206,200,198,196,194,186,184,182,180,172,170,168,166,158,156,154,152,142,140,138,136,126,124,122,120,110,108,106,104,209,207,201,199,197,195,187,185,183,181,173,171,169,167,159,157,155,153,143,141,139,137,127,125,123,121,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (672, 9, 14, N'{"ident":"shop_slot_14_17","items":[210,208,206,202,200,198,196,194,188,186,184,182,180,174,172,170,168,166,160,158,156,154,152,144,142,140,138,136,128,126,124,122,120,112,110,108,106,104,211,209,207,203,201,199,197,195,189,187,185,183,181,175,173,171,169,167,161,159,157,155,153,145,143,141,139,137,129,127,125,123,121,113,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (673, 4, 2, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (834, 1, 2, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (835, 2, 2, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,25,25,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (836, 3, 2, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (837, 5, 2, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (838, 6, 2, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (839, 7, 2, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (840, 8, 2, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (841, 9, 2, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (842, 1, 3, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (843, 2, 3, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,7,8],"weights":[1,2,1,12,12,25,25,26,26,33,33,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (844, 3, 3, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,7,8,9],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (845, 5, 3, N'{"ident":"item","items":[176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,7,8,9],"weights":[2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (846, 6, 3, N'{"ident":"item","items":[178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,8,9,10],"weights":[2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (847, 7, 3, N'{"ident":"item","items":[180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,8,9,10],"weights":[1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36,30,30,30]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (848, 8, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,8,9,10,146],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,3,7,10,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (849, 9, 3, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (850, 1, 4, N'{"ident":"item","items":[137,125,113,101],"weights":[1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (851, 2, 4, N'{"ident":"item","items":[173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (852, 3, 4, N'{"ident":"item","items":[175,173,163,161,151,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (853, 5, 4, N'{"ident":"item","items":[185,177,175,173,165,163,161,153,151,149,141,139,137,129,127,125,117,115,113,105,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (854, 6, 4, N'{"ident":"item","items":[187,185,179,177,175,173,167,165,163,161,155,153,151,149,145,143,141,139,131,129,127,119,117,115,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (855, 7, 4, N'{"ident":"item","items":[189,187,185,181,179,177,175,169,167,165,163,157,155,153,151,145,143,141,133,131,129,121,119,117,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (856, 8, 4, N'{"ident":"item","items":[191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145],"weights":[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (857, 9, 4, N'{"ident":"item","items":[193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,133,121,109],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (858, 1, 5, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (859, 2, 5, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (860, 3, 5, N'{"ident":"item","items":[180,178,176,170,168,166,164,158,156,154,152,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (861, 5, 5, N'{"ident":"item","items":[184,182,180,178,176,170,168,166,164,158,156,154,152,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (862, 6, 5, N'{"ident":"item","items":[186,184,182,180,178,176,170,168,166,164,158,156,154,152,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (863, 7, 5, N'{"ident":"item","items":[188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (864, 8, 5, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (865, 9, 5, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (866, 1, 6, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (867, 2, 6, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (868, 3, 6, N'{"ident":"item","items":[180,178,176,170,168,166,164,158,156,154,152,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (869, 5, 6, N'{"ident":"item","items":[184,182,180,178,176,170,168,166,164,158,156,154,152,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (870, 6, 6, N'{"ident":"item","items":[186,184,182,180,178,176,170,168,166,164,158,156,154,152,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (871, 7, 6, N'{"ident":"item","items":[188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (872, 8, 6, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (873, 9, 6, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (874, 1, 7, N'{"ident":"item","items":[428,432,436,440,444,448,452,484,488,492,496,500,504,508,516],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (875, 1, 8, N'{"ident":"item","items":[400,404,408,412,416,420,424],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (876, 1, 9, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (877, 1, 10, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508,516],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (878, 1, 11, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (879, 1, 12, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (880, 4, 7, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509,517],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (881, 4, 8, N'{"ident":"item","items":[401,405,409,413,417,421],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (882, 4, 9, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (883, 4, 10, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509,517],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (884, 4, 11, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (885, 4, 12, N'{"ident":"item","items":[429,433,437,441,445,449,453,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (886, 6, 7, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510,518],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (887, 6, 8, N'{"ident":"item","items":[402,406,410,414,418,422],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (888, 6, 9, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (889, 6, 10, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510,518],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (890, 6, 11, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (891, 6, 12, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (892, 8, 7, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511,519],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (893, 8, 8, N'{"ident":"item","items":[403,407,411,415,419,423],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (894, 8, 9, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (895, 8, 10, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511,519],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,15]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (896, 8, 11, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (897, 8, 12, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (898, 1, 13, N'{"ident":"crew","items":[11,12,13,14,25,26,27,28,39,40,41,42,53,54,55,56,57,58,62],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (899, 1, 14, N'{"ident":"crew","items":[1,2,3,4,5,6,15,16,17,18,19,20,29,30,31,32,33,34,43,44,45,46,47,48],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (900, 3, 14, N'{"ident":"crew","items":[1,2,3,4,5,6,15,16,17,18,19,20,29,30,31,32,33,34,43,44,45,46,47,48,7,8,9,10,21,22,23,24,35,36,37,38,49,50,51,52],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (901, 1, 15, N'{"ident":"item","items":[200,201,203],"weights":[6,6,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (902, 4, 15, N'{"ident":"item","items":[201,202,203],"weights":[3,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (903, 1, 16, N'{"ident":"item","items":[204,206,207],"weights":[5,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (905, 4, 16, N'{"ident":"item","items":[204,206,207],"weights":[5,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (906, 1, 17, N'{"ident":"item","items":[201,202,203,204,205,206,207,208],"weights":[12,12,5,4,1,1,1,2]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (907, 4, 17, N'{"ident":"item","items":[201,202,203,204,205,206,207,208,209],"weights":[12,12,4,6,1,2,1,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (908, 1, 18, N'{"ident":"item","items":[203,204,205,206,209,210],"weights":[5,4,1,1,2,3]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (909, 4, 18, N'{"ident":"item","items":[203,204,205,206,210,211],"weights":[4,6,1,2,4,5]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (911, 10, 1, N'{"ident":"item","items":[182,180,178,176,170,168,166,164,158,156,154,152,9,10,146,134,122,110],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,7,10,1,1,1,1]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[PowerUps] ON 

GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (1, N'repair_01', 1, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (2, N'repair_02', 1, 1, 1, 0, 15, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (3, N'repair_03', 1, 1, 1, 0, 18, 0, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (4, N'repair_04', 1, 1, 1, 0, 20, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (5, N'massrepair_01', 1, 1, 2, 0, 30, 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (6, N'massrepair_02', 1, 1, 2, 0, 35, 0, 0, 0, 0, 0, 0, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (7, N'massrepair_03', 1, 1, 2, 0, 38, 0, 0, 0, 0, 0, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (8, N'massrepair_04', 1, 1, 2, 0, 40, 0, 0, 0, 0, 0, 0, 540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (9, N'pierceammo_01', 2, 1, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.05, 0, 0, 0, 0, 0.1, 0.1, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (10, N'pierceammo_02', 2, 1, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, 0, 0, 0, 0, 0.15, 0.15, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (11, N'pierceammo_05', 2, 1, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0.2, 0.2, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (12, N'pierceammo_06', 2, 1, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0.25, 0.25, 2160, 0, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (13, N'recon_01', 3, 1, 3, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (14, N'recon_02', 3, 1, 3, 0, 10, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (15, N'recon_03', 3, 1, 3, 0, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (16, N'airstrike_01', 4, 1, 4, 0, 30, 0, 3, 595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (17, N'airstrike_02', 4, 1, 4, 0, 40, 0, 4, 596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (18, N'airstrike_03', 4, 1, 4, 0, 45, 0, 5, 597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (19, N'superration_01', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.15, 0.05, 0, 0, 200, 0, 0, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (20, N'superration_02', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.15, 0.05, 0, 0, 500, 0, 0, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (21, N'superration_03', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.2, 0.1, 0, 0, 1500, 0, 0, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (22, N'superration_04', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, 0.1, 0.1, 0.05, 0, 0, 4000, 0, 0, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (23, N'recon_04', 3, 1, 3, 0, 15, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 2160, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (24, N'airstrike_04', 4, 1, 4, 0, 50, 0, 6, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (25, N'artilerystrike_01', 5, 1, 3, 0, 35, 0, 4, 595, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 240, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (26, N'artilerystrike_02', 5, 1, 3, 0, 45, 0, 5, 596, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 720, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (27, N'artilerystrike_03', 5, 1, 3, 0, 55, 0, 6, 597, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 5, 0, 0, 2160, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (28, N'speed_01', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (29, N'speed_02', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (30, N'speed_03', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (31, N'artilerystrike_04', 5, 1, 3, 0, 55, 0, 7, 598, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 6, 0, 0, 5000, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (32, N'speed_04', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (33, N'damagetobase_01', 6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 0, 0, 0, 0, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (34, N'bonus_money', 7, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'{"bonuses":[{"t":0,"mn":200,"mx":300,"i":"m"}]}', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (35, N'bonus_gold', 7, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'{"bonuses":[{"t":1,"mn":10,"mx":20,"i":"g"}]}', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (36, N'bonus_exp', 7, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'{"bonuses":[{"t":4,"mn":10,"mx":20,"i":"e"}]}', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (37, N'bonus_prodpts', 7, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'{"bonuses":[{"t":5,"mn":10,"mx":20,"i":"p"}]}', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (38, N'repair_01', 1, 3, 1, 0, 10, 0, 0, 0, 0, 0, 0, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (39, N'repair_02', 1, 3, 1, 0, 15, 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (40, N'repair_03', 1, 3, 1, 0, 18, 0, 0, 0, 0, 0, 0, 675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (41, N'repair_04', 1, 3, 1, 0, 20, 0, 0, 0, 0, 0, 0, 2025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (42, N'massrepair_01', 1, 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (43, N'massrepair_02', 1, 3, 2, 0, 35, 0, 0, 0, 0, 0, 0, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (44, N'massrepair_03', 1, 3, 2, 0, 38, 0, 0, 0, 0, 0, 0, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (45, N'massrepair_04', 1, 3, 2, 0, 40, 0, 0, 0, 0, 0, 0, 1215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (46, N'pierceammo_01', 2, 3, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.07, 0, 0, 0, 0, 0.1, 0.1, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (47, N'pierceammo_02', 2, 3, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0.15, 0.15, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (48, N'pierceammo_05', 2, 3, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0.2, 0.2, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (49, N'pierceammo_06', 2, 3, 2, 0, 40, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0.25, 0.25, 0, 54, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (50, N'recon_01', 3, 3, 3, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (51, N'recon_02', 3, 3, 3, 0, 10, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 4, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (52, N'recon_03', 3, 3, 3, 0, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 8, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (53, N'recon_04', 3, 3, 3, 0, 15, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 16, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (54, N'airstrike_01', 4, 3, 4, 0, 30, 0, 4, 595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (55, N'airstrike_02', 4, 3, 4, 0, 40, 0, 5, 596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (56, N'airstrike_03', 4, 3, 4, 0, 50, 0, 6, 597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (57, N'airstrike_04', 4, 3, 4, 0, 50, 0, 7, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (58, N'superration_01', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.15, 0.05, 0, 0, 0, 10, 0, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (59, N'superration_02', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.15, 0.05, 0, 0, 0, 10, 0, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (60, N'superration_03', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.3, 0.3, 0.2, 0.1, 0, 0, 0, 10, 0, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (61, N'superration_04', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, 0.1, 0.1, 0.05, 0, 0, 0, 10, 0, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (62, N'artilerystrike_01', 5, 3, 3, 0, 35, 0, 5, 595, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 4, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (63, N'artilerystrike_02', 5, 3, 3, 0, 45, 0, 6, 596, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 12, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (64, N'artilerystrike_03', 5, 3, 3, 0, 55, 0, 7, 597, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 5, 0, 0, 0, 36, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (65, N'artilerystrike_04', 5, 3, 3, 0, 55, 0, 8, 598, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 5, 0, 0, 0, 108, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (66, N'speed_01', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.07, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (67, N'speed_02', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (68, N'speed_03', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (69, N'speed_04', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, N'', 4)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (70, N'minefield_01', 8, 3, 3, 0, 35, 0, 5, 642, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 4, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (71, N'minefield_02', 8, 3, 3, 0, 45, 0, 6, 645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 0, 12, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (72, N'minefield_03', 8, 3, 3, 0, 55, 0, 7, 648, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 5, 0, 0, 0, 36, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (73, N'minefield_04', 8, 3, 3, 0, 55, 0, 8, 651, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 5, 0, 0, 0, 108, 1, N'', 4)
GO
SET IDENTITY_INSERT [dbo].[PowerUps] OFF
GO
