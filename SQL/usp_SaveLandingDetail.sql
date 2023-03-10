USE [Fujitsu_Dev]
GO
/****** Object:  StoredProcedure [dbo].[usp_SaveEmailDetail]    Script Date: 2023/01/01 09:21:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[usp_SaveLandingDetail]

@Name					nvarchar(256),
@Content				nvarchar(max),
@Design					nvarchar(max),
@email					nvarchar(256),
@phone					nvarchar(256),
@jobtitle				nvarchar(256),
@userfullname			nvarchar(256),
@customheadline			nvarchar(max),
@customyourheadline		nvarchar(max),
@customyourCTAheadline	nvarchar(max),
@htmlString				nvarchar(max),

@Id int OUTPUT
as

INSERT INTO [dbo].[LandingDetail]
           (Name
			,Content
			,Design
			,email
			,phone
			,jobtitle
			,userfullname
			,customheadline
			,customyourheadline
			,customyourCTAheadline
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
			,@customheadline
			,@customyourheadline
			,@customyourCTAheadline
			,@htmlString
		   )


SELECT @Id = SCOPE_IDENTITY()


