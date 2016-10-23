using System;

namespace Xomorod.News.Core
{
    public class RssItem
    {
        public string Url { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string ThumbnailUrl { get; set; }
        public DateTime PublishDate { get; set; }
        public string Author { get; set; }
        public string Category { get; set; }
        public string Resource { get; set; }
        public int Score { get; set; }
    }
}
