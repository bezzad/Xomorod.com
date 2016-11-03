using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Web.Optimization;

namespace Xomorod.Com
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            RegisterScriptBundles(bundles);
            RegisterStyleBundles(bundles);

            BundleTable.EnableOptimizations = !Debugger.IsAttached;
        }

        private static void RegisterStyleBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/Content/preloadStyle").Include("~/Content/preloadStyle.css"));

            bundles.Add(new StyleBundle("~/Content/stylesheets").Include(
                        "~/Content/bootstrap.min.css",
                        "~/Content/bootstrap-select.min.css",
                        "~/Content/font-awesome.min.css",
                        "~/Content/toastr.min.css",
                        "~/Content/front.css",
                        "~/Content/style.css",
                        "~/Content/scrollTop.css",
                        "~/Content/slidebarMenu.css",
                        "~/Content/layoutStyle.css",
                        "~/Content/animate.min.css"));


            bundles.Add(new StyleBundle("~/Content/gridmvc").Include(
                "~/Content/Gridmvc.css",
                "~/Content/gridmvc.datepicker.min.css"));

            bundles.Add(new StyleBundle("~/Content/blog").Include("~/Content/select2.css"));
            bundles.Add(new StyleBundle("~/Content/ranking").Include("~/Content/ranking.css"));
            bundles.Add(new StyleBundle("~/Content/errors").Include("~/Content/errors.css"));
            
            bundles.Add(new StyleBundle("~/Content/easyTree").Include("~/Content/easyTree.css"));
        }

        private static void RegisterScriptBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include("~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
                                        "~/Scripts/jquery-{version}.js",
                                        "~/Scripts/jquery-migrate.min.js",
                                        "~/Scripts/jquery.unobtrusive-ajax.min.js",
                                        "~/Scripts/jquery.knob.min.js",  // circle processBar control and more other controls
                                        "~/Scripts/toastr.min.js",
                                        "~/Scripts/bootstrap.min.js",
                                        "~/Scripts/respond.js",
                                        "~/Scripts/bootstrap-select.min.js",
                                        "~/Scripts/smoothscrool.js", //mouse wheel very smoothly
                                        "~/Scripts/scrollReveal.js", //scrolling slowly for display
                                        "~/Scripts/easing.min.js",
                                        "~/Scripts/site.js" // site.js must be loaded after toastr.js
                                        ).ForceOrdered());

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include("~/Scripts/jquery.validate*"));


            bundles.Add(new ScriptBundle("~/bundles/gridmvc").Include(
                "~/Scripts/gridmvc.min.js",
                "~/Scripts/bootstrap-datepicker.js"));

            bundles.Add(new ScriptBundle("~/bundles/recaptcha").Include("~/Scripts/recaptcha.js"));
            bundles.Add(new ScriptBundle("~/bundles/blog").Include("~/Scripts/blog.js"));

            bundles.Add(new ScriptBundle("~/bundles/homepage").Include("~/Scripts/home-page.js"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include("~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/highstock", "https://code.highcharts.com/stock/highstock.js").Include("~/Scripts/highstock.js"));
            bundles.Add(new ScriptBundle("~/bundles/exporting", "https://code.highcharts.com/stock/modules/exporting.js").Include("~/Scripts/exporting.js"));
            bundles.Add(new ScriptBundle("~/bundles/clipboard", "https://cdn.jsdelivr.net/clipboard.js/1.5.10/clipboard.min.js").Include("~/Scripts/clipboard.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/easyTree").Include(
                "~/Scripts/jquery-{version}.js", 
                "~/Scripts/easyTree.js").ForceOrdered());
        }

    }

    internal class AsIsBundleOrderer : IBundleOrderer
    {
        public IEnumerable<BundleFile> OrderFiles(BundleContext context, IEnumerable<BundleFile> files)
        {
            return files;
        }

        public virtual IEnumerable<FileInfo> OrderFiles(BundleContext context, IEnumerable<FileInfo> files)
        {
            return files;
        }
    }

    internal static class BundleExtensions
    {
        public static Bundle ForceOrdered(this Bundle sb)
        {
            sb.Orderer = new AsIsBundleOrderer();
            return sb;
        }
    }
}
