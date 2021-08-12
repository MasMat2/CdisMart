<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CdisMart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/login.css" rel="stylesheet" />
    <%--<link href="Content/bootstrap.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="formLogin" runat="server">
        <div id="imgLogin"></div>
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
                    <asp:Button ID="btnSignIn" runat="server" Text="Registrarse" OnClick="btnSignIn_Click"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
