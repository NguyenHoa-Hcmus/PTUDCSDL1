using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class KhachHang:Nguoi
    {
        private string cMND;
        private string hoTen;
        private string soDT;
        private string diaChi;

        public string DiaChi1
        {
            get { return diaChi; }
            set { diaChi = value; }
        }

        public string SoDT
        {
            get { return soDT; }
            set { soDT = value; }
        }

        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }

        public string CMND1
        {
            get { return cMND; }
            set { cMND = value; }
        }

       


        

    }
}
