

alter proc [dbo].[usp_SaveDocumentDetail]

@Name					nvarchar(256),
@Content				nvarchar(max),
@Design					nvarchar(max),
@FrontCoverHeadline		nvarchar(max),
@FrontCoverSubheading	nvarchar(max),
@InsideFrontCoverCopy	nvarchar(max),
@BackCoverCopy			nvarchar(max),
@BackCoverLink			nvarchar(max),

@Id int OUTPUT
as

INSERT INTO [dbo].[DocumentDetail]
           ([Design]
           ,[FrontCoverHeadline]
           ,[FrontCoverSubheading]
           ,[InsideFrontCoverCopy]
           ,[BackCoverCopy]
           ,[BackCoverLink]
           ,[Name]
		   ,[Content])
     VALUES
           (@Design
           ,@FrontCoverHeadline
           ,@FrontCoverSubheading
           ,@InsideFrontCoverCopy
           ,@BackCoverCopy
           ,@BackCoverLink
           ,@Name
		   ,@Content
		   )


SELECT @Id = SCOPE_IDENTITY()


GO


