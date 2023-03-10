USE [tankwars_test]
GO
DELETE FROM [dbo].[Skills]
GO
DELETE FROM [dbo].[Defines]
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaAttackBonusPrice', N'30')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaBonusDuration', N'259200000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ArenaDefenceBonusPrice', N'5000')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BattleMaxAttempts', N'10')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventRewards', N'"[{''points'':2,''rewards'':[{''type'':7,''num'':1,''item'':19}]},{''points'':50,''rewards'':[{''type'':7,''num'':3,''item'':19}]},{''points'':100,''rewards'':[{''type'':7,''num'':10,''item'':79}]},{''points'':200,''rewards'':[{''type'':7,''num'':20,''item'':22},{''type'':7,''num'':20,''item'':23},{''type'':7,''num'':20,''item'':24}]},{''points'':300,''rewards'':[{''type'':7,''num'':15,''item'':21},{''type'':7,''num'':5,''item'':80}]},{''points'':600,''rewards'':[{''type'':7,''num'':1,''item'':3},{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':700}]},{''points'':800,''rewards'':[{''type'':7,''num'':15,''item'':25},{''type'':7,''num'':15,''item'':26},{''type'':7,''num'':15,''item'':27}]},{''points'':1000,''rewards'':[{''type'':7,''num'':1,''item'':81},{''type'':7,''num'':3,''item'':28},{''type'':1,''num'':100}]},{''points'':1250,''rewards'':[{''type'':7,''num'':1,''item'':309},{''type'':7,''num'':10,''item'':80}]},{''points'':1500,''rewards'':[{''type'':7,''num'':25,''item'':25},{''type'':7,''num'':25,''item'':26},{''type'':7,''num'':25,''item'':27}]},{''points'':2000,''rewards'':[{''type'':7,''num'':1,''item'':8},{''type'':7,''num'':1,''item'':702}]},{''points'':2500,''rewards'':[{''type'':7,''num'':50,''item'':79},{''type'':7,''num'':10,''item'':80}]},{''points'':3000,''rewards'':[{''type'':7,''num'':1,''item'':4},{''type'':7,''num'':3,''item'':306}]},{''points'':4000,''rewards'':[{''type'':7,''num'':1,''item'':704}]},{''points'':5000,''rewards'':[{''type'':7,''num'':2,''item'':81},{''type'':7,''num'':5,''item'':28},{''type'':1,''num'':150}]},{''points'':7000,''rewards'':[{''type'':7,''num'':1,''item'':5},{''type'':7,''num'':1,''item'':10}]},{''points'':8500,''rewards'':[{''type'':7,''num'':3,''item'':318},{''type'':7,''num'':2,''item'':704}]},{''points'':10000,''rewards'':[{''type'':7,''num'':4,''item'':81},{''type'':7,''num'':8,''item'':28},{''type'':1,''num'':250}]},{''points'':12500,''rewards'':[{''type'':7,''num'':1,''item'':706}]}]"')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitMoney', N'200')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'SellTankPrice', N'0.5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1463')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TechTreeLinks', N'"[{''s'':201,''d'':216},{''s'':216,''d'':226},{''s'':204,''d'':211},{''s'':211,''d'':219},{''s'':219,''d'':229},{''s'':229,''d'':231},{''s'':229,''d'':240},{''s'':240,''d'':252},{''s'':252,''d'':262},{''s'':231,''d'':243},{''s'':243,''d'':254},{''s'':254,''d'':264},{''s'':254,''d'':256},{''s'':256,''d'':267},{''s'':267,''d'':279},{''s'':279,''d'':289},{''s'':289,''d'':298},{''s'':214,''d'':222},{''s'':222,''d'':234},{''s'':234,''d'':247},{''s'':247,''d'':270},{''s'':270,''d'':282},{''s'':282,''d'':292},{''s'':292,''d'':299},{''s'':209,''d'':217},{''s'':217,''d'':227},{''s'':227,''d'':238},{''s'':238,''d'':250},{''s'':238,''d'':241},{''s'':212,''d'':220},{''s'':220,''d'':241},{''s'':220,''d'':221},{''s'':221,''d'':232},{''s'':232,''d'':244},{''s'':244,''d'':255},{''s'':255,''d'':265},{''s'':265,''d'':276},{''s'':276,''d'':286},{''s'':265,''d'':268},{''s'':268,''d'':278},{''s'':278,''d'':288},{''s'':288,''d'':297},{''s'':235,''d'':245},{''s'':245,''d'':258},{''s'':245,''d'':259},{''s'':259,''d'':271},{''s'':271,''d'':280},{''s'':280,''d'':290},{''s'':290,''d'':301},{''s'':200,''d'':208},{''s'':208,''d'':225},{''s'':225,''d'':237},{''s'':237,''d'':249},{''s'':249,''d'':261},{''s'':261,''d'':273},{''s'':203,''d'':210},{''s'':210,''d'':218},{''s'':218,''d'':228},{''s'':228,''d'':239},{''s'':239,''d'':251},{''s'':251,''d'':274},{''s'':274,''d'':284},{''s'':284,''d'':294},{''s'':228,''d'':230},{''s'':230,''d'':242},{''s'':242,''d'':253},{''s'':253,''d'':263},{''s'':263,''d'':275},{''s'':275,''d'':285},{''s'':285,''d'':295},{''s'':263,''d'':266},{''s'':266,''d'':277},{''s'':277,''d'':287},{''s'':287,''d'':296},{''s'':205,''d'':213},{''s'':213,''d'':223},{''s'':223,''d'':233},{''s'':233,''d'':246},{''s'':246,''d'':257},{''s'':257,''d'':269},{''s'':269,''d'':281},{''s'':281,''d'':291},{''s'':291,''d'':300},{''s'':273,''d'':274},{''s'':226,''d'':229},{''s'':202,''d'':209}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewardHints', N'"[{''name'':''camp_missions'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':3,''type'':4},{''lvl'':1,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''campaign'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':4,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''event'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':2,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''pvp'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''easy_radar'',''rewards'':[{''lvl'':1,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''normal_radar'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''hard_radar'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':2,''type'':5},{''lvl'':4,''type'':4},{''lvl'':4,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''quests'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''arena'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''top'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''top_up'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]},{''name'':''market'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''level_up'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewards', N'"[{''points'':25,''rewards'':[{''type'':0,''num'':500}]},{''points'':50,''rewards'':[{''type'':5,''num'':222}]},{''points'':75,''rewards'':[{''type'':7,''num'':1,''item'':28},{''type'':7,''num'':1,''item'':81}]},{''points'':120,''rewards'':[{''type'':1,''num'':50},{''type'':5,''num'':150}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TWLinkGold', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UnitHireBattles', N'5')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeDropPrice', N'300')
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (193, 27, N'cautious_leader', N'cautious_leader', 1, 1, 2, 70, 1, 30, 37, 4, 48, 2, 3, 1, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (194, 27, N'cautious_leader', N'cautious_leader', 1, 2, 2, 68, 1, 30, 37, 4, 48, 2, 3, 2, 4, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (195, 27, N'cautious_leader', N'cautious_leader', 1, 3, 2, 66, 1, 30, 37, 4, 48, 2, 3, 3, 4, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (196, 27, N'cautious_leader', N'cautious_leader', 1, 4, 2, 64, 1, 35, 37, 4, 48, 2, 3, 4, 4, 2)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (197, 27, N'cautious_leader', N'cautious_leader', 1, 5, 2, 62, 1, 35, 37, 4, 48, 2, 3, 5, 4, 3)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (198, 27, N'cautious_leader', N'cautious_leader', 1, 6, 2, 60, 1, 40, 37, 4, 48, 2, 3, 6, 4, 4)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (199, 27, N'cautious_leader', N'cautious_leader', 1, 7, 2, 58, 1, 40, 37, 4, 48, 2, 3, 7, 4, 5)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (200, 27, N'cautious_leader', N'cautious_leader', 1, 8, 2, 56, 1, 45, 37, 4, 48, 2, 3, 8, 4, 6)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (201, 27, N'cautious_leader', N'cautious_leader', 1, 9, 2, 54, 1, 45, 37, 4, 48, 2, 3, 10, 4, 8)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (202, 28, N'HEAT_shot', N'HEAT_shot', 1, 1, 2, 60, 45, 4, 43, 6, 32, -20, 1, 12, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (203, 28, N'HEAT_shot', N'HEAT_shot', 1, 2, 2, 59, 45, 4, 43, 8, 32, -22, 1, 13, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (204, 28, N'HEAT_shot', N'HEAT_shot', 1, 3, 2, 58, 45, 4, 43, 10, 32, -24, 1, 14, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (205, 28, N'HEAT_shot', N'HEAT_shot', 1, 4, 2, 57, 45, 4, 43, 12, 32, -26, 1, 15, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (206, 28, N'HEAT_shot', N'HEAT_shot', 1, 5, 2, 56, 45, 4, 43, 14, 32, -28, 1, 16, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (207, 28, N'HEAT_shot', N'HEAT_shot', 1, 6, 2, 55, 45, 4, 43, 16, 32, -30, 1, 17, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (208, 28, N'HEAT_shot', N'HEAT_shot', 1, 7, 2, 54, 45, 4, 43, 18, 32, -32, 1, 18, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (209, 28, N'HEAT_shot', N'HEAT_shot', 1, 8, 2, 52, 45, 4, 43, 20, 32, -35, 1, 19, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (210, 28, N'HEAT_shot', N'HEAT_shot', 1, 9, 2, 50, 45, 4, 43, 22, 32, -40, 1, 20, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (211, 28, N'HEAT_shot', N'HEAT_shot', 1, 10, 2, 50, 45, 4, 43, 24, 32, -40, 1, 21, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (212, 28, N'HEAT_shot', N'HEAT_shot', 1, 11, 2, 50, 45, 4, 43, 26, 32, -40, 1, 22, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (213, 28, N'HEAT_shot', N'HEAT_shot', 1, 12, 2, 50, 45, 4, 43, 30, 32, -40, 1, 23, 37, 1)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (214, 29, N'HE_shot', N'HE_shot', 1, 1, 2, 60, 43, -10, 36, 30, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (215, 29, N'HE_shot', N'HE_shot', 1, 2, 2, 59, 43, -7, 36, 35, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (216, 29, N'HE_shot', N'HE_shot', 1, 3, 2, 58, 43, -6, 36, 40, 1, 5, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (217, 29, N'HE_shot', N'HE_shot', 1, 4, 2, 57, 43, 1, 36, 45, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (218, 29, N'HE_shot', N'HE_shot', 1, 5, 2, 56, 43, 3, 36, 50, 1, 6, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (219, 29, N'HE_shot', N'HE_shot', 1, 6, 2, 55, 43, 6, 36, 53, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (220, 29, N'HE_shot', N'HE_shot', 1, 7, 2, 54, 43, 9, 36, 56, 1, 8, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (221, 29, N'HE_shot', N'HE_shot', 1, 8, 2, 53, 43, 12, 36, 59, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (222, 29, N'HE_shot', N'HE_shot', 1, 9, 2, 52, 43, 15, 36, 62, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (223, 29, N'HE_shot', N'HE_shot', 1, 10, 2, 51, 43, 18, 36, 65, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (224, 29, N'HE_shot', N'HE_shot', 1, 11, 2, 50, 43, 21, 36, 68, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (225, 29, N'HE_shot', N'HE_shot', 1, 12, 2, 49, 43, 24, 36, 71, 1, 10, 37, 1, 48, 29)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (226, 30, N'sniper_shot', N'sniper_shot', 1, 1, 2, 66, 43, 8, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (227, 30, N'sniper_shot', N'sniper_shot', 1, 2, 2, 65, 43, 12, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (228, 30, N'sniper_shot', N'sniper_shot', 1, 3, 2, 64, 43, 16, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (229, 30, N'sniper_shot', N'sniper_shot', 1, 4, 2, 63, 43, 20, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (230, 30, N'sniper_shot', N'sniper_shot', 1, 5, 2, 62, 43, 24, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (231, 30, N'sniper_shot', N'sniper_shot', 1, 6, 2, 61, 43, 28, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (232, 30, N'sniper_shot', N'sniper_shot', 1, 7, 2, 60, 43, 32, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (233, 30, N'sniper_shot', N'sniper_shot', 1, 8, 2, 59, 43, 36, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (234, 30, N'sniper_shot', N'sniper_shot', 1, 9, 2, 58, 43, 40, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (235, 30, N'sniper_shot', N'sniper_shot', 1, 10, 2, 57, 43, 45, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (236, 30, N'sniper_shot', N'sniper_shot', 1, 11, 2, 56, 43, 50, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (237, 30, N'sniper_shot', N'sniper_shot', 1, 12, 2, 52, 43, 55, 44, 1, 45, 3, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (238, 31, N'machinegun', N'machinegun', 1, 1, 2, 50, 40, 620, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (239, 31, N'machinegun', N'machinegun', 1, 2, 2, 49, 40, 621, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (240, 31, N'machinegun', N'machinegun', 1, 3, 2, 47, 40, 622, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (241, 31, N'machinegun', N'machinegun', 1, 4, 2, 45, 40, 623, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (242, 31, N'machinegun', N'machinegun', 1, 5, 2, 43, 40, 624, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (243, 31, N'machinegun', N'machinegun', 1, 6, 2, 41, 40, 625, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (244, 31, N'machinegun', N'machinegun', 1, 7, 2, 39, 40, 626, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (245, 31, N'machinegun', N'machinegun', 1, 8, 2, 37, 40, 627, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (246, 31, N'machinegun', N'machinegun', 1, 9, 2, 35, 40, 628, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (247, 31, N'machinegun', N'machinegun', 1, 10, 2, 35, 40, 629, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (248, 31, N'machinegun', N'machinegun', 1, 11, 2, 35, 40, 630, 41, 3, 45, 2, 42, 1, 12, 12)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (249, 31, N'machinegun', N'machinegun', 1, 12, 2, 35, 40, 631, 41, 3, 45, 2, 42, 1, 12, 12)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (262, 33, N'rocket_missile', N'rocket_missile', 1, 1, 2, 60, 45, 5, 35, 3, 58, -50, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (263, 33, N'rocket_missile', N'rocket_missile', 1, 2, 2, 59, 45, 5, 35, 3, 58, -47, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (264, 33, N'rocket_missile', N'rocket_missile', 1, 3, 2, 58, 45, 5, 35, 3, 58, -44, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (265, 33, N'rocket_missile', N'rocket_missile', 1, 4, 2, 57, 45, 5, 35, 3, 58, -41, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (266, 33, N'rocket_missile', N'rocket_missile', 1, 5, 2, 56, 45, 5, 35, 3, 58, -38, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (267, 33, N'rocket_missile', N'rocket_missile', 1, 6, 2, 55, 45, 5, 35, 3, 58, -35, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (268, 33, N'rocket_missile', N'rocket_missile', 1, 7, 2, 54, 45, 5, 35, 3, 58, -32, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (269, 33, N'rocket_missile', N'rocket_missile', 1, 8, 2, 52, 45, 5, 35, 3, 58, -29, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (270, 33, N'rocket_missile', N'rocket_missile', 1, 9, 2, 50, 45, 5, 35, 3, 58, -26, 43, -10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (271, 33, N'rocket_missile', N'rocket_missile', 1, 10, 2, 50, 45, 5, 35, 3, 58, -23, 43, -7, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (272, 33, N'rocket_missile', N'rocket_missile', 1, 11, 2, 50, 45, 5, 35, 3, 58, -20, 43, -3, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (273, 33, N'rocket_missile', N'rocket_missile', 1, 12, 2, 50, 45, 5, 35, 3, 58, -17, 43, 1, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (274, 34, N'mines', N'mines', 1, 1, 2, 30, 1, 4, 50, 640, 36, 13, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (275, 34, N'mines', N'mines', 1, 2, 2, 30, 1, 4, 50, 641, 36, 14, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (276, 34, N'mines', N'mines', 1, 3, 2, 30, 1, 5, 50, 642, 36, 15, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (277, 34, N'mines', N'mines', 1, 4, 2, 30, 1, 5, 50, 643, 36, 17, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (278, 34, N'mines', N'mines', 1, 5, 2, 30, 1, 5, 50, 644, 36, 19, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (279, 34, N'mines', N'mines', 1, 6, 2, 30, 1, 5, 50, 645, 36, 21, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (280, 34, N'mines', N'mines', 1, 7, 2, 30, 1, 5, 50, 646, 36, 23, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (281, 34, N'mines', N'mines', 1, 8, 2, 30, 1, 6, 50, 647, 36, 25, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (282, 34, N'mines', N'mines', 1, 9, 2, 30, 1, 6, 50, 648, 36, 27, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (283, 34, N'mines', N'mines', 1, 10, 2, 30, 1, 6, 50, 649, 36, 29, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (284, 34, N'mines', N'mines', 1, 11, 2, 30, 1, 6, 50, 650, 36, 31, 0, 0, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (285, 34, N'mines', N'mines', 1, 12, 2, 30, 1, 6, 50, 651, 36, 33, 0, 0, 0, 0)
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
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (295, 36, N'binoculars', N'binoculars', 1, 1, 2, 80, 1, 32, 51, 1, 26, 8, 27, 8, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (296, 36, N'binoculars', N'binoculars', 1, 2, 2, 79, 1, 33, 51, 1, 26, 9, 27, 9, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (297, 36, N'binoculars', N'binoculars', 1, 3, 2, 78, 1, 34, 51, 1, 26, 10, 27, 10, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (298, 36, N'binoculars', N'binoculars', 1, 4, 2, 77, 1, 35, 51, 1, 26, 11, 27, 11, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (299, 36, N'binoculars', N'binoculars', 1, 5, 2, 76, 1, 36, 51, 1, 26, 12, 27, 12, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (300, 36, N'binoculars', N'binoculars', 1, 6, 2, 74, 1, 38, 51, 1, 26, 13, 27, 13, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (301, 36, N'binoculars', N'binoculars', 1, 7, 2, 72, 1, 40, 51, 1, 26, 14, 27, 14, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (302, 36, N'binoculars', N'binoculars', 1, 8, 2, 70, 1, 42, 51, 1, 26, 15, 27, 15, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (303, 36, N'binoculars', N'binoculars', 1, 9, 2, 68, 1, 44, 51, 1, 26, 16, 27, 16, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (304, 36, N'binoculars', N'binoculars', 1, 10, 2, 66, 1, 46, 51, 1, 26, 17, 27, 17, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (305, 36, N'binoculars', N'binoculars', 1, 11, 2, 64, 1, 48, 51, 1, 26, 18, 27, 18, 0, 0)
GO
INSERT [dbo].[Skills] ([id], [skillId], [name], [icon], [type], [lvl], [param1], [value1], [param2], [value2], [param3], [value3], [param4], [value4], [param5], [value5], [param6], [value6]) VALUES (306, 36, N'binoculars', N'binoculars', 1, 12, 2, 62, 1, 50, 51, 1, 26, 20, 27, 20, 0, 0)
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
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
