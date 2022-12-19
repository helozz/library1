USE [tankwars]
GO
DROP TABLE [dbo].[MarketItems]
GO
/****** Object:  Table [dbo].[MarketItems]    Script Date: 01.09.2015 19:05:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarketItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hq] [int] NOT NULL,
	[slot] [int] NOT NULL,
	[json] [varchar](750) NULL,
 CONSTRAINT [PK_MarketItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MarketItems] ON 

GO
INSERT [dbo].[MarketItems] ([id], [hq], [slot], [json]) VALUES (1, 0, 0, N'{"ident":"radar","items":[21, 22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
SET IDENTITY_INSERT [dbo].[MarketItems] OFF
GO
