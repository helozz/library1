use [tankwars]
go
		delete from defines where n = 'UnitHireBattles'
	go
insert into dbo.defines(n, s) values
	('UnitHireBattles', '5')
	go
