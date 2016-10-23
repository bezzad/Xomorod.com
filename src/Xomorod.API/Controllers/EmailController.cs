using System;
using System.Web.Mvc;
using Xomorod.API.Models;

namespace Xomorod.API.Controllers
{

    public class EmailController : Controller
    {
        /// <summary>
        /// Create email view by error model
        /// </summary>
        /// <param name="model"><seealso cref="ErrorModel"/> object</param>
        /// <returns>Rendered email view</returns>
        [HttpPost]
        public ActionResult ErrorMail(ErrorModel model)
        {
            return View(model);
        }
    }
}