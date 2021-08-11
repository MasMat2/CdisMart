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
    }
}
