using DataLayer;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Xml.Serialization;

namespace CASScaid.Controllers
{

    public class RssFeed
    {
        public int FeedID { get; set; }
        public string RSSFeedName { get; set; }
        public string FeedURL { get; set; }
        public string FeedAlert { get; set; }
        public string Feed_Description { get; set; }
        public System.DateTime Feed_Publication_Date { get; set; }
        public string Feed_PermaLink { get; set; }
    }

    public class RssFeedContext : DbContext
    {
        public DbSet<Category> Category { get; set; }
        public DbSet<RSSFeed> RSSFeeds { get; set; }
        public DbSet<Topic> Topic { get; set; }
        public DbSet<Team> Team { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
    }


    [XmlRoot("item")]
    public class RssItem : RssFeed
    {
        public string title { get; set; }

        public string link { get; set; }

        public string description { get; set; }

        public string pubdate { get; set; }

        [XmlElement("dc:creator")]
        public string creator { get; set; }

        [XmlAttribute("ispermalink")]
        public string ispermalink { get; set; }

        public int guid { get; set; }

        internal void enablevisualstyles()
        {
            throw new NotImplementedException();
        }
    }
}
