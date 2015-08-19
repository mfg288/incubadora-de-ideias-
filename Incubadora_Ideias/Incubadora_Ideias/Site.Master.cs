using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Diagnostics;

namespace Incubadora_Ideias
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Debug.Write(thisURL); send to console debug

            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                report_error.Visible = false;
                bn_report.Visible = false;
            }


            //quando admin mostrar de resto esconder/apagar
            if (!HttpContext.Current.User.IsInRole("Admin"))
            {
                //if (!this.Controls.Contains(li_backoffice_footer))
                //{
                //    li_backoffice_footer.Visible = false;
                //}
                if (!this.Controls.Contains(li_backoffice_navbar))
                {
                    li_backoffice_navbar.Visible = false;
                }
            }



            switch (this.Page.GetType().Name.ToString())
            {
                case "index_aspx":
                    //li_home_footer.Attributes.Add("class", "active");
                    li_home_navbar.Attributes.Add("class", "active");
                    break;
                case "project_ideas_aspx":
                    //li_ideas_footer.Attributes.Add("class", "active");
                    li_ideas_navbar.Attributes.Add("class", "active");
                    break;
                case "project_projetos_aspx":
                    //li_projetos_footer.Attributes.Add("class", "active");
                    li_projetos_navbar.Attributes.Add("class", "active");
                    break;
                case "project_contactos_aspx":
                    //li_contactos_footer.Attributes.Add("class", "active");
                    li_contactos_navbar.Attributes.Add("class", "active");
                    break;
                case "project_sobre_aspx":
                    //li_sobre_footer.Attributes.Add("class", "active");
                    li_sobre_navbar.Attributes.Add("class", "active");
                    break;
                case "backoffice_backoffice_aspx":
                    //li_backoffice_footer.Attributes.Add("class", "active");
                    li_backoffice_navbar.Attributes.Add("class", "active");
                    break;
                case "account_register_aspx":
                    HtmlGenericControl register_control = (HtmlGenericControl)loginview_id.FindControl("li_register_navbar");
                    //register_control.Attributes.Add("class", "active");
                    break;
                case "account_login_aspx":
                    HtmlGenericControl login_control = (HtmlGenericControl)loginview_id.FindControl("li_login_navbar");
                    login_control.Attributes.Add("class", "active");
                    break;
                case "account_manage_aspx":
                    HtmlGenericControl manage_control = (HtmlGenericControl)loginview_id.FindControl("li_manage_navbar");
                    manage_control.Attributes.Add("class", "active");
                    break;
            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }

        protected void Report_Erro(object sender, EventArgs e)
        {
            try
            {
                List<string> arrList = new List<string>();
                if (fu_error.HasFiles)
                {
                    foreach (HttpPostedFile file in fu_error.PostedFiles)
                    {
                        //file.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Images/"),file.FileName));
                        arrList.Add(file.FileName);

                    }
                }

                DataTable Attach = new DataTable();
                Attach.Columns.Add("file");
                foreach (string file in arrList)
                {
                    Attach.Rows.Add(file);
                }
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.addError", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;//dizer que é stored procedure
                        //parametros
                        cmd.Parameters.AddWithValue("@titulo", inp_title.Value);
                        cmd.Parameters.AddWithValue("@descript", ta_descript.Value);
                        cmd.Parameters.AddWithValue("@IdUser", HttpContext.Current.User.Identity.GetUserId().ToString());

                        SqlParameter tagsParam = cmd.Parameters.AddWithValue("@array", Attach);
                        tagsParam.SqlDbType = SqlDbType.Structured;

                        SqlParameter erroId = new SqlParameter("@IdErro",System.Data.SqlDbType.Int);
                        erroId.Direction = System.Data.ParameterDirection.Output;
                        cmd.Parameters.Add(erroId);

                        con.Open();
                        cmd.ExecuteNonQuery();
                       
                        if (fu_error.HasFiles)
                        {
                            string EmployeeId = erroId.Value.ToString();
                            System.IO.Directory.CreateDirectory(Server.MapPath("~/Files/Erros/" + EmployeeId));
                            foreach (HttpPostedFile file in fu_error.PostedFiles)
                            {
                                file.SaveAs(Server.MapPath("~/Files/Erros/" + EmployeeId + "/" + file.FileName));
                            }
                        }
                    }
                }

            }
            catch (SqlException ex)
            {
                //Display Error message
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Houve um problema na submissão de erro')", true);

            }
            finally
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Erro foi submetido com sucesso')", true);

            }
        }
    }
}