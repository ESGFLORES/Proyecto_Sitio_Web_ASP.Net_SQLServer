<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="semana15_aplicacion_web.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-family: 'Century Gothic'; font-size: 21px">
        <br />
&nbsp;¡ Cuentanos ! ¿ Cómo´podemos ayudarte ?</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="623px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Enviar comentario" Width="124px" />
    </p>
    <p style="font-size: 21px; font-family: 'Century Gothic';">
        ¿ esto te fue util ?</p>
    <p>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Si" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" />
    </p>
    <p>
        &nbsp;</p>
    <p style="font-family: 'Century Gothic'; font-size: 16px">
&nbsp; Si sigues teniendo problemas contactate con nosotros:</p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Soporte :</strong> <a href="mailto:Support@example.com">ESFLORES@gmail.com</a></p>
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
</asp:Content>
