using System;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Xomorod.Helper.Ranking
{
    public class Alexa: IDisposable
    {
        #region Properties
        
        protected string AlexaGlobalPattern { get; set; }
        protected string AlexaLocalPattern { get; set; }
        protected string AlexaLinksin { get; set; }
        protected string AlexaData { get; set; }
        public string WebSite { get; set; }
        #endregion

        #region Constructors

        public Alexa(string url)
        {
            //WebSite = $"http://www.alexa.com/minisiteinfo/{url}?offset=5&amp;version=alxg_20100607";
            WebSite = $"http://www.alexa.com/siteinfo/{url}";
            RefreshData();
        }

        #endregion

        #region Methods


        private static async Task<string> FetchUrlAsync(string url)
        {
            var downloadedData = new byte[0];
            try
            {
                //Get a data stream from the url
                WebRequest req = WebRequest.Create(url);
                WebResponse response = await req.GetResponseAsync();
                Stream stream = response.GetResponseStream();

                //Download in chuncks
                byte[] buffer = new byte[1024];

                //Get Total Size
                int dataLength = (int)response.ContentLength;

                //Download to memory
                //Note: adjust the streams here to download directly to the hard drive
                MemoryStream memStream = new MemoryStream();
                while (true)
                {
                    //Try to read the data
                    if (stream != null)
                    {
                        int bytesRead = stream.Read(buffer, 0, buffer.Length);

                        if (bytesRead == 0)
                        {
                            break;
                        }
                        else
                        {
                            //Write the downloaded data
                            memStream.Write(buffer, 0, bytesRead);
                        }
                    }
                }

                //Convert the downloaded stream to a byte array
                downloadedData = memStream.ToArray();

                //Clean up
                stream.Close();
                memStream.Close();
            }
            catch (Exception)
            {
                //May not be connected to the internet
                //Or the URL might not exist
                // Raise Error
            }

            string str = System.Text.Encoding.Default.GetString(downloadedData);
            return str;
        }

        private static string FetchUrl(string url)
        {
            var downloadedData = new byte[0];
            try
            {
                //Get a data stream from the url
                WebRequest req = WebRequest.Create(url);
                WebResponse response = req.GetResponse();
                Stream stream = response.GetResponseStream();

                //Download in chuncks
                byte[] buffer = new byte[1024];

                //Get Total Size
                int dataLength = (int)response.ContentLength;

                //Download to memory
                //Note: adjust the streams here to download directly to the hard drive
                MemoryStream memStream = new MemoryStream();
                while (true)
                {
                    //Try to read the data
                    if (stream != null)
                    {
                        int bytesRead = stream.Read(buffer, 0, buffer.Length);

                        if (bytesRead == 0)
                        {
                            break;
                        }
                        else
                        {
                            //Write the downloaded data
                            memStream.Write(buffer, 0, bytesRead);
                        }
                    }
                }

                //Convert the downloaded stream to a byte array
                downloadedData = memStream.ToArray();

                //Clean up
                stream.Close();
                memStream.Close();
            }
            catch (Exception)
            {
                //May not be connected to the internet
                //Or the URL might not exist
                // Raise Error
            }

            string str = System.Text.Encoding.Default.GetString(downloadedData);
            return str;
        }

        public async Task RefreshDataAsync()
        {
            AlexaData = await FetchUrlAsync(WebSite);
        }

        public void RefreshData()
        {
            AlexaData = FetchUrl(WebSite);
        }

        public async Task<long> GetGlobalRankingAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaGlobalPattern = AlexaResources.AlexaGlobalRank;
            // fetch ranking:
            return GetNumber(AlexaGlobalPattern);
        }

        public long GetGlobalRanking()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaGlobalPattern = AlexaResources.AlexaGlobalRank;
            // fetch ranking:
            return GetNumber(AlexaGlobalPattern);
        }

        public async Task<long> GetLocalRankingAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaLocalPattern = AlexaResources.AlexaIranRank;
            // fetch ranking:
            return GetNumber(AlexaLocalPattern);
        }

        public long GetLocalRanking()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaLocalPattern = AlexaResources.AlexaIranRank;
            // fetch ranking:
            return GetNumber(AlexaLocalPattern);
        }

        public long GetLinksin()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                RefreshData();
            }

            AlexaLinksin = AlexaResources.AlexaLinksin;
            // fetch ranking:
            return GetNumber(AlexaLinksin);
        }

        public async Task<long> GetLinksinAsync()
        {
            if (string.IsNullOrEmpty(AlexaData))
            {
                await RefreshDataAsync();
            }

            AlexaLinksin = AlexaResources.AlexaLinksin;
            // fetch ranking:
            return GetNumber(AlexaLinksin);
        }

        public long GetNumber(string pattern)
        {
            // fetch ranking:
            var reg = new Regex(pattern);
            var match = reg.Match(AlexaData);
            var rank = match.Groups["number"];
            long rankNo = 0;
            long.TryParse(rank.Value.Replace(",", ""), out rankNo);

            return rankNo;
        }
        
        #endregion

        public void Dispose()
        {
            this.AlexaData = null;
            this.AlexaGlobalPattern = null;
            this.AlexaLinksin = null;
            this.AlexaLocalPattern = null;
            this.WebSite = null;

            GC.SuppressFinalize(this);
        }
    }
}