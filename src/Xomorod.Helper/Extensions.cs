using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Xomorod.Helper
{
    public static class Extensions
    {
        public static string CalcMemoryMensurableUnit(this double bigUnSignedNumber)
        {
            var culture = CultureInfo.CreateSpecificCulture("en-US");

            var kb = bigUnSignedNumber / 1024; // · 1024 Bytes = 1 Kilobyte 
            var mb = kb / 1024; // · 1024 Kilobytes = 1 Megabyte 
            var gb = mb / 1024; // · 1024 Megabytes = 1 Gigabyte 
            var tb = gb / 1024; // · 1024 Gigabytes = 1 Terabyte 
                                //var pb = tb / 1024; // · 1024 Terabytes = 1 Petabyte 
                                //var eb = pb / 1024; // · 1024 Petabytes = 1 Exabyte
                                //var zb = eb / 1024; // · 1024 Exabytes = 1 Zettabyte 
                                //var yb = zb / 1024; // · 1024 Zettabytes = 1 Yottabyte 
                                //var bb = yb / 1024; // · 1024 Yottabytes = 1 Brontobyte
                                //var geoB = bb / 1024; // · 1024 Brontobytes = 1 Geopbyte
                                //var saganB = geoB / 1024; // . Saganbyte = 1024 Geopbyte
                                //var pijaB = saganB / 1024; // . Pijabyte = 1024 Saganbyte 
                                //var alphaB = pijaB / 1024; // . Alphabyte = 1024 Pijabyte 
                                //var kryatB = alphaB / 1024; // . Kryatbyte = 1024 Alphabyte 
                                //var amosB = kryatB / 1024; // . Amosbyte = 1024 Kryatbyte 
                                //var pectrolB = amosB / 1024; // . Pectrolbyte = 1024 Amosbyte
                                //var bolgerB = pectrolB / 1024; // . Bolgerbyte = 1024 Pectrolbyte 
                                //var samboB = bolgerB / 1024; // . Sambobyte = 1024 Bolgerbyte
                                //var quesaB = samboB / 1024; // . Quesabyte = 1024 Sambobyte 
                                //var kinsaB = quesaB / 1024; // . Kinsabyte = 1024 Quesabyte 
                                //var rutherB = kinsaB / 1024; // . Rutherbyte = 1024 Kinsabyte 
                                //var dubniB = rutherB / 1024; // . Dubnibyte = 1024 Rutherbyte 
                                //var seaborgB = dubniB / 1024; // . Seaborgbyte = 1024 Dubnibyte 
                                //var bohrB = seaborgB / 1024; // . Bohrbyte = 1024 Seaborgbyte 
                                //var hassiuB = bohrB / 1024; // . Hassiubyte = 1024 Bohrbyte 
                                //var meitnerbyte = hassiuB / 1024; // . Meitnerbyte = 1024 Hassiubyte
                                //var darmstadbyte = meitnerbyte / 1024; // . Darmstadbyte = 1024 Meitnerbyte
                                //var roentbyte = darmstadbyte / 1024; // . Roentbyte = 1024 Darmstadbyte
                                //var coperbyte = roentbyte / 1024; // . Coperbyte = 1024 Roentbyte 
                                //var koentekbyte = coperbyte / 1024; // . Koentekbyte = 1024 Coperbyte 
                                //var silvanikbyte = koentekbyte / 1024; // . Silvanikbyte = 1024 Koentekbyte 
                                //var golvanikbyte = silvanikbyte / 1024; // . Golvanikbyte = 1024 Silvanikbyte 
                                //var platvanikbyte = golvanikbyte / 1024; // . Platvanikbyte = 1024 Golvanikbyte 
                                //var einstanikbyte = platvanikbyte / 1024; // . Einstanikbyte = 1024 Platvanikbyte 
                                //var emeranikbyte = einstanikbyte / 1024; // . Emeranikbyte = 1024 Einstanikbyte 
                                //var rubanikbyte = emeranikbyte / 1024; // . Rubanikbyte = 1024 Emeranikbyte 
                                //var diamonikbyte = rubanikbyte / 1024; // . Diamonikbyte = 1024 Rubanikbyte 
                                //var amazonikbyte = diamonikbyte / 1024; // . Amazonikbyte = 1024 Diamonikbyte 
                                //var nilevanikbyte = amazonikbyte / 1024; // . Nilevanikbyte = 1024 Amazonikbyte 
                                //var infinitybyte = nilevanikbyte / 1024; // . Infinitybyte = 1024 Nilevanikbyte 
                                //var websitebyte = infinitybyte / 1024; // . Websitebyte = 1024 Infinitybyte

            return
                   //       websitebyte > 1 ? string.Format(culture, "{0:N0} Websitebyte", websitebyte) :
                   //       infinitybyte > 1 ? string.Format(culture, "{0:N0} Infinitybyte", infinitybyte) :
                   //       nilevanikbyte > 1 ? string.Format(culture, "{0:N0} Nilevanikbyte", nilevanikbyte) :
                   //       amazonikbyte > 1 ? string.Format(culture, "{0:N0} Amazonikbyte", amazonikbyte) :
                   //       diamonikbyte > 1 ? string.Format(culture, "{0:N0} Diamonikbyte", diamonikbyte) :
                   //       rubanikbyte > 1 ? string.Format(culture, "{0:N0} Rubanikbyte", rubanikbyte) :
                   //       emeranikbyte > 1 ? string.Format(culture, "{0:N0} Emeranikbyte", emeranikbyte) :
                   //       einstanikbyte > 1 ? string.Format(culture, "{0:N0} Einstanikbyte", einstanikbyte) :
                   //       platvanikbyte > 1 ? string.Format(culture, "{0:N0} Platvanikbyte", platvanikbyte) :
                   //       golvanikbyte > 1 ? string.Format(culture, "{0:N0} Golvanikbyte", golvanikbyte) :
                   //       silvanikbyte > 1 ? string.Format(culture, "{0:N0} Silvanikbyte", silvanikbyte) :
                   //       koentekbyte > 1 ? string.Format(culture, "{0:N0} Koentekbyte", koentekbyte) :
                   //       coperbyte > 1 ? string.Format(culture, "{0:N0} Coperbyte", coperbyte) :
                   //       roentbyte > 1 ? string.Format(culture, "{0:N0} Roentbyte", roentbyte) :
                   //       darmstadbyte > 1 ? string.Format(culture, "{0:N0} Darmstadbyte", darmstadbyte) :
                   //       meitnerbyte > 1 ? string.Format(culture, "{0:N0} Meitnerbyte", meitnerbyte) :
                   //       hassiuB > 1 ? string.Format(culture, "{0:N0} Hassiubyte", hassiuB) :
                   //       bohrB > 1 ? string.Format(culture, "{0:N0} Bohrbyte", bohrB) :
                   //       seaborgB > 1 ? string.Format(culture, "{0:N0} Seaborgbyte", seaborgB) :
                   //       dubniB > 1 ? string.Format(culture, "{0:N0} Dubnibyte", dubniB) :
                   //       rutherB > 1 ? string.Format(culture, "{0:N0} Rutherbyte", rutherB) :
                   //       kinsaB > 1 ? string.Format(culture, "{0:N0} Kinsabyte", kinsaB) :
                   //       quesaB > 1 ? string.Format(culture, "{0:N0} Quesabyte", quesaB) :
                   //       samboB > 1 ? string.Format(culture, "{0:N0} Sambobyte", samboB) :
                   //       bolgerB > 1 ? string.Format(culture, "{0:N0} Bolgerbyte", bolgerB) :
                   //       pectrolB > 1 ? string.Format(culture, "{0:N0} Pectrolbyte", pectrolB) :
                   //       amosB > 1 ? string.Format(culture, "{0:N0} Amosbyte", amosB) :
                   //       kryatB > 1 ? string.Format(culture, "{0:N0} Kryatbyte", kryatB) :
                   //       alphaB > 1 ? string.Format(culture, "{0:N0} Alphabyte", alphaB) :
                   //       pijaB > 1 ? string.Format(culture, "{0:N0} Pijabyte", pijaB) :
                   //       saganB > 1 ? string.Format(culture, "{0:N0} Saganbyte", saganB) :
                   //       geoB > 1 ? string.Format(culture, "{0:N0} Geopbyte", geoB) :
                   //       bb > 1 ? string.Format(culture, "{0:N0} Brontobytes", bb) :
                   //       yb > 1 ? string.Format(culture, "{0:N0} Yottabytes", yb) :
                   //       zb > 1 ? string.Format(culture, "{0:N0} Zettabytes", zb) :
                   //       eb > 1 ? string.Format(culture, "{0:N0} Exabytes", eb) :
                   //       pb > 1 ? string.Format(culture, "{0:N0} Petabytes", pb) :
                   tb > 1 ? string.Format(culture, "{0:N2} Terabytes", tb) :
                   gb > 1 ? string.Format(culture, "{0:N2} Gigabytes", gb) :
                   mb > 1 ? string.Format(culture, "{0:N2} Megabytes", mb) :
                   kb > 1 ? string.Format(culture, "{0:N4} Kilobytes", kb) :
                   string.Format(culture, "{0} Bytes", bigUnSignedNumber);
        }

        public static string CalcMemoryMensurableUnit(string strUnSignedNumber)
        {
            double value;

            // Parse currency value using en-GB culture. 
            // value = "�1,097.63";
            // Displays:  
            //       Converted '�1,097.63' to 1097.63
            var style = NumberStyles.Number | NumberStyles.AllowCurrencySymbol;
            var culture = CultureInfo.CreateSpecificCulture("en-US");

            return double.TryParse(strUnSignedNumber, style, culture, out value)
                ? CalcMemoryMensurableUnit(value)
                : string.Empty;
        }

        public static string CalcMemoryMensurableUnit(this long lngUnSignedNumber)
        {
            var bigInt = (double)lngUnSignedNumber;

            return CalcMemoryMensurableUnit(bigInt);
        }

        public static string CalcMemoryMensurableUnit(this int intUnSignedNumber)
        {
            var bigInt = (double)intUnSignedNumber;

            return CalcMemoryMensurableUnit(bigInt);
        }

        public static string GetExtension(this Image img)
        {
            var converter = new ImageFormatConverter();
            var extension = converter.ConvertToString(img.RawFormat);

            return extension?.ToLower();
        }

        public static string Get(this Url apiUrl, params Tuple<string, string>[] parameters)
        {
            var queryString = parameters.Aggregate("/?", (current, param) => current + $"{param.Item1}={param.Item2}&");

            using (var httpClient = new HttpClient())
            {
                var response = httpClient.GetAsync(apiUrl.Value + queryString).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;

                    return result;
                }
            }

            return null;
        }
        public static T Get<T>(this Url apiUrl, params Tuple<string, string>[] parameters)
        {
            var queryString = parameters.Aggregate("/?", (current, param) => current + $"{param.Item1}={param.Item2}&");

            using (var httpClient = new HttpClient())
            {
                var response = httpClient.GetAsync(apiUrl.Value + queryString).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;

                    return JsonConvert.DeserializeObject<T>(result);
                }
            }

            return default(T);
        }
        public static async Task<T> GetAsync<T>(this Url apiUrl, params Tuple<string, string>[] parameters)
        {
            var queryString = parameters.Aggregate("/?", (current, param) => current + $"{param.Item1}={param.Item2}&");

            using (var httpClient = new HttpClient())
            {
                var response = await httpClient.GetAsync(apiUrl.Value + queryString);
                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();

                    return JsonConvert.DeserializeObject<T>(result);
                }
            }

            return default(T);
        }
        public static async Task<string> GetAsync(this Url apiUrl, params Tuple<string, string>[] parameters)
        {
            var queryString = parameters.Aggregate("/?", (current, param) => current + $"{param.Item1}={param.Item2}&");

            using (var httpClient = new HttpClient())
            {
                var response = await httpClient.GetAsync(apiUrl.Value + queryString);
                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();

                    return result;
                }
            }

            return null;
        }

        /// <summary>
        /// Takes the full name of a resource and loads it in to a stream.
        /// </summary>
        /// <param name="resourceName">Assuming an embedded resource is a file
        /// called info.png and is located in a folder called Resources, it
        /// will be compiled in to the assembly with this fully qualified
        /// name: Full.Assembly.Name.Resources.info.png. That is the string
        /// that you should pass to this method.</param>
        /// <returns></returns>
        public static Stream GetEmbeddedResourceStream(string resourceName)
        {
            return Assembly.GetExecutingAssembly().GetManifestResourceStream(resourceName);
        }

        /// <summary>
        /// Takes the full name of a resource and loads it in to a string.
        /// </summary>
        /// <param name="resourceName">Assuming an embedded resource is a file
        /// called info.png and is located in a folder called Resources, it
        /// will be compiled in to the assembly with this fully qualified
        /// name: Full.Assembly.Name.Resources.info.png. That is the string
        /// that you should pass to this method.</param>
        /// <returns></returns>
        public static string GetEmbeddedResource(string resourceName)
        {
            var stream = GetEmbeddedResourceStream(resourceName);
            using (var streamReader = new StreamReader(stream))
            {
                // Read the embedded file ...
                return streamReader.ReadToEnd();
            }
        }

        /// <summary>
        /// Takes the full name of a resource and loads it in to a string as asynchronous.
        /// </summary>
        /// <param name="resourceName">Assuming an embedded resource is a file
        /// called info.png and is located in a folder called Resources, it
        /// will be compiled in to the assembly with this fully qualified
        /// name: Full.Assembly.Name.Resources.info.png. That is the string
        /// that you should pass to this method.</param>
        /// <returns></returns>
        public static async Task<string> GetEmbeddedResourceAsync(string resourceName)
        {
            var stream = GetEmbeddedResourceStream(resourceName);
            using (var streamReader = new StreamReader(stream))
            {
                // Read the embedded file ...
                return await streamReader.ReadToEndAsync();
            }
        }
    }
}