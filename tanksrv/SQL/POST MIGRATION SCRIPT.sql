USE [tankwars]
GO

UPDATE [dbo].[UserUnits]
   SET [t] = 1
   ,[en]=0
   ,[et]=0
   ,[st]=117
   ,[sn]=500
 WHERE [t]= 11
 GO
 UPDATE [dbo].[UserUnits]
   SET [t] = [t]-31
 WHERE [t]!= 1
 GO