USE [tankwars_test]
GO
/****** Object:  Table [dbo].[UpgradesNew]    Script Date: 29.09.2016 12:10:56 ******/
DROP TABLE [dbo].[UpgradesNew]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 29.09.2016 12:10:56 ******/
DROP TABLE [dbo].[Actions]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 29.09.2016 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[startTrigger] [float] NOT NULL,
	[endTrigger] [float] NOT NULL,
	[levelTrigger] [int] NOT NULL,
	[duration] [float] NOT NULL,
	[itemType] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[discount] [int] NOT NULL,
	[priority] [int] NOT NULL,
	[itemIdent] [varchar](50) NOT NULL CONSTRAINT [DF_Actions_itemIdent]  DEFAULT (''),
	[isPurchase] [bit] NOT NULL,
	[counter] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[HQLevel] [int] NOT NULL,
	[startDateTrigger] [float] NOT NULL,
	[offerType] [int] NOT NULL,
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Actions] DROP Column [startDateTrigger]
GO

ALTER TABLE [dbo].[Actions] ADD [userTier] int NULL
GO
UPDATE [dbo].[Actions] SET [userTier] = 0
GO
ALTER TABLE [dbo].[Actions] ALTER COLUMN [userTier] int NOT NULL
GO

SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UpgradesNew]    Script Date: 29.09.2016 12:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpgradesNew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tankType] [int] NOT NULL,
	[tankTier] [int] NOT NULL,
	[upgrade1] [int] NOT NULL,
	[value1] [float] NOT NULL,
	[upgrade2] [int] NOT NULL,
	[value2] [float] NOT NULL,
	[upgrade3] [int] NOT NULL,
	[value3] [float] NOT NULL,
	[upgrade4] [int] NOT NULL,
	[value4] [float] NOT NULL,
	[upgrade5] [int] NOT NULL,
	[value5] [float] NOT NULL,
	[upgrade6] [int] NOT NULL,
	[value6] [float] NOT NULL,
	[upgrade7] [int] NOT NULL,
	[value7] [float] NOT NULL,
	[upgrade8] [int] NOT NULL,
	[value8] [float] NOT NULL,
	[upgrade9] [int] NOT NULL,
	[value9] [float] NOT NULL,
	[upgrade10] [int] NOT NULL,
	[value10] [float] NOT NULL,
	[upgrade11] [int] NOT NULL,
	[value11] [float] NOT NULL,
	[upgrade12] [int] NOT NULL,
	[value12] [float] NOT NULL,
	[components] [int] NOT NULL,
	[money] [int] NOT NULL,
	[parts] [int] NOT NULL,
	[goldPerMinute] [float] NOT NULL,
 CONSTRAINT [PK_UpgradesNew] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1044, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 6, 0, 160, 120, N'', 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1045, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 15, 160, 120, N'', 1, 1, 2, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1046, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 4, 160, 120, N'', 1, 1, 2, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1047, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 7, 9, 160, 120, N'', 1, 1, 2, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1049, 1, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, 2, 0, 160, 120, N'', 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1051, 3, N'tank3tier', 0, 0, 0, 172800000, 0, 224, 35, 140, N'', 0, 1, 1300, 5, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1053, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, 10, 0, 25, 125, N'', 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1054, 6, N'money_offer_03', 518400000, 0, 1, 172800000, 5, 0, 20, 130, N'', 0, 0, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1055, 2, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, 12, 215, 30, 135, N'[215,11]', 1, 1, 0, 3, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1059, 8, N'tank4tier', 0, 0, 0, 172800000, 0, 236, 35, 150, N'', 0, 1, 2275, 7, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1060, 9, N'tank5tier', 0, 0, 0, 172800000, 0, 248, 35, 160, N'', 0, 1, 3575, 9, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1061, 10, N'tank6tier', 0, 0, 0, 172800000, 0, 260, 35, 170, N'', 0, 1, 4550, 11, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1062, 11, N'tank7tier', 0, 0, 0, 172800000, 0, 272, 35, 180, N'', 0, 1, 7800, 13, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1063, 12, N'tank8tier', 0, 0, 0, 172800000, 0, 283, 35, 190, N'', 0, 1, 9750, 15, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1064, 4, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 50, 115, N'veteran_crew1', 0, 0, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1065, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 50, 115, N'veteran_crew1', 0, 0, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1071, 13, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, 9, 0, 33, 130, N'', 1, 1, 0, 1, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1074, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 1456185600000, 1456790400000, 1, 864000000, 10, 0, 25, 125, N'', 1, 1, 0, 3, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1079, 14, N'tank9tier', 0, 0, 0, 172800000, 0, 293, 35, 195, N'', 0, 1, 12000, 17, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1081, 15, N'tank10tier', 0, 0, 0, 172800000, 0, 302, 35, 200, N'', 0, 1, 14000, 18, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1088, 16, N'components', 1462665600000, 1462924800000, 0, 172800000, 13, 0, 45, 200, N' ', 0, 1, 0, 1, 0, 3)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1092, 17, N'books', 1462665600000, 1462924800000, 0, 172800000, 14, 0, 45, 200, N' ', 0, 1, 0, 1, 0, 3)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger], [offerType]) VALUES (1094, 18, N'powerups', 1462665600000, 1462924800000, 0, 172800000, 3, 0, 45, 200, N' ', 0, 1, 0, 1, 0, 3)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
SET IDENTITY_INSERT [dbo].[UpgradesNew] ON 

GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (1, 1, 1, 5, 0.3, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 100, 25, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (2, 2, 1, 5, 0.3, 14, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 150, 30, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (3, 3, 1, 11, 0.5, 14, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 180, 35, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (4, 4, 1, 11, 0.5, 14, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 200, 40, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (5, 5, 1, 6, 3, 14, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 160, 33, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (6, 6, 1, 12, 1, 14, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 190, 35, 0)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (7, 1, 2, 5, 0.3, 14, 3, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 200, 35, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (8, 2, 2, 5, 0.3, 14, 4, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 300, 42, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (9, 3, 2, 11, 0.5, 14, 9, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 360, 48, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (10, 4, 2, 11, 0.5, 14, 20, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 400, 55, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (11, 5, 2, 6, 3, 14, 5, 4, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 320, 46, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (12, 6, 2, 12, 1, 14, 9, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 380, 52, 0.44)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (13, 1, 3, 5, 0.3, 14, 4, 4, 17, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0.3, 14, 4, 4, 17, 9, 1, 40, 350, 50, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (14, 2, 3, 5, 0.3, 14, 5, 4, 20, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0.3, 14, 5, 4, 20, 10, 1, 48, 525, 60, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (15, 3, 3, 11, 0.5, 14, 9, 3, 3, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0.5, 14, 9, 3, 3, 8, 1, 68, 630, 75, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (16, 4, 3, 11, 0.5, 14, 20, 1, 6, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0.5, 14, 20, 1, 6, 7, 1, 100, 700, 100, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (17, 5, 3, 12, 1, 14, 10, 1, 4, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1, 14, 10, 1, 4, 10, 1, 60, 560, 65, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (18, 6, 3, 12, 1, 14, 9, 1, 4, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1, 14, 9, 1, 4, 8, 1, 80, 665, 90, 0.5)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (19, 1, 4, 5, 0.3, 14, 6, 4, 22, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0.3, 14, 6, 4, 22, 9, 1, 80, 500, 100, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (20, 2, 4, 5, 0.3, 14, 7, 4, 25, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0.3, 14, 7, 4, 25, 10, 1, 96, 750, 120, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (21, 3, 4, 11, 0.5, 14, 13, 3, 4, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0.5, 14, 13, 3, 4, 8, 1, 136, 900, 150, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (22, 4, 4, 11, 0.5, 14, 20, 1, 6, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0.5, 14, 20, 1, 6, 7, 1, 200, 1000, 200, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (23, 5, 4, 12, 1, 14, 14, 1, 4, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1, 14, 14, 1, 4, 10, 1, 120, 800, 130, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (24, 6, 4, 12, 1, 14, 12, 1, 4, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 1, 14, 12, 1, 4, 8, 1, 160, 950, 180, 0.55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (25, 1, 5, 5, 0.3, 14, 7, 4, 29, 9, 1, 13, 4, 7, 1, 0, 0, 0, 0, 5, 0.3, 14, 7, 4, 29, 9, 1, 160, 850, 185, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (26, 2, 5, 5, 0.3, 14, 9, 4, 32, 10, 1, 13, 5, 7, 1, 0, 0, 0, 0, 5, 0.3, 14, 9, 4, 32, 10, 1, 192, 1275, 222, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (27, 3, 5, 11, 0.5, 14, 15, 3, 5, 8, 1, 13, 5, 7, 1, 0, 0, 0, 0, 11, 0.5, 14, 15, 3, 5, 8, 1, 272, 1530, 278, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (28, 4, 5, 11, 0.5, 14, 20, 1, 6, 7, 1, 13, 5, 8, 1, 0, 0, 0, 0, 11, 0.5, 14, 20, 1, 6, 7, 1, 400, 1700, 350, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (29, 5, 5, 12, 1, 14, 13, 1, 5, 10, 1, 13, 5, 8, 1, 0, 0, 0, 0, 12, 1, 14, 13, 1, 5, 10, 1, 240, 1360, 241, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (30, 6, 5, 12, 1, 14, 12, 1, 5, 8, 1, 13, 5, 10, 1, 0, 0, 0, 0, 12, 1, 14, 12, 1, 5, 8, 1, 320, 1615, 333, 0.65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (31, 1, 6, 5, 0.3, 14, 9, 4, 37, 9, 1, 13, 5, 7, 1, 0, 0, 0, 0, 5, 0.3, 14, 9, 4, 37, 9, 1, 300, 1000, 320, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (32, 2, 6, 5, 0.3, 14, 11, 4, 43, 10, 1, 13, 6, 7, 1, 0, 0, 0, 0, 5, 0.3, 14, 11, 4, 43, 10, 1, 360, 1500, 385, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (33, 3, 6, 11, 0.5, 14, 21, 3, 5, 8, 1, 13, 6, 7, 1, 0, 0, 0, 0, 11, 0.5, 14, 21, 3, 5, 8, 1, 510, 1800, 480, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (34, 4, 6, 11, 0.5, 14, 20, 1, 6, 7, 1, 13, 6, 8, 1, 0, 0, 0, 0, 11, 0.5, 14, 20, 1, 6, 7, 1, 750, 2000, 672, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (35, 5, 6, 12, 1, 14, 23, 1, 5, 10, 1, 13, 6, 8, 1, 0, 0, 0, 0, 12, 1, 14, 23, 1, 5, 10, 1, 450, 1600, 416, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (36, 6, 6, 6, 6, 14, 20, 1, 6, 8, 1, 13, 6, 10, 1, 0, 0, 0, 0, 6, 6, 14, 20, 1, 6, 8, 1, 600, 1900, 576, 0.45)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (37, 1, 7, 5, 0.3, 14, 12, 4, 46, 9, 1, 13, 6, 7, 1, 11, 0.5, 0, 0, 5, 0.3, 14, 12, 4, 46, 9, 1, 500, 1200, 450, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (38, 2, 7, 5, 0.3, 14, 15, 4, 53, 10, 1, 13, 7, 7, 1, 11, 0.5, 0, 0, 5, 0.3, 14, 15, 4, 53, 10, 1, 600, 1800, 540, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (39, 3, 7, 11, 0.5, 14, 25, 3, 5, 8, 1, 13, 7, 7, 1, 12, 1, 0, 0, 11, 0.5, 14, 25, 3, 5, 8, 1, 850, 2160, 675, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (40, 4, 7, 11, 0.5, 14, 25, 1, 7, 7, 1, 13, 7, 8, 1, 12, 1, 0, 0, 11, 0.5, 14, 25, 1, 7, 7, 1, 1250, 2400, 945, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (41, 5, 7, 12, 1, 14, 33, 1, 5, 10, 1, 13, 8, 8, 1, 11, 0.5, 0, 0, 12, 1, 14, 33, 1, 5, 10, 1, 750, 1920, 585, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (42, 6, 7, 6, 6, 14, 28, 1, 6, 8, 1, 13, 8, 10, 1, 12, 1, 0, 0, 6, 6, 14, 28, 1, 6, 8, 1, 1000, 2280, 810, 0.25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (43, 1, 8, 5, 0.3, 14, 15, 4, 60, 9, 1, 13, 7, 7, 1, 11, 0.5, 0, 0, 5, 0.3, 14, 15, 4, 60, 9, 1, 1000, 1500, 600, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (44, 2, 8, 5, 0.3, 14, 19, 4, 67, 10, 1, 13, 7, 7, 1, 11, 0.5, 0, 0, 5, 0.3, 14, 19, 4, 67, 10, 1, 1200, 2250, 720, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (45, 3, 8, 11, 0.5, 14, 33, 3, 6, 8, 1, 13, 8, 7, 1, 12, 1, 0, 0, 11, 0.5, 14, 33, 3, 6, 8, 1, 1700, 2700, 900, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (46, 4, 8, 11, 0.5, 14, 32, 1, 8, 7, 1, 13, 8, 8, 1, 12, 1, 0, 0, 11, 0.5, 14, 32, 1, 8, 7, 1, 2500, 3000, 1260, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (47, 5, 8, 12, 1, 14, 52, 1, 6, 10, 1, 13, 8, 8, 1, 11, 0.5, 0, 0, 12, 1, 14, 52, 1, 6, 10, 1, 1500, 2400, 780, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (48, 6, 8, 6, 6, 14, 39, 1, 7, 8, 1, 13, 9, 10, 1, 12, 1, 0, 0, 6, 6, 14, 39, 1, 7, 8, 1, 2000, 2850, 1080, 0.2)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (49, 1, 9, 5, 0.3, 14, 23, 4, 80, 9, 1, 13, 8, 7, 1, 11, 0.5, 3, 6, 5, 0.3, 14, 23, 4, 80, 9, 1, 2000, 2000, 1000, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (50, 2, 9, 5, 0.3, 14, 23, 4, 80, 10, 1, 13, 8, 7, 1, 11, 0.5, 3, 6, 5, 0.3, 14, 23, 4, 80, 10, 1, 2400, 3000, 1200, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (51, 3, 9, 11, 0.5, 14, 40, 3, 6, 8, 1, 13, 8, 7, 1, 12, 1, 1, 6, 11, 0.5, 14, 40, 3, 6, 8, 1, 3400, 3600, 1500, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (52, 4, 9, 11, 0.5, 14, 41, 1, 9, 7, 1, 13, 8, 8, 1, 12, 1, 3, 7, 11, 0.5, 14, 41, 1, 9, 7, 1, 5000, 4000, 2100, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (53, 5, 9, 12, 1, 14, 62, 1, 5, 10, 1, 13, 8, 8, 1, 11, 0.5, 4, 90, 12, 1, 14, 62, 1, 5, 10, 1, 3000, 3200, 1300, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (54, 6, 9, 6, 6, 14, 44, 1, 8, 8, 1, 13, 8, 10, 1, 12, 1, 3, 7, 6, 6, 14, 44, 1, 8, 8, 1, 4000, 3800, 1800, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (55, 1, 10, 5, 0.3, 14, 27, 4, 100, 9, 1, 13, 8, 7, 1, 11, 0.5, 3, 7, 5, 0.3, 14, 27, 4, 100, 9, 1, 4000, 3000, 1200, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (56, 2, 10, 5, 0.3, 14, 27, 4, 100, 10, 1, 13, 8, 7, 1, 11, 0.5, 3, 7, 5, 0.3, 14, 27, 4, 100, 10, 1, 4800, 4500, 1440, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (57, 3, 10, 11, 0.5, 14, 45, 3, 7, 8, 1, 13, 9, 7, 1, 12, 1, 1, 7, 11, 0.5, 14, 45, 3, 7, 8, 1, 6800, 5400, 1800, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (58, 4, 10, 11, 0.5, 14, 50, 1, 10, 7, 1, 13, 9, 8, 1, 12, 1, 3, 7, 11, 0.5, 14, 50, 1, 10, 7, 1, 10000, 6000, 2520, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (59, 5, 10, 12, 1, 14, 80, 1, 6, 10, 1, 13, 9, 8, 1, 11, 0.5, 4, 100, 12, 1, 14, 80, 1, 6, 10, 1, 6000, 4800, 1560, 0.18)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts], [goldPerMinute]) VALUES (60, 6, 10, 6, 6, 14, 55, 1, 8, 8, 1, 13, 10, 10, 1, 12, 1, 3, 7, 6, 6, 14, 55, 1, 8, 8, 1, 8000, 5700, 2160, 0.18)
GO
SET IDENTITY_INSERT [dbo].[UpgradesNew] OFF
GO

ALTER TABLE [dbo].[UserUnits] ADD [setUpgrades] int NULL
GO
UPDATE [dbo].[UserUnits] SET [setUpgrades] = 0
GO
ALTER TABLE [dbo].[UserUnits] ALTER COLUMN [setUpgrades] int NOT NULL
GO
UPDATE [dbo].[UserUnits] SET [upgrades] = 0
UPDATE [dbo].[UserUnits] SET [aimingTime] = 0
UPDATE [dbo].[UserUnits] SET [backArmor] = 0
UPDATE [dbo].[UserUnits] SET [damage] = 0
UPDATE [dbo].[UserUnits] SET [frontArmor] = 0
UPDATE [dbo].[UserUnits] SET [maxAccuracy] = 0
UPDATE [dbo].[UserUnits] SET [maxHP] = 0
UPDATE [dbo].[UserUnits] SET [minAccuracy] = 0
UPDATE [dbo].[UserUnits] SET [piercing] = 0
UPDATE [dbo].[UserUnits] SET [range] = 0
UPDATE [dbo].[UserUnits] SET [reloadDuration] = 0
UPDATE [dbo].[UserUnits] SET [sideArmor] = 0
UPDATE [dbo].[UserUnits] SET [speed] = 0
UPDATE [dbo].[UserUnits] SET [turnSpeed] = 0
UPDATE [dbo].[UserUnits] SET [visibilityRadius] = 0
UPDATE [dbo].[UserUnits] SET [power] = (SELECT [DefaultUnits].[c] FROM [DefaultUnits] WHERE [DefaultUnits].[i] = [UserUnits].[t])
GO