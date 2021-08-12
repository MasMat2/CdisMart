using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;
using System.Globalization;
using System.Text.RegularExpressions;

namespace CdisMart.Subastas
{
    public partial class subasta_i : System.Web.UI.Page
    {
        #region Eventos
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Subasta creada exitosamente')", true);

                }
            }

        }

        protected void btnCrearClick(object sender, EventArgs e)
        {
            crearSubasta();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", "alert('Subasta creada exitosamente')", true);
            //Response.Redirect("~/Login.aspx");
        }
        #endregion

        #region Metodos
        #region BLL
        public void crearSubasta()
        {
            Subasta subasta = new Subasta();
            subasta.nombre = txtNombre.Text;
            subasta.descripcion = txtDescripcion.Text;
            (subasta.fecha_inicio, subasta.fecha_cierre) = parseDateText();
            SubastaBLL subastaBLL = new SubastaBLL();
            try
            {
                subastaBLL.crearSubasta(subasta, (Usuario)Session["usuario"]);
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Alta", String.Format("alert('{0}')", ex.Message), true);
            }
            
        }
        #endregion

        #region Helpers
        public (DateTime, DateTime) parseDateText()
        {
            string format = "dd/MM/yyyy HH:mm";
            Regex rx = new Regex(@"(\d{2}/\d{2}/\d{4} \d{2}:\d{2})");
            MatchCollection matches = rx.Matches(txtFecha.Text);
            List<DateTime> dateTimes = new List<DateTime>();
            foreach (Match match in matches)
            {
                dateTimes.Add(DateTime.ParseExact(match.Value, format, CultureInfo.InvariantCulture));
            }
            return (dateTimes[0], dateTimes[1]);

        }
        #endregion
        #endregion
    }
}