using System.Threading.Tasks;
using QRPassWPF.ViewModel;

namespace QRPassWPF.Model
{
    public  class User
    {
        public bool RememberMe { get; set; }
        public string Firstname { get; set; }

        public int RoleId { get; set; }

        public string? Lastname { get; set; }
        
        private string _token;
        
        public  string Token
        {
            get
            {
                if (RememberMe)
                {
                    return TokenService.ReadTokenFromFile();
                }
                return _token;
            }
            set
            {
                if (RememberMe)
                {
                    TokenService.WriteTokenToFile(value);
                }

                _token = value;
            }
        }
        
    }
}
