using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class TaiKhoan:Vat
    {
        private string tenTaiKhoan;
        private string matKhau;
        private int soLanDangNhap;
        private int maNhanVien;

        public int MaNhanVien
        {
            get { return maNhanVien; }
            set { maNhanVien = value; }
        }

        public int SoLanDangNhap
        {
            get { return soLanDangNhap; }
            set { soLanDangNhap = value; }
        }

        public string MatKhau
        {
            get { return matKhau; }
            set { matKhau = value; }
        }

        public string TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
        }
    }
}
