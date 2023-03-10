USE [iron5]
GO
DELETE FROM [dbo].[RandomItems]
GO
DELETE FROM [dbo].[RadarConfigs]
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] ON 

GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (1, 0, 220, 40, 35, 80, 350, 40, 40, 40, 40, 38, 38, 38, 38, 1, 0, 0, 0, 1, 0.45, 0.45, 1.62, 1.98, 2.43, 4.51, 2.22, 5.19)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (2, 221, 420, 40, 35, 80, 350, 40, 40, 40, 40, 14, 14, 14, 14, 1, 0, 0, 0, 1, 0.99, 0.99, 1.62, 1.98, 2.43, 4.51, 2.22, 5.19)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (3, 421, 810, 40, 35, 80, 350, 40, 40, 40, 40, 8, 8, 8, 8, 1, 2, 0, 0, 1, 1.63, 1.63, 1.4, 1.71, 2.1, 3.9, 2.22, 5.19)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (4, 811, 1500, 40, 35, 80, 350, 40, 40, 40, 40, 5, 5, 5, 5, 0, 3, 1, 0, 1, 1.63, 1.63, 0.82, 1, 1.22, 2.27, 2.22, 5.19)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (5, 1501, 2900, 40, 35, 80, 350, 40, 40, 40, 40, 4, 4, 4, 4, 0, 2, 2, 1, 1, 1.63, 1.63, 1.09, 1.34, 1.64, 3.05, 2.98, 6.95)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (6, 2901, 4200, 40, 35, 80, 350, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 2, 1, 1.63, 1.63, 1.27, 1.55, 1.91, 3.54, 3.46, 8.08)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (7, 4201, 7000, 40, 35, 80, 350, 40, 40, 40, 40, 3, 3, 3, 3, 0, 2, 2, 3, 1, 1.63, 1.63, 1.38, 1.69, 2.07, 3.85, 3.76, 8.77)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (8, 7001, 15000, 40, 35, 80, 350, 40, 40, 40, 40, 2, 2, 2, 2, 0, 2, 4, 5, 1, 1.63, 1.63, 1.09, 1.34, 1.65, 3.06, 2.99, 6.97)
GO
INSERT [dbo].[RadarConfigs] ([id], [minPower], [maxPower], [mVeasy], [mEasy], [mNorm], [mHard], [eVeasy], [eEasy], [eNorm], [eHard], [pVeasy], [pEasy], [pNorm], [pHard], [dVeasy], [dEasy], [dNorm], [dHard], [bundleId], [compMinVeasy], [compMaxVeasy], [compMinEasy], [compMaxEasy], [compMinNorm], [compMaxNorm], [compMinHard], [compMaxHard]) VALUES (9, 15001, 99999, 40, 35, 80, 350, 40, 40, 40, 40, 2, 2, 2, 2, 0, 1, 4, 5, 1, 1.63, 1.63, 1.09, 1.34, 1.65, 3.06, 2.99, 6.97)
GO
SET IDENTITY_INSERT [dbo].[RadarConfigs] OFF
GO
SET IDENTITY_INSERT [dbo].[RandomItems] ON 

GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"tier1","items":[21,22,23,24,25,26,27,28],"weights":[29,38,43,10,0,0,0,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (2, N'{"ident":"tier2","items":[21,22,23,24,25,26,27,28],"weights":[28,23,21,10,3,4,3,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (3, N'{"ident":"tier3","items":[21,22,23,24,25,26,27,28],"weights":[25,8,12,22,1,3,10,0]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (4, N'{"ident":"tier4","items":[21,22,23,24,25,26,27,28],"weights":[26,12,18,14,3,1,6,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (5, N'{"ident":"tier5","items":[21,22,23,24,25,26,27,28],"weights":[32,9,22,12,2,1,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (6, N'{"ident":"tier6","items":[21,22,23,24,25,26,27,28],"weights":[21,20,18,11,2,4,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (7, N'{"ident":"tier7","items":[21,22,23,24,25,26,27,28],"weights":[29,16,23,8,1,3,3,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (8, N'{"ident":"tier8","items":[21,22,23,24,25,26,27,28],"weights":[26,17,21,8,2,3,4,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (9, N'{"ident":"tier9","items":[21,22,23,24,25,26,27,28],"weights":[30,15,24,6,1,3,3,1]}')
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (10, N'{"ident":"tier10","items":[21,22,23,24,25,26,27,28],"weights":[28,19,24,3,2,4,2,1]}')
GO
SET IDENTITY_INSERT [dbo].[RandomItems] OFF
GO
