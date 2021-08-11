using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;
using System.Web.Mvc;

namespace CdisMart.Subastas
{
    public partial class Subastas : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioDAL userDAL = new UsuarioDAL();
            Usuario userObject;
            userObject = userDAL.consultarNombreUsuario("TomScott");
            Session["usuario"] = userObject; 
        }

        public ActionResult Students()
        { 
        }
        }
}