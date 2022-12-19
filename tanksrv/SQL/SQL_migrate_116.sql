USE [iron5]
GO
DELETE FROM [dbo].[Skills]
GO
DELETE FROM [dbo].[PowerUps]
GO
DELETE FROM [dbo].[MarketItems]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[Evolves]
GO
DELETE FROM [dbo].[Defines]
GO
DELETE FROM [dbo].[DefaultUnits]
GO
DELETE FROM [dbo].[Crews]
GO
DELETE FROM [dbo].[Battles]
GO
SET IDENTITY_INSERT [dbo].[Battles] ON 

GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (1, 1, 1000, 9999, 0, N'[{"type":7,"item":5,"num":1},{"type":7,"item":9,"num":3},{"type":1,"num":100}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (2, 2, 900, 999, 0, N'[{"type":7,"item":5,"num":1},{"type":7,"item":8,"num":7},{"type":1,"num":75}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (3, 3, 800, 899, 0, N'[{"type":7,"item":4,"num":1},{"type":7,"item":8,"num":6},{"type":1,"num":60}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (4, 4, 700, 799, 0, N'[{"type":7,"item":4,"num":1},{"type":7,"item":9,"num":2},{"type":1,"num":50}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (5, 5, 600, 699, 0, N'[{"type":7,"item":3,"num":2},{"type":7,"item":7,"num":9},{"type":1,"num":30}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (6, 6, 500, 599, 0, N'[{"type":7,"item":2,"num":2},{"type":7,"item":8,"num":4},{"type":1,"num":25}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (7, 7, 400, 499, 0, N'[{"type":7,"item":2,"num":2},{"type":7,"item":7,"num":7},{"type":1,"num":20}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (8, 8, 300, 399, 0, N'[{"type":7,"item":3,"num":1},{"type":7,"item":8,"num":3},{"type":1,"num":15}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (9, 9, 200, 299, 0, N'[{"type":7,"item":3,"num":1},{"type":7,"item":8,"num":3},{"type":1,"num":10}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (10, 10, 100, 199, 0, N'[{"type":7,"item":2,"num":1},{"type":7,"item":9,"num":1},{"type":1,"num":5}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (11, 11, 0, 99, 0, N'[{"type":7,"item":2,"num":1},{"type":7,"item":8,"num":2},{"type":1,"num":1}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (12, 12, 0, 0, 5, N'[{"type":7,"item":1,"num":2},{"type":7,"item":8,"num":2},{"type":1,"num":1}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (13, 13, 0, 0, 5, N'[{"type":7,"item":1,"num":2},{"type":7,"item":7,"num":3},{"type":1,"num":1}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (14, 14, 0, 0, 10, N'[{"type":7,"item":1,"num":2},{"type":7,"item":7,"num":3},{"type":1,"num":1}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (15, 15, 0, 0, 30, N'[{"type":7,"item":19,"num":4},{"type":7,"item":7,"num":3},{"type":1,"num":1}]')
GO
INSERT [dbo].[Battles] ([id], [league], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (16, 16, 0, 0, 50, N'[{"type":7,"item":19,"num":2},{"type":7,"item":7,"num":2}]')
GO
SET IDENTITY_INSERT [dbo].[Battles] OFF
GO
SET IDENTITY_INSERT [dbo].[Crews] ON 

GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (1, N'crew_su_01s', 1, -1, 2000, 0, 14, 31, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (2, N'crew_su_02', 1, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
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
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (16, N'crew_ge_02', 2, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
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
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (25, N'crew_ge_11', 2, 13, 0, 500, 1, 24, 19, 6, 40, 1, 5, 7, 23, 33, 4, 8, 45, 44, 16, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (26, N'crew_ge_12', 2, 16, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (27, N'crew_ge_13', 2, 15, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 16, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (28, N'crew_ge_14', 2, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (29, N'crew_us_01s', 3, -1, 2000, 0, 14, 32, 17, 10, 41, 1, 1, 11, 36, 28, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (30, N'crew_us_02', 3, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
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
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (40, N'crew_us_12', 3, 13, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 16, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (41, N'crew_us_13', 3, 16, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (42, N'crew_us_14', 3, 3, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 15)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (43, N'crew_uk_01s', 4, -1, 2000, 0, 14, 28, 17, 10, 41, 1, 1, 11, 36, 31, 12, 2, 42, 43, -1, -1)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (44, N'crew_uk_02', 4, -1, 2000, 0, 11, 28, 17, 8, 42, 1, 14, 1, 32, 31, 2, 10, 43, 41, -1, -1)
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
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (54, N'crew_uk_12', 4, 15, 0, 500, 5, 23, 18, 2, 44, 1, 1, 11, 39, 24, 10, 4, 40, 41, 13, 16)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (55, N'crew_uk_13', 4, 13, 0, 500, 7, 33, 21, 8, 45, 1, 5, 1, 39, 25, 2, 4, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (56, N'crew_uk_14', 4, 16, 0, 500, 11, 30, 21, 4, 40, 1, 1, 9, 29, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (57, N'crew_su_prem_01', 1, 16, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 23, 32, 2, 8, 43, 41, 13, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (58, N'crew_su_prem_02', 1, 3, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 33, 30, 2, 8, 43, 41, 16, 13)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (61, N'crew_su_prem_03', 3, 16, 0, 500, 7, 46, 21, 6, 45, 0, 5, 1, 39, 25, 4, 8, 44, 42, 15, 3)
GO
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (62, N'crew_uk_prem_04', 4, 16, 0, 500, 11, 27, 21, 4, 40, 0, 1, 9, 23, 32, 2, 8, 43, 41, 13, 3)
GO
SET IDENTITY_INSERT [dbo].[Crews] OFF
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] ON 

GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (200, N'JeepWillys', 3, 7, 200, 90, 4, 5, 5, 5, 5, 15, 53, 100, 2.7, 2, 9, 7, 8, 13, 16, 1, 14, 1000, 0, 1, 1, 0, 0, 1, 4, 7, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (201, N'BA64', 1, 7, 200, 90, 4, 3, 4, 5, 5, 12, 52, 100, 2.7, 2, 9, 7, 8, 13, 15, 1, 15, 1000, 0, 1, 1, 0, 0, 1, 4, 3, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (202, N'Sdkfz251', 2, 7, 400, 90, 4, 2, 3, 3, 5, 12, 50, 100, 2.5, 2, 9, 7, 8, 11, 15, 1, 20, 1000, 0, 1, 1, 0, 0, 1, 0, 0, 2, 200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (203, N'T2US', 3, 9, 250, 72, 4, 5, 5, 5, 5, 11, 58, 115, 2, 9, 15, 15, 15, 11, 21, 2, 20, 1600, 0, 1, 1, 3, 0, 1, 0, 0, 2, 240)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (204, N'T26', 1, 9, 250, 72, 4, 5, 5, 5, 5, 11, 60, 115, 2.1, 9, 16, 16, 16, 11, 21, 2, 20, 1600, 0, 1, 1, 3, 0, 1, 0, 0, 2, 240)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (205, N'BirchGun', 3, 10, 150, 32, 2, 6, 1, 7, 1, 9, 63, 115, 1.5, 12, 7, 5, 6, 10, 16, 5, 84, 2000, 0, 1, 1, 10, 0, 1, 0, 0, 2, 260)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (206, N'T26_1939', 1, 10, 250, 72, 4, 5, 4, 7, 5, 11, 70, 115, 2.1, 9, 16, 16, 16, 11, 21, 2, 20, 0, 500, 1, 1, 3, 2, 1, 0, 0, 2, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (207, N'T2E1', 3, 10, 250, 72, 4, 5, 4, 7, 5, 11, 67, 132, 2.1, 9, 18, 18, 16, 12, 21, 2, 20, 0, 500, 1, 1, 3, 2, 1, 0, 0, 2, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (208, N'Scoutcar', 3, 9, 52, 90, 4, 2, 4, 7, 5, 14, 68, 130, 3, 5, 13, 11, 12, 14, 16, 1, 14, 2500, 0, 1, 1, 0, 0, 2, 0, 0, 3, 300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (209, N'Sdkfz222', 2, 9, 180, 90, 4, 3, 4, 5, 5, 12, 65, 130, 2.7, 5, 12, 10, 11, 13, 15, 1, 20, 2500, 0, 1, 1, 0, 0, 2, 0, 0, 3, 300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (210, N'M2', 3, 11, 200, 72, 4, 5, 4, 9, 5, 10, 75, 150, 2.1, 12, 21, 21, 21, 11, 20, 2, 37, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (211, N'BT2', 1, 11, 90, 72, 4, 5, 5, 5, 5, 10, 78, 150, 2.1, 8, 21, 21, 21, 11, 20, 2, 37, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (212, N'PZ2', 2, 11, 140, 72, 4, 5, 4, 9, 5, 11, 75, 150, 2.1, 9, 21, 21, 21, 11, 21, 2, 20, 3500, 0, 1, 1, 3, 0, 2, 0, 0, 3, 360)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (213, N'M8Scott', 3, 14, 46, 36, 1, 5, 1, 7, 1, 10, 82, 150, 1.5, 16, 14, 10, 12, 19, 25, 5, 75, 4000, 0, 1, 1, 10, 0, 2, 0, 0, 3, 390)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (214, N'SU5', 1, 14, 40, 32, 2, 6, 1, 7, 1, 10, 82, 150, 1.5, 11, 14, 10, 12, 14, 23, 5, 76, 4000, 0, 1, 1, 10, 0, 2, 0, 0, 3, 390)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (215, N'SU5_1', 1, 14, 40, 32, 2, 6, 1, 6, 1, 10, 94, 172, 1.5, 11, 18, 12, 15, 14, 23, 5, 76, 0, 1000, 1, 1, 10, 2, 2, 0, 0, 3, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (216, N'BA3', 1, 14, 80, 90, 4, 3, 5, 8, 5, 12, 88, 169, 2.9, 2, 18, 14, 16, 13, 15, 1, 45, 4000, 0, 1, 1, 0, 0, 3, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (217, N'Sdkfz231', 2, 14, 180, 90, 4, 3, 5, 8, 5, 14, 85, 169, 2.9, 5, 18, 14, 16, 14, 16, 1, 20, 4000, 0, 1, 1, 0, 0, 3, 0, 0, 4, 600)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (218, N'M2A4', 3, 17, 90, 72, 4, 5, 4, 9, 5, 10, 98, 194, 2, 12, 35, 25, 25, 11, 20, 2, 37, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (219, N'BT5', 1, 17, 90, 72, 4, 5, 4, 9, 5, 11, 101, 194, 2, 8, 32, 24, 25, 11, 21, 2, 45, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (220, N'PZ2C', 2, 17, 140, 72, 4, 5, 4, 9, 5, 11, 98, 194, 2, 9, 24, 24, 25, 12, 21, 2, 20, 5500, 0, 1, 1, 3, 0, 3, 0, 0, 4, 720)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (221, N'PZ3', 2, 24, 125, 60, 2, 4, 5, 13, 5, 10, 127, 254, 1.5, 20, 40, 20, 35, 14, 20, 3, 37, 8500, 0, 1, 1, 6, 0, 3, 0, 0, 4, 900)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (222, N'SU26', 1, 20, 46, 36, 2, 5, 1, 9, 1, 10, 106, 194, 1.5, 16, 18, 12, 15, 19, 25, 5, 37, 6000, 0, 1, 1, 10, 0, 3, 0, 0, 4, 780)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (223, N'AlectoMk1', 3, 27, 45, 36, 1, 4, 1, 6, 1, 10, 154, 254, 1.8, 13, 39, 17, 28, 15, 23, 6, 57, 12500, 0, 1, 1, 8, 0, 3, 0, 0, 4, 1080)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (224, N'M3Lee', 3, 25, 178, 60, 2, 4, 1, 6, 1, 11, 149, 340, 1.5, 27, 46, 34, 35, 16, 22, 3, 37, 0, 1750, 1, 1, 6, 2, 3, 0, 0, 4, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (225, N'M8GHound', 3, 21, 80, 90, 4, 3, 5, 8, 5, 12, 114, 220, 2.9, 2, 22, 18, 20, 13, 15, 1, 37, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (226, N'BA6', 1, 21, 80, 90, 4, 3, 5, 8, 5, 13, 114, 220, 2.9, 2, 22, 18, 20, 13, 15, 1, 45, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (227, N'Sdkfz233', 2, 21, 180, 90, 4, 3, 5, 5, 5, 15, 110, 220, 2.9, 5, 22, 18, 20, 14, 16, 1, 20, 6500, 0, 1, 1, 0, 0, 4, 0, 0, 5, 1000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (228, N'M3Stuart', 3, 30, 60, 72, 4, 5, 5, 5, 5, 11, 127, 253, 2, 8, 35, 27, 30, 12, 21, 2, 45, 9000, 0, 1, 1, 3, 0, 4, 0, 0, 5, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (229, N'BT7', 1, 30, 60, 72, 4, 5, 5, 5, 5, 11, 132, 253, 2, 12, 32, 30, 30, 12, 21, 2, 45, 9000, 0, 1, 1, 3, 0, 4, 0, 0, 5, 1200)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (230, N'M3A1', 3, 36, 178, 60, 2, 4, 1, 8, 1, 11, 165, 340, 1.5, 27, 46, 34, 35, 16, 22, 3, 37, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (231, N'T28A', 1, 36, 80, 60, 2, 4, 1, 7, 1, 10, 165, 330, 1.5, 28, 44, 36, 40, 14, 20, 3, 76, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (232, N'PZ3D', 2, 36, 125, 60, 2, 4, 7, 7, 5, 10, 165, 330, 1.5, 20, 35, 35, 40, 15, 21, 3, 37, 13000, 0, 1, 1, 6, 0, 4, 0, 0, 5, 1500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (233, N'Sexton', 3, 32, 112, 36, 1, 8, 1, 9, 1, 9, 138, 253, 1.5, 11, 22, 14, 18, 19, 24, 5, 88, 10000, 0, 1, 1, 11, 0, 4, 0, 0, 5, 1300)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (234, N'AT1', 1, 41, 40, 40, 1, 4, 1, 7, 1, 10, 200, 330, 1.9, 6, 49, 21, 35, 15, 23, 6, 76, 18000, 0, 1, 1, 8, 0, 4, 0, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (235, N'PZjag', 2, 41, 86, 40, 1, 4, 1, 7, 1, 10, 200, 330, 1.9, 6, 49, 21, 35, 16, 25, 6, 47, 18000, 0, 1, 1, 8, 0, 4, 0, 0, 5, 1800)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (236, N'Matilda', 3, 36, 80, 60, 2, 4, 1, 8, 1, 11, 190, 379, 1.2, 28, 60, 46, 50, 16, 22, 3, 75, 0, 2500, 1, 1, 6, 2, 4, 0, 0, 5, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (237, N'M3GMC', 3, 30, 80, 90, 4, 3, 5, 5, 5, 13, 149, 286, 2.7, 2, 26, 22, 24, 13, 15, 1, 45, 10500, 0, 1, 1, 0, 0, 5, 0, 0, 6, 2500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (238, N'Puma1', 2, 30, 80, 90, 4, 3, 5, 5, 5, 12, 143, 286, 2.7, 5, 26, 22, 24, 13, 15, 1, 50, 10500, 0, 1, 1, 0, 0, 5, 0, 0, 6, 2500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (239, N'M5Stuart', 3, 36, 90, 72, 4, 5, 5, 8, 5, 11, 166, 328, 2, 12, 40, 30, 35, 12, 21, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (240, N'A20', 1, 36, 100, 72, 4, 5, 5, 8, 5, 10, 171, 328, 2, 8, 35, 35, 35, 10, 20, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (241, N'PZ38tA', 2, 36, 100, 72, 4, 5, 5, 8, 5, 10, 171, 328, 2, 8, 35, 35, 35, 10, 20, 2, 37, 14500, 0, 1, 1, 3, 0, 5, 0, 0, 6, 3000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (242, N'Matilda2', 3, 55, 80, 60, 2, 4, 1, 7, 1, 11, 214, 379, 1.2, 28, 60, 46, 50, 16, 22, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (243, N'A32', 1, 55, 80, 60, 2, 4, 1, 7, 1, 10, 214, 428, 1.2, 25, 45, 45, 45, 15, 21, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (244, N'PZ4', 2, 55, 80, 60, 2, 4, 1, 7, 1, 10, 214, 428, 1.2, 25, 45, 45, 45, 15, 21, 3, 75, 21500, 0, 1, 1, 6, 0, 5, 0, 0, 6, 3750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (245, N'Wespe', 2, 46, 40, 44, 1, 7, 1, 9, 1, 10, 180, 328, 1.3, 11, 29, 19, 24, 19, 28, 5, 105, 16000, 0, 1, 1, 12, 0, 5, 0, 0, 6, 3250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (246, N'T82', 3, 61, 40, 36, 1, 4, 1, 7, 1, 10, 260, 428, 1.3, 13, 59, 25, 42, 16, 25, 6, 57, 30000, 0, 1, 1, 8, 0, 5, 0, 0, 6, 4500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (247, N'SU76', 1, 61, 40, 24, 1, 4, 1, 7, 1, 10, 260, 428, 1.3, 13, 59, 25, 42, 17, 25, 6, 76, 30000, 0, 1, 1, 8, 0, 5, 0, 0, 6, 4500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (248, N'Marder1', 2, 61, 40, 36, 1, 4, 1, 8, 1, 10, 300, 500, 1.3, 13, 63, 27, 45, 16, 25, 6, 57, 0, 3500, 1, 1, 8, 2, 5, 0, 0, 6, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (249, N'Daimler', 3, 46, 180, 90, 4, 2, 4, 10, 5, 14, 193, 371, 2.7, 5, 31, 25, 28, 14, 16, 1, 40, 17000, 0, 1, 1, 0, 0, 6, 0, 0, 6, 5000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (250, N'Puma2', 2, 46, 80, 90, 4, 3, 4, 10, 5, 13, 186, 371, 2.7, 5, 31, 25, 28, 13, 15, 1, 50, 17000, 0, 1, 1, 0, 0, 6, 0, 0, 6, 5000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (251, N'Valentine2', 3, 80, 140, 72, 3, 5, 5, 8, 5, 11, 215, 427, 2, 12, 40, 40, 40, 11, 21, 2, 40, 23500, 0, 1, 1, 3, 0, 6, 0, 0, 6, 6000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (252, N'T50_1', 1, 80, 100, 72, 3, 5, 5, 8, 5, 10, 223, 427, 2, 14, 45, 45, 40, 10, 20, 2, 45, 23500, 0, 1, 1, 3, 0, 6, 0, 0, 6, 6000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (253, N'M7', 3, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (254, N'T34_1', 1, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (255, N'PZ4H', 2, 90, 80, 60, 2, 4, 1, 8, 1, 10, 278, 557, 1.2, 28, 60, 40, 50, 14, 20, 3, 76, 34500, 0, 1, 1, 6, 0, 6, 0, 0, 6, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (256, N'KV1S', 1, 135, 60, 48, 2, 4, 1, 9, 1, 10, 386, 743, 1, 30, 72, 48, 60, 14, 20, 4, 75, 75000, 0, 1, 1, 6, 0, 6, 0, 0, 6, 10500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (257, N'M7Priest', 3, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 13, 0, 6, 0, 0, 6, 6500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (258, N'Bison1', 2, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 13, 0, 6, 0, 0, 6, 6500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (259, N'Marder2', 2, 115, 40, 30, 1, 4, 1, 7, 1, 10, 338, 557, 1.3, 13, 69, 29, 49, 16, 25, 6, 75, 48500, 0, 1, 1, 8, 0, 6, 0, 0, 6, 9000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (260, N'KV1', 1, 140, 60, 48, 2, 4, 1, 9, 1, 10, 444, 854, 1, 30, 66, 54, 60, 14, 20, 4, 75, 0, 4500, 1, 1, 6, 2, 6, 0, 0, 6, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (261, N'CovMK1', 3, 75, 80, 90, 4, 2, 4, 10, 5, 14, 241, 464, 3, 5, 35, 29, 32, 14, 16, 1, 40, 27500, 0, 1, 1, 0, 0, 7, 0, 0, 7, 7500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (262, N'T50_2', 1, 90, 100, 72, 3, 5, 4, 16, 5, 10, 278, 534, 2, 14, 45, 45, 45, 10, 20, 2, 45, 38000, 0, 1, 1, 3, 0, 7, 0, 0, 7, 9000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (263, N'Cromwell', 3, 140, 80, 60, 2, 4, 1, 7, 1, 10, 350, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (264, N'T34_2', 1, 140, 80, 60, 2, 4, 1, 7, 1, 10, 350, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (265, N'PZ4J', 2, 140, 80, 60, 2, 4, 1, 7, 1, 10, 348, 696, 1.2, 28, 60, 40, 55, 15, 21, 3, 76, 56000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 11250)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (266, N'M6', 3, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (267, N'KV2', 1, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (268, N'DW2A', 2, 350, 60, 48, 2, 4, 1, 9, 1, 10, 483, 928, 1, 30, 77, 63, 70, 14, 20, 4, 75, 100000, 0, 1, 1, 6, 0, 7, 0, 0, 7, 15750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (269, N'Bishop_1', 3, 110, 30, 36, 1, 8, 2, 13, 1, 9, 292, 534, 1.3, 11, 43, 29, 36, 19, 24, 5, 150, 42000, 0, 1, 1, 14, 0, 7, 0, 0, 7, 9750)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (270, N'SU85_1', 1, 180, 40, 30, 1, 4, 1, 7, 1, 10, 422, 696, 1.3, 13, 78, 34, 56, 16, 25, 6, 85, 79000, 0, 1, 1, 8, 0, 7, 0, 0, 7, 13500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (271, N'Hetzer', 2, 180, 40, 30, 1, 4, 1, 7, 1, 10, 422, 696, 1.3, 13, 78, 34, 56, 16, 25, 6, 85, 79000, 0, 1, 1, 8, 0, 7, 0, 0, 7, 13500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (272, N'Tiger_P', 2, 350, 60, 48, 2, 4, 1, 9, 1, 10, 555, 1067, 1, 30, 77, 63, 70, 14, 20, 4, 75, 0, 5750, 1, 1, 6, 2, 7, 0, 0, 7, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (273, N'AEC', 3, 90, 80, 90, 4, 3, 5, 5, 5, 14, 300, 580, 2.7, 5, 40, 32, 36, 13, 15, 1, 50, 45000, 0, 1, 1, 0, 0, 8, 0, 0, 7, 10000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (274, N'M24_1', 3, 110, 140, 72, 3, 5, 5, 12, 5, 11, 350, 667, 2, 15, 60, 40, 50, 11, 21, 2, 75, 62000, 0, 1, 1, 3, 0, 8, 0, 0, 7, 12000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (275, N'Sherman1', 3, 160, 80, 60, 2, 4, 1, 7, 1, 11, 435, 870, 1.2, 28, 66, 54, 60, 15, 22, 3, 75, 90000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (276, N'VK3001H', 2, 160, 80, 60, 2, 4, 1, 7, 1, 11, 435, 870, 1.2, 28, 66, 54, 60, 15, 22, 3, 75, 90000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 15000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (277, N'Churchill', 3, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (278, N'Tiger1', 2, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (279, N'IS1', 1, 400, 60, 48, 2, 4, 1, 11, 1, 11, 600, 1160, 1.1, 53, 95, 65, 80, 15, 22, 4, 76, 185000, 0, 1, 1, 6, 0, 8, 0, 0, 7, 21000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (280, N'Hummel', 2, 135, 30, 36, 1, 8, 2, 13, 1, 9, 365, 667, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 68000, 0, 1, 1, 15, 0, 8, 0, 0, 7, 13000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (281, N'Archer_1', 3, 190, 45, 24, 1, 4, 1, 9, 1, 10, 528, 870, 1.3, 13, 88, 38, 63, 15, 23, 6, 76, 127000, 0, 1, 1, 8, 0, 8, 0, 0, 7, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (282, N'SU100', 1, 190, 45, 24, 1, 4, 1, 9, 1, 10, 528, 870, 1.3, 13, 88, 38, 63, 15, 23, 6, 76, 127000, 0, 1, 1, 8, 0, 8, 0, 0, 7, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (283, N'ISU152', 1, 200, 45, 24, 1, 4, 1, 9, 1, 10, 607, 1001, 1.3, 13, 95, 41, 68, 15, 23, 6, 76, 0, 7000, 1, 1, 8, 2, 8, 0, 0, 7, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (284, N'T21_1', 3, 125, 140, 72, 3, 5, 5, 12, 5, 11, 420, 800, 2, 15, 65, 45, 55, 11, 21, 2, 75, 99000, 0, 1, 1, 3, 0, 9, 0, 0, 8, 18000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (285, N'Pershing1', 3, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (286, N'Panther1', 2, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (287, N'T29', 3, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (288, N'Tiger2', 2, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (289, N'IS2', 1, 450, 60, 48, 2, 4, 1, 11, 1, 11, 724, 1392, 1.1, 53, 100, 80, 90, 15, 22, 4, 85, 280000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 31500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (290, N'Grille1', 2, 155, 30, 36, 1, 8, 2, 13, 1, 9, 440, 800, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 110000, 0, 1, 1, 15, 0, 9, 0, 0, 8, 19500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (291, N'M36_1', 3, 210, 45, 24, 1, 4, 1, 8, 1, 10, 634, 1044, 1.3, 13, 98, 42, 70, 15, 23, 6, 76, 205000, 0, 1, 1, 8, 0, 9, 0, 0, 8, 27000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (292, N'SU_152', 1, 210, 45, 24, 1, 4, 1, 8, 1, 10, 634, 1044, 1.3, 13, 98, 42, 70, 15, 23, 6, 76, 205000, 0, 1, 1, 8, 0, 9, 0, 0, 8, 27000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (293, N'Conqueror', 3, 455, 60, 48, 2, 4, 1, 11, 1, 11, 833, 1601, 1.1, 53, 100, 80, 95, 15, 22, 4, 85, 0, 8500, 1, 1, 6, 2, 9, 0, 0, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (294, N'M41_1', 3, 145, 100, 72, 3, 5, 5, 12, 5, 11, 500, 960, 2, 15, 70, 50, 60, 11, 21, 2, 75, 160000, 0, 1, 1, 3, 0, 10, 0, 0, 8, 24000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (295, N'Patton', 3, 200, 80, 60, 2, 4, 1, 8, 1, 11, 627, 1253, 1.4, 28, 75, 65, 70, 15, 22, 3, 90, 237000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 30000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (296, N'Conqueror2', 3, 485, 60, 48, 2, 4, 1, 10, 1, 11, 870, 1671, 1.1, 60, 135, 80, 100, 16, 22, 4, 125, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (297, N'Maus', 2, 485, 60, 48, 2, 4, 1, 14, 1, 11, 900, 1671, 0.7, 60, 180, 100, 120, 16, 22, 4, 128, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (298, N'IS3', 1, 485, 60, 48, 2, 4, 1, 10, 1, 11, 870, 1671, 1.1, 60, 140, 80, 95, 16, 22, 4, 125, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (299, N'SU14_1', 1, 175, 30, 36, 1, 8, 1, 12, 1, 9, 650, 1000, 1.2, 11, 100, 40, 70, 19, 26, 5, 150, 180000, 0, 1, 1, 15, 0, 10, 0, 0, 8, 26000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (300, N'Tortoise', 3, 240, 45, 24, 1, 4, 1, 8, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 120, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (301, N'Jagdtiger1', 2, 240, 45, 24, 1, 4, 1, 8, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 128, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (302, N'IS4', 1, 500, 60, 48, 2, 4, 1, 9, 1, 11, 999, 2000, 1.2, 60, 140, 90, 110, 16, 22, 4, 125, 0, 10000, 1, 1, 6, 2, 10, 0, 0, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (303, N'T30', 3, 500, 45, 24, 2, 4, 1, 8, 1, 10, 875, 1450, 1.2, 13, 112, 48, 80, 15, 23, 6, 155, 0, 10000, 1, 1, 8, 2, 10, 0, 100, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (304, N'Leopard', 2, 200, 80, 60, 2, 4, 5, 15, 5, 11, 720, 1450, 1.5, 28, 96, 64, 80, 15, 23, 3, 125, 0, 9000, 1, 1, 6, 2, 10, 0, 50, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (305, N'T44', 1, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (306, N'T54', 1, 200, 80, 60, 2, 4, 1, 8, 1, 11, 630, 1300, 1.4, 28, 75, 65, 70, 15, 22, 3, 100, 237000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 30000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (307, N'GWTiger', 2, 175, 30, 36, 1, 8, 1, 12, 1, 9, 650, 900, 1.2, 11, 100, 16, 80, 19, 26, 5, 170, 180000, 0, 1, 1, 15, 0, 10, 10, 20, 8, 26000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (308, N'Panther2', 2, 200, 80, 60, 2, 4, 1, 8, 1, 11, 640, 1300, 1.4, 28, 75, 65, 70, 15, 22, 3, 100, 237000, 0, 1, 1, 6, 0, 10, 0, 25, 8, 30000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (309, N'IT1', 1, 240, 30, 60, 2, 4, 1, 9, 1, 10, 750, 1300, 1.4, 13, 75, 65, 65, 17, 26, 6, 128, 350000, 0, 1, 1, 10, 0, 10, 0, 0, 8, 36000)
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] OFF
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaAttackBonusPrice', N'30')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaBonusDuration', N'259200000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaDefenceBonusPrice', N'5000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'AutoGameRating', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleAttemptsCost', N'20')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingsLimit', N'0,1,1,10,10,10,10,10,10,10,2,1,1,1000,1000,0,0,0,0,0,1,1,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CampaignGraphData', N'new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, new[]{0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0}')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ChangeNamePrice', N'499')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ChatServerUrl', N'"91.237.98.115"')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanDonateGoldPacks', N'50,100,300,500,1000,5000,10000,20000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanDonateGoldPacksMult', N'1.4,1.4,1.5,1.5,1.5,1.6,1.6,1.7')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanMaxPlaceLimit', N'40')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanTournamentReward', N'"[{''Value1'':1,''Value2'':1,''Value3'':[{''type'':0,''num'':3500},{''type'':5,''num'':700},{''type'':1,''num'':175}]},{''Value1'':2,''Value2'':2,''Value3'':[{''type'':0,''num'':3000},{''type'':5,''num'':600},{''type'':1,''num'':150}]},{''Value1'':3,''Value2'':3,''Value3'':[{''type'':0,''num'':2000},{''type'':5,''num'':400},{''type'':1,''num'':100}]},{''Value1'':4,''Value2'':5,''Value3'':[{''type'':0,''num'':1000},{''type'':5,''num'':200},{''type'':1,''num'':50}]},{''Value1'':6,''Value2'':10,''Value3'':[{''type'':0,''num'':500},{''type'':5,''num'':100},{''type'':1,''num'':25}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanTournamentRewardMinPoints', N'500')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ComponentsCost', N'3,30,100')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DailyRewards', N'600,600,601,602,603,604,605,606,607,608,609,609')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DailyRewardTimeMs', N'14400000,14400000,14400000,14400000,14400000,14400000,14400000,14400000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DifficultyMult', N'0,0.2,0.4,0.6,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DMRewards', N'"[[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':10,''item'':92},{''type'':1,''num'':300}],[{''type'':7,''num'':10,''item'':81},{''type'':7,''num'':5,''item'':92},{''type'':1,''num'':200}],[{''type'':7,''num'':5,''item'':81},{''type'':7,''num'':10,''item'':91},{''type'':1,''num'':100}]]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventBuildingRepM', N'1,1.05,1.10,1.16,1.23,1.31,1.4,1.5,1.62,1.85,2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventFuelPrice', N'60')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusMaxLimit', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusPriceGold', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapBonusRepairAll', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapCompleteFightBonusReputation', N'40,70,90')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapDestroyTargetBonusReputation', N'500')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapOpencCellBonusReputation', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapResetAfterDays', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMapResourceRewards', N'650,650,651,652,653,654,655,656,657,658,659')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMissionDifficultyMult', N'0.62,0.8,0.9')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventRewards', N'"[{''points'':2,''rewards'':[{''type'':7,''num'':1,''item'':19}]},{''points'':50,''rewards'':[{''type'':7,''num'':3,''item'':19}]},{''points'':100,''rewards'':[{''type'':7,''num'':10,''item'':79}]},{''points'':200,''rewards'':[{''type'':7,''num'':20,''item'':22},{''type'':7,''num'':20,''item'':23},{''type'':7,''num'':20,''item'':24}]},{''points'':300,''rewards'':[{''type'':7,''num'':15,''item'':21},{''type'':7,''num'':5,''item'':80}]},{''points'':600,''rewards'':[{''type'':7,''num'':1,''item'':3},{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':700}]},{''points'':800,''rewards'':[{''type'':7,''num'':15,''item'':25},{''type'':7,''num'':15,''item'':26},{''type'':7,''num'':15,''item'':27}]},{''points'':1000,''rewards'':[{''type'':7,''num'':1,''item'':81},{''type'':7,''num'':3,''item'':28},{''type'':1,''num'':100}]},{''points'':1250,''rewards'':[{''type'':7,''num'':1,''item'':309},{''type'':7,''num'':10,''item'':80}]},{''points'':1500,''rewards'':[{''type'':7,''num'':25,''item'':25},{''type'':7,''num'':25,''item'':26},{''type'':7,''num'':25,''item'':27}]},{''points'':2000,''rewards'':[{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':702}]},{''points'':2500,''rewards'':[{''type'':7,''num'':50,''item'':79},{''type'':7,''num'':10,''item'':80}]},{''points'':3000,''rewards'':[{''type'':7,''num'':1,''item'':4},{''type'':7,''num'':3,''item'':306}]},{''points'':4000,''rewards'':[{''type'':7,''num'':1,''item'':704}]},{''points'':5000,''rewards'':[{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':5,''item'':28},{''type'':1,''num'':150}]},{''points'':7000,''rewards'':[{''type'':7,''num'':1,''item'':5},{''type'':7,''num'':1,''item'':10}]},{''points'':8500,''rewards'':[{''type'':7,''num'':3,''item'':318},{''type'':7,''num'':2,''item'':704}]},{''points'':10000,''rewards'':[{''type'':7,''num'':4,''item'':81},{''type'':7,''num'':8,''item'':28},{''type'':1,''num'':250}]},{''points'':12000,''rewards'':[{''type'':7,''num'':1,''item'':706}]},{''points'':13500,''rewards'':[{''type'':7,''num'':1,''item'':707}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,282,685,844,1150,582,433,-2715,-11354,-12582')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GMCourse', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GoldPerAd', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GRCourse', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'HealWoundPrices', N'0.03,0.03,0.05,0.07')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitFriendExperience', N'1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitGold', N'200')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitMoney', N'500')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitParts', N'290')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitSlots', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitTank', N'203')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankCost', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankItemId', N'41')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionPool', N'false')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionsPerDay', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'PVPDailyCount', N'15')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RefreshMarketPrice', N'12')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ScanRadarCost', N'10')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellTankPrice', N'0.5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1548')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TechTreeLinks', N'"[{''s'':201,''d'':216},{''s'':216,''d'':226},{''s'':204,''d'':211},{''s'':211,''d'':219},{''s'':219,''d'':229},{''s'':229,''d'':231},{''s'':229,''d'':240},{''s'':240,''d'':252},{''s'':252,''d'':262},{''s'':231,''d'':243},{''s'':243,''d'':254},{''s'':254,''d'':264},{''s'':254,''d'':256},{''s'':256,''d'':267},{''s'':267,''d'':279},{''s'':279,''d'':289},{''s'':289,''d'':298},{''s'':214,''d'':222},{''s'':222,''d'':234},{''s'':234,''d'':247},{''s'':247,''d'':270},{''s'':270,''d'':282},{''s'':282,''d'':292},{''s'':292,''d'':299},{''s'':209,''d'':217},{''s'':217,''d'':227},{''s'':227,''d'':238},{''s'':238,''d'':250},{''s'':238,''d'':241},{''s'':212,''d'':220},{''s'':220,''d'':241},{''s'':220,''d'':221},{''s'':221,''d'':232},{''s'':232,''d'':244},{''s'':244,''d'':255},{''s'':255,''d'':265},{''s'':265,''d'':276},{''s'':276,''d'':286},{''s'':265,''d'':268},{''s'':268,''d'':278},{''s'':278,''d'':288},{''s'':288,''d'':297},{''s'':235,''d'':245},{''s'':245,''d'':258},{''s'':245,''d'':259},{''s'':259,''d'':271},{''s'':271,''d'':280},{''s'':280,''d'':290},{''s'':290,''d'':301},{''s'':200,''d'':208},{''s'':208,''d'':225},{''s'':225,''d'':237},{''s'':237,''d'':249},{''s'':249,''d'':261},{''s'':261,''d'':273},{''s'':203,''d'':210},{''s'':210,''d'':218},{''s'':218,''d'':228},{''s'':228,''d'':239},{''s'':239,''d'':251},{''s'':251,''d'':274},{''s'':274,''d'':284},{''s'':284,''d'':294},{''s'':228,''d'':230},{''s'':230,''d'':242},{''s'':242,''d'':253},{''s'':253,''d'':263},{''s'':263,''d'':275},{''s'':275,''d'':285},{''s'':285,''d'':295},{''s'':263,''d'':266},{''s'':266,''d'':277},{''s'':277,''d'':287},{''s'':287,''d'':296},{''s'':205,''d'':213},{''s'':213,''d'':223},{''s'':223,''d'':233},{''s'':233,''d'':246},{''s'':246,''d'':257},{''s'':257,''d'':269},{''s'':269,''d'':281},{''s'':281,''d'':291},{''s'':291,''d'':300},{''s'':273,''d'':274},{''s'':226,''d'':229},{''s'':202,''d'':209},{''s'':264,''d'':305},{''s'':305,''d'':306},{''s'':290,''d'':307},{''s'':286,''d'':308},{''s'':292,''d'':309}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewardHints', N'"[{''name'':''camp_missions'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':3,''type'':4},{''lvl'':1,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''campaign'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':4,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''event'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':2,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''pvp'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''easy_radar'',''rewards'':[{''lvl'':1,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''normal_radar'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''hard_radar'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':2,''type'':5},{''lvl'':4,''type'':4},{''lvl'':4,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''quests'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''arena'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''top'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''top_up'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]},{''name'':''market'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''level_up'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewards', N'"[{''points'':25,''rewards'':[{''type'':0,''num'':500}]},{''points'':50,''rewards'':[{''type'':5,''num'':222}]},{''points'':75,''rewards'':[{''type'':7,''num'':1,''item'':28},{''type'':7,''num'':1,''item'':81}]},{''points'':120,''rewards'':[{''type'':1,''num'':50},{''type'':5,''num'':150}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TWLinkGold', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireBattles', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireMaxTanks', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHirePriceG', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHirePriceMPercent', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireTimeH', N'24')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitSharingCancelTimeH', N'1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitSharingTimeH', N'24')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeDropPrice', N'30')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeMultiplier', N'1,1.1,1.2,1.3,1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpperMult', N'1.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserFriendReward', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserTierLevels', N'0,10,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'VIPMatrix', N'new int[] {1,0,100,550,2000,20,20,0,8,0}, new int[] {2,2000,100,550,2000,25,25,10,10,1}, new int[] {3,4000,100,550,2000,30,30,20,12,1}, new int[] {4,8000,100,550,2000,40,40,30,14,1}, new int[] {5,16000,100,550,2000,50,50,1000,16,2}')
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
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (908, 125, N'[{"type":0,"num":610000},{"type":7,"item":21,"num":10560},{"type":7,"item":22,"num":10250},{"type":7,"item":23,"num":10250},{"type":7,"item":26,"num":1250},{"type":7,"item":28,"num":122}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (909, 126, N'[{"type":0,"num":910000},{"type":7,"item":21,"num":19000},{"type":7,"item":22,"num":18450},{"type":7,"item":23,"num":18450},{"type":7,"item":26,"num":2235},{"type":7,"item":28,"num":220}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (910, 118, N'[{"type":0,"num":610000},{"type":7,"item":21,"num":14500},{"type":7,"item":23,"num":7250},{"type":7,"item":24,"num":14500},{"type":7,"item":27,"num":1462},{"type":7,"item":28,"num":142}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (911, 119, N'[{"type":0,"num":910000},{"type":7,"item":21,"num":26100},{"type":7,"item":23,"num":13050},{"type":7,"item":24,"num":26100},{"type":7,"item":27,"num":2614},{"type":7,"item":28,"num":255}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (912, 108, N'[{"type":0,"num":610000},{"type":7,"item":21,"num":16920},{"type":7,"item":22,"num":16200},{"type":7,"item":23,"num":16200},{"type":7,"item":25,"num":1620},{"type":7,"item":28,"num":135}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (913, 117, N'[{"type":0,"num":910000},{"type":7,"item":21,"num":30456},{"type":7,"item":22,"num":29160},{"type":7,"item":23,"num":29160},{"type":7,"item":25,"num":2916},{"type":7,"item":28,"num":245}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (914, 120, N'[{"type":0,"num":610000},{"type":7,"item":21,"num":22650},{"type":7,"item":23,"num":13595},{"type":7,"item":24,"num":9063},{"type":7,"item":27,"num":1823},{"type":7,"item":28,"num":180}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (915, 121, N'[{"type":0,"num":910000},{"type":7,"item":21,"num":40770},{"type":7,"item":23,"num":24471},{"type":7,"item":24,"num":16310},{"type":7,"item":27,"num":3281},{"type":7,"item":28,"num":324}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (916, 122, N'[{"type":0,"num":610000},{"type":7,"item":21,"num":18486},{"type":7,"item":22,"num":17946},{"type":7,"item":23,"num":17946},{"type":7,"item":26,"num":2178},{"type":7,"item":28,"num":218}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (917, 123, N'[{"type":0,"num":910000},{"type":7,"item":21,"num":33275},{"type":7,"item":22,"num":32303},{"type":7,"item":23,"num":32310},{"type":7,"item":26,"num":3920},{"type":7,"item":28,"num":392}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (918, 124, N'[{"type":0,"num":615000},{"type":7,"item":21,"num":18500},{"type":7,"item":22,"num":17950},{"type":7,"item":23,"num":17950},{"type":7,"item":26,"num":2180},{"type":7,"item":28,"num":215}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (919, 208, N'[{"type":6,"num":10},{"type":0,"num":600},{"type":7, "item":21, "num":20},{"type":7, "item":22, "num":20},{"type":7, "item":23, "num":20}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (920, 209, N'[{"type":6,"num":10},{"type":0,"num":600},{"type":7, "item":21, "num":20},{"type":7, "item":22, "num":20},{"type":7, "item":23, "num":20}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (921, 210, N'[{"type":6,"num":12},{"type":0,"num":900},{"type":7, "item":21, "num":24},{"type":7, "item":22, "num":24},{"type":7, "item":23, "num":24}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (922, 211, N'[{"type":6,"num":12},{"type":0,"num":900},{"type":7, "item":21, "num":24},{"type":7, "item":22, "num":24},{"type":7, "item":23, "num":24}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (923, 212, N'[{"type":6,"num":12},{"type":0,"num":900},{"type":7, "item":21, "num":24},{"type":7, "item":22, "num":24},{"type":7, "item":23, "num":24}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (924, 213, N'[{"type":6,"num":15},{"type":0,"num":960},{"type":7, "item":21, "num":26},{"type":7, "item":22, "num":26},{"type":7, "item":23, "num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (926, 214, N'[{"type":6,"num":15},{"type":0,"num":960},{"type":7, "item":21, "num":26},{"type":7, "item":22, "num":26},{"type":7, "item":23, "num":26}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (927, 216, N'[{"type":6,"num":25},{"type":0,"num":1800},{"type":7, "item":25, "num":10},{"type":7, "item":26, "num":10},{"type":7, "item":27, "num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (928, 217, N'[{"type":6,"num":25},{"type":0,"num":1800},{"type":7, "item":25, "num":10},{"type":7, "item":26, "num":10},{"type":7, "item":27, "num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (929, 218, N'[{"type":6,"num":30},{"type":0,"num":2700},{"type":7, "item":25, "num":12},{"type":7, "item":26, "num":12},{"type":7, "item":27, "num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (932, 219, N'[{"type":6,"num":30},{"type":0,"num":2700},{"type":7, "item":25, "num":12},{"type":7, "item":26, "num":12},{"type":7, "item":27, "num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (933, 220, N'[{"type":6,"num":30},{"type":0,"num":2700},{"type":7, "item":25, "num":12},{"type":7, "item":26, "num":12},{"type":7, "item":27, "num":12}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (934, 221, N'[{"type":6,"num":45},{"type":0,"num":3240},{"type":7, "item":25, "num":15},{"type":7, "item":26, "num":15},{"type":7, "item":27, "num":15}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (935, 222, N'[{"type":6,"num":38},{"type":0,"num":2880},{"type":7, "item":25, "num":13},{"type":7, "item":26, "num":13},{"type":7, "item":27, "num":13}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (936, 223, N'[{"type":6,"num":50},{"type":0,"num":3420},{"type":7, "item":25, "num":16},{"type":7, "item":26, "num":16},{"type":7, "item":27, "num":16},{"type":7, "item":28, "num":2}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (937, 225, N'[{"type":6,"num":60},{"type":0,"num":4200},{"type":7, "item":25, "num":25},{"type":7, "item":26, "num":25},{"type":7, "item":27, "num":25}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (938, 226, N'[{"type":6,"num":60},{"type":0,"num":4200},{"type":7, "item":25, "num":25},{"type":7, "item":26, "num":25},{"type":7, "item":27, "num":25}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (939, 227, N'[{"type":6,"num":60},{"type":0,"num":4200},{"type":7, "item":25, "num":25},{"type":7, "item":26, "num":25},{"type":7, "item":27, "num":25}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (940, 228, N'[{"type":6,"num":70},{"type":0,"num":6300},{"type":7, "item":25, "num":30},{"type":7, "item":26, "num":30},{"type":7, "item":27, "num":30}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (941, 229, N'[{"type":6,"num":70},{"type":0,"num":6300},{"type":7, "item":25, "num":30},{"type":7, "item":26, "num":30},{"type":7, "item":27, "num":30}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (942, 230, N'[{"type":6,"num":90},{"type":0,"num":7560},{"type":7, "item":25, "num":38},{"type":7, "item":26, "num":38},{"type":7, "item":27, "num":38}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (943, 231, N'[{"type":6,"num":90},{"type":0,"num":7560},{"type":7, "item":25, "num":38},{"type":7, "item":26, "num":38},{"type":7, "item":27, "num":38}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (944, 232, N'[{"type":6,"num":90},{"type":0,"num":7560},{"type":7, "item":25, "num":38},{"type":7, "item":26, "num":38},{"type":7, "item":27, "num":38}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (945, 233, N'[{"type":6,"num":80},{"type":0,"num":6720},{"type":7, "item":25, "num":33},{"type":7, "item":26, "num":33},{"type":7, "item":27, "num":33}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (946, 234, N'[{"type":6,"num":120},{"type":0,"num":7980},{"type":7, "item":25, "num":40},{"type":7, "item":26, "num":40},{"type":7, "item":27, "num":40},{"type":7, "item":28, "num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (947, 235, N'[{"type":6,"num":120},{"type":0,"num":7980},{"type":7, "item":25, "num":40},{"type":7, "item":26, "num":40},{"type":7, "item":27, "num":40},{"type":7, "item":28, "num":6}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (948, 237, N'[{"type":6,"num":120},{"type":0,"num":6000},{"type":7, "item":25, "num":50},{"type":7, "item":26, "num":50},{"type":7, "item":27, "num":50}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (949, 238, N'[{"type":6,"num":120},{"type":0,"num":6000},{"type":7, "item":25, "num":50},{"type":7, "item":26, "num":50},{"type":7, "item":27, "num":50}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (950, 239, N'[{"type":6,"num":140},{"type":0,"num":9000},{"type":7, "item":25, "num":60},{"type":7, "item":26, "num":60},{"type":7, "item":27, "num":60}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (951, 240, N'[{"type":6,"num":140},{"type":0,"num":9000},{"type":7, "item":25, "num":60},{"type":7, "item":26, "num":60},{"type":7, "item":27, "num":60}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (952, 241, N'[{"type":6,"num":140},{"type":0,"num":9000},{"type":7, "item":25, "num":60},{"type":7, "item":26, "num":60},{"type":7, "item":27, "num":60}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (953, 242, N'[{"type":6,"num":200},{"type":0,"num":10800},{"type":7, "item":25, "num":75},{"type":7, "item":26, "num":75},{"type":7, "item":27, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (954, 243, N'[{"type":6,"num":200},{"type":0,"num":10800},{"type":7, "item":25, "num":75},{"type":7, "item":26, "num":75},{"type":7, "item":27, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (955, 244, N'[{"type":6,"num":200},{"type":0,"num":10800},{"type":7, "item":25, "num":75},{"type":7, "item":26, "num":75},{"type":7, "item":27, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (956, 245, N'[{"type":6,"num":160},{"type":0,"num":9600},{"type":7, "item":25, "num":65},{"type":7, "item":26, "num":65},{"type":7, "item":27, "num":65}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (957, 246, N'[{"type":6,"num":240},{"type":0,"num":11500},{"type":7, "item":25, "num":80},{"type":7, "item":26, "num":80},{"type":7, "item":27, "num":80},{"type":7, "item":28, "num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (958, 247, N'[{"type":6,"num":240},{"type":0,"num":11500},{"type":7, "item":25, "num":80},{"type":7, "item":26, "num":80},{"type":7, "item":27, "num":80},{"type":7, "item":28, "num":10}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (959, 249, N'[{"type":6,"num":240},{"type":0,"num":10200},{"type":7, "item":25, "num":80},{"type":7, "item":26, "num":80},{"type":7, "item":27, "num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (960, 250, N'[{"type":6,"num":240},{"type":0,"num":10200},{"type":7, "item":25, "num":80},{"type":7, "item":26, "num":80},{"type":7, "item":27, "num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (961, 251, N'[{"type":6,"num":280},{"type":0,"num":15300},{"type":7, "item":25, "num":96},{"type":7, "item":26, "num":96},{"type":7, "item":27, "num":96}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (962, 252, N'[{"type":6,"num":280},{"type":0,"num":15300},{"type":7, "item":25, "num":96},{"type":7, "item":26, "num":96},{"type":7, "item":27, "num":96}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (963, 253, N'[{"type":6,"num":360},{"type":0,"num":18350},{"type":7, "item":25, "num":120},{"type":7, "item":26, "num":120},{"type":7, "item":27, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (964, 254, N'[{"type":6,"num":360},{"type":0,"num":18350},{"type":7, "item":25, "num":120},{"type":7, "item":26, "num":120},{"type":7, "item":27, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (965, 255, N'[{"type":6,"num":360},{"type":0,"num":18350},{"type":7, "item":25, "num":120},{"type":7, "item":26, "num":120},{"type":7, "item":27, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (966, 256, N'[{"type":6,"num":480},{"type":0,"num":20500},{"type":7, "item":25, "num":136},{"type":7, "item":26, "num":136},{"type":7, "item":27, "num":136},{"type":7, "item":28, "num":30}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (967, 257, N'[{"type":6,"num":320},{"type":0,"num":16320},{"type":7, "item":25, "num":104},{"type":7, "item":26, "num":104},{"type":7, "item":27, "num":104}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (968, 258, N'[{"type":6,"num":320},{"type":0,"num":16320},{"type":7, "item":25, "num":104},{"type":7, "item":26, "num":104},{"type":7, "item":27, "num":104}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (969, 259, N'[{"type":6,"num":420},{"type":0,"num":19380},{"type":7, "item":25, "num":128},{"type":7, "item":26, "num":128},{"type":7, "item":27, "num":128},{"type":7, "item":28, "num":20}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (970, 261, N'[{"type":6,"num":600},{"type":0,"num":12000},{"type":7, "item":25, "num":120},{"type":7, "item":26, "num":120},{"type":7, "item":27, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (971, 262, N'[{"type":6,"num":720},{"type":0,"num":18000},{"type":7, "item":25, "num":144},{"type":7, "item":26, "num":144},{"type":7, "item":27, "num":144}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (972, 263, N'[{"type":6,"num":1080},{"type":0,"num":21600},{"type":7, "item":25, "num":180},{"type":7, "item":26, "num":180},{"type":7, "item":27, "num":180}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (973, 264, N'[{"type":6,"num":1080},{"type":0,"num":21600},{"type":7, "item":25, "num":180},{"type":7, "item":26, "num":180},{"type":7, "item":27, "num":180}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (974, 265, N'[{"type":6,"num":1080},{"type":0,"num":21600},{"type":7, "item":25, "num":180},{"type":7, "item":26, "num":180},{"type":7, "item":27, "num":180}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (975, 266, N'[{"type":6,"num":1440},{"type":0,"num":24000},{"type":7, "item":25, "num":204},{"type":7, "item":26, "num":204},{"type":7, "item":27, "num":204},{"type":7, "item":28, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (976, 267, N'[{"type":6,"num":1440},{"type":0,"num":24000},{"type":7, "item":25, "num":204},{"type":7, "item":26, "num":204},{"type":7, "item":27, "num":204},{"type":7, "item":28, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (977, 268, N'[{"type":6,"num":1440},{"type":0,"num":24000},{"type":7, "item":25, "num":204},{"type":7, "item":26, "num":204},{"type":7, "item":27, "num":204},{"type":7, "item":28, "num":75}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (978, 269, N'[{"type":6,"num":840},{"type":0,"num":19200},{"type":7, "item":25, "num":156},{"type":7, "item":26, "num":156},{"type":7, "item":27, "num":156}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (979, 270, N'[{"type":6,"num":1260},{"type":0,"num":22800},{"type":7, "item":25, "num":192},{"type":7, "item":26, "num":192},{"type":7, "item":27, "num":192},{"type":7, "item":28, "num":50}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (980, 271, N'[{"type":6,"num":1260},{"type":0,"num":22800},{"type":7, "item":25, "num":192},{"type":7, "item":26, "num":192},{"type":7, "item":27, "num":192},{"type":7, "item":28, "num":50}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (981, 273, N'[{"type":6,"num":960},{"type":0,"num":14400},{"type":7, "item":25, "num":200},{"type":7, "item":26, "num":200},{"type":7, "item":27, "num":200}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (982, 274, N'[{"type":6,"num":1080},{"type":0,"num":21600},{"type":7, "item":25, "num":240},{"type":7, "item":26, "num":240},{"type":7, "item":27, "num":240}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (983, 275, N'[{"type":6,"num":1200},{"type":0,"num":25920},{"type":7, "item":25, "num":300},{"type":7, "item":26, "num":300},{"type":7, "item":27, "num":300}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (984, 276, N'[{"type":6,"num":1200},{"type":0,"num":25920},{"type":7, "item":25, "num":300},{"type":7, "item":26, "num":300},{"type":7, "item":27, "num":300}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (985, 277, N'[{"type":6,"num":1560},{"type":0,"num":28800},{"type":7, "item":25, "num":340},{"type":7, "item":26, "num":340},{"type":7, "item":27, "num":340},{"type":7, "item":28, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (986, 278, N'[{"type":6,"num":1560},{"type":0,"num":28800},{"type":7, "item":25, "num":340},{"type":7, "item":26, "num":340},{"type":7, "item":27, "num":340},{"type":7, "item":28, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (987, 279, N'[{"type":6,"num":1560},{"type":0,"num":28800},{"type":7, "item":25, "num":340},{"type":7, "item":26, "num":340},{"type":7, "item":27, "num":340},{"type":7, "item":28, "num":120}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (988, 280, N'[{"type":6,"num":1200},{"type":0,"num":23040},{"type":7, "item":25, "num":260},{"type":7, "item":26, "num":260},{"type":7, "item":27, "num":260}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (989, 281, N'[{"type":6,"num":1440},{"type":0,"num":27360},{"type":7, "item":25, "num":320},{"type":7, "item":26, "num":320},{"type":7, "item":27, "num":320},{"type":7, "item":28, "num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (990, 282, N'[{"type":6,"num":1440},{"type":0,"num":27360},{"type":7, "item":25, "num":320},{"type":7, "item":26, "num":320},{"type":7, "item":27, "num":320},{"type":7, "item":28, "num":80}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (991, 284, N'[{"type":6,"num":1200},{"type":0,"num":27000},{"type":7, "item":25, "num":380},{"type":7, "item":26, "num":380},{"type":7, "item":27, "num":380}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (992, 285, N'[{"type":6,"num":1440},{"type":0,"num":32400},{"type":7, "item":25, "num":480},{"type":7, "item":26, "num":480},{"type":7, "item":27, "num":480}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (993, 286, N'[{"type":6,"num":1440},{"type":0,"num":32400},{"type":7, "item":25, "num":480},{"type":7, "item":26, "num":480},{"type":7, "item":27, "num":480}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (994, 287, N'[{"type":6,"num":1680},{"type":0,"num":36000},{"type":7, "item":25, "num":545},{"type":7, "item":26, "num":545},{"type":7, "item":27, "num":545},{"type":7, "item":28, "num":185}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (995, 288, N'[{"type":6,"num":1680},{"type":0,"num":36000},{"type":7, "item":25, "num":545},{"type":7, "item":26, "num":545},{"type":7, "item":27, "num":545},{"type":7, "item":28, "num":185}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (996, 289, N'[{"type":6,"num":1680},{"type":0,"num":36000},{"type":7, "item":25, "num":545},{"type":7, "item":26, "num":545},{"type":7, "item":27, "num":545},{"type":7, "item":28, "num":185}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (997, 290, N'[{"type":6,"num":1320},{"type":0,"num":28800},{"type":7, "item":25, "num":415},{"type":7, "item":26, "num":415},{"type":7, "item":27, "num":415}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (998, 291, N'[{"type":6,"num":1560},{"type":0,"num":34200},{"type":7, "item":25, "num":512},{"type":7, "item":26, "num":512},{"type":7, "item":27, "num":512},{"type":7, "item":28, "num":125}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (999, 292, N'[{"type":6,"num":1560},{"type":0,"num":34200},{"type":7, "item":25, "num":512},{"type":7, "item":26, "num":512},{"type":7, "item":27, "num":512},{"type":7, "item":28, "num":125}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1000, 294, N'[{"type":6,"num":1320},{"type":0,"num":36000},{"type":7, "item":25, "num":620},{"type":7, "item":26, "num":620},{"type":7, "item":27, "num":620}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1001, 295, N'[{"type":6,"num":1560},{"type":0,"num":43200},{"type":7, "item":25, "num":780},{"type":7, "item":26, "num":780},{"type":7, "item":27, "num":780}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1002, 296, N'[{"type":6,"num":1920},{"type":0,"num":48000},{"type":7, "item":25, "num":885},{"type":7, "item":26, "num":885},{"type":7, "item":27, "num":885},{"type":7, "item":28, "num":375}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1003, 297, N'[{"type":6,"num":1920},{"type":0,"num":48000},{"type":7, "item":25, "num":885},{"type":7, "item":26, "num":885},{"type":7, "item":27, "num":885},{"type":7, "item":28, "num":375}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1004, 298, N'[{"type":6,"num":1920},{"type":0,"num":48000},{"type":7, "item":25, "num":885},{"type":7, "item":26, "num":885},{"type":7, "item":27, "num":885},{"type":7, "item":28, "num":375}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1005, 299, N'[{"type":6,"num":1440},{"type":0,"num":38400},{"type":7, "item":25, "num":675},{"type":7, "item":26, "num":675},{"type":7, "item":27, "num":675}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1006, 300, N'[{"type":6,"num":1680},{"type":0,"num":45600},{"type":7, "item":25, "num":830},{"type":7, "item":26, "num":830},{"type":7, "item":27, "num":830},{"type":7, "item":28, "num":250}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1007, 301, N'[{"type":6,"num":1680},{"type":0,"num":45600},{"type":7, "item":25, "num":830},{"type":7, "item":26, "num":830},{"type":7, "item":27, "num":830},{"type":7, "item":28, "num":250}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1008, 305, N'[{"type":6,"num":1440},{"type":0,"num":32400},{"type":7, "item":25, "num":480},{"type":7, "item":26, "num":480},{"type":7, "item":27, "num":480}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1009, 306, N'[{"type":6,"num":1560},{"type":0,"num":43200},{"type":7, "item":25, "num":780},{"type":7, "item":26, "num":780},{"type":7, "item":27, "num":780}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (1010, 307, N'[{"type":6,"num":1440},{"type":0,"num":38400},{"type":7, "item":25, "num":675},{"type":7, "item":26, "num":675},{"type":7, "item":27, "num":675}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (2009, 308, N'[{"type":6,"num":1560},{"type":0,"num":43200},{"type":7, "item":25, "num":780},{"type":7, "item":26, "num":780},{"type":7, "item":27, "num":780}]')
GO
INSERT [dbo].[Evolves] ([id], [defaultUnitId], [requirements]) VALUES (2013, 309, N'[{"type":6,"num":1680},{"type":0,"num":45600},{"type":7, "item":25, "num":830},{"type":7, "item":26, "num":830},{"type":7, "item":27, "num":830},{"type":7, "item":28, "num":250}]')
GO
SET IDENTITY_INSERT [dbo].[Evolves] OFF
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (320, N'{"type":"PowerUp","tier":1,"name":"superration_01","customId":19,"price":200}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (321, N'{"type":"PowerUp","tier":2,"name":"superration_02","customId":20,"price":500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (322, N'{"type":"PowerUp","tier":3,"name":"superration_03","customId":21,"price":1500}', 11)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (323, N'{"type":"PowerUp","tier":4,"name":"superration_04","customId":22,"price":4000}', 11)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (600, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_01","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':300,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':360,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':25,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':4,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':4,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (601, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_02","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':540,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':648,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':45,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':6,''item'':21}]},{''weight'':7,''bonus'':[{''type'':7,''num'':6,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (602, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_03","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':720,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':865,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':60,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':9,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':9,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (603, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_04","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':990,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1190,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':83,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':15,''item'':22}]},{''weight'':7,''bonus'':[{''type'':7,''num'':15,''item'':23}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (604, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_05","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':1200,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':1450,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':100,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':20,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':4,''item'':25}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (605, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_06","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':1800,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2160,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':150,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':40,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (606, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_07","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':2250,''item'':0}]},{''weight'':25,''bonus'':[{''type'':0,''num'':2700,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':187,''item'':0}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':60,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':8,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (607, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_08","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':3600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':275,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':80,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':10,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (608, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_09","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':4600,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':350,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':5,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':100,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':14,''item'':27}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (609, N'{"type":"Chest","price":300,"money":300,"tier":"1","name":"airfield_10","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':3,''bonus'':[{''type'':0,''num'':6000,''item'':0}]},{''weight'':20,''bonus'':[{''type'':5,''num'':450,''item'':0}]},{''weight'':5,''bonus'':[{''type'':7,''num'':6,''item'':28}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':21}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':22}]},{''weight'':10,''bonus'':[{''type'':7,''num'':150,''item'':23}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':25}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':26}]},{''weight'':5,''bonus'':[{''type'':7,''num'':18,''item'':27}]}]"}]}', 8)
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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (704, N'{"type":"Chest","price":650,"money":650,"tier":"3","name":"goldChest2","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':5,''item'':25},{''type'':7,''num'':5,''item'':26},{''type'':7,''num'':5,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':7,''item'':25},{''type'':7,''num'':7,''item'':26},{''type'':7,''num'':7,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':1,''item'':28}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':3,''item'':81},{''type'':7,''num'':3,''item'':341}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (706, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':10,''item'':81},{''type'':7,''num'':6,''item'':28},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':5,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':12,''item'':28},{''type'':7,''num'':20,''item'':80},{''type'':7,''num'':3,''item'':342}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':25,''item'':80},{''type'':7,''num'':3,''item'':342}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (707, N'{"type":"Chest","price":1000,"money":1000,"tier":"3","name":"platinumChest1","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':12,''item'':81},{''type'':7,''num'':12,''item'':28},{''type'':7,''num'':1000,''item'':22}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':81},{''type'':7,''num'':50,''item'':80},{''type'':7,''num'':50,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':15,''item'':28},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':40,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':20,''item'':81},{''type'':7,''num'':30,''item'':80},{''type'':7,''num'':1200,''item'':22}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1000, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1001, N'{"type":"Chest","tier":3,"name":"warband_holiday","money":0,"price":0,"active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':100,''bonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':5,''item'':28},{''type'':7,''num'':10,''item'':80},{''type'':7,''num'':5,''item'':81}],''premiumBonus'':[{''type'':7,''num'':1,''item'':10},{''type'':7,''num'':8,''item'':28},{''type'':7,''num'':15,''item'':80},{''type'':7,''num'':8,''item'':81}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1002, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':11}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':12}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':41}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':56}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1003, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':57}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':58}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (1004, N'{"type":"Chest","price":0,"money":0,"tier":"3","name":"warband_holiday","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':61}]},{''weight'':25,''bonus'':[{''type'':2,''num'':1,''item'':62}]}]"}]}', 8)
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (874, 1, 7, N'{"ident":"item","items":[428,432,436,440,444,448,452,484,488,492,496,500,504,508],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (875, 1, 8, N'{"ident":"item","items":[400,404,408,412,416,420,424],"weights":[10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (876, 1, 9, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (877, 1, 10, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (878, 1, 11, N'{"ident":"item","items":[484,488,492,496,500,504,508,456,460,464,468,472,476,480],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (879, 1, 12, N'{"ident":"item","items":[428,432,436,440,444,448,484,488,492,496,500,504,508],"weights":[15,15,15,15,15,15,15,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (880, 4, 7, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (881, 4, 8, N'{"ident":"item","items":[401,405,409,413,417,421],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (882, 4, 9, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (883, 4, 10, N'{"ident":"item","items":[429,433,437,441,445,449,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (884, 4, 11, N'{"ident":"item","items":[485,489,493,497,501,505,509,457,461,465,469,473,477,481],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (885, 4, 12, N'{"ident":"item","items":[429,433,437,441,445,449,453,485,489,493,497,501,505,509],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (886, 6, 7, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (887, 6, 8, N'{"ident":"item","items":[402,406,410,414,418,422],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (888, 6, 9, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (889, 6, 10, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (890, 6, 11, N'{"ident":"item","items":[486,490,494,498,502,506,510,458,462,466,470,474,478,482],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (891, 6, 12, N'{"ident":"item","items":[430,434,438,442,446,450,486,490,494,498,502,506,510],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (892, 8, 7, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (893, 8, 8, N'{"ident":"item","items":[403,407,411,415,419,423],"weights":[10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (894, 8, 9, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (895, 8, 10, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (896, 8, 11, N'{"ident":"item","items":[487,491,495,499,503,507,511,459,463,467,471,475,479,483],"weights":[10,10,10,10,10,10,10,13,13,13,13,13,13,13]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (897, 8, 12, N'{"ident":"item","items":[431,435,439,443,447,451,487,491,495,499,503,507,511],"weights":[10,10,10,10,10,10,10,10,10,10,10,10,10]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (898, 1, 13, N'{"ident":"crew","items":[11,12,13,14,25,26,27,28,39,40,41,42,53,54,55,56],"weights":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}')
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
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (908, 1, 18, N'{"ident":"item","items":[203,204,205,206,209,210],"weights":[5,4,1,1,2,1]}')
GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (909, 4, 18, N'{"ident":"item","items":[203,204,205,206,210,211],"weights":[4,6,1,2,3,1]}')
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
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (28, N'speed_01', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 0, 80, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (29, N'speed_02', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 240, 0, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (30, N'speed_03', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 720, 0, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (31, N'artilerystrike_04', 5, 1, 3, 0, 55, 0, 7, 598, 0, 0, 0, 0, 0, 0.5, 0, 0, 0, 0, 6, 0, 0, 5000, 0, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (32, N'speed_04', 2, 1, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 2160, 0, 1, N'', 4)
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
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (66, N'speed_01', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, N'', 1)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (67, N'speed_02', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1, N'', 2)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (68, N'speed_03', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 1, N'', 3)
GO
INSERT [dbo].[PowerUps] ([id], [name], [type], [clas], [activation], [start], [cooldown], [workingTime], [bombNum], [bombIdShell], [frontArmor], [backArmor], [rightArmor], [maxHP], [speed], [reloadDuration], [piercing], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [minDamageShell], [maxDamageShell], [money], [gold], [forSale], [bonusJSON], [lvl]) VALUES (69, N'speed_04', 2, 3, 2, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 1, N'', 4)
GO
SET IDENTITY_INSERT [dbo].[PowerUps] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1, 1, N'more_hp_pts', N'more_hp_pts', 0, 1, 6, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (2, 1, N'more_hp_pts', N'more_hp_pts', 0, 2, 6, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (3, 1, N'more_hp_pts', N'more_hp_pts', 0, 3, 6, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (4, 1, N'more_hp_pts', N'more_hp_pts', 0, 4, 6, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (5, 1, N'more_hp_pts', N'more_hp_pts', 0, 5, 6, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (6, 1, N'more_hp_pts', N'more_hp_pts', 0, 6, 6, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (7, 1, N'more_hp_pts', N'more_hp_pts', 0, 7, 6, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (8, 1, N'more_hp_pts', N'more_hp_pts', 0, 8, 6, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (9, 1, N'more_hp_pts', N'more_hp_pts', 0, 9, 6, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (18, 3, N'armor_all_pts', N'armor_all_pts', 0, 3, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (19, 3, N'armor_all_pts', N'armor_all_pts', 0, 4, 17, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (20, 3, N'armor_all_pts', N'armor_all_pts', 0, 5, 17, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (21, 3, N'armor_all_pts', N'armor_all_pts', 0, 6, 17, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (22, 3, N'armor_all_pts', N'armor_all_pts', 0, 7, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (23, 3, N'armor_all_pts', N'armor_all_pts', 0, 8, 17, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (24, 3, N'armor_all_pts', N'armor_all_pts', 0, 9, 17, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (100, 14, N'front_armor_pts', N'front_armor_pts', 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (101, 14, N'front_armor_pts', N'front_armor_pts', 0, 2, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (102, 14, N'front_armor_pts', N'front_armor_pts', 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (103, 14, N'front_armor_pts', N'front_armor_pts', 0, 4, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (104, 14, N'front_armor_pts', N'front_armor_pts', 0, 5, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (105, 14, N'front_armor_pts', N'front_armor_pts', 0, 6, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (106, 14, N'front_armor_pts', N'front_armor_pts', 0, 7, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (107, 14, N'front_armor_pts', N'front_armor_pts', 0, 8, 3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (108, 14, N'front_armor_pts', N'front_armor_pts', 0, 9, 3, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (127, 17, N'vehicle_sc', N'c_sc_01', 3, 1, 65, 10, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (128, 17, N'vehicle_sc', N'c_sc_01', 3, 2, 65, 17, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (129, 17, N'vehicle_sc', N'c_sc_01', 3, 3, 65, 25, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (130, 18, N'vehicle_lt', N'c_lt_01', 3, 1, 27, 5, 24, 5, 25, 5, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (131, 18, N'vehicle_lt', N'c_lt_01', 3, 2, 27, 10, 24, 10, 25, 10, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (132, 18, N'vehicle_lt', N'c_lt_01', 3, 3, 27, 15, 24, 15, 25, 15, 37, 5, 64, 2, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (133, 19, N'vehicle_mt', N'c_mt_01', 3, 1, 29, 5, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (134, 19, N'vehicle_mt', N'c_mt_01', 3, 2, 29, 10, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (135, 19, N'vehicle_mt', N'c_mt_01', 3, 3, 29, 15, 0, 0, 0, 0, 0, 0, 64, 3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (136, 20, N'vehicle_ht', N'c_ht_01', 3, 1, 21, 7, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (137, 20, N'vehicle_ht', N'c_ht_01', 3, 2, 21, 12, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (138, 20, N'vehicle_ht', N'c_ht_01', 3, 3, 21, 17, 0, 0, 0, 0, 0, 0, 64, 4, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (139, 21, N'vehicle_spg', N'c_spg_01', 3, 1, 66, 25, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (140, 21, N'vehicle_spg', N'c_spg_01', 3, 2, 66, 45, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (141, 21, N'vehicle_spg', N'c_spg_01', 3, 3, 66, 80, 0, 0, 0, 0, 0, 0, 64, 5, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (142, 22, N'vehicle_at', N'c_at_01', 3, 1, 24, 10, 25, 12, 0, 0, 0, 0, 64, 6, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (143, 22, N'vehicle_at', N'c_at_01', 3, 2, 24, 15, 25, 17, 0, 0, 0, 0, 64, 6, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (144, 22, N'vehicle_at', N'c_at_01', 3, 3, 24, 20, 25, 25, 0, 0, 0, 0, 64, 6, 0, 0)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (181, 26, N'attack_leader', N'attack_leader', 1, 1, 2, 70, 1, 10, 37, 5, 48, 26, 31, 4, 30, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (182, 26, N'attack_leader', N'attack_leader', 1, 2, 2, 69, 1, 11, 37, 5, 48, 26, 31, 5, 30, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (183, 26, N'attack_leader', N'attack_leader', 1, 3, 2, 68, 1, 12, 37, 5, 48, 26, 31, 6, 30, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (184, 26, N'attack_leader', N'attack_leader', 1, 4, 2, 67, 1, 13, 37, 5, 48, 26, 31, 7, 30, 7)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (185, 26, N'attack_leader', N'attack_leader', 1, 5, 2, 66, 1, 14, 37, 5, 48, 26, 31, 8, 30, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (186, 26, N'attack_leader', N'attack_leader', 1, 6, 2, 65, 1, 15, 37, 5, 48, 26, 31, 9, 30, 9)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (187, 26, N'attack_leader', N'attack_leader', 1, 7, 2, 64, 1, 16, 37, 5, 48, 26, 31, 10, 30, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (188, 26, N'attack_leader', N'attack_leader', 1, 8, 2, 63, 1, 17, 37, 5, 48, 26, 31, 11, 30, 11)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (189, 26, N'attack_leader', N'attack_leader', 1, 9, 2, 62, 1, 18, 37, 5, 48, 26, 31, 12, 30, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (190, 26, N'attack_leader', N'attack_leader', 0, 10, 2, 60, 1, 19, 37, 5, 48, 26, 31, 13, 30, 13)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (191, 26, N'attack_leader', N'attack_leader', 0, 11, 2, 58, 1, 20, 37, 5, 48, 26, 31, 14, 30, 14)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (192, 26, N'attack_leader', N'attack_leader', 0, 12, 2, 56, 1, 22, 37, 5, 48, 26, 31, 15, 30, 15)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (193, 27, N'cautious_leader', N'cautious_leader', 1, 1, 2, 50, 1, 15, 37, 4, 48, 2, 0, 0, 38, 35)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (194, 27, N'cautious_leader', N'cautious_leader', 1, 2, 2, 58, 1, 15, 37, 4, 48, 2, 0, 0, 38, 50)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (195, 27, N'cautious_leader', N'cautious_leader', 1, 3, 2, 56, 1, 15, 37, 4, 48, 2, 0, 0, 38, 70)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (196, 27, N'cautious_leader', N'cautious_leader', 1, 4, 2, 54, 1, 15, 37, 4, 48, 2, 0, 0, 38, 90)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (197, 27, N'cautious_leader', N'cautious_leader', 1, 5, 2, 52, 1, 15, 37, 4, 48, 2, 0, 0, 38, 125)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (198, 27, N'cautious_leader', N'cautious_leader', 1, 6, 2, 50, 1, 15, 37, 4, 48, 2, 0, 0, 38, 170)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (199, 27, N'cautious_leader', N'cautious_leader', 1, 7, 2, 48, 1, 15, 37, 4, 48, 2, 0, 0, 38, 230)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (200, 27, N'cautious_leader', N'cautious_leader', 1, 8, 2, 46, 1, 15, 37, 4, 48, 2, 0, 0, 38, 300)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (201, 27, N'cautious_leader', N'cautious_leader', 1, 9, 2, 44, 1, 15, 37, 4, 48, 2, 0, 0, 38, 350)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (202, 28, N'HEAT_shot', N'HEAT_shot', 1, 1, 2, 30, 45, 4, 43, 6, 32, -20, 1, 12, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (203, 28, N'HEAT_shot', N'HEAT_shot', 1, 2, 2, 29, 45, 4, 43, 8, 32, -22, 1, 13, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (204, 28, N'HEAT_shot', N'HEAT_shot', 1, 3, 2, 29, 45, 4, 43, 10, 32, -24, 1, 14, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (205, 28, N'HEAT_shot', N'HEAT_shot', 1, 4, 2, 28, 45, 4, 43, 12, 32, -26, 1, 15, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (206, 28, N'HEAT_shot', N'HEAT_shot', 1, 5, 2, 28, 45, 4, 43, 14, 32, -28, 1, 16, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (207, 28, N'HEAT_shot', N'HEAT_shot', 1, 6, 2, 27, 45, 4, 43, 16, 32, -30, 1, 17, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (208, 28, N'HEAT_shot', N'HEAT_shot', 1, 7, 2, 27, 45, 4, 43, 18, 32, -32, 1, 18, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (209, 28, N'HEAT_shot', N'HEAT_shot', 1, 8, 2, 26, 45, 4, 43, 20, 32, -35, 1, 19, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (210, 28, N'HEAT_shot', N'HEAT_shot', 1, 9, 2, 26, 45, 4, 43, 22, 32, -40, 1, 20, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (211, 28, N'HEAT_shot', N'HEAT_shot', 1, 10, 2, 25, 45, 4, 43, 24, 32, -40, 1, 21, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (212, 28, N'HEAT_shot', N'HEAT_shot', 1, 11, 2, 25, 45, 4, 43, 26, 32, -40, 1, 22, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (213, 28, N'HEAT_shot', N'HEAT_shot', 1, 12, 2, 24, 45, 4, 43, 30, 32, -40, 1, 23, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (214, 29, N'HE_shot', N'HE_shot', 1, 1, 2, 30, 43, -10, 36, 30, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (215, 29, N'HE_shot', N'HE_shot', 1, 2, 2, 29, 43, -7, 36, 35, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (216, 29, N'HE_shot', N'HE_shot', 1, 3, 2, 29, 43, -6, 36, 40, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (217, 29, N'HE_shot', N'HE_shot', 1, 4, 2, 28, 43, 1, 36, 45, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (218, 29, N'HE_shot', N'HE_shot', 1, 5, 2, 28, 43, 3, 36, 50, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (219, 29, N'HE_shot', N'HE_shot', 1, 6, 2, 27, 43, 6, 36, 53, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (220, 29, N'HE_shot', N'HE_shot', 1, 7, 2, 27, 43, 9, 36, 56, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (221, 29, N'HE_shot', N'HE_shot', 1, 8, 2, 26, 43, 12, 36, 59, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (222, 29, N'HE_shot', N'HE_shot', 1, 9, 2, 26, 43, 15, 36, 62, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (223, 29, N'HE_shot', N'HE_shot', 1, 10, 2, 25, 43, 18, 36, 65, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (224, 29, N'HE_shot', N'HE_shot', 1, 11, 2, 25, 43, 21, 36, 68, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (225, 29, N'HE_shot', N'HE_shot', 1, 12, 2, 24, 43, 24, 36, 71, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (226, 30, N'sniper_shot', N'sniper_shot', 1, 1, 2, 33, 43, 8, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (227, 30, N'sniper_shot', N'sniper_shot', 1, 2, 2, 32, 43, 12, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (228, 30, N'sniper_shot', N'sniper_shot', 1, 3, 2, 32, 43, 16, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (229, 30, N'sniper_shot', N'sniper_shot', 1, 4, 2, 31, 43, 20, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (230, 30, N'sniper_shot', N'sniper_shot', 1, 5, 2, 31, 43, 24, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (231, 30, N'sniper_shot', N'sniper_shot', 1, 6, 2, 30, 43, 28, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (232, 30, N'sniper_shot', N'sniper_shot', 1, 7, 2, 30, 43, 32, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (233, 30, N'sniper_shot', N'sniper_shot', 1, 8, 2, 29, 43, 36, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (234, 30, N'sniper_shot', N'sniper_shot', 1, 9, 2, 29, 43, 40, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (235, 30, N'sniper_shot', N'sniper_shot', 1, 10, 2, 28, 43, 45, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (236, 30, N'sniper_shot', N'sniper_shot', 1, 11, 2, 28, 43, 50, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (237, 30, N'sniper_shot', N'sniper_shot', 1, 12, 2, 27, 43, 55, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (238, 31, N'machinegun', N'machinegun', 1, 1, 2, 25, 40, 620, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (239, 31, N'machinegun', N'machinegun', 1, 2, 2, 24, 40, 621, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (240, 31, N'machinegun', N'machinegun', 1, 3, 2, 24, 40, 622, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (241, 31, N'machinegun', N'machinegun', 1, 4, 2, 23, 40, 623, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (242, 31, N'machinegun', N'machinegun', 1, 5, 2, 23, 40, 624, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (243, 31, N'machinegun', N'machinegun', 1, 6, 2, 22, 40, 625, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (244, 31, N'machinegun', N'machinegun', 1, 7, 2, 22, 40, 626, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (245, 31, N'machinegun', N'machinegun', 1, 8, 2, 21, 40, 627, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (246, 31, N'machinegun', N'machinegun', 1, 9, 2, 21, 40, 628, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (247, 31, N'machinegun', N'machinegun', 1, 10, 2, 20, 40, 629, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (248, 31, N'machinegun', N'machinegun', 1, 11, 2, 20, 40, 630, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (249, 31, N'machinegun', N'machinegun', 1, 12, 2, 19, 40, 631, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (250, 32, N'handyman', N'handyman', 1, 1, 2, 70, 1, 15, 49, 3, 6, 35, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (251, 32, N'handyman', N'handyman', 1, 2, 2, 68, 1, 15, 49, 3, 6, 40, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (252, 32, N'handyman', N'handyman', 1, 3, 2, 66, 1, 18, 49, 3, 6, 60, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (253, 32, N'handyman', N'handyman', 1, 4, 2, 64, 1, 18, 49, 3, 6, 80, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (254, 32, N'handyman', N'handyman', 1, 5, 2, 62, 1, 21, 49, 3, 6, 140, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (255, 32, N'handyman', N'handyman', 1, 6, 2, 60, 1, 21, 49, 3, 6, 200, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (256, 32, N'handyman', N'handyman', 1, 7, 2, 58, 1, 24, 49, 3, 6, 260, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (257, 32, N'handyman', N'handyman', 1, 8, 2, 56, 1, 24, 49, 3, 6, 320, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (258, 32, N'handyman', N'handyman', 1, 9, 2, 54, 1, 27, 49, 3, 6, 380, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (259, 32, N'handyman', N'handyman', 1, 10, 2, 52, 1, 27, 49, 3, 6, 440, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (260, 32, N'handyman', N'handyman', 1, 11, 2, 50, 1, 27, 49, 3, 6, 500, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (261, 32, N'handyman', N'handyman', 1, 12, 2, 48, 1, 27, 49, 3, 6, 560, 48, 32, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (262, 33, N'rocket_missile', N'rocket_missile', 1, 1, 2, 30, 45, 5, 35, 3, 58, -50, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (263, 33, N'rocket_missile', N'rocket_missile', 1, 2, 2, 29, 45, 5, 35, 3, 58, -47, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (264, 33, N'rocket_missile', N'rocket_missile', 1, 3, 2, 29, 45, 5, 35, 3, 58, -44, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (265, 33, N'rocket_missile', N'rocket_missile', 1, 4, 2, 28, 45, 5, 35, 3, 58, -41, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (266, 33, N'rocket_missile', N'rocket_missile', 1, 5, 2, 28, 45, 5, 35, 3, 58, -38, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (267, 33, N'rocket_missile', N'rocket_missile', 1, 6, 2, 27, 45, 5, 35, 3, 58, -35, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (268, 33, N'rocket_missile', N'rocket_missile', 1, 7, 2, 27, 45, 5, 35, 3, 58, -32, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (269, 33, N'rocket_missile', N'rocket_missile', 1, 8, 2, 26, 45, 5, 35, 3, 58, -29, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (270, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 26, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (271, 33, N'rocket_missile', N'rocket_missile', 1, 10, 2, 25, 45, 5, 35, 3, 58, -23, 43, -7, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (272, 33, N'rocket_missile', N'rocket_missile', 1, 11, 2, 25, 45, 5, 35, 3, 58, -20, 43, -3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (273, 33, N'rocket_missile', N'rocket_missile', 1, 12, 2, 24, 45, 5, 35, 3, 58, -17, 43, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (274, 34, N'mines', N'mines', 1, 1, 2, 15, 1, 4, 50, 640, 36, 13, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (275, 34, N'mines', N'mines', 1, 2, 2, 15, 1, 4, 50, 641, 36, 14, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (276, 34, N'mines', N'mines', 1, 3, 2, 15, 1, 5, 50, 642, 36, 15, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (277, 34, N'mines', N'mines', 1, 4, 2, 15, 1, 5, 50, 643, 36, 17, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (278, 34, N'mines', N'mines', 1, 5, 2, 15, 1, 5, 50, 644, 36, 19, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (279, 34, N'mines', N'mines', 1, 6, 2, 15, 1, 5, 50, 645, 36, 21, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (280, 34, N'mines', N'mines', 1, 7, 2, 15, 1, 5, 50, 646, 36, 23, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (281, 34, N'mines', N'mines', 1, 8, 2, 15, 1, 6, 50, 647, 36, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (282, 34, N'mines', N'mines', 1, 9, 2, 15, 1, 6, 50, 648, 36, 27, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (283, 34, N'mines', N'mines', 1, 10, 2, 15, 1, 6, 50, 649, 36, 29, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (284, 34, N'mines', N'mines', 1, 11, 2, 15, 1, 6, 50, 650, 36, 31, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (285, 34, N'mines', N'mines', 1, 12, 2, 15, 1, 6, 50, 651, 36, 33, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (286, 35, N'special_aid', N'special_aid', 1, 1, 2, 50, 1, 20, 52, 20, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (287, 35, N'special_aid', N'special_aid', 1, 2, 2, 48, 1, 21, 52, 22, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (288, 35, N'special_aid', N'special_aid', 1, 3, 2, 46, 1, 22, 52, 24, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (289, 35, N'special_aid', N'special_aid', 1, 4, 2, 44, 1, 23, 52, 26, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (290, 35, N'special_aid', N'special_aid', 1, 5, 2, 42, 1, 24, 52, 28, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (291, 35, N'special_aid', N'special_aid', 1, 6, 2, 40, 1, 25, 52, 30, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (292, 35, N'special_aid', N'special_aid', 1, 7, 2, 38, 1, 26, 52, 32, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (293, 35, N'special_aid', N'special_aid', 1, 8, 2, 36, 1, 27, 52, 34, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (294, 35, N'special_aid', N'special_aid', 1, 9, 2, 34, 1, 28, 52, 36, 60, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (295, 36, N'binoculars', N'binoculars', 1, 1, 2, 40, 1, 25, 51, 1, 26, 8, 27, 8, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (296, 36, N'binoculars', N'binoculars', 1, 2, 2, 40, 1, 25, 51, 1, 26, 9, 27, 9, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (297, 36, N'binoculars', N'binoculars', 1, 3, 2, 39, 1, 25, 51, 1, 26, 10, 27, 10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (298, 36, N'binoculars', N'binoculars', 1, 4, 2, 38, 1, 25, 51, 1, 26, 11, 27, 11, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (299, 36, N'binoculars', N'binoculars', 1, 5, 2, 37, 1, 25, 51, 1, 26, 12, 27, 12, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (300, 36, N'binoculars', N'binoculars', 1, 6, 2, 36, 1, 25, 51, 1, 26, 13, 27, 13, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (301, 36, N'binoculars', N'binoculars', 1, 7, 2, 35, 1, 25, 51, 1, 26, 14, 27, 14, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (302, 36, N'binoculars', N'binoculars', 1, 8, 2, 34, 1, 25, 51, 1, 26, 15, 27, 15, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (303, 36, N'binoculars', N'binoculars', 1, 9, 2, 33, 1, 25, 51, 1, 26, 16, 27, 16, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (304, 36, N'binoculars', N'binoculars', 1, 10, 2, 32, 1, 25, 51, 1, 26, 17, 27, 17, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (305, 36, N'binoculars', N'binoculars', 1, 11, 2, 31, 1, 25, 51, 1, 26, 18, 27, 18, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (306, 36, N'binoculars', N'binoculars', 1, 12, 2, 30, 1, 25, 51, 1, 26, 20, 27, 20, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (307, 37, N'iron_will', N'iron_will', 1, 1, 2, 60, 1, 30, 52, 20, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (308, 37, N'iron_will', N'iron_will', 1, 2, 2, 59, 1, 32, 52, 22, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (309, 37, N'iron_will', N'iron_will', 1, 3, 2, 58, 1, 34, 52, 24, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (310, 37, N'iron_will', N'iron_will', 1, 4, 2, 57, 1, 36, 52, 26, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (311, 37, N'iron_will', N'iron_will', 1, 5, 2, 56, 1, 38, 52, 28, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (312, 37, N'iron_will', N'iron_will', 1, 6, 2, 55, 1, 40, 52, 30, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (313, 37, N'iron_will', N'iron_will', 1, 7, 2, 54, 1, 42, 52, 32, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (314, 37, N'iron_will', N'iron_will', 1, 8, 2, 52, 1, 44, 52, 34, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (315, 37, N'iron_will', N'iron_will', 1, 9, 2, 50, 1, 46, 52, 36, 53, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (316, 38, N'adrenaline', N'adrenaline', 1, 1, 2, 60, 1, 30, 56, 20, 29, 20, 58, 20, 59, 24)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (317, 38, N'adrenaline', N'adrenaline', 1, 2, 2, 59, 1, 31, 56, 22, 29, 22, 58, 22, 59, 23)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (318, 38, N'adrenaline', N'adrenaline', 1, 3, 2, 58, 1, 32, 56, 24, 29, 24, 58, 24, 59, 22)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (319, 38, N'adrenaline', N'adrenaline', 1, 4, 2, 57, 1, 33, 56, 26, 29, 26, 58, 26, 59, 21)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (320, 38, N'adrenaline', N'adrenaline', 1, 5, 2, 56, 1, 34, 56, 28, 29, 28, 58, 28, 59, 20)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (321, 38, N'adrenaline', N'adrenaline', 1, 6, 2, 55, 1, 35, 56, 30, 29, 30, 58, 30, 59, 19)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (322, 38, N'adrenaline', N'adrenaline', 1, 7, 2, 54, 1, 36, 56, 32, 29, 32, 58, 32, 59, 17)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (323, 38, N'adrenaline', N'adrenaline', 1, 8, 2, 52, 1, 38, 56, 34, 29, 34, 58, 34, 59, 14)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (324, 38, N'adrenaline', N'adrenaline', 1, 9, 2, 50, 1, 40, 56, 36, 29, 36, 58, 36, 59, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (325, 39, N'accurate_calculation', N'accurate_calculation', 1, 1, 2, 66, 1, 30, 54, 25, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (326, 39, N'accurate_calculation', N'accurate_calculation', 1, 2, 2, 65, 1, 31, 54, 27, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (327, 39, N'accurate_calculation', N'accurate_calculation', 1, 3, 2, 64, 1, 32, 54, 29, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (328, 39, N'accurate_calculation', N'accurate_calculation', 1, 4, 2, 63, 1, 33, 54, 31, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (329, 39, N'accurate_calculation', N'accurate_calculation', 1, 5, 2, 62, 1, 34, 54, 33, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (330, 39, N'accurate_calculation', N'accurate_calculation', 1, 6, 2, 61, 1, 35, 54, 35, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (331, 39, N'accurate_calculation', N'accurate_calculation', 1, 7, 2, 60, 1, 37, 54, 37, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (332, 39, N'accurate_calculation', N'accurate_calculation', 1, 8, 2, 59, 1, 39, 54, 39, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (333, 39, N'accurate_calculation', N'accurate_calculation', 1, 9, 2, 58, 1, 41, 54, 41, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (334, 39, N'accurate_calculation', N'accurate_calculation', 1, 10, 2, 57, 1, 43, 54, 44, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (335, 39, N'accurate_calculation', N'accurate_calculation', 1, 11, 2, 56, 1, 45, 54, 47, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (336, 39, N'accurate_calculation', N'accurate_calculation', 1, 12, 2, 55, 1, 45, 54, 55, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (337, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 1, 2, 90, 62, 25, 33, 150, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (338, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 2, 2, 88, 62, 25, 33, 180, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (339, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 3, 2, 86, 62, 25, 33, 210, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (340, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 4, 2, 84, 62, 25, 33, 240, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (341, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 5, 2, 82, 62, 25, 33, 270, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (342, 40, N'auto_hp_repair', N'auto_hp_repair', 2, 6, 2, 80, 62, 25, 33, 300, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (343, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 1, 2, 90, 62, 25, 1, 15, 49, 3, 6, 200, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (344, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 2, 2, 88, 62, 25, 1, 15, 49, 3, 6, 260, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (345, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 3, 2, 86, 62, 25, 1, 15, 49, 3, 6, 320, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (346, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 4, 2, 84, 62, 25, 1, 15, 49, 3, 6, 380, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (347, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 5, 2, 82, 62, 25, 1, 15, 49, 3, 6, 440, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (348, 41, N'auto_hp_handyman', N'auto_hp_handyman', 2, 6, 2, 80, 62, 25, 1, 15, 49, 3, 6, 500, 48, 32)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (349, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 1, 2, 90, 62, 25, 1, 10, 17, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (350, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 2, 2, 88, 62, 25, 1, 12, 17, 30, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (351, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 3, 2, 86, 62, 25, 1, 14, 17, 39, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (352, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 4, 2, 84, 62, 25, 1, 16, 17, 46, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (353, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 5, 2, 82, 62, 25, 1, 18, 17, 53, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (354, 42, N'auto_hp_armor_up', N'auto_hp_armor_up', 2, 6, 2, 80, 62, 25, 1, 20, 17, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (355, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 1, 2, 90, 62, 25, 1, 15, 37, 4, 30, 15, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (356, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 2, 2, 88, 62, 25, 1, 17, 37, 4, 30, 17, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (357, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 3, 2, 86, 62, 25, 1, 19, 37, 4, 30, 20, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (358, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 4, 2, 84, 62, 25, 1, 22, 37, 4, 30, 23, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (359, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 5, 2, 82, 62, 25, 1, 26, 37, 4, 30, 26, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (360, 43, N'auto_hp_inspiration', N'auto_hp_inspiration', 2, 6, 2, 80, 62, 25, 1, 31, 37, 4, 30, 30, 48, 43)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (361, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 1, 2, 90, 62, 25, 1, 25, 16, 20, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (362, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 2, 2, 88, 62, 25, 1, 26, 16, 28, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (363, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 3, 2, 86, 62, 25, 1, 27, 16, 36, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (364, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 4, 2, 84, 62, 25, 1, 28, 16, 44, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (365, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 5, 2, 82, 62, 25, 1, 29, 16, 52, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (366, 44, N'auto_hp_damage_up', N'auto_hp_damage_up', 2, 6, 2, 80, 62, 25, 1, 30, 16, 60, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (367, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 1, 2, 90, 62, 25, 43, -10, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (368, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 2, 2, 88, 62, 25, 43, -5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (369, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 3, 2, 86, 62, 25, 43, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (370, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 4, 2, 84, 62, 25, 43, 5, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (371, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 5, 2, 82, 62, 25, 43, 9, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (372, 45, N'auto_hp_shot', N'auto_hp_shot', 2, 6, 2, 80, 62, 25, 43, 13, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (373, 46, N'freeze_shot', N'freeze_shot', 1, 1, 2, 30, 45, 6, 67, 1, 1, 5, 37, 1, 30, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (374, 46, N'freeze_shot', N'freeze_shot', 1, 2, 2, 30, 45, 6, 67, 1, 1, 5, 37, 1, 30, 7)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (375, 46, N'freeze_shot', N'freeze_shot', 1, 3, 2, 30, 45, 6, 67, 1, 1, 6, 37, 1, 30, 10)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (376, 46, N'freeze_shot', N'freeze_shot', 1, 4, 2, 30, 45, 6, 67, 1, 1, 6, 37, 1, 30, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (377, 46, N'freeze_shot', N'freeze_shot', 1, 5, 2, 30, 45, 6, 67, 1, 1, 7, 37, 1, 30, 15)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (378, 46, N'freeze_shot', N'freeze_shot', 1, 6, 2, 30, 45, 6, 67, 1, 1, 7, 37, 1, 30, 17)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (379, 46, N'freeze_shot', N'freeze_shot', 1, 7, 2, 30, 45, 6, 67, 1, 1, 8, 37, 1, 30, 20)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (380, 46, N'freeze_shot', N'freeze_shot', 1, 8, 2, 30, 45, 6, 67, 1, 1, 8, 37, 1, 30, 23)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (381, 46, N'freeze_shot', N'freeze_shot', 1, 9, 2, 30, 45, 6, 67, 1, 1, 9, 37, 1, 30, 25)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (382, 46, N'freeze_shot', N'freeze_shot', 1, 10, 2, 30, 45, 6, 67, 1, 1, 9, 37, 1, 30, 28)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (383, 46, N'freeze_shot', N'freeze_shot', 1, 11, 2, 30, 45, 6, 67, 1, 1, 10, 37, 1, 30, 30)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (386, 46, N'freeze_shot', N'freeze_shot', 1, 12, 2, 30, 45, 6, 67, 1, 1, 10, 37, 1, 30, 30)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1374, 27, N'cautious_leader', N'cautious_leader', 1, 10, 2, 42, 1, 15, 37, 4, 48, 2, 0, 0, 38, 400)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1375, 27, N'cautious_leader', N'cautious_leader', 1, 11, 2, 41, 1, 15, 37, 4, 48, 2, 0, 0, 38, 450)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (1376, 27, N'cautious_leader', N'cautious_leader', 1, 12, 2, 40, 1, 15, 37, 4, 48, 2, 0, 0, 38, 500)
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
