using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class ViPham:Vat
    {
        private string tenViPham;
        private decimal soTienPhat;

        public decimal SoTienPhat
        {
            get { return soTienPhat; }
            set { soTienPhat = value; }
        }

        public string TenViPham
        {
            get { return tenViPham; }
            set { tenViPham = value; }
        }
    }
}
