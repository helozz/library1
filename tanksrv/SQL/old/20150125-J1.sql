

ALTER TABLE [dbo].[UserCrews] ADD [skill6lvl] int NULL
GO
UPDATE [dbo].[UserCrews] SET [skill6lvl] = 0
GO
ALTER TABLE [dbo].[UserCrews] ALTER COLUMN [skill6lvl] int NOT NULL