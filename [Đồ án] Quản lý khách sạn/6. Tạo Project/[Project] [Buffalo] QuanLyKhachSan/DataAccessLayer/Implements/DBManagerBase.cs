using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DBManagerBase
    {
        private string connectionString = " ";
        private SqlConnection connection = null;

        protected void open()
        {

        }

        protected void close()
        {

        }

    }
}
