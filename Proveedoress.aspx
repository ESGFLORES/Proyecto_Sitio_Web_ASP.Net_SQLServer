<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proveedoress.aspx.cs" Inherits="semana15_aplicacion_web.Proveedoress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
    </style>
</head>
<body>
     <h2 style="background-color: #FF0000; text-align: center;">
         Consultar Proveedores
        </h2>
    <form id="form1" runat="server" style="background-color: #C0C0C0">
       
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>1010</asp:ListItem>
            <asp:ListItem>1011</asp:ListItem>
            <asp:ListItem>1012</asp:ListItem>
            <asp:ListItem>1013</asp:ListItem>
            <asp:ListItem>1014</asp:ListItem>
            <asp:ListItem>1015</asp:ListItem>
            <asp:ListItem>1016</asp:ListItem>
            <asp:ListItem>1017</asp:ListItem>
            <asp:ListItem>1018</asp:ListItem>
            <asp:ListItem>1019</asp:ListItem>
            <asp:ListItem>1020</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1197px" AutoGenerateColumns="False" DataKeyNames="Id_proveedor" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id_proveedor" HeaderText="Id_proveedor" ReadOnly="True" SortExpression="Id_proveedor" />
                <asp:BoundField DataField="Nombre_del_proveedor" HeaderText="Nombre_del_proveedor" SortExpression="Nombre_del_proveedor" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Id_compras" HeaderText="Id_compras" SortExpression="Id_compras" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PROVEEDORES] WHERE ([Id_compras] = @Id_compras)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id_compras" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
