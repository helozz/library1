/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[userId]
      ,[zone]
      ,[type]
      ,[blevel]
      ,[time]
      ,[removable]
      ,[collectTime]
  FROM [dbo].[UserBuildings]

Update [dbo].[UserBuildings]
SET blevel = 1
WHERE type = 12 