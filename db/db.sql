USE master
CREATE DATABASE question
GO

USE [question]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/28/2019 4:12:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/28/2019 4:12:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([Id], [Title], [UserId]) VALUES (1, N'test1', 1)
GO
INSERT [dbo].[Question] ([Id], [Title], [UserId]) VALUES (2, N'test2', 1)
GO
INSERT [dbo].[Question] ([Id], [Title], [UserId]) VALUES (4, N'test Thursday, March 28, 2019', 1)
GO
INSERT [dbo].[Question] ([Id], [Title], [UserId]) VALUES (6, N'test Thursday, March 28, 2019', 1)
GO
INSERT [dbo].[Question] ([Id], [Title], [UserId]) VALUES (7, N'test Thursday, March 28, 2019', 1)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([Id], [Name]) VALUES (1, N'Coder')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
