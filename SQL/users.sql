select FirstName, Surname, AspNetUsers.Email, isnull(AspNetRoles.Name, 'User') from AspNetUsers
left join AspNetUserRoles on AspNetUsers.Id = AspNetUserRoles.UserId
left join AspNetRoles on AspNetUserRoles.RoleId = AspNetRoles.Id