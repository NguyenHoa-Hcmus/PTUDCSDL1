﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IThietBi
    {
        int ThemThietBi(ThietBi tb);
        int XoaThietBi(int maThietBi);
        int CapNhatThongTinThietBi(ThietBi tb);
        int NhapTuFile(string tenFile);
    }
}
