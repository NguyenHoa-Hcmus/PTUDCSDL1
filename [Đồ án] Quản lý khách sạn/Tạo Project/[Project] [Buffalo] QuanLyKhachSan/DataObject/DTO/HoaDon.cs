using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class HoaDon:Vat
    {
        private int maNhanVien;
        private int idKhachHang;
        private string ngayTao;
        private decimal thanhTien;

        public decimal ThanhTien
        {
            get { return thanhTien; }
            set { thanhTien = value; }
        }

        public string NgayTao
        {
            get { return ngayTao; }
            set { ngayTao = value; }
        }

        public int IdKhachHang
        {
            get { return idKhachHang; }
            set { idKhachHang = value; }
        }

        public int MaNhanVien
        {
            get { return maNhanVien; }
            set { maNhanVien = value; }
        }
    }
}
