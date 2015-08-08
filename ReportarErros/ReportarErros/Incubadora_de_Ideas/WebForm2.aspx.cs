using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace Incubadora_de_Ideas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static List<string> GetEmployeeName(string empName)  
    {  
        List<string> empResult = new List<string>();
        using (SqlConnection con = new SqlConnection("SELECT Id, Nome, count(*) as num FROM Tag,TagIdeia where Tag.Id =TagIdeia.IdTag group by Tag.Id, Tag.Nome order by num DESC;"))  
        {  
            using (SqlCommand cmd = new SqlCommand())  
            {
                cmd.CommandText = "select Top 10 EmployeeName from Tag,TagIdeia LIKE ''+@Nome+'%'";  
                cmd.Connection = con;  
                con.Open();  
                cmd.Parameters.AddWithValue("@SearchEmpName", empName);  
                SqlDataReader dr = cmd.ExecuteReader();  
                while (dr.Read())  
                {  
                    empResult.Add(dr["EmployeeName"].ToString());  
                }  
                con.Close();  
                return empResult;  
            }  
        }

      }
    }
}