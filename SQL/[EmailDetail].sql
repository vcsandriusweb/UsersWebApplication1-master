USE [Fujitsu_Dev]
GO

/****** Object:  Table [dbo].[EmailDetail]    Script Date: 2022/12/15 12:09:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmailDetail]') AND type in (N'U'))
DROP TABLE [dbo].[EmailDetail]
GO

/****** Object:  Table [dbo].[EmailDetail]    Script Date: 2022/12/15 12:09:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmailDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[Design] [nvarchar](max) NULL,
	[email] [nvarchar](256) NULL,
	[phone] [nvarchar](256) NULL,
	[jobtitle] [nvarchar](256) NULL,
	[userfullname] [nvarchar](256) NULL,
	[customclosetext] [nvarchar](max) NULL,
	[customgreetingheader] [nvarchar](max) NULL,
	[customgreetingtext] [nvarchar](max) NULL,
	[htmlString] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


