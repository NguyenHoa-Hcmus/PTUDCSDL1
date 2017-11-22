using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataObject.Abstract
{
    public abstract class Nguoi
    {
        private string ten;

        public string Ten
        {
            get { return ten; }
            set { ten = value; }
        }
        private string diaChi;

        public string DiaChi
        {
            get { return diaChi; }
            set { diaChi = value; }
        }
        private string sDT;

        public string SDT
        {
            get { return sDT; }
            set { sDT = value; }
        }

        
        private string cMND;

        public string CMND
        {
            get { return cMND; }
            set { cMND = value; }
        }

    }
}
