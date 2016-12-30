using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Xomorod.Helper.Resources;

namespace Xomorod.Com.Controllers
{
    public class BlogsController : BaseController
    {
        // GET: Blogs
        public ActionResult Index()
        {
            ViewBag.Title = Localization.Blogs;
            
            return View();
        }
    }
}