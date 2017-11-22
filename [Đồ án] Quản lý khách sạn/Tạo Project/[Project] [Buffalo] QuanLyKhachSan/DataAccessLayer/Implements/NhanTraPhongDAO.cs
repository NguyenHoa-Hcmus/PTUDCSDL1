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
    public class NhanTraPhongDAO : DBManager, IRepository
    {
        public int Them(Object obj)
        {
            NhanTraPhong gv = (NhanTraPhong)obj;
            return 1;
        }

        public int Xoa(Object obj)
        {
            NhanTraPhong gv = (NhanTraPhong)obj;
            return 1;
        }
        public object LuaChon()
        {
            // to do
            return null;
        }

        public int CapNhat(Object obj)
        {
            NhanTraPhong gv = (NhanTraPhong)obj;
            return 1;
        }
    }
}
