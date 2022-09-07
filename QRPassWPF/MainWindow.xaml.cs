using System;
using QRPassWPF.UserControls;
using System.Windows;
using System.Windows.Input;
using QRPassClientApi.Api;
using QRPassWPF.Model;
using QRPassWPF.ViewModel;

namespace QRPassWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private QRPassClient _client = new("");
        public MainWindow()
        {
            InitializeUser();
            InitializeComponent();
            ChangeContent(new MainTable());
            DataContext = new MainViewModel();
        }

        private async void InitializeUser()
        {
            try
            {
                if (Singleton<User>.Instance is null)
                {
                    var user = await _client.ValidateToken(TokenService.ReadTokenFromFile());
                    Singleton<User>.Register(() => new User()
                    {
                        Token = user.Token,
                        Firstname = user.FirstName,
                        RoleId = user.RoleId,
                        Lastname = user.LastName
                    });
                     
                }
            }
            catch (Exception e)
            {
                MessageBoxResult result = MessageBox.Show("Время сессии истекло. Войдите заново", "", MessageBoxButton.OK);

                if (result == MessageBoxResult.OK)
                {
                    Application.Current.Shutdown();
                }
            }

            
        }

        private void ChangeContent(UIElement newContent)
        {
            TransitionContainer.Navigate(newContent);
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                DragMove();
        }


        private void closeBtn_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        { 
            ChangeContent(new MainTable());
        }


        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            ChangeContent(new HistoryTable());
        }

        private void btnFullScreen_Checked_1(object sender, RoutedEventArgs e)
        {
            var btnFullScreen = sender as System.Windows.Controls.Primitives.ToggleButton;

            btnFullScreen.Content = "_";

            mainWindow.WindowState = WindowState.Maximized;
        }

        private void btnFullScreen_Unchecked_1(object sender, RoutedEventArgs e)
        {
            var btnFullScreen = sender as System.Windows.Controls.Primitives.ToggleButton;

            btnFullScreen.Content = "⛶";

            mainWindow.WindowState = WindowState.Normal;

        }

    }
}
