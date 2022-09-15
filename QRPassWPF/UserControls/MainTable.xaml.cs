using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Controls;

namespace QRPassWPF.UserControls
{
    /// <summary>
    /// Логика взаимодействия для MainTable.xaml
    /// </summary>
    public partial class MainTable : UserControl
    {

        List<List<string>> lsts = new()
        {
            new List<string>{"1", "1", "1"}
        };
        public List<List<string>> Lsts { get => lsts; set => lsts = value; }

        public MainTable()
        {


            DataContext = this;



            InitializeComponent();

            //  InitializeTable();

            //  FillRecordNo();


            //   mainTable.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.AutoSizeToFirstHeader;
        }

        private void DataGrid2D_OnBeginningEdit(object? sender, DataGridBeginningEditEventArgs e)
        {
            var row = e.Row.Header;
            var column = e.Column.Header;
            if (row == column)
            {
                e.Cancel = true;
            }
        }
    }
}
