USE [tankwars]
GO
/****** Object:  Table [dbo].[Evolve]    Script Date: 8/4/2015 3:58:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evolves](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[defaultUnitId] [int] NOT NULL,
	[requirements] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Evolve] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
