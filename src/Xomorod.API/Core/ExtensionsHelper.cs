using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Reflection;

namespace Xomorod.API.Core
{
    /// <summary>
    /// Some extension methods to provide some many works to easily.
    /// </summary>
    public static class ExtensionsHelper
    {
        /// <summary>
        /// Returns a dictionary of QueryStrings that's easier to work with 
        /// than GetQueryNameValuePairs KeyValuePairs collection.
        /// 
        /// If you need to pull a few single values use GetQueryString instead.
        /// </summary>
        /// <param name="request"><seealso cref="HttpRequestMessage"/></param>
        /// <returns><see cref="Dictionary{TKey,TValue}"/></returns>
        public static Dictionary<string, string> GetQueryStrings(this HttpRequestMessage request)
        {
            return request.GetQueryNameValuePairs()
                          .ToDictionary(kv => kv.Key, kv => kv.Value,
                               StringComparer.OrdinalIgnoreCase);
        }

        /// <summary>
        /// Get Running library version
        /// </summary>
        /// <returns>Version of application or library as <seealso cref="string"/></returns>
        public static string GetRunningAppVersion()
        {
            try
            {
                Assembly myAsm = Assembly.GetEntryAssembly() ?? Assembly.GetExecutingAssembly();

                var ver = myAsm.GetName().Version;
                var version = $"{ver.Major}.{ver.Minor}.{ver.Build}";

                return version;
            }
            catch (Exception exp)
            {
                Elmah.ErrorSignal.FromCurrentContext().Raise(exp);
                return null;
            }
        }

        /// <summary>
        /// Get Running library name
        /// </summary>
        /// <returns>Name of application or library as <seealso cref="string"/></returns>
        public static string GetRunningAppName()
        {
            try
            {
                Assembly myAsm = Assembly.GetEntryAssembly() ?? Assembly.GetExecutingAssembly();
                
                var appName = myAsm?.GetName()?.Name ?? "Xomorod.API";

                if (appName.ToLower() == "mscorlib") appName = "Xomorod.API";

                return appName;
            }
            catch (Exception exp)
            {
                Elmah.ErrorSignal.FromCurrentContext().Raise(exp);
                return null;
            }
        }

        /// <summary>
        /// Get language ID for the culture string
        /// </summary>
        /// <param name="lang">culture as <see cref="string"/></param>
        /// <returns>language ID as <see cref="Nullable{Int32}"/></returns>
        public static int? GetLanguageId(string lang)
        {
            int langId;
            switch (lang.ToLower())
            {
                case "fa":
                    langId = 2;
                    break;
                case "en":
                    langId = 1;
                    break;
                default:
                    return null;
            }

            return langId;
        }

        /// <summary>
        /// Set row condition for a dynamic lists
        /// </summary>
        /// <param name="lstObjects"></param>
        /// <param name="fromRow">start row</param>
        /// <param name="toRow">end row</param>
        /// <returns>dynamic list result as <see cref="List{dynamic}"/></returns>
        public static List<dynamic> GetFromToRow(this IEnumerable<dynamic> lstObjects, int fromRow, int toRow)
        {
            var result = lstObjects.Where(x => x.Row >= fromRow && x.Row <= toRow).ToList();

            return result;
        }
    }
}
