<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Examen_PabloGonzalez.ReporteMascotas" %>

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
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Mascota" DataSourceID="Sqlmascotas">
                <Columns>
                    <asp:BoundField DataField="ID_Mascota" HeaderText="ID_Mascota" InsertVisible="False" ReadOnly="True" SortExpression="ID_Mascota" />
                    <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre_Mascota" SortExpression="Nombre_Mascota" />
                    <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo_Mascota" SortExpression="Tipo_Mascota" />
                    <asp:BoundField DataField="Comida_Favorita" HeaderText="Comida_Favorita" SortExpression="Comida_Favorita" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Sqlmascotas" runat="server" ConnectionString="<%$ ConnectionStrings:SQLVeterinaria %>" SelectCommand="SELECT * FROM [Mae_Mascotas]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
