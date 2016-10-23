using System.Web.Mvc;

namespace Xomorod.Helper.Ranking
{
    public static class AlexaHtmlExtensions
    {
        public static MvcHtmlString GlobalRanking(this HtmlHelper helper, Alexa alexa)
        {
            var globalRank = alexa.GetGlobalRanking();

            var html =
               $"<a href='http://www.alexa.com/siteinfo/{alexa.WebSite}#trafficstats' target='_blank'>{globalRank.ToString("##,###")}</a>";

            return new MvcHtmlString(html);
        }
        public static MvcHtmlString GlobalRanking(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);

            return GlobalRanking(helper, alexa);
        }

        public static MvcHtmlString LocalRanking(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);
            return LocalRanking(helper, alexa);
        }
        public static MvcHtmlString LocalRanking(this HtmlHelper helper, Alexa alexa)
        {
            var localRank = alexa.GetLocalRanking();

            var html =
               $"<a href='http://www.alexa.com/siteinfo/{alexa.WebSite}#trafficstats' title='Iran' target='_blank'>{localRank.ToString("##,###")}</a>";

            return new MvcHtmlString(html);
        }

        public static MvcHtmlString Linksin(this HtmlHelper helper, Alexa alexa)
        {
            var links = alexa.GetLinksin();

            var html = $"<a href = 'http://www.alexa.com/site/linksin/{alexa.WebSite}' target='_blank'>{links.ToString("##,###")}</a>";

            return new MvcHtmlString(html);
        }
        public static MvcHtmlString Linksin(this HtmlHelper helper, string domain)
        {
            var alexa = new Alexa(domain);
            return Linksin(helper, alexa);
        }
    }
}
