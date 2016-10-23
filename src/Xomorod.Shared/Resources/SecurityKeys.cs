using System;
using System.Diagnostics;
using Dapper;

namespace Xomorod.Shared.Resources
{
    public static class SecurityKeys
    {
        public static readonly string ApiWebRout = Debugger.IsAttached ? "http://localhost:7911/" : "http://api.xomorod.com/";
        public static readonly string WebSiteRout = "http://xomorod.com/"; //Debugger.IsAttached ? "http://localhost:8091/" : "http://xomorod.com/";

        public static readonly string CultureCookieKey = "_culture";

        public static string ReCaptchaPublicKey => "reCaptchaPublicKey".GetSettingByKey();

        public static string ReCaptchaPrivateKey => "reCaptchaPrivateKey".GetSettingByKey();

        public static string GoogleOAuthClientId => "GoogleOAuthClientID".GetSettingByKey();

        public static string GoogleOAuthClientSecret => "GoogleOAuthClientSecret".GetSettingByKey();

        public static string FacebookAppSecret => "FacebookAppSecret".GetSettingByKey();

        public static string FacebookAppId => "FacebookAppID".GetSettingByKey();

        public static string TwitterConsumerKey => "TwitterConsumerKey".GetSettingByKey();

        public static string TwitterConsumerSecret => "TwitterConsumerSecret".GetSettingByKey();

        public static string MicrosoftAppPassword => "MicrosoftAppPassword".GetSettingByKey();

        public static string MicrosoftAppPrivateKey => "MicrosoftAppPrivateKey".GetSettingByKey();

        public static string MicrosoftAppId => "MicrosoftAppId".GetSettingByKey();


        internal static string GetSettingByKey(this string key)
        {
            return Connections.Xomorod.SqlConn.ExecuteScalar<string>(@"select dbo.GetSettingByKey(@Key)", new { Key = key });
        }
    }
}
