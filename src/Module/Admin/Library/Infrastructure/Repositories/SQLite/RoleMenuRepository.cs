﻿using Nm.Lib.Data.Abstractions;

namespace Nm.Module.Admin.Infrastructure.Repositories.SQLite
{
    public class RoleMenuRepository : SqlServer.RoleMenuRepository
    {
        public RoleMenuRepository(IDbContext context) : base(context)
        {
        }
    }
}
