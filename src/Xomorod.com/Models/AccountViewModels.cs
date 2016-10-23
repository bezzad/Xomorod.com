using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xomorod.Helper.Resources;

namespace Xomorod.Com.Models
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Email")]
        public string Email { get; set; }

        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Username")]
        public string Username { get; set; }
    }

    public class ExternalLoginListViewModel
    {
        public string ReturnUrl { get; set; }
    }

    public class SendCodeViewModel
    {
        public string SelectedProvider { get; set; }
        public ICollection<System.Web.Mvc.SelectListItem> Providers { get; set; }
        public string ReturnUrl { get; set; }
        public bool RememberMe { get; set; }
    }

    public class VerifyCodeViewModel
    {
        [Required]
        public string Provider { get; set; }

        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Code")]
        public string Code { get; set; }
        public string ReturnUrl { get; set; }

        [Display(ResourceType = typeof(Localization), Name = "Remember_this_browser")]
        public bool RememberBrowser { get; set; }

        public bool RememberMe { get; set; }
    }

    public class ForgotViewModel
    {
        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Email")]
        public string Email { get; set; }
    }

    public class LoginViewModel
    {
        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Username")]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Display(ResourceType = typeof(Localization), Name = "Password")]
        public string Password { get; set; }

        [Display(ResourceType = typeof(Localization), Name = "RememberMe")]
        public bool RememberMe { get; set; }
    }

    public class RegisterViewModel
    {
        [Required]
        [Display(ResourceType = typeof(Localization), Name = "Username")]
        public string Username { get; set; }

        [Required]
        [EmailAddress]
        [Display(ResourceType = typeof(Localization), Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessageResourceType = typeof(Localization), ErrorMessageResourceName = "The_0_must_be_at_least__2__characters_long", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(ResourceType = typeof(Localization), Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(ResourceType = typeof(Localization), Name = "ConfirmPassword")]
        [Compare("Password", ErrorMessageResourceType = typeof(Localization), ErrorMessageResourceName = "The_password_and_confirmation_password_do_not_match")]
        public string ConfirmPassword { get; set; }
    }

    public class ResetPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(ResourceType = typeof(Localization), Name = "Email")]
        public string Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessageResourceType = typeof(Localization), ErrorMessageResourceName = "The_0_must_be_at_least__2__characters_long", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(ResourceType = typeof(Localization), Name = "Password")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(ResourceType = typeof(Localization), Name = "ConfirmPassword")]
        [Compare("Password", ErrorMessageResourceType = typeof(Localization), ErrorMessageResourceName = "The_password_and_confirmation_password_do_not_match")]
        public string ConfirmPassword { get; set; }

        public string Code { get; set; }
    }

    public class ForgotPasswordViewModel
    {
        [Required]
        [EmailAddress]
        [Display(ResourceType = typeof(Localization), Name = "Email")]
        public string Email { get; set; }
    }
}
