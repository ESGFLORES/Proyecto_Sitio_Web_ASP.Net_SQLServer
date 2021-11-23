<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="semana15_aplicacion_web.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center" style="font-family: 'Century Gothic'; font-size: 20px; color: #FF6600;">
        &nbsp;</p>
    <p class="text-center" style="font-family: 'Century Gothic'; font-size: 20px; color: #FF6600;">
        INGRESO DE USUARIOS AL SISTEMA</p>
    <p class="text-center">
        &nbsp;<div class="text-left">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id_empleados" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" style="margin-left: 340px" Width="564px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="Id_empleados" HeaderText="Id_empleados" ReadOnly="True" SortExpression="Id_empleados" />
                    <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="Fecha_de_nacimiento" HeaderText="Fecha_de_nacimiento" SortExpression="Fecha_de_nacimiento" />
                    <asp:BoundField DataField="Lugar_de_nacimiento" HeaderText="Lugar_de_nacimiento" SortExpression="Lugar_de_nacimiento" />
                    <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
                    <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                    <asp:BoundField DataField="Lugar_de_residencia" HeaderText="Lugar_de_residencia" SortExpression="Lugar_de_residencia" />
                    <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                    <asp:BoundField DataField="Telefono_de_casa" HeaderText="Telefono_de_casa" SortExpression="Telefono_de_casa" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Afiliado_Afp" HeaderText="Afiliado_Afp" SortExpression="Afiliado_Afp" />
                    <asp:BoundField DataField="Id_ventas" HeaderText="Id_ventas" SortExpression="Id_ventas" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:DetailsView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id_empleados] = @original_Id_empleados AND [Nombres] = @original_Nombres AND [Apellidos] = @original_Apellidos AND [Fecha_de_nacimiento] = @original_Fecha_de_nacimiento AND [Lugar_de_nacimiento] = @original_Lugar_de_nacimiento AND [DUI] = @original_DUI AND [NIT] = @original_NIT AND [Sexo] = @original_Sexo AND [Estado] = @original_Estado AND [Lugar_de_residencia] = @original_Lugar_de_residencia AND [Celular] = @original_Celular AND [Telefono_de_casa] = @original_Telefono_de_casa AND [Correo] = @original_Correo AND [Afiliado_Afp] = @original_Afiliado_Afp AND [Id_ventas] = @original_Id_ventas" InsertCommand="INSERT INTO [Table] ([Id_empleados], [Nombres], [Apellidos], [Fecha_de_nacimiento], [Lugar_de_nacimiento], [DUI], [NIT], [Sexo], [Estado], [Lugar_de_residencia], [Celular], [Telefono_de_casa], [Correo], [Afiliado_Afp], [Id_ventas]) VALUES (@Id_empleados, @Nombres, @Apellidos, @Fecha_de_nacimiento, @Lugar_de_nacimiento, @DUI, @NIT, @Sexo, @Estado, @Lugar_de_residencia, @Celular, @Telefono_de_casa, @Correo, @Afiliado_Afp, @Id_ventas)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Fecha_de_nacimiento] = @Fecha_de_nacimiento, [Lugar_de_nacimiento] = @Lugar_de_nacimiento, [DUI] = @DUI, [NIT] = @NIT, [Sexo] = @Sexo, [Estado] = @Estado, [Lugar_de_residencia] = @Lugar_de_residencia, [Celular] = @Celular, [Telefono_de_casa] = @Telefono_de_casa, [Correo] = @Correo, [Afiliado_Afp] = @Afiliado_Afp, [Id_ventas] = @Id_ventas WHERE [Id_empleados] = @original_Id_empleados AND [Nombres] = @original_Nombres AND [Apellidos] = @original_Apellidos AND [Fecha_de_nacimiento] = @original_Fecha_de_nacimiento AND [Lugar_de_nacimiento] = @original_Lugar_de_nacimiento AND [DUI] = @original_DUI AND [NIT] = @original_NIT AND [Sexo] = @original_Sexo AND [Estado] = @original_Estado AND [Lugar_de_residencia] = @original_Lugar_de_residencia AND [Celular] = @original_Celular AND [Telefono_de_casa] = @original_Telefono_de_casa AND [Correo] = @original_Correo AND [Afiliado_Afp] = @original_Afiliado_Afp AND [Id_ventas] = @original_Id_ventas">
            <DeleteParameters>
                <asp:Parameter Name="original_Id_empleados" Type="Int32" />
                <asp:Parameter Name="original_Nombres" Type="String" />
                <asp:Parameter Name="original_Apellidos" Type="String" />
                <asp:Parameter Name="original_Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="original_Lugar_de_nacimiento" Type="String" />
                <asp:Parameter Name="original_DUI" Type="String" />
                <asp:Parameter Name="original_NIT" Type="String" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Estado" Type="String" />
                <asp:Parameter Name="original_Lugar_de_residencia" Type="String" />
                <asp:Parameter Name="original_Celular" Type="String" />
                <asp:Parameter Name="original_Telefono_de_casa" Type="String" />
                <asp:Parameter Name="original_Correo" Type="String" />
                <asp:Parameter Name="original_Afiliado_Afp" Type="String" />
                <asp:Parameter Name="original_Id_ventas" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id_empleados" Type="Int32" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="Lugar_de_nacimiento" Type="String" />
                <asp:Parameter Name="DUI" Type="String" />
                <asp:Parameter Name="NIT" Type="String" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="Lugar_de_residencia" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Telefono_de_casa" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Afiliado_Afp" Type="String" />
                <asp:Parameter Name="Id_ventas" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="Lugar_de_nacimiento" Type="String" />
                <asp:Parameter Name="DUI" Type="String" />
                <asp:Parameter Name="NIT" Type="String" />
                <asp:Parameter Name="Sexo" Type="String" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="Lugar_de_residencia" Type="String" />
                <asp:Parameter Name="Celular" Type="String" />
                <asp:Parameter Name="Telefono_de_casa" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter Name="Afiliado_Afp" Type="String" />
                <asp:Parameter Name="Id_ventas" Type="Int32" />
                <asp:Parameter Name="original_Id_empleados" Type="Int32" />
                <asp:Parameter Name="original_Nombres" Type="String" />
                <asp:Parameter Name="original_Apellidos" Type="String" />
                <asp:Parameter Name="original_Fecha_de_nacimiento" Type="String" />
                <asp:Parameter Name="original_Lugar_de_nacimiento" Type="String" />
                <asp:Parameter Name="original_DUI" Type="String" />
                <asp:Parameter Name="original_NIT" Type="String" />
                <asp:Parameter Name="original_Sexo" Type="String" />
                <asp:Parameter Name="original_Estado" Type="String" />
                <asp:Parameter Name="original_Lugar_de_residencia" Type="String" />
                <asp:Parameter Name="original_Celular" Type="String" />
                <asp:Parameter Name="original_Telefono_de_casa" Type="String" />
                <asp:Parameter Name="original_Correo" Type="String" />
                <asp:Parameter Name="original_Afiliado_Afp" Type="String" />
                <asp:Parameter Name="original_Id_ventas" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id_empleados" DataSourceID="SqlDataSource1" Height="16px" Width="16px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id_empleados" HeaderText="Id_empleados" ReadOnly="True" SortExpression="Id_empleados" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="Fecha_de_nacimiento" HeaderText="Fecha_de_nacimiento" SortExpression="Fecha_de_nacimiento" />
                <asp:BoundField DataField="Lugar_de_nacimiento" HeaderText="Lugar_de_nacimiento" SortExpression="Lugar_de_nacimiento" />
                <asp:BoundField DataField="DUI" HeaderText="DUI" SortExpression="DUI" />
                <asp:BoundField DataField="NIT" HeaderText="NIT" SortExpression="NIT" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Lugar_de_residencia" HeaderText="Lugar_de_residencia" SortExpression="Lugar_de_residencia" />
                <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                <asp:BoundField DataField="Telefono_de_casa" HeaderText="Telefono_de_casa" SortExpression="Telefono_de_casa" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="Afiliado_Afp" HeaderText="Afiliado_Afp" SortExpression="Afiliado_Afp" />
                <asp:BoundField DataField="Id_ventas" HeaderText="Id_ventas" SortExpression="Id_ventas" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </div>
    <p>
        &nbsp;</p>
<p class="text-left" style="height: 0px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p class="text-left">
        &nbsp;</p>
    <p class="text-left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="text-left">
        &nbsp;</p>
    <p class="text-left">
        &nbsp;</p>
<p class="text-left">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
    <p class="text-left">
        &nbsp;</p>
    <p class="text-left">
        &nbsp;</p>
<p class="text-left">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
