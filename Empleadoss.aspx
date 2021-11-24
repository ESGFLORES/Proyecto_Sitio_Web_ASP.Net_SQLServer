<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleadoss.aspx.cs" Inherits="semana15_aplicacion_web.Empleadoss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center; background-color: #FF0000;">
            Consultar Empleados
        </h2>
        <div style="text-align: center; background-color: #C0C0C0;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_empleados" DataSourceID="SqlDataSource1">
                <Columns>
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
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table] WHERE ([Id_ventas] = @Id_ventas)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Id_ventas" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
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
        </div>
    </form>
</body>
</html>
