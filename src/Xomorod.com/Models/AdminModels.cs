using System;
using System.ComponentModel.DataAnnotations;
using GridMvc.DataAnnotations;
using Xomorod.Com.Core;
using Xomorod.Helper.Resources;

namespace Xomorod.Com.Models
{
    public class AdminModels
    {
        [GridTable(PagingEnabled = true, PageSize = 10)]
        public class InboxViewModel
        {
            [Required]
            [Display(ResourceType = typeof(Localization), Name = "IsRead")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "IsRead")]
            [NotMappedColumn]
            public bool IsRead { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [Display(ResourceType = typeof(Localization), Name = "ID")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "ID")]
            public int ContactMeId { get; set; }

            [DataType(DataType.Text)]
            [Display(ResourceType = typeof(Localization), Name = "Name")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "Name")]
            public string Name { get; set; }

            [DataType(DataType.EmailAddress)]
            [Display(ResourceType = typeof(Localization), Name = "Email")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "Email", Width = "120")]
            public string Email { get; set; }

            [DataType(DataType.Text)]
            [Display(ResourceType = typeof(Localization), Name = "Subject")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "Subject", Width = "110")]
            public string Subject { get; set; }

            [DataType(DataType.MultilineText)]
            [Display(ResourceType = typeof(Localization), Name = "Message")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "Message", Width = "200")]
            public string Message { get; set; }

            [DataType(DataType.DateTime)]
            [Display(ResourceType = typeof(Localization), Name = "ModifyUtc")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "ModifyUtc", Format = "{0:yyyy/MM/dd HH:mm:ss}", Width = "80")]
            public DateTime ModifyUtc { get; set; }

            [Required]
            [DataType(DataType.Text)]
            [Display(ResourceType = typeof(Localization), Name = "UserId")]
            [GridColumnDisplay(ResourceType = typeof(Localization), Name = "UserId")]
            [NotMappedColumn]
            public string UserId { get; set; }
        }
    }
}