use [tankwars]
go

EXEC sp_rename 'Users.LimitResearch', 'RNDTank', 'COLUMN';
EXEC sp_rename 'Users.ResearchPoints', 'RegisterTime', 'COLUMN';
GO
update [dbo].[Users] set [RegisterTime] = 0;
update [dbo].[Users] set [RNDTank] = 1;
GO