use [tankwars]

delete from defines where n = 'ClanDonateGoldPacks'
insert into dbo.defines(n, s) values ('ClanDonateGoldPacks', '100,500,1000,5000,10000,50000,100000,400000')

delete from defines where n = 'ClanDonateGoldPacksMult'
insert into dbo.defines(n, s) values ('ClanDonateGoldPacksMult', '0.3,0.3,0.3,0.3,0.3,0.3,0.3,0.3')

