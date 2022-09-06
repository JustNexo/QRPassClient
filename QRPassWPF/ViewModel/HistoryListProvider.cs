using Newtonsoft.Json;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading;

namespace QRPassWPF.ViewModel;

public class HistoryListProvider :  IItemsProvider<HistoryJson>
{
    private readonly int _count;
    private readonly int _fetchDelay;
    HTTP request = new();

    public HistoryListProvider(int count, int fetchDelay)
    {
        _count = count;
        _fetchDelay = fetchDelay;
    }

    public int FetchCount()
    {
        Thread.Sleep(_fetchDelay);
        return _count;
    }

    public IList<HistoryJson> FetchRange(int startIndex, int count)
    {
        Thread.Sleep(_fetchDelay);

        string resultContent = request.setRequestUri("/getlogs.php").get();

        var responseJson = JsonConvert.DeserializeObject<ObservableCollection<HistoryJson>>(resultContent);

        List<HistoryJson> list = new List<HistoryJson>();
        for (int i = startIndex; i < startIndex + count && i < responseJson.Count; i++)
        {
            HistoryJson customer = new HistoryJson { Id = responseJson[i].Id, UserId = responseJson[i].UserId, FullName = responseJson[i].FullName, 
                Action = responseJson[i].Action, PrevObj = responseJson[i].PrevObj, CurrentObj = responseJson[i].CurrentObj, 
                Date = responseJson[i].Date, PrevDate = responseJson[i].PrevDate};

            list.Add(customer);
        }
        return list;
    }
}

public class HistoryJson
{

    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonProperty("user_id")]
    public string UserId { get; set; }
    [JsonProperty("fullname")]
    public string FullName { get; set; }

    [JsonProperty("action")]
    public string Action { get; set; }

    [JsonProperty("prevojb")]
    public string PrevObj { get; set; }

    [JsonProperty("prev_date")]
    public string PrevDate { get; set; }

    [JsonProperty("currentobj")]
    public string CurrentObj { get; set; }

    [JsonProperty("date")]
    public string Date { get; set; }
}