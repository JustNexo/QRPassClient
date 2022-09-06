using System.Windows.Controls;
using QRPassWPF.ViewModel;

namespace QRPassWPF.UserControls;

public partial class WorkersList : UserControl
{
    public WorkersList()
    {
        InitializeComponent();
        HistoryListProvider customerProvider =
            new HistoryListProvider(100, 1);
        DataContext = new VirtualizingCollection<HistoryJson>(customerProvider, 100);
    }
}