using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IThongBao
    {
        int ThemThongBao(ThongBao tb);
        int XoaThongBao(int maThongBao);
        int CapNhat(ThongBao tb);
    }
}
