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
    public partial class subasta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                int id = int.Parse(Request.QueryString["id"]);
                cargarSubasta(id);
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void btnOferta_Click(object sender, EventArgs e)
        {
            Usuario usuarioLoggeado = (Usuario)Session["usuario"];
            int id = int.Parse(Request.QueryString["id"]);
            SubastaBLL subastaBLL = new SubastaBLL();
            Subasta subasta = subastaBLL.cargarSubasta(id);
            decimal ofertaActual = decimal.Parse(inputOfertaActual.Value);

            if (subasta.creador_id == usuarioLoggeado.id)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('No se le permite ofertar en esta subasta')", true);
            }
            else if (subasta.monto_mas_alto > ofertaActual)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Necesita realizar una oferta superior a la ya realizada')", true);

            }
            else if (ofertaActual > 1000000)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Necesita realizar una oferta menor a 1,000,000)", true);
            }
            else
            {
                subasta.ganador_id = usuarioLoggeado.id;
                subasta.monto_mas_alto = ofertaActual;
                subastaBLL.actualizarOferta(subasta);
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", String.Format("alert('{0}');location.href='{1}'", "Oferta realizada con exito", Request.RawUrl), true);
            }
        }

        public void cargarSubasta(int id)
        {
            SubastaBLL subastaBLL = new SubastaBLL();
            UsuarioBLL usuarioBLL = new UsuarioBLL();
            Subasta subasta = subastaBLL.cargarSubasta(id);
            string format = "dd/MM/yyyy HH:mm";
            string imagen_default = "https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg";

            lblImagen.Src = subasta.imagen_url ?? imagen_default;
            lblHeader.InnerText = String.Format("#{0} {1}", subasta.id.ToString(), subasta.nombre);
            lblDescrpcion.InnerText = subasta.descripcion;
            lblFechaInicio.InnerText = String.Format("Inicio: {0}", subasta.fecha_inicio.ToString(format));
            lblFechaCierre.InnerText = String.Format("Fin: {0}", subasta.fecha_cierre.ToString(format));
            lblMontoMasAlto.InnerText = String.Format("${0}", subasta.monto_mas_alto.ToString());

            Usuario ganador = usuarioBLL.consultarUsuario(subasta.ganador_id ?? 1);
            lblGanador.InnerText = String.Format("{0} {1}", ganador.nombre, ganador.apellido);
        }
    }
}