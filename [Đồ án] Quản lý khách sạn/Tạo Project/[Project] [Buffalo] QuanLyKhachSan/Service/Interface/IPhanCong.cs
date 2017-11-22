using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IPhanCong
    {
        int ThemPhanCong(PhanCong Pc);
        int CapNhatPhanCong(PhanCong Pc);
        int NhapDuLieuTuFile(string FileName);
        int XoaPhanCong(int MaPc);
    }
}
