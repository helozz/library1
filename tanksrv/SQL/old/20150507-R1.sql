use [tankwars]

ALTER TABLE [dbo].[Users] ADD [ScanTime] float NULL
GO
UPDATE [dbo].[Users] SET [ScanTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [ScanTime] float NOT NULL
GO

/****** Object:  Table [dbo].[UserNewMissions]    Script Date: 07.05.2015 15:20:57 ******/
DROP TABLE [dbo].[UserNewMissions]
GO
/****** Object:  Table [dbo].[UserNewMissions]    Script Date: 07.05.2015 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNewMissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[userzone] [int] NOT NULL,
	[missionid] [int] NOT NULL,
 CONSTRAINT [PK_UserNewMissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

