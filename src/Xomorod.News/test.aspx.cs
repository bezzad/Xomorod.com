using System;
using System.Web.Services;

namespace Xomorod.News
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateRss_Click(object sender, EventArgs e)
        {
            RssWriter(txtRssAddress.Text);
        }

        [WebMethod]
        public void RssWriter(string url)
        {
            //if (string.IsNullOrEmpty(url)) return;

            //List<RssItem> rsses = new List<RssItem>();

            //rsses.AddRange(url.GetRssFeed().GetRssItems());

            //var resourceId = DatabaseConnectionProvider.Connection.RssResources.FirstOrDefault(x => x.Url == url)?.ID;

            //if (resourceId == null) return;

            //foreach (var rss in rsses)
            //{
            //    DatabaseConnectionProvider.Connection.sp_Insert_RssItem(rss.Url, rss.Title, rss.Description, rss.ThumbnailUrl,
            //        rss.PublishDate, rss.Author, resourceId);
            //}
        }
    }
}