using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;
using System.Globalization;

namespace CdisMart.Subastas
{
    public partial class subasta_i : System.Web.UI.Page
    {
        #region Eventos
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCrearClick(object sender, EventArgs e)
        {
            crearSubasta();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Subasta creada exitosamente.')", true);
            //Response.Redirect("~/Login.aspx");
        }
        #endregion

        #region Metodos

        public void crearSubasta()
        {
            Subasta subasta = new Subasta();
            subasta.nombre = txtNombre.Text;
            subasta.descripcion = txtDescripcion.Text;
            subasta.fecha_fin = DateTime.ParseExact(txtFechaInicio.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);
            subasta.fecha_fin = DateTime.ParseExact(txtFechaFin.Text, "dd-MM-yyyy", CultureInfo.InvariantCulture);

            SubastaBLL subastaBLL = new SubastaBLL();
            subastaBLL.crearSubasta(subasta);
        }

        #endregion
    }
}