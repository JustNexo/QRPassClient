using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Controls;
using System.Windows;
using System.Text.RegularExpressions;
using QRPassClientApi.Api;
using QRPassClientApi.Api.Types;
using QRPassWPF.Model;
using QRPassWPF.ViewModel;
using User = QRPassClientApi.Api.Types.User;

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
        }

        private async void InitializeList()
        {
          var history= await Client.GetHistoryAsync(2000);
          //DataContext = history;
        }
    }
}
