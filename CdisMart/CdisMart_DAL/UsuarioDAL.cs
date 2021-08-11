using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CdisMart_DAL
{
    public class UsuarioDAL
    {
        CdisMartEntities modelo;

        public UsuarioDAL()
        {
            modelo = new CdisMartEntities();
        }
        public Usuario consultarUsuario(string nombre_usuario, string contrasena)
        {
            var usuario = (from mUsuario in modelo.Usuario
                           where mUsuario.nombre_usuario == nombre_usuario && mUsuario.contrasena == contrasena
                           select mUsuario).FirstOrDefault();

            return usuario;
        }

        public Usuario consultarNombreUsuario(string nombre_usuario)
        {
            var usuario = (from mUsuario in modelo.Usuario
                           where mUsuario.nombre_usuario == nombre_usuario
                           select mUsuario).FirstOrDefault();

            return usuario;
        }
        public void agregarUsuario(Usuario usuario)
        {
            modelo.Usuario.Add(usuario);
            modelo.SaveChanges();
        }

    }
}
