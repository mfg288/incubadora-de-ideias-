using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Incubadora_Ideias.Models;
using System.IO;

namespace Incubadora_Ideias.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var extencion = Path.GetExtension(inp_avatar.Value.ToString());
            var avatarName = Email.Text + extencion;
            var tipoUser = true;

            if (rb_empresa.Checked)
            {
                tipoUser = false;
            }

            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, IdSecret = Int32.Parse(ddl_secret.SelectedValue), SecretAnswer = tb_scrt_resp.Text, Foto = "/Content/Images/users_Avatars/" + avatarName, Pessoal = tipoUser, IdPais = Int32.Parse(ddl_pais.SelectedValue), IdEstado = 1, PhoneNumber = tb_phone.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {

                manager.AddToRole(user.Id, "User");
                if ((inp_avatar.PostedFile != null) && (extencion == ".jpg" || extencion == ".png" || extencion == ".gif" || extencion == ".jpeg"))
                {
                    string tempVar = "~/Content/Images/users_Avatars/" + avatarName;
                    inp_avatar.PostedFile.SaveAs(Server.MapPath(tempVar));
                }

                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}