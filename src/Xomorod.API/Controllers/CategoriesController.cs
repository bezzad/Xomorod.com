using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using AdoManager;
using Xomorod.API.Core;
using Xomorod.API.Core.ErrorControlSystem;
using Xomorod.API.Providers;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Categories Web API
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CategoriesController : ApiController
    {
        /// <summary>
        /// Get all active Categories
        /// </summary>
        /// <returns>categories results as <see cref="IEnumerable{dynamic}"/></returns>
        [Route("Categories")]
        public async Task<IHttpActionResult> Get()
        {
            return await Get("en");
        }

        /// <summary>
        /// Get all active Categories
        /// </summary>
        /// <param name="language"><example>"en" or "fa"</example></param>
        /// <returns>categories results as <see cref="IEnumerable{dynamic}"/></returns>
        [Route("Categories/{language}")]
        public async Task<IHttpActionResult> Get(string language)
        {
            try
            {
                var langId = ExtensionsHelper.GetLanguageId(language);
                if (langId == null)
                {
                    return BadRequest("Your request language is not exist!");
                }

                var results = await DataAccessObject.GetFromAsync($"udft_Categories({langId})", true);

                return Ok(results);
            }
            catch (Exception ex)
            {
                await ex.RaiseErrorAsync("Xomorod.API");
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Get all categories by language and row number range
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="fromRow">from this row no</param>
        /// <param name="toRow">to this row no</param>
        /// <returns></returns>
        [System.Web.Http.Route("Categories/{language}/{fromRow}/{toRow}")]
        public async Task<IHttpActionResult> GetByRow(string language, int fromRow, int toRow)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var categories = await AdoManager.DataAccessObject.GetFromAsync($"udft_Categories({langId})", true);

            categories = categories.GetFromToRow(fromRow, toRow);

            return Ok(categories);
        }
    }
}