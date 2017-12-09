using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
   public  class BanGiamDoc:Nguoi
    {
        private int ma;

        public int Ma
        {
            get { return ma; }
            set { ma = value; }
        }

        
        private string chucDanh;
        private string ngayNhanChuc;

        public string NgayNhanChuc
        {
            get { return ngayNhanChuc; }
            set { ngayNhanChuc = value; }
        }

        public string ChucDanh
        {
            get { return chucDanh; }
            set { chucDanh = value; }
        }


    }
}
