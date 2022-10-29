using System;
using System.Windows;
using QRPassClientApi.Api;
using QRPassWPF.Model;
using QRPassWPF.ViewModel;

namespace QRPassWPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private async void ApplicationStart(object sender, StartupEventArgs e)
        {
            QRPassClient client = new QRPassClient("");
            try
            {
                var user = await client.ValidateToken(TokenService.ReadTokenFromFile());
                
                Singleton<UserType>.Register(() => new UserType()
                {
                    RememberMe = true,
                    Token = user.Token,
                    Firstname = user.FirstName,
                    Lastname = user.LastName
                });
                
                var mainView = new MainWindow();
                mainView.Show();
            }
            catch (Exception exception)
            {
                var loginView = new LoginWindow();
                loginView.Show();
                loginView.IsVisibleChanged += (s, ev) =>
                {
                    if (loginView.IsVisible == false && loginView.IsLoaded)
                    {
                        var mainView = new MainWindow();
                        mainView.Show();
                        loginView.Close();
                    }
                };
            }
        }
    }
}
