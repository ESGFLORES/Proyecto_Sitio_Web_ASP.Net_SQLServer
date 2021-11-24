<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="semana15_aplicacion_web.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="background-color: #FF0000; text-align: center;">
            Agregar Clientes al Sistema.
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id_clientes" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id_clientes" HeaderText="Id_clientes" ReadOnly="True" SortExpression="Id_clientes" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                    <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
                    <asp:BoundField DataField="Residencia" HeaderText="Residencia" SortExpression="Residencia" />
                    <asp:BoundField DataField="Id_venta" HeaderText="Id_venta" SortExpression="Id_venta" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CLIENTES] WHERE [Id_clientes] = @original_Id_clientes AND [Nombres] = @original_Nombres AND [Apellidos] = @original_Apellidos AND [Celular] = @original_Celular AND [DUI] = @original_DUI AND [Residencia] = @original_Residencia AND [Id_venta] = @original_Id_venta" InsertCommand="INSERT INTO [CLIENTES] ([Id_clientes], [Nombres], [Apellidos], [Celular], [DUI], [Residencia], [Id_venta]) VALUES (@Id_clientes, @Nombres, @Apellidos, @Celular, @DUI, @Residencia, @Id_venta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CLIENTES]" UpdateCommand="UPDATE [CLIENTES] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Celular] = @Celular, [DUI] = @DUI, [Residencia] = @Residencia, [Id_venta] = @Id_venta WHERE [Id_clientes] = @original_Id_clientes AND [Nombres] = @original_Nombres AND [Apellidos] = @original_Apellidos AND [Celular] = @original_Celular AND [DUI] = @original_DUI AND [Residencia] = @original_Residencia AND [Id_venta] = @original_Id_venta">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_clientes" Type="Int32" />
                    <asp:Parameter Name="original_Nombres" Type="String" />
                    <asp:Parameter Name="original_Apellidos" Type="String" />
                    <asp:Parameter Name="original_Celular" Type="String" />
                    <asp:Parameter Name="original_DUI" Type="String" />
                    <asp:Parameter Name="original_Residencia" Type="String" />
                    <asp:Parameter Name="original_Id_venta" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_clientes" Type="Int32" />
                    <asp:Parameter Name="Nombres" Type="String" />
                    <asp:Parameter Name="Apellidos" Type="String" />
                    <asp:Parameter Name="Celular" Type="String" />
                    <asp:Parameter Name="DUI" Type="String" />
                    <asp:Parameter Name="Residencia" Type="String" />
                    <asp:Parameter Name="Id_venta" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombres" Type="String" />
                    <asp:Parameter Name="Apellidos" Type="String" />
                    <asp:Parameter Name="Celular" Type="String" />
                    <asp:Parameter Name="DUI" Type="String" />
                    <asp:Parameter Name="Residencia" Type="String" />
                    <asp:Parameter Name="Id_venta" Type="Int32" />
                    <asp:Parameter Name="original_Id_clientes" Type="Int32" />
                    <asp:Parameter Name="original_Nombres" Type="String" />
                    <asp:Parameter Name="original_Apellidos" Type="String" />
                    <asp:Parameter Name="original_Celular" Type="String" />
                    <asp:Parameter Name="original_DUI" Type="String" />
                    <asp:Parameter Name="original_Residencia" Type="String" />
                    <asp:Parameter Name="original_Id_venta" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_clientes" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
    </form>
</body>
</html>
