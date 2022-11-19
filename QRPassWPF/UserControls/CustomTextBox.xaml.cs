using System.Windows;
using System.Windows.Controls;

namespace QRPassWPF.UserControls
{
    /// <summary>
    /// Логика взаимодействия для CustomTextBox.xaml
    /// </summary>
    public partial class CustomTextBox
    {
        public CustomTextBox()
        {
            InitializeComponent();
            
        }

        public string PlaceHolder
        {
            get { return (string)GetValue(PlaceHolderProperty); }
            set { SetValue(PlaceHolderProperty, value); }
        }

        // Using a DependencyProperty as the backing store for PlaceHolder.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty PlaceHolderProperty =
            DependencyProperty.Register(nameof(PlaceHolder), typeof(string), typeof(CustomTextBox));

        

        public string Text
        {
            get { return (string)GetValue(TextProperty); }
            set { SetValue(TextProperty, value); }
        }

        // Using a DependencyProperty as the backing store for Text.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty TextProperty =
            DependencyProperty.Register(nameof(Text), typeof(string), typeof(CustomTextBox));

        
        
        public bool IsPassword
        {
            get { return (bool)GetValue(IsPasswordProperty); }
            set { SetValue(IsPasswordProperty, value); }
        }

        // Using a DependencyProperty as the backing store for IsPassword.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty IsPasswordProperty =
            DependencyProperty.Register(nameof(IsPassword), typeof(bool), typeof(CustomTextBox));

        private void passBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            Login.Text = PassBox.Password;
            Password = PassBox.Password;
        }



        public int MinWidthBox
        {
            get { return (int)GetValue(MinWidthBoxProperty); }
            set { SetValue(MinWidthBoxProperty, value); }
        }

        // Using a DependencyProperty as the backing store for MinWidth.  This enables animation, styling, binding, etc...
        public static readonly DependencyProperty MinWidthBoxProperty =
            DependencyProperty.Register("MinWidth", typeof(int), typeof(CustomTextBox));

        public static readonly DependencyProperty PasswordProperty = DependencyProperty.Register(
            nameof(Password), typeof(string), typeof(CustomTextBox), new PropertyMetadata(default(string)));

        public string Password
        {
            get { return (string)GetValue(PasswordProperty); }
            set { SetValue(PasswordProperty, value); }
        }
    }
}
