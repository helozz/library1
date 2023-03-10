USE [tankwars_test]
GO

ALTER TABLE [dbo].[UserCrews] ADD [skill6lvl] int NULL
GO
UPDATE [dbo].[UserCrews] SET [skill6lvl] = 0
GO
ALTER TABLE [dbo].[UserCrews] ALTER COLUMN [skill6lvl] int NOT NULL

/****** Object:  Table [dbo].[SkillRequirements]    Script Date: 16.02.2016 19:43:30 ******/
DROP TABLE [dbo].[SkillRequirements]
GO
/****** Object:  Table [dbo].[SkillRequirements]    Script Date: 16.02.2016 19:43:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SkillRequirements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[index] [int] NOT NULL,
	[level] [int] NOT NULL,
	[crewLevel] [int] NOT NULL,
	[requirements] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_SkillRequirements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SkillRequirements] ON 

GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (15, 6, 1, 1, N'[{"type":0,"num":300},{"type":7,"item":79,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (16, 6, 2, 4, N'[{"type":0,"num":350},{"type":7,"item":79,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (17, 6, 3, 7, N'[{"type":0,"num":500},{"type":7,"item":79,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (18, 6, 4, 10, N'[{"type":0,"num":650},{"type":7,"item":79,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (19, 6, 5, 13, N'[{"type":0,"num":850},{"type":7,"item":79,"num":8}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (20, 6, 6, 16, N'[{"type":0,"num":950},{"type":7,"item":79,"num":8}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (21, 6, 7, 19, N'[{"type":0,"num":1100},{"type":7,"item":79,"num":9}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (22, 6, 8, 22, N'[{"type":0,"num":1250},{"type":7,"item":79,"num":9}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (23, 6, 9, 25, N'[{"type":0,"num":1400},{"type":7,"item":79,"num":10}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (24, 6, 0, 1, N'[{"type":0,"num":1000},{"type":7,"item":80,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (25, 2, 1, 10, N'[{"type":0,"num":1000},{"type":7,"item":79,"num":5},{"type":7,"item":80,"num":2}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (26, 2, 2, 15, N'[{"type":0,"num":1500},{"type":7,"item":79,"num":5},{"type":7,"item":80,"num":4},{"type":7,"item":81,"num":2}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (27, 2, 3, 20, N'[{"type":0,"num":2000},{"type":7,"item":79,"num":7},{"type":7,"item":80,"num":4},{"type":7,"item":81,"num":2}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (28, 2, 4, 25, N'[{"type":0,"num":3000},{"type":7,"item":79,"num":7},{"type":7,"item":80,"num":5},{"type":7,"item":81,"num":3}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (29, 2, 5, 30, N'[{"type":0,"num":4000},{"type":7,"item":79,"num":9},{"type":7,"item":80,"num":5},{"type":7,"item":81,"num":3}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (30, 2, 6, 35, N'[{"type":0,"num":6000},{"type":7,"item":79,"num":9},{"type":7,"item":80,"num":6},{"type":7,"item":81,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (31, 2, 7, 40, N'[{"type":0,"num":8000},{"type":7,"item":79,"num":10},{"type":7,"item":80,"num":7},{"type":7,"item":81,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (32, 2, 8, 45, N'[{"type":0,"num":10000},{"type":7,"item":79,"num":10},{"type":7,"item":80,"num":8},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (33, 2, 9, 50, N'[{"type":0,"num":12000},{"type":7,"item":79,"num":15},{"type":7,"item":80,"num":9},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (34, 2, 10, 55, N'[{"type":0,"num":15000},{"type":7,"item":79,"num":15},{"type":7,"item":80,"num":10},{"type":7,"item":81,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (35, 2, 11, 60, N'[{"type":0,"num":18500},{"type":7,"item":79,"num":17},{"type":7,"item":80,"num":11},{"type":7,"item":81,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (36, 2, 12, 65, N'[{"type":0,"num":20000},{"type":7,"item":79,"num":20},{"type":7,"item":80,"num":12},{"type":7,"item":81,"num":8}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (37, 2, 0, 10, N'[{"type":0,"num":4000},{"type":7,"item":79,"num":20},{"type":7,"item":80,"num":5},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (38, 1, 1, 1, N'[{"type":0,"num":150},{"type":7,"item":79,"num":3}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (39, 1, 2, 3, N'[{"type":0,"num":200},{"type":7,"item":79,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (40, 1, 3, 5, N'[{"type":0,"num":300},{"type":7,"item":79,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (41, 1, 4, 7, N'[{"type":0,"num":400},{"type":7,"item":79,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (42, 1, 5, 9, N'[{"type":0,"num":500},{"type":7,"item":79,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (43, 1, 6, 11, N'[{"type":0,"num":600},{"type":7,"item":79,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (44, 1, 7, 13, N'[{"type":0,"num":700},{"type":7,"item":79,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (45, 1, 8, 15, N'[{"type":0,"num":800},{"type":7,"item":79,"num":8}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (46, 1, 9, 17, N'[{"type":0,"num":1000},{"type":7,"item":79,"num":8}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (47, 1, 0, 1, N'[{"type":0,"num":600},{"type":7,"item":80,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (48, 3, 1, 18, N'[{"type":0,"num":2000},{"type":7,"item":79,"num":10},{"type":7,"item":80,"num":5},{"type":7,"item":81,"num":3}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (49, 3, 2, 23, N'[{"type":0,"num":3000},{"type":7,"item":79,"num":10},{"type":7,"item":80,"num":7},{"type":7,"item":81,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (50, 3, 3, 28, N'[{"type":0,"num":4000},{"type":7,"item":79,"num":10},{"type":7,"item":80,"num":10},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (51, 3, 0, 18, N'[{"type":0,"num":2000},{"type":7,"item":80,"num":3},{"type":7,"item":81,"num":3}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (52, 4, 1, 25, N'[{"type":0,"num":700},{"type":7,"item":79,"num":10}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (53, 4, 2, 28, N'[{"type":0,"num":1000},{"type":7,"item":79,"num":12}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (54, 4, 3, 31, N'[{"type":0,"num":1300},{"type":7,"item":79,"num":14}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (55, 4, 4, 34, N'[{"type":0,"num":1600},{"type":7,"item":79,"num":16}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (61, 4, 5, 37, N'[{"type":0,"num":2000},{"type":7,"item":79,"num":18}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (62, 4, 6, 40, N'[{"type":0,"num":2500},{"type":7,"item":79,"num":20}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (67, 4, 0, 28, N'[{"type":0,"num":1500},{"type":7,"item":80,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (68, 5, 1, 30, N'[{"type":0,"num":1500},{"type":7,"item":79,"num":15},{"type":7,"item":80,"num":10},{"type":7,"item":81,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (71, 5, 2, 34, N'[{"type":0,"num":2500},{"type":7,"item":79,"num":18},{"type":7,"item":80,"num":12},{"type":7,"item":81,"num":4}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (72, 5, 3, 38, N'[{"type":0,"num":3500},{"type":7,"item":79,"num":21},{"type":7,"item":80,"num":14},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (73, 5, 4, 42, N'[{"type":0,"num":4500},{"type":7,"item":79,"num":24},{"type":7,"item":80,"num":16},{"type":7,"item":81,"num":5}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (74, 5, 5, 46, N'[{"type":0,"num":5500},{"type":7,"item":79,"num":27},{"type":7,"item":80,"num":18},{"type":7,"item":81,"num":6}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (76, 5, 6, 53, N'[{"type":0,"num":7000},{"type":7,"item":79,"num":30},{"type":7,"item":80,"num":20},{"type":7,"item":81,"num":7}]')
GO
INSERT [dbo].[SkillRequirements] ([id], [index], [level], [crewLevel], [requirements]) VALUES (77, 5, 0, 30, N'[{"type":0,"num":3000},{"type":7,"item":79,"num":10},{"type":7,"item":81,"num":5}]')
GO
SET IDENTITY_INSERT [dbo].[SkillRequirements] OFF
GO

DROP TABLE [dbo].[Crews]
GO
/****** Object:  Table [dbo].[Crews]    Script Date: 16.02.2016 19:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Crews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[side] [int] NOT NULL,
	[idsidebonus] [int] NOT NULL,
	[money] [int] NOT NULL,
	[gold] [int] NOT NULL,
	[skillId1] [int] NOT NULL,
	[skillId2] [int] NOT NULL,
	[skillId3] [int] NOT NULL,
	[skillId4] [int] NOT NULL,
	[skillId5] [int] NOT NULL,
	[forSale] [bit] NOT NULL,
	[skillId1b] [int] NOT NULL,
	[skillId1c] [int] NOT NULL,
	[skillId2b] [int] NOT NULL,
	[skillId2c] [int] NOT NULL,
	[skillId4b] [int] NOT NULL,
	[skillId4c] [int] NOT NULL,
	[skillId5b] [int] NOT NULL,
	[skillId5c] [int] NOT NULL,
	[idsidebonus2] [int] NOT NULL,
	[idsidebonus3] [int] NOT NULL,
 CONSTRAINT [PK_Crews] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Crews] ON 

GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (1, N'crew_su_01s', 1, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (2, N'crew_su_02', 1, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 32, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (3, N'crew_su_03', 1, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (4, N'crew_su_04', 1, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (5, N'crew_su_05', 1, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (6, N'crew_su_06', 1, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (7, N'crew_su_07', 1, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (8, N'crew_su_08', 1, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (9, N'crew_su_09', 1, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (10, N'crew_su_10', 1, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (11, N'crew_su_11', 1, 15, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (12, N'crew_su_12', 1, 3, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (13, N'crew_su_13', 1, 13, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (14, N'crew_su_14', 1, 16, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (15, N'crew_ge_01s', 2, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (16, N'crew_ge_02', 2, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 32, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (17, N'crew_ge_03', 2, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (18, N'crew_ge_04', 2, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (19, N'crew_ge_05', 2, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (20, N'crew_ge_06', 2, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (21, N'crew_ge_07', 2, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (22, N'crew_ge_08', 2, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (23, N'crew_ge_09', 2, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (24, N'crew_ge_10', 2, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (25, N'crew_ge_11', 2, 13, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (26, N'crew_ge_12', 2, 16, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (27, N'crew_ge_13', 2, 15, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (28, N'crew_ge_14', 2, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (29, N'crew_us_01s', 3, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (30, N'crew_us_02', 3, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 32, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (31, N'crew_us_03', 3, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (32, N'crew_us_04', 3, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (33, N'crew_us_05', 3, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (34, N'crew_us_06', 3, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (35, N'crew_us_07', 3, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (36, N'crew_us_08', 3, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (37, N'crew_us_09', 3, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (38, N'crew_us_10', 3, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (39, N'crew_us_11', 3, 15, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (40, N'crew_us_12', 3, 13, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (41, N'crew_us_13', 3, 16, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (42, N'crew_us_14', 3, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (43, N'crew_uk_01s', 4, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (44, N'crew_uk_02', 4, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 32, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (45, N'crew_uk_03', 4, -1, 2000, 0, 9, 36, 17, 10, 43, 1, 1, 11, 34, 39, 2, 4, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (46, N'crew_uk_04', 4, -1, 2000, 0, 5, 32, 17, 2, 41, 1, 14, 9, 31, 32, 10, 12, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (47, N'crew_uk_05', 4, -1, 2000, 0, 14, 31, 18, 12, 42, 1, 9, 11, 36, 25, 2, 10, 43, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (48, N'crew_uk_06', 4, -1, 2000, 0, 9, 36, 17, 12, 43, 1, 1, 11, 32, 31, 6, 8, 41, 42, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (49, N'crew_uk_07', 4, -1, 8000, 0, 1, 39, 18, 6, 41, 1, 5, 11, 23, 32, 4, 8, 42, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (50, N'crew_uk_08', 4, -1, 8000, 0, 5, 25, 18, 2, 42, 1, 14, 1, 36, 29, 10, 4, 43, 40, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (51, N'crew_uk_09', 4, -1, 8000, 0, 7, 34, 18, 8, 43, 1, 11, 9, 25, 28, 2, 4, 40, 41, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (52, N'crew_uk_10', 4, -1, 8000, 0, 9, 29, 18, 4, 41, 1, 5, 14, 36, 31, 2, 8, 43, 44, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (53, N'crew_uk_11', 4, 3, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (54, N'crew_uk_12', 4, 15, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (55, N'crew_uk_13', 4, 13, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (56, N'crew_uk_14', 4, 16, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
SET IDENTITY_INSERT [dbo].[Crews] OFF
GO
