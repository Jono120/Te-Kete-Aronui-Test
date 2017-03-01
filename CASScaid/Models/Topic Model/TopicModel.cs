using DataLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CASScaid.Models
{
    public class TopicModel
    {
        public TopicModel()
        {
            this.TopicType = new HashSet<TopicTypeModel>();
            this.ContentTopicMappings = new HashSet<ContentTopicMapping>();
            this.Teams = new HashSet<Team>();
        }

        public int TopicID { get; set; }
        [Display(Name="Name")]
        public string TopicName { get; set; }
        public string TopicTypeID { get; set; }
        public string LinkDocument { get; set; }
        public string TeamRequest { get; set; }
        public string TeamID { get; set; }
        public int TeamTeamID { get; set; }
        public int WebsiteRSSFeedMappingWebsiteFeedMapping { get; set; }

        //public HashSet<TopicType> TopicType { get; set; }
        //public HashSet<ContentTopicMapping> ContentTopicMappings { get; set; }
        //public HashSet<Team> Teams { get; set; }

        public virtual ICollection<TopicTypeModel> TopicType { get; set; }
        public virtual WebsiteRSSFeedMapping WebsiteRSSFeedMapping { get; set; }
        public virtual ICollection<ContentTopicMapping> ContentTopicMappings { get; set; }
        public virtual ICollection<Team> Teams { get; set; }
    }
}