<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Celulares.aspx.cs" Inherits="semana15_aplicacion_web.Celulares" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="background-color: #FF0000; text-align: center;">
            Agregar Celulares al Sistema.
        </h2>
        <div style="background-color: #C0C0C0; text-align: center;">
            <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="Id_cel" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Id_cel" HeaderText="Id_cel" ReadOnly="True" SortExpression="Id_cel" />
                    <asp:BoundField DataField="Nombre_cel" HeaderText="Nombre_cel" SortExpression="Nombre_cel" />
                    <asp:BoundField DataField="Marca_cel" HeaderText="Marca_cel" SortExpression="Marca_cel" />
                    <asp:BoundField DataField="Sistema_operativo" HeaderText="Sistema_operativo" SortExpression="Sistema_operativo" />
                    <asp:BoundField DataField="Gama" HeaderText="Gama" SortExpression="Gama" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [CELULARES] WHERE [Id_cel] = @original_Id_cel AND [Nombre_cel] = @original_Nombre_cel AND [Marca_cel] = @original_Marca_cel AND [Sistema_operativo] = @original_Sistema_operativo AND [Gama] = @original_Gama" InsertCommand="INSERT INTO [CELULARES] ([Id_cel], [Nombre_cel], [Marca_cel], [Sistema_operativo], [Gama]) VALUES (@Id_cel, @Nombre_cel, @Marca_cel, @Sistema_operativo, @Gama)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CELULARES]" UpdateCommand="UPDATE [CELULARES] SET [Nombre_cel] = @Nombre_cel, [Marca_cel] = @Marca_cel, [Sistema_operativo] = @Sistema_operativo, [Gama] = @Gama WHERE [Id_cel] = @original_Id_cel AND [Nombre_cel] = @original_Nombre_cel AND [Marca_cel] = @original_Marca_cel AND [Sistema_operativo] = @original_Sistema_operativo AND [Gama] = @original_Gama">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_cel" Type="Int32" />
                    <asp:Parameter Name="original_Nombre_cel" Type="String" />
                    <asp:Parameter Name="original_Marca_cel" Type="String" />
                    <asp:Parameter Name="original_Sistema_operativo" Type="String" />
                    <asp:Parameter Name="original_Gama" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_cel" Type="Int32" />
                    <asp:Parameter Name="Nombre_cel" Type="String" />
                    <asp:Parameter Name="Marca_cel" Type="String" />
                    <asp:Parameter Name="Sistema_operativo" Type="String" />
                    <asp:Parameter Name="Gama" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nombre_cel" Type="String" />
                    <asp:Parameter Name="Marca_cel" Type="String" />
                    <asp:Parameter Name="Sistema_operativo" Type="String" />
                    <asp:Parameter Name="Gama" Type="String" />
                    <asp:Parameter Name="original_Id_cel" Type="Int32" />
                    <asp:Parameter Name="original_Nombre_cel" Type="String" />
                    <asp:Parameter Name="original_Marca_cel" Type="String" />
                    <asp:Parameter Name="original_Sistema_operativo" Type="String" />
                    <asp:Parameter Name="original_Gama" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id_cel" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
    </form>
</body>
</html>
