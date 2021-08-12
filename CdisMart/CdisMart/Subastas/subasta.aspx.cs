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

        public void cargarSubasta(int id) 
        {
            SubastaBLL subastaBLL = new SubastaBLL();
            Subasta subasta = subastaBLL.cargarSubasta(id);
        }
    }
}