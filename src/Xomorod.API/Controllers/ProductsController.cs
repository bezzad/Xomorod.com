using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Cors;
using System.Web.Mvc;
using Xomorod.API.Core;
using Xomorod.API.Providers;

namespace Xomorod.API.Controllers
{
    /// <summary>
    /// Xomorod Products Controller
    /// </summary>
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class ProductsController : ApiController
    {

        /// <summary>
        /// Get all products by default language (en)
        /// </summary>
        /// <returns>list of portfolios</returns>
        [System.Web.Http.Route("Products")]
        public async Task<IHttpActionResult> Get()
        {
            return await Get("en");
        }

        /// <summary>
        /// Get all products by language
        /// </summary>
        /// <param name="language"><example>"en" or "fa"</example></param>
        /// <returns>list of portfolios</returns>
        [System.Web.Http.Route("Products/{language}")]
        public async Task<IHttpActionResult> Get(string language)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromAsync($"udfv_PortfoliosView({langId})", true);

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language and row number range
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="fromRow">from this row no</param>
        /// <param name="toRow">to this row no</param>
        /// <returns></returns>
        [System.Web.Http.Route("Products/{language}/{fromRow}/{toRow}")]
        public async Task<IHttpActionResult> GetByRow(string language, int fromRow, int toRow)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var products = await AdoManager.DataAccessObject.GetFromAsync($"udfv_PortfoliosView({langId})", true);

            var portfolios = await ConvertToPortfoliosAsync(products);

            portfolios = portfolios.GetFromToRow(fromRow, toRow);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language, category name
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="category">include category name of products</param>
        /// <returns></returns>
        [System.Web.Http.Route("Products/{language}/{category}")]
        public async Task<IHttpActionResult> GetByCategory(string language, string category)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where Categories like '%{category}%'", true);

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }

        /// <summary>
        /// Get all products by language, category name, row number range
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="category">include category name of products</param>
        /// <param name="fromRow">from this row no</param>
        /// <param name="toRow">to this row no</param>
        /// <returns></returns>
        [System.Web.Http.Route("Products/{language}/{category}/{fromRow}/{toRow}")]
        public async Task<IHttpActionResult> GetByCategoryAndRow(string language, string category, int fromRow, int toRow)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where Categories like '%{category}%'", true);

            var portfolios = await ConvertToPortfoliosAsync(products);

            portfolios = portfolios.GetFromToRow(fromRow, toRow);

            return Ok(portfolios);
        }


        /// <summary>
        /// Get all products by language, category name
        /// </summary>
        /// <param name="language">language of data</param>
        /// <param name="id">product name</param>
        /// <returns></returns>
        [System.Web.Http.Route("Product/{language}/{id}")]
        public async Task<IHttpActionResult> GetById(string language, string id)
        {
            var langId = ExtensionsHelper.GetLanguageId(language);
            if (langId == null)
            {
                return BadRequest("Your request language is not exist!");
            }

            var products =
                await AdoManager.DataAccessObject.GetFromQueryAsync($"Select * from udfv_PortfoliosView({langId}) where PortfolioID = {id}", true);

            var portfolios = await ConvertToPortfoliosAsync(products);

            return Ok(portfolios);
        }



        private async Task<List<dynamic>> ConvertToPortfoliosAsync(IEnumerable<dynamic> products)
        {
            var portfolios = new List<object>();

            products = products.OrderByDescending(x => x.Rank);

            int counter = 0;
            foreach (var prod in products)
            {
                dynamic portfolio = new ExpandoObject();

                portfolio.Row = counter + 1;
                portfolio.ProjectName = prod.ProjectName;
                portfolio.Id = prod.PortfolioID;
                portfolio.ImageLink = await AdoManager.DataAccessObject.ExecuteScalarAsync<string>($"SELECT dbo.getResourceLinkByElementID('{prod.Id}')", true);
                portfolio.Category = prod.Categories;
                portfolio.ProjectUrl = await AdoManager.DataAccessObject.ExecuteScalarAsync<string>($"SELECT dbo.GetExtraLinkByName({prod.PortfolioID}, 'github')", true);
                portfolio.OpenSource = portfolio.ProjectUrl != null;
                portfolio.Description = prod.Summary;
                portfolio.Price = prod.Price;
                portfolio.Markdown = prod.MarkdownDescription;
                portfolio.ModifyDate = prod.ModifyDate.ToString("Y");

                portfolios.Add(portfolio);

                counter++;
            }


            return portfolios;
        }

        
    }
}
