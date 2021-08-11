<%@ Page Title="" Language="C#" MasterPageFile="~/CdisMart.Master" AutoEventWireup="true" CodeBehind="subasta_i.aspx.cs" Inherits="CdisMart.Subastas.subasta_i" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Crear subasta</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered custom_tables">
        <tr>
            <td>Nombre del producto: </td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_nombre" runat="server"
                    ErrorMessage="El nombre del producto es requerido" ControlToValidate="txtNombre"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Descripción del producto: </td>
            <td>
                <asp:TextBox ID="txtDescripcion" runat="server" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_descripcion" runat="server"
                    ErrorMessage="La descripcion del producto es requerida" 
                    ControlToValidate="txtDescripcion" ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>Fecha de inicio: </td>
            <td>
                <asp:TextBox ID="txtFechaInicio" runat="server" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_fechaInicio" runat="server"
                    ErrorMessage="La fecha de incio es requerida" ControlToValidate="txtFechaInicio"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv_fechaInicio" runat="server"
                    ErrorMessage="El formato de fecha es incorrecto (dd/mm/yyyy) o (mm/dd/yyyy)"
                    ControlToValidate="txtFechaInicio" Type="Date" Operator="DataTypeCheck"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Fecha de fin: </td>
            <td>
                <asp:TextBox ID="txtFechaFin" runat="server" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_fechaFin" runat="server"
                    ErrorMessage="La fecha de fin es requerida" ControlToValidate="txtFechaFin"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv_fechaFin" runat="server"
                    ErrorMessage="El formato de fecha es incorrecto (dd/mm/yyyy) o (mm/dd/yyyy)"
                    ControlToValidate="txtFechaFin" Type="Date" Operator="DataTypeCheck"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:CompareValidator>
            </td>
        </tr>
    </table>

    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="btnCrearClick" ValidationGroup="vlg1" />

</asp:Content>
