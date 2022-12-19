USE [tankwars]
GO
/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 31.08.2015 15:27:26 ******/
DROP TABLE [dbo].[RadarConfigs]
GO
/****** Object:  Table [dbo].[RadarConfigs]    Script Date: 31.08.2015 15:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadarConfigs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[minPower] [int] NOT NULL,
	[maxPower] [int] NOT NULL,
	[mVeasy] [int] NOT NULL,
	[mEasy] [int] NOT NULL,
	[mNorm] [int] NOT NULL,
	[mHard] [int] NOT NULL,
	[eVeasy] [int] NOT NULL,
	[eEasy] [int] NOT NULL,
	[eNorm] [int] NOT NULL,
	[eHard] [int] NOT NULL,
	[pVeasy] [int] NOT NULL,
	[pEasy] [int] NOT NULL,
	[pNorm] [int] NOT NULL,
	[pHard] [int] NOT NULL,
	[dVeasy] [int] NOT NULL,
	[dEasy] [int] NOT NULL,
	[dNorm] [int] NOT NULL,
	[dHard] [int] NOT NULL,
 CONSTRAINT [PK_RadarConfigs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
