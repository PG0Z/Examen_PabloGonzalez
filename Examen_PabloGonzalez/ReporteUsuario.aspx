<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="Examen_PabloGonzalez.ReporteUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <<style> 
         body{
            background-color:lightslategray;
        }

     </style>
       
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Login_Usuario" DataSourceID="SQLUsuariosVeterinaria">
            <Columns>
                <asp:BoundField DataField="Login_Usuario" HeaderText="Login_Usuario" ReadOnly="True" SortExpression="Login_Usuario" />
                <asp:BoundField DataField="Clave_Usuario" HeaderText="Clave_Usuario" SortExpression="Clave_Usuario" />
                <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre_Usuario" SortExpression="Nombre_Usuario" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SQLUsuariosVeterinaria" runat="server" ConnectionString="<%$ ConnectionStrings:SQLVeterinaria %>" SelectCommand="SELECT * FROM [Mae_Usuarios]"></asp:SqlDataSource>
        <div>
        </div>
        Usuario<asp:TextBox ID="T_Usuario" runat="server"></asp:TextBox>
        Clave<asp:TextBox ID="T_Clave" runat="server" TextMode="Password"></asp:TextBox>
        Nombre<asp:TextBox ID="T_Nombre" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Borrar" />
    </form>
</body>
</html>
