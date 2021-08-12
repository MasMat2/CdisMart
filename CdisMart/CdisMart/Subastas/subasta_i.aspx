<%@ Page Title="" Language="C#" MasterPageFile="./Subastas.Master" AutoEventWireup="true" CodeBehind="subasta_i.aspx.cs" Inherits="CdisMart.Subastas.subasta_i" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Crear subasta</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <form id="form1" class="row g-3" runat="server">
            <h1>Crea una subasta!</h1>
            <div class="col-md-6">
                <label for="txtNombre" class="form-label">Nombre del producto</label>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_nombre" runat="server"
                    ErrorMessage="*" ControlToValidate="txtNombre"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtFecha" class="form-label">Fecha de inicio</label>
                <asp:TextBox ID="txtFecha" runat="server" autocomplete="off" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_fecha" runat="server"
                    ErrorMessage="*" ControlToValidate="txtFecha"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-6">
                <label for="txtDescripcion" class="form-label">Descripción del producto</label>
                <asp:TextBox ID="txtDescripcion" runat="server" MaxLength="100" TextMode="MultiLine" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_descripcion" runat="server"
                    ErrorMessage="*"
                    ControlToValidate="txtDescripcion" ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:Button ID="Button1" runat="server" Text="Crear subasta" OnClick="btnCrearClick" ValidationGroup="vlg1" class="btn btn-primary" />
            </div>
        </form>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {

            function load_plugins() {
                $("#ContentPlaceHolder1_txtFecha").daterangepicker({
                    timePicker: true,
                    startDate: moment().startOf('hour'),
                    minDate: moment().startOf('hour'),
                    endDate: moment().startOf('hour').add(32, 'hour'),
                    locale: {
                        format: 'DD/MM/YYYY hh:mm A',
                        direction: 'ltr',
                        separator: ' - ',
                        applyLabel: 'Aplicar',
                        cancelLabel: 'Cancelar',
                        weekLabel: 'W',
                        customRangeLabel: 'Rango de fecha',
                        daysOfWeek: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                        monthNames: ["Ene", "Feb", "Mar", "Abr", "May", "Jun", "Jul", "Ago", "Sep", "Oct", "Nov", "Dic"],
                        firstDay: moment.localeData().firstDayOfWeek()
                    }
                });
            }

            load_plugins();

            //var manager = Sys.WebForms.PageRequestManager.getInstance();

            //manager.add_endRequest(load_plugins);
        });
    </script>
</asp:Content>
