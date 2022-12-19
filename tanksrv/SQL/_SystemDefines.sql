USE [tankwars]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemDefines](
	[n] [varchar](50) NOT NULL,
	[s] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

DELETE FROM [dbo].[SystemDefines]
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'AppId', N'236741526486546')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'BundleId', N'com.iron5studio.iron5')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'ClientVersion', N'1.0.4')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMail', N'tanksquad@ambergames.com')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMailHost', N'smtp.yandex.com')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMailPort', N'465')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMailPwd', N'tanks123quadXs')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMailSender', N'Iron Five support team')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'EMailSSL', N'true')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'LocaleFolder', N'http://91.237.98.115/Static/')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'LocaleFolderL', N'C:/WebSite1/Static/')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'Platform', N'ios')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'PwdRetrieve', N'pwd5472841584111.htm')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'PwdTemplate', N'EmailTemplate7451812.htm')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'RSign', N'Tall on thhr day, 27th of all onme tarts, all on th the Queen of Hearts, she made soe summeJuly')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'Sandbox', N'true')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'SecretKey', N'The Matrix hath you for 347 times...')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'Sign', N'The Queen of Hearts, she made some tarts, all on the summer day, 27th of July')
GO
INSERT [dbo].[SystemDefines] ([n], [s]) VALUES (N'StaticVersion', N'1213')
GO
