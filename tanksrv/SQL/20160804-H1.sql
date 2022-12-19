USE [tankwars]
GO

/****** Object:  Table [dbo].[UpgradesNew]    Script Date: 08/04/2016 14:54:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UpgradesNew](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tankType] [int] NOT NULL,
	[tankTier] [int] NOT NULL,
	[upgrade1] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[upgrade2] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[upgrade3] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[upgrade4] [int] NOT NULL,
	[value4] [int] NOT NULL,
	[upgrade5] [int] NOT NULL,
	[value5] [int] NOT NULL,
	[upgrade6] [int] NOT NULL,
	[value6] [int] NOT NULL,
	[upgrade7] [int] NOT NULL,
	[value7] [int] NOT NULL,
	[upgrade8] [int] NOT NULL,
	[value8] [int] NOT NULL,
	[upgrade9] [int] NOT NULL,
	[value9] [int] NOT NULL,
	[upgrade10] [int] NOT NULL,
	[value10] [int] NOT NULL,
	[upgrade11] [int] NOT NULL,
	[value11] [int] NOT NULL,
	[upgrade12] [int] NOT NULL,
	[value12] [int] NOT NULL,
	[components] [int] NOT NULL,
	[money] [int] NOT NULL,
	[parts] [int] NOT NULL,
 CONSTRAINT [PK_UpgradesNew] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


