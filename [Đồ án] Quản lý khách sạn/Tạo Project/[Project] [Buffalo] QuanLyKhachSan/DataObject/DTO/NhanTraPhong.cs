using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class NhanTraPhong:Vat
    {
        private int maPhong;
        private int iDKhachHang;
        private string ngayNhan;
        private string ngayTra;
        private int maHangKiGui;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public int MaHangKiGui
        {
            get { return maHangKiGui; }
            set { maHangKiGui = value; }
        }

        public string NgayTra
        {
            get { return ngayTra; }
            set { ngayTra = value; }
        }

        public string NgayNhan
        {
            get { return ngayNhan; }
            set { ngayNhan = value; }
        }

        public int IDKhachHang
        {
            get { return iDKhachHang; }
            set { iDKhachHang = value; }
        }

        public int MaPhong
        {
            get { return maPhong; }
            set { maPhong = value; }
        }
    }
}
