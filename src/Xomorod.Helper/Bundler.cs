using System.Diagnostics;

namespace Xomorod.Helper
{
    using System.Collections.Generic;
    using System.Web;
    using System.Text;
    using System.Web.Mvc;
    using System.Web.Optimization;
    using System.Web.Routing;

    /// <summary>
    /// An extension class for the System.Web.Optimization bundling tools.
    /// </summary>
    public static class Bundler
    {
        /// <summary>
        /// Renders the styles tag with optional html attributes.
        /// </summary>
        /// <param name="path">
        /// The virtual path of the styles.
        /// </param>
        /// <param name="htmlAttributes">
        /// The html attributes.
        /// </param>
        /// <returns>
        /// The <see cref="IHtmlString"/>.
        /// </returns>
        public static IHtmlString RenderStyles(string path, object htmlAttributes)
        {
            var attributes = BuildHtmlStringFrom(htmlAttributes);

            string completedTag = string.Empty;

#if DEBUG

            var originalHtml = Styles.Render(path).ToHtmlString();
            completedTag = originalHtml.Replace("/>", attributes + "/>");
#else
            completedTag = $"<link rel=\"stylesheet\" href=\"{Styles.Url(path)}\" type=\"text/css\"{attributes} />";
#endif

            return MvcHtmlString.Create(completedTag);
        }

        /// <summary>
        /// Renders the scripts tag with optional html attributes.
        /// </summary>
        /// <param name="path">The virtual path of the scripts.</param>
        /// <param name="htmlAttributes">The html attributes.</param>
        /// <returns>The <see cref="IHtmlString"/>.</returns>
        public static IHtmlString RenderScripts(string path, object htmlAttributes)
        {
            var attributes = BuildHtmlStringFrom(htmlAttributes);

            string completedTag = string.Empty;

#if DEBUG
            var originalHtml = Scripts.Render(path).ToHtmlString();
            completedTag = originalHtml.Replace("/>", attributes + "/>");
#else
            completedTag = $"<script type=\"text/javascript\" src=\"{Scripts.Url(path)}\" {attributes} ></script>";
#endif

            return MvcHtmlString.Create(completedTag);
        }

        /// <summary>
        /// Use the html attributes and loop through in order
        /// to add to the completed tag.
        /// </summary>
        /// <param name="htmlAttributes">The html attributes.</param>
        /// <returns>An HTML string containing the html attributes</returns>
        private static string BuildHtmlStringFrom(object htmlAttributes)
        {
            // Try and safely cast
            var routeHtmlAttributes = htmlAttributes as IDictionary<string, object> ?? new RouteValueDictionary(htmlAttributes);

            var attributeBuilder = new StringBuilder();

            foreach (var attribute in routeHtmlAttributes)
            {
                attributeBuilder.AppendFormat(" {0}=\"{1}\"", attribute.Key, attribute.Value);
            }

            return attributeBuilder.ToString();
        }

        /// <summary>Renders asynchronous script tags for the following paths.</summary>
        /// <returns>The <see cref="IHtmlString"/> containing the script tag or tags for the bundle.</returns>
        /// <param name="path">Set of virtual paths for which to generate script tags.</param>
        public static IHtmlString RenderScriptsAsync(string path)
        {
            return Debugger.IsAttached || path.EndsWith("-NoAsync") ? Scripts.Render(path.Replace("-NoAsync", "")) : RenderScripts(path, new { async = "true" });
        }
    }
}