USE [tankwars]
GO
/****** Object:  Table [dbo].[UserTechTrees]    Script Date: 28.07.2016 20:06:33 ******/
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
