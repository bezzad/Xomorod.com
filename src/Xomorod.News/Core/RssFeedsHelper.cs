using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Syndication;
using System.Xml;

namespace Xomorod.News.Core
{
    public static class RssFeedsHelper
    {

        public static SyndicationFeed GetRssFeed(this string url)
        {
            try
            {
                XmlReader reader = XmlReader.Create(url);
                SyndicationFeed feed = SyndicationFeed.Load(reader);
                reader.Close();

                return feed;
            }
            catch (Exception exp)
            {
                // log ex in db
                Elmah.ErrorSignal.FromCurrentContext().Raise(exp);
                return null;
            }

        }

        public static IList<RssItem> GetRssItems(this SyndicationFeed feed)
        {
            List<RssItem> result = new List<RssItem>();

            if (feed == null) return result;

            foreach (SyndicationItem item in feed.Items)
            {
                try
                {
                    var rss = new RssItem();

                    rss.Title = item.Title.Text;
                    rss.Description = item.Summary.Text;
                    rss.Url = item.Links[0].Uri.ToString();
                    rss.PublishDate = item.GetPublishDate();
                    rss.Author = item.GetAuthor();
                    rss.ThumbnailUrl = item.GetThumbnailUrl();
                    rss.Resource = item.GetHost();
                    rss.Score = 0;

                    result.Add(rss);
                }
                catch (Exception)
                {
                    // log error
                }

            }

            return result;
        }

        public static DateTime GetPublishDate(this SyndicationItem item)
        {
            DateTime result;

            if (item.PublishDate.Date.Year > 2015)
            {
                result = item.PublishDate.Date;
            }
            else if ((result = item.GetExtensionElementValue<DateTime>("date")).Year < 2015)
            {
                result = DateTime.Now;
            }

            return result;
        }

        public static string GetAuthor(this SyndicationItem item)
        {
            if (item.Authors.Any())
            {
                return item.Authors[0].Name;
            }

            return item.GetExtensionElementValue<string>("creator");
        }

        public static string GetThumbnailUrl(this SyndicationItem item)
        {
            var result = GetExtensionElementAttribueValue(item, "thumbnail", "url");

            return result;
        }

        public static string GetHost(this SyndicationItem item)
        {
            try
            {
                if (item.Links.Any())
                {
                    return item.Links[0].Uri?.DnsSafeHost;
                }
            }
            catch (Exception)
            {
                // log error in db
            }

            return null;
        }

        private static T GetExtensionElementValue<T>(this SyndicationItem item, string extensionElementName)
        {
            var element = item.GetElementExtension(extensionElementName);
            return element != null ? element.GetObject<T>() : default(T);
        }

        private static string GetExtensionElementAttribueValue(this SyndicationItem item, string extensionElementName, string attribName)
        {
            return item.GetElementExtension(extensionElementName)?.GetReader()?.GetAttribute(attribName);
        }

        private static SyndicationElementExtension GetElementExtension(this SyndicationItem item, string extensionElementName)
        {
            return item.ElementExtensions.FirstOrDefault(ee => ee.OuterName == extensionElementName);
        }
    }
}
