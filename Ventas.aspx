<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="semana15_aplicacion_web.Ventas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="background-color: #FF0000; text-align: center;">
            Agregar Ventas al Sistema.
        </h2>
        <div style="background-color: #C0C0C0; text-align: center;">
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id_venta" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id_venta" HeaderText="Id_venta" ReadOnly="True" SortExpression="Id_venta" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Id_cliente" HeaderText="Id_cliente" SortExpression="Id_cliente" />
                    <asp:BoundField DataField="Id_empleados" HeaderText="Id_empleados" SortExpression="Id_empleados" />
                    <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" SortExpression="Subtotal" />
                    <asp:BoundField DataField="Descuento" HeaderText="Descuento" SortExpression="Descuento" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [VENTAS] WHERE [Id_venta] = @original_Id_venta AND [Fecha] = @original_Fecha AND [Id_cliente] = @original_Id_cliente AND [Id_empleados] = @original_Id_empleados AND [Monto] = @original_Monto AND [Producto] = @original_Producto AND [Subtotal] = @original_Subtotal AND [Descuento] = @original_Descuento AND [Total] = @original_Total" InsertCommand="INSERT INTO [VENTAS] ([Id_venta], [Fecha], [Id_cliente], [Id_empleados], [Monto], [Producto], [Subtotal], [Descuento], [Total]) VALUES (@Id_venta, @Fecha, @Id_cliente, @Id_empleados, @Monto, @Producto, @Subtotal, @Descuento, @Total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [VENTAS]" UpdateCommand="UPDATE [VENTAS] SET [Fecha] = @Fecha, [Id_cliente] = @Id_cliente, [Id_empleados] = @Id_empleados, [Monto] = @Monto, [Producto] = @Producto, [Subtotal] = @Subtotal, [Descuento] = @Descuento, [Total] = @Total WHERE [Id_venta] = @original_Id_venta AND [Fecha] = @original_Fecha AND [Id_cliente] = @original_Id_cliente AND [Id_empleados] = @original_Id_empleados AND [Monto] = @original_Monto AND [Producto] = @original_Producto AND [Subtotal] = @original_Subtotal AND [Descuento] = @original_Descuento AND [Total] = @original_Total">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_venta" Type="Int32" />
                    <asp:Parameter Name="original_Fecha" Type="String" />
                    <asp:Parameter Name="original_Id_cliente" Type="String" />
                    <asp:Parameter Name="original_Id_empleados" Type="String" />
                    <asp:Parameter Name="original_Monto" Type="String" />
                    <asp:Parameter Name="original_Producto" Type="String" />
                    <asp:Parameter Name="original_Subtotal" Type="String" />
                    <asp:Parameter Name="original_Descuento" Type="String" />
                    <asp:Parameter Name="original_Total" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_venta" Type="Int32" />
                    <asp:Parameter Name="Fecha" Type="String" />
                    <asp:Parameter Name="Id_cliente" Type="String" />
                    <asp:Parameter Name="Id_empleados" Type="String" />
                    <asp:Parameter Name="Monto" Type="String" />
                    <asp:Parameter Name="Producto" Type="String" />
                    <asp:Parameter Name="Subtotal" Type="String" />
                    <asp:Parameter Name="Descuento" Type="String" />
                    <asp:Parameter Name="Total" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Fecha" Type="String" />
                    <asp:Parameter Name="Id_cliente" Type="String" />
                    <asp:Parameter Name="Id_empleados" Type="String" />
                    <asp:Parameter Name="Monto" Type="String" />
                    <asp:Parameter Name="Producto" Type="String" />
                    <asp:Parameter Name="Subtotal" Type="String" />
                    <asp:Parameter Name="Descuento" Type="String" />
                    <asp:Parameter Name="Total" Type="String" />
                    <asp:Parameter Name="original_Id_venta" Type="Int32" />
                    <asp:Parameter Name="original_Fecha" Type="String" />
                    <asp:Parameter Name="original_Id_cliente" Type="String" />
                    <asp:Parameter Name="original_Id_empleados" Type="String" />
                    <asp:Parameter Name="original_Monto" Type="String" />
                    <asp:Parameter Name="original_Producto" Type="String" />
                    <asp:Parameter Name="original_Subtotal" Type="String" />
                    <asp:Parameter Name="original_Descuento" Type="String" />
                    <asp:Parameter Name="original_Total" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_venta" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
    </form>
</body>
</html>
