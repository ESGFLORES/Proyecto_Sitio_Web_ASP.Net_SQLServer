<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Celularess.aspx.cs" Inherits="semana15_aplicacion_web.Celularess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center; background-color: #FF0000;">
            Consultar Celulares
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Samsung</asp:ListItem>
                <asp:ListItem>iPhone</asp:ListItem>
                <asp:ListItem>Xiaomi</asp:ListItem>
                <asp:ListItem>Oppo</asp:ListItem>
                <asp:ListItem>Realme</asp:ListItem>
                <asp:ListItem>Vivo</asp:ListItem>
                <asp:ListItem>ZTE</asp:ListItem>
                <asp:ListItem>Alcatel</asp:ListItem>
                <asp:ListItem>Huawei</asp:ListItem>
                <asp:ListItem>LG</asp:ListItem>
                <asp:ListItem>One Plus</asp:ListItem>
                <asp:ListItem>Honor</asp:ListItem>
                <asp:ListItem>Google </asp:ListItem>
                <asp:ListItem>Sony</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1288px" AutoGenerateColumns="False" DataKeyNames="Id_cel" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_cel" HeaderText="Id_cel" ReadOnly="True" SortExpression="Id_cel" />
                    <asp:BoundField DataField="Nombre_cel" HeaderText="Nombre_cel" SortExpression="Nombre_cel" />
                    <asp:BoundField DataField="Marca_cel" HeaderText="Marca_cel" SortExpression="Marca_cel" />
                    <asp:BoundField DataField="Sistema_operativo" HeaderText="Sistema_operativo" SortExpression="Sistema_operativo" />
                    <asp:BoundField DataField="Gama" HeaderText="Gama" SortExpression="Gama" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CELULARES] WHERE ([Marca_cel] = @Marca_cel)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Marca_cel" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
