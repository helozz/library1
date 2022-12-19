USE [tankwars]
GO


delete from defines where n = 'VIPMatrix'
insert into dbo.defines(n, s) values ('VIPMatrix', 'new int[] {1,0,100,550,2000,20,0,0,8,0}, new int[] {2,2000,100,550,2000,25,7,10,10,1}, new int[] {3,4000,100,550,2000,30,15,20,12,1}, new int[] {4,8000,100,550,2000,40,25,30,14,1}, new int[] {5,16000,100,550,2000,50,35,1000,16,2}')
GO

ALTER TABLE [dbo].[Users] ADD [EventFuelRestoreAttempt] int NULL
GO
UPDATE [dbo].[Users] SET [EventFuelRestoreAttempt] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [EventFuelRestoreAttempt] int NOT NULL
GO