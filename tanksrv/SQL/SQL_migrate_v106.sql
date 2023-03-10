USE [tankwars_test]
GO
/****** Object:  Table [dbo].[Upgrades]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Upgrades]
GO
/****** Object:  Table [dbo].[ShellShops]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[ShellShops]
GO
/****** Object:  Table [dbo].[PvPConfigs]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[PvPConfigs]
GO
/****** Object:  Table [dbo].[PowerUps]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[PowerUps]
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[NewMissions]
GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[MarketItems]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Levels]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Items]
GO
/****** Object:  Table [dbo].[Evolves]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Evolves]
GO
/****** Object:  Table [dbo].[Defines]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Defines]
GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[DefaultUnits]
GO
/****** Object:  Table [dbo].[Buildings]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Buildings]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 19.01.2016 22:00:50 ******/
DROP TABLE [dbo].[Actions]
GO
/****** Object:  Table [dbo].[Actions]    Script Date: 19.01.2016 22:00:50 ******/
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
 CONSTRAINT [PK_Actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Buildings]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buildings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeEnum] [int] NOT NULL,
	[bLevel] [int] NOT NULL,
	[HQLevelReq] [int] NOT NULL,
	[buildingPrice] [int] NOT NULL,
	[buildingTime] [int] NOT NULL,
	[accelerationPrice] [int] NOT NULL,
	[storageSize] [int] NOT NULL,
	[productionInSeconds] [float] NOT NULL,
 CONSTRAINT [PK_Buildings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DefaultUnits]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefaultUnits](
	[i] [int] IDENTITY(1,1) NOT NULL,
	[n] [varchar](50) NOT NULL,
	[s] [int] NOT NULL,
	[rm] [int] NOT NULL,
	[az] [int] NOT NULL,
	[ts] [float] NOT NULL,
	[tt] [float] NOT NULL,
	[at] [float] NOT NULL,
	[cd] [float] NOT NULL,
	[rd] [float] NOT NULL,
	[cs] [int] NOT NULL,
	[vr] [float] NOT NULL,
	[c] [int] NOT NULL,
	[hx] [int] NOT NULL,
	[sp] [float] NOT NULL,
	[ms] [float] NOT NULL,
	[fa] [int] NOT NULL,
	[ba] [int] NOT NULL,
	[ra] [int] NOT NULL,
	[am] [int] NOT NULL,
	[ax] [int] NOT NULL,
	[t] [int] NOT NULL,
	[z] [int] NOT NULL,
	[m] [float] NOT NULL,
	[g] [float] NOT NULL,
	[kr] [float] NOT NULL,
	[lm] [int] NOT NULL,
	[rg] [int] NOT NULL,
	[p] [int] NOT NULL,
	[sz] [int] NOT NULL,
	[pc] [float] NOT NULL,
	[dg] [float] NOT NULL,
	[lx] [int] NOT NULL,
	[parts] [int] NOT NULL,
 CONSTRAINT [PK_DefaultUnits] PRIMARY KEY CLUSTERED 
(
	[i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Defines]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Defines](
	[n] [varchar](50) NOT NULL,
	[s] [varchar](max) NULL,
 CONSTRAINT [PK_Defines] PRIMARY KEY CLUSTERED 
(
	[n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evolves]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evolves](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[defaultUnitId] [int] NOT NULL,
	[requirements] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Evolve] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Items]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[json] [varchar](1000) NOT NULL,
	[type] [int] NOT NULL CONSTRAINT [DF_Items_type]  DEFAULT ((0)),
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[l] [int] IDENTITY(1,1) NOT NULL,
	[e] [int] NOT NULL,
	[g] [float] NOT NULL,
	[m] [float] NOT NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[l] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarketItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hq] [int] NOT NULL,
	[slot] [int] NOT NULL,
	[json] [varchar](750) NULL,
 CONSTRAINT [PK_MarketItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewMissions]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewMissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](15) NULL,
	[fuelcost] [smallint] NOT NULL,
	[type] [smallint] NOT NULL,
	[map] [varchar](20) NULL,
	[power1] [int] NOT NULL,
	[power1num] [int] NOT NULL,
	[powermult] [int] NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
 CONSTRAINT [PK_NewMissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PowerUps]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PowerUps](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[type] [int] NOT NULL,
	[clas] [int] NOT NULL,
	[activation] [int] NOT NULL,
	[start] [int] NOT NULL,
	[cooldown] [int] NOT NULL,
	[workingTime] [int] NOT NULL,
	[bombNum] [int] NOT NULL,
	[bombIdShell] [int] NOT NULL,
	[frontArmor] [float] NOT NULL,
	[backArmor] [float] NOT NULL,
	[rightArmor] [float] NOT NULL,
	[maxHP] [float] NOT NULL,
	[speed] [float] NOT NULL,
	[reloadDuration] [float] NOT NULL,
	[piercing] [float] NOT NULL,
	[minAccuracy] [float] NOT NULL,
	[maxAccuracy] [float] NOT NULL,
	[visibilityRadius] [float] NOT NULL,
	[range] [float] NOT NULL,
	[minDamageShell] [float] NOT NULL,
	[maxDamageShell] [float] NOT NULL,
	[money] [float] NOT NULL,
	[gold] [float] NOT NULL,
	[forSale] [bit] NOT NULL,
	[bonusJSON] [varchar](500) NOT NULL,
	[lvl] [int] NOT NULL,
 CONSTRAINT [PK_PowerUps] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PvPConfigs]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PvPConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
	[mNorm] [int] NOT NULL,
	[eNorm] [int] NOT NULL,
	[pNorm] [int] NOT NULL,
	[bundleId] [int] NOT NULL,
	[compMinNorm] [float] NOT NULL,
	[compMaxNorm] [float] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [PK_PvPConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShellShops]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShellShops](
	[i] [int] IDENTITY(1,1) NOT NULL,
	[n] [varchar](50) NOT NULL,
	[k] [float] NOT NULL,
	[b] [int] NOT NULL,
	[m] [float] NOT NULL,
	[g] [float] NOT NULL,
	[dm] [float] NOT NULL,
	[dx] [float] NOT NULL,
	[ao] [float] NOT NULL,
	[r] [float] NOT NULL,
	[t] [int] NOT NULL,
	[ut] [int] NOT NULL,
	[z] [int] NOT NULL,
	[s] [int] NOT NULL,
	[ic] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ShellShops] PRIMARY KEY CLUSTERED 
(
	[i] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Upgrades]    Script Date: 19.01.2016 22:00:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upgrades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[price] [int] NOT NULL,
	[frontArmor] [float] NOT NULL,
	[backArmor] [float] NOT NULL,
	[sideArmor] [float] NOT NULL,
	[maxHP] [float] NOT NULL,
	[speed] [float] NOT NULL,
	[turnSpeed] [float] NOT NULL,
	[minAccuracy] [float] NOT NULL,
	[maxAccuracy] [float] NOT NULL,
	[visibilityRadius] [float] NOT NULL,
	[range] [float] NOT NULL,
	[aimingTime] [float] NOT NULL,
	[reloadDuration] [float] NOT NULL,
	[piercing] [float] NOT NULL,
	[damage] [float] NOT NULL,
 CONSTRAINT [PK_Upgrades] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

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
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1064, 4, N'newbie_veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'newbie_veteran_crew1', 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1065, 4, N'veteran_crew1', 259200000, 0, 1, 172800000, 11, 0, 47, 115, N'veteran_crew1', 0, 0, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1071, 13, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, 9, 0, 33, 130, N'', 1, 1, 0, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1074, 5, N'com.iron5studio.iron5.gold_offer_03_discount', 1451153810650, 1452094804130, 1, 864000000, 10, 0, 25, 125, N'', 1, 1, 0, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [discount], [priority], [itemIdent], [isPurchase], [counter], [amount], [HQLevel], [startDateTrigger]) VALUES (1079, 14, N'tank9tier', 0, 0, 0, 172800000, 0, 109, 35, 195, N'', 0, 1, 13000, 17, 0)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
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
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (114, 15, 1, 0, 0, 0, 0, 3500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (115, 15, 2, 1, 0, 0, 0, 3600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (116, 15, 3, 2, 0, 0, 0, 3700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (117, 15, 4, 3, 0, 0, 0, 3840, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (118, 15, 5, 4, 0, 0, 0, 4020, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (119, 15, 6, 5, 0, 0, 0, 4240, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (120, 15, 7, 6, 0, 0, 0, 4500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (121, 15, 8, 7, 0, 0, 0, 4800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (122, 15, 9, 8, 0, 0, 0, 5140, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (123, 15, 10, 9, 0, 0, 0, 5520, 0)
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
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (196, 15, 11, 10, 0, 0, 0, 5940, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (197, 15, 12, 11, 0, 0, 0, 6400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (198, 15, 13, 12, 0, 0, 0, 6900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (199, 15, 14, 13, 0, 0, 0, 7440, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (200, 15, 15, 14, 0, 0, 0, 8020, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (201, 15, 16, 15, 0, 0, 0, 8640, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (202, 15, 17, 16, 0, 0, 0, 9300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (203, 15, 18, 17, 0, 0, 0, 10000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (204, 15, 19, 18, 0, 0, 0, 10740, 0)
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
SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (1, N'JeepWillys', 3, 8, 500, 90, 4, 5, 4, 5, 5, 16, 87, 160, 3, 2.36, 12, 10, 10, 13, 16, 1, 14, 0, 250, 1, 1, 0, 2, 1, 1, 13, 2, 125)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (90, N'Puma1', 2, 80, 80, 90, 4, 3, 5, 5, 5, 12, 632, 1160, 2.66, 5, 40, 32, 36, 13, 15, 1, 50, 220000, 0, 1, 1, 0, 0, 8, 0, 0, 5, 7333)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (91, N'Puma2', 2, 80, 80, 90, 4, 3, 4, 8, 5, 13, 727, 1333, 2.66, 5, 40, 36, 38, 13, 15, 1, 50, 240000, 0, 1, 1, 0, 1, 8, 3, 10, 5, 8000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (92, N'AEC', 4, 90, 80, 90, 4, 2, 5, 5, 5, 14, 885, 1623, 3, 5, 44, 36, 40, 14, 16, 1, 75, 220000, 0, 1, 1, 0, 4, 8, 0, 0, 5, 7333)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (104, N'AECMK1', 4, 90, 80, 90, 4, 2, 4, 8, 5, 14, 1018, 1867, 3, 5, 44, 40, 42, 14, 16, 1, 75, 250000, 0, 1, 1, 0, 4, 8, 3, 0, 5, 8333)
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewCostPowerGrowthDaily', N'1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEnforcePrices', N'0,2000,5000,10000,20000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEvolvePrices', N'0,200,1700,9300,35400')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewTierExp', N'200,1,4,9,15,0.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DifficultyMult', N'0,0.2,0.4,0.6,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMissionDifficultyMult', N'0.62,0.8,0.9')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,282,685,1344,2150,1782,2433,2,10,-8354')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1016')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserFriendReward', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserTierLevels', N'0,10,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneShieldHours', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneUnderAttack', N'300')
GO
SET IDENTITY_INSERT [dbo].[Evolves] ON 

GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (808, 1, N'[{"type":0,"num":620},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (809, 2, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":26},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (810, 3, N'[{"type":0,"num":220},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (811, 4, N'[{"type":0,"num":620},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (812, 5, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":1},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (813, 6, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":4},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (814, 9, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":3},{"type":7,"item":22,"num":3},{"type":7,"item":23,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (815, 10, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":8},{"type":7,"item":22,"num":8},{"type":7,"item":23,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (816, 11, N'[{"type":0,"num":220},{"type":7,"item":21,"num":2},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (817, 12, N'[{"type":0,"num":620},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":1},{"type":7,"item":24,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (818, 13, N'[{"type":0,"num":1920},{"type":7,"item":21,"num":4},{"type":7,"item":23,"num":2},{"type":7,"item":24,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (819, 14, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":7},{"type":7,"item":23,"num":4},{"type":7,"item":24,"num":7},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (820, 17, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":7},{"type":7,"item":22,"num":10},{"type":7,"item":23,"num":10},{"type":7,"item":25,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (821, 18, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":10},{"type":7,"item":22,"num":18},{"type":7,"item":23,"num":18},{"type":7,"item":25,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (822, 19, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":12},{"type":7,"item":22,"num":11},{"type":7,"item":23,"num":11},{"type":7,"item":26,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (823, 20, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":22},{"type":7,"item":22,"num":19},{"type":7,"item":23,"num":19},{"type":7,"item":26,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (824, 23, N'[{"type":0,"num":2520},{"type":7,"item":21,"num":7},{"type":7,"item":23,"num":4},{"type":7,"item":24,"num":7},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (825, 24, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":162},{"type":7,"item":22,"num":157},{"type":7,"item":23,"num":157},{"type":7,"item":25,"num":22},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (826, 25, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":18},{"type":7,"item":23,"num":8},{"type":7,"item":24,"num":16},{"type":7,"item":27,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (827, 26, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":25},{"type":7,"item":23,"num":13},{"type":7,"item":24,"num":25},{"type":7,"item":27,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (828, 27, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":23},{"type":7,"item":23,"num":13},{"type":7,"item":24,"num":9},{"type":7,"item":27,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (829, 28, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":38},{"type":7,"item":23,"num":23},{"type":7,"item":24,"num":15},{"type":7,"item":27,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (830, 29, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":56},{"type":7,"item":23,"num":33},{"type":7,"item":24,"num":22},{"type":7,"item":27,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (831, 30, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":99},{"type":7,"item":23,"num":59},{"type":7,"item":24,"num":40},{"type":7,"item":27,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (832, 33, N'[{"type":0,"num":4420},{"type":7,"item":21,"num":13},{"type":7,"item":22,"num":13},{"type":7,"item":23,"num":13},{"type":7,"item":25,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (833, 34, N'[{"type":0,"num":5720},{"type":7,"item":21,"num":26},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (834, 37, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":14},{"type":7,"item":22,"num":27},{"type":7,"item":23,"num":27},{"type":7,"item":25,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (835, 38, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":24},{"type":7,"item":22,"num":46},{"type":7,"item":23,"num":46},{"type":7,"item":25,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (836, 39, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":33},{"type":7,"item":22,"num":68},{"type":7,"item":23,"num":68},{"type":7,"item":25,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (837, 40, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":61},{"type":7,"item":22,"num":118},{"type":7,"item":23,"num":118},{"type":7,"item":25,"num":12},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (838, 41, N'[{"type":0,"num":620},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (839, 42, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":27},{"type":7,"item":22,"num":25},{"type":7,"item":23,"num":25},{"type":7,"item":26,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (840, 43, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":47},{"type":7,"item":22,"num":47},{"type":7,"item":23,"num":47},{"type":7,"item":26,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (841, 45, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":36},{"type":7,"item":23,"num":17},{"type":7,"item":24,"num":34},{"type":7,"item":27,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (842, 46, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":63},{"type":7,"item":23,"num":31},{"type":7,"item":24,"num":62},{"type":7,"item":27,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (843, 47, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":94},{"type":7,"item":23,"num":46},{"type":7,"item":24,"num":93},{"type":7,"item":27,"num":13}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (844, 48, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":165},{"type":7,"item":23,"num":83},{"type":7,"item":24,"num":165},{"type":7,"item":27,"num":19},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (845, 49, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":99},{"type":7,"item":23,"num":59},{"type":7,"item":24,"num":40},{"type":7,"item":27,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (846, 51, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":142},{"type":7,"item":23,"num":85},{"type":7,"item":24,"num":57},{"type":7,"item":27,"num":12},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (847, 52, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":258},{"type":7,"item":23,"num":155},{"type":7,"item":24,"num":103},{"type":7,"item":27,"num":20},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (848, 55, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":91},{"type":7,"item":22,"num":87},{"type":7,"item":23,"num":87},{"type":7,"item":25,"num":10},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (849, 56, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":162},{"type":7,"item":22,"num":157},{"type":7,"item":23,"num":157},{"type":7,"item":25,"num":22},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (850, 57, N'[{"type":0,"num":220},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":1},{"type":7,"item":23,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (851, 58, N'[{"type":0,"num":620},{"type":7,"item":21,"num":2},{"type":7,"item":22,"num":2},{"type":7,"item":23,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (852, 59, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":89},{"type":7,"item":22,"num":174},{"type":7,"item":23,"num":174},{"type":7,"item":25,"num":20},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (853, 60, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":156},{"type":7,"item":22,"num":310},{"type":7,"item":23,"num":310},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (854, 61, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":228},{"type":7,"item":22,"num":456},{"type":7,"item":23,"num":456},{"type":7,"item":25,"num":48},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (855, 62, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":412},{"type":7,"item":22,"num":822},{"type":7,"item":23,"num":822},{"type":7,"item":25,"num":82},{"type":7,"item":28,"num":8}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (856, 63, N'[{"type":0,"num":17120},{"type":7,"item":21,"num":69},{"type":7,"item":22,"num":66},{"type":7,"item":23,"num":66},{"type":7,"item":26,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (857, 64, N'[{"type":0,"num":20420},{"type":7,"item":21,"num":124},{"type":7,"item":22,"num":118},{"type":7,"item":23,"num":118},{"type":7,"item":26,"num":15},{"type":7,"item":28,"num":1}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (858, 65, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":178},{"type":7,"item":22,"num":173},{"type":7,"item":23,"num":173},{"type":7,"item":26,"num":20},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (859, 66, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":318},{"type":7,"item":22,"num":308},{"type":7,"item":23,"num":308},{"type":7,"item":26,"num":40},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (860, 67, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":242},{"type":7,"item":23,"num":120},{"type":7,"item":24,"num":240},{"type":7,"item":27,"num":26},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (861, 68, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":437},{"type":7,"item":23,"num":218},{"type":7,"item":24,"num":436},{"type":7,"item":27,"num":44},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (862, 69, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":639},{"type":7,"item":23,"num":320},{"type":7,"item":24,"num":639},{"type":7,"item":27,"num":65},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (863, 70, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1148},{"type":7,"item":23,"num":573},{"type":7,"item":24,"num":1146},{"type":7,"item":27,"num":117},{"type":7,"item":28,"num":11}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (864, 71, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":377},{"type":7,"item":23,"num":225},{"type":7,"item":24,"num":150},{"type":7,"item":27,"num":30},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (865, 72, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":677},{"type":7,"item":23,"num":406},{"type":7,"item":24,"num":271},{"type":7,"item":27,"num":56},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (866, 73, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":997},{"type":7,"item":23,"num":599},{"type":7,"item":24,"num":399},{"type":7,"item":27,"num":84},{"type":7,"item":28,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (867, 74, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1791},{"type":7,"item":23,"num":1075},{"type":7,"item":24,"num":717},{"type":7,"item":27,"num":145},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (868, 75, N'[{"type":0,"num":9020},{"type":7,"item":21,"num":36},{"type":7,"item":22,"num":35},{"type":7,"item":23,"num":35},{"type":7,"item":25,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (869, 76, N'[{"type":0,"num":10920},{"type":7,"item":21,"num":62},{"type":7,"item":22,"num":60},{"type":7,"item":23,"num":60},{"type":7,"item":25,"num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (870, 77, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":235},{"type":7,"item":22,"num":227},{"type":7,"item":23,"num":227},{"type":7,"item":25,"num":31},{"type":7,"item":28,"num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (871, 78, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":420},{"type":7,"item":22,"num":409},{"type":7,"item":23,"num":409},{"type":7,"item":25,"num":54},{"type":7,"item":28,"num":4}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (872, 79, N'[{"type":0,"num":32820},{"type":7,"item":21,"num":306},{"type":7,"item":22,"num":298},{"type":7,"item":23,"num":298},{"type":7,"item":26,"num":39},{"type":7,"item":28,"num":3}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (873, 80, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":552},{"type":7,"item":22,"num":537},{"type":7,"item":23,"num":537},{"type":7,"item":26,"num":67},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (874, 81, N'[{"type":0,"num":39020},{"type":7,"item":21,"num":552},{"type":7,"item":22,"num":537},{"type":7,"item":23,"num":537},{"type":7,"item":26,"num":67},{"type":7,"item":28,"num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (875, 82, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":468},{"type":7,"item":22,"num":453},{"type":7,"item":23,"num":453},{"type":7,"item":26,"num":56},{"type":7,"item":28,"num":5}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (876, 83, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":838},{"type":7,"item":22,"num":812},{"type":7,"item":23,"num":812},{"type":7,"item":26,"num":102},{"type":7,"item":28,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (877, 85, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":620},{"type":7,"item":22,"num":601},{"type":7,"item":23,"num":601},{"type":7,"item":25,"num":74},{"type":7,"item":28,"num":7}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (878, 86, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1116},{"type":7,"item":22,"num":1083},{"type":7,"item":23,"num":1083},{"type":7,"item":25,"num":131},{"type":7,"item":28,"num":13}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (879, 87, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1791},{"type":7,"item":23,"num":1075},{"type":7,"item":24,"num":717},{"type":7,"item":27,"num":145},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (880, 88, N'[{"type":0,"num":66320},{"type":7,"item":21,"num":814},{"type":7,"item":22,"num":789},{"type":7,"item":23,"num":789},{"type":7,"item":26,"num":98},{"type":7,"item":28,"num":9}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (881, 89, N'[{"type":0,"num":78720},{"type":7,"item":21,"num":1462},{"type":7,"item":22,"num":1419},{"type":7,"item":23,"num":1419},{"type":7,"item":26,"num":173},{"type":7,"item":28,"num":17}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (882, 90, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":605},{"type":7,"item":22,"num":1209},{"type":7,"item":23,"num":1209},{"type":7,"item":25,"num":120},{"type":7,"item":28,"num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (883, 91, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":1086},{"type":7,"item":22,"num":2173},{"type":7,"item":23,"num":2173},{"type":7,"item":25,"num":220},{"type":7,"item":28,"num":21}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (884, 93, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1230},{"type":7,"item":22,"num":1194},{"type":7,"item":23,"num":1194},{"type":7,"item":26,"num":147},{"type":7,"item":28,"num":14}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (885, 94, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":2217},{"type":7,"item":22,"num":2151},{"type":7,"item":23,"num":2151},{"type":7,"item":26,"num":260},{"type":7,"item":28,"num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (886, 95, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1690},{"type":7,"item":23,"num":844},{"type":7,"item":24,"num":1689},{"type":7,"item":27,"num":173},{"type":7,"item":28,"num":16}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (887, 96, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3042},{"type":7,"item":23,"num":1521},{"type":7,"item":24,"num":3042},{"type":7,"item":27,"num":305},{"type":7,"item":28,"num":30}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (888, 97, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":1641},{"type":7,"item":22,"num":1593},{"type":7,"item":23,"num":1593},{"type":7,"item":25,"num":194},{"type":7,"item":28,"num":19}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (889, 98, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":2955},{"type":7,"item":22,"num":2868},{"type":7,"item":23,"num":2868},{"type":7,"item":25,"num":350},{"type":7,"item":28,"num":34}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (890, 99, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":2641},{"type":7,"item":23,"num":1584},{"type":7,"item":24,"num":1056},{"type":7,"item":27,"num":211},{"type":7,"item":28,"num":21}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (891, 100, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":4752},{"type":7,"item":23,"num":2851},{"type":7,"item":24,"num":1901},{"type":7,"item":27,"num":384},{"type":7,"item":28,"num":37}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (892, 101, N'[{"type":0,"num":144320},{"type":7,"item":21,"num":2155},{"type":7,"item":22,"num":2092},{"type":7,"item":23,"num":2092},{"type":7,"item":26,"num":254},{"type":7,"item":28,"num":25}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (893, 102, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3876},{"type":7,"item":22,"num":3763},{"type":7,"item":23,"num":3763},{"type":7,"item":26,"num":458},{"type":7,"item":28,"num":45}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (894, 103, N'[{"type":0,"num":171620},{"type":7,"item":21,"num":3876},{"type":7,"item":22,"num":3763},{"type":7,"item":23,"num":3763},{"type":7,"item":26,"num":458},{"type":7,"item":28,"num":45}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (895, 105, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":3260},{"type":7,"item":22,"num":3164},{"type":7,"item":23,"num":3164},{"type":7,"item":26,"num":385},{"type":7,"item":28,"num":38}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (896, 106, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":5869},{"type":7,"item":22,"num":5695},{"type":7,"item":23,"num":5695},{"type":7,"item":26,"num":690},{"type":7,"item":28,"num":69}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (897, 84, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":4474},{"type":7,"item":23,"num":2237},{"type":7,"item":24,"num":4474},{"type":7,"item":27,"num":451},{"type":7,"item":28,"num":44}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (898, 107, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":8057},{"type":7,"item":23,"num":4028},{"type":7,"item":24,"num":8056},{"type":7,"item":27,"num":807},{"type":7,"item":28,"num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (899, 109, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":10270},{"type":7,"item":22,"num":9968},{"type":7,"item":23,"num":9968},{"type":7,"item":26,"num":1211},{"type":7,"item":28,"num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (900, 110, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":6995},{"type":7,"item":23,"num":4196},{"type":7,"item":24,"num":2798},{"type":7,"item":27,"num":563},{"type":7,"item":28,"num":55}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (901, 111, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":12586},{"type":7,"item":23,"num":7552},{"type":7,"item":24,"num":5035},{"type":7,"item":27,"num":1009},{"type":7,"item":28,"num":100}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (902, 112, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":5706},{"type":7,"item":22,"num":5538},{"type":7,"item":23,"num":5538},{"type":7,"item":26,"num":671},{"type":7,"item":28,"num":67}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (903, 113, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":10270},{"type":7,"item":22,"num":9968},{"type":7,"item":23,"num":9968},{"type":7,"item":26,"num":1211},{"type":7,"item":28,"num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (904, 114, N'[{"type":0,"num":280000},{"type":7,"item":21,"num":5250},{"type":7,"item":22,"num":5000},{"type":7,"item":23,"num":5000},{"type":7,"item":25,"num":500},{"type":7,"item":28,"num":42}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (905, 115, N'[{"type":0,"num":340000},{"type":7,"item":21,"num":9400},{"type":7,"item":22,"num":9000},{"type":7,"item":23,"num":9000},{"type":7,"item":25,"num":900},{"type":7,"item":28,"num":75}]')
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (31, N'{"type":"OrderItem","tier":1,"name":"event_tier_1_reinforcement","money":500,"price":500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_1_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (32, N'{"type":"OrderItem","tier":1,"name":"event_tier_2_reinforcement","money":1000,"price":1000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_2_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (33, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":1500,"price":1500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (34, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":2000,"price":2000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (35, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":2500,"price":2500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (36, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3000,"price":3000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (37, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3500,"price":3500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (38, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":4000,"price":4000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (41, N'{"type":"ResurrectTank","name":"resurrectItem",param:5,"gold":0,"amount":1,"price":300,"money":300,"tier":1}', 7)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:21,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:21,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:21,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:21,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:22,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:22,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:22,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:22,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:22,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:22,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:22,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:22,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:23,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:23,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:23,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:23,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:23,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:23,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:23,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:23,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:23,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:23,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:23,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:23,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:24,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:24,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:24,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:24,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:24,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:24,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:24,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:24,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:24,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:24,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:24,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:24,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:25,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:25,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:25,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:25,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:25,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:25,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:25,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:25,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:25,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:25,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:25,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:25,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:26,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:26,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:26,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:26,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:26,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:26,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:26,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:26,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:26,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:26,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:26,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:26,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:27,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:27,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:27,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:27,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (176, N'{"type":"ShopItem",param:27,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (177, N'{"type":"ShopItem",param:27,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (178, N'{"type":"ShopItem",param:27,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (179, N'{"type":"ShopItem",param:27,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (180, N'{"type":"ShopItem",param:27,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (181, N'{"type":"ShopItem",param:27,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (182, N'{"type":"ShopItem",param:27,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (183, N'{"type":"ShopItem",param:27,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (184, N'{"type":"ShopItem",param:28,"money":1845,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (185, N'{"type":"ShopItem",param:28,"gold":129,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (186, N'{"type":"ShopItem",param:28,"money":3690,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (187, N'{"type":"ShopItem",param:28,"gold":258,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (188, N'{"type":"ShopItem",param:28,"money":9200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (189, N'{"type":"ShopItem",param:28,"gold":644,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (190, N'{"type":"ShopItem",param:28,"money":18390,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (191, N'{"type":"ShopItem",param:28,"gold":1287,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (192, N'{"type":"ShopItem",param:28,"money":59765,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (193, N'{"type":"ShopItem",param:28,"gold":3218,"amount":25}', 6)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[Levels] ON 

GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (1, 0, 0, 0)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (2, 50, 20, 200)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (3, 190, 20, 210)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (4, 460, 20, 220)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (5, 1220, 20, 230)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (6, 2670, 20, 240)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (7, 5010, 20, 250)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (8, 8090, 20, 260)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (9, 11610, 20, 270)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (10, 15300, 20, 470)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (11, 19300, 20, 290)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (12, 24770, 20, 290)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (13, 29432, 20, 300)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (14, 34209, 20, 310)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (15, 39954, 20, 320)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (16, 46294, 20, 350)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (17, 54222, 20, 370)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (18, 61912, 20, 400)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (19, 72184, 20, 420)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (20, 81973, 20, 450)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (21, 94289, 20, 460)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (22, 104432, 20, 480)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (23, 114678, 20, 490)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (24, 130428, 20, 510)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (25, 141228, 20, 530)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (26, 152178, 20, 560)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (27, 163254, 20, 590)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (28, 174432, 20, 620)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (29, 185688, 20, 650)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (30, 196998, 20, 680)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (31, 211810, 20, 710)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (32, 223535, 20, 740)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (33, 235442, 20, 770)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (34, 247520, 20, 800)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (35, 259964, 20, 830)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (36, 272560, 20, 870)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (37, 285165, 20, 910)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (38, 297804, 20, 950)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (39, 310461, 20, 980)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (40, 323165, 20, 1020)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (41, 339317, 20, 1060)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (42, 360576, 20, 1110)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (43, 386145, 20, 1150)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (44, 415417, 20, 1190)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (45, 444780, 20, 1230)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (46, 474207, 20, 1280)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (47, 503670, 20, 1330)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (48, 533142, 20, 1380)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (49, 562657, 20, 1430)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (50, 592188, 20, 1480)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (51, 622322, 20, 1530)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (52, 653059, 20, 1580)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (53, 684398, 20, 1640)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (54, 716340, 20, 1690)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (55, 748885, 20, 1750)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (56, 782435, 20, 1810)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (57, 817005, 20, 1870)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (58, 852609, 20, 1940)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (59, 889263, 20, 2000)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (60, 926980, 20, 2070)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (61, 980416, 20, 2140)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (62, 1042632, 20, 2200)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (63, 1110102, 20, 2270)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (64, 1180967, 20, 2340)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (65, 1255299, 20, 2410)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (66, 1331110, 20, 2490)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (67, 1408409, 20, 2570)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (68, 1487207, 20, 2650)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (69, 1567512, 20, 2740)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (70, 1649335, 20, 2820)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (71, 1754035, 20, 2900)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (72, 1867075, 20, 2980)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (73, 1988645, 20, 3070)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (74, 2118940, 20, 3150)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (75, 2258152, 20, 3230)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (76, 2398970, 20, 3330)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (77, 2541388, 20, 3430)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (78, 2685398, 20, 3530)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (79, 2830993, 20, 3630)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (80, 2978165, 20, 3730)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (81, 3156188, 20, 3830)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (82, 3346021, 20, 3920)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (83, 3547902, 20, 4020)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (84, 3762066, 20, 4120)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (85, 3988752, 20, 4220)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (86, 4217825, 20, 4340)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (87, 4449279, 20, 4450)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (88, 4683105, 20, 4570)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (89, 4919297, 20, 4690)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (90, 5157848, 20, 4800)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (91, 5437179, 20, 4920)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (92, 5733158, 20, 5040)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (93, 6046083, 20, 5150)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (94, 6376252, 20, 5270)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (95, 6723962, 20, 5390)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (96, 7074443, 20, 5510)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (97, 7427677, 20, 5640)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (98, 7783644, 20, 5770)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (99, 8142324, 20, 5900)
GO
INSERT [dbo].[Levels] ([l], [e], [g], [m]) VALUES (100, 999999999, 20, 6000)
GO
SET IDENTITY_INSERT [dbo].[Levels] OFF
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21,22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (100, 1, 1, N'{"ident":"item","items":[41],"weights":[10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (101, 3, 1, N'{"ident":"tank","items":[23],"weights":[10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (102, 5, 1, N'{"ident":"tank","items":[2],"weights":[10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (103, 7, 1, N'{"ident":"tank","items":[49],"weights":[10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (650, 9, 1, N'{"ident":"tank","items":[24],"weights":[1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (651, 11, 1, N'{"ident":"tank","items":[81],"weights":[1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (652, 13, 1, N'{"ident":"tank","items":[87],"weights":[1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (653, 15, 1, N'{"ident":"tank","items":[103],"weights":[1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (654, 17, 1, N'{"ident":"tank","items":[109],"weights":[1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (673, 19, 14, N'{"ident":"shop_slot_14_19","items":[212,210,208,204,202,200,198,196,190,188,186,184,182,176,174,172,170,168,162,160,158,156,154,146,144,142,140,138,130,128,126,124,122,114,112,110,108,106,213,211,209,205,203,201,199,197,191,189,187,185,183,177,175,173,171,169,163,161,159,157,155,147,145,143,141,139,131,129,127,125,123,115,113,111,109,107],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (834, 1, 2, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (835, 3, 2, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100],"weights":[1,2,1,12,12,25,25,26,26,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (836, 5, 2, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (837, 9, 2, N'{"ident":"item","items":[184,176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100],"weights":[0,2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (838, 11, 2, N'{"ident":"item","items":[186,184,178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102],"weights":[0,0,2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (839, 13, 2, N'{"ident":"item","items":[188,186,184,180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104],"weights":[0,0,0,1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (840, 15, 2, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104],"weights":[0,0,0,0,2,2,2,2,1,1,1,1,1,1,1,1,11,11,11,11,28,28,28,28,22,22,22,22,35,35,35,35]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (841, 17, 2, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104],"weights":[0,0,0,0,0,1,1,1,1,2,2,2,2,1,1,1,1,7,7,7,7,31,31,31,31,20,20,20,20,38,38,38,38]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (842, 1, 3, N'{"ident":"item","items":[136,124,112,100],"weights":[8,36,32,24]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (843, 3, 3, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100],"weights":[1,2,1,12,12,25,25,26,26,33,33]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (844, 5, 3, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100],"weights":[6,6,1,1,0,0,30,30,16,16,12,12,35,35]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (845, 9, 3, N'{"ident":"item","items":[184,176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100],"weights":[0,2,2,2,0,0,0,1,1,1,16,16,16,28,28,28,12,12,12,41,41,41]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (846, 11, 3, N'{"ident":"item","items":[186,184,178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102],"weights":[0,0,2,2,2,2,2,2,2,2,1,1,1,1,15,15,15,24,24,24,27,27,27,28,28,28]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (847, 13, 3, N'{"ident":"item","items":[188,186,184,180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104],"weights":[0,0,0,1,1,1,1,2,2,2,2,1,1,1,1,10,10,10,29,29,29,21,21,21,36,36,36]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (848, 15, 3, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104],"weights":[0,0,0,0,2,2,2,2,1,1,1,1,1,1,1,1,11,11,11,11,28,28,28,28,22,22,22,22,35,35,35,35]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (849, 17, 3, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104],"weights":[0,0,0,0,0,1,1,1,1,2,2,2,2,1,1,1,1,7,7,7,7,31,31,31,31,20,20,20,20,38,38,38,38]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (856, 15, 4, N'{"ident":"item","items":[191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (857, 17, 4, N'{"ident":"item","items":[193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (858, 1, 5, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (859, 3, 5, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (860, 5, 5, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,175,173,163,161,151,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,0,0,0,0,0,0,0,0,2,2,2,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (861, 9, 5, N'{"ident":"item","items":[184,176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,185,177,175,173,165,163,161,153,151,149,141,139,137,129,127,125,117,115,113,105,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (862, 11, 5, N'{"ident":"item","items":[186,184,178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,187,185,179,177,175,173,167,165,163,161,155,153,151,149,143,141,139,131,129,127,119,117,115,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (863, 13, 5, N'{"ident":"item","items":[188,186,184,180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,189,187,185,181,179,177,175,169,167,165,163,157,155,153,151,145,143,141,133,131,129,121,119,117,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (864, 15, 5, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (865, 17, 5, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (866, 1, 6, N'{"ident":"item","items":[136,124,112,100,137,125,113,101],"weights":[1,0,0,0,2,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (867, 3, 6, N'{"ident":"item","items":[172,160,148,138,136,126,124,114,112,102,100,173,161,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (868, 5, 6, N'{"ident":"item","items":[174,172,162,160,150,148,138,136,126,124,114,112,102,100,175,173,163,161,151,149,139,137,127,125,115,113,103,101],"weights":[1,1,1,1,1,1,0,0,0,0,0,0,0,0,2,2,2,2,2,2,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (869, 9, 6, N'{"ident":"item","items":[184,176,174,172,164,162,160,152,150,148,140,138,136,128,126,124,116,114,112,104,102,100,185,177,175,173,165,163,161,153,151,149,141,139,137,129,127,125,117,115,113,105,103,101],"weights":[1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (870, 11, 6, N'{"ident":"item","items":[186,184,178,176,174,172,166,164,162,160,154,152,150,148,142,140,138,130,128,126,118,116,114,106,104,102,187,185,179,177,175,173,167,165,163,161,155,153,151,149,143,141,139,131,129,127,119,117,115,107,105,103],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (871, 13, 6, N'{"ident":"item","items":[188,186,184,180,178,176,174,168,166,164,162,156,154,152,150,144,142,140,132,130,128,120,118,116,108,106,104,189,187,185,181,179,177,175,169,167,165,163,157,155,153,151,145,143,141,133,131,129,121,119,117,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (872, 15, 6, N'{"ident":"item","items":[190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (873, 17, 6, N'{"ident":"item","items":[192,190,188,186,184,182,180,178,176,170,168,166,164,158,156,154,152,146,144,142,140,134,132,130,128,122,120,118,116,110,108,106,104,193,191,189,187,185,183,181,179,177,171,169,167,165,159,157,155,153,147,145,143,141,135,133,131,129,123,121,119,117,111,109,107,105],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (898, 1, 13, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (899, 1, 14, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (900, 1, 15, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (901, 1, 16, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (902, 1, 17, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (903, 1, 18, N'{"ident":"crew","items":[1,2,3,4,5,6,7,8,9],"weights":[1,1,1,1,1,1,1,1,1]}')
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
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [power1], [power1num], [powermult], [minPower], [maxPower]) VALUES (1022, N'base2base', 0, 3, N'base2base', 0, 0, 200, 0, 99999)
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
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (28, N'speed_01', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (29, N'speed_02', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (30, N'speed_03', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (31, N'artilerystrike_04', 5, 1, 3, 0, 55, 0, 7, 598, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 6, 0, 0, 5000, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (32, N'speed_04', 2, 1, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 4)
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
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (66, N'speed_01', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (67, N'speed_02', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (68, N'speed_03', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (69, N'speed_04', 2, 3, 1, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, N'', 4)
GO
SET IDENTITY_INSERT [dbo].[PowerUps] OFF
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (10, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 1)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (20, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 2)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (30, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 3)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (40, 7897, 999999, 90, 48, 4, 10, 13.97, 17.07, 7)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (50, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 8)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (60, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 9)
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
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (70, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 10)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (71, 0, 267, 104, 55, 22, 1, 0.69, 0.84, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (72, 268, 517, 101, 55, 19, 2, 1.27, 1.55, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (73, 518, 763, 100, 55, 16, 3, 1.42, 1.74, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (74, 764, 1134, 98, 55, 13, 4, 1.3, 1.59, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (75, 1135, 1775, 96, 55, 11, 5, 1.01, 1.24, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (76, 1776, 2484, 95, 55, 9, 6, 1.78, 2.17, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (77, 2485, 3903, 93, 55, 7, 7, 1.7, 2.07, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (78, 3904, 5640, 92, 55, 5, 8, 2.91, 3.56, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (79, 5641, 7896, 91, 55, 4, 9, 3.59, 4.39, 11)
GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [bundleId], [compMinNorm], [compMaxNorm], [type]) VALUES (80, 7897, 999999, 90, 55, 4, 10, 7.99, 9.77, 11)
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] OFF
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
SET IDENTITY_INSERT [dbo].[Upgrades] ON 

GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (1, 1, 1, 0, 2, 2, 2, 12, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (2, 1, 1, 1, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (3, 1, 1, 2, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (4, 2, 1, 0, 2, 2, 2, 12, 0, 7, 1, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (5, 2, 1, 1, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (6, 2, 1, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (7, 5, 1, 0, 2, 2, 2, 12, 0, 3, 1, 1, 1, 1, 1, 0.35, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (8, 5, 1, 1, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (9, 5, 1, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 3, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (10, 1, 2, 0, 2, 2, 2, 15, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (11, 1, 2, 1, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (12, 1, 2, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (13, 2, 2, 0, 3, 3, 3, 15, 0, 7, 1, 1, 1, 1, 1, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (14, 2, 2, 1, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (15, 2, 2, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (16, 3, 2, 0, 3, 3, 3, 30, 1, 2, 1, 1, 1, 1, 0.4, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (17, 3, 2, 1, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (18, 3, 2, 2, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 4, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (19, 5, 2, 0, 2, 2, 2, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (20, 5, 2, 1, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (21, 5, 2, 2, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (22, 6, 2, 0, 3, 3, 3, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (23, 6, 2, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (24, 6, 2, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (25, 1, 3, 0, 3, 3, 3, 18, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (26, 1, 3, 1, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (27, 1, 3, 2, 0, 0, 0, 3, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (28, 2, 3, 0, 4, 4, 4, 18, 0.3, 7, 1, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (29, 2, 3, 1, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (30, 2, 3, 2, 0, 0, 0, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (31, 3, 3, 0, 4, 4, 3, 18, 1, 4, 1, 1, 1, 1, 0.4, 1, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (32, 3, 3, 1, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (33, 3, 3, 2, 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 4, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (34, 5, 3, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 7)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (35, 5, 3, 1, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (36, 5, 3, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (37, 6, 3, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (38, 6, 3, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (39, 6, 3, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (40, 1, 4, 0, 3, 3, 3, 20, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (41, 1, 4, 1, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (42, 1, 4, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (43, 2, 4, 0, 4, 4, 4, 25, 0.25, 6, 1, 1, 1, 1, 1, 1, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (44, 2, 4, 1, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (45, 2, 4, 2, 0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (46, 3, 4, 0, 4, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (47, 3, 4, 1, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (48, 3, 4, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (49, 4, 4, 0, 3, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (50, 4, 4, 1, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (51, 4, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (52, 5, 4, 0, 3, 3, 3, 20, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (53, 5, 4, 1, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (54, 5, 4, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (55, 6, 4, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 6)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (56, 6, 4, 1, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (57, 6, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (58, 1, 5, 0, 3, 3, 3, 30, 1, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (59, 1, 5, 1, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (60, 1, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (61, 2, 5, 0, 4, 4, 4, 40, 1, 6, 1, 1, 1, 1, 0.4, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (62, 2, 5, 1, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (63, 2, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (64, 3, 5, 0, 3, 4, 4, 18, 1, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (65, 3, 5, 1, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (66, 3, 5, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (67, 4, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (68, 4, 5, 1, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (69, 4, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (70, 5, 5, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (71, 5, 5, 1, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (72, 5, 5, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (73, 6, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (74, 6, 5, 1, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (75, 6, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (76, 1, 6, 0, 3, 3, 3, 35, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (77, 1, 6, 1, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (78, 1, 6, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (79, 2, 6, 0, 4, 4, 4, 18, 0.2, 6, 1, 1, 1, 1, 1, 1, 2, 15)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (80, 2, 6, 1, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (81, 2, 6, 2, 0, 0, 0, 0, 4, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (82, 3, 6, 0, 3, 4, 4, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (83, 3, 6, 1, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (84, 3, 6, 2, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (85, 4, 6, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (86, 4, 6, 1, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (87, 4, 6, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (88, 5, 6, 0, 3, 3, 3, 35, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 12)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (89, 5, 6, 1, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (90, 5, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (91, 6, 6, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (92, 6, 6, 1, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (93, 6, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (94, 1, 7, 0, 3, 3, 3, 40, 0.25, 6, 0.7, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (95, 1, 7, 1, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (96, 1, 7, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (97, 2, 7, 0, 4, 4, 4, 50, 0.07, 6, 1, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (98, 2, 7, 1, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (99, 2, 7, 2, 0, 0, 0, 5, 0, 5, 5, 0, 0, 0, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (100, 3, 7, 0, 3, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (101, 3, 7, 1, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (102, 3, 7, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (103, 4, 7, 0, 3, 4, 3, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (104, 4, 7, 1, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (105, 4, 7, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (106, 5, 7, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (107, 5, 7, 1, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (108, 5, 7, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (109, 6, 7, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 2, 18)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (110, 6, 7, 1, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (111, 6, 7, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (112, 1, 8, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (113, 1, 8, 1, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (114, 1, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (115, 2, 8, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (116, 2, 8, 1, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (117, 2, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (118, 3, 8, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (119, 3, 8, 1, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (120, 3, 8, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (121, 4, 8, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (122, 4, 8, 1, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (123, 4, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (124, 5, 8, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (125, 5, 8, 1, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (126, 5, 8, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (127, 6, 8, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (128, 6, 8, 1, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (129, 6, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (130, 1, 9, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (131, 1, 9, 1, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (132, 1, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (133, 2, 9, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (134, 2, 9, 1, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (135, 2, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (136, 3, 9, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (137, 3, 9, 1, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (138, 3, 9, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (139, 4, 9, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (140, 4, 9, 1, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (141, 4, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (142, 5, 9, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (143, 5, 9, 1, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (144, 5, 9, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (145, 6, 9, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (146, 6, 9, 1, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (147, 6, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[Upgrades] OFF
GO
