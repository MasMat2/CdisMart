using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;

namespace CdisMart
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
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Usuario registrado exitosamente.')", true);
            Response.Redirect("~/Login.aspx");
        }
        #endregion

        #region Methods

        public void registrarUsuario()
        {
            Usuario user = new Usuario();
            user.nombre = txtNombre.Text;
            user.email = txtEmail.Text;
            user.nombre_usuario = txtNombreUsuario.Text;
            user.contrasena = txtContrasena.Text;
            if (txtContrasena.Text == txtContrasenaConfirmacion.Text)
            {
                UsuarioBLL userBLL = new UsuarioBLL();
                userBLL.registrarUsuario(user);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('La confirmación de contrasena es incorrecta.')", true);
            }
        }
        #endregion
    }
}