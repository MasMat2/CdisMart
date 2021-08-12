<%@ Page Title="" Language="C#" MasterPageFile="~/Subastas/Subastas.Master" AutoEventWireup="true" CodeBehind="subasta.aspx.cs" Inherits="CdisMart.Subastas.subasta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="stylesheet" href="/Content/Styles/subasta.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form id="form1" class="row g-3" runat="server">
            <div class="item p-5">
                <img id="lblImagen" alt="" runat="server" class="imagenObjeto">
                <div class="info">
                    <h1 class="bd-title" id="lblHeader" runat="server">#1 Default Infromation Colgante de oro</h1>
                    <p class="bd-lead" id="lblDescrpcion" runat="server">
                        Colgante de oro de 14 quilates y 17 mm con
                        perla de
                        1.22 ct con diamantes
                    </p>
                    <div class="justificar">
                        <p class="fecha-inicio" id="lblFechaInicio" runat="server">Inicio: 12/08/2021 04:00 AM</p>
                        <p class="fecha-fin" id="lblFechaCierre" runat="server">Fin: 12/08/2021 04:00 AM</p>
                    </div>
                    <div class="subasta">
                        <div class="pad">
                            <span class="precio" id="lblMontoMasAlto" runat="server">$150</span>
                            <span class="round" id="lblGanador" runat="server">Tom Scoot</span>
                        </div>
                        <span class="pad">Tu oferta maxima:</span>
                        <div class="price-input">
                            <input type="text" name="" id="inputOfertaActual" class="" runat="server">
                          <%--<button type="button" class="btn btn-info">Hacer una oferta</button>--%>
                            <asp:Button ID="btnHacerOferta" CssClass="btn btn-info" Text="Hacer una oferta" 
                                OnClick="btnOferta_Click" runat="server"/>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
