using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class Phong:Vat
    {
        private string tenPhong;
        private int loaiPhong;
        private int sucChua;
        private int tinhTrang;
        private decimal donGia;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public decimal DonGia
        {
            get { return donGia; }
            set { donGia = value; }
        }

        public int TinhTrang
        {
            get { return tinhTrang; }
            set { tinhTrang = value; }
        }

        public int SucChua
        {
            get { return sucChua; }
            set { sucChua = value; }
        }

        public int LoaiPhong
        {
            get { return loaiPhong; }
            set { loaiPhong = value; }
        }

        public string TenPhong
        {
            get { return tenPhong; }
            set { tenPhong = value; }
        }
    }
}
