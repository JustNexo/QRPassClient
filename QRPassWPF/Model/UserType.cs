using System;
using System.Threading.Tasks;
using QRPassWPF.ViewModel;

namespace QRPassWPF.Model
{
    public  class UserType
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
                try
                {
                    return TokenService.ReadTokenFromFile();
                }
                catch (Exception e)
                {
                    return _token;
                }
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
