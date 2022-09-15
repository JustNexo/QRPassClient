using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Controls;
using QRPassClientApi.Api;
using QRPassWPF.Model;

namespace QRPassWPF.UserControls;

/// <summary>
/// Логика взаимодействия для MainTable.xaml
/// </summary>
public partial class MainTable : UserControl
{
    private QRPassClient _client = new(Singleton<User>.Instance?.Token);

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

    private async void DataGrid2D_OnCellEditEnding(object? sender, DataGridCellEditEndingEventArgs e)
    {
        var from = e.Row.Header.ToString();
        var to = e.Column.Header.ToString();
        var t = e.EditingElement as TextBox;
        var gapvalue = t?.Text;
            
        if (from != null && to != null && gapvalue != null) 
            await _client.ChangeQuarantineAsync(from, to, gapvalue, "matrix_objects");
    }
}