using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CdisMart_DAL
{
    public class SubastaDAL
    {
        CdisMartEntities modelo;

        public SubastaDAL()
        {
            modelo = new CdisMartEntities();
        }

        public void crearSubasta(Subasta subasta)
        {
            modelo.Subasta.Add(subasta);
            modelo.SaveChanges();
        }

        public List<Subasta> cargarSubastas()
        {
            var subastas = from mSubasta in modelo.Subasta
                           select mSubasta;

            return subastas.AsEnumerable<Subasta>().ToList();
        }

        public Subasta cargarSubasta(int id)
        {
            var subasta = (from mSubasta in modelo.Subasta
                           where mSubasta.id == id
                           select mSubasta).FirstOrDefault();

            return subasta;
        }

        public List<Subasta> obtenerSubastasActivas(Usuario user)
        {
            var subastas = from mSubasta in modelo.Subasta
                           where mSubasta.creador_id == user.id && mSubasta.fecha_inicio <= DateTime.Now
                           && mSubasta.fecha_cierre >= DateTime.Now
                           select mSubasta;

            return subastas.AsEnumerable<Subasta>().ToList();
        }
    }
}
