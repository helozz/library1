USE [tankwars_test]
GO
DELETE FROM [dbo].[Evolves]
GO
DELETE FROM [dbo].[DefaultUnits]
GO
DELETE FROM [dbo].[Crews]
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
INSERT [dbo].[Crews] ([id], [name], [side], [idsidebonus], [money], [gold], [skillId1], [skillId2], [skillId3], [skillId4], [skillId5], [forSale], [skillId1b], [skillId1c], [skillId2b], [skillId2c], [skillId4b], [skillId4c], [skillId5b], [skillId5c], [idsidebonus2], [idsidebonus3]) VALUES (62, N'crew_su_prem_04', 1, 16, 0, 500, 11, 26, 21, 4, 40, 0, 1, 9, 23, 32, 2, 8, 43, 41, 13, 3)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (245, N'Wespe', 2, 46, 40, 44, 1, 7, 1, 9, 1, 10, 180, 328, 1.3, 11, 29, 19, 24, 19, 28, 5, 105, 16000, 0, 1, 1, 11, 0, 5, 0, 0, 6, 3250)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (257, N'M7Priest', 3, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 11, 0, 6, 0, 0, 6, 6500)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (258, N'Bison1', 2, 75, 32, 44, 1, 7, 1, 9, 1, 10, 234, 427, 1.3, 11, 36, 24, 30, 19, 27, 5, 105, 26000, 0, 1, 1, 11, 0, 6, 0, 0, 6, 6500)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (269, N'Bishop_1', 3, 110, 30, 36, 1, 8, 2, 13, 1, 9, 292, 534, 1.3, 11, 43, 29, 36, 19, 24, 5, 150, 42000, 0, 1, 1, 12, 0, 7, 0, 0, 7, 9750)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (280, N'Hummel', 2, 135, 30, 36, 1, 8, 2, 13, 1, 9, 365, 667, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 68000, 0, 1, 1, 12, 0, 8, 0, 0, 7, 13000)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (290, N'Grille1', 2, 155, 30, 36, 1, 8, 2, 13, 1, 9, 440, 800, 1.3, 11, 50, 34, 42, 19, 24, 5, 150, 110000, 0, 1, 1, 12, 0, 9, 0, 0, 8, 19500)
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
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (297, N'Maus', 2, 485, 60, 48, 2, 4, 1, 14, 1, 11, 880, 1671, 1.1, 60, 180, 100, 120, 16, 22, 4, 128, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (298, N'IS3', 1, 485, 60, 48, 2, 4, 1, 10, 1, 11, 870, 1671, 1.1, 60, 140, 80, 95, 16, 22, 4, 125, 390000, 0, 1, 1, 6, 0, 10, 0, 0, 8, 42000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (299, N'SU14_1', 1, 175, 30, 36, 1, 8, 1, 12, 1, 9, 526, 960, 1.2, 11, 100, 40, 70, 19, 24, 5, 150, 180000, 0, 1, 1, 12, 0, 10, 0, 0, 8, 26000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (300, N'Tortoise', 3, 240, 45, 24, 1, 4, 1, 8, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 120, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (301, N'Jagdtiger1', 2, 240, 45, 24, 1, 4, 1, 8, 1, 10, 760, 1253, 1.2, 13, 108, 46, 77, 15, 23, 6, 128, 335000, 0, 1, 1, 8, 0, 10, 0, 0, 8, 36000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (302, N'IS4', 1, 500, 60, 48, 2, 4, 1, 9, 1, 11, 999, 2000, 1.2, 60, 140, 90, 110, 16, 22, 4, 125, 0, 10000, 1, 1, 6, 2, 10, 0, 0, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (303, N'T30', 3, 500, 45, 24, 2, 4, 1, 8, 1, 10, 875, 1450, 1.2, 13, 112, 48, 80, 15, 23, 6, 155, 0, 10000, 1, 1, 8, 2, 10, 0, 100, 8, 0)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (304, N'Leopard', 2, 200, 80, 60, 2, 4, 1, 8, 1, 11, 720, 1450, 1.5, 28, 96, 64, 80, 15, 23, 3, 125, 0, 9000, 1, 1, 6, 2, 10, 0, 50, 8, 25000)
GO
INSERT [dbo].[DefaultUnits] ([i], [n], [s], [rm], [az], [ts], [tt], [at], [cd], [rd], [cs], [vr], [c], [hx], [sp], [ms], [fa], [ba], [ra], [am], [ax], [t], [z], [m], [g], [kr], [lm], [rg], [p], [sz], [pc], [dg], [lx], [parts]) VALUES (305, N'T44', 1, 185, 80, 60, 2, 4, 1, 8, 1, 11, 522, 1044, 1.2, 28, 70, 60, 65, 15, 22, 3, 75, 145000, 0, 1, 1, 6, 0, 9, 0, 0, 8, 22500)
GO
SET IDENTITY_INSERT [dbo].[DefaultUnits] OFF
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
SET IDENTITY_INSERT [dbo].[Evolves] OFF
GO
