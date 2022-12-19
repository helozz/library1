use [tankwars]

delete from defines where n = 'RadarScanDelay'
insert into dbo.defines(n, s) values ('RadarScanDelay', '21600000')