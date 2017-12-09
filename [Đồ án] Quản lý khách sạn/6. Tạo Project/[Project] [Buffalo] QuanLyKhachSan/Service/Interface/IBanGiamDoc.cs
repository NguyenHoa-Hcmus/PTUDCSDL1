using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
namespace Service.Interface
{
    public interface IBanGiamDoc
    {
        int ThemBanGiamDoc(BanGiamDoc bgd);
        int CapNhatBanGiamDoc(BanGiamDoc bgd);
        int XoaBanGiamDoc(int ma);

    }
}
