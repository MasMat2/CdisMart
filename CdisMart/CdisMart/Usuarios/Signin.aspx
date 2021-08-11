<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuarios.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CdisMart.Usuarios.Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <form id="form1" runat="server">
        <table class="table table-bordered custom_tables">
            <tr>
                <td>Nombre: </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_Nombre" runat="server"
                        ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre"
                        ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Correo electrónico: </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server"
                        ErrorMessage="El email es requerido" ControlToValidate="txtEmail"
                        ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="re_Email" runat="server"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txtEmail" ErrorMessage="Formato de correo invalido"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Nombre de usuario: </td>
                <td>
                    <asp:TextBox ID="txtNombreUsuario" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_NombreUsuario" runat="server"
                        ErrorMessage="El nombre de usuario es requerido" ControlToValidate="txtNombreUsuario"
                        ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Contraseña: </td>
                <td>
                    <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_Contrasena" runat="server"
                        ErrorMessage="La contraseña es requerida" ControlToValidate="txtContrasena"
                        ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirmación de contraseña: </td>
                <td>
                    <asp:TextBox ID="txtContrasenaConfirmacion" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv_ContrasenaConfirmacion" runat="server"
                        ErrorMessage="El confirmación de contraseña es requerida" ControlToValidate="txtContrasenaConfirmacion"
                        ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>

        <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="btnRegistrarClick" ValidationGroup="vlg1" />
    </form>--%>

    <div class="container ">
        <form class="row g-3" runat="server">
            <h1>Unete a la comunidad CdisMart!</h1>
            <div class="col-md-6">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" class="form-control" required=""></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf_nombre" runat="server"
                    ErrorMessage="*" ControlToValidate="txtNombre"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_apellido" runat="server"
                    ErrorMessage="*" ControlToValidate="txtApellido"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-8">
                <label for="txtEmail" class="form-label">Correo electrónico</label>
                <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Email" runat="server"
                    ErrorMessage="*" ControlToValidate="txtEmail"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="re_Email" runat="server"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtEmail" ErrorMessage="Formato invalido"></asp:RegularExpressionValidator>

            </div>
            <div class="col-md-4">
                <label for="txtNombreUsuario" class="form-label">Nombre de usuario</label>
                <asp:TextBox ID="txtNombreUsuario" runat="server" MaxLength="10" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_NombreUsuario" runat="server"
                    ErrorMessage="*" ControlToValidate="txtNombreUsuario"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtContrasena" class="form-label">Contraseña</label>
                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" MaxLength="10" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_Contrasena" runat="server"
                    ErrorMessage="*" ControlToValidate="txtContrasena"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtContrasenaConfirmacion" class="form-label">Confirmación de contraseña</label>
                <asp:TextBox ID="txtContrasenaConfirmacion" runat="server" TextMode="Password" MaxLength="10" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_ContrasenaConfirmacion" runat="server"
                    ErrorMessage="*" ControlToValidate="txtContrasenaConfirmacion"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Crear cuenta" OnClick="btnRegistrarClick" ValidationGroup="vlg1" />
            </div>
        </form>
    </div>

    <%--<div class="container mt-5">
        <form class="row g-3">
            <div class="col-md-6">
                <label for="txtNombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="txtNombre" required runat="server">
            </div>
            <div class="col-md-6">
                <label for="txtApellido" class="form-label">Apellido</label>
                <input type="text" class="form-control" id="txtApellido" required runat="server">
            </div>
            <div class="col-md-8">
                <label for="txtEmail" class="form-label">Correo electronico</label>
                <input type="text" class="form-control" id="txtEmail" required runat="server">
            </div>
            <div class="col-md-4">
                <label for="txtNombreUsuario" class="form-label">Nombre Usuario</label>
                <input type="text" class="form-control" id="txtNombreUsuario" required runat="server">
            </div>
            <div class="col-md-6">
                <label for="txtContrasena" class="form-label">Contrasena</label>
                <input type="text" class="form-control" id="txtContrasena" required runat="server">
            </div>
            <div class="col-md-6">
                <label for="txtContrasenaConfirmacion" class="form-label">Confirmación de contraseña</label>
                <input type="text" class="form-control" id="txtContrasenaConfirmacion" required runat="server">
            </div>
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Crear cuenta</button>
            </div>
        </form>
    </div>--%>
</asp:Content>
