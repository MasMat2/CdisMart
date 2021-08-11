<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios/Usuarios.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CdisMart.Usuarios.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container ">
        <form class="row g-3" runat="server">
            <div id="imgLogin"></div>
            <div class="col-md-6">
                <label for="txtUsuario" class="form-label">Nombre de usuario</label>
                <asp:TextBox ID="txtUsuario" runat="server" MaxLength="10" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rf_usuario" runat="server"
                    ErrorMessage="*" ControlToValidate="txtUsuario"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12"></div>
            <div class="col-md-6">
                <label for="txtContrasena" class="form-label">Contraseña</label>
                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password" MaxLength="10" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv_contrasena" runat="server"
                    ErrorMessage="*" ControlToValidate="txtContrasena"
                    ValidationGroup="vlg1" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12">
                <asp:Button ID="btnLogIn" class="btn btn-primary btnLogin" runat="server" Text="Ingresar" OnClick="btnLogIn_Click" ValidationGroup="vlg1" />
                <span>¿No tienes una cuenta? <a href="./Signin.aspx">Regístrate</a></span>
            </div>
        </form>
    </div>

    <%--  <div id="imgLogin"></div>
    <table>
        <tr>
            <td>Nombre Usuario: </td>
            <td>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contraseña: </td>
            <td>
                <asp:TextBox ID="txtContrasena" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogIn" runat="server" Text="Ingresar" OnClick="btnLogIn_Click" />
            </td>
            <td>
                <asp:Button ID="btnSignIn" runat="server" Text="Registrarse" OnClick="btnSignIn_Click" />
            </td>
        </tr>
    </table>--%>
</asp:Content>
