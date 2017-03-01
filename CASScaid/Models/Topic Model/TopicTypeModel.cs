using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CASScaid.Models
{
    public class TopicTypeModel
    {
        public int TopicTypeID { get; set; }
        public string TopicTypeName { get; set; }
        public string CategoryID { get; set; }
        public string TopicsTopicID { get; set; }
        public int Topics_TopicID { get; set; }
        public int Category_CategoryID { get; set; }

        public virtual Category Category { get; set; }
        public virtual TopicModel Topic { get; set; }

    }
}