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
            mainDiv.InnerHtml = tree.TreeNodeHtml();
            return MvcHtmlString.Create(mainDiv.ToString());
        }

        private static string TreeNodeHtml<T>(this TreeNode<T> node)
        {
            string result;

            if (node.Children.Any())
            {
                result = string.IsNullOrEmpty(node.Value.ToString()) ? "" : "<span><span class='glyphicon glyphicon-minus'></span>&nbsp;" + node.Value + "</span>";

                var ulTag = new TagBuilder("ul") { InnerHtml = Environment.NewLine };

                foreach (var child in node.Children)
                {
                    var li = new TagBuilder("li") { InnerHtml = child.TreeNodeHtml() };
                    ulTag.InnerHtml += li.ToString();
                }

                result += ulTag.ToString();
            }
            else
            {
                result = "<span><span class='glyphicon glyphicon-link'></span>&nbsp;" + node.Value + "</span>";
            }

            return result;
        }

    }
}
