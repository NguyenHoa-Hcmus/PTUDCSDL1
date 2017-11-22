using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class PhanCong:Vat
    {
        private int maNhanVien;
        private string thoiGianPhanCong;
        private int maCongViec;
        private string thoiGianBatDau;
        private string thoiGianKetThuc;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public string ThoiGianKetThuc
        {
            get { return thoiGianKetThuc; }
            set { thoiGianKetThuc = value; }
        }

        public string ThoiGianBatDau
        {
            get { return thoiGianBatDau; }
            set { thoiGianBatDau = value; }
        }

        public int MaCongViec
        {
            get { return maCongViec; }
            set { maCongViec = value; }
        }

        public string ThoiGianPhanCong
        {
            get { return thoiGianPhanCong; }
            set { thoiGianPhanCong = value; }
        }

        public int MaNhanVien
        {
            get { return maNhanVien; }
            set { maNhanVien = value; }
        }
    }
}
