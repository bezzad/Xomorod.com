using Dapper;
using System;
using Xomorod.Com.Models;

namespace Xomorod.Com.Core
{
    public static class DbContext
    {
        public static int GetInboxMessageCount(this ApplicationUser user)
        {
            var count =
                Connections.Xomorod.SqlConn.ExecuteScalar<int>("SELECT COUNT(1) FROM dbo.ContactMe WHERE IsRead = 0 AND UserId = @UserId",
                    new { UserId = user.Id });

            return count;
        }

        public static int GetErrorsCount(this ApplicationUser user)
        {
            var count = Connections.Xomorod.SqlConn.ExecuteScalar<int>("SELECT COUNT(1) FROM dbo.ELMAH_Error");

            return count;
        }
    }
}