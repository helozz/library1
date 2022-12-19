use [tankwars]
go
	delete from defines where n = 'UnitBorrowPriceMPercent'
	go
	delete from defines where n = 'UnitBorrowPriceG'
	go
	delete from defines where n = 'UnitBorrowTimeH'
	go
	

delete from defines where n = 'UnitSharingTimeH'
go
insert into dbo.defines(n, s) values
	('UnitSharingTimeH', '24')
	go
	delete from defines where n = 'UnitSharingCancelTimeH'
	go
insert into dbo.defines(n, s) values
	('UnitSharingCancelTimeH', '1')
	go
	delete from defines where n = 'UnitHireTimeH'
	go
insert into dbo.defines(n, s) values
	('UnitHireTimeH', '24')
	go
	delete from defines where n = 'UnitHirePriceG'
	go
insert into dbo.defines(n, s) values
	('UnitHirePriceG', '50')
	go
		delete from defines where n = 'UnitHirePriceMPercent'
	go
insert into dbo.defines(n, s) values
	('UnitHirePriceMPercent', '2')
	go
