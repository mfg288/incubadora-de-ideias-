using Incubadora_de_Ideas.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using System;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Incubadora_de_Ideas.Account
{
    public partial class Register : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            tb_phone.Attributes.Add("type", "tel");

        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();



            var avatarName = Email.Text + Path.GetExtension(inp_avatar.Value.ToString());
            var tipoUser = true;

            if (rb_empresa.Checked)
            {
                tipoUser = false;
            }

            //var bla = opt_pessoal.GetType().GetProperties();
            //Password.Text = "bla";
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text, IdSecret = Int32.Parse(ddl_secret.SelectedValue), RespostaPerguntaSecreta = tb_scrt_resp.Text, Foto = "/users_Avatars/" + avatarName, Pessoal = tipoUser, IdPais = Int32.Parse(ddl_pais.SelectedValue), IdEstado = 1, PhoneNumber = tb_phone.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                if (inp_avatar.PostedFile != null)
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








        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //int contentLength = avatarUpload.PostedFile.ContentLength;//You may need it for validation
            //string contentType = avatarUpload.PostedFile.ContentType;//You may need it for validation
            //string fileName = avatarUpload.PostedFile.FileName;
            //avatarUpload.PostedFile.SaveAs(@"c:\test.tmp");//Or code to save in the DataBase.
        }


    }
}