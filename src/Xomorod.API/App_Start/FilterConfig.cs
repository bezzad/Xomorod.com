using System.Web.Mvc;

namespace Xomorod.API
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new ElmahHandleErrorAttribute());
            filters.Add(new HandleErrorAttribute());
        }
    }
}
