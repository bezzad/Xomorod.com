using System;
using System.Data;
using AdoManager;
using Dapper;
using Xomorod.Helper.Ranking;

namespace Xomorod.Com.Core
{
    public static class XomorodRankingWriter
    {
        public static void ReadWebSiteRanking()
        {
            try
            {
                using (var alexa = new Alexa("xomorod.com"))
                {
                    ConnectionManager.GetDefaultConnection().SqlConn.Execute("sp_TrafficRankings_Insert",
                        new { GlobalRank = alexa.GetGlobalRanking(), IranRank = alexa.GetLocalRanking() },
                        commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception ex)
            {
                Elmah.ErrorSignal.FromCurrentContext().Raise(ex);
            }
        }
    }
}
