USE [tankwars]
GO
/****** Object:  Table [dbo].[UserDeathmatches]    Script Date: 18.01.2017 18:03:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDeathmatches](
	[userId] [int] NOT NULL,
	[battles] [int] NOT NULL,
	[updateTime] [float] NOT NULL,
	[name] [varchar](20) NULL
) ON [PRIMARY]

GO
