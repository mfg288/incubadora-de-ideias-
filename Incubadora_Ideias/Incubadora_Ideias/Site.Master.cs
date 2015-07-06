using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

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
                    register_control.Attributes.Add("class", "active");
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
    }

}