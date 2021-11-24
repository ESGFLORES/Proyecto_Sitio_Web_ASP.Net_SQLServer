<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="semana15_aplicacion_web.Proveedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="background-color: #FF0000; text-align: center;">
            Agregar Proveedores al Sistema.
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id_proveedor" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id_proveedor" HeaderText="Id_proveedor" ReadOnly="True" SortExpression="Id_proveedor" />
                    <asp:BoundField DataField="Nombre_del_proveedor" HeaderText="Nombre_del_proveedor" SortExpression="Nombre_del_proveedor" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                    <asp:BoundField DataField="Pais" HeaderText="Pais" SortExpression="Pais" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Id_compras" HeaderText="Id_compras" SortExpression="Id_compras" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PROVEEDORES] WHERE [Id_proveedor] = @original_Id_proveedor AND [Nombre_del_proveedor] = @original_Nombre_del_proveedor AND [Direccion] = @original_Direccion AND [Ciudad] = @original_Ciudad AND [Pais] = @original_Pais AND [Telefono] = @original_Telefono AND [Correo] = @original_Correo AND [Id_compras] = @original_Id_compras" InsertCommand="INSERT INTO [PROVEEDORES] ([Id_proveedor], [Nombre_del_proveedor], [Direccion], [Ciudad], [Pais], [Telefono], [Correo], [Id_compras]) VALUES (@Id_proveedor, @Nombre_del_proveedor, @Direccion, @Ciudad, @Pais, @Telefono, @Correo, @Id_compras)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PROVEEDORES]" UpdateCommand="UPDATE [PROVEEDORES] SET [Nombre_del_proveedor] = @Nombre_del_proveedor, [Direccion] = @Direccion, [Ciudad] = @Ciudad, [Pais] = @Pais, [Telefono] = @Telefono, [Correo] = @Correo, [Id_compras] = @Id_compras WHERE [Id_proveedor] = @original_Id_proveedor AND [Nombre_del_proveedor] = @original_Nombre_del_proveedor AND [Direccion] = @original_Direccion AND [Ciudad] = @original_Ciudad AND [Pais] = @original_Pais AND [Telefono] = @original_Telefono AND [Correo] = @original_Correo AND [Id_compras] = @original_Id_compras">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_proveedor" Type="Int32" />
                    <asp:Parameter Name="original_Nombre_del_proveedor" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Ciudad" Type="String" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="String" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Id_compras" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_proveedor" Type="Int32" />
                    <asp:Parameter Name="Nombre_del_proveedor" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Ciudad" Type="String" />
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Id_compras" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre_del_proveedor" Type="String" />
                    <asp:Parameter Name="Direccion" Type="String" />
                    <asp:Parameter Name="Ciudad" Type="String" />
                    <asp:Parameter Name="Pais" Type="String" />
                    <asp:Parameter Name="Telefono" Type="String" />
                    <asp:Parameter Name="Correo" Type="String" />
                    <asp:Parameter Name="Id_compras" Type="Int32" />
                    <asp:Parameter Name="original_Id_proveedor" Type="Int32" />
                    <asp:Parameter Name="original_Nombre_del_proveedor" Type="String" />
                    <asp:Parameter Name="original_Direccion" Type="String" />
                    <asp:Parameter Name="original_Ciudad" Type="String" />
                    <asp:Parameter Name="original_Pais" Type="String" />
                    <asp:Parameter Name="original_Telefono" Type="String" />
                    <asp:Parameter Name="original_Correo" Type="String" />
                    <asp:Parameter Name="original_Id_compras" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_proveedor" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
    </form>
</body>
</html>
