USE [tankwars]
GO

/*
delete from defines where n = 'Quest4GoldPercent'
insert into dbo.defines(n, s) values
	('Quest4GoldPercent', '20')
	go
*/

	delete from defines where n = 'QueueGold'
insert into dbo.defines(n, s) values
	('QueueGold', '300')
	go
	
	delete from defines where n = 'ZoneUnderAttack'
insert into dbo.defines(n, s) values
	('ZoneUnderAttack', '300')
	go
	
	delete from defines where n = 'QueueCampaign'
insert into dbo.defines(n, s) values
	('QueueCampaign', '8')
	go

	delete from defines where n = 'BeginnerItems'
insert into dbo.defines(n, s) values
	('BeginnerItems', '15,2,4,2,9,2')
	go
		
	delete from defines where n = 'CampaignGraphData'
insert into dbo.defines(n, s) values
	('CampaignGraphData', 'new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, new[]{0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0}')
	go
	
	delete from defines where n = 'SlotGold'
	go
	
	delete from defines where n = 'BattleScanMaxFreeAttempts'
insert into dbo.defines(n, s) values
	('BattleScanMaxFreeAttempts', '3')
	go

	delete from defines where n = 'BattleScanAttemptsCost'
insert into dbo.defines(n, s) values
	('BattleScanAttemptsCost', '200')
	go

	delete from defines where n = 'BattleMaxAttempts'
insert into dbo.defines(n, s) values
	('BattleMaxAttempts', '5')
	go

	delete from defines where n = 'BattleAttemptsCost'
insert into dbo.defines(n, s) values
	('BattleAttemptsCost', '500')
	go

	delete from defines where n = 'BattleCooldown'
insert into dbo.defines(n, s) values
	('BattleCooldown', '5')
	go

delete from defines where n = 'BattleCooldownCost'
insert into dbo.defines(n, s) values
	('BattleCooldownCost', '5')
	go


	delete from defines where n = 'BattleStaticTopGoldReward'
insert into dbo.defines(n, s) values
	('BattleStaticTopGoldReward', '1000')
	go

delete from defines where n = 'BattleDynamicTopGoldReward'
insert into dbo.defines(n, s) values
	('BattleDynamicTopGoldReward', '2000')
	go

delete from defines where n = 'UserFriendReward'
insert into dbo.defines(n, s) values
	('UserFriendReward', '10')
	go
	
delete from defines where n = 'BuildingsLimit'
insert into dbo.defines(n, s) values
	('BuildingsLimit', '0,1,1,10,10,10,10,10,10,10,3,1,3,1000,1000,0,0,0,0,0,1')
go

delete from defines where n = 'ReqMarketLvl'
insert into dbo.defines(n, s) values
	('ReqMarketLvl', '10,15,20')
go

delete from defines where n = 'RefreshMarketPrice'
insert into dbo.defines(n, s) values
	('RefreshMarketPrice', '50')

GO

delete from defines where n = 'PurchaseBeginnerPack'
insert into dbo.defines(n, s) values
	('PurchaseBeginnerPack', 'com.ambergames.tanksquadgame.beginnerpack')

GO

delete from defines where n = 'InitParts'
insert into dbo.defines(n, s) values
	('InitParts', '200')
go

delete from defines where n = 'FuelCost'
insert into dbo.defines(n, s) values
	('FuelCost', '7,7,11,14')
go

delete from defines where n = 'EvolveChangeEliteToElite'
insert into dbo.defines(n, s) values
	('EvolveChangeEliteToElite', '5,10,15,20,25,30,35,40,45,50')
go

delete from defines where n = 'FuelPerLvl'
insert into dbo.defines(n, s) values
	('FuelPerLvl', '2')
go

delete from defines where n = 'ComponentsCost'
insert into dbo.defines(n, s) values
	('ComponentsCost', '3,30,150')
go

delete from defines where n = 'CampaignGraphData'
insert into dbo.defines(n, s) values
	('CampaignGraphData', 'new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0},new[]{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0}')
go