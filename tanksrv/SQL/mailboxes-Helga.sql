USE [tankwars_test]
GO

ALTER TABLE [dbo].[Users] DROP COLUMN [BanEndTime]

GO

ALTER TABLE [dbo].[Users] ADD [BanEndTime] float NULL
GO
UPDATE [dbo].[Users] SET [BanEndTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [BanEndTime] float NOT NULL
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Mailboxes]') AND type in (N'U'))
DROP TABLE [dbo].[Mailboxes]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Mailboxes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[timeCreated] [float] NOT NULL,
	[timeDeleted] [float] NOT NULL,
	[details] [int] NOT NULL,
	[message] [nvarchar](500) NOT NULL,
	[rewards] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Mailboxes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[Tournaments]    Script Date: 11.02.2016 11:27:07 ******/
DROP TABLE [dbo].[Tournaments]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 11.02.2016 11:27:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tournaments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[schedule] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Tournaments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
