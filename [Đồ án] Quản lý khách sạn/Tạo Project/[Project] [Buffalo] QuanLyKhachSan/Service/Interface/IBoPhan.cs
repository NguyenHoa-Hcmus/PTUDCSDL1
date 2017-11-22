using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IBoPhan
    {
        int ThemBoPhan(BoPhan bp);
        int CapNhatBoPhan(BoPhan bp);
        int NhapDuLieuTuFile(string FileName);
        int XoaBoPhan(int maBP);
    }
}
