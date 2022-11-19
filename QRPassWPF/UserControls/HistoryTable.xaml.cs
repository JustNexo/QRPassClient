using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;
using QRPassClientApi.Api;
using QRPassClientApi.Api.Types;
using QRPassWPF.Model;
using QRPassWPF.ViewModel;

namespace QRPassWPF.UserControls
{
    /// <summary>
    /// Логика взаимодействия для ScotTable.xaml
    /// </summary>
    public partial class HistoryTable : UserControl
    {
        private QRPassClient Client = new(Singleton<UserType>.Instance?.Token);

        public HistoryTable()
        {
            InitializeList();
            InitializeComponent();
            DataContext = new HistoryViewModel();
            
            
            fullNameFilter.TextChanged += IdFilterOnTextChanged;
            userIdFilter.TextChanged += IdFilterOnTextChanged;
        }

        private void IdFilterOnTextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox? textBox = sender as TextBox;
            ListCollectionView view = (ListCollectionView)CollectionViewSource.GetDefaultView(listView.ItemsSource);
            view?.Refresh();

        }

        private async Task InitializeList()
        {
            var history =  await Client.GetHistoryAsync(2000);
            DataContext = history;
            
            GroupFilter gf = new GroupFilter();
            gf.AddFilter(UserIdFilter);
            gf.AddFilter(FullNameFilter);
            
            ListCollectionView view = (ListCollectionView)CollectionViewSource.GetDefaultView(listView.ItemsSource); 
            view.Filter = gf.Filter;
        }
        

        private bool UserIdFilter (object item)
        {
            if(String.IsNullOrEmpty(userIdFilter.Text))
               return true;
            return (((item as History)!).UserId.Contains(userIdFilter.Text, StringComparison.OrdinalIgnoreCase));
        }

        private bool FullNameFilter(object item)
        {
            if(String.IsNullOrEmpty(fullNameFilter.Text))
                return true;
            return (((item as History)!).FullName.Contains(fullNameFilter.Text, StringComparison.OrdinalIgnoreCase));
        }
    }
    public class GroupFilter
    {
        private List<Predicate<object>> _filters;

        public Predicate<object> Filter {get; private set;}

        public GroupFilter()
        {
            _filters = new List<Predicate<object>>();
            Filter = InternalFilter;
        }

        private bool InternalFilter(object o)
        {
            foreach(var filter in _filters)
            {
                if (!filter(o))
                {
                    return false;
                }
            }

            return true;
        }

        public void AddFilter(Predicate<object> filter)
        {
            _filters.Add(filter);
        }

        public void RemoveFilter(Predicate<object> filter)
        {
            if (_filters.Contains(filter))
            {
                _filters.Remove(filter);
            }
        }    
    }
}
