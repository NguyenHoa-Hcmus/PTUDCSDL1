using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IViPham
    {
        int ThemViPham(ViPham vp);
        int XoaViPham(int maViPham);
        int CapNhatViPham(ViPham vp);
    }
}
