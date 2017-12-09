using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataObject.Abstract
{
    public abstract class Vat
    {
        private string ten;

        public string Ten
        {
            get { return ten; }
            set { ten = value; }
        }
    }
}
