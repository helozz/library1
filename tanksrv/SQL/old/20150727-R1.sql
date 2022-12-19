USE [tankwars]
GO
/****** Object:  Table [dbo].[UserFriendsRewards]    Script Date: 27.07.2015 14:39:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFriendsRewards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[socialId] varchar(100) NOT NULL,
	[refId] [int] NOT NULL,
	[activity] [int] NOT NULL,
	[lastExp] [int] NOT NULL,
 CONSTRAINT [PK_UserFriendsRewards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Users] ADD [rewardClaimed] bit NULL
GO
UPDATE [dbo].[Users] SET [rewardClaimed] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [rewardClaimed]  bit NOT NULL
GO

