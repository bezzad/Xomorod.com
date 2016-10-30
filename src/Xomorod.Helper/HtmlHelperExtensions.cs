using System;
using System.Linq;
using System.Web.Mvc;

namespace Xomorod.Helper
{
    public static class HtmlHelperExtensions
    {
        public static MvcHtmlString TreeViewItem<T>(this HtmlHelper htmlHelper, TreeNode<T> tree)
        {
            var mainDiv = new TagBuilder("div");
            mainDiv.AddCssClass("easy-tree");
            var headerTag = new TagBuilder("h3") { InnerHtml = tree.Value.ToString() };
            headerTag.AddCssClass("text-success");
            mainDiv.InnerHtml = headerTag.ToString();

            mainDiv.InnerHtml += tree.TreeNodeHtml();
            return MvcHtmlString.Create(mainDiv.ToString());
        }

        private static string TreeNodeHtml<T>(this TreeNode<T> node)
        {
            var result = node.Value + Environment.NewLine;

            if (node.Children.Any())
            {
                var ulTag = new TagBuilder("ul") { InnerHtml = Environment.NewLine };

                foreach (var child in node.Children)
                {
                    var li = new TagBuilder("li") { InnerHtml = child.TreeNodeHtml() };
                    ulTag.InnerHtml += li.ToString();
                }

                result += ulTag.ToString();
            }

            return result;
        }

    }
}
