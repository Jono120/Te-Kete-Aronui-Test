using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace DataLayer
{
    public interface IRssRepository : IDisposable
    {
        IEnumerable<RssRepository> GetRssFeeds();
        RssRepository GetRssFeedByID(int id);
        void InsertRssFeed(RssRepository rssfeed);
        void DeleteRssFeedByID(int id);
        void UpdateRssFeed(RssRepository rssfeed);
        void SaveChanges();
    }
}
