<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="CdisMart.Signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/login.css" rel="stylesheet" />
    <%--<link href="Content/bootstrap.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="formLogin" runat="server">
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
                <asp:RegularExpressionValidator ID="re_Email" runat="server" \
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
        </form>
</body>
</html>
