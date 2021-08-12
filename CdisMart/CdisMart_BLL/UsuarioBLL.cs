using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using CdisMart_DAL;

namespace CdisMart_BLL
{
    public class UsuarioBLL
    {

        public Usuario consultarUsuario(int id)
        {
            UsuarioDAL user = new UsuarioDAL();
            return user.consultarUsuario(id);
        }

        public Usuario validarUsuario(string nombre_usuario, string contrasena)
        {
            UsuarioDAL user = new UsuarioDAL();
            return user.validarUsuario(nombre_usuario, contrasena);
        }

        public Usuario consultarNombreUsuario(string nombre_usuario)
        {
            UsuarioDAL user = new UsuarioDAL();
            return user.consultarNombreUsuario(nombre_usuario);
        }

        public void registrarUsuario(Usuario usuario)
        {
            UsuarioDAL userDAL = new UsuarioDAL();
            Usuario usuarioCargado;

            usuarioCargado = userDAL.consultarNombreUsuario(usuario.nombre_usuario);

            if (usuarioCargado != null)
            {
                throw new Exception("El nombre de usuario ya existe en la base de datos.");
            }
            else
            {
                using (TransactionScope ts = new TransactionScope())
                {
                    userDAL.registrarUsuario(usuario);
                    ts.Complete();
                }
            }
        }

        public String obtenerNombreCompleto(Usuario user)
        {
            return String.Format("{0} {1}", user.nombre, user.apellido);
        }

    }
}