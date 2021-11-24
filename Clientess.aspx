<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientess.aspx.cs" Inherits="semana15_aplicacion_web.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center; background-color: #FF0000;">
            Consultar Clientes
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
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
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1375px" AutoGenerateColumns="False" DataKeyNames="Id_clientes" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_clientes" HeaderText="Id_clientes" ReadOnly="True" SortExpression="Id_clientes" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                    <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
                    <asp:BoundField DataField="Residencia" HeaderText="Residencia" SortExpression="Residencia" />
                    <asp:BoundField DataField="Id_venta" HeaderText="Id_venta" SortExpression="Id_venta" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CLIENTES] WHERE ([Id_venta] = @Id_venta)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Id_venta" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
