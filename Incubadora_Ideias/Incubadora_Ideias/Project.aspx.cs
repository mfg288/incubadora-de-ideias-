using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Incubadora_Ideias
{
    public partial class Project : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //<li><a href="#">Minhas Ideas</a></li>
            //<li><a href="/Projetos.aspx">Projetos</a></li>






            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("SELECT Id, Tag, count(*) as num FROM Tags,TagsIdeia where Tags.Id =TagsIdeia.IdTag group by Tags.Id, Tags.Tag order by num DESC;", con);

                con.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // while there is another record present
                    while (reader.Read())
                    {
                        HtmlGenericControl li = new HtmlGenericControl("li");
                        ul_badges.Controls.Add(li);
                        li.InnerText = reader[1].ToString();
                        li.Attributes.Add("class", "list-group-item tag");
                        li.Attributes.Add("id", reader[0].ToString());

                        HtmlGenericControl span = new HtmlGenericControl("span");
                        span.Attributes.Add("class", "badge");
                        span.InnerText = reader[2].ToString();
                        li.Controls.Add(span);
                    }
                }

                con.Close();
            }


        }



        
    }
}