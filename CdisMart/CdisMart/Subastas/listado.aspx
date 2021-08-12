<%@ Page Title="" Language="C#" MasterPageFile="~/Subastas/Subastas.Master" AutoEventWireup="true" CodeBehind="listado.aspx.cs" Inherits="CdisMart.Subastas.listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Listado de subastas</title>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap5.min.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js">
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="input-group mt-3">
            <span class="input-group-text" id="basic-addon3">Buscar por descripción</span>
            <input type="text" class="form-control" id="search-box" aria-describedby="basic-addon3">
        </div>

        <form id="form1" class="row" runat="server">
            <asp:GridView ID="grd_subastas" runat="server" AutoGenerateColumns="false" CssClass="table table-hover table-borderless">
                <Columns>
                    <%--<asp:BoundField HeaderText="#" DataField="id" />--%>
                    <asp:TemplateField HeaderText="#">
                        <ItemTemplate>
                            <a href=".\subasta.aspx?id=<%#Eval("id") %>"><%#Eval("id") %></a
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Nombre" DataField="nombre" />
                    <asp:BoundField HeaderText="Descripción" DataField="descripcion" />
                    <asp:BoundField HeaderText="Fecha de inicio" DataField="fecha_inicio" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField HeaderText="Fecha de cierre" DataField="fecha_cierre" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:HyperLinkField
                        DataTextFormatString="{0:c}"
                        DataNavigateUrlFields="id"
                        DataNavigateUrlFormatString=".\historial.aspx?id={0}"
                        HeaderText="Historial"
                        Text="Historial"
                        Target="_blank" />
                </Columns>
            </asp:GridView>
        </form>
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            table = $('#ContentPlaceHolder1_grd_subastas').DataTable({
                paging: false,
                language: {
                    url: 'https://cdn.datatables.net/plug-ins/1.10.25/i18n/Spanish.json'
                },
                sDom: '<"H"lr>t<"F"ip>'
            });
            $('#search-box').on('keyup', function () {
                table
                    .columns(2)
                    .search(this.value)
                    .draw();
            });
        });
    </script>
</asp:Content>
