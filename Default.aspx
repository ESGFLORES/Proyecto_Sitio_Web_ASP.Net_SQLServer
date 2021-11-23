<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="semana15_aplicacion_web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color: #FF6600">
        <h1 style="font-size: 28px; background-color: #FF6600; font-family: 'Century Gothic';">CELULARES STAR </h1>
        <p class="lead" style="font-size: 20px">La mejor tecnologia la encuentras aqui , los dispositivos moviles precio calidad  .</p>
       
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Gamas</h2>
            <p>
             Ofrecemos dispositivos que se adaptan a tus necesidades diarias .
            </p>
            <p>
                <a class="btn btn-default" href="WebForm1">Ver catalogo &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Envios</h2>
            <p>
                Estamos conectados con cualquier parte del mundo pide tu dispositivo sin importar la distancia.
            </p>
            <p>
                <a class="btn btn-default" href="WebForm2">Solicitar Envio &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Ayuda</h2>
            <p>
                Notificanos si es que hay algun problema con tu dispositivo estamos para ayudarte.
            </p>
            <p>
                <a class="btn btn-default" href="WebForm4">Reportar problema &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
