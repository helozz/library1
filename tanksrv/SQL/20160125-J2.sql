use [tankwars]

delete from defines where n = 'CrewTransferExptMoneyPrices'
insert into dbo.defines(n, s) values ('CrewTransferExptMoneyPrices', '100,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20')

delete from defines where n = 'CrewTransferExptMoneyGold'
insert into dbo.defines(n, s) values ('CrewTransferExptMoneyGold', '200,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20')
