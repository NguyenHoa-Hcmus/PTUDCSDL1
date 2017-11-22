using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IPhong
    {
        int ThemPhong(Phong p);
        int CapNhatPhong(Phong p);
        int XoaPhong(int MaPhong);
    }
}
