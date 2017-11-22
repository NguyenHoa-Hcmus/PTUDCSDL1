using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class CongViec:Vat
    {
        private string tenCongViec;
        private int maNguoiTao;
        private string ngayTao;
        private string ngayHetHan;
        private string diaDiem;
        private string ghiChu;

        public string GhiChu
        {
            get { return ghiChu; }
            set { ghiChu = value; }
        }

        public string DiaDiem
        {
            get { return diaDiem; }
            set { diaDiem = value; }
        }

        public string NgayHetHan
        {
            get { return ngayHetHan; }
            set { ngayHetHan = value; }
        }

        public string NgayTao
        {
            get { return ngayTao; }
            set { ngayTao = value; }
        }

        public int MaNguoiTao
        {
            get { return maNguoiTao; }
            set { maNguoiTao = value; }
        }

        public string TenCongViec
        {
            get { return tenCongViec; }
            set { tenCongViec = value; }
        }
    }
}
