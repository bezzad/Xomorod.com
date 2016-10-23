using System;
using System.Diagnostics;
using System.Security.Policy;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Xomorod.Helper.GooglePageSpeed
{
    public class PageSpeed
    {
        #region Properties

        protected Url ApiUrl { get; set; } = new Url("https://www.googleapis.com/pagespeedonline/v2/runPagespeed");


        public PageSpeedStrategy Strategy { get; set; }

        public Url PageUrl { get; set; }
        public string PageTitle { get; set; }
        public bool Screenshot { get; set; }


        public int MobileSpeedPercent { get; set; }
        public int DesktopSpeedPercent { get; set; }
        public int UserExperiencePercent { get; set; }

        public string MobileScreenshot { get; set; }
        public string MobileScreenshotMimeType { get; set; }
        public int MobileScreenshotWidth { get; set; }
        public int MobileScreenshotHeight { get; set; }

        public string DesktopScreenshot { get; set; }
        public string DesktopScreenshotMimeType { get; set; }
        public int DesktopScreenshotWidth { get; set; }
        public int DesktopScreenshotHeight { get; set; }

        public long NumberResources { get; set; }
        public long NumberHosts { get; set; }
        public long TotalRequestBytes { get; set; }
        public long NumberStaticResources { get; set; }
        public long HtmlResponseBytes { get; set; }
        public long CssResponseBytes { get; set; }
        public long ImageResponseBytes { get; set; }
        public long JavascriptResponseBytes { get; set; }
        public long OtherResponseBytes { get; set; }
        public long NumberJsResources { get; set; }
        public long NumberCssResources { get; set; }

        public string UserExperienceState => UserExperiencePercent >= 85 ? "excellent" : UserExperiencePercent >= 65 ? "warning" : "error";
        public string MobileSpeedState => MobileSpeedPercent >= 85 ? "excellent" : MobileSpeedPercent >= 65 ? "warning" : "error";
        public string DesktopSpeedState => DesktopSpeedPercent >= 85 ? "excellent" : DesktopSpeedPercent >= 65 ? "warning" : "error";

        #endregion

        #region Constructors

        public PageSpeed(string url, PageSpeedStrategy strategy = PageSpeedStrategy.All)
        {
            PageUrl = new Url(url);
            Strategy = strategy;
        }

        #endregion

        #region Methods

        public PageSpeed Analyze()
        {
            if (string.IsNullOrEmpty(PageUrl?.Value))
            {
                throw new ArgumentNullException(nameof(PageUrl));
            }

            if (Strategy.HasFlag(PageSpeedStrategy.Mobile)) AnalyzeMobileStrategy();
            if (Strategy.HasFlag(PageSpeedStrategy.Desktop)) AnalyzeDesktopStrategy();

            return this;
        }
        public async Task<PageSpeed> AnalyzeAsync()
        {
            if (string.IsNullOrEmpty(PageUrl?.Value))
            {
                throw new ArgumentNullException(nameof(PageUrl));
            }

            if (Strategy.HasFlag(PageSpeedStrategy.Mobile)) await AnalyzeMobileStrategyAsync();
            if (Strategy.HasFlag(PageSpeedStrategy.Desktop)) await AnalyzeDesktopStrategyAsync();

            return this;
        }

        private void AnalyzeMobileStrategy()
        {
            string jsonResult;

            if (Debugger.IsAttached)
            {
                jsonResult = Extensions.GetEmbeddedResource("Xomorod.Helper.Ranking.PageSpeedMobileResponseSample.json");
            }
            else
            {
                jsonResult = ApiUrl.Get(
                    Tuple.Create("url", PageUrl.Value),
                    Tuple.Create("screenshot", Screenshot.ToString().ToLower()),
                    Tuple.Create("strategy", "mobile"),
                    Tuple.Create("filter_third_party_resources", "false"));
            }

            if (string.IsNullOrEmpty(jsonResult)) return;

            dynamic dynamicResult = JsonConvert.DeserializeObject(jsonResult);

            PageTitle = dynamicResult.title;
            MobileSpeedPercent = dynamicResult?.ruleGroups?.SPEED?.score ?? 0;
            UserExperiencePercent = dynamicResult?.ruleGroups?.USABILITY?.score ?? 0;
            NumberResources = dynamicResult?.pageStats?.numberResources ?? 0;
            NumberHosts = dynamicResult?.pageStats?.numberHosts ?? 0;
            TotalRequestBytes = dynamicResult?.pageStats?.totalRequestBytes ?? 0;
            NumberStaticResources = dynamicResult?.pageStats?.numberStaticResources ?? 0;
            HtmlResponseBytes = dynamicResult?.pageStats?.htmlResponseBytes ?? 0;
            CssResponseBytes = dynamicResult?.pageStats?.cssResponseBytes ?? 0;
            ImageResponseBytes = dynamicResult?.pageStats?.imageResponseBytes ?? 0;
            JavascriptResponseBytes = dynamicResult?.pageStats?.javascriptResponseBytes ?? 0;
            OtherResponseBytes = dynamicResult?.pageStats?.otherResponseBytes ?? 0;
            NumberJsResources = dynamicResult?.pageStats?.numberJsResources ?? 0;
            NumberCssResources = dynamicResult?.pageStats?.numberCssResources ?? 0;

            if (Screenshot)
            {
                MobileScreenshot = dynamicResult?.screenshot?.data?.ToString()?.Replace("_", "/")?.Replace("-", "+");
                MobileScreenshotMimeType = dynamicResult?.screenshot?.mime_type ?? "image/jpeg";
                MobileScreenshotWidth = dynamicResult?.screenshot?.width ?? 0;
                MobileScreenshotHeight = dynamicResult?.screenshot?.height ?? 0;
            }
        }
        private void AnalyzeDesktopStrategy()
        {
            string jsonResult;

            if (Debugger.IsAttached)
            {
                jsonResult = Extensions.GetEmbeddedResource("Xomorod.Helper.Ranking.PageSpeedDesktopResponseSample.json");
            }
            else
            {
                jsonResult = ApiUrl.Get(
                    Tuple.Create("url", PageUrl.Value),
                    Tuple.Create("screenshot", Screenshot.ToString().ToLower()),
                    Tuple.Create("strategy", "desktop"),
                    Tuple.Create("filter_third_party_resources", "false"));
            }

            if (string.IsNullOrEmpty(jsonResult)) return;

            dynamic dynamicResult = JsonConvert.DeserializeObject(jsonResult);

            PageTitle = dynamicResult.title;
            DesktopSpeedPercent = dynamicResult?.ruleGroups?.SPEED?.score ?? 0;
            NumberResources = dynamicResult?.pageStats?.numberResources ?? 0;
            NumberHosts = dynamicResult?.pageStats?.numberHosts ?? 0;
            TotalRequestBytes = dynamicResult?.pageStats?.totalRequestBytes ?? 0;
            NumberStaticResources = dynamicResult?.pageStats?.numberStaticResources ?? 0;
            HtmlResponseBytes = dynamicResult?.pageStats?.htmlResponseBytes ?? 0;
            CssResponseBytes = dynamicResult?.pageStats?.cssResponseBytes ?? 0;
            ImageResponseBytes = dynamicResult?.pageStats?.imageResponseBytes ?? 0;
            JavascriptResponseBytes = dynamicResult?.pageStats?.javascriptResponseBytes ?? 0;
            OtherResponseBytes = dynamicResult?.pageStats?.otherResponseBytes ?? 0;
            NumberJsResources = dynamicResult?.pageStats?.numberJsResources ?? 0;
            NumberCssResources = dynamicResult?.pageStats?.numberCssResources ?? 0;

            if (Screenshot)
            {
                DesktopScreenshot = dynamicResult?.screenshot?.data?.ToString()?
                    .Replace("_", "/")?.Replace("-", "+");
                DesktopScreenshotMimeType = dynamicResult?.screenshot?.mime_type ?? "image/jpeg";
                DesktopScreenshotWidth = dynamicResult?.screenshot?.width ?? 0;
                DesktopScreenshotHeight = dynamicResult?.screenshot?.height ?? 0;
            }
        }

        private async Task AnalyzeMobileStrategyAsync()
        {
            string jsonResult;

            if (Debugger.IsAttached)
            {
                jsonResult = await Extensions.GetEmbeddedResourceAsync("Xomorod.Helper.Ranking.PageSpeedMobileResponseSample.json");
            }
            else
            {
                jsonResult = await ApiUrl.GetAsync(
                    Tuple.Create("url", PageUrl.Value),
                    Tuple.Create("screenshot", Screenshot.ToString().ToLower()),
                    Tuple.Create("strategy", "mobile"),
                    Tuple.Create("filter_third_party_resources", "false"));
            }

            if (string.IsNullOrEmpty(jsonResult)) return;

            dynamic dynamicResult = JsonConvert.DeserializeObject(jsonResult);

            PageTitle = dynamicResult?.title;
            MobileSpeedPercent = dynamicResult?.ruleGroups?.SPEED?.score ?? 0;
            UserExperiencePercent = dynamicResult?.ruleGroups?.USABILITY?.score ?? 0;
            NumberResources = dynamicResult?.pageStats?.numberResources ?? 0;
            NumberHosts = dynamicResult?.pageStats?.numberHosts ?? 0;
            TotalRequestBytes = dynamicResult?.pageStats?.totalRequestBytes ?? 0;
            NumberStaticResources = dynamicResult?.pageStats?.numberStaticResources ?? 0;
            HtmlResponseBytes = dynamicResult?.pageStats?.htmlResponseBytes ?? 0;
            CssResponseBytes = dynamicResult?.pageStats?.cssResponseBytes ?? 0;
            ImageResponseBytes = dynamicResult?.pageStats?.imageResponseBytes ?? 0;
            JavascriptResponseBytes = dynamicResult?.pageStats?.javascriptResponseBytes ?? 0;
            OtherResponseBytes = dynamicResult?.pageStats?.otherResponseBytes ?? 0;
            NumberJsResources = dynamicResult?.pageStats?.numberJsResources ?? 0;
            NumberCssResources = dynamicResult?.pageStats?.numberCssResources ?? 0;

            if (Screenshot)
            {
                MobileScreenshot = dynamicResult?.screenshot?.data?.ToString()?.Replace("_", "/")?.Replace("-", "+");
                MobileScreenshotMimeType = dynamicResult?.screenshot?.mime_type ?? "image/jpeg";
                MobileScreenshotWidth = dynamicResult?.screenshot?.width ?? 0;
                MobileScreenshotHeight = dynamicResult?.screenshot?.height ?? 0;
            }

        }
        private async Task AnalyzeDesktopStrategyAsync()
        {
            string jsonResult;

            if (Debugger.IsAttached)
            {
                jsonResult = await Extensions.GetEmbeddedResourceAsync("Xomorod.Helper.Ranking.PageSpeedDesktopResponseSample.json");
            }
            else
            {
                jsonResult = await ApiUrl.GetAsync(
                    Tuple.Create("url", PageUrl.Value),
                    Tuple.Create("screenshot", Screenshot.ToString().ToLower()),
                    Tuple.Create("strategy", "desktop"),
                    Tuple.Create("filter_third_party_resources", "false"));
            }

            if (string.IsNullOrEmpty(jsonResult)) return;

            dynamic dynamicResult = JsonConvert.DeserializeObject(jsonResult);

            PageTitle = dynamicResult?.title;
            DesktopSpeedPercent = dynamicResult?.ruleGroups?.SPEED?.score ?? 0;
            NumberResources = dynamicResult?.pageStats?.numberResources ?? 0;
            NumberHosts = dynamicResult?.pageStats?.numberHosts ?? 0;
            TotalRequestBytes = dynamicResult?.pageStats?.totalRequestBytes ?? 0;
            NumberStaticResources = dynamicResult?.pageStats?.numberStaticResources ?? 0;
            HtmlResponseBytes = dynamicResult?.pageStats?.htmlResponseBytes ?? 0;
            CssResponseBytes = dynamicResult?.pageStats?.cssResponseBytes ?? 0;
            ImageResponseBytes = dynamicResult?.pageStats?.imageResponseBytes ?? 0;
            JavascriptResponseBytes = dynamicResult?.pageStats?.javascriptResponseBytes ?? 0;
            OtherResponseBytes = dynamicResult?.pageStats?.otherResponseBytes ?? 0;
            NumberJsResources = dynamicResult?.pageStats?.numberJsResources ?? 0;
            NumberCssResources = dynamicResult?.pageStats?.numberCssResources ?? 0;

            if (Screenshot)
            {
                DesktopScreenshot = dynamicResult?.screenshot?.data?.ToString()?
                    .Replace("_", "/")?.Replace("-", "+");
                DesktopScreenshotMimeType = dynamicResult?.screenshot?.mime_type ?? "image/jpeg";
                DesktopScreenshotWidth = dynamicResult?.screenshot?.width ?? 0;
                DesktopScreenshotHeight = dynamicResult?.screenshot?.height ?? 0;
            }

        }

        #endregion

    }
}
