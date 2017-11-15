using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Service.Interface;
using DataObject;
using DataAccessLayer;
namespace Service.Implements
{
    public class ThietBiService:IThietBi
    {
        public int ThemThietBi(ThietBi tb)
        {
            return 1;
        }
        public int CapNhatThongTinThieBi(ThietBi tb)
        {
            return 1;
        }
         public int NhapTuFile(string name)
         {
            return 1;
         }
        public int ThemNgayHong(int ngay)
          {
            return 1;
          }
        public int ThemNgaySuaChua(int ngay)
         {
            return 1;
         }
        public int CapNhatTinhTrang(int maTB)
        {
            return 1;
        }
    }
}
