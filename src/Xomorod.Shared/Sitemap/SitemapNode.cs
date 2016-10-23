using System;

namespace Xomorod.Shared.Sitemap
{
    public class SitemapNode
    {
        public string Title { get; set; }
        public ChangeFrequency? Frequency { get; set; }
        public DateTime? LastModified { get; set; }
        public double? Priority { get; set; }
        public string Url { get; set; }
        public int LangId { get; set; }
    }
}