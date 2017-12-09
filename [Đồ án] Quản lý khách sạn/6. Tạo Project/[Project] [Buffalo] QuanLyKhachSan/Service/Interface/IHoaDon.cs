using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IHoaDon
    {
        int ThemHoaDon(HoaDon hd);
        int XoaHoaDon(int maHD);
        int CapNhatHoaDon(HoaDon hd);
    }
}
