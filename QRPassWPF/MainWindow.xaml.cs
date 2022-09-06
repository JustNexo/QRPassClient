using QRPassWPF.UserControls;
using System.Windows;
using System.Windows.Input;
using QRPassWPF.ViewModel;

namespace QRPassWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
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

            var token = UserConfig.Token;

        }


        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
         //   ChangeContent(new HistoryTable());
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
