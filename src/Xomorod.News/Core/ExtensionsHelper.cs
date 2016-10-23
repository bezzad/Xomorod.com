using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Http;
using RS = Xomorod.News.Resources.DefaultLocalization;

namespace Xomorod.News.Core
{
    public static class ExtensionsHelper
    {
        public const double G = 1000000000;

        public const double M = 1000000;

        public const double K = 1000;

        public static string ConvertToWebFloating(this double no)
        {
            double resNo = no;
            string resSym = "";

            if (no >= G)
            {
                resNo = (no / (G));
                resSym = "G";
            }
            else if (no >= M)
            {
                resNo = (no / (M));
                resSym = "M";
            }
            else if (no >= K)
            {
                resNo = (no / (K));
                resSym = "K";
            }

            return resNo.ToString("#.#", CultureInfo.CreateSpecificCulture("en-GB")) + resSym;
        }

        public static string ConvertToWebDiffDateTime(this DateTime dt, CultureInfo culture)
        {
            var now = DateTime.Now;
            var subtract = now.Subtract(dt);
            string result = "";


            int days = (int)(subtract.TotalDays);
            int weeks = (int)(subtract.TotalDays / 7);
            int months = (int)(subtract.TotalDays / 30);
            int years = (int)(subtract.TotalDays / 365);


            if (years > 0)
            {
                result = $"{dt.ToLongDateString()}";
            }
            else if (months > 0)
            {
                result = $"{months} {RS.ResourceManager.GetString("months", culture)} {RS.ResourceManager.GetString("ago", culture)}";
            }
            else if (weeks > 0)
            {
                result = $"{weeks} {RS.ResourceManager.GetString("weeks", culture)} {RS.ResourceManager.GetString("ago", culture)}";
            }
            else if (days > 1)
            {
                result = $"{days} {RS.ResourceManager.GetString("days", culture)} {RS.ResourceManager.GetString("ago", culture)}";
            }
            else if (days == 1)
            {
                result = $"{RS.ResourceManager.GetString("Yesterday", culture)}";
            }
            else // below 1 day
            {
                int hours = (int)subtract.TotalHours;
                int minutes = (int)subtract.TotalMinutes;
                int seconds = (int)subtract.TotalSeconds;

                if (hours > 0)
                {
                    result = $"{hours} {RS.ResourceManager.GetString("hours", culture)} {RS.ResourceManager.GetString("ago", culture)}";
                }
                else if (minutes > 0)
                {
                    result = $"{minutes} {RS.ResourceManager.GetString("minutes", culture)} {RS.ResourceManager.GetString("ago", culture)}";
                }
                else if (seconds > 0)
                {
                    result = $"{seconds} {RS.ResourceManager.GetString("seconds", culture)} {RS.ResourceManager.GetString("ago", culture)}";
                }
                else
                {
                    result = $"{RS.ResourceManager.GetString("this_moment", culture)}";
                }
            }

            return result;
        }
    }
}
