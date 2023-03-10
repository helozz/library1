/* Настройка топов и наград*/
USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[Battles] ON 

GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (1, 1, 1, 1, 0, N'[{"type":7,"item":4,"num":2,},{"type":7,"item":8,"num":3,},{"type":1,"num":65}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (2, 2, 2, 3, 0, N'[{"type":7,"item":3,"num":3,},{"type":7,"item":9,"num":1,},{"type":1,"num":60}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (3, 3, 4, 10, 0, N'[{"type":7,"item":2,"num":5,},{"type":7,"item":8,"num":2,},{"type":1,"num":55}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (4, 4, 11, 20, 0, N'[{"type":7,"item":4,"num":1,},{"type":7,"item":7,"num":3,},{"type":1,"num":50}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (5, 5, 21, 50, 0, N'[{"type":7,"item":1,"num":7,},{"type":7,"item":6,"num":6,},{"type":1,"num":45}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (6, 6, 51, 100, 0, N'[{"type":7,"item":2,"num":3,},{"type":7,"item":9,"num":1,},{"type":1,"num":40}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (7, 7, 101, 250, 0, N'[{"type":7,"item":1,"num":5,},{"type":7,"item":6,"num":4,},{"type":1,"num":35}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (8, 8, 251, 500, 0, N'[{"type":7,"item":3,"num":1,},{"type":7,"item":6,"num":3,},{"type":1,"num":30}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (9, 9, 501, 1000, 0, N'[{"type":7,"item":1,"num":3,},{"type":7,"item":7,"num":1,},{"type":1,"num":25}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (10, 10, 1001, 5000, 0, N'[{"type":7,"item":2,"num":1,},{"type":7,"item":20,"num":4,},{"type":1,"num":15}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (11, 11, 0, 0, 5, N'[{"type":7,"item":19,"num":4,},{"type":7,"item":20,"num":3,},{"type":1,"num":10}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (13, 12, 0, 0, 20, N'[{"type":7,"item":19,"num":3,},{"type":7,"item":20,"num":2,},{"type":1,"num":5}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (14, 13, 0, 0, 25, N'[{"type":7,"item":19,"num":2,},{"type":7,"item":20,"num":1,}]
')
GO
INSERT [dbo].[Battles] ([id], [sector], [fromPlace], [toPlace], [percentage], [dailyRewards]) VALUES (16, 14, 0, 0, 50, N'[{"type":7,"item":19,"num":1,}]
')
GO
SET IDENTITY_INSERT [dbo].[Battles] OFF
GO
