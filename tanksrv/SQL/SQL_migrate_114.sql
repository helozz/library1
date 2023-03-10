use tankwars

  UPDATE [dbo].[UserBuildings]
  SET blevel = blevel / 2 + 1
  where [type] = 1

   UPDATE [dbo].[UserBuildings]
  SET blevel = 10
  where [type] = 1 and blevel = 11

GO
DELETE FROM [dbo].[Buildings]
GO
SET IDENTITY_INSERT [dbo].[Buildings] ON 

GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1, 1, 1, 0, 0, 0, 0, 35, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (3, 1, 2, 1, 500, 10, 6, 40, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (4, 1, 3, 2, 2500, 100, 10, 45, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (5, 1, 4, 3, 10000, 300, 60, 50, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (6, 1, 5, 4, 25000, 600, 90, 55, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (7, 1, 6, 5, 50000, 1200, 150, 60, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (8, 1, 7, 6, 75000, 2400, 200, 65, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (9, 1, 8, 7, 100000, 3840, 280, 70, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (10, 1, 9, 8, 150000, 5000, 350, 75, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (11, 1, 10, 9, 200000, 6000, 500, 80, 180)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (12, 2, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (13, 2, 0, 0, 1000, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (14, 2, 1, 0, 2000, 30, 25, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (15, 2, 2, 1, 5000, 60, 50, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (16, 2, 3, 1, 12000, 90, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (17, 2, 4, 2, 20000, 180, 125, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (18, 2, 5, 3, 25000, 360, 220, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (19, 2, 6, 4, 35000, 1440, 350, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (20, 2, 7, 5, 45000, 1560, 380, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (21, 2, 8, 6, 50000, 2880, 500, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (22, 2, 9, 7, 60000, 3600, 550, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (23, 2, 10, 8, 80000, 5760, 600, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (25, 3, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (26, 3, 1, 0, 200, 10, 10, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (27, 3, 2, 0, 500, 25, 15, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (28, 3, 3, 0, 1000, 50, 30, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (29, 3, 4, 0, 2000, 120, 85, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (30, 3, 5, 0, 6000, 180, 100, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (31, 3, 6, 0, 10000, 240, 125, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (32, 3, 7, 0, 15000, 360, 200, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (33, 3, 8, 0, 21000, 900, 300, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (34, 3, 9, 0, 28000, 1200, 400, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (35, 3, 10, 0, 35000, 1680, 500, 10, 0)
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
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (62, 6, 1, 0, 400, 10, 2, 1000, 21.6)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (63, 6, 2, 0, 440, 15, 3, 1250, 17.28)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (64, 6, 3, 1, 560, 30, 6, 1500, 14.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (65, 6, 4, 1, 680, 45, 9, 2000, 10.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (66, 6, 5, 1, 840, 60, 12, 2500, 8.64)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (67, 6, 6, 1, 1040, 80, 16, 3000, 7.2)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (68, 6, 7, 2, 1280, 120, 24, 3500, 6.17)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (69, 6, 8, 2, 1560, 160, 32, 4000, 5.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (70, 6, 9, 2, 1880, 200, 40, 4500, 4.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (71, 6, 10, 2, 2280, 240, 48, 5000, 4.32)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (72, 7, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (73, 7, 0, 0, 100, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (74, 7, 1, 0, 150, 10, 5, 3000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (75, 7, 2, 0, 250, 15, 6, 4000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (76, 7, 3, 1, 500, 20, 10, 5000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (77, 7, 4, 1, 700, 30, 12, 6500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (78, 7, 5, 1, 900, 40, 14, 9000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (79, 7, 6, 1, 1100, 50, 18, 12500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (80, 7, 7, 2, 1300, 60, 22, 15000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (81, 7, 8, 2, 1500, 70, 26, 20000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (82, 7, 9, 2, 1700, 80, 30, 25000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (83, 7, 10, 2, 1900, 90, 34, 30000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (96, 9, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (97, 9, 0, 0, 200, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (98, 9, 1, 0, 300, 20, 10, 800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (99, 9, 2, 0, 500, 30, 15, 1100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (100, 9, 3, 1, 600, 60, 20, 1500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (101, 9, 4, 1, 800, 80, 25, 2500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (102, 9, 5, 1, 1100, 90, 30, 3000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (103, 9, 6, 1, 1400, 120, 35, 3600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (104, 9, 7, 2, 1700, 150, 40, 4300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (105, 9, 8, 2, 2000, 180, 45, 5000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (106, 9, 9, 2, 2300, 210, 50, 5800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (107, 9, 10, 2, 2700, 240, 60, 6600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (108, 13, 1, 999, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (109, 14, 1, 0, 0, 0, 0, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (110, 14, 2, 0, 0, 0, 0, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (111, 14, 3, 1, 0, 0, 0, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (112, 14, 4, 1, 0, 0, 0, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (113, 14, 5, 2, 0, 0, 0, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (114, 15, 1, 0, 0, 0, 0, 3600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (115, 15, 2, 0, 0, 0, 0, 3650, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (116, 15, 3, 1, 0, 0, 0, 3900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (117, 15, 4, 1, 0, 0, 0, 4100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (118, 15, 5, 2, 0, 0, 0, 4300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (119, 15, 6, 2, 0, 0, 0, 4500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (120, 15, 7, 3, 0, 0, 0, 4700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (121, 15, 8, 3, 0, 0, 0, 4900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (122, 15, 9, 4, 0, 0, 0, 5100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (123, 15, 10, 4, 0, 0, 0, 5300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (124, 16, 1, 0, 0, 0, 0, 600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (125, 16, 2, 0, 0, 0, 0, 650, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (126, 16, 3, 1, 0, 0, 0, 700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (127, 16, 4, 1, 0, 0, 0, 750, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (128, 16, 5, 2, 0, 0, 0, 800, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (129, 16, 6, 2, 0, 0, 0, 850, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (130, 16, 7, 3, 0, 0, 0, 900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (131, 16, 8, 3, 0, 0, 0, 950, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (132, 16, 9, 4, 0, 0, 0, 1000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (133, 16, 10, 4, 0, 0, 0, 1050, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (144, 11, -1, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (145, 11, 0, 0, 1000, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (146, 11, 1, 0, 2000, 60, 35, 1, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (147, 11, 2, 0, 3000, 90, 50, 2, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (148, 11, 3, 0, 4000, 120, 75, 3, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (149, 11, 4, 1, 5000, 360, 100, 4, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (150, 11, 5, 1, 6500, 480, 120, 5, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (151, 11, 6, 1, 8000, 600, 150, 6, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (152, 11, 7, 2, 10000, 720, 200, 7, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (153, 11, 8, 2, 12000, 840, 220, 8, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (154, 11, 9, 2, 15000, 960, 250, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (155, 11, 10, 2, 20000, 1080, 280, 10, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (165, 6, 11, 3, 2760, 280, 56, 6000, 3.6)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (166, 6, 12, 3, 3320, 320, 64, 7000, 3.09)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (167, 6, 13, 3, 3960, 360, 72, 8000, 2.7)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (168, 6, 14, 3, 4720, 400, 80, 9000, 2.4)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (169, 6, 15, 4, 5600, 440, 88, 10000, 2.16)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (170, 6, 16, 4, 6640, 480, 96, 11000, 1.96)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (171, 6, 17, 4, 7840, 520, 104, 12000, 1.8)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (172, 6, 18, 4, 9240, 560, 112, 13000, 1.66)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (173, 6, 19, 5, 10840, 600, 120, 14000, 1.54)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (174, 6, 20, 5, 12680, 640, 128, 15000, 1.44)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (196, 15, 11, 5, 0, 0, 0, 5500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (197, 15, 12, 5, 0, 0, 0, 5700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (198, 15, 13, 6, 0, 0, 0, 5900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (199, 15, 14, 6, 0, 0, 0, 6100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (200, 15, 15, 7, 0, 0, 0, 6300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (201, 15, 16, 7, 0, 0, 0, 6500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (202, 15, 17, 8, 0, 0, 0, 6700, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (203, 15, 18, 8, 0, 0, 0, 6900, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (204, 15, 19, 9, 0, 0, 0, 7100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (205, 16, 11, 5, 0, 0, 0, 1100, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (206, 16, 12, 5, 0, 0, 0, 1150, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (207, 16, 13, 6, 0, 0, 0, 1200, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (208, 16, 14, 6, 0, 0, 0, 1250, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (209, 16, 15, 7, 0, 0, 0, 1300, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (210, 16, 16, 7, 0, 0, 0, 1350, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (211, 16, 17, 8, 0, 0, 0, 1400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (212, 16, 18, 8, 0, 0, 0, 1450, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (213, 16, 19, 9, 0, 0, 0, 1500, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (220, 12, 1, 0, 100, 60, 50, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (221, 12, 2, 1, 2500, 180, 75, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (222, 12, 3, 1, 5000, 360, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (223, 12, 4, 2, 10000, 720, 150, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (224, 12, 5, 3, 25000, 1440, 200, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (225, 12, 6, 4, 50000, 2880, 300, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (226, 12, 7, 6, 80000, 5760, 400, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (227, 12, 8, 7, 125000, 7200, 600, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (228, 12, 9, 9, 180000, 11520, 1000, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (229, 12, 10, 10, 250000, 14400, 1200, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (230, 3, 11, 0, 45000, 2160, 600, 11, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (231, 3, 12, 0, 55000, 2400, 700, 12, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (232, 3, 13, 0, 65000, 2880, 800, 13, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (233, 3, 14, 0, 75000, 3600, 900, 14, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (234, 3, 15, 0, 85000, 4320, 1000, 16, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (235, 3, 16, 0, 95000, 4800, 1100, 20, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (236, 7, 11, 3, 2100, 100, 38, 35000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (237, 7, 12, 3, 2300, 110, 42, 40000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (238, 7, 13, 3, 2500, 120, 46, 45000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (239, 7, 14, 3, 2700, 130, 50, 50000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (240, 7, 15, 4, 2900, 140, 54, 55000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (241, 7, 16, 4, 3100, 150, 58, 60000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (242, 7, 17, 4, 3300, 160, 62, 65000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (243, 7, 18, 4, 3500, 170, 66, 70000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (244, 7, 19, 5, 3700, 180, 70, 80000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (245, 7, 20, 5, 3900, 190, 74, 90000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (246, 7, 21, 5, 4100, 200, 78, 100000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (247, 7, 22, 5, 4300, 210, 82, 120000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (248, 7, 23, 6, 4500, 220, 86, 140000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (249, 7, 24, 6, 4800, 230, 90, 160000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (250, 7, 25, 6, 5100, 240, 94, 180000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (251, 7, 26, 6, 5400, 250, 98, 200000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (252, 7, 27, 7, 5700, 260, 102, 220000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (253, 7, 28, 7, 6000, 270, 106, 240000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (254, 7, 29, 7, 6300, 280, 110, 280000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (255, 7, 30, 7, 6600, 290, 114, 320000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (256, 7, 31, 8, 6900, 300, 118, 360000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (257, 7, 32, 8, 7200, 310, 122, 400000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (258, 7, 33, 8, 7500, 320, 126, 440000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (259, 7, 34, 8, 7800, 330, 130, 480000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (260, 7, 35, 9, 8100, 340, 134, 560000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (261, 7, 36, 9, 8400, 350, 138, 640000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (262, 7, 37, 9, 8700, 360, 142, 720000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (263, 7, 38, 9, 9000, 370, 146, 800000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (264, 7, 39, 10, 9300, 380, 150, 880000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (265, 7, 40, 10, 9600, 390, 154, 960000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (266, 9, 11, 3, 3100, 360, 70, 7400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (267, 9, 12, 3, 3500, 480, 80, 8400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (268, 9, 13, 3, 3900, 600, 90, 9400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (269, 9, 14, 3, 4300, 720, 100, 10400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (270, 9, 15, 4, 4700, 900, 110, 11400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (271, 9, 16, 4, 5100, 1200, 135, 12400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (272, 9, 17, 4, 5300, 1440, 160, 13400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (273, 9, 18, 4, 5500, 1560, 185, 14400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (274, 9, 19, 5, 5700, 1680, 210, 15400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (275, 9, 20, 5, 5900, 1800, 235, 16400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (276, 9, 21, 5, 6200, 1920, 260, 17400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (277, 9, 22, 5, 6500, 2040, 285, 18400, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (278, 9, 23, 6, 6800, 2160, 310, 20000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (279, 9, 24, 6, 7100, 2280, 330, 22000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (280, 9, 25, 6, 7400, 2400, 350, 25000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (281, 9, 26, 6, 7700, 2520, 370, 28000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (282, 9, 27, 7, 8100, 2640, 390, 30000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (283, 9, 28, 7, 8500, 2760, 410, 34000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (284, 9, 29, 7, 8900, 2880, 430, 38000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (285, 9, 30, 7, 9300, 3000, 450, 42000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (286, 9, 31, 8, 9700, 3120, 470, 46000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (287, 9, 32, 8, 10100, 3240, 490, 50000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (288, 9, 33, 8, 10500, 3360, 510, 55000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (289, 9, 34, 8, 10900, 3480, 530, 60000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (290, 9, 35, 9, 11300, 3600, 550, 65000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (291, 9, 36, 9, 11700, 3720, 570, 70000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (292, 9, 37, 9, 12100, 3840, 590, 76000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (293, 9, 38, 9, 12500, 3960, 610, 82000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (294, 9, 39, 10, 12900, 4080, 630, 88000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (295, 9, 40, 10, 13500, 4200, 650, 96000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (296, 22, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (297, 22, 1, 0, 1500, 60, 20, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (298, 22, 2, 0, 1700, 60, 20, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (299, 22, 3, 0, 1900, 120, 35, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (300, 22, 4, 0, 2100, 120, 35, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (301, 22, 5, 0, 2400, 180, 45, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (302, 22, 6, 1, 2700, 180, 45, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (303, 22, 7, 1, 3000, 240, 60, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (304, 22, 8, 1, 3300, 240, 60, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (305, 22, 9, 1, 3600, 300, 75, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (306, 22, 10, 1, 3900, 360, 85, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (307, 22, 11, 1, 4400, 480, 100, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (308, 22, 12, 1, 4900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (309, 22, 13, 1, 5400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (310, 22, 14, 1, 5900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (311, 22, 15, 1, 6400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (312, 22, 16, 2, 6900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (313, 22, 17, 2, 7400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (314, 22, 18, 2, 7900, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (315, 22, 19, 2, 8400, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (316, 22, 20, 2, 9000, 500, 120, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (317, 11, 11, 2, 25000, 1200, 320, 11, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (318, 11, 12, 2, 30000, 1320, 380, 12, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (319, 11, 13, 2, 35000, 1440, 500, 13, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (500, 21, 0, 0, 1000, 0, 0, 25, 1152)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (501, 21, 1, 0, 5000, 60, 50, 25, 1152)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (502, 21, 2, 1, 7000, 120, 75, 26, 1106)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (503, 21, 3, 1, 10000, 240, 100, 27, 1060)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (504, 21, 4, 2, 15000, 720, 150, 28, 1014)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (505, 21, 5, 2, 30000, 1440, 200, 29, 968)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (506, 21, 6, 3, 40000, 2880, 300, 30, 922)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (507, 21, 7, 3, 50000, 5760, 400, 31, 876)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (508, 21, 8, 4, 65000, 7200, 600, 32, 830)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (509, 21, 9, 4, 100000, 11520, 1000, 33, 784)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (510, 21, 10, 5, 125000, 14400, 1200, 34, 738)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1003, 18, 1, 999, 0, 0, 0, 10, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1004, 19, 1, 999, 0, 0, 0, 9, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1005, 20, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1006, 20, 1, 1, 480, 10, 22, 0, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1007, 15, 20, 9, 0, 0, 0, 8000, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1008, 16, 20, 9, 0, 0, 0, 1600, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1010, 11, 14, 3, 40000, 1600, 600, 14, 0)
GO
INSERT [dbo].[Buildings] ([id], [typeEnum], [bLevel], [HQLevelReq], [buildingPrice], [buildingTime], [accelerationPrice], [storageSize], [productionInSeconds]) VALUES (1011, 11, 15, 3, 45000, 1800, 700, 16, 0)
GO
SET IDENTITY_INSERT [dbo].[Buildings] OFF
GO

DELETE FROM [dbo].[Actions]
GO
SET IDENTITY_INSERT [dbo].[Actions] ON 

GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1044, 1, 4, N'com.iron5studio.iron5.beginnerpack', 0, 0, 10, 172800000, N'[2,15,6,7,7]', N'[0,0,0,348,10]', N'[5000,7,1,10,2]', 320, 0, 120, 0, 0, 1, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1051, 3, 1, N'tank3tier', 0, 0, 0, 172800000, N'[0]', N'[224]', N'[1]', 0, 35, 140, 224, 0, 0, 1, 3, 1750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1053, 5, 8, N'com.iron5studio.iron5.gold_offer_03_discount', 172800000, 0, 1, 172800000, N'[10]', N'[]', N'[]', 0, 35, 125, 0, 0, 1, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1055, 2, 3, N'com.iron5studio.iron5.tank2tier', 0, 0, 0, 172800000, N'[0,1,15]', N'[215,11,0]', N'[1,1,1]', 220, 0, 135, 215, 0, 1, 1, 2, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1059, 8, 1, N'tank4tier', 0, 0, 0, 172800000, N'[0]', N'[236]', N'[1]', 0, 35, 150, 236, 0, 0, 1, 4, 2500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1060, 9, 1, N'tank5tier', 0, 0, 0, 172800000, N'[0]', N'[248]', N'[1]', 0, 35, 160, 248, 0, 0, 1, 5, 3500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1061, 10, 1, N'tank6tier', 0, 0, 0, 172800000, N'[0]', N'[260]', N'[1]', 0, 35, 170, 260, 0, 0, 1, 6, 4500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1062, 11, 1, N'tank7tier', 0, 0, 0, 172800000, N'[0]', N'[272]', N'[1]', 0, 35, 180, 272, 0, 0, 1, 7, 5750)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1063, 12, 1, N'tank8tier', 0, 0, 0, 172800000, N'[0]', N'[283]', N'[1]', 0, 35, 190, 283, 0, 0, 1, 8, 7000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1065, 4, 7, N'veteran_crew1', 0, 0, 1, 172800000, N'[1,1,1]', N'[40,27,14]', N'[1,1,1]', 0, 50, 115, 0, 0, 0, 0, 2, 1500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1071, 13, 9, N'upgrade_offer_03', 1451058004130, 1451576404130, 1, 518400000, N'[9]', N'[]', N'[]', 0, 33, 130, 0, 5, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1074, 5, 8, N'com.iron5studio.iron5.gold_offer_03_discount', 1475571600000, 1476435600000, 1, 864000000, N'[10]', N'[]', N'[]', 25, 0, 125, 0, 0, 1, 1, 4, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1079, 14, 1, N'tank9tier', 0, 0, 0, 172800000, N'[0]', N'[293]', N'[1]', 0, 35, 195, 293, 0, 0, 1, 9, 8500)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1081, 15, 1, N'tank10tier', 0, 0, 0, 172800000, N'[0]', N'[302]', N'[1]', 0, 35, 200, 302, 0, 0, 1, 10, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1088, 16, 0, N'components', 1479945600000, 1480032000000, 0, 172800000, N'[13]', N'[]', N'[]', 0, 50, 200, 0, 3, 0, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1092, 17, 0, N'books', 1479945600000, 1480032000000, 0, 172800000, N'[14]', N'[]', N'[]', 0, 50, 200, 0, 3, 0, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1094, 18, 10, N'powerups', 1475575200000, 1476439200000, 0, 172800000, N'[3]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1095, 19, 9, N'parts', 1475575200000, 1476439200000, 0, 172800000, N'[9]', N'[]', N'[]', 0, 45, 200, 0, 3, 0, 1, 1, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1097, 20, 6, N'componentpack1', 0, 0, 0, 172800000, N'[7,7,7,7]', N'[21,22,23,24]', N'[200,200,200,200]', 0, 50, 150, 0, 0, 0, 1, 4, 1000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1100, 21, 6, N'bookpack2', 0, 0, 0, 172800000, N'[7,7,7]', N'[79,80,81]', N'[150,30,15]', 0, 50, 150, 0, 0, 0, 1, 5, 1000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1101, 22, 1, N'tank10tier', 0, 0, 0, 172800000, N'[0]', N'[303]', N'[1]', 0, 35, 200, 303, 0, 0, 1, 10, 10000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1102, 23, 6, N'componentpack2', 0, 0, 0, 172800000, N'[7,7,7,7]', N'[25,26,27,28]', N'[35,35,35,10]', 0, 50, 150, 0, 0, 0, 1, 6, 2000)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1103, 24, 13, N'com.iron5studio.iron5.beginnerpack', 1482537600000, 1482883200000, 0, 172800000, N'[2,15,1]', N'[0,0,61]', N'[3300,30,1]', 300, 0, 120, 0, 0, 1, 1, 3, 0)
GO
INSERT [dbo].[Actions] ([id], [uniqueId], [offerType], [name], [startTrigger], [endTrigger], [levelTrigger], [duration], [itemType], [itemId], [amount], [bonus], [discount], [priority], [item], [shopType], [isPurchase], [counter], [HQLevel], [price]) VALUES (1104, 25, 1, N'tank10tier', 1482537600000, 1482879600000, 0, 172800000, N'[0]', N'[304]', N'[1]', 0, 45, 200, 303, 0, 0, 1, 9, 9000)
GO
SET IDENTITY_INSERT [dbo].[Actions] OFF
GO
