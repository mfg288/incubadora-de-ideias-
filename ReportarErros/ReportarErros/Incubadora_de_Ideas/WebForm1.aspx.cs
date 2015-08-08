using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Incubadora_de_Ideas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable subjects = new DataTable();
            //using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            //{
            //    con.Open();
            //    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM Pais", con);
            //    adapter.Fill(subjects);
            //    ddl_testSQL.DataSource = subjects;
            //    ddl_testSQL.DataTextField = "Pais";
            //    ddl_testSQL.DataValueField = "Id";
            //    ddl_testSQL.DataBind();
            //    con.Close();
            //}

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("SELECT Id, Nome, count(*) as num FROM Tag,TagIdeia where Tag.Id =TagIdeia.IdTag group by Tag.Id, Tag.Nome order by num DESC;", con);

                con.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    // while there is another record present
                    while (reader.Read())
                    {
                        HtmlGenericControl li = new HtmlGenericControl("li");
                        ul_badges.Controls.Add(li); // tabs is id of ul tag which is runat=server
                        li.InnerText = reader[1].ToString();
                        li.Attributes.Add("class", "list-group-item");
                        li.Attributes.Add("id", reader[0].ToString());

                        HtmlGenericControl span = new HtmlGenericControl("span");
                        span.Attributes.Add("class", "badge");
                        span.InnerText = reader[2].ToString();
                        li.Controls.Add(span);
                    }
                }

                con.Close();
            }
            //for (var i = 1; i < 10; i++)
            //{
            //    HtmlGenericControl li = new HtmlGenericControl("li");
            //    ul_badges.Controls.Add(li); // tabs is id of ul tag which is runat=server
            //    li.InnerText = "tab n" + i;
            //    li.Attributes.Add("class", "list-group-item");
            //    li.Attributes.Add("id", i.ToString());


            //    HtmlGenericControl span = new HtmlGenericControl("span");
            //    span.Attributes.Add("class", "badge");
            //    span.InnerText = i.ToString();
            //    li.Controls.Add(span);
            //}

            //<li class="list-group-item">
            //  <span class="badge">14</span>
            //  Cras justo odio
            //</li>


        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {



        }




    }
}