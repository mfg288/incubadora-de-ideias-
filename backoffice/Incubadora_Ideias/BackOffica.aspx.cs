using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Incubadora_Ideias.Models;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.Services;
using log4net;

namespace Incubadora_Ideias
{
    public partial class BackOffica : System.Web.UI.Page
    {
        private static readonly ILog log = LogManager.GetLogger("log");

        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(),
            // "CounterScript", "$(document).ready(function () { $('#ul_tabs a[href=\"#menu1\"]').tab('show') });", true);

            foreach (GridViewRow row in GridView2.Rows)
            {
                Button actdesactbtn = (Button)row.FindControl("actDesact");
                if (actdesactbtn.Attributes["data-activo"] == "True")
                {
                    actdesactbtn.CssClass = "btn btn-danger";
                    actdesactbtn.Text = "Desativar";
                }
                else
                {
                    actdesactbtn.CssClass = "btn btn-success";
                    actdesactbtn.Text = "Ativar";
                }

            }

        }
        protected void GravarUser(object sender, EventArgs e)
        {


        }
        protected void Editar(object sender, EventArgs e)
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM AspNetUsers", conn))
                    {
                        conn.Open();

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine("Id = ", reader["Email"]);

                                //((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text=reader["Email"];
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


        }
        protected void Banir(object sender, EventArgs e)
        {



        }
        protected void EstadoTag(object sender, EventArgs e)
        {
            // LinkButton lnkedit = sender as LinkButton;
            // GridViewRow gvrow = lnkedit.NamingContainer as GridViewRow;
            // int index = gvrow.RowIndex;
            ////.Visible = true;




        }
        protected void bt_mudar(object sender, EventArgs e)
        {

        }

        protected void actDesact_Click(object sender, EventArgs e)
        {
            //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

            Button bt_mudar = (Button)sender;
            var id = bt_mudar.Attributes["data-id"];
            var estdado = bt_mudar.Attributes["data-activo"];

            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("update Ideias set Activo=@activo where id=@id", con))
                    {
                        //parametros
                        cmd.Parameters.AddWithValue("@id", id);


                        if (estdado == "True")
                        {
                            cmd.Parameters.AddWithValue("@activo", false);

                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@activo", true);
                        }

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException ex)
            {
                //Display Error message

            }
            finally
            {
                GridView2.DataBind();
                foreach (GridViewRow row in GridView2.Rows)
                {
                    Button actdesactbtn = (Button)row.FindControl("actDesact");
                    if (actdesactbtn.Attributes["data-activo"] == "True")
                    {
                        actdesactbtn.CssClass = "btn btn-danger";
                        actdesactbtn.Text = "Desativar";
                    }
                    else
                    {
                        actdesactbtn.CssClass = "btn btn-success";
                        actdesactbtn.Text = "Ativar";
                    }

                }
                tab_ideia.Attributes.Add("class", "in active");
                ClientScript.RegisterClientScriptBlock(this.GetType(),
               "CounterScript", "changtabe()", true);




            }
        }
        [WebMethod]
        public static User EditarUser(string Id)
        {
            log.Info("fodjfsdofs");
            var userForm = new User();
            try
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT email, passwordhash FROM AspNetUsers WHERE id = @id", con))
                    {                        
                        cmd.Parameters.AddWithValue("@id", Id);
                        con.Open();                        

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {                            
                            if (reader.Read())
                            {
                                userForm.Email = reader[0].ToString();
                                userForm.Password = reader[1].ToString();                                
                            }                            
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }

            return userForm;

            
        }
    }
}




