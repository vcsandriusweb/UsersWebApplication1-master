USE [aspnet-UsersWebApplication1-20221128122141]
GO

/****** Object: SqlProcedure [dbo].[usp_SaveUserData] Script Date: 2022/11/30 12:45:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





CREATE proc usp_DeleteUserData
	@Id						NVARCHAR (256) 
as
begin

	delete from AspNetUserRoles 
	where UserId = @Id

	delete from AspNetUsers
	where Id = @Id

	
end
