using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using AdoManager;
using Xomorod.API.Core;
using Xomorod.API.Providers;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Run any query in Xomorod database by ?query param
    /// </summary>
    [Authorize(Roles = "Admin")]
    public class DynamicsController : ApiController
    {
        /// <summary>
        /// Get async data by dynamic query.
        /// Restrict by role: Administrators
        /// 
        /// GET api.xomorod.com/dynamics
        /// </summary>
        /// <returns>dynamic query results as <see cref="IEnumerable{T}"/></returns>
        [ApiAuthorize(Roles = "Administrators")]
        [Route("dynamics")]
        [ApiExplorerSettings(IgnoreApi = true)]
        public async Task<IHttpActionResult> GetDynamics()
        {
            var queryParams = this.Request.GetQueryStrings();

            var query = queryParams["query"] ?? "";

            var results = await DataAccessObject.GetFromQueryAsync(query);

            return Ok(results);
        }
    }
}