using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
using DataAccessLayer;
using Service.Interface;
namespace Service.Implements
{
    class MonHocService:IMonHoc
    {
        public int ThemMonHoc(MonHoc MH)
        {
            return 1;
        }
        public int CapNhatThongTinMonHoc(MonHoc MH)
        {
            return 1;

        }
        public int NhapDuLieuTuFile(string FileName)
        {
            return 1;
        }
    }
}
