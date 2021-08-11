using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CdisMart_DAL;

namespace CdisMart_BLL
{
    public class SubastaBLL
    {
        public void crearSubasta(Subasta subasta)
        {
            SubastaDAL subastaDAL = new SubastaDAL();
            subastaDAL.crearSubasta(subasta);
        }
    }
}
