using DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Xml.Serialization;

namespace CASScaid.Controllers
{
    public class RssFeedController : Controller
    {
        private IRssRepository repository;

        private RssFeedContext db = new RssFeedContext();

        //public String Key { get; set; }

        // GET: RssFeed
        public ActionResult Index()
        {
            //var repository = new repository();
            ////var repository = new MyRSSFeedRepository<int>();
            //repository.Insert(1);
            //repository.SaveChanges();

            //repository.Insert(new[] { 2, 3, 4, 5 });
            //repository.SaveChanges();

            //using (var RssRepository = new RssRepository<MyClass>())
            //{
            //    var objectContext = RssRepository.Find("myKey");
            //    var obj = objectContext.Object;
            //}
            return View();
        }

        // GET: RssFeed/Details/5
        //TODO: Create Display of Details here
        public ActionResult Details(int id)
        {
        //string url = "http://apo.org.au/taxonomy/term/20157/feed";

        //    HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(new Uri(url));
        //    webRequest.Proxy = WebRequest.DefaultWebProxy;
        //    webRequest.Proxy.Credentials = CredentialCache.DefaultCredentials;

        //    List<RssItem> rssItems = new List<RssItem>();

        //    using (WebResponse webResponse = webRequest.GetResponse())
        //    {
        //        using (Stream responseStream = webResponse.GetResponseStream())
        //        {
        //            // error in rss xml
        //            XmlReader xr = XmlReader.Create(responseStream);
        //            SyndicationFeed sf = SyndicationFeed.Load(xr);

        //            XmlDocument doc = new XmlDocument();
        //            doc.Load(responseStream);
        //            XmlElement root = doc.DocumentElement;
        //            XmlNodeList nodes = root.SelectNodes("channel/item");

        //            XmlSerializer serializer = new XmlSerializer(typeof(RssItem));

        //            foreach (XmlNode node in nodes)
        //            {
        //                RssItem item = new RssItem();
        //                item = (RssItem)serializer.Deserialize(new XmlNodeReader(node));

        //                // will blow up if guid is not found – do a check
        //                // same with ispermalink
        //                item.isPermaLink = node["guid"].Attributes["isPermaLink"].Value;
        //                rssItems.Add(item);

        //            }
        //        }
        //    }

        //    foreach (RssItem item in rssItems)
        //    {


                  return View();
        }

        // GET: RssFeed/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: RssFeed/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: RssFeed/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: RssFeed/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: RssFeed/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: RssFeed/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
