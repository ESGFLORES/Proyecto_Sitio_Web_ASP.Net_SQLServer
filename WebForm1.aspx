<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="semana15_aplicacion_web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center" style="background-image: url('BITCOIN.jpg'); font-family: 'Century Gothic';">
        <br />
        <span style="color: #00FF00"><strong style="font-size: 21px">Ventas Celulares Star</strong></span></p>
<p class="text-center">
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="gama" DataValueField="gama">
            <asp:ListItem>Gama Baja</asp:ListItem>
            <asp:ListItem>Gama Media Baja</asp:ListItem>
            <asp:ListItem>Gama Media</asp:ListItem>
            <asp:ListItem>Gama Media Alta</asp:ListItem>
            <asp:ListItem>Gama Alta</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Celulares StarConnectionString5 %>" SelectCommand="SELECT * FROM [gamas]"></asp:SqlDataSource>
</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_cel" DataSourceID="SqlDataSource1" style="margin-left: 119px" Width="980px">
        <Columns>
            <asp:BoundField DataField="id_cel" HeaderText="id_cel" ReadOnly="True" SortExpression="id_cel" />
            <asp:BoundField DataField="nombre_cel" HeaderText="nombre_cel" SortExpression="nombre_cel" />
            <asp:BoundField DataField="marca_cel" HeaderText="marca_cel" SortExpression="marca_cel" />
            <asp:BoundField DataField="sistema_operativo" HeaderText="sistema_operativo" SortExpression="sistema_operativo" />
            <asp:BoundField DataField="gama" HeaderText="gama" SortExpression="gama" />
            <asp:BoundField DataField="id_gama" HeaderText="id_gama" SortExpression="id_gama" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Celulares StarConnectionString4 %>" SelectCommand="SELECT * FROM [celulares] WHERE ([gama] = @gama)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="gama" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<p>
    &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
