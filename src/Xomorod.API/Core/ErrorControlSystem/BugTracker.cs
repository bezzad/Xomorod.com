using System;
using System.Collections;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using AdoManager;
using Xomorod.API.Models;

namespace Xomorod.API.Core.ErrorControlSystem
{
    /// <summary>
    /// Bugs and Exceptions Tracker Helper
    /// </summary>
    public static class BugTracker
    {
        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        public static async Task RaiseErrorAsync(this ErrorModel ex)
        {
            try
            {
                var bugTrackerToAddress = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT dbo.GetSettingByKey('BugTrackerAddress')");
                var bugTrackerFromServicePass = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT dbo.GetSettingByKey('BugTrackerServicePassword')");
                var bugTrackerFromServiceAddress = await DataAccessObject.ExecuteScalarAsync<string>(@"SELECT dbo.GetSettingByKey('BugTrackerServiceAddress')");

                var mail = ex.GetMailMessage(bugTrackerFromServiceAddress, bugTrackerToAddress);

                var server = GetMailServer(bugTrackerFromServiceAddress, bugTrackerFromServicePass);

                await server.SendMailAsync(mail);
            }
            catch (Exception exp)
            {
                Elmah.ErrorSignal.FromCurrentContext().Raise(exp);
            }
        }

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        /// <param name="appName">Application Name</param>
        public static async Task RaiseErrorAsync(this Exception ex, string appName = null)
        {
            var err = ex.GetErrorObject(appName);

            await err.RaiseErrorAsync();
        }

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        /// <param name="appName">Application Name</param>
        public static void RaiseError(this Exception ex, string appName = null)
        {
            var err = ex.GetErrorObject(appName);

            err.RaiseError();
        }

        /// <summary>
        /// Send exception to mail box
        /// </summary>
        /// <param name="ex">exception object</param>
        public static void RaiseError(this ErrorModel ex)
        {
            try
            {
                var bugTrackerToAddress = DataAccessObject.ExecuteScalar<string>(@"SELECT dbo.GetSettingByKey('BugTrackerAddress')");
                var bugTrackerFromServicePass = DataAccessObject.ExecuteScalar<string>(@"SELECT dbo.GetSettingByKey('BugTrackerServicePassword')");
                var bugTrackerFromServiceAddress = DataAccessObject.ExecuteScalar<string>(@"SELECT dbo.GetSettingByKey('BugTrackerServiceAddress')");

                var mail = ex.GetMailMessage(bugTrackerFromServiceAddress, bugTrackerToAddress);

                var server = GetMailServer(bugTrackerFromServiceAddress, bugTrackerFromServicePass);

                server.Send(mail);
            }
            catch (Exception exp)
            {
                Elmah.ErrorSignal.FromCurrentContext().Raise(exp);
            }
        }

        private static ErrorModel GetErrorObject(this Exception ex, string appName = null)
        {
            Elmah.ErrorSignal.FromCurrentContext().Raise(ex);

            var err = new ErrorModel();

            err.AppName = appName ?? ExtensionsHelper.GetRunningAppName();

            err.Version = ExtensionsHelper.GetRunningAppVersion();

            if (ex == null) return err;

            err.ErrorType = ex.GetType().ToString();

            err.Message = ex.GetBaseException().Message;

            err.ModuleName = ex.TargetSite?.Module.Name ?? "";

            err.Method = (ex.TargetSite?.ReflectedType?.FullName != null) ?
                    ex.TargetSite.ReflectedType.FullName + "." + ex.TargetSite : "";

            var codeScope = new CodeScope(ex);

            err.Line = codeScope?.Line.ToString();
            err.Column = codeScope?.Column.ToString();

            err.StackTrace = ex.InnerException?.StackTrace ?? ex.StackTrace ?? "";

            foreach (DictionaryEntry d in (IDictionary)ex.Data)
            {
                err.ExtraData += $"{d.Key}: {d.Value} ";
            }

            return err;
        }

        private static MailMessage GetMailMessage(this ErrorModel ex, string from, string to)
        {
            // Construct the alternate body as HTML.
            // Partial template
            string body = ViewRenderer.RenderView("~/Views/Email/ErrorMail.cshtml", ex);
                //ViewRend.RenderPartialViewToString<EmailController>("ErrorMail", ex);

            var mail = new MailMessage
            {
                From = new MailAddress(from),
                Subject = $"{ex.AppName} v{ex.Version} at {ex.ErrorTime}",
                Body = body,
                To = { new MailAddress(to) }, //mail.To.Add(new MailAddress(bugTrackerAddress));
                IsBodyHtml = true
            };

            return mail;
        }

        private static SmtpClient GetMailServer(string mailServiceAddress, string mailServicePass)
        {
            var server = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(mailServiceAddress, mailServicePass)
            };

            return server;
        }

    }
}