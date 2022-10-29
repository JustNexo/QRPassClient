using Newtonsoft.Json;

namespace QRPassWPF.Types;

public class History
    {
        /// <summary>
        /// Unique id for each record
        /// </summary>
        [JsonProperty("id")]
        public string Id { get; set; }

        /// <summary>
        /// Unique id for each user
        /// </summary>
        [JsonProperty("user_id")]
        public string UserId { get; set; }

        [JsonProperty("fullname")]
        public string Fullname { get; set; }

        /// <summary>
        /// Action that made worker e.g.: Выход с объекта
        /// </summary>
        [JsonProperty("action")]
        public string Action { get; set; }

        /// <summary>
        /// Previous object
        /// </summary>
        [JsonProperty("prev_object")]
        public string PrevObject { get; set; }

        /// <summary>
        /// Date of visiting previous object
        /// </summary>
        [JsonProperty("prev_date")]
        public string PrevDate { get; set; }

        /// <summary>
        /// Current visited object
        /// </summary>
        [JsonProperty("current_object")]
        public string CurrentObject { get; set; }

        /// <summary>
        /// Date of visiting current object
        /// </summary>
        [JsonProperty("current_date")]
        public string CurrentDate { get; set; }
    }
