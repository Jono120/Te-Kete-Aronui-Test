using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.RepositoryClasses.Interface
{
    public interface IRssImporter : IDisposable
    {
        //ICollection<RSSFeed> RssRepository()
        //{
        //    string rssUri = "http://apo.org.au/taxonomy/term/20157/feed";
        //    var doc = System.Xml.Linq.XDocument.Load(rssUri);

        //    ICollection<RSSFeed> r =(from el in doc.Elements("rss").Elements("channel").Elements("item"));
        //    {
        //        el = new el.Elements;

        //        select new RSSFeed
        //        {
        //            RSSFeedName = el.Element("title").Value,
        //            Feed_Publication_Date = el.Element("pubDate").Value,
        //            Feed_PermaLink = el.Element("permalink").Attribute("url").Value,
        //            Feed_Description = el.Element("description").Value
        //        }).ToList();

                    
        //    }
            
        //}
    }
}
