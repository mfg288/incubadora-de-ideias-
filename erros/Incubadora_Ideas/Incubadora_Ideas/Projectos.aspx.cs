using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Incubadora_Ideas
{
    public partial class Projectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
                    {

                        HtmlGenericControl li = new HtmlGenericControl("li");
                        tabs.Controls.Add(li);

                        HtmlGenericControl anchor = new HtmlGenericControl("a");
                        anchor.Attributes.Add("href", "page.htm");
                        anchor.InnerText = "TabX";

                        li.Controls.Add(anchor);


            DataTable subjects = new DataTable();

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {

                //label for country
                con.Open();

                SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Pais", con);
                adapter.Fill(subjects);

                for (int i = 0; i < 10; i++)
                {
                    BDados.DataBind();
                }
                
                DropDownList1.DataSource = subjects;
                DropDownList1.DataTextField = "Pais";
                DropDownList1.DataValueField = "IdPais";
                DropDownList1.DataBind();

                con.Close();
            }
        }
    }
}