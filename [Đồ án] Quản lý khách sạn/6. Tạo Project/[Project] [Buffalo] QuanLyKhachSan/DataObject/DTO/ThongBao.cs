using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject.Abstract;
namespace DataObject
{
    public class ThongBao:Vat
    {
        private string noiDungThongBao;
        private string ngayTaoThongBao;
        private string ngayHetThongBao;
        private int maNguoiTao;

        public int MaNguoiTao
        {
            get { return maNguoiTao; }
            set { maNguoiTao = value; }
        }

        public string NgayHetThongBao
        {
            get { return ngayHetThongBao; }
            set { ngayHetThongBao = value; }
        }

        public string NgayTaoThongBao
        {
            get { return ngayTaoThongBao; }
            set { ngayTaoThongBao = value; }
        }

        public string NoiDungThongBao
        {
            get { return noiDungThongBao; }
            set { noiDungThongBao = value; }
        }
    }
}
