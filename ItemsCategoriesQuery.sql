SELECT [Items].[name], '' as 'Category name'
  FROM [Items] 
 WHERE [Items].[id] 
 NOT IN 
 (SELECT [Items].[id]
  FROM [Items], [Categories]
  WHERE [Items].[CategoryId] = [Categories].[id])  
  
UNION  (SELECT [Items].[name], [Categories].[name]
  FROM [Items], [Categories]
  WHERE [Items].[CategoryId] = [Categories].[id])
  
GO


