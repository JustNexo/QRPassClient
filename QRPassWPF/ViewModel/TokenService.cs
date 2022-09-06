using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace QRPassWPF.ViewModel;

public static class TokenService
{
    private const string Entropy = "sxhv17xcsjqm18szxcm10";

    public static async Task WriteTokenToFile(string token) 
    {
        var text = EncryptToken(token);

        await File.WriteAllBytesAsync("QRPassDATA", text);
    }

    private static byte[] EncryptToken(string token) 
    {
        var plaintext = Encoding.UTF8.GetBytes(token);

        var entropy = Encoding.UTF8.GetBytes(Entropy);
            
        return ProtectedData.Protect(plaintext, entropy,
            DataProtectionScope.CurrentUser);
    }

    public static string ReadTokenFromFile() 
    {
        var fileData =  File.ReadAllBytes("QRPassDATA");

        var entropy = Encoding.UTF8.GetBytes(Entropy);
            
        var token = Encoding.Default.GetString( ProtectedData.Unprotect(fileData, entropy,
            DataProtectionScope.CurrentUser));

        return token;
    }
}