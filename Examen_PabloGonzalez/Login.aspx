<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Examen_PabloGonzalez.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            background-color:lightslategray;
        }
        .caja{
            position:absolute;
            top:200px;
            left:350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="caja">
            
            Usuario<asp:TextBox ID="T_User" runat="server"></asp:TextBox>
            Contraseña<asp:TextBox ID="T_Clave" runat="server" TextMode="Password"></asp:TextBox>
<asp:Button ID="B_Entrar" runat="server" Text="Entrar" OnClick="Button1_Click" />
        </div>
       
        <asp:Label ID="L_Mensaje" runat="server"></asp:Label>
       
    </form>
</body>
</html>
