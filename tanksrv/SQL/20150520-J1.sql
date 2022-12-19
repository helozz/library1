use [tankwars]

GO
delete from defines where n = 'EventMapResourceRewards'
insert into dbo.defines(n, s) values ('EventMapResourceRewards', '51,52,53,54,55,56,57,58,59,60')

GO
delete from defines where n = 'EventMapBonusMaxLimit'
insert into dbo.defines(n, s) values ('EventMapBonusMaxLimit', '3')

GO
delete from defines where n = 'EventMapBonusPriceGold'
insert into dbo.defines(n, s) values ('EventMapBonusPriceGold', '50')

GO
delete from defines where n = 'EventMapOpencCellBonusReputation'
insert into dbo.defines(n, s) values ('EventMapOpencCellBonusReputation', '1')

GO
