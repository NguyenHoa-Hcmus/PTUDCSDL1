using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface INhanTraPhong
    {
        int Them(NhanTraPhong ntp);
        int Xoa(int maNTP);
        int CapNhat(NhanTraPhong ntp);
    }
}
