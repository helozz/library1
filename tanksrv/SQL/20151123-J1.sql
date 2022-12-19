

use [tankwars]

delete from defines where n = 'ClanMaxPlaceLimit'
insert into dbo.defines(n, s) values
	('ClanMaxPlaceLimit', '35')

GO