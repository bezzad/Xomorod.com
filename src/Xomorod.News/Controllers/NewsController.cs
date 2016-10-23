using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using AdoManager;

namespace Xomorod.News.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class NewsController : ApiController
    {
        // GET domain/api/v1/News/Categories
        [Route("api/v1/News/Categories/{id}")]
        public async Task<IHttpActionResult> GetCategories(int id)
        {
            var results = await DataAccessObject.GetFromAsync($@"udft_RssCategories({id})");

            results = results.OrderBy(x => x.Order);

            return Ok(results);
        }





        //// POST api/<controller>
        //public void Post([FromBody]string value)
        //{
        //}

        //// PUT api/<controller>/5
        //public void Put(int id, [FromBody]string value)
        //{
        //}

        //// DELETE api/<controller>/5
        //public void Delete(int id)
        //{
        //}
    }
}