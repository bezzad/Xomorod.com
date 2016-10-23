using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Net.Http;
using System.Web.Http.Controllers;
using System.Web.Security;
using AdoManager;

namespace Xomorod.API.Providers
{
    /// <summary>
    /// AuthorizeAttribute Customized for xomorod user accounts and roles
    /// </summary>
    public class ApiAuthorizeAttribute : System.Web.Http.AuthorizeAttribute
    {
        public dynamic User { get; private set; }

        private bool IsUserAuthorized(dynamic user)
        {
            if (string.IsNullOrEmpty(Roles))
                return true;

            return Roles == user.Role;
        }

        private bool ValidateUser(string username, string password)
        {
            dynamic parametersObj = new ExpandoObject();
            parametersObj.u = username;
            parametersObj.p = password;

            IEnumerable<dynamic> users = DataAccessObject.GetFromQuery("select * from dbo.fn_CheckUserPass(@u, @p)",
                parametersObj);

            if (!users.Any()) return false;

            User = users.First();
            return true;
        }

        public override void OnAuthorization(HttpActionContext actionContext)
        {
            if (actionContext == null)
                throw new ArgumentNullException("actionContext");

            string username;
            string password;
            if (GetUserNameAndPassword(actionContext, out username, out password))
            {
                if (ValidateUser(username, password))
                {
                    if (IsUserAuthorized(User))
                    {
                        FormsAuthentication.SetAuthCookie(username, false);
                    }
                    else
                    {
                        actionContext.Response = new HttpResponseMessage(System.Net.HttpStatusCode.Forbidden);
                        FormsAuthentication.SignOut();
                    }
                }
                else
                {
                    actionContext.Response = new HttpResponseMessage(System.Net.HttpStatusCode.Unauthorized);
                    FormsAuthentication.SignOut();
                }
            }
            else
            {
                actionContext.Response = new HttpResponseMessage(System.Net.HttpStatusCode.BadRequest);
                FormsAuthentication.SignOut();
            }
        }

        
        private string DecodeFrom64(string encodedData)
        {
            byte[] encodedDataAsBytes
                = System.Convert.FromBase64String(encodedData);
            string returnValue =
               System.Text.Encoding.ASCII.GetString(encodedDataAsBytes);

            return returnValue;
        }

        private bool GetUserNameAndPassword(HttpActionContext actionContext, out string username, out string password)
        {
            bool gotIt = false;
            username = string.Empty;
            password = string.Empty;
            IEnumerable<string> headerVals;
            if (actionContext.Request.Headers.TryGetValues("Authorization", out headerVals))
            {
                try
                {
                    string authHeader = headerVals.FirstOrDefault();
                    char[] delims = { ' ' };
                    string[] authHeaderTokens = authHeader.Split(delims);
                    if (authHeaderTokens[0].Contains("Basic"))
                    {
                        string decodedStr = DecodeFrom64(authHeaderTokens[1]);
                        string[] unpw = decodedStr.Split(new char[] { ':' });
                        username = unpw[0];
                        password = unpw[1];
                    }
                    else
                    {
                        if (authHeaderTokens.Length > 1)
                            username = DecodeFrom64(authHeaderTokens[1]);
                    }

                    gotIt = true;
                }
                catch { gotIt = false; }
            }

            return gotIt;
        }

    }

}
