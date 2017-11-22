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
    public class DatPhongDAO : DBManager, IRepository
    {
        public int Them(Object obj)
        {
            DatPhong gv = (DatPhong)obj;
            return 1;
        }

        public int Xoa(Object obj)
        {
            DatPhong gv = (DatPhong)obj;
            return 1;
        }
        public object LuaChon()
        {
            // to do
            return null;
        }

        public int CapNhat(Object obj)
        {
            DatPhong gv = (DatPhong)obj;
            return 1;
        }
    }
}
