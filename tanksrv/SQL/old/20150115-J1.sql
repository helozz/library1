use [tankwars]

delete from defines where n = 'FuelPremiumBonus'
insert into dbo.defines(n, s) values
	('FuelPremiumBonus', '20')
