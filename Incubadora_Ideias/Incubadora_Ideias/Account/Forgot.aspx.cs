using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Incubadora_Ideias.Models;

namespace Incubadora_Ideias.Account
{
    public partial class ForgotPassword : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Forgot(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user's email address
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                ApplicationUser user = manager.FindByName(Email.Text);
                if (user == null || !manager.IsEmailConfirmed(user.Id))
                {
                    FailureText.Text = "The user either does not exist or is not confirmed.";
                    ErrorMessage.Visible = true;
                    return;
                }
                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                // Send email with the code and the redirect to reset password page
                //string code = manager.GeneratePasswordResetToken(user.Id);
                //string callbackUrl = IdentityHelper.GetResetPasswordRedirectUrl(code, Request);
                //manager.SendEmail(user.Id, "Reset Password", "Please reset your password by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                loginForm.Visible = false;
                DisplayEmail.Visible = true;
            }
        }


        [WebMethod]
        public static string ObtemPerguntaSecreta(string email)
        {

            var secretQuestion = "";
            try
            {

                using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("SELECT p.Secret FROM [dbo].[Perguntas] p " +
                                                           "INNER JOIN [dbo].[AspNetUsers] a ON (p.Id = a.IdSecret)" +
                                                           "WHERE UserName = @userName", conn))
                    {
                        cmd.Parameters.AddWithValue("@userName", email);

                        conn.Open();

                        var reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                secretQuestion = reader["Secret"].ToString();
                                System.Diagnostics.Debug.Write("Pergunta = " + reader["Secret"]); 
                            }
                        }

                        reader.Close();
                    }
                }
            }
            catch (SqlException ex)
            {
                //Log exception
                //Display Error message
            }

            return secretQuestion;
        }
        
        
        [WebMethod]
        public static RecuperarErros VerificaResposta(string resposta, string email)
        {

            var erro = new RecuperarErros();
            erro.ErroDescricao = "";
            try
            {

                using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("SELECT * " +
                                                    "FROM AspNetUsers a " +
                                                    "WHERE @SecretAnswer = a.SecretAnswer " +
                                                    "AND UserName = @userName", conn))
                    {
                        cmd.Parameters.AddWithValue("@SecretAnswer", resposta);
                        cmd.Parameters.AddWithValue("@userName", email);

                        conn.Open();

                        var reader = cmd.ExecuteReader();

                        //Se vierem linhas na query, é porque a resposta está correcta
                        if (!reader.HasRows)
                        {
                            erro.ErroDescricao = "A resposta está incorrecta";
                            //fazer aparecer uma msg de erro.
                        }
                        else
                        {
                            var encryptedString = string.Empty;
                            while (reader.Read())
                            {
                                encryptedString = reader["PasswordHash"].ToString();
                            }

                            const string password = "12345";
                            var decryptedstring = Helpers.Helper.Decrypt(encryptedString, password);
                        }

                        reader.Close();
                    }
                }
            }
            catch (SqlException ex)
            {
                //Log exception
                //Display Error message
            }

            return erro;
        }
    }
}