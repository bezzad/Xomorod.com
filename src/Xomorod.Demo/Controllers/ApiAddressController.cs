using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using Xomorod.API.Core.ErrorControlSystem;
using Xomorod.API.Providers;

namespace Xomorod.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ApiAddressController : ApiController
    {
        /// <summary>
        /// Get controller api rout
        /// for e.g:
        /// GET api/apiaddress/?controller=products
        /// </summary>
        /// <param name="controller">api controller name</param>
        /// <returns>api real rout to call them</returns>
        public async Task<string> Get(string controller)
        {
            string apiRout;

            try
            {
                apiRout = await AdoManager.DataAccessObject.ExecuteScalarAsync<string>("SELECT dbo.GetSettingByKey('ApiAddress')");

#if DEBUG
                apiRout = "http://localhost:50543";
#endif

                // check the data has not slash '/' at end of address ?
                if (apiRout.EndsWith(@"/", StringComparison.InvariantCultureIgnoreCase))
                    apiRout = apiRout.Substring(0, apiRout.Length - 1);

                apiRout = $"{apiRout}/{controller}";
            }
            catch (Exception ex)
            {
                apiRout = $"Can not to find Controller, because: \n{ex.Message}";
                await ex.RaiseErrorAsync();
            }

            return apiRout;
        }

        /// <summary>
        /// Get controller api rout
        /// for e.g:
        /// GET api/apiaddress/?controller=products
        /// </summary>
        /// <param name="controller">api controller name</param>
        /// <returns>api real rout to call them</returns>
        [HttpPost]
        public async Task<string> Post([FromBody]string controller)
        {
            return await Get(controller);
        }
    }
}