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
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand tagsIdea = new SqlCommand("SELECT Id, Tag, count(*) as num FROM Tags,TagsIdeia where Tags.Id =TagsIdeia.IdTag group by Tags.Id, Tags.Tag order by num DESC;", con);
                SqlCommand allTagsNum = new SqlCommand("SELECT COUNT(*) FROM Tags;", con);
                try
                {
                    HtmlGenericControl a = new HtmlGenericControl("a");
                    badgeMenu.Controls.Add(a);

                    a.InnerText = "Todos";
                    a.Attributes.Add("class", "list-group-item");
                    a.Attributes.Add("href", "Project.aspx");

                    HtmlGenericControl span = new HtmlGenericControl("span");
                    span.Attributes.Add("class", "badge");
                    con.Open();

                    span.InnerText = allTagsNum.ExecuteScalar().ToString();
                    a.Controls.Add(span);
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    con.Close();
                }
                con.Open();
                using (SqlDataReader reader = tagsIdea.ExecuteReader())
                {
                    // while there is another record present
                    while (reader.Read())
                    {
                        HtmlGenericControl a = new HtmlGenericControl("a");
                        badgeMenu.Controls.Add(a);

                        a.InnerText = reader[1].ToString();
                        a.Attributes.Add("class", "list-group-item");
                        a.Attributes.Add("href", "Project.aspx?tagId=" + reader[0].ToString());
                        a.Attributes.Add("id", reader[0].ToString());

                        HtmlGenericControl span = new HtmlGenericControl("span");
                        span.Attributes.Add("class", "badge");
                        span.InnerText = reader[2].ToString();
                        a.Controls.Add(span);
                    }
                }
                con.Close();
            }





        }
    }
}