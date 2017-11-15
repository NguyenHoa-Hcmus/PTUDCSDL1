using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataObject.Abstract
{
    public abstract class Person
    {
        private string name;
        private string address;
        private string phone;
        private string sex;
        private string birthday;

        public string Birthday
        {
            get { return birthday; }
            set { birthday = value; }
        }

        public string Sex
        {
            get { return sex; }
            set { sex = value; }
        }

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
       
    }
}
