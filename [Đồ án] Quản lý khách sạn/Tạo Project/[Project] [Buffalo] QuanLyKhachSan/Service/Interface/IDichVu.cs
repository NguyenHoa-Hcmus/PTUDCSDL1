using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IDichVu
    {
        int ThemDichVu(DichVu dv);
        int CapNhatDichVu(DichVu dv);
        int XoaDichVu(int maDV);
    }
}
