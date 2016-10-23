using System.Web.Mvc;

namespace Xomorod.Com
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new ElmahHandleErrorAttribute());
        }
    }
}
