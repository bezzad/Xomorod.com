using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Xml.Linq;
using Dapper;
using Xomorod.Helper;
using Xomorod.Helper.Sitemap;
using Xomorod.Shared;

namespace Xomorod.Com.Core
{
    public static class SitemapHelper
    {
        public static IEnumerable<SitemapNode> GetSitemapNodes()
        {
            var nodes = Connections.Xomorod.SqlConn.Query<SitemapNode>("Select * From Sitemap");

            return nodes;
        }

        public static IEnumerable<SitemapNode> GetSitemapNodes(string culture)
        {
            var langId = CultureHelper.Languages[culture].LangId;
            var nodes = Connections.Xomorod.SqlConn.Query<SitemapNode>("Select * From Sitemap Where LangId = @langId", new { langId });

            return nodes;
        }

        public static string GetSitemapDocument(this IEnumerable<SitemapNode> sitemapNodes)
        {
            XNamespace xmlns = "http://www.sitemaps.org/schemas/sitemap/0.9";
            XElement root = new XElement(xmlns + "urlset");
            foreach (SitemapNode sitemapNode in sitemapNodes)
            {
                XElement urlElement = new XElement(
                    xmlns + "url",
                    new XElement(xmlns + "loc", Uri.EscapeUriString(sitemapNode.Url)),
                    sitemapNode.LastModified == null ? null : new XElement(
                        xmlns + "lastmod",
                        sitemapNode.LastModified.Value.ToLocalTime().ToString("yyyy-MM-ddTHH:mm:sszzz")),
                    sitemapNode.Frequency == null ? null : new XElement(
                        xmlns + "changefreq",
                        sitemapNode.Frequency.Value.ToString().ToLowerInvariant()),
                    sitemapNode.Priority == null ? null : new XElement(
                        xmlns + "priority",
                        sitemapNode.Priority.Value.ToString("F1", CultureInfo.InvariantCulture)));
                root.Add(urlElement);
            }
            XDocument document = new XDocument(root);
            return document.ToString();
        }

        public static TreeNode<SitemapNode> GetTreeNode(this IEnumerable<SitemapNode> sitemapNodes, string headerName = "")
        {
            var tree = new TreeNode<SitemapNode>(new SitemapNode() { Title = headerName, Url = "/", Id = null, ParentId = null });

            sitemapNodes.FillTreeNodeOfThisParent(tree);

            return tree;
        }

        private static void FillTreeNodeOfThisParent(this IEnumerable<SitemapNode> sitemapNodes, TreeNode<SitemapNode> parent)
        {
            var children = sitemapNodes.Where(s => s.ParentId == parent?.Value?.Id);

            foreach (var child in children)
            {
                var pNode = parent.AddChild(child);
                sitemapNodes.FillTreeNodeOfThisParent(pNode);
            }
        }
    }
}