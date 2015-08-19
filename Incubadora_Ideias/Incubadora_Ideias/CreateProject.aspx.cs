using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.IO;
using System.Configuration;
using System.Data;

namespace Incubadora_Ideias
{
    public partial class CreateProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create_Idea(object sender, EventArgs e)
        {
            var publica = true;
            if (rbPublica.Checked)
            {
                publica = true;
            }
            else if (rbPrivada.Checked)
            {
                publica = false;
            }


            //string script = "alert('" + words[1] + "');";
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

            //var bla = inpTags.Value;
            //Response.Write(@"<script language='javascript'>alert('" + bla + "');</script>");

            string[] tags = inpTags.Value.Split(',');
            DataTable tagTable = new DataTable();
            tagTable.Columns.Add("tags");
            foreach (string tag in tags)
            {
                tagTable.Rows.Add(tag);
            }
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.addTag", con))
                    {
                        //antes ver se o nome é usado
                        cmd.CommandType = CommandType.StoredProcedure;//dizer que é stored procedure
                        //parametros
                        cmd.Parameters.AddWithValue("@nome", inpName.Value);
                        cmd.Parameters.AddWithValue("@descript", taDesc.Value);
                        cmd.Parameters.AddWithValue("@publica", publica);
                        cmd.Parameters.AddWithValue("@iduser", User.Identity.GetUserId());
                        cmd.Parameters.AddWithValue("@cover", "/Content/Ideas/" + inpName.Value + "/Cover" + Path.GetExtension(inpCover.Value.ToString()));
                        //tags
                        SqlParameter tagsParam = cmd.Parameters.AddWithValue("@tags", tagTable);
                        tagsParam.SqlDbType = SqlDbType.Structured;

                        //use after above is complete
                        //SqlParameter convParam = cmd.Parameters.AddWithValue("@List", tagTable);
                        //convParam.SqlDbType = SqlDbType.Structured;
                        //SqlParameter ImageParam = cmd.Parameters.AddWithValue("@List", tagTable);
                        //ImageParam.SqlDbType = SqlDbType.Structured;
                        //SqlParameter anexParam = cmd.Parameters.AddWithValue("@List", tagTable);
                        //anexParam.SqlDbType = SqlDbType.Structured;    
                        
                        
                        //get output
                        SqlParameter existsIdea = new SqlParameter();
                        existsIdea.ParameterName = "@exists";
                        existsIdea.SqlDbType = SqlDbType.Bit;
                        existsIdea.Direction = ParameterDirection.Output;
                        cmd.Parameters.Add(existsIdea);



                              
         



                        con.Open();
                        cmd.ExecuteNonQuery();
                        if ((int)existsIdea.Value == 1)
                            Response.Write(@"<script language='javascript'>alert('O nome ja existe');</script>");

                    }
                }
            }
            catch (SqlException ex)
            {
                //Log exception
                //Display Error message
            }
            finally
            {

            }




        }

    }
}
