using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CdisMart_DAL;

namespace CdisMart_BLL
{
    public class UsuarioBLL
    {
        public Usuario consultarUsuario(string nombre_usuario, string contrasena)
        {
            UsuarioDAL user = new UsuarioDAL();
            return user.consultarUsuario(nombre_usuario, contrasena);
        }

        public void agregarUsuario(Usuario usuario)
        {   
            UsuarioDAL userDAL = new UsuarioDAL();
            Usuario usuarioCargado;

            usuarioCargado = userDAL.consultarNombreUsuario(usuario.nombre_usuario);

            if(usuarioCargado != null)
            {
                throw new Exception("El nombre de usuario ya existe en la base de datos");
            }
            userDAL.agregarUsuario(usuario);
        }
    }
}
