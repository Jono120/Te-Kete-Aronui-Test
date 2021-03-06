//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class WebsiteRSSFeedMapping
    {
        public WebsiteRSSFeedMapping()
        {
            this.Topics = new HashSet<Topic>();
        }
    
        public int WebsiteRSSFeedMappingID { get; set; }
        public string WebsiteID { get; set; }
        public string FeedID { get; set; }
        public string MailboxID { get; set; }
        public int TopicsTopicID { get; set; }
        public int EmailBox_MailboxID { get; set; }
        public int RSSFeed_FeedID { get; set; }
        public int Website_WebsiteID { get; set; }
    
        public virtual EmailBox EmailBox { get; set; }
        public virtual RSSFeed RSSFeed { get; set; }
        public virtual ICollection<Topic> Topics { get; set; }
        public virtual Website Website { get; set; }
    }
}
