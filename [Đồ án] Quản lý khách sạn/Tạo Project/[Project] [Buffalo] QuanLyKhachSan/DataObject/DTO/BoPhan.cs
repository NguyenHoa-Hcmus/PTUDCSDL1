using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class BoPhan:Vat
    {
        private string tenBoPhan;
        private int truongBoPhan;

        public int TruongBoPhan
        {
            get { return truongBoPhan; }
            set { truongBoPhan = value; }
        }

        public string TenBoPhan
        {
            get { return tenBoPhan; }
            set { tenBoPhan = value; }
        }
    }
}
