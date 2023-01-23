alter proc usp_GetUserData
as
begin
select 
	AspNetUsers.Id, FirstName, Surname, AspNetUsers.Email, isnull(AspNetRoles.Name, 'User')  as Role
	from AspNetUsers
	left join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId
	left join AspNetRoles on AspNetUserRoles.RoleId = AspNetRoles.Id
end