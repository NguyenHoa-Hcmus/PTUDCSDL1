using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
   public  interface IPhongHoc
    {
       int ThemPhong(PhongHoc P);
       int CapNhatThongTinPhong(PhongHoc P);
       int CapNhatTrangThaiPhong(int MaPhong);
       int NhapDuLieuTuFile(string FileName);
       int XoaPhong(int MaPhong);
       int CapNhatNgaySuaChuaPhong(int Ngay);
    }
}
