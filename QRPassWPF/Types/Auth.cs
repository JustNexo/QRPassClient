using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QRPassWPF.Types
{
    public class Result
    {
        public string id { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string token { get; set; }
    }

    public class Auth
    {
        public string ok { get; set; }
        public Result result { get; set; }
    }
}
