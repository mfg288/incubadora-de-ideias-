using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.AspNet.Identity;
namespace Incubadora_de_Ideas
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNET-INCUBADORA_IDEIAS-20150706040023"].ConnectionString))
            {
                string insertStatement = @"INSERT INTO Erros (Titulo, Descricao, IdUtilizador) 
                                                       VALUES (@title,@descricao,@idUtilizador)";

                // determinar o ID do erro
                int novoID = GetNewErrorId();


                SqlCommand sqlCommand = new SqlCommand(insertStatement, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@title", inp_title.Value);
                sqlCommand.Parameters.AddWithValue("@descricao", ta_eingabe.Value);
                sqlCommand.Parameters.AddWithValue("@idUtilizador", User.Identity.GetUserId());




            //for (int i = 0; i < Request.Files.Count; i++)
            //    {
            //        HttpPostedFileBase file = Request.Files[i];
            //        if(file .ContentLength >0){
            //            file.SaveAs(Server.MapPath("~/Content/Files/Errors/" + i + Path.GetExtension(file.FileName.ToString())));

            //      }
            //    }

                try
                {
                    sqlConnection.Open();
                    sqlCommand.ExecuteNonQuery();
                }
                catch
                {
                    // escrever aqui as linhas de código a executar qd ocorrer um erro...
                }
                finally
                {
                    sqlConnection.Close();
                }

            }

        }
                // agora pode usar o 'novoID' onde quiser....


                // para inserir multiplos anexos
                // Criar um sqlCommand + comando SQL para inserir os dados do anexo
                // Abrir a ligacao 'a BD
                // criar um ciclo FOR onde:
                //    limpar (clear) dos parametros
                //    adicionar dados do anexo aos parametros
                //    inserir
                // qd acabar, fecha a ligacao 'a BD






        /// <summary>
        /// funcao para calcular o novo ID de um erro
        /// </summary>
        /// <returns></returns>
        protected int GetNewErrorId()
        {        // var para guardar o valor do novo ID
                int novoID = 0;
            using (SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPNET-INCUBADORA_IDEIAS-20150706040023"].ConnectionString))
            {
                // comando sql para pesquisar o novo iD
                string strSQL_Statement = @"SELECT MAX(Id) 
                                            FROM Erros";
                // objeto para executar o comando sql
                SqlCommand sqlCommand = new SqlCommand(strSQL_Statement, sqlConnection);



                try
                {
                    sqlConnection.Open();
                    novoID = (int)sqlCommand.ExecuteScalar();

                }
                catch
                {
                    // escrever aqui as linhas de código a executar qd ocorrer um erro...
                }
                finally
                {
                    sqlConnection.Close();
                }

                // devolve o valor pretendido
                return novoID;
            }
        }




        public object inp_anexo { get; set; }
    }
}