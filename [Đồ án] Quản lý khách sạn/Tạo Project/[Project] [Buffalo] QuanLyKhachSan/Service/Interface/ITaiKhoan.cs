using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface ITaiKhoan
    {
        int KiemTraTaiKhoan(TaiKhoan tk);
        int QuenMatKhau(TaiKhoan tk);
        int DangKi(TaiKhoan tk);
    }
}
