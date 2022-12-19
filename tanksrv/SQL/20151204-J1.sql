USE [tankwars]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TodoObjectives](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[todoId] [int] NOT NULL,
	[points] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_TodoObjectives] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

//
ALTER TABLE [dbo].[Users] ADD [todoState] varchar(1000) NULL
GO
UPDATE [dbo].[Users] SET [todoState] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [todoState] varchar(1000) NOT NULL


ALTER TABLE [dbo].[Users] ADD [todoReward] varchar(50) NULL
GO
UPDATE [dbo].[Users] SET [todoReward] = ''
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [todoReward] varchar(50) NOT NULL


ALTER TABLE [dbo].[Users] ADD [gameTime] float NULL
GO
UPDATE [dbo].[Users] SET [gameTime] = 0
GO
ALTER TABLE [dbo].[Users] ALTER COLUMN [gameTime] float NOT NULL
