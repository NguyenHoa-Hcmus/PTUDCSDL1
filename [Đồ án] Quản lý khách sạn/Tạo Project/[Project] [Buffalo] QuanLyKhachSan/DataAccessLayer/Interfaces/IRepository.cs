using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Interfaces
{
    public interface IRepository<T>
    {
        int Them(T t);
        int Xoa(T t);
        int CapNhat(T t);
        Object Xem(T t);
    }
}
