using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class DichVu:Vat
    {
        private string tenDichVu;
        private decimal giaTien;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public decimal GiaTien
        {
            get { return giaTien; }
            set { giaTien = value; }
        }

        public string TenDichVu
        {
            get { return tenDichVu; }
            set { tenDichVu = value; }
        }

    }
}
