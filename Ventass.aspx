<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventass.aspx.cs" Inherits="semana15_aplicacion_web.Ventass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center; background-color: #FF0000;"> 
            Consultar Ventas
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="739px" AutoGenerateColumns="False" DataKeyNames="Id_venta" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_venta" HeaderText="Id_venta" ReadOnly="True" SortExpression="Id_venta" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Id_cliente" HeaderText="Id_cliente" SortExpression="Id_cliente" />
                    <asp:BoundField DataField="Id_empleados" HeaderText="Id_empleados" SortExpression="Id_empleados" />
                    <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                    <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [VENTAS] WHERE ([Id_cliente] = @Id_cliente)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Id_cliente" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
