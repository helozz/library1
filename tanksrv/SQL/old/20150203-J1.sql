USE [tankwars]
GO
/****** Object:  Table [dbo].[Tournaments]    Script Date: 2/3/2016 2:50:33 PM ******/
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
