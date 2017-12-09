using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
   public interface ICongViec
    {
        int ThemCongViec(CongViec Cv);
        int CapNhatCongViec(CongViec Cv);
        int XoaCongViec(int MaCv);
    }
}
