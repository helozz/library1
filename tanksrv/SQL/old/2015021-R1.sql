/*  Перенос миссий для прода*/
USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[NewMissions] ON 

GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [money], [power1], [power1num], [pPoints], [resPoints], [exp], [powermult], [difficulty], [UnitPower], [minPower], [maxPower]) VALUES (8, N'apvp_forest_01', 0, 7, N'apvp_forest_01', 150, 0, 0, 0, 0, 120, 100, 1, 0, 0, 9999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [money], [power1], [power1num], [pPoints], [resPoints], [exp], [powermult], [difficulty], [UnitPower], [minPower], [maxPower]) VALUES (9, N'apvp_forest_02', 0, 7, N'apvp_forest_02', 150, 0, 0, 0, 0, 120, 100, 1, 0, 0, 9999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [money], [power1], [power1num], [pPoints], [resPoints], [exp], [powermult], [difficulty], [UnitPower], [minPower], [maxPower]) VALUES (10, N'apvp_forest_03', 0, 7, N'apvp_forest_03', 150, 0, 0, 0, 0, 120, 100, 1, 0, 0, 9999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [money], [power1], [power1num], [pPoints], [resPoints], [exp], [powermult], [difficulty], [UnitPower], [minPower], [maxPower]) VALUES (11, N'apvp_base_01', 0, 7, N'apvp_base_01', 150, 0, 0, 0, 0, 120, 100, 1, 0, 0, 9999)
GO
INSERT [dbo].[NewMissions] ([id], [name], [fuelcost], [type], [map], [money], [power1], [power1num], [pPoints], [resPoints], [exp], [powermult], [difficulty], [UnitPower], [minPower], [maxPower]) VALUES (12, N'apvp_village_01', 0, 7, N'apvp_village_01', 150, 0, 0, 0, 0, 120, 100, 1, 0, 0, 9999)
GO
SET IDENTITY_INSERT [dbo].[NewMissions] OFF
GO
