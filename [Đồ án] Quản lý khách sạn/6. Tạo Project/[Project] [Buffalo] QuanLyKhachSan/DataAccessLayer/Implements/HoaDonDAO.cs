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
    public class HoaDonDAO : DBManager, IRepository
    {
        public int Them(Object obj)
        {
            HoaDon gv = (HoaDon)obj;
            return 1;
        }

        public int Xoa(Object obj)
        {
            HoaDon gv = (HoaDon)obj;
            return 1;
        }
        public object LuaChon()
        {
            // to do
            return null;
        }

        public int CapNhat(Object obj)
        {
            HoaDon gv = (HoaDon)obj;
            return 1;
        }
    }
}
