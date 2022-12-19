use [tankwars]

delete from defines where n = 'EventMapBonusRepairAll'
insert into dbo.defines(n, s) values ('EventMapBonusRepairAll', '10')

GO

delete from defines where n = 'EventMapDestroyTargetBonusReputation'
insert into dbo.defines(n, s) values ('EventMapDestroyTargetBonusReputation', '5')

GO

delete from defines where n = 'EventMapCompleteFightBonusReputation'
insert into dbo.defines(n, s) values ('EventMapCompleteFightBonusReputation', '1,5,10')

GO

delete from defines where n = 'EventMapResetAfterDays'
insert into dbo.defines(n, s) values ('EventMapResetAfterDays', '3')

GO