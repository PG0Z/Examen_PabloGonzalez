using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Win32;

namespace Examen_PabloGonzalez
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string User = T_User.Text;
            string clave = T_Clave.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["SQLVeterinaria"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("select Login_Usuario, Clave_Usuario from Mae_Usuarios where Login_Usuario = '" + User + "' " +
                "and Clave_Usuario = '" + clave + "'", connection);
            connection.Open();
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    Response.Redirect("Inicio.aspx");
                }
                else
                {
                    L_Mensaje.Text = "Usuario o Contraseña incorrecto";
                }
            }

            connection.Close();
        }


    }
}