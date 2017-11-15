using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IMonHoc
    {
         int ThemMonHoc(MonHoc MH);
         int CapNhatThongTinMonHoc(MonHoc MH);
         int NhapDuLieuTuFile(string FileName);
    }
}
