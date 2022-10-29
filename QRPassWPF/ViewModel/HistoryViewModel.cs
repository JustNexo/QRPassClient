using System;
using System.Windows;
using System.Windows.Input;

namespace QRPassWPF.ViewModel;

public class HistoryViewModel
{
    private ICommand _mExportToExcel;
    public ICommand ExportToExcel
    {
        get
        {
            return _mExportToExcel;
        }
        set
        {
            _mExportToExcel = value;
        }
    }

    public HistoryViewModel()
    {
        
        
        ExportToExcel=new RelayCommand(ShowMessage);
    }

    public void ShowMessage(object obj)
    {
        MessageBox.Show(obj.ToString());
    }
}