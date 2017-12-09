using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.Interfaces;
using DataAccessLayer;
using DataObject;
namespace DataAccessLayer
{
    public class DichVuDAO : DBManager, IRepository
    {
        public int Them(Object obj)
        {
            DichVu gv = (DichVu)obj;
            return 1;
        }

        public int Xoa(Object obj)
        {
            DichVu gv = (DichVu)obj;
            return 1;
        }
        public object LuaChon()
        {
            // to do
            return null;
        }

        public int CapNhat(Object obj)
        {
            DichVu gv = (DichVu)obj;
            return 1;
        }
    }
}
