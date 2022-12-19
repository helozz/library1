use [tankwars]

delete from defines where n = 'EvolveEliteUnitDiscountPercentage'
insert into dbo.defines(n, s) values
	('EvolveEliteUnitDiscountPercentage', '25')
