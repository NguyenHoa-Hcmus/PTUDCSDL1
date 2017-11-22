using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface INhanVien
    {
        int ThemNhanVien(NhanVien nv);
        int CapNhatNhanVien(NhanVien nv);
        int NhapDuLieuTuFile(string FileName);
        int XoaNhanVien (int maNV);
        int KhoiPhucMatKhau(int maNV);
    }
}
