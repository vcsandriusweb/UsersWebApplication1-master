USE [Fujitsu_Dev]
GO
/****** Object:  StoredProcedure [dbo].[usp_SaveDocumentDetail]    Script Date: 2022/12/15 11:56:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_SaveEmailDetail]

@Name					nvarchar(256),
@Content				nvarchar(max),
@Design					nvarchar(max),
@email					nvarchar(256),
@phone					nvarchar(256),
@jobtitle				nvarchar(256),
@userfullname			nvarchar(256),
@customclosetext		nvarchar(max),
@customgreetingheader	nvarchar(max),
@customgreetingtext		nvarchar(max),

@Id int OUTPUT
as

INSERT INTO [dbo].[EmailDetail]
           (Name
			,Content
			,Design
			,email
			,phone
			,jobtitle
			,userfullname
			,customclosetext
			,customgreetingheader
			,customgreetingtext
           )
     VALUES
           (@Name
			,@Content
			,@Design
			,@email
			,@phone
			,@jobtitle
			,@userfullname
			,@customclosetext
			,@customgreetingheader
			,@customgreetingtext
		   )


SELECT @Id = SCOPE_IDENTITY()


