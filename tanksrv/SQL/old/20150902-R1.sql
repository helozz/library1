USE [tankwars]
GO
/****** Object:  Table [dbo].[RandomItems]    Script Date: 02.09.2015 11:57:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RandomItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[json] [varchar](500) NULL,
 CONSTRAINT [PK_RandomItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[RandomItems] ([id], [json]) VALUES (1, N'{"ident":"radar","items":[21, 22,23,24,25,26,27,28], "weights":[15,15,15,15,10,10,10,10]}')
GO
