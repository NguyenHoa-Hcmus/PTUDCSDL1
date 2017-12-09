using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class NhanVien:Nguoi
    {
        private string hoTen;
        private string cMND;
        private string luong;
        private string sDT;
        private int maChucDanh;
        private int maBoPhan;
        private int gioiTinh;

        public int GioiTinh
        {
            get { return gioiTinh; }
            set { gioiTinh = value; }
        }

        public int MaBoPhan
        {
            get { return maBoPhan; }
            set { maBoPhan = value; }
        }

        public int MaChucDanh
        {
            get { return maChucDanh; }
            set { maChucDanh = value; }
        }

        public string SDT1
        {
            get { return sDT; }
            set { sDT = value; }
        }

        public string Luong
        {
            get { return luong; }
            set { luong = value; }
        }

        public string CMND1
        {
            get { return cMND; }
            set { cMND = value; }
        }

        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }
    }
}
