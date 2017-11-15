using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
using Service.Interface;
using DataAccessLayer;
namespace Service.Implements
{
    public class PhongHocService:IPhongHoc
    {
       public int ThemPhong(PhongHoc P)
       {
           return 1;
       }
       public int CapNhatThongTinPhong(PhongHoc P)
       {
           return 1;
       }
        public int CapNhatTrangThaiPhong(int MaPhong)
        {
            return 1;
        }
        public int NhapDuLieuTuFile(string FileName)
        {
            return 1;
        }
        public int XoaPhong(int MaPhong)
        {
            return 1;
        }
        public int CapNhatNgaySuaChuaPhong(int Ngay)
        {
            return 1;
        }
    }
}
