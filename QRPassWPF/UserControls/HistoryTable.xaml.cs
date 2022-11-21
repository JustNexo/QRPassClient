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
    public partial class HistoryTable
    {
        private QRPassClient Client = new(Singleton<UserType>.Instance?.Token);

        public HistoryTable()
        {
            InitializeList();
            InitializeComponent();
            DataContext = new HistoryViewModel();
            
            
            fullNameFilter.TextChanged += IdFilterOnTextChanged;
            employeeIdFilter.TextChanged += IdFilterOnTextChanged;
            ActionComboBoxFilter.DropDownClosed += ActionComboBoxFilterOnDropDownClosed;
            prevObjectFilter.TextChanged += IdFilterOnTextChanged;
            currentObjectFilter.TextChanged += IdFilterOnTextChanged;
        }

        private void ActionComboBoxFilterOnDropDownClosed(object? sender, EventArgs e)
        {
            ListCollectionView view = (ListCollectionView)CollectionViewSource.GetDefaultView(listView.ItemsSource);
            view?.Refresh();
        }
        
        private async void IdFilterOnTextChanged(object sender, TextChangedEventArgs e)
        {
            ListCollectionView view = (ListCollectionView)CollectionViewSource.GetDefaultView(listView.ItemsSource);
            await Task.Delay(2); //not blocking ui thread
            view?.Refresh();
        }

        private async Task InitializeList()
        {
            var history =  await Client.GetHistoryAsync(2000);
            DataContext = history;

            GroupFilter gf = new GroupFilter();
            gf.AddFilter(EmployeeIdFilter);
            gf.AddFilter(FullNameFilter);
            gf.AddFilter(ActionFilter);
            gf.AddFilter(CurrentObjectFilter);
            gf.AddFilter(PrevObjectFilter);
            ListCollectionView view = (ListCollectionView)CollectionViewSource.GetDefaultView(listView.ItemsSource); 
            view.Filter = gf.Filter;
        }
        

        private bool EmployeeIdFilter (object item)
        {
            if(String.IsNullOrEmpty(employeeIdFilter.Text))
               return true;
            return (((item as History)!).EmployeeId.Contains(employeeIdFilter.Text, StringComparison.OrdinalIgnoreCase));
        }

        private bool FullNameFilter(object item)
        {
            if(String.IsNullOrEmpty(fullNameFilter.Text))
                return true;
            return (((item as History)!).FullName.Contains(fullNameFilter.Text, StringComparison.OrdinalIgnoreCase));
        }

        private bool ActionFilter(object item)
        {
            if (string.IsNullOrEmpty(ActionComboBoxFilter.Text) || ActionComboBoxFilter.Text == "------") // ------ means null filter
                return true;
            return (((item as History)!).Action.Contains(ActionComboBoxFilter.Text, StringComparison.OrdinalIgnoreCase));
        }
        private bool PrevObjectFilter(object item)
        {
            if (string.IsNullOrEmpty(prevObjectFilter.Text)) 
                return true;
            var prevObject = ((item as History)!).PrevObject; //checking for possible null reference on previous object
            return prevObject != null && (prevObject.Contains(prevObjectFilter.Text, StringComparison.OrdinalIgnoreCase));
        }
        private bool CurrentObjectFilter(object item)
        {
            if (string.IsNullOrEmpty(currentObjectFilter.Text) )
                return true;
            return (((item as History)!).CurrentObject.Contains(currentObjectFilter.Text, StringComparison.OrdinalIgnoreCase));
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
