USE [tankwars_test]

GO
DELETE FROM [dbo].[Defines]
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'BuildingsLimit', N'0,1,1,10,10,10,10,10,10,10,3,1,3,1000,1000,0,0,0,0,0,1')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ClanMaxPlaceLimit', N'35')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ComponentsCost', N'3,30,150')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewCostPowerGrowthDaily', N'1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEnforcePrices', N'0,2000,5000,10000,20000')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewEvolvePrices', N'0,200,1700,9300,35400')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'CrewTierExp', N'200,1,4,9,15,0.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'DifficultyMult', N'0,0.2,0.4,0.6,1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EventMissionDifficultyMult', N'0.62,0.8,0.9')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'EvolveChangeEliteToElite', N'0,0,360,1190,1765,2215,2975,4225,6100,9195,7625')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'FuelPrice', N'50')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GMCourse', N'2.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'GRCourse', N'5')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'HealWoundPrices', N'0.03,0.03,0.05,0.07')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitFriendExperience', N'1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitGold', N'200')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitMoney', N'2020')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitParts', N'290')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitSlots', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'InitTank', N'3')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'MissionEventResurrectTankCost', N'100')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'RefreshMarketPrice', N'10')
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
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'StaticVersion', N'1034')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRenameCost', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TankRestorePrice', N'15')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewardHints', N'"[{''name'':''camp_missions'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':3,''type'':4},{''lvl'':1,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''campaign'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':4,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''event'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':2,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''pvp'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''easy_radar'',''rewards'':[{''lvl'':1,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''normal_radar'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':2,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''hard_radar'',''rewards'':[{''lvl'':4,''type'':0},{''lvl'':2,''type'':5},{''lvl'':4,''type'':4},{''lvl'':4,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''quests'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''arena'',''rewards'':[{''lvl'':3,''type'':0},{''lvl'':2,''type'':5},{''lvl'':2,''type'':4},{''lvl'':3,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''top'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':2,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':2,''type'':1}]},{''name'':''top_up'',''rewards'':[{''lvl'':0,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]},{''name'':''market'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':0,''type'':1}]},{''name'':''level_up'',''rewards'':[{''lvl'':2,''type'':0},{''lvl'':0,''type'':5},{''lvl'':0,''type'':4},{''lvl'':0,''type'':7},{''lvl'':3,''type'':1}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TodoRewards', N'"[{''points'':25,''rewards'':[{''type'':0,''num'':500}]},{''points'':50,''rewards'':[{''type'':5,''num'':222}]},{''points'':75,''rewards'':[{''type'':7,''num'':5,''item'':21},{''type'':7,''num'':5,''item'':23}]},{''points'':120,''rewards'':[{''type'':1,''num'':50},{''type'':5,''num'':150}]}]"')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'TWLinkGold', N'20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeDropPrice', N'300')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpgradeMultiplier', N'1,1.1,1.2,1.3,1.4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UpperMult', N'1.1')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserFriendReward', N'2')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'UserTierLevels', N'0,10,20')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneShieldHours', N'4')
GO
INSERT [dbo].[Defines] ([n], [s]) VALUES (N'ZoneUnderAttack', N'300')
GO

DELETE FROM [dbo].[Upgrades]
GO
DELETE FROM [dbo].[MissionEvents]
GO
DELETE FROM [dbo].[Items]
GO
DELETE FROM [dbo].[Evolves]
GO
DELETE FROM [dbo].[Campaigns]
GO
DELETE FROM [dbo].[BlindBuys]
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] ON 

GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1, N'{"gold":0,"money":1600,"ident":"basic_tier_1","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2, N'{"gold":0,"money":2400,"ident":"advanced_tier_1","items":[{"tank":4,"weight":100,"upgrades":[]},{"tank":12,"weight":67,"upgrades":[]},{"tank":58,"weight":83,"upgrades":[]}],"mask":7,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (28, N'{"ident":"hidden_1","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":57,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (29, N'{"ident":"hidden_2","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":11,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (30, N'{"ident":"hidden_3","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":1,"weight":13,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1002, N'{"ident":"common_crew1","money":2300,"mask":8,"items":[{"tier":1,"weight":9},{"tier":2,"weight":1}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1003, N'{"ident":"veteran_crew1","gold":190,"mask":8,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1006, N'{"ident":"newbie_common_crew1","money":900,"mask":24,"items":[{"tier":1,"weight":9,"ids":[2,3,4,5]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1007, N'{"ident":"newbie_veteran_crew1","money":0,"mask":24,"items":[{"tier":2,"weight":8},{"tier":3,"weight":2}],"gold":190}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1008, N'{"ident":"com.iron5studio.iron5.tank2tier","gold":0,"money":0,"items":[{"tank":23},{"crew":5,"tier":3}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1009, N'{"ident":"tank3tier","gold":1000,"money":0,"items":[{"tank":21}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1011, N'{"gold":1250,"money":0,"ident":"basic_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":53,"upgrades":[]}],"mask":7,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1012, N'{"gold":2350,"money":0,"ident":"basic_tier_3_reinforcement","items":[{"tank":2,"weight":44,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":7,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1013, N'{"gold":4900,"money":0,"ident":"basic_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":40,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":7,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1014, N'{"gold":8750,"money":0,"ident":"basic_tier_5_reinforcement","items":[{"tank":24,"weight":44,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":7,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1015, N'{"gold":14200,"money":0,"ident":"basic_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":34,"upgrades":[]}],"mask":7,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1016, N'{"gold":22450,"money":0,"ident":"basic_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":40,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":7,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1017, N'{"gold":34250,"money":0,"ident":"basic_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":34,"upgrades":[]}],"mask":7,"tier":8}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1018, N'{"ident":"hidden_4","tier":1,"money":0,"gold":0,"mask":0,"items":[{"tank":41,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1027, N'{"ident":"hidden_2_tier_tank","tier":2,"money":0,"gold":0,"mask":0,"items":[{"tank":23,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1028, N'{"ident":"hidden_3_tier_tank","tier":3,"money":0,"gold":0,"mask":0,"items":[{"tank":2,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1029, N'{"ident":"hidden_4_tier_tank","tier":4,"money":0,"gold":0,"mask":0,"items":[{"tank":49,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1030, N'{"ident":"hidden_5_tier_tank","tier":5,"money":0,"gold":0,"mask":0,"items":[{"tank":24,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1031, N'{"ident":"hidden_6_tier_tank","tier":6,"money":0,"gold":0,"mask":0,"items":[{"tank":81,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1032, N'{"ident":"hidden_7_tier_tank","tier":7,"money":0,"gold":0,"mask":0,"items":[{"tank":87,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (1033, N'{"ident":"hidden_8_tier_tank","tier":8,"money":0,"gold":0,"mask":0,"items":[{"tank":103,"weight":1,"upgrades":[]}]}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2001, N'{"ident":"event_tier_1_reinforcement","items":[{"tank":3,"weight":100,"upgrades":[]},{"tank":11,"weight":67,"upgrades":[]},{"tank":57,"weight":83,"upgrades":[]}],"mask":6,"tier":1}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2002, N'{"ident":"event_tier_2_reinforcement","items":[{"tank":5,"weight":100,"upgrades":[]},{"tank":9,"weight":83,"upgrades":[]},{"tank":13,"weight":67,"upgrades":[]},{"tank":23,"weight":17,"upgrades":[]}],"mask":6,"tier":2}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2003, N'{"ident":"event_tier_3_reinforcement","items":[{"tank":2,"weight":15,"upgrades":[]},{"tank":17,"weight":100,"upgrades":[]},{"tank":19,"weight":83,"upgrades":[]},{"tank":25,"weight":67,"upgrades":[]},{"tank":27,"weight":50,"upgrades":[]},{"tank":33,"weight":56,"upgrades":[]}],"mask":6,"tier":3}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2004, N'{"ident":"event_tier_4_reinforcement","items":[{"tank":29,"weight":50,"upgrades":[]},{"tank":37,"weight":100,"upgrades":[]},{"tank":42,"weight":83,"upgrades":[]},{"tank":45,"weight":67,"upgrades":[]},{"tank":49,"weight":13,"upgrades":[]},{"tank":75,"weight":56,"upgrades":[]}],"mask":6,"tier":4}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2005, N'{"ident":"event_tier_5_reinforcement","items":[{"tank":24,"weight":15,"upgrades":[]},{"tank":39,"weight":100,"upgrades":[]},{"tank":47,"weight":67,"upgrades":[]},{"tank":51,"weight":50,"upgrades":[]},{"tank":55,"weight":56,"upgrades":[]},{"tank":63,"weight":83,"upgrades":[]}],"mask":6,"tier":5}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2006, N'{"ident":"event_tier_6_reinforcement","items":[{"tank":59,"weight":100,"upgrades":[]},{"tank":65,"weight":83,"upgrades":[]},{"tank":67,"weight":67,"upgrades":[]},{"tank":71,"weight":50,"upgrades":[]},{"tank":77,"weight":56,"upgrades":[]},{"tank":79,"weight":43,"upgrades":[]},{"tank":81,"weight":11,"upgrades":[]}],"mask":6,"tier":6}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2007, N'{"ident":"event_tier_7_reinforcement","items":[{"tank":61,"weight":100,"upgrades":[]},{"tank":69,"weight":67,"upgrades":[]},{"tank":73,"weight":50,"upgrades":[]},{"tank":82,"weight":83,"upgrades":[]},{"tank":85,"weight":56,"upgrades":[]},{"tank":87,"weight":13,"upgrades":[]},{"tank":88,"weight":43,"upgrades":[]}],"mask":6,"tier":7}')
GO
INSERT [dbo].[BlindBuys] ([id], [json]) VALUES (2008, N'{"ident":"event_tier_8_reinforcement","items":[{"tank":90,"weight":100,"upgrades":[]},{"tank":93,"weight":83,"upgrades":[]},{"tank":95,"weight":67,"upgrades":[]},{"tank":97,"weight":56,"upgrades":[]},{"tank":99,"weight":50,"upgrades":[]},{"tank":101,"weight":43,"upgrades":[]},{"tank":103,"weight":11,"upgrades":[]}],"mask":6,"tier":8}')
GO
SET IDENTITY_INSERT [dbo].[BlindBuys] OFF
GO
SET IDENTITY_INSERT [dbo].[Campaigns] ON 

GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (1, 1, 0, N'c01', 0, 1, 4, 0, 400, 0, 5, 100, 0, -1, 0, 0, 0, N'0 hidden_2', 2, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (2, 1, 1, N'c01_m01', 0, 1, 4, 0, 208, 0, 4, 50, 0, -1, 0, 0, 52, N'0 hidden_1', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (3, 1, 2, N'c01_m02', 0, 1, 4, 0, 218, 0, 4, 100, 0, 3, 1, 16, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (4, 1, 3, N'c01_m03', 0, 1, 4, 0, 222, 0, 4, 150, 0, 7, 2, 21, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (5, 1, 4, N'c01_m04', 0, 1, 4, 0, 232, 0, 4, 200, 0, 7, 2, 22, 115, N'', 0, 5)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (6, 2, 0, N'c02', 0, 1, 5, 0, 500, 0, 5, 140, 0, -1, 0, 0, 0, N'', 3, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (7, 2, 1, N'c02_m01', 0, 1, 5, 0, 238, 0, 4, 550, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (8, 2, 2, N'c02_m02', 0, 1, 5, 0, 242, 0, 4, 600, 0, 7, 1, 2, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (9, 2, 3, N'c02_m03', 0, 1, 5, 0, 247, 0, 4, 650, 0, 7, 1, 12, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (10, 2, 4, N'c02_m04', 0, 1, 5, 0, 252, 0, 4, 700, 0, 7, 1, 22, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (11, 2, 5, N'c02_m05', 0, 1, 5, 0, 256, 0, 4, 750, 0, 7, 2, 23, 188, N'', 0, 6)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (12, 3, 0, N'c03', 0, 1, 5, 0, 600, 0, 5, 190, 0, -1, 0, 0, 0, N'', 4, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (13, 3, 1, N'c03_m01', 0, 1, 5, 0, 266, 0, 4, 1050, 0, 7, 1, 3, 188, N'0 hidden_3', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (14, 3, 2, N'c03_m02', 0, 1, 5, 0, 271, 0, 4, 1100, 0, 7, 1, 12, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (15, 3, 3, N'c03_m03', 0, 1, 5, 0, 276, 0, 4, 1150, 0, 7, 1, 24, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (16, 3, 4, N'c03_m04', 0, 1, 5, 0, 281, 0, 4, 1200, 0, 7, 2, 23, 264, N'', 0, 7)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (17, 4, 0, N'c04', 0, 1, 5, 0, 700, 0, 5, 250, 0, -1, 0, 0, 0, N'', 5, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (18, 4, 1, N'c04_m01', 0, 1, 5, 0, 290, 0, 4, 1550, 0, 7, 1, 4, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (19, 4, 2, N'c04_m02', 0, 1, 5, 0, 295, 0, 4, 1600, 0, 7, 1, 12, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (20, 4, 3, N'c04_m03', 0, 1, 5, 0, 301, 0, 4, 1650, 0, 7, 1, 22, 264, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (21, 4, 4, N'c04_m04', 0, 1, 5, 0, 310, 0, 4, 1700, 0, 7, 1, 21, 326, N'', 0, 8)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (22, 5, 0, N'c05', 0, 1, 5, 0, 800, 0, 5, 330, 0, -1, 0, 0, 0, N'', 6, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (23, 5, 1, N'c05_m01', 0, 1, 5, 0, 324, 0, 4, 2050, 0, 7, 1, 3, 375, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (24, 5, 2, N'c05_m02', 0, 1, 5, 0, 329, 0, 4, 2100, 0, 7, 1, 3, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (25, 5, 3, N'c05_m03', 0, 1, 5, 0, 336, 0, 4, 2150, 0, 7, 1, 13, 399, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (26, 5, 4, N'c05_m04', 0, 1, 5, 0, 345, 0, 4, 2200, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (27, 5, 5, N'c05_m05', 0, 1, 5, 0, 350, 0, 4, 2250, 0, -1, 0, 0, 428, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (28, 5, 6, N'c05_m06', 0, 1, 5, 0, 358, 0, 4, 2300, 0, 7, 1, 22, 462, N'', 0, 9)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (29, 6, 0, N'c06', 0, 1, 5, 0, 900, 0, 5, 430, 0, -1, 0, 0, 0, N'', 7, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (30, 6, 1, N'c06_m01', 0, 1, 5, 0, 384, 0, 4, 2550, 0, 7, 1, 3, 462, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (31, 6, 2, N'c06_m02', 0, 1, 5, 0, 388, 0, 4, 2600, 0, 7, 1, 3, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (32, 6, 3, N'c06_m03', 0, 1, 5, 0, 395, 0, 4, 2650, 0, 7, 1, 13, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (33, 6, 4, N'c06_m04', 0, 1, 5, 0, 405, 0, 4, 2700, 0, -1, 0, 0, 491, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (34, 6, 5, N'c06_m05', 0, 1, 5, 0, 412, 0, 4, 2750, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (35, 6, 6, N'c06_m06', 0, 1, 5, 0, 420, 0, 4, 2800, 0, -1, 0, 0, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (36, 6, 7, N'c06_m07', 0, 1, 5, 0, 429, 0, 4, 2850, 0, 7, 1, 23, 572, N'', 0, 10)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (37, 7, 0, N'c07', 0, 1, 5, 0, 1100, 0, 5, 550, 0, -1, 0, 0, 0, N'', 8, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (38, 7, 1, N'c07_m01', 0, 1, 5, 0, 458, 0, 4, 3050, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (39, 7, 2, N'c07_m02', 0, 1, 5, 0, 466, 0, 4, 3100, 0, 7, 1, 3, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (40, 7, 3, N'c07_m03', 0, 1, 5, 0, 476, 0, 4, 3150, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (41, 7, 4, N'c07_m04', 0, 1, 5, 0, 484, 0, 4, 3200, 0, 7, 1, 14, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (42, 7, 5, N'c07_m05', 0, 1, 5, 0, 482, 0, 4, 3250, 0, -1, 0, 0, 612, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (43, 7, 6, N'c07_m06', 0, 1, 5, 0, 490, 0, 4, 3300, 0, -1, 0, 0, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (44, 7, 7, N'c07_m07', 0, 1, 5, 0, 502, 0, 4, 3350, 0, 7, 2, 24, 652, N'', 0, 11)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (45, 8, 0, N'c08', 0, 1, 5, 0, 1300, 0, 5, 700, 0, -1, 0, 0, 0, N'', 9, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (46, 8, 1, N'c08_m01', 0, 1, 5, 0, 533, 0, 4, 3550, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (47, 8, 2, N'c08_m02', 0, 1, 5, 0, 542, 0, 4, 3600, 0, 7, 1, 3, 652, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (48, 8, 3, N'c08_m03', 0, 1, 5, 0, 555, 0, 4, 3650, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (49, 8, 4, N'c08_m04', 0, 1, 5, 0, 565, 0, 4, 3700, 0, 7, 1, 14, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (50, 8, 5, N'c08_m05', 0, 1, 5, 0, 574, 0, 4, 3750, 0, -1, 0, 0, 699, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (51, 8, 6, N'c08_m06', 0, 1, 5, 0, 585, 0, 4, 3800, 0, -1, 0, 0, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (52, 8, 7, N'c08_m07', 0, 1, 5, 0, 595, 0, 4, 3850, 0, 7, 2, 25, 756, N'', 0, 12)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (53, 9, 0, N'c09', 0, 1, 5, 0, 1500, 0, 5, 870, 0, -1, 0, 0, 0, N'', 10, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (54, 9, 1, N'c09_m01', 0, 1, 5, 0, 642, 0, 4, 4050, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (55, 9, 2, N'c09_m02', 0, 1, 5, 0, 653, 0, 4, 4100, 0, 7, 1, 3, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (56, 9, 3, N'c09_m03', 0, 1, 5, 0, 667, 0, 4, 4150, 0, -1, 0, 0, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (57, 9, 4, N'c09_m04', 0, 1, 5, 0, 679, 0, 4, 4200, 0, 7, 1, 14, 756, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (58, 9, 5, N'c09_m05', 0, 1, 5, 0, 694, 0, 4, 4250, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (59, 9, 6, N'c09_m06', 0, 1, 5, 0, 706, 0, 4, 4300, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (60, 9, 7, N'c09_m07', 0, 1, 5, 0, 720, 0, 4, 4350, 0, -1, 0, 0, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (61, 9, 8, N'c09_m08', 0, 1, 5, 0, 732, 0, 4, 4400, 0, 7, 2, 26, 776, N'', 0, 13)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (62, 10, 0, N'c10', 0, 1, 5, 0, 1800, 0, 5, 1070, 0, -1, 0, 0, 0, N'', 11, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (63, 10, 1, N'c10_m01', 0, 1, 5, 0, 764, 0, 4, 4550, 0, 7, 1, 3, 797, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (64, 10, 2, N'c10_m02', 0, 1, 5, 0, 778, 0, 4, 4600, 0, 7, 1, 3, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (65, 10, 3, N'c10_m03', 0, 1, 5, 0, 797, 0, 4, 4650, 0, 7, 1, 15, 854, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (66, 10, 4, N'c10_m04', 0, 1, 5, 0, 811, 0, 4, 4700, 0, -1, 0, 0, 911, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (67, 10, 5, N'c10_m05', 0, 1, 5, 0, 833, 0, 4, 4750, 0, -1, 0, 0, 940, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (68, 10, 6, N'c10_m06', 0, 1, 5, 0, 846, 0, 4, 4800, 0, 7, 2, 27, 976, N'', 0, 14)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (69, 11, 0, N'c11', 0, 1, 5, 0, 2100, 0, 5, 1300, 0, -1, 0, 0, 0, N'', 12, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (70, 11, 1, N'c11_m01', 0, 1, 5, 0, 915, 0, 4, 5050, 0, 7, 1, 3, 976, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (71, 11, 2, N'c11_m02', 0, 1, 5, 0, 937, 0, 4, 5100, 0, 7, 1, 3, 1041, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (72, 11, 3, N'c11_m03', 0, 1, 5, 0, 961, 0, 4, 5150, 0, 7, 1, 15, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (73, 11, 4, N'c11_m04', 0, 1, 5, 0, 978, 0, 4, 5200, 0, -1, 0, 0, 1116, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (74, 11, 5, N'c11_m05', 0, 1, 5, 0, 997, 0, 4, 5250, 0, -1, 0, 0, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (75, 11, 6, N'c11_m06', 0, 1, 5, 0, 1019, 0, 4, 5300, 0, 7, 2, 28, 1145, N'', 0, 15)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (76, 12, 0, N'c12', 0, 1, 5, 0, 2500, 0, 5, 1550, 0, -1, 0, 0, 0, N'', 13, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (77, 12, 1, N'c12_m01', 0, 1, 5, 0, 1099, 0, 4, 5550, 0, 7, 1, 3, 1188, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (78, 12, 2, N'c12_m02', 0, 1, 5, 0, 1126, 0, 4, 5600, 0, 7, 1, 3, 1260, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (79, 12, 3, N'c12_m03', 0, 1, 5, 0, 1150, 0, 4, 5650, 0, 7, 1, 15, 1353, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (80, 12, 4, N'c12_m04', 0, 1, 5, 0, 1185, 0, 4, 5700, 0, -1, 0, 0, 1459, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (81, 12, 5, N'c12_m05', 0, 1, 5, 0, 1209, 0, 4, 5750, 0, -1, 0, 0, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (82, 12, 6, N'c12_m06', 0, 1, 5, 0, 1253, 0, 4, 5800, 0, 7, 1, 28, 1601, N'', 0, 16)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (83, 13, 0, N'c13', 0, 1, 5, 0, 3000, 0, 5, 1830, 0, -1, 0, 0, 0, N'', 14, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (84, 13, 1, N'c13_m01', 0, 1, 5, 0, 1343, 0, 4, 6050, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (85, 13, 2, N'c13_m02', 0, 1, 5, 0, 1371, 0, 4, 6100, 0, 7, 1, 3, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (86, 13, 3, N'c13_m03', 0, 1, 5, 0, 1401, 0, 4, 6150, 0, 7, 1, 16, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (87, 13, 4, N'c13_m04', 0, 1, 5, 0, 1436, 0, 4, 6200, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (88, 13, 5, N'c13_m05', 0, 1, 5, 0, 1469, 0, 4, 6250, 0, -1, 0, 0, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (89, 13, 6, N'c13_m06', 0, 1, 5, 0, 1500, 0, 4, 6300, 0, 7, 2, 25, 1601, N'', 0, 17)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (90, 14, 0, N'c14', 0, 1, 5, 0, 3500, 0, 5, 2130, 0, -1, 0, 0, 0, N'', 15, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (91, 14, 1, N'c14_m01', 0, 1, 5, 0, 1635, 0, 4, 6100, 0, 7, 1, 3, 1718, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (92, 14, 2, N'c14_m02', 0, 1, 5, 0, 1670, 0, 4, 6150, 0, 7, 1, 3, 1964, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (93, 14, 3, N'c14_m03', 0, 1, 5, 0, 1706, 0, 4, 6200, 0, 7, 1, 16, 2093, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (94, 14, 4, N'c14_m04', 0, 1, 5, 0, 1746, 0, 4, 6250, 0, -1, 0, 0, 2240, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (95, 14, 5, N'c14_m05', 0, 1, 5, 0, 1786, 0, 4, 6300, 0, -1, 0, 0, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (96, 14, 6, N'c14_m06', 0, 1, 5, 0, 1824, 0, 4, 6350, 0, 7, 1, 28, 2387, N'', 0, 18)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (97, 15, 0, N'c15', 0, 1, 5, 0, 4100, 0, 5, 2440, 0, -1, 0, 0, 0, N'', 16, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (98, 15, 1, N'c15_m01', 0, 1, 5, 0, 1968, 0, 4, 6200, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (99, 15, 2, N'c15_m02', 0, 1, 5, 0, 2001, 0, 4, 6250, 0, 7, 1, 3, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (100, 15, 3, N'c15_m03', 0, 1, 5, 0, 2054, 0, 4, 6300, 0, 7, 1, 16, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (101, 15, 4, N'c15_m04', 0, 1, 5, 0, 2113, 0, 4, 6350, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (102, 15, 5, N'c15_m05', 0, 1, 5, 0, 2166, 0, 4, 6400, 0, -1, 0, 0, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (103, 15, 6, N'c15_m06', 0, 1, 5, 0, 2217, 0, 4, 6450, 0, 7, 2, 26, 2387, N'', 0, 19)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (104, 16, 0, N'c16', 0, 1, 5, 0, 4800, 0, 5, 2750, 0, -1, 0, 0, 0, N'', 17, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (105, 16, 1, N'c16_m01', 0, 1, 5, 0, 2200, 0, 4, 6350, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (106, 16, 2, N'c16_m02', 0, 1, 5, 0, 2350, 0, 4, 6400, 0, 7, 0, 0, 3043, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (107, 16, 3, N'c16_m03', 0, 1, 5, 0, 2500, 0, 4, 6450, 0, 7, 0, 0, 3317, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (108, 16, 4, N'c16_m04', 0, 1, 5, 0, 2650, 0, 4, 6500, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (109, 16, 5, N'c16_m05', 0, 1, 5, 0, 2800, 0, 4, 6550, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (110, 16, 6, N'c16_m06', 0, 1, 5, 0, 2950, 0, 4, 6600, 0, 7, 0, 0, 3906, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (111, 16, 7, N'c16_m07', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (112, 16, 8, N'c16_m08', 0, 1, 5, 0, 3250, 0, 4, 6700, 0, 7, 1, 28, 3975, N'', 0, 20)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (113, 17, 0, N'c17', 0, 1, 5, 0, 5700, 0, 5, 3060, 0, -1, 0, 0, 0, N'', 18, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (114, 17, 1, N'c17_m01', 0, 1, 5, 0, 3000, 0, 4, 6600, 0, 7, 0, 0, 3975, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (115, 17, 2, N'c17_m02', 0, 1, 5, 0, 3100, 0, 4, 6650, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (116, 17, 3, N'c17_m03', 0, 1, 5, 0, 3200, 0, 4, 6700, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (117, 17, 4, N'c17_m04', 0, 1, 5, 0, 3300, 0, 4, 6750, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (118, 17, 5, N'c17_m05', 0, 1, 5, 0, 3400, 0, 4, 6800, 0, 7, 0, 0, 4100, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (119, 17, 6, N'c17_m06', 0, 1, 5, 0, 3500, 0, 4, 6850, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (120, 17, 7, N'c17_m07', 0, 1, 5, 0, 3600, 0, 4, 6900, 0, 7, 0, 0, 4300, N'', 0, 21)
GO
INSERT [dbo].[Campaigns] ([id], [campaign], [episode], [episodeName], [difficulty], [requiredLevel], [maxUnits], [reward1], [reward1Num], [reward1Item], [reward2], [reward2Num], [reward2Item], [reward3], [reward3Num], [reward3Item], [UnitPower], [storage], [openZone], [fuelCost]) VALUES (121, 17, 8, N'c17_m08', 0, 1, 5, 0, 3700, 0, 4, 6950, 0, 7, 2, 27, 4300, N'', 0, 21)
GO
SET IDENTITY_INSERT [dbo].[Campaigns] OFF
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
SET IDENTITY_INSERT [dbo].[Evolves] OFF
GO
SET IDENTITY_INSERT [dbo].[Items] ON 

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
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (31, N'{"type":"OrderItem","tier":1,"name":"event_tier_1_reinforcement","money":500,"price":500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_1_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (32, N'{"type":"OrderItem","tier":1,"name":"event_tier_2_reinforcement","money":1000,"price":1000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_2_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (33, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":1500,"price":1500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (34, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":2000,"price":2000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (35, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":2500,"price":2500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (36, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3000,"price":3000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (37, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":3500,"price":3500,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (38, N'{"type":"OrderItem","tier":1,"name":"event_tier_3_reinforcement","money":4000,"price":4000,"OnUse":[{"name":"OrderItemOnUseItemHandler","args":"{''orderName'':''event_tier_3_reinforcement'', ''num'':1}"}]}', 9)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (41, N'{"type":"ResurrectTank","name":"resurrectItem",param:5,"gold":0,"amount":1,"price":300,"money":300,"tier":1}', 7)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (51, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (52, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (53, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':31}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (54, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (55, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':32}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (56, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (57, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':33}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (58, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (59, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':34}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (60, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (61, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':35}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (62, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':3,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (63, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (64, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':37}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (65, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (66, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (67, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (68, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (69, N'{"type":"Chest","price":800,"money":800,"tier":"2","name":"silverChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':25}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':26}]},{''weight'':32,''bonus'':[{''type'':7,''num'':1,''item'':27}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':28}]},{''weight'':4,''bonus'':[{''type'':7,''num'':1,''item'':36}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (70, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"goldChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (71, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest1","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (72, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest2","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (73, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest3","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (74, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest4","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (75, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest5","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (76, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest6","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (77, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest7","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (78, N'{"type":"Chest","price":800,"money":800,"tier":"3","name":"platinumChest8","price":"1000","active":"true","OnUse":[{"name":"ChestOnUseItemHandler","args":"[{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':25}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':26}]},{''weight'':25,''bonus'':[{''type'':7,''num'':4,''item'':27}]},{''weight'':25,''bonus'':[{''type'':7,''num'':2,''item'':28}]},{''weight'':0,''bonus'':[{''type'':7,''num'':1,''item'':38}]}]"}]}', 8)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (100, N'{"type":"ShopItem",param:21,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (101, N'{"type":"ShopItem",param:21,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (102, N'{"type":"ShopItem",param:21,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (103, N'{"type":"ShopItem",param:21,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (104, N'{"type":"ShopItem",param:21,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (105, N'{"type":"ShopItem",param:21,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (106, N'{"type":"ShopItem",param:21,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (107, N'{"type":"ShopItem",param:21,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (108, N'{"type":"ShopItem",param:21,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (109, N'{"type":"ShopItem",param:21,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (110, N'{"type":"ShopItem",param:21,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (111, N'{"type":"ShopItem",param:21,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (112, N'{"type":"ShopItem",param:22,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (113, N'{"type":"ShopItem",param:22,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (114, N'{"type":"ShopItem",param:22,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (115, N'{"type":"ShopItem",param:22,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (116, N'{"type":"ShopItem",param:22,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (117, N'{"type":"ShopItem",param:22,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (118, N'{"type":"ShopItem",param:22,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (119, N'{"type":"ShopItem",param:22,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (120, N'{"type":"ShopItem",param:22,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (121, N'{"type":"ShopItem",param:22,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (122, N'{"type":"ShopItem",param:22,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (123, N'{"type":"ShopItem",param:22,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (124, N'{"type":"ShopItem",param:23,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (125, N'{"type":"ShopItem",param:23,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (126, N'{"type":"ShopItem",param:23,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (127, N'{"type":"ShopItem",param:23,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (128, N'{"type":"ShopItem",param:23,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (129, N'{"type":"ShopItem",param:23,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (130, N'{"type":"ShopItem",param:23,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (131, N'{"type":"ShopItem",param:23,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (132, N'{"type":"ShopItem",param:23,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (133, N'{"type":"ShopItem",param:23,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (134, N'{"type":"ShopItem",param:23,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (135, N'{"type":"ShopItem",param:23,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (136, N'{"type":"ShopItem",param:24,"money":190,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (137, N'{"type":"ShopItem",param:24,"gold":13,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (138, N'{"type":"ShopItem",param:24,"money":375,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (139, N'{"type":"ShopItem",param:24,"gold":26,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (140, N'{"type":"ShopItem",param:24,"money":930,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (141, N'{"type":"ShopItem",param:24,"gold":65,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (142, N'{"type":"ShopItem",param:24,"money":3690,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (143, N'{"type":"ShopItem",param:24,"gold":258,"amount":100}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (144, N'{"type":"ShopItem",param:24,"money":7360,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (145, N'{"type":"ShopItem",param:24,"gold":515,"amount":200}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (146, N'{"type":"ShopItem",param:24,"money":16560,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (147, N'{"type":"ShopItem",param:24,"gold":1159,"amount":450}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (148, N'{"type":"ShopItem",param:25,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (149, N'{"type":"ShopItem",param:25,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (150, N'{"type":"ShopItem",param:25,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (151, N'{"type":"ShopItem",param:25,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (152, N'{"type":"ShopItem",param:25,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (153, N'{"type":"ShopItem",param:25,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (154, N'{"type":"ShopItem",param:25,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (155, N'{"type":"ShopItem",param:25,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (156, N'{"type":"ShopItem",param:25,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (157, N'{"type":"ShopItem",param:25,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (158, N'{"type":"ShopItem",param:25,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (159, N'{"type":"ShopItem",param:25,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (160, N'{"type":"ShopItem",param:26,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (161, N'{"type":"ShopItem",param:26,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (162, N'{"type":"ShopItem",param:26,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (163, N'{"type":"ShopItem",param:26,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (164, N'{"type":"ShopItem",param:26,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (165, N'{"type":"ShopItem",param:26,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (166, N'{"type":"ShopItem",param:26,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (167, N'{"type":"ShopItem",param:26,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (168, N'{"type":"ShopItem",param:26,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (169, N'{"type":"ShopItem",param:26,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (170, N'{"type":"ShopItem",param:26,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (171, N'{"type":"ShopItem",param:26,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (172, N'{"type":"ShopItem",param:27,"money":375,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (173, N'{"type":"ShopItem",param:27,"gold":26,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (174, N'{"type":"ShopItem",param:27,"money":1845,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (175, N'{"type":"ShopItem",param:27,"gold":129,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (176, N'{"type":"ShopItem",param:27,"money":3690,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (177, N'{"type":"ShopItem",param:27,"gold":258,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (178, N'{"type":"ShopItem",param:27,"money":11045,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (179, N'{"type":"ShopItem",param:27,"gold":773,"amount":30}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (180, N'{"type":"ShopItem",param:27,"money":16560,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (181, N'{"type":"ShopItem",param:27,"gold":1159,"amount":45}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (182, N'{"type":"ShopItem",param:27,"money":55160,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (183, N'{"type":"ShopItem",param:27,"gold":3861,"amount":150}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (184, N'{"type":"ShopItem",param:28,"money":1845,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (185, N'{"type":"ShopItem",param:28,"gold":129,"amount":1}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (186, N'{"type":"ShopItem",param:28,"money":3690,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (187, N'{"type":"ShopItem",param:28,"gold":258,"amount":2}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (188, N'{"type":"ShopItem",param:28,"money":9200,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (189, N'{"type":"ShopItem",param:28,"gold":644,"amount":5}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (190, N'{"type":"ShopItem",param:28,"money":18390,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (191, N'{"type":"ShopItem",param:28,"gold":1287,"amount":10}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (192, N'{"type":"ShopItem",param:28,"money":59765,"amount":25}', 6)
GO
INSERT [dbo].[Items] ([id], [json], [type]) VALUES (193, N'{"type":"ShopItem",param:28,"gold":3218,"amount":25}', 6)
GO
SET IDENTITY_INSERT [dbo].[Items] OFF
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] ON 

GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (132, 1, 0, 450, 45, 10, 5, 1, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":51,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":52,"num":1,"amount":1},{"lvl":15,"type":7,"item":71,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":5}]', 1)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (133, 1, 451, 670, 100, 20, 10, 2, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":53,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":54,"num":1,"amount":1},{"lvl":15,"type":7,"item":72,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":10}]', 2)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (134, 1, 671, 1100, 150, 30, 15, 3, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":55,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":56,"num":1,"amount":1},{"lvl":15,"type":7,"item":73,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":15}]', 3)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (135, 1, 1101, 1650, 245, 40, 20, 4, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":57,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":58,"num":1,"amount":1},{"lvl":15,"type":7,"item":74,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":25}]', 4)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (136, 1, 1651, 2300, 430, 50, 25, 5, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":59,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":60,"num":1,"amount":1},{"lvl":15,"type":7,"item":75,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":50}]', 5)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (137, 1, 2301, 4000, 640, 60, 30, 6, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":61,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":62,"num":1,"amount":1},{"lvl":15,"type":7,"item":76,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":100}]', 6)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (138, 1, 4001, 5400, 1090, 70, 35, 7, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":63,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":64,"num":1,"amount":1},{"lvl":15,"type":7,"item":77,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":150}]', 7)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (139, 1, 5401, 9999, 1685, 80, 40, 8, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":65,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":66,"num":1,"amount":1},{"lvl":15,"type":7,"item":78,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":200}]', 8)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (140, 1, 10000, 20000, 1850, 90, 45, 9, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":67,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":68,"num":1,"amount":1},{"lvl":15,"type":7,"item":78,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":250}]', 9)
GO
INSERT [dbo].[MissionEvents] ([id], [eventId], [minPower], [maxPower], [startMoney], [incMoney], [startParts], [incParts], [rewards], [tier]) VALUES (141, 1, 20001, 999999, 2035, 100, 50, 10, N'[{"lvl":2,"type":7,"item":41,"num":1,"amount":1},{"lvl":5,"type":7,"item":69,"num":1,"amount":1},{"lvl":7,"type":7,"item":41,"num":1,"amount":1},{"lvl":10,"type":7,"item":70,"num":1,"amount":1},{"lvl":15,"type":7,"item":78,"num":1,"amount":1},{"lvl":1,"type":1,"num":1},{"lvl":2,"type":1,"num":2},{"lvl":3,"type":1,"num":3},{"lvl":4,"type":1,"num":4},{"lvl":5,"type":1,"num":5},{"lvl":6,"type":1,"num":1},{"lvl":7,"type":1,"num":2},{"lvl":8,"type":1,"num":3},{"lvl":9,"type":1,"num":4},{"lvl":10,"type":1,"num":5},{"lvl":11,"type":1,"num":1},{"lvl":12,"type":1,"num":2},{"lvl":13,"type":1,"num":3},{"lvl":14,"type":1,"num":4},{"lvl":15,"type":1,"num":300}]', 10)
GO
SET IDENTITY_INSERT [dbo].[MissionEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[Upgrades] ON 

GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (1, 1, 1, 0, 2, 2, 2, 12, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (2, 1, 1, 1, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (3, 1, 1, 2, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (4, 2, 1, 0, 2, 2, 2, 12, 0, 7, 1, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (5, 2, 1, 1, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (6, 2, 1, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (7, 5, 1, 0, 2, 2, 2, 12, 0, 3, 1, 1, 1, 1, 1, 0.35, 1, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (8, 5, 1, 1, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (9, 5, 1, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 3, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (10, 1, 2, 0, 2, 2, 2, 15, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (11, 1, 2, 1, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (12, 1, 2, 2, 0, 0, 0, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (13, 2, 2, 0, 3, 3, 3, 15, 0, 7, 1, 1, 1, 1, 1, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (14, 2, 2, 1, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (15, 2, 2, 2, 0, 0, 0, 0, 0, 3, 3, 0, 0, 3, 0, 0, 0, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (16, 3, 2, 0, 3, 3, 3, 30, 1, 2, 1, 1, 1, 1, 0.4, 1, 1, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (17, 3, 2, 1, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96, 96)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (18, 3, 2, 2, 0, 0, 0, 4, 0, 0, 4, 0, 0, 0, 4, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (19, 5, 2, 0, 2, 2, 2, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (20, 5, 2, 1, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (21, 5, 2, 2, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (22, 6, 2, 0, 3, 3, 3, 15, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (23, 6, 2, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (24, 6, 2, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (25, 1, 3, 0, 3, 3, 3, 18, 0.3, 3, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (26, 1, 3, 1, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (27, 1, 3, 2, 0, 0, 0, 3, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (28, 2, 3, 0, 4, 4, 4, 18, 0.3, 7, 1, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (29, 2, 3, 1, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (30, 2, 3, 2, 0, 0, 0, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (31, 3, 3, 0, 4, 4, 3, 18, 1, 4, 1, 1, 1, 1, 0.4, 1, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (32, 3, 3, 1, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (33, 3, 3, 2, 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 4, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (34, 5, 3, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 7)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (35, 5, 3, 1, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186, 186)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (36, 5, 3, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 4, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (37, 6, 3, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 1, 0.35, 2, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (38, 6, 3, 1, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231, 231)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (39, 6, 3, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (40, 1, 4, 0, 3, 3, 3, 20, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (41, 1, 4, 1, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226, 226)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (42, 1, 4, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (43, 2, 4, 0, 4, 4, 4, 25, 0.25, 6, 1, 1, 1, 1, 1, 1, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (44, 2, 4, 1, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (45, 2, 4, 2, 0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0, 0, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (46, 3, 4, 0, 4, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (47, 3, 4, 1, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (48, 3, 4, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (49, 4, 4, 0, 3, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (50, 4, 4, 1, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (51, 4, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (52, 5, 4, 0, 3, 3, 3, 20, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (53, 5, 4, 1, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313, 313)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (54, 5, 4, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (55, 6, 4, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 6)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (56, 6, 4, 1, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (57, 6, 4, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (58, 1, 5, 0, 3, 3, 3, 30, 1, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (59, 1, 5, 1, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388, 388)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (60, 1, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (61, 2, 5, 0, 4, 4, 4, 40, 1, 6, 1, 1, 1, 1, 0.4, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (62, 2, 5, 1, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466, 466)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (63, 2, 5, 2, 0, 0, 0, 4, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (64, 3, 5, 0, 3, 4, 4, 18, 1, 2, 1, 1, 1, 1, 0.4, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (65, 3, 5, 1, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615, 615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (66, 3, 5, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 5, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (67, 4, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (68, 4, 5, 1, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802, 802)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (69, 4, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (70, 5, 5, 0, 3, 3, 3, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (71, 5, 5, 1, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538, 538)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (72, 5, 5, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (73, 6, 5, 0, 3, 4, 4, 18, 1, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 8)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (74, 6, 5, 1, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668, 668)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (75, 6, 5, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (76, 1, 6, 0, 3, 3, 3, 35, 0.25, 6, 0.7, 1, 1, 1, 1, 1, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (77, 1, 6, 1, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636, 636)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (78, 1, 6, 2, 0, 0, 0, 4, 4, 0, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (79, 2, 6, 0, 4, 4, 4, 18, 0.2, 6, 1, 1, 1, 1, 1, 1, 2, 15)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (80, 2, 6, 1, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763, 763)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (81, 2, 6, 2, 0, 0, 0, 0, 4, 4, 4, 0, 4, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (82, 3, 6, 0, 3, 4, 4, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (83, 3, 6, 1, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008, 1008)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (84, 3, 6, 2, 5, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (85, 4, 6, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (86, 4, 6, 1, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314, 1314)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (87, 4, 6, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (88, 5, 6, 0, 3, 3, 3, 35, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 3, 12)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (89, 5, 6, 1, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881, 881)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (90, 5, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (91, 6, 6, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 10)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (92, 6, 6, 1, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095, 1095)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (93, 6, 6, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (94, 1, 7, 0, 3, 3, 3, 40, 0.25, 6, 0.7, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (95, 1, 7, 1, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929, 929)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (96, 1, 7, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (97, 2, 7, 0, 4, 4, 4, 50, 0.07, 6, 1, 1, 1, 1, 0.2, 0.35, 3, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (98, 2, 7, 1, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (99, 2, 7, 2, 0, 0, 0, 5, 0, 5, 5, 0, 0, 0, 0, 0, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (100, 3, 7, 0, 3, 4, 3, 18, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (101, 3, 7, 1, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475, 1475)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (102, 3, 7, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (103, 4, 7, 0, 3, 4, 3, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (104, 4, 7, 1, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935, 1935)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (105, 4, 7, 2, 5, 0, 5, 0, 0, 0, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (106, 5, 7, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 20)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (107, 5, 7, 1, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291, 1291)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (108, 5, 7, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (109, 6, 7, 0, 3, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.25, 2, 18)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (110, 6, 7, 1, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615, 1615)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (111, 6, 7, 2, 5, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (112, 1, 8, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (113, 1, 8, 1, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365, 1365)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (114, 1, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (115, 2, 8, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (116, 2, 8, 1, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635, 1635)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (117, 2, 8, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (118, 3, 8, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (119, 3, 8, 1, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170, 2170)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (120, 3, 8, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (121, 4, 8, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (122, 4, 8, 1, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850, 2850)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (123, 4, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (124, 5, 8, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (125, 5, 8, 1, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900, 1900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (126, 5, 8, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (127, 6, 8, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (128, 6, 8, 1, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370, 2370)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (129, 6, 8, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (130, 1, 9, 0, 3, 3, 3, 60, 0.2, 6, 0.7, 1, 1, 1, 0.2, 0.2, 1, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (131, 1, 9, 1, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840, 1840)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (132, 1, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (133, 2, 9, 0, 4, 4, 4, 80, 0.18, 6, 1, 1, 1, 1, 0.2, 0.2, 2, 2)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (134, 2, 9, 1, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210, 2210)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (135, 2, 9, 2, 0, 0, 0, 5, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (136, 3, 9, 0, 4, 4, 4, 100, 0.07, 2, 1, 1, 1, 1, 0.2, 0.35, 3, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (137, 3, 9, 1, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900, 2900)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (138, 3, 9, 2, 0, 0, 5, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (139, 4, 9, 0, 4, 4, 4, 18, 0.06, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 3)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (140, 4, 9, 1, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820, 3820)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (141, 4, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (142, 5, 9, 0, 3, 3, 3, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 3, 4)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (143, 5, 9, 1, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560, 2560)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (144, 5, 9, 2, 0, 0, 0, 0, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (145, 6, 9, 0, 4, 4, 4, 18, 0.05, 3, 1, 1, 1, 1, 0.3, 0.35, 2, 30)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (146, 6, 9, 1, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190, 3190)
GO
INSERT [dbo].[Upgrades] ([id], [type], [tier], [price], [frontArmor], [backArmor], [sideArmor], [maxHP], [speed], [turnSpeed], [minAccuracy], [maxAccuracy], [visibilityRadius], [range], [aimingTime], [reloadDuration], [piercing], [damage]) VALUES (147, 6, 9, 2, 0, 0, 5, 0, 0, 5, 0, 5, 0, 0, 0, 5, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[Upgrades] OFF
GO
