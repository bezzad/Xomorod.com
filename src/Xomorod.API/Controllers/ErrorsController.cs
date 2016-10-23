using System;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Mvc;
using Xomorod.API.Core.ErrorControlSystem;
using Xomorod.API.Models;

namespace Xomorod.API.Controllers
{
    [System.Web.Http.RoutePrefix("api/Errors")]
    public class ErrorsController : Controller
    {


        /// <summary>
        /// Default Error: HTTP Error 404
        /// </summary>
        /// <returns>A designed html page for error 404 Page Not Found</returns>
        // GET: Errors
        public ActionResult Index()
        {
            return View("Index");
        }

        public ActionResult NotFound()
        {
            return View("NotFound");
        }

        /// <summary>
        /// Send an error to send host mail
        /// </summary>
        /// <param name="value">Error Model Object</param>
        public async Task<HttpStatusCodeResult> Post([FromBody]ErrorModel value)
        {
            try
            {
                await value.RaiseErrorAsync();
            }
            catch (Exception)
            {
                return new HttpStatusCodeResult(HttpStatusCode.ExpectationFailed);
            }

            return new HttpStatusCodeResult(HttpStatusCode.Created);
        }


        /// <summary>
        /// Send an error to send host mail
        /// </summary>
        /// <param name="value">Error Model Object</param>
        public async Task<ActionResult> PostByAck([FromBody]ErrorModel value)
        {
            try
            {
                await value.RaiseErrorAsync();
            }
            catch (Exception ex)
            {
                return Json(ex.Message);
            }

            return Json("Error Created");
        }


    }
}
