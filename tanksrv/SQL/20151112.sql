use [tankwars]

delete from defines where n = 'MissionEventResurrectTankCost'
insert into dbo.defines(n, s) values
	('MissionEventResurrectTankCost', '100')

GO

delete from defines where n = 'MissionEventResurrectTankItemId'
insert into dbo.defines(n, s) values
	('MissionEventResurrectTankItemId', '194')


