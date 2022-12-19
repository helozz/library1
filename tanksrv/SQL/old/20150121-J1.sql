USE [tankwars]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SkillRequirements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[skill] [int] NOT NULL,
	[level] [int] NOT NULL,
	[requirements] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_SkillRequirements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO


--1
--[skillId1b]
ALTER TABLE [dbo].[Crews] ADD [skillId1b] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId1b] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId1b] int NOT NULL

--[skillId1c]
ALTER TABLE [dbo].[Crews] ADD [skillId1c] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId1c] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId1c] int NOT NULL

--2
--[skillId2b]
ALTER TABLE [dbo].[Crews] ADD [skillId2b] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId2b] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId2b] int NOT NULL

--[skillId2c]
ALTER TABLE [dbo].[Crews] ADD [skillId2c] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId2c] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId2c] int NOT NULL

--4
--[skillId4b]
ALTER TABLE [dbo].[Crews] ADD [skillId4b] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId4b] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId4b] int NOT NULL

--[skillId4c]
ALTER TABLE [dbo].[Crews] ADD [skillId4c] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId4c] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId4c] int NOT NULL

--5
--[skillId5b]
ALTER TABLE [dbo].[Crews] ADD [skillId5b] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId5b] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId5b] int NOT NULL

--[skillId5c]
ALTER TABLE [dbo].[Crews] ADD [skillId5c] int NULL
GO
UPDATE [dbo].[Crews] SET [skillId5c] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [skillId5c] int NOT NULL



--[idsidebonus2]
ALTER TABLE [dbo].[Crews] ADD [idsidebonus2] int NULL
GO
UPDATE [dbo].[Crews] SET [idsidebonus2] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [idsidebonus2] int NOT NULL

--[idsidebonus3]
ALTER TABLE [dbo].[Crews] ADD [idsidebonus3] int NULL
GO
UPDATE [dbo].[Crews] SET [idsidebonus3] = 0
GO
ALTER TABLE [dbo].[Crews] ALTER COLUMN [idsidebonus3] int NOT NULL

