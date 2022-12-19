USE [tankwars]
GO
/****** Object:  Table [dbo].[UserFeedbacks]    Script Date: 16.07.2015 15:27:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserFeedbacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[userName] [varchar](50) NULL,
	[stars] [int] NULL,
	[title] [varchar](50) NULL,
	[text] [varchar](255) NULL,
	[postDate] [datetime] NULL,
	[version] [varchar](50) NULL,
 CONSTRAINT [PK_UserFeedbacks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
