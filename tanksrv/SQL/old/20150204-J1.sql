use [tankwars]

delete from defines where n = 'CrewAdditionalSkills'
insert into dbo.defines(n, s) values ('CrewAdditionalSkills', '1,2,3,4,5,6')