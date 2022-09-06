using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using QRPassWPF.ViewModel;

namespace QRPassWPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private void ApplicationStart(object sender, StartupEventArgs e)
        {
            try
            {
                TokenService.ReadTokenFromFile();
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
            //TODO: add method to api to validate token
        }
    }
}
