using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IThietBi
    {
        int ThemThietBi(ThietBi tb);
        int CapNhatThongTinThieBi(ThietBi tb);
        int NhapTuFile(string name);
        int ThemNgayHong(int ngay);
        int ThemNgaySuaChua(int ngay);
        int CapNhatTinhTrang(int maTB);
    }
}
