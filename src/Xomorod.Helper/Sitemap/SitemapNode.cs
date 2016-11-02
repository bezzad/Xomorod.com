using System;
using System.Web.Mvc;

namespace Xomorod.Helper.Sitemap
{
    public class SitemapNode
    {
        public long? Id { get; set; }
        public string Title { get; set; }
        public ChangeFrequency? Frequency { get; set; }
        public DateTime? LastModified { get; set; }
        public double? Priority { get; set; }
        public string Url { get; set; }
        public int LangId { get; set; }
        public long? ParentId { get; set; }

        public override string ToString()
        {
            if (string.IsNullOrEmpty(Title)) return string.Empty;

            var aTag = new TagBuilder("a");
            aTag.Attributes.Add("href", Url);
            aTag.InnerHtml = Title;
            return aTag.ToString();
        }
    }
}