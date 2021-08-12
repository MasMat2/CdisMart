using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;

namespace CdisMart.Usuarios
{
    public partial class Signin : System.Web.UI.Page
    {
        #region Events
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarClick(object sender, EventArgs e)
        {
            registrarUsuario();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", String.Format("alert('{0}');location.href='{1}'", "Usuario registrado exitosamente", "./Login.aspx"), true);
        }
        #endregion

        #region Methods

        public void registrarUsuario()
        {
            Usuario user = new Usuario();
            UsuarioBLL usuarioBLL = new UsuarioBLL();
            user.nombre = txtNombre.Text;
            user.apellido = txtApellido.Text;
            user.email = txtEmail.Text;
            user.nombre_usuario = txtNombreUsuario.Text;
            user.contrasena = txtContrasena.Text;


            Usuario usuarioCreado = usuarioBLL.consultarNombreUsuario(user.nombre_usuario);
            if(usuarioCreado != null)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", String.Format("alert('{0}')", "Nombre de usuario no disponible"), true);
            }
            else if (txtContrasena.Text != txtContrasenaConfirmacion.Text)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Las contraseñas no coinciden')", true);
            }
            else
            {
                UsuarioBLL userBLL = new UsuarioBLL();
                try
                {
                    userBLL.registrarUsuario(user);
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", String.Format("alert('{0}')", ex.Message), true);
                }
            }
        }
        #endregion
    }
}