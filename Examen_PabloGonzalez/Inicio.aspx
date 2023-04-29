<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen_PabloGonzalez.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body{
            background-color:lightslategray;
        }
        ul{
            align-content:center;
            background-color:black;
            width:100%;
            height:50px;
            
        }
        li{
          top:200px;
          left:100px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <ul>
<asp:Button ID="Button1" runat="server" Text="Inicio" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Reporte Usuario" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Reporte Mascota" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Reporte Control cita" OnClick="Button4_Click" />
          </ul> 
        </div>
    </form>
</body>
</html>
