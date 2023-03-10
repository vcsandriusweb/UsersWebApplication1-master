create proc [dbo].[usp_GetUserDetails]
@UserName	nvarchar(100)
as

select AspNetUsers.Id, FirstName, Surname, AspNetUsers.Email, isnull(AspNetRoles.Name, 'User')  as Role
	from AspNetUsers
	left join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId
	left join AspNetRoles on AspNetUserRoles.RoleId = AspNetRoles.Id
where @UserName = AspNetUsers.UserName


