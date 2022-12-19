use [tankwars]

delete from defines where n = 'SellTankPrice'
insert into dbo.defines(n, s) values
	('SellTankPrice', '0.25')

GO