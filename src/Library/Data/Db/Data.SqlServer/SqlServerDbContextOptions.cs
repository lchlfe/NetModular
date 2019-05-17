﻿using System.Data;
using System.Data.SqlClient;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Nm.Lib.Data.Abstractions.Options;
using Nm.Lib.Data.Core;

namespace Nm.Lib.Data.SqlServer
{
    /// <summary>
    /// 数据库上下文配置项SqlServer实现
    /// </summary>
    public class SqlServerDbContextOptions : DbContextOptionsAbstract
    {
        public SqlServerDbContextOptions(DbOptions dbOptions, DbConnectionOptions options, ILoggerFactory loggerFactory, IHttpContextAccessor httpContextAccessor) : base(dbOptions, options, new SqlServerAdapter(options.Database), loggerFactory, httpContextAccessor)
        {
        }

        public override IDbConnection OpenConnection()
        {
            return new SqlConnection(ConnectionString);
        }
    }
}