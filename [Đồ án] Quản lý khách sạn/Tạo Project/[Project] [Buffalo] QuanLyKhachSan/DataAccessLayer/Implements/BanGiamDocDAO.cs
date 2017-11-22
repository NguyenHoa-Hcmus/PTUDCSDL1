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
    public class BanGiamDocDAO : DBManager,IRepository
    {
        public int Them(Object obj)
        {
            BanGiamDoc gv = (BanGiamDoc)obj;
            return 1;
        }

        public int Xoa(Object obj)
        {
            BanGiamDoc gv = (BanGiamDoc)obj;
            return 1;
        }
        public object LuaChon()
        {
            // to do
            return null;
        }

        public int CapNhat(Object obj)
        {
            BanGiamDoc gv = (BanGiamDoc)obj;
            return 1;
        }
    }
}
