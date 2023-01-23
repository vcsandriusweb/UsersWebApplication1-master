alter proc usp_GetDocumentDetail
@Id						int
as

SELECT [Id]
      ,[Design]
      ,[FrontCoverHeadline]
      ,[FrontCoverSubheading]
      ,[InsideFrontCoverCopy]
      ,[BackCoverCopy]
      ,[BackCoverLink]
      ,[Name]
	  ,[Content]
FROM [dbo].[DocumentDetail]
where Id = @Id


