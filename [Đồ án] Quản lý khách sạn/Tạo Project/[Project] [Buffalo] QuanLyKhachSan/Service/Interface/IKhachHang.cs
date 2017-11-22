using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IKhachHang
    {
        int ThemKhachHang(KhachHang kh);
        int CapNhatKhachHang(KhachHang kh);
        int XoaKhachHang(int maKH);
    }
}
