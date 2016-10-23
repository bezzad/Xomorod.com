using System;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Web.UI;
using AdoManager;
using Dapper;
using DotNet.Highstock.Enums;
using DotNet.Highstock.Helpers;
using DotNet.Highstock.Options;
using Xomorod.Com.Models;
using Xomorod.Helper;
using Xomorod.Helper.GooglePageSpeed;
using Xomorod.Helper.Ranking;
using Xomorod.Helper.Resources;
using Xomorod.Shared.Resources;

namespace Xomorod.Com.Controllers
{
    [Authorize(Roles = "Admin")]
    public class AdminController : BaseController
    {
        //[OutputCache(Duration = 3600, Location = OutputCacheLocation.Any, VaryByParam = "*", VaryByCustom = "culture;user",
        //    VaryByContentEncoding = "gzip;deflate", VaryByHeader = "X-Requested-With;Accept-Language")] // cache to 1hour
        public async Task<ActionResult> Ranking(string url = null)
        {
            var alexa = new Alexa(url ?? SecurityKeys.WebSiteRout);
            var trends = ConnectionManager.GetDefaultConnection().SqlConn.Query("Select * From dbo.udft_TrafficRankings()").ToList();

            var gData = new object[trends.Count(), 2]; // global ranking data
            var iData = new object[trends.Count(), 2];  // iran ranking data

            for (var i = 0; i < trends.Count(); i++)
            {
                // The x value of the point. For datetime axes, the X value is the timestamp in milliseconds since 1970.
                gData[i, 0] = new TimeSpan(((DateTime)trends[i].ModifyDate).Subtract(new DateTime(1970, 1, 1)).Ticks).TotalMilliseconds;
                iData[i, 0] = gData[i, 0];

                // The y value of the point. Defaults to null.
                gData[i, 1] = (double)trends[i].GlobalRanking;
                iData[i, 1] = (double)trends[i].IranRanking;
            }

            var rangeSelect = new RangeSelector()
            {
                Buttons = new[] {
                    //new ButtonsItems() { Type = "hour", Count = 12, Text = "12h" },
                    new ButtonsItems() {Type = "day", Count = 3, Text = Localization._3day},
                    new ButtonsItems() {Type = "week", Count = 1, Text = Localization._1week},
                    new ButtonsItems() {Type = "month", Count = 1, Text = Localization._1month},
                    new ButtonsItems() {Type = "month", Count = 6, Text = Localization._6month},
                    new ButtonsItems() {Type = "year", Count = 1, Text = Localization._1year},
                    new ButtonsItems() {Type = "all", Text = Localization.All}
                },
                Selected = 5
            };

            DotNet.Highstock.Highstock gChart = new DotNet.Highstock.Highstock("gStockChart");
            DotNet.Highstock.Highstock iChart = new DotNet.Highstock.Highstock("iStockChart");

            gChart.SetTitle(new Title() { Text = Localization.GlobalHistoricalTrafficTrends });
            iChart.SetTitle(new Title() { Text = Localization.IranHistoricalTrafficTrends });

            gChart.SetYAxis(new[] { new YAxis { Title = new YAxisTitle() { Text = Localization.RankingScore }, LineWidth = 2 } });
            iChart.SetYAxis(new[] { new YAxis { Title = new YAxisTitle() { Text = Localization.RankingScore }, LineWidth = 2 } });

            gChart.SetSeries(
                new Series()
                {
                    Data = new Data(gData),
                    Color = Color.DeepSkyBlue,
                    DashStyle = DashStyles.Solid,
                    Type = ChartTypes.Line,
                    Name = "Global"
                });

            iChart.SetSeries(
                new Series()
                {
                    Data = new Data(iData),
                    Color = Color.Aquamarine,
                    DashStyle = DashStyles.Solid,
                    Type = ChartTypes.Column,
                    Name = "Iran"
                });

            gChart.SetRangeSelector(rangeSelect);
            iChart.SetRangeSelector(rangeSelect);

            ViewData.Add("GlobalChart", gChart);
            ViewData.Add("IranChart", iChart);

            var ps = new PageSpeed(url ?? SecurityKeys.WebSiteRout) { Screenshot = true };
            await ps.AnalyzeAsync();

            return View(Tuple.Create(alexa, ps));
        }

        public ActionResult Inbox()
        {
            var data = Connections.Xomorod.SqlConn.Query<AdminModels.InboxViewModel>("Select * FROM  dbo.ContactMe WHERE UserId = @UserId", new { UserId = CurrentUser.Id });
            return View(data);
        }

        public async Task<ActionResult> RemoveFromInbox(int id)
        {
            await Connections.Xomorod.SqlConn.ExecuteAsync("Delete FROM dbo.ContactMe WHERE ContactMeID = @id", new { id });
            var data = await Connections.Xomorod.SqlConn.QueryAsync<AdminModels.InboxViewModel>("Select * FROM  dbo.ContactMe WHERE UserId = @UserId", new { UserId = CurrentUser.Id });
            return View("Inbox", data);
        }
    }
}