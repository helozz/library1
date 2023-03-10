USE [tankwars]
GO
/****** Object:  Table [dbo].[UserBattles]    Script Date: 22.11.2016 17:20:49 ******/
DROP TABLE [dbo].[UserBattles]
GO
/****** Object:  Table [dbo].[UserBattles]    Script Date: 22.11.2016 17:20:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBattles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[isBot] [bit] NOT NULL,
	[place] [int] NOT NULL,
	[prevBestPlace] [int] NOT NULL,
	[bestPlace] [int] NOT NULL,
	[squadPower] [int] NOT NULL,
	[attackBonus] [float] NOT NULL,
	[defenseBonus] [float] NOT NULL,
	[rating] [int] NOT NULL,
	[place0] [int] NOT NULL,
 CONSTRAINT [PK_UserBattles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
