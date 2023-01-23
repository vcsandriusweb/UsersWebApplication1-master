USE [aspnet-UsersWebApplication1-20221128122141]
GO

/****** Object: SqlProcedure [dbo].[usp_SaveUserData] Script Date: 2022/12/05 16:20:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO








ALTER proc usp_SaveUserData
	@Id						NVARCHAR (256),
	@Email					NVARCHAR (256),
	@UserName				NVARCHAR (256),
	@FirstName				NVARCHAR (50),
	@Surname				NVARCHAR (50),
	@Role					NVARCHAR (50),
	@Password				NVARCHAR (MAX) 
as
begin
	--Get RoleId
	declare @RoleId int = (select Id from AspNetRoles where Name = @Role)
	declare
		@EmailConfirmed			BIT = 1,
		@PhoneNumberConfirmed	BIT = 1,
		@TwoFactorEnabled		BIT = 0,
		@LockoutEnabled			BIT = 0,
		@AccessFailedCount		INT = 0,
		@SecurityStamp			NVARCHAR(MAX) = 'Somerandomstring' --https://social.msdn.microsoft.com/Forums/en-US/2c009505-fc23-4465-912c-c1b190af8234/microsoftaspnetusermanager-is-there-a-synchronous-version-of-createasync-how-do-i-add?forum=aspsecurity

	if (@Id is null or len(@Id) = 0 )
	begin
		set @Id = NEWID()

		insert into AspNetUsers
		(
			Id, Email, EmailConfirmed, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEnabled, 
			AccessFailedCount, UserName, FirstName, Surname, PasswordHash, SecurityStamp
		)
		values
		(
			@Id, @Email, @EmailConfirmed, @PhoneNumberConfirmed, @TwoFactorEnabled, @LockoutEnabled, 
			@AccessFailedCount, @UserName, @FirstName, @Surname, @Password,@SecurityStamp
		)

		insert into AspNetUserRoles
		(
			UserID, RoleId
		)
		values
		(
			@Id, @RoleId
		)
	end
	else
		update AspNetUsers
		set
			FirstName = @FirstName,
			Surname = @Surname,
			Email = @Email,
			UserName = @UserName
		where Id = @Id
	
		if exists(select top 1 * from AspNetUserRoles where UserId = @Id)
		begin
			update AspNetUserRoles
			set
				RoleId = @RoleId
			where UserId = @Id
		end
		else 
		begin
			insert into AspNetUserRoles
			(
				UserID, RoleId
			)
			values
			(
				@Id, @RoleId
			)
		end
end
