using System;
using System.Linq;
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
            var styles = new string[]
            {
                "~/Content/bootstrap.min.css",
                "~/Content/bootstrap-select.min.css",
                "~/Content/font-awesome.min.css",
                "~/Content/toastr.min.css",
                "~/Content/front.css",
                "~/Content/style.css",
                "~/Content/scrollTop.css",
                "~/Content/slidebarMenu.css",
                "~/Content/layoutStyle.css",
                "~/Content/animate.min.css"
            };

            var zocial = new string[] { "~/Content/zocial.css" };

            var gridmvc = new string[]
            {
                "~/Content/Gridmvc.css",
                "~/Content/gridmvc.datepicker.min.css"
            };

            var ranking = new string[]
            {
                "~/Content/ranking.css"
            };

            var blogs = new string[]
            {
                "~/Content/select2.css"
            };

            var errors = new string[]
            {
                "~/Content/errors.css"
            };

            var easyTree = new string[]
            {
                "~/Content/easyTree.css"
            };

            bundles.Add(new StyleBundle("~/Content/stylesheets").Include(styles).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-zocial").Include(styles.Concat(zocial).ToArray()).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-gridmvc").Include(styles.Concat(gridmvc).ToArray()).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-ranking").Include(styles.Concat(ranking).ToArray()).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-blogs").Include(styles.Concat(blogs).ToArray()).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-errors").Include(styles.Concat(errors).ToArray()).ForceOrdered());
            bundles.Add(new StyleBundle("~/Content/stylesheets-easyTree").Include(styles.Concat(easyTree).ToArray()).ForceOrdered());
        }

        private static void RegisterScriptBundles(BundleCollection bundles)
        {
            var layoutBundles = new string[]
            {
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/jquery-migrate.min.js", // smoothscrool.js dependency to jQuery v3 and migrated by this lib.
                "~/Scripts/jquery.easing.{version}.js",
                "~/Scripts/jquery.unobtrusive-ajax.min.js",
                "~/Scripts/jquery.knob.min.js", // circle processBar control and more other controls
                "~/Scripts/bootstrap.min.js",
                "~/Scripts/toastr.min.js",
                "~/Scripts/respond.js",
                "~/Scripts/bootstrap-select.min.js",
                "~/Scripts/smoothscrool.js", //mouse wheel very smoothly
                "~/Scripts/scrollReveal.js", //scrolling slowly for display
                "~/Scripts/site.js" // site.js must be loaded after toastr.js
            };

            var jqueryval = new string[]
            {
                "~/Scripts/jquery.validate*"
            };

            var jquery = new string[]
            {
                "~/Scripts/jquery-{version}.js"
            };

            var gridmvc = new string[]
            {
                "~/Scripts/gridmvc.min.js",
                "~/Scripts/bootstrap-datepicker.js"
            };

            var highstock = new string[]
            {
                "~/Scripts/highstock.js",
                "~/Scripts/exporting.js"
            };

            var blogs = new string[]
            {
                "~/Scripts/blog.js"
            };

            var clipboard = new string[]
            {
                "~/Scripts/clipboard.min.js"
            };

            var homepage = new string[]
            {
                "~/Scripts/home-page.js"
            };

            var easyTree = new string[]
            {
                "~/Scripts/easyTree.js"
            };

            var userInbox = new string[]
            {
                "~/Scripts/userInbox.js"
            };


            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(layoutBundles).ForceOrdered());
            bundles.Add(new ScriptBundle("~/bundles/scripts-jqueryval").Include(layoutBundles.Concat(jqueryval).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-jquery").Include(jquery));
            bundles.Add(new ScriptBundle("~/bundles/scripts-gridmvc").Include(layoutBundles.Concat(gridmvc).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-gridmvc-userInbox").Include(layoutBundles.Concat(gridmvc).Concat(userInbox).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-highstock").Include(layoutBundles.Concat(highstock).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-blogs").Include(layoutBundles.Concat(blogs).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-clipboard").Include(layoutBundles.Concat(clipboard).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-homepage").Include(layoutBundles.Concat(homepage).ToArray()));
            bundles.Add(new ScriptBundle("~/bundles/scripts-easyTree").Include(layoutBundles.Concat(easyTree).ToArray()));
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

    public static class BundleExtensions
    {
        public static Bundle ForceOrdered(this Bundle sb)
        {
            sb.Orderer = new AsIsBundleOrderer();
            return sb;
        }

        public static string GetViewBundleName(this System.Web.Mvc.HtmlHelper helper, int langId, BundleType bundleType)
        {
            var controller = helper.ViewContext.RouteData.Values["controller"].ToString();
            var action = helper.ViewContext.RouteData.Values["action"].ToString();

            switch (bundleType)
            {
                #region Scripts

                case BundleType.Scripts:
                    switch (controller.ToLower())
                    {
                        case "home":
                            {
                                switch (action.ToLower())
                                {
                                    case "index": return "~/bundles/scripts-homepage";
                                    case "privacy": return "~/bundles/scripts";
                                    default:
                                        return "~/bundles/scripts";
                                }
                            }
                        case "sitemaps":
                            return "~/bundles/scripts-easyTree";

                        case "blogs":
                            return "~/bundles/scripts-blogs";

                        case "account":
                            return "~/bundles/scripts-jqueryval";

                        case "manage":
                            return "~/bundles/scripts-jqueryval";
                            
                        case "admin":
                            {
                                switch (action.ToLower())
                                {
                                    case "inbox": return "~/bundles/scripts-gridmvc-userInbox";
                                    case "ranking": return "~/bundles/scripts-highstock";
                                    default:
                                        return "~/bundles/scripts";
                                }
                            }

                        case "errors":
                            {
                                switch (action.ToLower())
                                {
                                    case "index": return "~/bundles/scripts-clipboard";
                                    default:
                                        return "~/bundles/scripts";
                                }
                            }

                        default:
                            return "~/bundles/scripts";
                    }

                #endregion

                #region Styles

                case BundleType.Styles:
                    switch (controller.ToLower())
                    {
                        case "home":
                            {
                                switch (action.ToLower())
                                {
                                    case "index": return "~/Content/stylesheets";
                                    case "privacy": return "~/Content/stylesheets";
                                    default:
                                        return "~/Content/stylesheets";
                                }
                            }
                        case "sitemaps":
                            return "~/Content/stylesheets-easyTree";
                                   
                        case "blogs":
                            return "~/Content/stylesheets-blogs";

                        case "account":
                            switch (action.ToLower())
                            {
                                case "login": return "~/Content/stylesheets-zocial";
                                default:
                                    return "~/Content/stylesheets";
                            }

                        case "manage":
                            switch (action.ToLower())
                            {
                                case "managelogins": return "~/Content/stylesheets-zocial";
                                default:
                                    return "~/Content/stylesheets";
                            }

                        case "admin":
                            {
                                switch (action.ToLower())
                                {
                                    case "inbox": return "~/Content/stylesheets-gridmvc";
                                    case "ranking": return "~/Content/stylesheets-ranking";
                                    default:
                                        return "~/Content/stylesheets";
                                }
                            }

                        case "errors":
                            {
                                switch (action.ToLower())
                                {
                                    case "index": return "~/Content/stylesheets-errors";
                                    case "notfound": return "~/Content/stylesheets-errors";
                                    default:
                                        return "~/Content/stylesheets";
                                }
                            }

                        default:
                            return "~/Content/stylesheets";
                    }

                #endregion

                default:
                    return string.Empty;
            }
        }
    }

    public enum BundleType
    {
        Styles,
        Scripts
    }


}
