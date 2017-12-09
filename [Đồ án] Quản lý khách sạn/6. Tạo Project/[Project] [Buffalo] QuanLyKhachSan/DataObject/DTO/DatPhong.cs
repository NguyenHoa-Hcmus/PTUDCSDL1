using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class DatPhong:Vat
    {
        private int maKhachHang;
        private string maPhong;
        private string ngayDatPhong;
        private int soLuongNguoi;
        private string ngayNhanPhong;
        private string ngayTraPhong;

        public string NgayTraPhong
        {
            get { return ngayTraPhong; }
            set { ngayTraPhong = value; }
        }

        public string NgayNhanPhong
        {
            get { return ngayNhanPhong; }
            set { ngayNhanPhong = value; }
        }

        public int SoLuongNguoi
        {
            get { return soLuongNguoi; }
            set { soLuongNguoi = value; }
        }

        public string NgayDatPhong
        {
            get { return ngayDatPhong; }
            set { ngayDatPhong = value; }
        }

        public string MaPhong
        {
            get { return maPhong; }
            set { maPhong = value; }
        }

        public int MaKhachHang
        {
            get { return maKhachHang; }
            set { maKhachHang = value; }
        }
    }
}
