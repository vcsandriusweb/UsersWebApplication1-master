USE [Fujitsu_Dev]
GO
/****** Object:  StoredProcedure [dbo].[usp_SaveEmailDetail]    Script Date: 2022/12/15 12:11:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER proc [dbo].[usp_SaveEmailDetail]

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
@htmlString				nvarchar(max),

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
			,htmlString
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
			,@htmlString
		   )


SELECT @Id = SCOPE_IDENTITY()


