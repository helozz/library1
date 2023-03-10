USE [tankwars]
GO
/****** Object:  Table [dbo].[UpgradesNew]    Script Date: 17.08.2016 17:26:20 ******/
DROP TABLE [dbo].[UpgradesNew]
GO
/****** Object:  Table [dbo].[UpgradesNew]    Script Date: 17.08.2016 17:26:20 ******/
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
 CONSTRAINT [PK_UpgradesNew] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[UpgradesNew] ON 

GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (1, 1, 1, 14, 3, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 100, 25)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (2, 2, 1, 14, 4, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 150, 30)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (3, 3, 1, 14, 9, 8, 1, 11, 0.5, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 160, 33)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (4, 4, 1, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 180, 35)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (5, 5, 1, 14, 5, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 190, 40)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (6, 6, 1, 14, 9, 8, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 200, 50)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (7, 1, 2, 14, 3, 7, 1, 5, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 200, 35)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (8, 2, 2, 14, 4, 7, 1, 5, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 300, 42)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (9, 3, 2, 14, 9, 8, 1, 11, 0.5, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 320, 46)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (10, 4, 2, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 360, 50)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (11, 5, 2, 14, 5, 10, 1, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 380, 55)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (12, 6, 2, 14, 9, 8, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 400, 60)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (13, 1, 3, 14, 4, 9, 1, 5, 0.3, 4, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 350, 50)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (14, 2, 3, 14, 5, 10, 1, 5, 0.3, 4, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 525, 60)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (15, 3, 3, 14, 9, 8, 1, 11, 0.5, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 560, 65)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (16, 4, 3, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 630, 75)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (17, 5, 3, 14, 10, 10, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 665, 90)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (18, 6, 3, 14, 9, 8, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 700, 100)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (19, 1, 4, 14, 6, 9, 1, 5, 0.3, 4, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 500, 100)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (20, 2, 4, 14, 7, 10, 1, 5, 0.3, 4, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 750, 120)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (21, 3, 4, 14, 13, 8, 1, 11, 0.5, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 800, 130)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (22, 4, 4, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136, 900, 150)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (23, 5, 4, 14, 14, 10, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 950, 180)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (24, 6, 4, 14, 12, 8, 1, 12, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 1000, 200)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (25, 1, 5, 14, 7, 9, 1, 5, 0.3, 4, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 160, 850, 185)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (26, 2, 5, 14, 9, 10, 1, 5, 0.3, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192, 1275, 222)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (27, 3, 5, 14, 15, 8, 1, 11, 0.5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240, 1360, 240)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (28, 4, 5, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 272, 1530, 278)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (29, 5, 5, 14, 13, 10, 1, 12, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 1615, 333)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (30, 6, 5, 14, 12, 8, 1, 12, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 400, 1700, 350)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (31, 1, 6, 14, 9, 9, 1, 5, 0.3, 4, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, 1000, 320)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (32, 2, 6, 14, 11, 10, 1, 5, 0.3, 4, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 360, 1500, 385)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (33, 3, 6, 14, 21, 8, 1, 11, 0.5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 450, 1600, 415)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (34, 4, 6, 14, 20, 7, 1, 11, 0.5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 510, 1800, 480)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (35, 5, 6, 14, 23, 10, 1, 12, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 1900, 575)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (36, 6, 6, 14, 20, 8, 1, 6, 6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 2000, 670)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (37, 1, 7, 14, 12, 9, 1, 5, 0.3, 4, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1200, 450)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (38, 2, 7, 14, 15, 10, 1, 5, 0.3, 4, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 600, 1800, 540)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (39, 3, 7, 14, 25, 8, 1, 11, 0.5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750, 1920, 585)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (40, 4, 7, 14, 25, 7, 1, 11, 0.5, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 850, 2160, 675)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (41, 5, 7, 14, 33, 10, 1, 12, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 2280, 810)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (42, 6, 7, 14, 28, 8, 1, 6, 6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1250, 2400, 945)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (43, 1, 8, 14, 15, 9, 1, 5, 0.3, 4, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1500, 600)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (44, 2, 8, 14, 19, 10, 1, 5, 0.3, 4, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200, 2250, 720)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (45, 3, 8, 14, 33, 8, 1, 11, 0.5, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1500, 2400, 780)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (46, 4, 8, 14, 32, 7, 1, 11, 0.5, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1700, 2700, 900)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (47, 5, 8, 14, 52, 10, 1, 12, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 2850, 1080)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (48, 6, 8, 14, 39, 8, 1, 6, 6, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2500, 3000, 1260)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (49, 1, 9, 14, 23, 9, 1, 5, 0.3, 4, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 2000, 1000)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (50, 2, 9, 14, 23, 10, 1, 5, 0.3, 4, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2400, 3000, 1200)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (51, 3, 9, 14, 40, 8, 1, 11, 0.5, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 3200, 1300)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (52, 4, 9, 14, 41, 7, 1, 11, 0.5, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3400, 3600, 1500)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (53, 5, 9, 14, 62, 10, 1, 12, 1, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 3800, 1800)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (54, 6, 9, 14, 44, 8, 1, 6, 6, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5000, 4000, 2100)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (55, 1, 10, 14, 27, 9, 1, 5, 0.3, 4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4000, 3000, 1200)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (56, 2, 10, 14, 27, 10, 1, 5, 0.3, 4, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4800, 4500, 1440)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (57, 3, 10, 14, 45, 8, 1, 11, 0.5, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6000, 4800, 1500)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (58, 4, 10, 14, 50, 7, 1, 11, 0.5, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6800, 5400, 1800)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (59, 5, 10, 14, 80, 10, 1, 12, 1, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8000, 5700, 2150)
GO
INSERT [dbo].[UpgradesNew] ([id], [tankType], [tankTier], [upgrade1], [value1], [upgrade2], [value2], [upgrade3], [value3], [upgrade4], [value4], [upgrade5], [value5], [upgrade6], [value6], [upgrade7], [value7], [upgrade8], [value8], [upgrade9], [value9], [upgrade10], [value10], [upgrade11], [value11], [upgrade12], [value12], [components], [money], [parts]) VALUES (60, 6, 10, 14, 55, 8, 1, 6, 6, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 6000, 2500)
GO
SET IDENTITY_INSERT [dbo].[UpgradesNew] OFF
GO
