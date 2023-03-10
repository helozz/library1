USE [tankwars]
GO
DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1044, 1, 4, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'[2,15,6,7,7]', N'[0,0,0,348,10]', N'[5000,7,1,10,2]', 320, 0, 120, 0, 0, 1, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1051, 3, 1, N'tank3tier', 0, 0, 0, 172800000, N'[0]', N'[224]', N'[1]', 0, 35, 140, 224, 0, 0, 1, 5, 1750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1053, 5, 8, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, N'[10]', N'[]', N'[]', 0, 35, 125, 0, 0, 1, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1054, 6, 11, N'money_offer_03', 518400000, 0, 1, 172800000, N'[8]', N'[]', N'[]', 0, 35, 130, 0, 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1055, 2, 3, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, N'[0,1]', N'[215,11]', N'[1,1]', 220, 0, 135, 215, 0, 1, 1, 2, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1059, 8, 1, N'tank4tier', 0, 0, 0, 172800000, N'[0]', N'[236]', N'[1]', 0, 35, 150, 236, 0, 0, 1, 7, 2500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1060, 9, 1, N'tank5tier', 0, 0, 0, 172800000, N'[0]', N'[248]', N'[1]', 0, 35, 160, 248, 0, 0, 1, 9, 3500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1061, 10, 1, N'tank6tier', 0, 0, 0, 172800000, N'[0]', N'[260]', N'[1]', 0, 35, 170, 260, 0, 0, 1, 11, 4500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1062, 11, 1, N'tank7tier', 0, 0, 0, 172800000, N'[0]', N'[272]', N'[1]', 0, 35, 180, 272, 0, 0, 1, 13, 5750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1063, 12, 1, N'tank8tier', 0, 0, 0, 172800000, N'[0]', N'[283]', N'[1]', 0, 35, 190, 283, 0, 0, 1, 15, 7000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1065, 4, 7, N'veteran_crew1', 259200000, 0, 1, 172800000, N'[1]', N'[11]', N'[1]', 0, 50, 115, 0, 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1071, 13, 9, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, N'[9]', N'[]', N'[]', 0, 33, 130, 0, 0, 1, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1074, 5, 8, N'com.iron5studio.iron5.gold_offer_03_discount', 1475571600000, 1476435600000, 1, 864000000, N'[10]', N'[]', N'[]', 0, 25, 125, 0, 0, 1, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1079, 14, 1, N'tank9tier', 0, 0, 0, 172800000, N'[0]', N'[293]', N'[1]', 0, 35, 195, 293, 0, 0, 1, 17, 8500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1081, 15, 1, N'tank10tier', 0, 0, 0, 172800000, N'[0]', N'[302]', N'[1]', 0, 35, 200, 302, 0, 0, 1, 18, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1088, 16, 0, N'components', 1475575200000, 1476439200000, 0, 172800000, N'[13]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1092, 17, 5, N'books', 1475575200000, 1476439200000, 0, 172800000, N'[14]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1094, 18, 10, N'powerups', 1475575200000, 1476439200000, 0, 172800000, N'[3]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1095, 19, 9, N'parts', 1475575200000, 1476439200000, 0, 172800000, N'[9]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1097, 20, 6, N'componentpack1', 1475575200000, 1476439200000, 0, 172800000, N'[7,7,7,7]', N'[21,22,23,24]', N'[200,200,200,200]', 0, 50, 150, 0, 0, 0, 1, 1, 1000)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
