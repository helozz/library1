USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

GO
INSERT [dbo].[Offers] ([id], [name], [icon], [costIOS], [costAndroid], [typeGold], [goodsNum], [goodsBonus], [mostPopular], [specialOffer], [active]) VALUES (1002, N'com.ambergames.tanksquadgame.beginner', N'beginner', 5.99, 5.99, 1, 3000, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
