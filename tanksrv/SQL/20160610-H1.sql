USE [tankwars]
GO

ALTER TABLE [dbo].[Users] ADD [VIPgold] float NULL
GO
UPDATE [dbo].[Users] SET [VIPgold] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [VIPgold] float NOT NULL
GO


ALTER TABLE [dbo].[Users] ADD [VIPsubscription] float NULL
GO
UPDATE [dbo].[Users] SET [VIPsubscription] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [VIPsubscription] float NOT NULL
GO

delete from defines where n = 'VIPMatrix'
insert into dbo.defines(n, s) values ('VIPMatrix', 'new int[] {1,0,1,7,30,20,0,0,0,0}, new int[] {2,4,1,7,30,25,7,10,2,20}, new int[] {3,8,1,7,30,30,15,20,3,30}, new int[] {4,16,1,7,30,40,25,30,5,40}, new int[] {5,32,1,7,30,50,35,1000,7,50}')
GO