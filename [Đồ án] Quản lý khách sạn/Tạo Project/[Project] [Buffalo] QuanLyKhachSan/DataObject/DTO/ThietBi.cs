using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class ThietBi:Vat
    {
        private string tenThietBi;
        private string hangSanXuat;
        private int tinhTrang;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public int TinhTrang
        {
            get { return tinhTrang; }
            set { tinhTrang = value; }
        }


        
        public string HangSanXuat
        {
            get { return hangSanXuat; }
            set { hangSanXuat = value; }
        }

        public string TenThietBi
        {
            get { return tenThietBi; }
            set { tenThietBi = value; }
        }
    }
}
