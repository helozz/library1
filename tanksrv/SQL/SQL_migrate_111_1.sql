USE [tankwars_test]
GO

USE [tankwars]
GO
/****** Object:  Table [dbo].[UserTechTrees]    Script Date: 29.09.2016 12:07:20 ******/
DROP TABLE [dbo].[UserTechTrees]
GO
/****** Object:  Table [dbo].[UserResearches]    Script Date: 29.09.2016 12:07:20 ******/
DROP TABLE [dbo].[UserResearches]
GO
/****** Object:  Table [dbo].[UserResearches]    Script Date: 29.09.2016 12:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserResearches](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[unitId] [int] NOT NULL,
	[upgradeId] [int] NOT NULL,
	[time] [float] NOT NULL,
 CONSTRAINT [PK_UserResearches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTechTrees]    Script Date: 29.09.2016 12:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTechTrees](
	[userId] [int] NOT NULL,
	[unitId] [int] NOT NULL,
	[state] [int] NOT NULL,
	[time] [float] NOT NULL,
 CONSTRAINT [PK_UserTechTrees] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserTournamentBattles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[clanId] [int] NOT NULL,
	[roomId] [int] NOT NULL,
	[points] [int] NOT NULL,
	[win] [int] NOT NULL,
	[time] [float] NOT NULL,
 CONSTRAINT [PK_UserTournamentBattles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE NONCLUSTERED INDEX [time] ON [dbo].[UserTournamentBattles] 
(
	[time] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO