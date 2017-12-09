using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DBManager : DBManagerBase
    {
        protected void ExcuteNonquery(string query)
        {

        }

        protected IDataReader ExcuteDataReader(string query)
        {
            return null;
        }
    }
}
