using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class HuyPhong:Vat
    {
        private int maPhong;
        private int idKhachHang;
        private int maNhanVien;
        private string ngayHuy;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public string NgayHuy
        {
            get { return ngayHuy; }
            set { ngayHuy = value; }
        }

        public int MaNhanVien
        {
            get { return maNhanVien; }
            set { maNhanVien = value; }
        }

        public int IdKhachHang
        {
            get { return idKhachHang; }
            set { idKhachHang = value; }
        }

        public int MaPhong
        {
            get { return maPhong; }
            set { maPhong = value; }
        }
    }
}
