use [tankwars]

GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [rewardClaimed] float NOT NULL
GO

EXEC sp_RENAME '[Users].[rewardClaimed]', 'marketTime', 'COLUMN'