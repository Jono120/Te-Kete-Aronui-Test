using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Xml.Serialization;
using System.IO;

namespace DataLayer
{
    public class RssRepository
    {
        private CASScaidContext context;

        //public bool RssFeed()
        //{
        //    WebClient web = new WebClient();
        //    try
        //    {
        //        web.DownloadFile(
        //            @"http://apo.org.au/taxonomy/term/20157/feed", @"RssFeed");
        //        return true;
        //    }
        //    catch (WebException)
        //    {
        //        return false;
        //    }
        //    finally
        //    {
        //        web.Dispose();
        //    }
        //}

        public RssRepository(CASScaidContext context)
        {
            this.context = context;
        }

        public RssRepository()
        {
            // TODO: Complete member initialization

        }

        public IEnumerable<RSSFeed> GetRssFeeds()
        {
            return context.RssFeeds;
        }

        public RSSFeed GetRssFeedByID(int id)
        {
            return context.RssFeeds.Find(id);
        }

        public void InsertRssFeed(RSSFeed rssfeed)
        {
            context.RssFeeds.Add(rssfeed);
        }

        public void DeleteRssFeedByID(int id)
        {
            RSSFeed c = context.RssFeeds.Find(id);
            context.RssFeeds.Remove(c);
        }

        public void UpdateRssFeed(RSSFeed rssfeed)
        {
            context.Entry(rssfeed).State = System.Data.Entity.EntityState.Modified;
        }

        public void SaveChanges()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
