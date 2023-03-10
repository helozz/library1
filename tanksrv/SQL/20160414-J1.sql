USE [tankwars]
GO
/****** Object:  Table [dbo].[ClanLevels]    Script Date: 4/14/2016 11:23:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClanLevels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[level] [int] NOT NULL,
	[experience] [int] NOT NULL,
	[place] [int] NOT NULL,
 CONSTRAINT [PK_ClansLevels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClanSkillLevels]    Script Date: 4/14/2016 11:23:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClanSkillLevels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[index] [int] NOT NULL,
	[level] [int] NOT NULL,
	[clanLevel] [int] NOT NULL,
	[money] [int] NOT NULL,
 CONSTRAINT [PK_ClanSkillLevels] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
