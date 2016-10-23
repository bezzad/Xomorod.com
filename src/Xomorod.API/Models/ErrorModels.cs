using System;
using System.ComponentModel.DataAnnotations;
using System.Globalization;

namespace Xomorod.API.Models
{
    /// <summary>
    /// Error Model
    /// </summary>
    public class ErrorModel
    {
        [Required]
        public string Message { get; set; }

        public string ErrorType { get; set; }

        public string ModuleName { get; set; }

        public string Method { get; set; }

        public string StackTrace { get; set; }

        public string Line { get; set; }
        public string Column { get; set; }

        public string ExtraData { get; set; }

        [Required]
        public string AppName { get; set; }

        [Required]
        public string Version { get; set; }

        public string HeaderIcon { get; set; } = "http://xomorod.com/favicon.ico";

        public string ErrorTime { get; set; } = DateTime.Now.ToString(CultureInfo.InvariantCulture);
    }
}
