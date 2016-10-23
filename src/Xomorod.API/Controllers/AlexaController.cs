using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Xomorod Products Controller
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class AlexaController : ApiController
    {
        [Route("Alexa")]
        public async Task<IHttpActionResult> Get()
        {
            var result = await AdoManager.DataAccessObject.GetFromAsync("udft_TrafficRankings()");
            return Ok(result);
        }
        
    }
}