using System;
using System.Linq;
using QRPassClientApi.Api;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media.Animation;
using QRPassWPF.ViewModel;

namespace QRPassWPF
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow
    {
        private QRPassClient? _client;

        public LoginWindow()
        {
            InitializeComponent();
            this.DataContext = new LoginViewModel();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();
        }

        private async void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                _client = new QRPassClient("");
                var user = await _client.LoginAsync(loginTextBox.Text, passwordTextBox.Text);

                UserConfig.Token = user.Token;

               // var selected = new LoginViewModel(false).IsSelected;
                
                var mainWindow = new MainWindow();
                
                
                mainWindow.Show();
                Hide();
            }
            catch (Exception ex)
            {
                LoginErrorText.Visibility = Visibility.Visible;
                
                var myStoryboard = (Storyboard)LoginErrorText.Resources["TestStoryboard"];
                Storyboard.SetTarget((myStoryboard.Children.ElementAt(0) as DoubleAnimationUsingKeyFrames)!, LoginErrorText);
                myStoryboard.Begin();
            }
            
            
        }
    }
}
