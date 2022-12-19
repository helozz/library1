USE [tankwars]
GO
/****** Object:  Table [dbo].[PvPConfigs]    Script Date: 15.09.2015 18:22:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PvPConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,	
	[mNorm] [int] NOT NULL,	
	[eNorm] [int] NOT NULL,
	[pNorm] [int] NOT NULL,		
	[bundleId] [int] NOT NULL,	
	[compMinNorm] [int] NOT NULL,
	[compMaxNorm] [int] NOT NULL,	
	[type] [int] NOT NULL
 CONSTRAINT [PK_PvPConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [tankwars]
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] ON 

GO
INSERT [dbo].[PvPConfigs] ([id], [minPower], [maxPower], [mNorm], [eNorm], [pNorm], [dNorm], [bundleId], [compMinNorm], [compMaxNorm]) VALUES (1, 0, 99999, 100, 100, 100, 1, 100, 100, 1)
GO
SET IDENTITY_INSERT [dbo].[PvPConfigs] OFF
GO
