﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CdisMart_DAL;
using CdisMart_BLL;

namespace CdisMart.Usuarios
{
    public partial class Login : System.Web.UI.Page
    {
        #region Events
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnLogIn_Click(object sender, EventArgs e)
        {
            if (usuarioValido())
            {
                Response.Redirect("~/Subastas/subasta_i.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Sesion", "alert('Usuario y/o contraseña incorrectos.')", true);
            }

        }
        #endregion

        #region Methods
        public bool usuarioValido()
        {
            bool accesso = false;

            UsuarioBLL userBLL = new UsuarioBLL();
            Usuario userObject;

            userObject = userBLL.validarUsuario(txtUsuario.Text, txtContrasena.Text);

            if (userObject != null)
            {
                Session["user"] = userObject;
                accesso = true;
            }

            return accesso;
        }
        #endregion
    }
}