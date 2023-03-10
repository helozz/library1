USE [tankwars]
GO
ALTER TABLE [dbo].[UserActions] DROP CONSTRAINT [DF_UserActions_itemIdent]
GO
/****** Object:  Table [dbo].[UserActions]    Script Date: 03.10.2016 18:08:05 ******/
DROP TABLE [dbo].[UserActions]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 03.10.2016 18:08:05 ******/
DROP TABLE [dbo].[Actions]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 03.10.2016 18:08:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [int] NOT NULL,
	[offerType] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[startTrigger] [float] NOT NULL,
	[endTrigger] [float] NOT NULL,
	[levelTrigger] [int] NOT NULL,
	[duration] [float] NOT NULL,
	[itemType] [varchar](50) NOT NULL,
	[itemId] [varchar](50) NOT NULL,
	[amount] [varchar](50) NOT NULL,
	[bonus] [int] NOT NULL,
	[discount] [int] NOT NULL,
	[priority] [int] NOT NULL,
	[item] [int] NOT NULL CONSTRAINT [DF_Actions_itemIdent]  DEFAULT (''),
	[shopType] [int] NOT NULL,
	[isPurchase] [bit] NOT NULL,
	[counter] [int] NOT NULL,
	[HQLevel] [int] NOT NULL,
	[limitType] [int] NOT NULL,
	[limit] [int] NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserActions]    Script Date: 03.10.2016 18:08:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserActions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[actionUnique] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[startTime] [float] NOT NULL,
	[endTime] [float] NOT NULL,
	[itemType] [varchar](50) NOT NULL,
	[itemId] [varchar](50) NOT NULL,
	[amount] [varchar](50) NOT NULL,
	[discount] [int] NOT NULL,
	[bonus] [int] NOT NULL,
	[priority] [int] NOT NULL,
	[item] [int] NOT NULL,
	[shopType] [int] NOT NULL,
	[isPurchase] [bit] NOT NULL,
	[counter] [int] NOT NULL,
	[price] [int] NOT NULL,
	[HQLevel] [int] NOT NULL,
	[offerType] [int] NOT NULL,
	[limitType] [int] NOT NULL,
	[limit] [int] NOT NULL,
 CONSTRAINT [PK_UserActions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1044, 1, 0, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'6', N'0', N'0', 320, 160, 120, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1045, 1, 0, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'7', N'15', N'2', 320, 160, 120, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1046, 1, 0, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'7', N'4', N'2', 320, 160, 120, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1047, 1, 0, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'7', N'9', N'2', 320, 160, 120, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1049, 1, 0, N'com.iron5studio.iron5.beginnerpack', 2000000000000, 0, 1, 172800000, N'2', N'0', N'0', 320, 160, 120, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1051, 3, 0, N'tank3tier', 0, 0, 0, 172800000, N'0', N'224', N'1300', 0, 35, 140, 0, 0, 0, 1, 5, 0, 0, 1750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1053, 5, 0, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, N'10', N'0', N'0', 0, 25, 125, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1054, 6, 0, N'money_offer_03', 518400000, 0, 1, 172800000, N'5', N'0', N'0', 0, 20, 130, 0, 0, 0, 0, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1055, 2, 0, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, N'12', N'215', N'0', 220, 30, 135, 0, 0, 1, 1, 2, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1059, 8, 0, N'tank4tier', 0, 0, 0, 172800000, N'0', N'236', N'2275', 0, 35, 150, 0, 0, 0, 1, 7, 0, 0, 2500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1060, 9, 0, N'tank5tier', 0, 0, 0, 172800000, N'0', N'248', N'3575', 0, 35, 160, 0, 0, 0, 1, 9, 0, 0, 3500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1061, 10, 0, N'tank6tier', 0, 0, 0, 172800000, N'0', N'260', N'4550', 0, 35, 170, 0, 0, 0, 1, 11, 0, 0, 4500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1062, 11, 0, N'tank7tier', 0, 0, 0, 172800000, N'0', N'272', N'7800', 0, 35, 180, 0, 0, 0, 1, 13, 0, 0, 5750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1063, 12, 0, N'tank8tier', 0, 0, 0, 172800000, N'0', N'283', N'9750', 0, 35, 190, 0, 0, 0, 1, 15, 0, 0, 7000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1064, 4, 0, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, N'11', N'0', N'0', 0, 50, 115, 0, 0, 0, 0, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1065, 4, 0, N'veteran_crew1', 259200000, 0, 1, 172800000, N'11', N'0', N'0', 0, 50, 115, 0, 0, 0, 0, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1071, 13, 0, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, N'9', N'0', N'0', 0, 33, 130, 0, 0, 1, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1074, 5, 0, N'com.iron5studio.iron5.gold_offer_03_discount', 1456185600000, 1456790400000, 1, 864000000, N'10', N'0', N'0', 0, 25, 125, 0, 0, 1, 1, 3, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1079, 14, 0, N'tank9tier', 0, 0, 0, 172800000, N'0', N'293', N'12000', 0, 35, 195, 0, 0, 0, 1, 17, 0, 0, 8500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1081, 15, 0, N'tank10tier', 0, 0, 0, 172800000, N'0', N'302', N'14000', 0, 35, 200, 0, 0, 0, 1, 18, 0, 0, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1088, 16, 3, N'components', 1462665600000, 1462924800000, 0, 172800000, N'13', N'0', N'0', 0, 45, 200, 0, 3, 0, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1092, 17, 3, N'books', 1462665600000, 1462924800000, 0, 172800000, N'14', N'0', N'0', 0, 45, 200, 0, 3, 0, 1, 1, 0, 0, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [limitType], [limit], [price]) VALUES (1094, 18, 3, N'powerups', 1462665600000, 1462924800000, 0, 172800000, N'3', N'0', N'0', 0, 45, 200, 0, 3, 0, 1, 1, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
ALTER TABLE [dbo].[UserActions] ADD  CONSTRAINT [DF_UserActions_itemIdent]  DEFAULT ('') FOR [item]
GO
