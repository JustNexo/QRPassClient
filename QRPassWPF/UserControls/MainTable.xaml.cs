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

        List<List<string>> lsts = new List<List<string>>
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





        ObservableCollection<Type> MyCollection { get; set; }


        /*        private void FillRecordNo()
{
//  mainTable.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
//  mainTable.CellValueChanged -= mainTable_CellValueChanged_1;

//  clearTable();
try
{
JavaScriptSerializer js = new JavaScriptSerializer();
//  Data[] data = js.Deserialize<Data[]>(MainAsync());


for (int i = 0; i < objects.Length; i++)
{
DataGridTextColumn column = new DataGridTextColumn();
column.Header = objects;

mainTable.Columns.Add(column);
//populating columns header

}

for (int i = 0; i < mainTable.Columns.Count; i++)
{
string name = mainTable.Columns[i].Header.ToString();

mainTable.Items.Add("");
mainTable.ItemsSource = name;


if (mainTable.Rows[i].Index == mainTable.Columns[i].Index)
{
mainTable.Rows[i].Cells[mainTable.Columns[i].Index].Style.BackColor = Color.Gray;//setting gray color if column=row
mainTable.Rows[i].Cells[mainTable.Columns[i].Index].ReadOnly = true;
}

}


for (int i = 0; i < 13; i++)
{
for (int j = 0; j < 13; j++)
{
for (int b = 0; b < data.Length; b++)
if (data[b].@object == mainTable.Rows[i].HeaderCell.Value + "to" + mainTable.Columns[j].HeaderText
&& int.Parse(data[b].carantine) != 0)
{

int hours = int.Parse(data[b].carantine);
IntegerExtend integerExtend = new IntegerExtend();
string noun = integerExtend.Decline(hours, "час", "часа", "часов");
mainTable.Rows[i].Cells[j].Value = hours + " " + noun;
}
}
}


}
finally
{
mainTable.CellValueChanged += mainTable_CellValueChanged_1;
mainTable.Height = mainTable.Rows.GetRowsHeight(DataGridViewElementStates.Visible) + mainTable.ColumnHeadersHeight + 10;
}

}

private void clearTable()
{
while (mainTable.Rows.Count > 1 && mainTable.Rows.Count < 13)
for (int i = 0; i < mainTable.Rows.Count; i++)
for (int j = 0; j < mainTable.Columns.Count; j++)
mainTable.Rows.Remove(mainTable.Rows[i]);
mainTable.Columns.Clear();
mainTable.Rows.Clear();
}


*/




        private static string MainAsync()
        {

            HTTP hTTP = new HTTP();
            KeyValuePair<string, string>[] bodyRequest = new[] { new KeyValuePair<string, string>("object", "objects") }; //shitcode recode
            return hTTP.setRequestUri("/getobject.php").setBodyRequest(bodyRequest).post();
        }




        public class Data
        {
            public string @object { get; set; }
            public string carantine { get; set; }
        }



        private void dataGrid2D_RowEditEnding(object sender, DataGridRowEditEndingEventArgs e)
        {

        }

        private void dataGrid2D_LoadingRow(object sender, DataGridRowEventArgs e)
        {
            //    dataGrid2D.Items.Add("asdasd");
        }
    }
}
