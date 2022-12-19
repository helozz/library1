use [tankwars]

delete from defines where n = 'DailyRewards'
insert into dbo.defines(n, s) values ('DailyRewards', '')

GO

delete from defines where n = 'DailyRewardTimeMs'
insert into dbo.defines(n, s) values ('DailyRewardTimeMs', '180000,600000,1800000,3600000,10800000,28800000,28800000,28800000')

GO
