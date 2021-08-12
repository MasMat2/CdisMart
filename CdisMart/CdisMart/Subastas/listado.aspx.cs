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
    public partial class listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                    grd_subastas.DataSource = cargarSubastas();
                    grd_subastas.DataBind();
                    if (grd_subastas.Rows.Count > 0)
                    {
                        //Adds THEAD and TBODY Section.
                        grd_subastas.HeaderRow.TableSection = TableRowSection.TableHeader;
                    }
                }
                else
                {
                    Response.Redirect("~/Usuarios/Login.aspx");
                }
            }
        }

        public List<Subasta> cargarSubastas()
        {
            SubastaBLL subastaBLL = new SubastaBLL();
            return subastaBLL.cargarSubastas();

        }

    }
}