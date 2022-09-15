using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Controls;
using System.Windows;
using System.Text.RegularExpressions;
using QRPassWPF.ViewModel;

namespace QRPassWPF.UserControls
{
    /// <summary>
    /// Логика взаимодействия для ScotTable.xaml
    /// </summary>
    public partial class HistoryTable : UserControl
    {
        HTTP request = new HTTP();

        public HistoryTable()
        {
            DataContext = this;
            InitializeComponent();
            
        }

        private int GetListCount()
        {
            string resultContent = request.setRequestUri("/getlogs.php").get();

            var y = JsonConvert.DeserializeObject<ObservableCollection<HistoryJson>>(resultContent);

            return y.Count;
        }


        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            HistoryListProvider customerProvider =
                           new HistoryListProvider(1);

            DataContext = new VirtualizingCollection<HistoryJson>(customerProvider, 100);
        }
    }
}
