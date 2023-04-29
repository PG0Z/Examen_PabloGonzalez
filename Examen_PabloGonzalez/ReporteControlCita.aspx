<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteControlCita.aspx.cs" Inherits="Examen_PabloGonzalez.ReporteControlCita" %>

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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Sqlcontrolcita">
                <Columns>
                    <asp:BoundField DataField="ID_Mascota" HeaderText="ID_Mascota" SortExpression="ID_Mascota" />
                    <asp:BoundField DataField="Proxima_Fecha" HeaderText="Proxima_Fecha" SortExpression="Proxima_Fecha" />
                    <asp:BoundField DataField="Medico_Asignado" HeaderText="Medico_Asignado" SortExpression="Medico_Asignado" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="Sqlcontrolcita" runat="server" ConnectionString="<%$ ConnectionStrings:SQLVeterinaria %>" SelectCommand="SELECT * FROM [Control_Citas]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
