namespace Xomorod.Helper.Ranking
{
    internal static class AlexaResources
    {
        internal static string AlexaGlobalRank { get; set; } = @"(alt='Global rank icon'><strong class=""metrics-data align-vmiddle"">[\s?]*<!-- [\s?\w?\W?]* -->)[\s?]*(?<number>[\d\,?]*)";
        internal static string AlexaIranRank { get; set; } = @"(alt='Iran Flag'><strong class=""metrics-data align-vmiddle"">)[\s?]*(?<number>[\d\,]*)";
        internal static string AlexaLinksin { get; set; } = @"(>Total Sites Linking In<\/h5>\s*<span class=[\""\w\-\s]*>)[\s?]*(?<number>[\d\,?]*)";
    }
}
