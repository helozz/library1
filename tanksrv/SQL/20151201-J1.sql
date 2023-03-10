USE [tankwars]
GO
/****** Object:  Table [dbo].[TodoObjectives]    Script Date: 12/1/2015 10:30:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoObjectives](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[handlerId] [int] NOT NULL,
	[points] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_TodoObjectives] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserTodoObjectives]    Script Date: 12/1/2015 10:30:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTodoObjectives](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startTime] [float] NOT NULL,
	[state] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_UserTodoObjectives] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
