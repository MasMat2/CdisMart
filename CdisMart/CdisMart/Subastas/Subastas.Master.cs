using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;

namespace CdisMart.Subastas
{
    public partial class Subastas : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            UsuarioDAL userDAL = new UsuarioDAL();
            Usuario userObject;
            userObject = userDAL.consultarNombreUsuario("TomScott");
            Session["usuario"] = userObject;
            lblNombre.Text = userObject.nombre_usuario;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioBLL userBLL = new UsuarioBLL();
            string nombreCompleto = userBLL.obtenerNombreCompleto((Usuario)Session["usuario"]);
            lblNombre.Text = nombreCompleto;
        }

        //public ActionResult Students()
        //{ 
        //}
    }
}