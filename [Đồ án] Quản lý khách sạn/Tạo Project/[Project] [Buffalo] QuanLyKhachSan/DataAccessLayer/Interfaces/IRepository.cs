using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Interfaces
{
    public interface IRepository
    {
        int Them(Object obj);
        int Xoa(Object obj);
        int CapNhat(Object obj);
        Object LuaChon();
    }
}
