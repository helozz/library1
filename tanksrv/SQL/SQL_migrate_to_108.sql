USE [tankwars]
GO
/****** Object:  Table [dbo].[UserTournaments]    Script Date: 25.03.2016 13:30:04 ******/
DROP TABLE [dbo].[UserTournaments]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 25.03.2016 13:30:04 ******/
DROP TABLE [dbo].[Tournaments]
GO
/****** Object:  Table [dbo].[Mailboxes]    Script Date: 25.03.2016 13:30:04 ******/
DROP TABLE [dbo].[Mailboxes]
GO
/****** Object:  Table [dbo].[Mailboxes]    Script Date: 25.03.2016 13:30:04 ******/
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
	[isRead] [bit] NOT NULL,
	[topic] [nvarchar](200) NOT NULL,
	[sender] [int] NOT NULL,
 CONSTRAINT [PK_Mailboxes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 25.03.2016 13:30:04 ******/
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
GO
/****** Object:  Table [dbo].[UserTournaments]    Script Date: 25.03.2016 13:30:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTournaments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clanId] [int] NOT NULL,
	[points] [int] NOT NULL,
 CONSTRAINT [PK_UserTournaments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Mailboxes] ON 

GO
INSERT [dbo].[Mailboxes] ([id], [userId], [type], [timeCreated], [timeDeleted], [details], [message], [rewards], [isRead], [topic], [sender]) VALUES (1, 9966, 2, 1455201774910, 0, 10111, N'test', N'0,23,1,12', 0, N'', 0)
GO
INSERT [dbo].[Mailboxes] ([id], [userId], [type], [timeCreated], [timeDeleted], [details], [message], [rewards], [isRead], [topic], [sender]) VALUES (2, 9966, 2, 1455202149820, 0, 10111, N'Тест', N'', 0, N'', 0)
GO
INSERT [dbo].[Mailboxes] ([id], [userId], [type], [timeCreated], [timeDeleted], [details], [message], [rewards], [isRead], [topic], [sender]) VALUES (3, 10108, 1, 1458834733493, 0, 0, N'', N'[{''id'':0,''lvl'':0,''num'':3500,''type'':0,''item'':0,''special'':false},{''id'':0,''lvl'':0,''num'':700,''type'':5,''item'':0,''special'':false},{''id'':0,''lvl'':0,''num'':175,''type'':1,''item'':0,''special'':false}]', 0, N'', 0)
GO
SET IDENTITY_INSERT [dbo].[Mailboxes] OFF
GO
