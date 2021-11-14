<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="semana15_aplicacion_web.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    </p>
    <p class="text-left">
        <strong style="font-size: 21px; font-style: normal; font-variant: normal; text-transform: none; color: #00FF00">Informacion para el envío:</strong></p>
    <p>
        &nbsp;</p>
    <p class="text-left" style="color: #000000; font-size: 15px; font-family: 'Century Gothic';">
        Nombre completo*</p>
    <p class="text-left">
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="478px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="24px" style="margin-left: 0px; margin-top: 0" Width="439px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="text-left" style="font-size: 15px; font-family: 'Century Gothic';">
        Direccion*</p>
    <p class="text-left" style="font-size: 15px; font-family: 'Century Gothic';">
        <asp:TextBox ID="TextBox3" runat="server" Height="24px" style="margin-left: 0px" Width="485px"></asp:TextBox>
    </p>
    <p style="font-size: 11px">
&nbsp;</p>
    <p style="font-size: 15px; font-family: 'Century Gothic';">
        Provincia o Canton*</p>
    <p>
        <asp:TextBox ID="TextBox7" runat="server" Height="24px" style="margin-left: 0px" Width="485px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="font-size: 11px">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="text-left" style="font-size: 15px; font-family: 'Century Gothic';">
        Numero de Telefono*</p>
    <p>
        <asp:TextBox ID="TextBox6" runat="server" Height="24px" style="margin-left: 0px" Width="209px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Font-Size="13pt" OnClick="Button1_Click" style="margin-left: 0px" Text="Enviar" Width="104px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
