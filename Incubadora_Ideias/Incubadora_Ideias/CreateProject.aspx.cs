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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand insert = new SqlCommand("insert into Ideias (Nome,Descricao,Publica,IdUser,Cover) values(@nome,@descript,@publica,@iduser,@cover)", conn);
            insert.Parameters.AddWithValue("@nome", inpName.Value);
            insert.Parameters.AddWithValue("@descript", taDesc.Value);
            insert.Parameters.AddWithValue("@publica", publica);
            insert.Parameters.AddWithValue("@iduser", User.Identity.GetUserId());
            insert.Parameters.AddWithValue("@cover", "/Content/Ideas/" + inpName.Value + "/Cover" + Path.GetExtension(inpCover.Value.ToString()));
            try
            {
                conn.Open();
                insert.ExecuteNonQuery();
            }
            catch
            {
            }
            finally
            {
                conn.Close();
            }


        }
    }
}
