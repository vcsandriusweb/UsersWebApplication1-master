

CREATE TABLE [dbo].[LandingDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[Design] [nvarchar](max) NULL,
	[email] [nvarchar](256) NULL,
	[phone] [nvarchar](256) NULL,
	[jobtitle] [nvarchar](256) NULL,
	[userfullname] [nvarchar](256) NULL,
	
	[customheadline] [nvarchar](max) NULL,
	[customyourheadline] [nvarchar](max) NULL,
	[customyourCTAheadline] [nvarchar](max) NULL,
	
	[htmlString] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


