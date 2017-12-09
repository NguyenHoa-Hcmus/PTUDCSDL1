using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IDatPhong
    {
        int ThemDatPhong(DatPhong dp);
        int HuyDatPhong(int maPhong);
        int CapNhatDatPhong(DatPhong dp);
    }
}
