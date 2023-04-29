using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_PabloGonzalez
{
    public partial class ReporteUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLVeterinaria"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_insertarUsuario", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Usuario", T_Usuario.Text);
                    command.Parameters.AddWithValue("@Clave", T_Clave.Text);
                    command.Parameters.AddWithValue("@Nombre", T_Nombre.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Mostrar un mensaje de confirmación o redirigir a otra página
            Response.Redirect("ReporteUsuario.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLVeterinaria"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_ActualizarUsuario", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Usuario", T_Usuario.Text);
                    command.Parameters.AddWithValue("@Clave", T_Clave.Text);
                    command.Parameters.AddWithValue("@Nombre", T_Nombre.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Mostrar un mensaje de confirmación o redirigir a otra página
            Response.Redirect("ReporteUsuario.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["SQLVeterinaria"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("SP_BorrarUsuario", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Usuario", T_Usuario.Text);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            // Mostrar un mensaje de confirmación o redirigir a otra página
            Response.Redirect("ReporteUsuario.aspx");
        }
    }
    }