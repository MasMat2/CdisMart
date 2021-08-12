using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using CdisMart_DAL;

namespace CdisMart_BLL
{
    public class SubastaBLL
    {
        public void crearSubasta(Subasta subasta, Usuario user)
        {
            SubastaDAL subastaDAL = new SubastaDAL();
            List<Subasta> listSubasta = subastaDAL.obtenerSubastasActivas(user);
            if (listSubasta.Count == 3)
            {
                throw new Exception("No se permite tener mas de 3 subastas activas");
            }
            else
            {
                using (TransactionScope ts = new TransactionScope())
                {
                    subasta.creador_id = user.id;
                    subastaDAL.crearSubasta(subasta);
                    ts.Complete();
                }
            }
        }

        public List<Subasta> cargarSubastas()
        {
            SubastaDAL subastaDAL = new SubastaDAL();
            return subastaDAL.cargarSubastas();
        }

        public Subasta cargarSubasta(int id)
        {
            SubastaDAL subastaDAL = new SubastaDAL();
            return subastaDAL.cargarSubasta(id);
        }

        public void actualizarOferta(Subasta subasta)
        {
            SubastaDAL subastaDAL = new SubastaDAL();
            subastaDAL.actualizarOferta(subasta);
        }
    }
}
