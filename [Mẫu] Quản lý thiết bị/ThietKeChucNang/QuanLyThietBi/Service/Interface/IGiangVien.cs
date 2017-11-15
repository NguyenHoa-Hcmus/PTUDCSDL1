using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IGiangVien
    {
        int ThemGiangVien(GiangVien gv);
        int CapNhatGiangVien(GiangVien gv);
        int XoaGiangVien(GiangVien gv);
    }
}
