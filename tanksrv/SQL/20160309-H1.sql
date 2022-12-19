USE [tankwars]
GO

ALTER TABLE [dbo].[Mailboxes] ADD [isRead] bit NULL
GO
UPDATE [dbo].[Mailboxes] SET [isRead] = 0
GO
ALTER TABLE [dbo].[Mailboxes] ALTER COLUMN [isRead] bit NOT NULL
GO

ALTER TABLE [dbo].[Mailboxes] ADD [topic] nvarchar(200) NULL
GO
UPDATE [dbo].[Mailboxes] SET [topic] = ''
GO
ALTER TABLE [dbo].[Mailboxes] ALTER COLUMN [topic] nvarchar(200) NOT NULL
GO

ALTER TABLE [dbo].[Mailboxes] ADD [sender] int NULL
GO
UPDATE [dbo].[Mailboxes] SET [sender] = 0
GO
ALTER TABLE [dbo].[Mailboxes] ALTER COLUMN [sender] int NOT NULL
GO